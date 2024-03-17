(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1710687284)
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
      (lambda _$args94222_
        (apply make-instance gx#module-import::t _$args94222_)))
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
      (lambda _$args94219_
        (apply make-instance gx#module-export::t _$args94219_)))
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
      (lambda _$args94216_
        (apply make-instance gx#import-set::t _$args94216_)))
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
      (lambda _$args94213_
        (apply make-instance gx#export-set::t _$args94213_)))
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
      (lambda _$args94210_
        (apply make-instance gx#import-expander::t _$args94210_)))
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
      (lambda _$args94207_
        (apply make-instance gx#export-expander::t _$args94207_)))
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
      (lambda _$args94204_
        (apply make-instance gx#import-export-expander::t _$args94204_)))
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
      (lambda (_path94201_ _fun94202_)
        (call-with-input-file
         (cons 'path: (cons _path94201_ gx#source-file-settings))
         _fun94202_)))
    (define gx#module-context:::init!
      (lambda (_self94195_ _id94196_ _super94197_ _ns94198_ _path94199_)
        (if (##fx< '11 (##structure-length _self94195_))
            (begin
              (##unchecked-structure-set!
               _self94195_
               _id94196_
               '1
               (##structure-type _self94195_)
               '#f)
              (##unchecked-structure-set!
               _self94195_
               (make-hash-table-eq)
               '2
               (##structure-type _self94195_)
               '#f)
              (##unchecked-structure-set!
               _self94195_
               _super94197_
               '3
               (##structure-type _self94195_)
               '#f)
              (##unchecked-structure-set!
               _self94195_
               '#f
               '4
               (##structure-type _self94195_)
               '#f)
              (##unchecked-structure-set!
               _self94195_
               '#f
               '5
               (##structure-type _self94195_)
               '#f)
              (##unchecked-structure-set!
               _self94195_
               _ns94198_
               '6
               (##structure-type _self94195_)
               '#f)
              (##unchecked-structure-set!
               _self94195_
               _path94199_
               '7
               (##structure-type _self94195_)
               '#f)
              (##unchecked-structure-set!
               _self94195_
               '()
               '8
               (##structure-type _self94195_)
               '#f)
              (##unchecked-structure-set!
               _self94195_
               '()
               '9
               (##structure-type _self94195_)
               '#f)
              (##unchecked-structure-set!
               _self94195_
               '#f
               '10
               (##structure-type _self94195_)
               '#f)
              (##unchecked-structure-set!
               _self94195_
               '#f
               '11
               (##structure-type _self94195_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self94195_
                   '11
                   (##vector-length _self94195_)))))
    (bind-method!__%
     gx#module-context::t
     ':init!
     gx#module-context:::init!
     '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_self94039_ _ctx94040_ _root94041_)
        (let ((_super94049_
               (let ((_$e94043_ _root94041_))
                 (if _$e94043_
                     _$e94043_
                     (let ((_$e94046_ (gx#core-context-root__0)))
                       (if _$e94046_
                           _$e94046_
                           (let ((__obj94264
                                  (##structure gx#root-context::t '#f '#f)))
                             (let ((__constructor94265
                                    (direct-method-ref
                                     gx#root-context::t
                                     __obj94264
                                     ':init!)))
                               (if __constructor94265
                                   (__constructor94265 __obj94264)
                                   (error '"missing constructor method implementation"
                                          'class:
                                          gx#root-context::t
                                          'method:
                                          ':init!)))
                             __obj94264)))))))
          (if _ctx94040_
              (let ((_id94052_
                     (##structure-ref
                      _ctx94040_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_path94053_
                     (##structure-ref _ctx94040_ '7 gx#module-context::t '#f))
                    (_in94054_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _ctx94040_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_e94055_
                     (make-promise (lambda () (gx#eval-module _ctx94040_)))))
                (if (##fx< '8 (##structure-length _self94039_))
                    (begin
                      (##unchecked-structure-set!
                       _self94039_
                       _id94052_
                       '1
                       (##structure-type _self94039_)
                       '#f)
                      (##unchecked-structure-set!
                       _self94039_
                       (make-hash-table-eq 'size: (length _in94054_))
                       '2
                       (##structure-type _self94039_)
                       '#f)
                      (##unchecked-structure-set!
                       _self94039_
                       _super94049_
                       '3
                       (##structure-type _self94039_)
                       '#f)
                      (##unchecked-structure-set!
                       _self94039_
                       '#f
                       '4
                       (##structure-type _self94039_)
                       '#f)
                      (##unchecked-structure-set!
                       _self94039_
                       '#f
                       '5
                       (##structure-type _self94039_)
                       '#f)
                      (##unchecked-structure-set!
                       _self94039_
                       _path94053_
                       '6
                       (##structure-type _self94039_)
                       '#f)
                      (##unchecked-structure-set!
                       _self94039_
                       _in94054_
                       '7
                       (##structure-type _self94039_)
                       '#f)
                      (##unchecked-structure-set!
                       _self94039_
                       _e94055_
                       '8
                       (##structure-type _self94039_)
                       '#f))
                    (error '"struct-instance-init!: too many arguments for struct"
                           _self94039_
                           '8
                           (##vector-length _self94039_)))
                (for-each
                 (lambda (_g9405694058_)
                   (gx#core-bind-weak-import!__% _g9405694058_ _self94039_))
                 _in94054_))
              (if (##fx< '8 (##structure-length _self94039_))
                  (begin
                    (##unchecked-structure-set!
                     _self94039_
                     '#f
                     '1
                     (##structure-type _self94039_)
                     '#f)
                    (##unchecked-structure-set!
                     _self94039_
                     (make-hash-table-eq)
                     '2
                     (##structure-type _self94039_)
                     '#f)
                    (##unchecked-structure-set!
                     _self94039_
                     _super94049_
                     '3
                     (##structure-type _self94039_)
                     '#f)
                    (##unchecked-structure-set!
                     _self94039_
                     '#f
                     '4
                     (##structure-type _self94039_)
                     '#f)
                    (##unchecked-structure-set!
                     _self94039_
                     '#f
                     '5
                     (##structure-type _self94039_)
                     '#f)
                    (##unchecked-structure-set!
                     _self94039_
                     '#f
                     '6
                     (##structure-type _self94039_)
                     '#f)
                    (##unchecked-structure-set!
                     _self94039_
                     '()
                     '7
                     (##structure-type _self94039_)
                     '#f)
                    (##unchecked-structure-set!
                     _self94039_
                     '#f
                     '8
                     (##structure-type _self94039_)
                     '#f))
                  (error '"struct-instance-init!: too many arguments for struct"
                         _self94039_
                         '8
                         (##vector-length _self94039_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_self94064_ _ctx94065_)
        (let ((_root94067_ '#f))
          (gx#prelude-context:::init!__% _self94064_ _ctx94065_ _root94067_))))
    (define gx#prelude-context:::init!
      (lambda _g94271_
        (let ((_g94270_ (##length _g94271_)))
          (cond ((##fx= _g94270_ 2)
                 (apply (lambda (_self94064_ _ctx94065_)
                          (gx#prelude-context:::init!__0
                           _self94064_
                           _ctx94065_))
                        _g94271_))
                ((##fx= _g94270_ 3)
                 (apply (lambda (_self94069_ _ctx94070_ _root94071_)
                          (gx#prelude-context:::init!__%
                           _self94069_
                           _ctx94070_
                           _root94071_))
                        _g94271_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g94271_))))))
    (bind-method!__%
     gx#prelude-context::t
     ':init!
     gx#prelude-context:::init!
     '#f)
    (define gx#import-export-expander-init!
      (lambda (_self93913_ _e93914_)
        (if (##fx< '3 (##structure-length _self93913_))
            (begin
              (##unchecked-structure-set!
               _self93913_
               _e93914_
               '1
               (##structure-type _self93913_)
               '#f)
              (##unchecked-structure-set!
               _self93913_
               (gx#current-expander-context)
               '2
               (##structure-type _self93913_)
               '#f)
              (##unchecked-structure-set!
               _self93913_
               (fx- (gx#current-expander-phi) '1)
               '3
               (##structure-type _self93913_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self93913_
                   '3
                   (##vector-length _self93913_)))))
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
      (lambda (_g9353993542_ _g9354093544_)
        (gx#core-apply-user-expander__%
         _g9353993542_
         _g9354093544_
         'apply-import-expander)))
    (bind-method!__%
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_g9341093413_ _g9341193415_)
        (gx#core-apply-user-expander__%
         _g9341093413_
         _g9341193415_
         'apply-export-expander)))
    (bind-method!__%
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_ctx93281_)
        (let* ((_path93283_
                (##structure-ref _ctx93281_ '7 gx#module-context::t '#f))
               (_path93285_
                (if (pair? _path93283_) (last _path93283_) _path93283_)))
          (if (string? _path93285_) _path93285_ '#f))))
    (define gx#import-module__%
      (lambda (_path93257_ _reload?93258_ _eval?93259_)
        (let ((_ctx93261_
               ((gx#current-expander-module-import)
                _path93257_
                _reload?93258_)))
          (if (and _ctx93261_ _eval?93259_)
              (gx#eval-module _ctx93261_)
              '#!void)
          _ctx93261_)))
    (define gx#import-module__0
      (lambda (_path93266_)
        (let* ((_reload?93268_ '#f) (_eval?93270_ '#f))
          (gx#import-module__% _path93266_ _reload?93268_ _eval?93270_))))
    (define gx#import-module__1
      (lambda (_path93272_ _reload?93273_)
        (let ((_eval?93275_ '#f))
          (gx#import-module__% _path93272_ _reload?93273_ _eval?93275_))))
    (define gx#import-module
      (lambda _g94273_
        (let ((_g94272_ (##length _g94273_)))
          (cond ((##fx= _g94272_ 1)
                 (apply (lambda (_path93266_)
                          (gx#import-module__0 _path93266_))
                        _g94273_))
                ((##fx= _g94272_ 2)
                 (apply (lambda (_path93272_ _reload?93273_)
                          (gx#import-module__1 _path93272_ _reload?93273_))
                        _g94273_))
                ((##fx= _g94272_ 3)
                 (apply (lambda (_path93277_ _reload?93278_ _eval?93279_)
                          (gx#import-module__%
                           _path93277_
                           _reload?93278_
                           _eval?93279_))
                        _g94273_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g94273_))))))
    (define gx#eval-module
      (lambda (_mod93254_) ((gx#current-expander-module-eval) _mod93254_)))
    (define gx#core-eval-module
      (lambda (_obj93239_)
        (letrec ((_force-e93241_
                  (lambda (_getf93250_ _e93251_)
                    (call-with-parameters
                     (lambda () (force (_getf93250_ _e93251_)))
                     gx#current-expander-context
                     _e93251_
                     gx#current-expander-phi
                     '0))))
          (let _recur93243_ ((_e93245_ _obj93239_))
            (if (##structure-instance-of? _e93245_ 'gx#module-context::t)
                (begin
                  (let ((_$e93247_ (gx#core-context-prelude__% _e93245_)))
                    (if _$e93247_ (_recur93243_ _$e93247_) '#!void))
                  (_force-e93241_ gx#module-context-e _e93245_))
                (if (##structure-instance-of? _e93245_ 'gx#prelude-context::t)
                    (_force-e93241_ gx#prelude-context-e _e93245_)
                    (if (gx#stx-string? _e93245_)
                        (_recur93243_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _e93245_)))
                        (if (gx#core-library-module-path? _e93245_)
                            (_recur93243_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _e93245_)))
                            (error '"Cannot eval module" _obj93239_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_ctx93222_)
        (let _lp93224_ ((_e93226_ _ctx93222_))
          (if (or (##structure-instance-of? _e93226_ 'gx#module-context::t)
                  (##structure-instance-of? _e93226_ 'gx#local-context::t))
              (_lp93224_
               (##unchecked-structure-ref _e93226_ '3 gx#phi-context::t '#f))
              (if (##structure-instance-of? _e93226_ 'gx#prelude-context::t)
                  _e93226_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_ctx93235_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _ctx93235_))))
    (define gx#core-context-prelude
      (lambda _g94275_
        (let ((_g94274_ (##length _g94275_)))
          (cond ((##fx= _g94274_ 0)
                 (apply (lambda () (gx#core-context-prelude__0)) _g94275_))
                ((##fx= _g94274_ 1)
                 (apply (lambda (_ctx93237_)
                          (gx#core-context-prelude__% _ctx93237_))
                        _g94275_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g94275_))))))
    (define gx#core-module->prelude-context
      (lambda (_ctx93212_)
        (let* ((_ht93214_ (gx#current-expander-module-registry))
               (_$e93216_ (hash-get _ht93214_ _ctx93212_)))
          (if _$e93216_
              (values _$e93216_)
              (let ((_pre93219_
                     (let ((__obj94266
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
                       (gx#prelude-context:::init! __obj94266 _ctx93212_)
                       __obj94266)))
                (hash-put! _ht93214_ _ctx93212_ _pre93219_)
                _pre93219_)))))
    (define gx#core-import-module__%
      (lambda (_rpath93093_ _reload?93094_)
        (letrec ((_import-source93096_
                  (lambda (_path93181_)
                    (if (member _path93181_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _path93181_)
                        '#!void)
                    (call-with-parameters
                     (lambda ()
                       (let ((_g94276_ (gx#core-read-module _path93181_)))
                         (begin
                           (let ((_g94277_
                                  (if (##values? _g94276_)
                                      (##vector-length _g94276_)
                                      1)))
                             (if (not (##fx= _g94277_ 4))
                                 (error "Context expects 4 values" _g94277_)))
                           (let ((_pre93184_ (##vector-ref _g94276_ 0))
                                 (_id93185_ (##vector-ref _g94276_ 1))
                                 (_ns93186_ (##vector-ref _g94276_ 2))
                                 (_body93187_ (##vector-ref _g94276_ 3)))
                             (let* ((_prelude93192_
                                     (if (##structure-instance-of?
                                          _pre93184_
                                          'gx#prelude-context::t)
                                         _pre93184_
                                         (if (##structure-instance-of?
                                              _pre93184_
                                              'gx#module-context::t)
                                             (gx#core-module->prelude-context
                                              _pre93184_)
                                             (if (string? _pre93184_)
                                                 (gx#core-module->prelude-context
                                                  (gx#core-import-module__0
                                                   _pre93184_))
                                                 (if (not _pre93184_)
                                                     (let ((_$e93189_
                                                            (gx#current-expander-module-prelude)))
                                                       (if _$e93189_
                                                           _$e93189_
                                                           (let ((__obj94267
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
                     (gx#prelude-context:::init! __obj94267 '#f)
                     __obj94267)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error '"Cannot import module; unknown prelude"
                                                            _rpath93093_
                                                            _pre93184_))))))
                                    (_ctx93194_
                                     (let ((__obj94268
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
                                        __obj94268
                                        _id93185_
                                        _prelude93192_
                                        _ns93186_
                                        _path93181_)
                                       __obj94268))
                                    (_body93196_
                                     (gx#core-expand-module-begin
                                      _body93187_
                                      _ctx93194_))
                                    (_body93198_
                                     (gx#core-quote-syntax__%
                                      (gx#core-cons '%#begin _body93196_)
                                      _path93181_
                                      _ctx93194_
                                      '())))
                               (##unchecked-structure-set!
                                _ctx93194_
                                (make-promise
                                 (lambda () (gx#eval-syntax* _body93198_)))
                                '10
                                gx#module-context::t
                                '#f)
                               (##unchecked-structure-set!
                                _ctx93194_
                                _body93198_
                                '11
                                gx#module-context::t
                                '#f)
                               (hash-put!
                                (gx#current-expander-module-registry)
                                _path93181_
                                _ctx93194_)
                               (hash-put!
                                (gx#current-expander-module-registry)
                                _id93185_
                                _ctx93194_)
                               _ctx93194_)))))
                     gx#current-expander-context
                     (gx#core-context-root__0)
                     gx#current-expander-marks
                     '()
                     gx#current-expander-phi
                     '0
                     gx#current-expander-path
                     (cons _path93181_ (gx#current-expander-path))
                     gx#current-import-expander-phi
                     '#f
                     gx#current-export-expander-phi
                     '#f)))
                 (_import-submodule93097_
                  (lambda (_rpath93109_)
                    (let* ((_rpath9311093117_ _rpath93109_)
                           (_E9311293121_
                            (lambda ()
                              (error '"No clause matching" _rpath9311093117_)))
                           (_K9311393169_
                            (lambda (_refs93124_ _origin93125_)
                              (let ((_ctx93127_
                                     (if _origin93125_
                                         (gx#core-import-module__%
                                          _origin93125_
                                          _reload?93094_)
                                         (gx#current-expander-context))))
                                (let _lp93129_ ((_rest93131_ _refs93124_)
                                                (_ctx93132_ _ctx93127_))
                                  (let* ((_rest9313393141_ _rest93131_)
                                         (_else9313593149_
                                          (lambda () _ctx93132_))
                                         (_K9313793157_
                                          (lambda (_rest93152_ _id93153_)
                                            (let ((_bind93155_
                                                   (gx#resolve-identifier__%
                                                    _id93153_
                                                    '0
                                                    _ctx93132_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _bind93155_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _bind93155_
                                                         '4
                                                         gx#syntax-binding::t
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_lp93129_
                                                   _rest93152_
                                                   (##unchecked-structure-ref
                                                    _bind93155_
                                                    '4
                                                    gx#syntax-binding::t
                                                    '#f))
                                                  (error '"Cannot import submodule; not bound as a module"
                                                         _rpath93109_
                                                         _id93153_
                                                         _bind93155_))))))
                                    (if (##pair? _rest9313393141_)
                                        (let ((_hd9313893160_
                                               (##car _rest9313393141_))
                                              (_tl9313993162_
                                               (##cdr _rest9313393141_)))
                                          (let* ((_id93165_ _hd9313893160_)
                                                 (_rest93167_ _tl9313993162_))
                                            (_K9313793157_
                                             _rest93167_
                                             _id93165_)))
                                        (_else9313593149_))))))))
                      (if (##pair? _rpath9311093117_)
                          (let ((_hd9311493172_ (##car _rpath9311093117_))
                                (_tl9311593174_ (##cdr _rpath9311093117_)))
                            (let* ((_origin93177_ _hd9311493172_)
                                   (_refs93179_ _tl9311593174_))
                              (_K9311393169_ _refs93179_ _origin93177_)))
                          (_E9311293121_))))))
          (let ((_$e93099_
                 (if (not _reload?93094_)
                     (hash-get
                      (gx#current-expander-module-registry)
                      _rpath93093_)
                     '#f)))
            (if _$e93099_
                (values _$e93099_)
                (if (list? _rpath93093_)
                    (_import-submodule93097_ _rpath93093_)
                    (if (gx#core-library-module-path? _rpath93093_)
                        (let ((_ctx93102_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _rpath93093_)
                                _reload?93094_)))
                          (hash-put!
                           (gx#current-expander-module-registry)
                           _rpath93093_
                           _ctx93102_)
                          _ctx93102_)
                        (let* ((_npath93104_ (path-normalize _rpath93093_))
                               (_$e93106_
                                (if (not _reload?93094_)
                                    (hash-get
                                     (gx#current-expander-module-registry)
                                     _npath93104_)
                                    '#f)))
                          (if _$e93106_
                              (values _$e93106_)
                              (_import-source93096_ _npath93104_))))))))))
    (define gx#core-import-module__0
      (lambda (_rpath93205_)
        (let ((_reload?93207_ '#f))
          (gx#core-import-module__% _rpath93205_ _reload?93207_))))
    (define gx#core-import-module
      (lambda _g94279_
        (let ((_g94278_ (##length _g94279_)))
          (cond ((##fx= _g94278_ 1)
                 (apply (lambda (_rpath93205_)
                          (gx#core-import-module__0 _rpath93205_))
                        _g94279_))
                ((##fx= _g94278_ 2)
                 (apply (lambda (_rpath93209_ _reload?93210_)
                          (gx#core-import-module__%
                           _rpath93209_
                           _reload?93210_))
                        _g94279_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g94279_))))))
    (define gx#core-read-module
      (lambda (_path93082_)
        (with-catch
         (lambda (_exn93084_)
           (if (and (datum-parsing-exception? _exn93084_)
                    (eq? (datum-parsing-exception-filepos _exn93084_) '0))
               (gx#core-read-module/lang _path93082_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _path93082_
                (call-with-parameters
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_g9308693088_)
                      (display-exception _exn93084_ _g9308693088_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _path93082_)))))
    (define gx#core-read-module/sexp
      (lambda (_path92945_)
        (let _lp92947_ ((_body92949_ (read-syntax-from-file _path92945_))
                        (_pre92950_ '#f)
                        (_ns92951_ '#f)
                        (_pkg92952_ '#f))
          (let* ((_e9295392977_ _body92949_)
                 (_E9296992999_
                  (lambda ()
                    (let ((_g94280_
                           (if _pkg92952_
                               (values _pre92950_ _ns92951_ _pkg92952_)
                               (gx#core-read-module-package
                                _path92945_
                                _pre92950_
                                _ns92951_))))
                      (begin
                        (let ((_g94281_
                               (if (##values? _g94280_)
                                   (##vector-length _g94280_)
                                   1)))
                          (if (not (##fx= _g94281_ 3))
                              (error "Context expects 3 values" _g94281_)))
                        (let ((_pre92981_ (##vector-ref _g94280_ 0))
                              (_ns92982_ (##vector-ref _g94280_ 1))
                              (_pkg92983_ (##vector-ref _g94280_ 2)))
                          (let* ((_prelude92985_
                                  (if (gx#core-bound-module-prelude?
                                       _pre92981_)
                                      (gx#syntax-local-e__0 _pre92981_)
                                      (if (gx#core-library-module-path?
                                           _pre92981_)
                                          (gx#core-resolve-library-module-path
                                           _pre92981_)
                                          (if (gx#stx-string? _pre92981_)
                                              (gx#core-resolve-module-path__%
                                               _pre92981_
                                               _path92945_)
                                              (gx#stx-e _pre92981_)))))
                                 (_path-id92987_
                                  (gx#core-module-path->namespace _path92945_))
                                 (_pkg-id92989_
                                  (if _pkg92983_
                                      (string-append
                                       _pkg92983_
                                       '"/"
                                       _path-id92987_)
                                      _path-id92987_))
                                 (_module-id92991_
                                  (string->symbol _pkg-id92989_))
                                 (_module-ns92996_
                                  (if (eq? _ns92982_ '#!void)
                                      '#f
                                      (let ((_$e92993_ _ns92982_))
                                        (if _$e92993_
                                            _$e92993_
                                            _pkg-id92989_)))))
                            (values _prelude92985_
                                    _module-id92991_
                                    _module-ns92996_
                                    _body92949_)))))))
                 (_E9296293028_
                  (lambda ()
                    (if (gx#stx-pair? _e9295392977_)
                        (let ((_e9297093003_ (gx#syntax-e _e9295392977_)))
                          (let ((_hd9297193006_ (##car _e9297093003_))
                                (_tl9297293008_ (##cdr _e9297093003_)))
                            (if (eq? (gx#stx-e _hd9297193006_) 'package:)
                                (if (gx#stx-pair? _tl9297293008_)
                                    (let ((_e9297393011_
                                           (gx#syntax-e _tl9297293008_)))
                                      (let ((_hd9297493014_
                                             (##car _e9297393011_))
                                            (_tl9297593016_
                                             (##cdr _e9297393011_)))
                                        (let* ((_pkg93019_ _hd9297493014_)
                                               (_rest93021_ _tl9297593016_))
                                          (if '#t
                                              (let ((_pkg93026_
                                                     (if (gx#identifier?
                                                          _pkg93019_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _pkg93019_))
                                                         (if (or (gx#stx-string?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _pkg93019_)
                         (gx#stx-false? _pkg93019_))
                     (gx#stx-e _pkg93019_)
                     (gx#raise-syntax-error
                      'import
                      '"Bad syntax; Illegal package name"
                      _pkg93019_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp92947_
                                                 _rest93021_
                                                 _pre92950_
                                                 _ns92951_
                                                 _pkg93026_))
                                              (_E9296992999_)))))
                                    (_E9296992999_))
                                (_E9296992999_))))
                        (_E9296992999_))))
                 (_E9295593054_
                  (lambda ()
                    (if (gx#stx-pair? _e9295392977_)
                        (let ((_e9296393032_ (gx#syntax-e _e9295392977_)))
                          (let ((_hd9296493035_ (##car _e9296393032_))
                                (_tl9296593037_ (##cdr _e9296393032_)))
                            (if (eq? (gx#stx-e _hd9296493035_) 'namespace:)
                                (if (gx#stx-pair? _tl9296593037_)
                                    (let ((_e9296693040_
                                           (gx#syntax-e _tl9296593037_)))
                                      (let ((_hd9296793043_
                                             (##car _e9296693040_))
                                            (_tl9296893045_
                                             (##cdr _e9296693040_)))
                                        (let* ((_ns93048_ _hd9296793043_)
                                               (_rest93050_ _tl9296893045_))
                                          (if '#t
                                              (let ((_ns93052_
                                                     (if (gx#identifier?
                                                          _ns93048_)
                                                         (symbol->string
                                                          (gx#stx-e _ns93048_))
                                                         (if (gx#stx-string?
                                                              _ns93048_)
                                                             (gx#stx-e
                                                              _ns93048_)
                                                             (if (gx#stx-false?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _ns93048_)
                         '#!void
                         (gx#raise-syntax-error
                          'import
                          '"Bad syntax; illegal namespace"
                          _ns93048_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp92947_
                                                 _rest93050_
                                                 _pre92950_
                                                 _ns93052_
                                                 _pkg92952_))
                                              (_E9296293028_)))))
                                    (_E9296293028_))
                                (_E9296293028_))))
                        (_E9296293028_))))
                 (_E9295493078_
                  (lambda ()
                    (if (gx#stx-pair? _e9295392977_)
                        (let ((_e9295693058_ (gx#syntax-e _e9295392977_)))
                          (let ((_hd9295793061_ (##car _e9295693058_))
                                (_tl9295893063_ (##cdr _e9295693058_)))
                            (if (eq? (gx#stx-e _hd9295793061_) 'prelude:)
                                (if (gx#stx-pair? _tl9295893063_)
                                    (let ((_e9295993066_
                                           (gx#syntax-e _tl9295893063_)))
                                      (let ((_hd9296093069_
                                             (##car _e9295993066_))
                                            (_tl9296193071_
                                             (##cdr _e9295993066_)))
                                        (let* ((_prelude93074_ _hd9296093069_)
                                               (_rest93076_ _tl9296193071_))
                                          (if '#t
                                              (_lp92947_
                                               _rest93076_
                                               _prelude93074_
                                               _ns92951_
                                               _pkg92952_)
                                              (_E9295593054_)))))
                                    (_E9295593054_))
                                (_E9295593054_))))
                        (_E9295593054_)))))
            (_E9295493078_)))))
    (define gx#core-read-module/lang
      (lambda (_path92772_)
        (letrec ((_default-read-module-body92774_
                  (lambda (_inp92937_)
                    (let _lp92939_ ((_body92941_ '()))
                      (let ((_next92943_ (read-syntax _inp92937_)))
                        (if (eof-object? _next92943_)
                            (reverse _body92941_)
                            (_lp92939_ (cons _next92943_ _body92941_)))))))
                 (_read-body92775_
                  (lambda (_inp92856_
                           _pre92857_
                           _ns92858_
                           _pkg92859_
                           _args92860_)
                    (let ((_g94282_
                           (if _pkg92859_
                               (values _pre92857_ _ns92858_ _pkg92859_)
                               (gx#core-read-module-package
                                _path92772_
                                _pre92857_
                                _ns92858_))))
                      (begin
                        (let ((_g94283_
                               (if (##values? _g94282_)
                                   (##vector-length _g94282_)
                                   1)))
                          (if (not (##fx= _g94283_ 3))
                              (error "Context expects 3 values" _g94283_)))
                        (let ((_pre92862_ (##vector-ref _g94282_ 0))
                              (_ns92863_ (##vector-ref _g94282_ 1))
                              (_pkg92864_ (##vector-ref _g94282_ 2)))
                          (let* ((_prelude92866_
                                  (gx#import-module__0 _pre92862_))
                                 (_read-module-body92920_
                                  (let ((_$e92912_
                                         (find (lambda (_e9286792869_)
                                                 (let* ((_g9287192881_
                                                         _e9286792869_)
                                                        (_else9287392889_
                                                         (lambda () '#f))
                                                        (_K9287592893_
                                                         (lambda () '#t)))
                                                   (if (##structure-direct-instance-of?
                                                        _g9287192881_
                                                        'gx#module-export::t)
                                                       (let* ((_e9287692896_
                                                               (##unchecked-structure-ref
                                                                _g9287192881_
                                                                '1
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e9287792899_
                                                               (##unchecked-structure-ref
                                                                _g9287192881_
                                                                '2
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e9287892902_
                                                               (##unchecked-structure-ref
                                                                _g9287192881_
                                                                '3
                                                                gx#module-export::t
                                                                '#f)))
                                                         (if (##eq? _e9287892902_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)
                     (let ((_e9287992905_
                            (##unchecked-structure-ref
                             _g9287192881_
                             '4
                             gx#module-export::t
                             '#f)))
                       (if ((lambda (_g9290792909_)
                              (eq? _g9290792909_ 'read-module-body))
                            _e9287992905_)
                           (_K9287592893_)
                           (_else9287392889_)))
                     (_else9287392889_)))
               (_else9287392889_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (##unchecked-structure-ref
                                                _prelude92866_
                                                '9
                                                gx#module-context::t
                                                '#f))))
                                    (if _$e92912_
                                        ((lambda (_xport92915_)
                                           (let ((_proc92918_
                                                  (with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _xport92915_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _proc92918_)
                                                 _proc92918_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _path92772_
                                                  _pre92862_
                                                  _proc92918_))))
                                         _$e92912_)
                                        _default-read-module-body92774_)))
                                 (_path-id92922_
                                  (gx#core-module-path->namespace _path92772_))
                                 (_pkg-id92924_
                                  (if _pkg92864_
                                      (string-append
                                       _pkg92864_
                                       '"/"
                                       _path-id92922_)
                                      _path-id92922_))
                                 (_module-id92926_
                                  (string->symbol _pkg-id92924_))
                                 (_module-ns92931_
                                  (let ((_$e92928_ _ns92863_))
                                    (if _$e92928_ _$e92928_ _pkg-id92924_)))
                                 (_body92934_
                                  (call-with-parameters
                                   (lambda ()
                                     (_read-module-body92920_ _inp92856_))
                                   gx#current-module-reader-path
                                   _path92772_
                                   gx#current-module-reader-args
                                   _args92860_)))
                            (values _prelude92866_
                                    _module-id92926_
                                    _module-ns92931_
                                    _body92934_)))))))
                 (_string-e92776_
                  (lambda (_obj92853_ _what92854_)
                    (if (string? _obj92853_)
                        _obj92853_
                        (if (symbol? _obj92853_)
                            (symbol->string _obj92853_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _what92854_)
                             _path92772_
                             _obj92853_)))))
                 (_read-lang-args92777_
                  (lambda (_inp92808_ _args92809_)
                    (let* ((_args9281092818_ _args92809_)
                           (_else9281292826_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _path92772_)))
                           (_K9281492841_
                            (lambda (_args92829_ _prelude92830_)
                              (let* ((_pkg92832_
                                      (pgetq__0 'package: _args92829_))
                                     (_pkg92834_
                                      (if _pkg92832_
                                          (_string-e92776_
                                           _pkg92832_
                                           '"package")
                                          '#f))
                                     (_ns92836_
                                      (pgetq__0 'namespace: _args92829_))
                                     (_ns92838_
                                      (if _ns92836_
                                          (_string-e92776_
                                           _ns92836_
                                           '"namespace")
                                          '#f)))
                                (_read-body92775_
                                 _inp92808_
                                 _prelude92830_
                                 _ns92838_
                                 _pkg92834_
                                 _args92829_)))))
                      (if (##pair? _args9281092818_)
                          (let ((_hd9281592844_ (##car _args9281092818_))
                                (_tl9281692846_ (##cdr _args9281092818_)))
                            (let* ((_prelude92849_ _hd9281592844_)
                                   (_args92851_ _tl9281692846_))
                              (_K9281492841_ _args92851_ _prelude92849_)))
                          (_else9281292826_)))))
                 (_read-lang92778_
                  (lambda (_inp92783_)
                    (let* ((_head92785_ (read-line _inp92783_))
                           (_$e92787_ (string-index__0 _head92785_ '#\space)))
                      (if _$e92787_
                          ((lambda (_ix92790_)
                             (let ((_lang92792_
                                    (substring _head92785_ '0 _ix92790_)))
                               (if (equal? _lang92792_ '"#lang")
                                   (let* ((_rest92794_
                                           (substring
                                            _head92785_
                                            (fx+ _ix92790_ '1)
                                            (string-length _head92785_)))
                                          (_args92805_
                                           (with-catch
                                            (lambda (_g9279592797_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _path92772_
                                               _g9279592797_))
                                            (lambda ()
                                              (call-with-input-string
                                               _rest92794_
                                               (lambda (_g9280092802_)
                                                 (read-all
                                                  _g9280092802_
                                                  read)))))))
                                     (_read-lang-args92777_
                                      _inp92783_
                                      _args92805_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _path92772_))))
                           _$e92787_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _path92772_)))))
                 (_read-e92779_
                  (lambda (_inp92781_)
                    (if (eq? (peek-char _inp92781_) '#\#)
                        (_read-lang92778_ _inp92781_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _path92772_)))))
          (gx#call-with-input-source-file _path92772_ _read-e92779_))))
    (define gx#core-read-module-package
      (lambda (_path92726_ _pre92727_ _ns92728_)
        (letrec ((_string-e92730_
                  (lambda (_e92770_)
                    (if (symbol? _e92770_)
                        (symbol->string _e92770_)
                        (if (string? _e92770_)
                            _e92770_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _e92770_))))))
          (let _lp92732_ ((_dir92734_ (path-directory _path92726_))
                          (_pkg-path92735_ '()))
            (let ((_gerbil.pkg92737_ (path-expand '"gerbil.pkg" _dir92734_)))
              (if (file-exists? _gerbil.pkg92737_)
                  (let ((_plist92739_
                         (gx#core-library-package-plist__% _dir92734_ '#t)))
                    (if (null? _plist92739_)
                        (let ((_pkg92741_
                               (if (not (null? _pkg-path92735_))
                                   (string-join _pkg-path92735_ '"/")
                                   '#f)))
                          (values _pre92727_ _ns92728_ _pkg92741_))
                        (if (list? _plist92739_)
                            (let* ((_root92743_
                                    (pgetq__0 'package: _plist92739_))
                                   (_pkg92747_
                                    (let ((_pkg-path92745_
                                           (if _root92743_
                                               (cons (_string-e92730_
                                                      _root92743_)
                                                     _pkg-path92735_)
                                               _pkg-path92735_)))
                                      (if (not (null? _pkg-path92745_))
                                          (string-join _pkg-path92745_ '"/")
                                          '#f)))
                                   (_ns92754_
                                    (let ((_ns92752_
                                           (let ((_$e92749_ _ns92728_))
                                             (if _$e92749_
                                                 _$e92749_
                                                 (pgetq__0
                                                  'namespace:
                                                  _plist92739_)))))
                                      (if _ns92752_
                                          (_string-e92730_ _ns92752_)
                                          '#f)))
                                   (_pre92759_
                                    (let ((_$e92756_ _pre92727_))
                                      (if _$e92756_
                                          _$e92756_
                                          (pgetq__0 'prelude: _plist92739_)))))
                              (values _pre92759_ _ns92754_ _pkg92747_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _plist92739_))))
                  (let ((_dir*92762_
                         (path-strip-trailing-directory-separator _dir92734_)))
                    (if (or (string-empty? _dir*92762_)
                            (equal? _dir92734_ _dir*92762_))
                        (values _pre92727_ _ns92728_ '#f)
                        (let ((_xpath92767_ (path-strip-directory _dir*92762_))
                              (_xdir92768_ (path-directory _dir*92762_)))
                          (_lp92732_
                           _xdir92768_
                           (cons _xpath92767_ _pkg-path92735_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_path92724_)
        (path-strip-extension (path-strip-directory _path92724_))))
    (define gx#core-module-path->id
      (lambda (_path92722_)
        (string->symbol (gx#core-module-path->namespace _path92722_))))
    (define gx#core-resolve-module-path__%
      (lambda (_stx-path92701_ _rel92702_)
        (let* ((_path92704_ (gx#stx-e _stx-path92701_))
               (_path92706_
                (if (string-empty? (path-extension _path92704_))
                    (string-append _path92704_ '".ss")
                    _path92704_)))
          (gx#core-resolve-path__%
           _path92706_
           (let ((_$e92709_ (gx#stx-source _stx-path92701_)))
             (if _$e92709_ _$e92709_ _rel92702_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_stx-path92715_)
        (let ((_rel92717_ '#f))
          (gx#core-resolve-module-path__% _stx-path92715_ _rel92717_))))
    (define gx#core-resolve-module-path
      (lambda _g94285_
        (let ((_g94284_ (##length _g94285_)))
          (cond ((##fx= _g94284_ 1)
                 (apply (lambda (_stx-path92715_)
                          (gx#core-resolve-module-path__0 _stx-path92715_))
                        _g94285_))
                ((##fx= _g94284_ 2)
                 (apply (lambda (_stx-path92719_ _rel92720_)
                          (gx#core-resolve-module-path__%
                           _stx-path92719_
                           _rel92720_))
                        _g94285_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g94285_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_libpath92587_)
        (let* ((_spath92589_ (symbol->string (gx#stx-e _libpath92587_)))
               (_spath92591_
                (substring _spath92589_ '1 (string-length _spath92589_)))
               (_ext92593_ (path-extension _spath92591_))
               (_ssi92595_
                (if (string-empty? _ext92593_)
                    (string-append _spath92591_ '".ssi")
                    (string-append
                     (path-strip-extension _spath92591_)
                     '".ssi")))
               (_srcs92599_
                (if (string-empty? _ext92593_)
                    (map (lambda (_ext92597_)
                           (string-append _spath92591_ _ext92597_))
                         '(".ss" ".sld" ".scm"))
                    (cons _spath92591_ '()))))
          (let _lp92602_ ((_rest92604_
                           (gx#current-expander-module-library-path)))
            (let* ((_rest9260592614_ _rest92604_)
                   (_E9260892618_
                    (lambda ()
                      (error '"No clause matching" _rest9260592614_))))
              (let ((_K9261092688_
                     (lambda (_rest92629_ _dir92630_)
                       (letrec ((_resolve92632_
                                 (lambda (_ssi92644_ _srcs92645_)
                                   (let ((_compiled-path92647_
                                          (path-expand _ssi92644_ _dir92630_)))
                                     (if (file-exists? _compiled-path92647_)
                                         (path-normalize _compiled-path92647_)
                                         (let _lpr92649_ ((_rest-src92651_
                                                           _srcs92645_))
                                           (let* ((_rest-src9265292660_
                                                   _rest-src92651_)
                                                  (_else9265492668_
                                                   (lambda ()
                                                     (_lp92602_ _rest92629_)))
                                                  (_K9265692676_
                                                   (lambda (_rest-src92671_
                                                            _src92672_)
                                                     (let ((_src-path92674_
                                                            (path-expand
                                                             _src92672_
                                                             _dir92630_)))
                                                       (if (file-exists?
                                                            _src-path92674_)
                                                           (path-normalize
                                                            _src-path92674_)
                                                           (_lpr92649_
                                                            _rest-src92671_))))))
                                             (if (##pair? _rest-src9265292660_)
                                                 (let ((_hd9265792679_
                                                        (##car _rest-src9265292660_))
                                                       (_tl9265892681_
                                                        (##cdr _rest-src9265292660_)))
                                                   (let* ((_src92684_
                                                           _hd9265792679_)
                                                          (_rest-src92686_
                                                           _tl9265892681_))
                                                     (_K9265692676_
                                                      _rest-src92686_
                                                      _src92684_)))
                                                 (_else9265492668_)))))))))
                         (let ((_$e92634_
                                (gx#core-library-package-path-prefix
                                 _dir92630_)))
                           (if _$e92634_
                               ((lambda (_prefix92637_)
                                  (if (string-prefix?
                                       _prefix92637_
                                       _spath92591_)
                                      (let ((_ssi92641_
                                             (substring
                                              _ssi92595_
                                              (string-length _prefix92637_)
                                              (string-length _ssi92595_)))
                                            (_srcs92642_
                                             (map (lambda (_src92639_)
                                                    (substring
                                                     _src92639_
                                                     (string-length
                                                      _prefix92637_)
                                                     (string-length
                                                      _src92639_)))
                                                  _srcs92599_)))
                                        (_resolve92632_
                                         _ssi92641_
                                         _srcs92642_))
                                      (_lp92602_ _rest92629_)))
                                _$e92634_)
                               (_resolve92632_ _ssi92595_ _srcs92599_))))))
                    (_K9260992623_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"Cannot find library module"
                        _libpath92587_))))
                (let ((_try-match9260792626_
                       (lambda ()
                         (if (##null? _rest9260592614_)
                             (_K9260992623_)
                             (_E9260892618_)))))
                  (if (##pair? _rest9260592614_)
                      (let ((_tl9261292693_ (##cdr _rest9260592614_))
                            (_hd9261192691_ (##car _rest9260592614_)))
                        (let ((_dir92696_ _hd9261192691_)
                              (_rest92698_ _tl9261292693_))
                          (_K9261092688_ _rest92698_ _dir92696_)))
                      (_try-match9260792626_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_modpath92560_)
        (letrec ((_resolve92562_
                  (lambda (_path92579_ _base92580_)
                    (let ((_$e92582_ (string-rindex__0 _base92580_ '#\/)))
                      (if _$e92582_
                          ((lambda (_idx92585_)
                             (gx#core-resolve-library-module-path
                              (string->symbol
                               (string-append
                                '":"
                                (substring _base92580_ '0 _idx92585_)
                                '"/"
                                _path92579_))))
                           _$e92582_)
                          (gx#core-resolve-library-module-path
                           (string->symbol
                            (string-append '":" _path92579_))))))))
          (let ((_spath92564_ (symbol->string (gx#stx-e _modpath92560_)))
                (_mod92565_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _mod92565_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"Cannot resolve relative module path; not in module context"
                 _modpath92560_))
            (let ((_mpath92567_
                   (symbol->string
                    (##structure-ref
                     _mod92565_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _lp92569_ ((_spath92571_ _spath92564_)
                              (_mpath92572_ _mpath92567_))
                (if (string-prefix? '"../" _spath92571_)
                    (let ((_$e92574_ (string-rindex__0 _mpath92572_ '#\/)))
                      (if _$e92574_
                          ((lambda (_idx92577_)
                             (_lp92569_
                              (substring
                               _spath92571_
                               '3
                               (string-length _spath92571_))
                              (substring _mpath92572_ '0 _idx92577_)))
                           _$e92574_)
                          (gx#raise-syntax-error
                           '#f
                           '"Cannot resolve relative module path; illegal traversal"
                           _modpath92560_)))
                    (if (string-prefix? '"./" _spath92571_)
                        (_lp92569_
                         (substring
                          _spath92571_
                          '2
                          (string-length _spath92571_))
                         _mpath92572_)
                        (_resolve92562_ _spath92571_ _mpath92572_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_dir92553_)
        (let ((_$e92555_
               (pgetq__0
                'package:
                (gx#core-library-package-plist__0 _dir92553_))))
          (if _$e92555_
              ((lambda (_pkg92558_)
                 (string-append (symbol->string _pkg92558_) '"/"))
               _$e92555_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_dir92525_ _exists?92526_)
        (let* ((_cache92528_ (gx#core-library-package-cache))
               (_$e92530_ (hash-get _cache92528_ _dir92525_)))
          (if _$e92530_
              (values _$e92530_)
              (let* ((_gerbil.pkg92533_ (path-expand '"gerbil.pkg" _dir92525_))
                     (_plist92540_
                      (if (or _exists?92526_ (file-exists? _gerbil.pkg92533_))
                          (let ((_e92538_
                                 (gx#call-with-input-source-file
                                  _gerbil.pkg92533_
                                  read)))
                            (if (eof-object? _e92538_)
                                '()
                                (if (list? _e92538_)
                                    _e92538_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _gerbil.pkg92533_
                                     _e92538_))))
                          '())))
                (hash-put! _cache92528_ _dir92525_ _plist92540_)
                _plist92540_)))))
    (define gx#core-library-package-plist__0
      (lambda (_dir92546_)
        (let ((_exists?92548_ '#f))
          (gx#core-library-package-plist__% _dir92546_ _exists?92548_))))
    (define gx#core-library-package-plist
      (lambda _g94287_
        (let ((_g94286_ (##length _g94287_)))
          (cond ((##fx= _g94286_ 1)
                 (apply (lambda (_dir92546_)
                          (gx#core-library-package-plist__0 _dir92546_))
                        _g94287_))
                ((##fx= _g94286_ 2)
                 (apply (lambda (_dir92550_ _exists?92551_)
                          (gx#core-library-package-plist__%
                           _dir92550_
                           _exists?92551_))
                        _g94287_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g94287_))))))
    (define gx#core-library-package-cache
      (lambda ()
        (let ((_$e92519_ (gx#current-expander-module-library-package-cache)))
          (if _$e92519_
              (values _$e92519_)
              (let ((_cache92522_ (make-hash-table)))
                (gx#current-expander-module-library-package-cache _cache92522_)
                _cache92522_)))))
    (define gx#core-library-module-path?
      (lambda (_stx92516_) (gx#core-special-module-path? _stx92516_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_stx92514_) (gx#core-special-module-path? _stx92514_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_stx92509_ _char92510_)
        (if (gx#identifier? _stx92509_)
            (if (interned-symbol? (gx#stx-e _stx92509_))
                (let ((_str92512_ (symbol->string (gx#stx-e _stx92509_))))
                  (if (fx> (string-length _str92512_) '1)
                      (eq? (string-ref _str92512_ '0) _char92510_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_stx92503_)
        (gx#core-bound-identifier?__%
         _stx92503_
         (lambda (_g9250492506_)
           (gx#expander-binding?__% _g9250492506_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_stx92497_)
        (gx#core-bound-identifier?__%
         _stx92497_
         (lambda (_g9249892500_)
           (gx#expander-binding?__% _g9249892500_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_stx92484_)
        (letrec ((_module-prelude?92486_
                  (lambda (_e92492_)
                    (let ((_$e92494_
                           (##structure-instance-of?
                            _e92492_
                            'gx#module-context::t)))
                      (if _$e92494_
                          _$e92494_
                          (##structure-instance-of?
                           _e92492_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _stx92484_
           (lambda (_g9248792489_)
             (gx#expander-binding?__%
              _g9248792489_
              _module-prelude?92486_))))))
    (define gx#core-bind-import!__%
      (lambda (_in92414_ _ctx92415_ _force-weak?92416_)
        (let* ((_in9241792426_ _in92414_)
               (_E9241992430_
                (lambda () (error '"No clause matching" _in9241792426_)))
               (_K9242092443_
                (lambda (_weak?92433_ _phi92434_ _key92435_ _source92436_)
                  (gx#core-bind!__%
                   _key92435_
                   (let ((_e92438_
                          (gx#core-resolve-module-export _source92436_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref _e92438_ '1 gx#binding::t '#f)
                      _key92435_
                      _phi92434_
                      _e92438_
                      (##unchecked-structure-ref
                       _source92436_
                       '1
                       gx#module-export::t
                       '#f)
                      (let ((_$e92440_ _force-weak?92416_))
                        (if _$e92440_ _$e92440_ _weak?92433_))))
                   gx#core-context-rebind?
                   _phi92434_
                   _ctx92415_))))
          (if (##structure-direct-instance-of?
               _in9241792426_
               'gx#module-import::t)
              (let* ((_e9242192446_
                      (##unchecked-structure-ref
                       _in9241792426_
                       '1
                       gx#module-import::t
                       '#f))
                     (_source92449_ _e9242192446_)
                     (_e9242292451_
                      (##unchecked-structure-ref
                       _in9241792426_
                       '2
                       gx#module-import::t
                       '#f))
                     (_key92454_ _e9242292451_)
                     (_e9242392456_
                      (##unchecked-structure-ref
                       _in9241792426_
                       '3
                       gx#module-import::t
                       '#f))
                     (_phi92459_ _e9242392456_)
                     (_e9242492461_
                      (##unchecked-structure-ref
                       _in9241792426_
                       '4
                       gx#module-import::t
                       '#f))
                     (_weak?92464_ _e9242492461_))
                (_K9242092443_
                 _weak?92464_
                 _phi92459_
                 _key92454_
                 _source92449_))
              (_E9241992430_)))))
    (define gx#core-bind-import!__0
      (lambda (_in92469_)
        (let* ((_ctx92471_ (gx#current-expander-context))
               (_force-weak?92473_ '#f))
          (gx#core-bind-import!__% _in92469_ _ctx92471_ _force-weak?92473_))))
    (define gx#core-bind-import!__1
      (lambda (_in92475_ _ctx92476_)
        (let ((_force-weak?92478_ '#f))
          (gx#core-bind-import!__% _in92475_ _ctx92476_ _force-weak?92478_))))
    (define gx#core-bind-import!
      (lambda _g94289_
        (let ((_g94288_ (##length _g94289_)))
          (cond ((##fx= _g94288_ 1)
                 (apply (lambda (_in92469_)
                          (gx#core-bind-import!__0 _in92469_))
                        _g94289_))
                ((##fx= _g94288_ 2)
                 (apply (lambda (_in92475_ _ctx92476_)
                          (gx#core-bind-import!__1 _in92475_ _ctx92476_))
                        _g94289_))
                ((##fx= _g94288_ 3)
                 (apply (lambda (_in92480_ _ctx92481_ _force-weak?92482_)
                          (gx#core-bind-import!__%
                           _in92480_
                           _ctx92481_
                           _force-weak?92482_))
                        _g94289_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g94289_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_in92400_ _ctx92401_)
        (gx#core-bind-import!__% _in92400_ _ctx92401_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_in92406_)
        (let ((_ctx92408_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _in92406_ _ctx92408_))))
    (define gx#core-bind-weak-import!
      (lambda _g94291_
        (let ((_g94290_ (##length _g94291_)))
          (cond ((##fx= _g94290_ 1)
                 (apply (lambda (_in92406_)
                          (gx#core-bind-weak-import!__0 _in92406_))
                        _g94291_))
                ((##fx= _g94290_ 2)
                 (apply (lambda (_in92410_ _ctx92411_)
                          (gx#core-bind-weak-import!__% _in92410_ _ctx92411_))
                        _g94291_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g94291_))))))
    (define gx#core-resolve-module-export
      (lambda (_out92291_)
        (letrec ((_subst92293_
                  (lambda (_key92339_)
                    (let* ((_key9234092348_ _key92339_)
                           (_else9234292356_ (lambda () _key92339_))
                           (_K9234492387_
                            (lambda (_mark92359_ _id92360_)
                              (let* ((_mark9236192367_ _mark92359_)
                                     (_E9236392371_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark9236192367_)))
                                     (_K9236492379_
                                      (lambda (_subst92374_)
                                        (let ((_$e92376_
                                               (if _subst92374_
                                                   (hash-get
                                                    _subst92374_
                                                    _id92360_)
                                                   '#f)))
                                          (if _$e92376_
                                              _$e92376_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _key92339_))))))
                                (if (##structure-instance-of?
                                     _mark9236192367_
                                     'gx#expander-mark::t)
                                    (let* ((_e9236592382_
                                            (##unchecked-structure-ref
                                             _mark9236192367_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst92385_ _e9236592382_))
                                      (_K9236492379_ _subst92385_))
                                    (_E9236392371_))))))
                      (if (##pair? _key9234092348_)
                          (let ((_hd9234592390_ (##car _key9234092348_))
                                (_tl9234692392_ (##cdr _key9234092348_)))
                            (let* ((_id92395_ _hd9234592390_)
                                   (_mark92397_ _tl9234692392_))
                              (_K9234492387_ _mark92397_ _id92395_)))
                          (_else9234292356_))))))
          (let* ((_out9229492304_ _out92291_)
                 (_E9229692308_
                  (lambda () (error '"No clause matching" _out9229492304_)))
                 (_K9229792315_
                  (lambda (_phi92311_ _key92312_ _ctx92313_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _ctx92313_ _phi92311_)
                     (_subst92293_ _key92312_)))))
            (if (##structure-direct-instance-of?
                 _out9229492304_
                 'gx#module-export::t)
                (let* ((_e9229892318_
                        (##unchecked-structure-ref
                         _out9229492304_
                         '1
                         gx#module-export::t
                         '#f))
                       (_ctx92321_ _e9229892318_)
                       (_e9229992323_
                        (##unchecked-structure-ref
                         _out9229492304_
                         '2
                         gx#module-export::t
                         '#f))
                       (_key92326_ _e9229992323_)
                       (_e9230092328_
                        (##unchecked-structure-ref
                         _out9229492304_
                         '3
                         gx#module-export::t
                         '#f))
                       (_phi92331_ _e9230092328_)
                       (_e9230192333_
                        (##unchecked-structure-ref
                         _out9229492304_
                         '4
                         gx#module-export::t
                         '#f))
                       (_e9230292336_
                        (##unchecked-structure-ref
                         _out9229492304_
                         '5
                         gx#module-export::t
                         '#f)))
                  (_K9229792315_ _phi92331_ _key92326_ _ctx92321_))
                (_E9229692308_))))))
    (define gx#core-module-export->import__%
      (lambda (_out92216_ _rename92217_ _dphi92218_)
        (let* ((_out9221992229_ _out92216_)
               (_E9222192233_
                (lambda () (error '"No clause matching" _out9221992229_)))
               (_K9222292245_
                (lambda (_weak?92236_
                         _name92237_
                         _phi92238_
                         _key92239_
                         _ctx92240_)
                  (##structure
                   gx#module-import::t
                   _out92216_
                   (let ((_$e92242_ _rename92217_))
                     (if _$e92242_ _$e92242_ _name92237_))
                   (fx+ _phi92238_ _dphi92218_)
                   _weak?92236_))))
          (if (##structure-direct-instance-of?
               _out9221992229_
               'gx#module-export::t)
              (let* ((_e9222392248_
                      (##unchecked-structure-ref
                       _out9221992229_
                       '1
                       gx#module-export::t
                       '#f))
                     (_ctx92251_ _e9222392248_)
                     (_e9222492253_
                      (##unchecked-structure-ref
                       _out9221992229_
                       '2
                       gx#module-export::t
                       '#f))
                     (_key92256_ _e9222492253_)
                     (_e9222592258_
                      (##unchecked-structure-ref
                       _out9221992229_
                       '3
                       gx#module-export::t
                       '#f))
                     (_phi92261_ _e9222592258_)
                     (_e9222692263_
                      (##unchecked-structure-ref
                       _out9221992229_
                       '4
                       gx#module-export::t
                       '#f))
                     (_name92266_ _e9222692263_)
                     (_e9222792268_
                      (##unchecked-structure-ref
                       _out9221992229_
                       '5
                       gx#module-export::t
                       '#f))
                     (_weak?92271_ _e9222792268_))
                (_K9222292245_
                 _weak?92271_
                 _name92266_
                 _phi92261_
                 _key92256_
                 _ctx92251_))
              (_E9222192233_)))))
    (define gx#core-module-export->import__0
      (lambda (_out92276_)
        (let* ((_rename92278_ '#f) (_dphi92280_ '0))
          (gx#core-module-export->import__%
           _out92276_
           _rename92278_
           _dphi92280_))))
    (define gx#core-module-export->import__1
      (lambda (_out92282_ _rename92283_)
        (let ((_dphi92285_ '0))
          (gx#core-module-export->import__%
           _out92282_
           _rename92283_
           _dphi92285_))))
    (define gx#core-module-export->import
      (lambda _g94293_
        (let ((_g94292_ (##length _g94293_)))
          (cond ((##fx= _g94292_ 1)
                 (apply (lambda (_out92276_)
                          (gx#core-module-export->import__0 _out92276_))
                        _g94293_))
                ((##fx= _g94292_ 2)
                 (apply (lambda (_out92282_ _rename92283_)
                          (gx#core-module-export->import__1
                           _out92282_
                           _rename92283_))
                        _g94293_))
                ((##fx= _g94292_ 3)
                 (apply (lambda (_out92287_ _rename92288_ _dphi92289_)
                          (gx#core-module-export->import__%
                           _out92287_
                           _rename92288_
                           _dphi92289_))
                        _g94293_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g94293_))))))
    (define gx#core-expand-module%
      (lambda (_stx92144_)
        (letrec ((_make-context92146_
                  (lambda (_id92197_)
                    (let* ((_super92199_ (gx#current-expander-context))
                           (_bind-id92201_ (gx#stx-e _id92197_))
                           (_mod-id92203_
                            (if (##structure-instance-of?
                                 _super92199_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##structure-ref
                                  _super92199_
                                  '1
                                  gx#expander-context::t
                                  '#f)
                                 '"$"
                                 _bind-id92201_)
                                _bind-id92201_))
                           (_ns92205_ (symbol->string _mod-id92203_))
                           (_path92212_
                            (if (##structure-instance-of?
                                 _super92199_
                                 'gx#module-context::t)
                                (let ((_path92207_
                                       (##unchecked-structure-ref
                                        _super92199_
                                        '7
                                        gx#module-context::t
                                        '#f)))
                                  (if (or (pair? _path92207_)
                                          (null? _path92207_))
                                      (cons _bind-id92201_ _path92207_)
                                      (if (not _path92207_)
                                          _bind-id92201_
                                          (cons _bind-id92201_
                                                (cons _path92207_ '())))))
                                _bind-id92201_)))
                      (let ((__obj94269
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
                         __obj94269
                         _mod-id92203_
                         _super92199_
                         _ns92205_
                         _path92212_)
                        __obj94269)))))
          (let* ((_e9214792157_ _stx92144_)
                 (_E9214992161_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e9214792157_)))
                 (_E9214892193_
                  (lambda ()
                    (if (gx#stx-pair? _e9214792157_)
                        (let ((_e9215092165_ (gx#syntax-e _e9214792157_)))
                          (let ((_hd9215192168_ (##car _e9215092165_))
                                (_tl9215292170_ (##cdr _e9215092165_)))
                            (if (gx#stx-pair? _tl9215292170_)
                                (let ((_e9215392173_
                                       (gx#syntax-e _tl9215292170_)))
                                  (let ((_hd9215492176_ (##car _e9215392173_))
                                        (_tl9215592178_ (##cdr _e9215392173_)))
                                    (let* ((_id92181_ _hd9215492176_)
                                           (_body92183_ _tl9215592178_))
                                      (if (and (gx#identifier? _id92181_)
                                               (gx#stx-list? _body92183_))
                                          (let* ((_ctx92185_
                                                  (_make-context92146_
                                                   _id92181_))
                                                 (_body92187_
                                                  (gx#core-expand-module-begin
                                                   _body92183_
                                                   _ctx92185_))
                                                 (_body92189_
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body92187_)
                                                   (gx#stx-source
                                                    _stx92144_))))
                                            (##unchecked-structure-set!
                                             _ctx92185_
                                             (make-promise
                                              (lambda ()
                                                (gx#eval-syntax* _body92189_)))
                                             '10
                                             gx#module-context::t
                                             '#f)
                                            (##unchecked-structure-set!
                                             _ctx92185_
                                             _body92189_
                                             '11
                                             gx#module-context::t
                                             '#f)
                                            (gx#core-bind-syntax!__0
                                             _id92181_
                                             _ctx92185_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-list
                                              '%#module
                                              (gx#core-quote-syntax__0
                                               _id92181_)
                                              _body92189_)
                                             (gx#stx-source _stx92144_)))
                                          (_E9214992161_)))))
                                (_E9214992161_))))
                        (_E9214992161_)))))
            (_E9214892193_)))))
    (define gx#core-expand-module-begin
      (lambda (_body92110_ _ctx92111_)
        (call-with-parameters
         (lambda ()
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_stx92114_
                   (gx#core-expand-head (cons '%%begin-module _body92110_)))
                  (_e9211592122_ _stx92114_)
                  (_E9211792126_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _stx92114_)))
                  (_E9211692140_
                   (lambda ()
                     (if (gx#stx-pair? _e9211592122_)
                         (let ((_e9211892130_ (gx#syntax-e _e9211592122_)))
                           (let ((_hd9211992133_ (##car _e9211892130_))
                                 (_tl9212092135_ (##cdr _e9211892130_)))
                             (if (and (gx#identifier? _hd9211992133_)
                                      (gx#core-identifier=?
                                       _hd9211992133_
                                       '%#begin-module))
                                 (let ((_body92138_ _tl9212092135_))
                                   (if '#t
                                       (if (gx#sealed-syntax? _stx92114_)
                                           _body92138_
                                           (gx#core-expand-module-body
                                            _body92138_))
                                       (_E9211792126_)))
                                 (_E9211792126_))))
                         (_E9211792126_)))))
             (_E9211692140_)))
         gx#current-expander-context
         _ctx92111_
         gx#current-expander-phi
         '0)))
    (define gx#core-expand-module-body
      (lambda (_body91906_)
        (letrec ((_expand-special91908_
                  (lambda (_hd92037_ _K92038_ _rest92039_ _r92040_)
                    (let* ((_e9204192058_ _hd92037_)
                           (_E9205392062_
                            (lambda ()
                              (_K92038_
                               _rest92039_
                               (cons (gx#core-expand-top _hd92037_)
                                     _r92040_))))
                           (_E9204392074_
                            (lambda ()
                              (if (gx#stx-pair? _e9204192058_)
                                  (let ((_e9205492066_
                                         (gx#syntax-e _e9204192058_)))
                                    (let ((_hd9205592069_
                                           (##car _e9205492066_))
                                          (_tl9205692071_
                                           (##cdr _e9205492066_)))
                                      (if (and (gx#identifier? _hd9205592069_)
                                               (gx#core-identifier=?
                                                _hd9205592069_
                                                '%#export))
                                          (if '#t
                                              (_K92038_
                                               _rest92039_
                                               (cons _hd92037_ _r92040_))
                                              (_E9205392062_))
                                          (_E9205392062_))))
                                  (_E9205392062_))))
                           (_E9204292106_
                            (lambda ()
                              (if (gx#stx-pair? _e9204192058_)
                                  (let ((_e9204492078_
                                         (gx#syntax-e _e9204192058_)))
                                    (let ((_hd9204592081_
                                           (##car _e9204492078_))
                                          (_tl9204692083_
                                           (##cdr _e9204492078_)))
                                      (if (and (gx#identifier? _hd9204592081_)
                                               (gx#core-identifier=?
                                                _hd9204592081_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl9204692083_)
                                              (let ((_e9204792086_
                                                     (gx#syntax-e
                                                      _tl9204692083_)))
                                                (let ((_hd9204892089_
                                                       (##car _e9204792086_))
                                                      (_tl9204992091_
                                                       (##cdr _e9204792086_)))
                                                  (let ((_hd-bind92094_
                                                         _hd9204892089_))
                                                    (if (gx#stx-pair?
                                                         _tl9204992091_)
                                                        (let ((_e9205092096_
                                                               (gx#syntax-e
                                                                _tl9204992091_)))
                                                          (let ((_hd9205192099_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e9205092096_))
                        (_tl9205292101_ (##cdr _e9205092096_)))
                    (let ((_expr92104_ _hd9205192099_))
                      (if (gx#stx-null? _tl9205292101_)
                          (if (gx#core-bind-values? _hd-bind92094_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind92094_)
                                (_K92038_
                                 _rest92039_
                                 (cons _hd92037_ _r92040_)))
                              (_E9204392074_))
                          (_E9204392074_)))))
                (_E9204392074_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E9204392074_))
                                          (_E9204392074_))))
                                  (_E9204392074_)))))
                      (_E9204292106_))))
                 (_expand-body91909_
                  (lambda (_rbody91911_)
                    (let _lp91913_ ((_rest91915_ _rbody91911_)
                                    (_body91916_ '()))
                      (let* ((_rest9191791925_ _rest91915_)
                             (_else9191991933_ (lambda () _body91916_))
                             (_K9192192025_
                              (lambda (_rest91936_ _hd91937_)
                                (let* ((_e9193891959_ _hd91937_)
                                       (_E9195491963_
                                        (lambda ()
                                          (_lp91913_
                                           _rest91936_
                                           (cons (gx#core-expand-expression
                                                  _hd91937_)
                                                 _body91916_))))
                                       (_E9195091977_
                                        (lambda ()
                                          (if (gx#stx-pair? _e9193891959_)
                                              (let ((_e9195591967_
                                                     (gx#syntax-e
                                                      _e9193891959_)))
                                                (let ((_hd9195691970_
                                                       (##car _e9195591967_))
                                                      (_tl9195791972_
                                                       (##cdr _e9195591967_)))
                                                  (let ((_form91975_
                                                         _hd9195691970_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _form91975_
                                                         gx#special-form-binding?)
                                                        (_lp91913_
                                                         _rest91936_
                                                         (cons _hd91937_
                                                               _body91916_))
                                                        (_E9195491963_)))))
                                              (_E9195491963_))))
                                       (_E9194091989_
                                        (lambda ()
                                          (if (gx#stx-pair? _e9193891959_)
                                              (let ((_e9195191981_
                                                     (gx#syntax-e
                                                      _e9193891959_)))
                                                (let ((_hd9195291984_
                                                       (##car _e9195191981_))
                                                      (_tl9195391986_
                                                       (##cdr _e9195191981_)))
                                                  (if (and (gx#identifier?
                                                            _hd9195291984_)
                                                           (gx#core-identifier=?
                                                            _hd9195291984_
                                                            '%#export))
                                                      (if '#t
                                                          (_lp91913_
                                                           _rest91936_
                                                           (cons (gx#core-expand-export%__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd91937_)
                         _body91916_))
                  (_E9195091977_))
              (_E9195091977_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E9195091977_))))
                                       (_E9193992021_
                                        (lambda ()
                                          (if (gx#stx-pair? _e9193891959_)
                                              (let ((_e9194191993_
                                                     (gx#syntax-e
                                                      _e9193891959_)))
                                                (let ((_hd9194291996_
                                                       (##car _e9194191993_))
                                                      (_tl9194391998_
                                                       (##cdr _e9194191993_)))
                                                  (if (and (gx#identifier?
                                                            _hd9194291996_)
                                                           (gx#core-identifier=?
                                                            _hd9194291996_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl9194391998_)
                                                          (let ((_e9194492001_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl9194391998_)))
                    (let ((_hd9194592004_ (##car _e9194492001_))
                          (_tl9194692006_ (##cdr _e9194492001_)))
                      (let ((_hd-bind92009_ _hd9194592004_))
                        (if (gx#stx-pair? _tl9194692006_)
                            (let ((_e9194792011_ (gx#syntax-e _tl9194692006_)))
                              (let ((_hd9194892014_ (##car _e9194792011_))
                                    (_tl9194992016_ (##cdr _e9194792011_)))
                                (let ((_expr92019_ _hd9194892014_))
                                  (if (gx#stx-null? _tl9194992016_)
                                      (if '#t
                                          (_lp91913_
                                           _rest91936_
                                           (cons (gx#core-quote-syntax__1
                                                  (gx#core-list
                                                   '%#define-values
                                                   (gx#core-quote-bind-values
                                                    _hd-bind92009_)
                                                   (gx#core-expand-expression
                                                    _expr92019_))
                                                  (gx#stx-source _hd91937_))
                                                 _body91916_))
                                          (_E9194091989_))
                                      (_E9194091989_)))))
                            (_E9194091989_)))))
                  (_E9194091989_))
              (_E9194091989_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E9194091989_)))))
                                  (_E9193992021_)))))
                        (if (##pair? _rest9191791925_)
                            (let ((_hd9192292028_ (##car _rest9191791925_))
                                  (_tl9192392030_ (##cdr _rest9191791925_)))
                              (let* ((_hd92033_ _hd9192292028_)
                                     (_rest92035_ _tl9192392030_))
                                (_K9192192025_ _rest92035_ _hd92033_)))
                            (_else9191991933_)))))))
          (_expand-body91909_
           (gx#core-expand-block__%
            (cons '%#begin-module _body91906_)
            _expand-special91908_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_stx91749_
               _expanded?91750_
               _method91751_
               _current-phi91752_
               _expand191753_)
        (letrec ((_K91755_
                  (lambda (_rest91873_ _r91874_)
                    (let* ((_e9187591882_ _rest91873_)
                           (_E9187791886_ (lambda () _r91874_))
                           (_E9187691902_
                            (lambda ()
                              (if (gx#stx-pair? _e9187591882_)
                                  (let ((_e9187891890_
                                         (gx#syntax-e _e9187591882_)))
                                    (let ((_hd9187991893_
                                           (##car _e9187891890_))
                                          (_tl9188091895_
                                           (##cdr _e9187891890_)))
                                      (let* ((_hd91898_ _hd9187991893_)
                                             (_rest91900_ _tl9188091895_))
                                        (if '#t
                                            (_step91756_
                                             _hd91898_
                                             _rest91900_
                                             _r91874_)
                                            (_E9187791886_)))))
                                  (_E9187791886_)))))
                      (_E9187691902_))))
                 (_step91756_
                  (lambda (_hd91787_ _rest91788_ _r91789_)
                    (let* ((_e9179091808_ _hd91787_)
                           (_E9180391812_
                            (lambda ()
                              (if (_expanded?91750_ (gx#stx-e _hd91787_))
                                  (_K91755_
                                   _rest91788_
                                   (cons (gx#stx-e _hd91787_) _r91789_))
                                  (_expand191753_
                                   _hd91787_
                                   _K91755_
                                   _rest91788_
                                   _r91789_))))
                           (_E9179991828_
                            (lambda ()
                              (if (gx#stx-pair? _e9179091808_)
                                  (let ((_e9180491816_
                                         (gx#syntax-e _e9179091808_)))
                                    (let ((_hd9180591819_
                                           (##car _e9180491816_))
                                          (_tl9180691821_
                                           (##cdr _e9180491816_)))
                                      (let* ((_macro91824_ _hd9180591819_)
                                             (_body91826_ _tl9180691821_))
                                        (if (gx#core-bound-identifier?__%
                                             _macro91824_
                                             gx#syntax-binding?)
                                            (_K91755_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _macro91824_)
                                                    _hd91787_
                                                    _method91751_)
                                                   _rest91788_)
                                             _r91789_)
                                            (_E9180391812_)))))
                                  (_E9180391812_))))
                           (_E9179291842_
                            (lambda ()
                              (if (gx#stx-pair? _e9179091808_)
                                  (let ((_e9180091832_
                                         (gx#syntax-e _e9179091808_)))
                                    (let ((_hd9180191835_
                                           (##car _e9180091832_))
                                          (_tl9180291837_
                                           (##cdr _e9180091832_)))
                                      (if (eq? (gx#stx-e _hd9180191835_)
                                               'begin:)
                                          (let ((_body91840_ _tl9180291837_))
                                            (if '#t
                                                (_K91755_
                                                 (gx#stx-foldr
                                                  cons
                                                  _rest91788_
                                                  _body91840_)
                                                 _r91789_)
                                                (_E9179991828_)))
                                          (_E9179991828_))))
                                  (_E9179991828_))))
                           (_E9179191869_
                            (lambda ()
                              (if (gx#stx-pair? _e9179091808_)
                                  (let ((_e9179391846_
                                         (gx#syntax-e _e9179091808_)))
                                    (let ((_hd9179491849_
                                           (##car _e9179391846_))
                                          (_tl9179591851_
                                           (##cdr _e9179391846_)))
                                      (if (eq? (gx#stx-e _hd9179491849_) 'phi:)
                                          (if (gx#stx-pair? _tl9179591851_)
                                              (let ((_e9179691854_
                                                     (gx#syntax-e
                                                      _tl9179591851_)))
                                                (let ((_hd9179791857_
                                                       (##car _e9179691854_))
                                                      (_tl9179891859_
                                                       (##cdr _e9179691854_)))
                                                  (let* ((_dphi91862_
                                                          _hd9179791857_)
                                                         (_body91864_
                                                          _tl9179891859_))
                                                    (if (gx#stx-fixnum?
                                                         _dphi91862_)
                                                        (let ((_rbody91867_
                                                               (call-with-parameters
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_K91755_ _body91864_ '()))
                        _current-phi91752_
                        (fx+ (gx#stx-e _dphi91862_) (_current-phi91752_)))))
                  (_K91755_ _rest91788_ (foldr1 cons _r91789_ _rbody91867_)))
                (_E9179291842_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E9179291842_))
                                          (_E9179291842_))))
                                  (_E9179291842_)))))
                      (_E9179191869_)))))
          (let* ((_e9175791764_ _stx91749_)
                 (_E9175991768_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e9175791764_)))
                 (_E9175891783_
                  (lambda ()
                    (if (gx#stx-pair? _e9175791764_)
                        (let ((_e9176091772_ (gx#syntax-e _e9175791764_)))
                          (let ((_hd9176191775_ (##car _e9176091772_))
                                (_tl9176291777_ (##cdr _e9176091772_)))
                            (let ((_body91780_ _tl9176291777_))
                              (if '#t
                                  (if (_current-phi91752_)
                                      (_K91755_ _body91780_ '())
                                      (call-with-parameters
                                       (lambda () (_K91755_ _body91780_ '()))
                                       _current-phi91752_
                                       (gx#current-expander-phi)))
                                  (_E9175991768_)))))
                        (_E9175991768_)))))
            (_E9175891783_)))))
    (define gx#core-expand-import%__%
      (lambda (_stx91416_ _internal-expand?91417_)
        (letrec ((_expand191419_
                  (lambda (_hd91729_ _K91730_ _rest91731_ _r91732_)
                    (if (gx#core-bound-module? _hd91729_)
                        (_import191420_
                         (gx#syntax-local-e__0 _hd91729_)
                         _K91730_
                         _rest91731_
                         _r91732_)
                        (if (gx#core-library-module-path? _hd91729_)
                            (_import191420_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _hd91729_))
                             _K91730_
                             _rest91731_
                             _r91732_)
                            (if (gx#core-library-relative-module-path?
                                 _hd91729_)
                                (_import191420_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _hd91729_))
                                 _K91730_
                                 _rest91731_
                                 _r91732_)
                                (let ((_e91734_ (gx#stx-e _hd91729_)))
                                  (if (pair? _e91734_)
                                      (let ((_$e91736_
                                             (gx#stx-e (car _e91734_))))
                                        (if (eq? 'spec: _$e91736_)
                                            (_import-spec91423_
                                             _hd91729_
                                             _K91730_
                                             _rest91731_
                                             _r91732_)
                                            (if (eq? 'in: _$e91736_)
                                                (_import-submodule91421_
                                                 _hd91729_
                                                 _K91730_
                                                 _rest91731_
                                                 _r91732_)
                                                (if (eq? 'runtime: _$e91736_)
                                                    (_import-runtime91422_
                                                     _hd91729_
                                                     _K91730_
                                                     _rest91731_
                                                     _r91732_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _stx91416_
                                                     _hd91729_)))))
                                      (if (string? _e91734_)
                                          (_import191420_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _hd91729_
                                             (gx#stx-source _stx91416_)))
                                           _K91730_
                                           _rest91731_
                                           _r91732_)
                                          (if (##structure-instance-of?
                                               _e91734_
                                               'gx#module-context::t)
                                              (_K91730_
                                               _rest91731_
                                               (cons _e91734_ _r91732_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _stx91416_
                                               _hd91729_))))))))))
                 (_import191420_
                  (lambda (_ctx91718_ _K91719_ _rest91720_ _r91721_)
                    (let ((_dphi91723_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_K91719_
                       _rest91720_
                       (cons (##structure
                              gx#import-set::t
                              _ctx91718_
                              _dphi91723_
                              (map (lambda (_g9172491726_)
                                     (gx#core-module-export->import__%
                                      _g9172491726_
                                      '#f
                                      _dphi91723_))
                                   (##unchecked-structure-ref
                                    _ctx91718_
                                    '9
                                    gx#module-context::t
                                    '#f)))
                             _r91721_)))))
                 (_import-submodule91421_
                  (lambda (_hd91685_ _K91686_ _rest91687_ _r91688_)
                    (let* ((_e9168991696_ _hd91685_)
                           (_E9169191700_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e9168991696_)))
                           (_E9169091714_
                            (lambda ()
                              (if (gx#stx-pair? _e9168991696_)
                                  (let ((_e9169291704_
                                         (gx#syntax-e _e9168991696_)))
                                    (let ((_hd9169391707_
                                           (##car _e9169291704_))
                                          (_tl9169491709_
                                           (##cdr _e9169291704_)))
                                      (let ((_spath91712_ _tl9169491709_))
                                        (if '#t
                                            (_import191420_
                                             (_import-spec-source91424_
                                              _spath91712_)
                                             _K91686_
                                             _rest91687_
                                             _r91688_)
                                            (_E9169191700_)))))
                                  (_E9169191700_)))))
                      (_E9169091714_))))
                 (_import-runtime91422_
                  (lambda (_hd91652_ _K91653_ _rest91654_ _r91655_)
                    (let* ((_e9165691663_ _hd91652_)
                           (_E9165891667_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e9165691663_)))
                           (_E9165791681_
                            (lambda ()
                              (if (gx#stx-pair? _e9165691663_)
                                  (let ((_e9165991671_
                                         (gx#syntax-e _e9165691663_)))
                                    (let ((_hd9166091674_
                                           (##car _e9165991671_))
                                          (_tl9166191676_
                                           (##cdr _e9165991671_)))
                                      (let ((_spath91679_ _tl9166191676_))
                                        (if '#t
                                            (_K91653_
                                             _rest91654_
                                             (cons (_import-spec-source91424_
                                                    _spath91679_)
                                                   _r91655_))
                                            (_E9165891667_)))))
                                  (_E9165891667_)))))
                      (_E9165791681_))))
                 (_import-spec91423_
                  (lambda (_hd91491_ _K91492_ _rest91493_ _r91494_)
                    (let* ((_e9149591512_ _hd91491_)
                           (_E9150491516_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e9149591512_)))
                           (_E9149791626_
                            (lambda ()
                              (if (gx#stx-pair? _e9149591512_)
                                  (let ((_e9150591520_
                                         (gx#syntax-e _e9149591512_)))
                                    (let ((_hd9150691523_
                                           (##car _e9150591520_))
                                          (_tl9150791525_
                                           (##cdr _e9150591520_)))
                                      (if (gx#stx-pair? _tl9150791525_)
                                          (let ((_e9150891528_
                                                 (gx#syntax-e _tl9150791525_)))
                                            (let ((_hd9150991531_
                                                   (##car _e9150891528_))
                                                  (_tl9151091533_
                                                   (##cdr _e9150891528_)))
                                              (let* ((_path91536_
                                                      _hd9150991531_)
                                                     (_specs91538_
                                                      _tl9151091533_))
                                                (if '#t
                                                    (let ((_src-ctx91540_
                                                           (_import-spec-source91424_
                                                            _path91536_))
                                                          (_exports91541_
                                                           (make-hash-table))
                                                          (_specs91542_
                                                           (gx#syntax->list
                                                            _specs91538_)))
                                                      (for-each
                                                       (lambda (_out91544_)
                                                         (hash-put!
                                                          _exports91541_
                                                          (cons (##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _out91544_
                         '3
                         gx#module-export::t
                         '#f)
                        (##unchecked-structure-ref
                         _out91544_
                         '4
                         gx#module-export::t
                         '#f))
                  _out91544_))
               (##unchecked-structure-ref
                _src-ctx91540_
                '9
                gx#module-context::t
                '#f))
              (_K91492_
               _rest91493_
               (foldl1 (lambda (_spec91546_ _r91547_)
                         (let* ((_e9154891564_ _spec91546_)
                                (_E9155091568_
                                 (lambda ()
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid syntax-case clause"
                                    _e9154891564_)))
                                (_E9154991622_
                                 (lambda ()
                                   (if (gx#stx-pair? _e9154891564_)
                                       (let ((_e9155191572_
                                              (gx#syntax-e _e9154891564_)))
                                         (let ((_hd9155291575_
                                                (##car _e9155191572_))
                                               (_tl9155391577_
                                                (##cdr _e9155191572_)))
                                           (let ((_phi91580_ _hd9155291575_))
                                             (if (gx#stx-pair? _tl9155391577_)
                                                 (let ((_e9155491582_
                                                        (gx#syntax-e
                                                         _tl9155391577_)))
                                                   (let ((_hd9155591585_
                                                          (##car _e9155491582_))
                                                         (_tl9155691587_
                                                          (##cdr _e9155491582_)))
                                                     (let ((_name91590_
                                                            _hd9155591585_))
                                                       (if (gx#stx-pair?
                                                            _tl9155691587_)
                                                           (let ((_e9155791592_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl9155691587_)))
                     (let ((_hd9155891595_ (##car _e9155791592_))
                           (_tl9155991597_ (##cdr _e9155791592_)))
                       (let ((_src-phi91600_ _hd9155891595_))
                         (if (gx#stx-pair? _tl9155991597_)
                             (let ((_e9156091602_
                                    (gx#syntax-e _tl9155991597_)))
                               (let ((_hd9156191605_ (##car _e9156091602_))
                                     (_tl9156291607_ (##cdr _e9156091602_)))
                                 (let ((_src-name91610_ _hd9156191605_))
                                   (if (gx#stx-null? _tl9156291607_)
                                       (if (and (gx#stx-fixnum? _src-phi91600_)
                                                (gx#identifier?
                                                 _src-name91610_)
                                                (gx#stx-fixnum? _phi91580_)
                                                (gx#identifier? _name91590_))
                                           (let ((_src-phi91612_
                                                  (gx#stx-e _src-phi91600_))
                                                 (_src-name91613_
                                                  (gx#core-identifier-key
                                                   _src-name91610_))
                                                 (_phi91614_
                                                  (gx#stx-e _phi91580_))
                                                 (_name91615_
                                                  (gx#core-identifier-key
                                                   _name91590_)))
                                             (let ((_$e91617_
                                                    (hash-get
                                                     _exports91541_
                                                     (cons _src-phi91612_
                                                           _src-name91613_))))
                                               (if _$e91617_
                                                   ((lambda (_out91620_)
                                                      (cons (gx#core-module-export->import__%
                                                             _out91620_
                                                             _name91615_
                                                             (fx- _phi91614_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _src-phi91612_))
                    _r91547_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _$e91617_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; no matching export"
                                                    _stx91416_
                                                    _hd91491_))))
                                           (_E9155091568_))
                                       (_E9155091568_)))))
                             (_E9155091568_)))))
                   (_E9155091568_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E9155091568_)))))
                                       (_E9155091568_)))))
                           (_E9154991622_)))
                       _r91494_
                       _specs91542_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E9150491516_)))))
                                          (_E9150491516_))))
                                  (_E9150491516_))))
                           (_E9149691648_
                            (lambda ()
                              (if (gx#stx-pair? _e9149591512_)
                                  (let ((_e9149891630_
                                         (gx#syntax-e _e9149591512_)))
                                    (let ((_hd9149991633_
                                           (##car _e9149891630_))
                                          (_tl9150091635_
                                           (##cdr _e9149891630_)))
                                      (if (gx#stx-pair? _tl9150091635_)
                                          (let ((_e9150191638_
                                                 (gx#syntax-e _tl9150091635_)))
                                            (let ((_hd9150291641_
                                                   (##car _e9150191638_))
                                                  (_tl9150391643_
                                                   (##cdr _e9150191638_)))
                                              (let ((_path91646_
                                                     _hd9150291641_))
                                                (if (gx#stx-null?
                                                     _tl9150391643_)
                                                    (if '#t
                                                        (_K91492_
                                                         _rest91493_
                                                         (cons (_import-spec-source91424_
                                                                _path91646_)
                                                               _r91494_))
                                                        (_E9149791626_))
                                                    (_E9149791626_)))))
                                          (_E9149791626_))))
                                  (_E9149791626_)))))
                      (_E9149691648_))))
                 (_import-spec-source91424_
                  (lambda (_spath91489_)
                    (gx#core-import-nested-module _spath91489_ _stx91416_)))
                 (_import!91425_
                  (lambda (_rbody91438_)
                    (letrec* ((_current-ctx91440_
                               (gx#current-expander-context))
                              (_deps91441_ (make-hash-table-eq))
                              (_bind!91442_
                               (lambda (_hd91487_)
                                 (gx#core-bind-import!__1
                                  _hd91487_
                                  _current-ctx91440_))))
                      (let _lp91444_ ((_rest91446_ _rbody91438_)
                                      (_body91447_ '()))
                        (let* ((_rest9144891456_ _rest91446_)
                               (_else9145091466_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _current-ctx91440_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _current-ctx91440_
                                       (foldl1 cons
                                               (##unchecked-structure-ref
                                                _current-ctx91440_
                                                '8
                                                gx#module-context::t
                                                '#f)
                                               _body91447_)
                                       '8
                                       gx#module-context::t
                                       '#f)
                                      '#!void)
                                  (hash-for-each
                                   (lambda (_ctx91464_ _g94294_)
                                     (gx#eval-module _ctx91464_))
                                   _deps91441_)
                                  _body91447_))
                               (_K9145291475_
                                (lambda (_rest91469_ _hd91470_)
                                  (if (##structure-direct-instance-of?
                                       _hd91470_
                                       'gx#module-import::t)
                                      (begin
                                        (_bind!91442_ _hd91470_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _hd91470_
                                                   '3
                                                   gx#module-import::t
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _hd91470_
                                                            '1
                                                            gx#module-import::t
                                                            '#f)
                                                           '3
                                                           gx#module-export::t
                                                           '#f)))
                                            (hash-put!
                                             _deps91441_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _hd91470_
                                               '1
                                               gx#module-import::t
                                               '#f)
                                              '1
                                              gx#module-export::t
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _hd91470_
                                           'gx#import-set::t)
                                          (begin
                                            (for-each
                                             _bind!91442_
                                             (##unchecked-structure-ref
                                              _hd91470_
                                              '3
                                              gx#import-set::t
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _hd91470_
                                                  '2
                                                  gx#import-set::t
                                                  '#f))
                                                (hash-put!
                                                 _deps91441_
                                                 (##unchecked-structure-ref
                                                  _hd91470_
                                                  '1
                                                  gx#import-set::t
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_$e91472_
                                                 (##structure-instance-of?
                                                  _hd91470_
                                                  'gx#module-context::t)))
                                            (if _$e91472_
                                                _$e91472_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _stx91416_
                                                 _hd91470_)))))
                                  (_lp91444_
                                   _rest91469_
                                   (cons _hd91470_ _body91447_)))))
                          (if (##pair? _rest9144891456_)
                              (let ((_hd9145391478_ (##car _rest9144891456_))
                                    (_tl9145491480_ (##cdr _rest9144891456_)))
                                (let* ((_hd91483_ _hd9145391478_)
                                       (_rest91485_ _tl9145491480_))
                                  (_K9145291475_ _rest91485_ _hd91483_)))
                              (_else9145091466_)))))))
                 (_expanded-import?91426_
                  (lambda (_e91430_)
                    (let ((_$e91432_
                           (##structure-direct-instance-of?
                            _e91430_
                            'gx#import-set::t)))
                      (if _$e91432_
                          _$e91432_
                          (let ((_$e91435_
                                 (##structure-direct-instance-of?
                                  _e91430_
                                  'gx#module-import::t)))
                            (if _$e91435_
                                _$e91435_
                                (##structure-instance-of?
                                 _e91430_
                                 'gx#module-context::t))))))))
          (let ((_rbody91428_
                 (gx#core-expand-import/export
                  _stx91416_
                  _expanded-import?91426_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _expand191419_)))
            (if _internal-expand?91417_
                (reverse _rbody91428_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_import!91425_ _rbody91428_))
                 (gx#stx-source _stx91416_)))))))
    (define gx#core-expand-import%__0
      (lambda (_stx91742_)
        (let ((_internal-expand?91744_ '#f))
          (gx#core-expand-import%__% _stx91742_ _internal-expand?91744_))))
    (define gx#core-expand-import%
      (lambda _g94296_
        (let ((_g94295_ (##length _g94296_)))
          (cond ((##fx= _g94295_ 1)
                 (apply (lambda (_stx91742_)
                          (gx#core-expand-import%__0 _stx91742_))
                        _g94296_))
                ((##fx= _g94295_ 2)
                 (apply (lambda (_stx91746_ _internal-expand?91747_)
                          (gx#core-expand-import%__%
                           _stx91746_
                           _internal-expand?91747_))
                        _g94296_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g94296_))))))
    (define gx#core-import-nested-module
      (lambda (_spath91343_ _where91344_)
        (let* ((_e9134591352_ _spath91343_)
               (_E9134791356_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9134591352_)))
               (_E9134691411_
                (lambda ()
                  (if (gx#stx-pair? _e9134591352_)
                      (let ((_e9134891360_ (gx#syntax-e _e9134591352_)))
                        (let ((_hd9134991363_ (##car _e9134891360_))
                              (_tl9135091365_ (##cdr _e9134891360_)))
                          (let* ((_origin91368_ _hd9134991363_)
                                 (_sub91370_ _tl9135091365_))
                            (if '#t
                                (let ((_origin-ctx91372_
                                       (if (gx#stx-false? _origin91368_)
                                           (gx#current-expander-context)
                                           (gx#import-module__0
                                            _origin91368_))))
                                  (let _lp91374_ ((_rest91376_ _sub91370_)
                                                  (_ctx91377_
                                                   _origin-ctx91372_))
                                    (let* ((_e9137891385_ _rest91376_)
                                           (_E9138091389_
                                            (lambda () _ctx91377_))
                                           (_E9137991407_
                                            (lambda ()
                                              (if (gx#stx-pair? _e9137891385_)
                                                  (let ((_e9138191393_
                                                         (gx#syntax-e
                                                          _e9137891385_)))
                                                    (let ((_hd9138291396_
                                                           (##car _e9138191393_))
                                                          (_tl9138391398_
                                                           (##cdr _e9138191393_)))
                                                      (let* ((_id91401_
                                                              _hd9138291396_)
                                                             (_rest91403_
                                                              _tl9138391398_))
                                                        (if '#t
                                                            (let ((_bind91405_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#resolve-identifier__% _id91401_ '0 _ctx91377_)))
                      (if (and (##structure-direct-instance-of?
                                _bind91405_
                                'gx#syntax-binding::t)
                               (##structure-instance-of?
                                (##unchecked-structure-ref
                                 _bind91405_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                'gx#module-context::t))
                          '#!void
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; not bound as module"
                           _where91344_
                           _spath91343_
                           _id91401_))
                      (_lp91374_
                       _rest91403_
                       (##unchecked-structure-ref
                        _bind91405_
                        '4
                        gx#syntax-binding::t
                        '#f)))
                    (_E9138091389_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9138091389_)))))
                                      (_E9137991407_))))
                                (_E9134791356_)))))
                      (_E9134791356_)))))
          (_E9134691411_))))
    (define gx#core-expand-import-source
      (lambda (_hd91341_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _hd91341_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_stx90849_ _internal-expand?90850_)
        (letrec* ((_make-export__9422594226_
                   (lambda (_bind91289_ _phi91290_ _ctx91291_ _name91292_)
                     (let* ((_key91294_
                             (##unchecked-structure-ref
                              _bind91289_
                              '2
                              gx#binding::t
                              '#f))
                            (_export-key91296_
                             (if _name91292_
                                 (gx#core-identifier-key _name91292_)
                                 _key91294_)))
                       (##structure
                        gx#module-export::t
                        _ctx91291_
                        _key91294_
                        _phi91290_
                        _export-key91296_
                        (let ((_$e91299_
                               (##structure-instance-of?
                                _bind91289_
                                'gx#extern-binding::t)))
                          (if _$e91299_
                              _$e91299_
                              (##structure-direct-instance-of?
                               _bind91289_
                               'gx#import-binding::t)))))))
                  (_make-export__0__9422794230_
                   (lambda (_bind91305_)
                     (let* ((_phi91307_ (gx#current-export-expander-phi))
                            (_ctx91309_ (gx#current-expander-context))
                            (_name91311_ '#f))
                       (_make-export__9422594226_
                        _bind91305_
                        _phi91307_
                        _ctx91309_
                        _name91311_))))
                  (_make-export__1__9422894231_
                   (lambda (_bind91313_ _phi91314_)
                     (let* ((_ctx91316_ (gx#current-expander-context))
                            (_name91318_ '#f))
                       (_make-export__9422594226_
                        _bind91313_
                        _phi91314_
                        _ctx91316_
                        _name91318_))))
                  (_make-export__2__9422994232_
                   (lambda (_bind91320_ _phi91321_ _ctx91322_)
                     (let ((_name91324_ '#f))
                       (_make-export__9422594226_
                        _bind91320_
                        _phi91321_
                        _ctx91322_
                        _name91324_))))
                  (_make-export90852_
                   (lambda _g94298_
                     (let ((_g94297_ (##length _g94298_)))
                       (cond ((##fx= _g94297_ 1)
                              (apply (lambda (_bind91305_)
                                       (_make-export__0__9422794230_
                                        _bind91305_))
                                     _g94298_))
                             ((##fx= _g94297_ 2)
                              (apply (lambda (_bind91313_ _phi91314_)
                                       (_make-export__1__9422894231_
                                        _bind91313_
                                        _phi91314_))
                                     _g94298_))
                             ((##fx= _g94297_ 3)
                              (apply (lambda (_bind91320_
                                              _phi91321_
                                              _ctx91322_)
                                       (_make-export__2__9422994232_
                                        _bind91320_
                                        _phi91321_
                                        _ctx91322_))
                                     _g94298_))
                             ((##fx= _g94297_ 4)
                              (apply (lambda (_bind91326_
                                              _phi91327_
                                              _ctx91328_
                                              _name91329_)
                                       (_make-export__9422594226_
                                        _bind91326_
                                        _phi91327_
                                        _ctx91328_
                                        _name91329_))
                                     _g94298_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g94298_))))))
                  (_expand190853_
                   (lambda (_hd91002_ _K91003_ _rest91004_ _r91005_)
                     (let* ((_e9100691038_ _hd91002_)
                            (_E9103391042_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _stx90849_
                                _hd91002_)))
                            (_E9102391121_
                             (lambda ()
                               (if (gx#stx-pair? _e9100691038_)
                                   (let ((_e9103491046_
                                          (gx#syntax-e _e9100691038_)))
                                     (let ((_hd9103591049_
                                            (##car _e9103491046_))
                                           (_tl9103691051_
                                            (##cdr _e9103491046_)))
                                       (if (eq? (gx#stx-e _hd9103591049_)
                                                'import:)
                                           (let ((_in91054_ _tl9103691051_))
                                             (if (gx#stx-list? _in91054_)
                                                 (let _lp91056_ ((_in-rest91058_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _in91054_)
                         (_r91059_ _r91005_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_e9106091067_
                                                           _in-rest91058_)
                                                          (_E9106291071_
                                                           (lambda ()
                                                             (_K91003_
                                                              _rest91004_
                                                              _r91059_)))
                                                          (_E9106191117_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _e9106091067_)
                         (let ((_e9106391075_ (gx#syntax-e _e9106091067_)))
                           (let ((_hd9106491078_ (##car _e9106391075_))
                                 (_tl9106591080_ (##cdr _e9106391075_)))
                             (let* ((_hd91083_ _hd9106491078_)
                                    (_in-rest91085_ _tl9106591080_))
                               (if '#t
                                   (let ((_src91115_
                                          (if (gx#core-bound-module? _hd91083_)
                                              (gx#syntax-local-e__0 _hd91083_)
                                              (if (gx#core-library-module-path?
                                                   _hd91083_)
                                                  (gx#import-module__0
                                                   (gx#core-resolve-library-module-path
                                                    _hd91083_))
                                                  (if (gx#core-library-relative-module-path?
                                                       _hd91083_)
                                                      (gx#import-module__0
                                                       (gx#core-resolve-library-relative-module-path
                                                        _hd91083_))
                                                      (if (gx#stx-string?
                                                           _hd91083_)
                                                          (gx#import-module__0
                                                           (gx#core-resolve-module-path__%
                                                            _hd91083_
                                                            (gx#stx-source
                                                             _stx90849_)))
                                                          (let* ((_e9108691093_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd91083_)
                         (_E9108891097_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; illegal re-export"
                             _stx90849_
                             _hd91083_)))
                         (_E9108791111_
                          (lambda ()
                            (if (gx#stx-pair? _e9108691093_)
                                (let ((_e9108991101_
                                       (gx#syntax-e _e9108691093_)))
                                  (let ((_hd9109091104_ (##car _e9108991101_))
                                        (_tl9109191106_ (##cdr _e9108991101_)))
                                    (if (eq? (gx#stx-e _hd9109091104_) 'in:)
                                        (let ((_spath91109_ _tl9109191106_))
                                          (if '#t
                                              (gx#core-import-nested-module
                                               _spath91109_
                                               _stx90849_)
                                              (_E9108891097_)))
                                        (_E9108891097_))))
                                (_E9108891097_)))))
                    (_E9108791111_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_lp91056_
                                      _in-rest91085_
                                      (_export-imports90854_
                                       _src91115_
                                       _r91059_)))
                                   (_E9106291071_)))))
                         (_E9106291071_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E9106191117_)))
                                                 (_E9103391042_)))
                                           (_E9103391042_))))
                                   (_E9103391042_))))
                            (_E9101091160_
                             (lambda ()
                               (if (gx#stx-pair? _e9100691038_)
                                   (let ((_e9102491125_
                                          (gx#syntax-e _e9100691038_)))
                                     (let ((_hd9102591128_
                                            (##car _e9102491125_))
                                           (_tl9102691130_
                                            (##cdr _e9102491125_)))
                                       (if (eq? (gx#stx-e _hd9102591128_)
                                                'rename:)
                                           (if (gx#stx-pair? _tl9102691130_)
                                               (let ((_e9102791133_
                                                      (gx#syntax-e
                                                       _tl9102691130_)))
                                                 (let ((_hd9102891136_
                                                        (##car _e9102791133_))
                                                       (_tl9102991138_
                                                        (##cdr _e9102791133_)))
                                                   (let ((_id91141_
                                                          _hd9102891136_))
                                                     (if (gx#stx-pair?
                                                          _tl9102991138_)
                                                         (let ((_e9103091143_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl9102991138_)))
                   (let ((_hd9103191146_ (##car _e9103091143_))
                         (_tl9103291148_ (##cdr _e9103091143_)))
                     (let ((_name91151_ _hd9103191146_))
                       (if (gx#stx-null? _tl9103291148_)
                           (if '#t
                               (let* ((_phi91153_
                                       (gx#current-export-expander-phi))
                                      (_$e91155_
                                       (gx#core-resolve-identifier__1
                                        _id91141_
                                        _phi91153_)))
                                 (if _$e91155_
                                     ((lambda (_bind91158_)
                                        (_K91003_
                                         _rest91004_
                                         (cons (_make-export__9422594226_
                                                _bind91158_
                                                _phi91153_
                                                (gx#current-expander-context)
                                                _name91151_)
                                               _r91005_)))
                                      _$e91155_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Reference to unbound identifier"
                                      _stx90849_
                                      _hd91002_
                                      _id91141_)))
                               (_E9102391121_))
                           (_E9102391121_)))))
                 (_E9102391121_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E9102391121_))
                                           (_E9102391121_))))
                                   (_E9102391121_))))
                            (_E9100991209_
                             (lambda ()
                               (if (gx#stx-pair? _e9100691038_)
                                   (let ((_e9101191164_
                                          (gx#syntax-e _e9100691038_)))
                                     (let ((_hd9101291167_
                                            (##car _e9101191164_))
                                           (_tl9101391169_
                                            (##cdr _e9101191164_)))
                                       (if (eq? (gx#stx-e _hd9101291167_)
                                                'spec:)
                                           (if (gx#stx-pair? _tl9101391169_)
                                               (let ((_e9101491172_
                                                      (gx#syntax-e
                                                       _tl9101391169_)))
                                                 (let ((_hd9101591175_
                                                        (##car _e9101491172_))
                                                       (_tl9101691177_
                                                        (##cdr _e9101491172_)))
                                                   (let ((_phi91180_
                                                          _hd9101591175_))
                                                     (if (gx#stx-pair?
                                                          _tl9101691177_)
                                                         (let ((_e9101791182_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl9101691177_)))
                   (let ((_hd9101891185_ (##car _e9101791182_))
                         (_tl9101991187_ (##cdr _e9101791182_)))
                     (let ((_id91190_ _hd9101891185_))
                       (if (gx#stx-pair? _tl9101991187_)
                           (let ((_e9102091192_ (gx#syntax-e _tl9101991187_)))
                             (let ((_hd9102191195_ (##car _e9102091192_))
                                   (_tl9102291197_ (##cdr _e9102091192_)))
                               (let ((_name91200_ _hd9102191195_))
                                 (if (gx#stx-null? _tl9102291197_)
                                     (if (and (gx#stx-fixnum? _phi91180_)
                                              (gx#identifier? _id91190_)
                                              (gx#identifier? _name91200_))
                                         (let* ((_phi91202_
                                                 (gx#stx-e _phi91180_))
                                                (_$e91204_
                                                 (gx#core-resolve-identifier__1
                                                  _id91190_
                                                  _phi91202_)))
                                           (if _$e91204_
                                               ((lambda (_bind91207_)
                                                  (_K91003_
                                                   _rest91004_
                                                   (cons (_make-export__9422594226_
                                                          _bind91207_
                                                          _phi91202_
                                                          (gx#current-expander-context)
                                                          _name91200_)
                                                         _r91005_)))
                                                _$e91204_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _stx90849_
                                                _hd91002_
                                                _id91190_)))
                                         (_E9101091160_))
                                     (_E9101091160_)))))
                           (_E9101091160_)))))
                 (_E9101091160_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E9101091160_))
                                           (_E9101091160_))))
                                   (_E9101091160_))))
                            (_E9100891220_
                             (lambda ()
                               (let ((_id91213_ _e9100691038_))
                                 (if (gx#identifier? _id91213_)
                                     (let ((_$e91215_
                                            (gx#core-resolve-identifier__1
                                             _id91213_
                                             (gx#current-export-expander-phi))))
                                       (if _$e91215_
                                           ((lambda (_bind91218_)
                                              (_K91003_
                                               _rest91004_
                                               (cons (_make-export__0__9422794230_
                                                      _bind91218_)
                                                     _r91005_)))
                                            _$e91215_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _stx90849_
                                            _hd91002_)))
                                     (_E9100991209_)))))
                            (_E9100791284_
                             (lambda ()
                               (if (eq? (gx#stx-e _e9100691038_) '#t)
                                   (if '#t
                                       (let* ((_current-ctx91224_
                                               (gx#current-expander-context))
                                              (_current-phi91226_
                                               (gx#current-export-expander-phi))
                                              (_phi-ctx91228_
                                               (gx#core-context-shift
                                                _current-ctx91224_
                                                _current-phi91226_))
                                              (_phi-bind91230_
                                               (hash->list
                                                (##unchecked-structure-ref
                                                 _phi-ctx91228_
                                                 '2
                                                 gx#expander-context::t
                                                 '#f))))
                                         (let _lp91233_ ((_bind-rest91235_
                                                          _phi-bind91230_)
                                                         (_set91236_ '()))
                                           (let* ((_bind-rest9123791247_
                                                   _bind-rest91235_)
                                                  (_else9123991255_
                                                   (lambda ()
                                                     (_K91003_
                                                      _rest91004_
                                                      (cons (##structure
                                                             gx#export-set::t
                                                             '#f
                                                             _current-phi91226_
                                                             _set91236_)
                                                            _r91005_))))
                                                  (_K9124191265_
                                                   (lambda (_bind-rest91258_
                                                            _bind91259_
                                                            _key91260_)
                                                     (if (or (##structure-direct-instance-of?
                                                              _bind91259_
                                                              'gx#import-binding::t)
                                                             (gx#private-feature-binding?
                                                              _bind91259_))
                                                         (_lp91233_
                                                          _bind-rest91258_
                                                          _set91236_)
                                                         (_lp91233_
                                                          _bind-rest91258_
                                                          (cons (_make-export__2__9422994232_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind91259_
                         _current-phi91226_
                         _current-ctx91224_)
                        _set91236_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _bind-rest9123791247_)
                                                 (let ((_hd9124291268_
                                                        (##car _bind-rest9123791247_))
                                                       (_tl9124391270_
                                                        (##cdr _bind-rest9123791247_)))
                                                   (if (##pair? _hd9124291268_)
                                                       (let ((_hd9124491273_
                                                              (##car _hd9124291268_))
                                                             (_tl9124591275_
                                                              (##cdr _hd9124291268_)))
                                                         (let* ((_key91278_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd9124491273_)
                        (_bind91280_ _tl9124591275_)
                        (_bind-rest91282_ _tl9124391270_))
                   (_K9124191265_ _bind-rest91282_ _bind91280_ _key91278_)))
               (_else9123991255_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_else9123991255_)))))
                                       (_E9100891220_))
                                   (_E9100891220_)))))
                       (_E9100791284_))))
                  (_export-imports90854_
                   (lambda (_src90878_ _r90879_)
                     (letrec* ((_current-ctx90881_
                                (gx#current-expander-context))
                               (_current-phi90882_
                                (gx#current-export-expander-phi))
                               (_import->export90883_
                                (lambda (_in90964_)
                                  (let* ((_in9096590973_ _in90964_)
                                         (_E9096790977_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _in9096590973_)))
                                         (_K9096890984_
                                          (lambda (_phi90980_
                                                   _key90981_
                                                   _out90982_)
                                            (##structure
                                             gx#module-export::t
                                             _current-ctx90881_
                                             _key90981_
                                             _phi90980_
                                             _key90981_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _in9096590973_
                                         'gx#module-import::t)
                                        (let* ((_e9096990987_
                                                (##unchecked-structure-ref
                                                 _in9096590973_
                                                 '1
                                                 gx#module-import::t
                                                 '#f))
                                               (_out90990_ _e9096990987_)
                                               (_e9097090992_
                                                (##unchecked-structure-ref
                                                 _in9096590973_
                                                 '2
                                                 gx#module-import::t
                                                 '#f))
                                               (_key90995_ _e9097090992_)
                                               (_e9097190997_
                                                (##unchecked-structure-ref
                                                 _in9096590973_
                                                 '3
                                                 gx#module-import::t
                                                 '#f))
                                               (_phi91000_ _e9097190997_))
                                          (_K9096890984_
                                           _phi91000_
                                           _key90995_
                                           _out90990_))
                                        (_E9096790977_)))))
                               (_fold-e90884_
                                (lambda (_in90886_ _r90887_)
                                  (let* ((_in9088890902_ _in90886_)
                                         (_else9089190910_
                                          (lambda () _r90887_)))
                                    (let ((_K9089790946_
                                           (lambda (_phi90942_
                                                    _key90943_
                                                    _out90944_)
                                             (if (and (fx= _phi90942_
                                                           _current-phi90882_)
                                                      (eq? _src90878_
                                                           (##unchecked-structure-ref
                                                            _out90944_
                                                            '1
                                                            gx#module-export::t
                                                            '#f)))
                                                 (cons (_import->export90883_
                                                        _in90886_)
                                                       _r90887_)
                                                 _r90887_)))
                                          (_K9089390921_
                                           (lambda (_imports90914_
                                                    _phi90915_
                                                    _ctx90916_)
                                             (if (and (fx= _phi90915_
                                                           _current-phi90882_)
                                                      (eq? _src90878_
                                                           _ctx90916_))
                                                 (foldl1 (lambda (_in90918_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r90919_)
                   (cons (_import->export90883_ _in90918_) _r90919_))
                 _r90887_
                 _imports90914_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _r90887_))))
                                      (let ((_try-match9089090939_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _in9088890902_
                                                    'gx#import-set::t)
                                                   (let* ((_e9089490924_
                                                           (##unchecked-structure-ref
                                                            _in9088890902_
                                                            '1
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e9089590929_
                                                           (##unchecked-structure-ref
                                                            _in9088890902_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e9089690934_
                                                           (##unchecked-structure-ref
                                                            _in9088890902_
                                                            '3
                                                            gx#import-set::t
                                                            '#f)))
                                                     (let ((_ctx90927_
                                                            _e9089490924_)
                                                           (_phi90932_
                                                            _e9089590929_)
                                                           (_imports90937_
                                                            _e9089690934_))
                                                       (_K9089390921_
                                                        _imports90937_
                                                        _phi90932_
                                                        _ctx90927_)))
                                                   (_else9089190910_)))))
                                        (if (##structure-direct-instance-of?
                                             _in9088890902_
                                             'gx#module-import::t)
                                            (let* ((_e9089890949_
                                                    (##unchecked-structure-ref
                                                     _in9088890902_
                                                     '1
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e9089990954_
                                                    (##unchecked-structure-ref
                                                     _in9088890902_
                                                     '2
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e9090090959_
                                                    (##unchecked-structure-ref
                                                     _in9088890902_
                                                     '3
                                                     gx#module-import::t
                                                     '#f)))
                                              (let ((_out90952_ _e9089890949_)
                                                    (_key90957_ _e9089990954_)
                                                    (_phi90962_ _e9090090959_))
                                                (_K9089790946_
                                                 _phi90962_
                                                 _key90957_
                                                 _out90952_)))
                                            (_try-match9089090939_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _src90878_
                              _current-phi90882_
                              (foldl1 _fold-e90884_
                                      '()
                                      (##unchecked-structure-ref
                                       _current-ctx90881_
                                       '8
                                       gx#module-context::t
                                       '#f)))
                             _r90879_))))
                  (_export!90855_
                   (lambda (_rbody90868_)
                     (letrec* ((_current-ctx90870_
                                (gx#current-expander-context))
                               (_fold-e90871_
                                (lambda (_out90875_ _r90876_)
                                  (if (##structure-direct-instance-of?
                                       _out90875_
                                       'gx#module-export::t)
                                      (cons _out90875_ _r90876_)
                                      (if (##structure-direct-instance-of?
                                           _out90875_
                                           'gx#export-set::t)
                                          (foldl1 cons
                                                  _r90876_
                                                  (##unchecked-structure-ref
                                                   _out90875_
                                                   '3
                                                   gx#export-set::t
                                                   '#f))
                                          _r90876_)))))
                       (let ((_body90873_ (reverse _rbody90868_)))
                         (##unchecked-structure-set!
                          _current-ctx90870_
                          (foldl1 _fold-e90871_
                                  (##unchecked-structure-ref
                                   _current-ctx90870_
                                   '9
                                   gx#module-context::t
                                   '#f)
                                  _body90873_)
                          '9
                          gx#module-context::t
                          '#f)
                         _body90873_))))
                  (_expanded-export?90856_
                   (lambda (_e90863_)
                     (let ((_$e90865_
                            (##structure-direct-instance-of?
                             _e90863_
                             'gx#module-export::t)))
                       (if _$e90865_
                           _$e90865_
                           (##structure-direct-instance-of?
                            _e90863_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _internal-expand?90850_)
              (let ((_rbody90861_
                     (gx#core-expand-import/export
                      _stx90849_
                      _expanded-export?90856_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _expand190853_)))
                (if _internal-expand?90850_
                    (reverse _rbody90861_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons '%#export (_export!90855_ _rbody90861_))
                     (gx#stx-source _stx90849_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _stx90849_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _stx90849_))))))
    (define gx#core-expand-export%__0
      (lambda (_stx91334_)
        (let ((_internal-expand?91336_ '#f))
          (gx#core-expand-export%__% _stx91334_ _internal-expand?91336_))))
    (define gx#core-expand-export%
      (lambda _g94300_
        (let ((_g94299_ (##length _g94300_)))
          (cond ((##fx= _g94299_ 1)
                 (apply (lambda (_stx91334_)
                          (gx#core-expand-export%__0 _stx91334_))
                        _g94300_))
                ((##fx= _g94299_ 2)
                 (apply (lambda (_stx91338_ _internal-expand?91339_)
                          (gx#core-expand-export%__%
                           _stx91338_
                           _internal-expand?91339_))
                        _g94300_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g94300_))))))
    (define gx#core-expand-export-source
      (lambda (_hd90846_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _hd90846_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_stx90816_)
        (let* ((_e9081790824_ _stx90816_)
               (_E9081990828_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9081790824_)))
               (_E9081890842_
                (lambda ()
                  (if (gx#stx-pair? _e9081790824_)
                      (let ((_e9082090832_ (gx#syntax-e _e9081790824_)))
                        (let ((_hd9082190835_ (##car _e9082090832_))
                              (_tl9082290837_ (##cdr _e9082090832_)))
                          (let ((_body90840_ _tl9082290837_))
                            (if (gx#identifier-list? _body90840_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _body90840_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _body90840_))
                                   (gx#stx-source _stx90816_)))
                                (_E9081990828_)))))
                      (_E9081990828_)))))
          (_E9081890842_))))
    (define gx#core-bind-feature!__%
      (lambda (_id90782_ _private?90783_ _phi90784_ _ctx90785_)
        (gx#core-bind-syntax!__%
         _id90782_
         ((if _private?90783_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _id90782_))
         _private?90783_
         _phi90784_
         _ctx90785_)))
    (define gx#core-bind-feature!__0
      (lambda (_id90790_)
        (let* ((_private?90792_ '#f)
               (_phi90794_ (gx#current-expander-phi))
               (_ctx90796_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id90790_
           _private?90792_
           _phi90794_
           _ctx90796_))))
    (define gx#core-bind-feature!__1
      (lambda (_id90798_ _private?90799_)
        (let* ((_phi90801_ (gx#current-expander-phi))
               (_ctx90803_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id90798_
           _private?90799_
           _phi90801_
           _ctx90803_))))
    (define gx#core-bind-feature!__2
      (lambda (_id90805_ _private?90806_ _phi90807_)
        (let ((_ctx90809_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id90805_
           _private?90806_
           _phi90807_
           _ctx90809_))))
    (define gx#core-bind-feature!
      (lambda _g94302_
        (let ((_g94301_ (##length _g94302_)))
          (cond ((##fx= _g94301_ 1)
                 (apply (lambda (_id90790_)
                          (gx#core-bind-feature!__0 _id90790_))
                        _g94302_))
                ((##fx= _g94301_ 2)
                 (apply (lambda (_id90798_ _private?90799_)
                          (gx#core-bind-feature!__1 _id90798_ _private?90799_))
                        _g94302_))
                ((##fx= _g94301_ 3)
                 (apply (lambda (_id90805_ _private?90806_ _phi90807_)
                          (gx#core-bind-feature!__2
                           _id90805_
                           _private?90806_
                           _phi90807_))
                        _g94302_))
                ((##fx= _g94301_ 4)
                 (apply (lambda (_id90811_
                                 _private?90812_
                                 _phi90813_
                                 _ctx90814_)
                          (gx#core-bind-feature!__%
                           _id90811_
                           _private?90812_
                           _phi90813_
                           _ctx90814_))
                        _g94302_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g94302_))))))))
