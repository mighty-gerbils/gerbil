(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1707767844)
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
      (lambda _$args162425_
        (apply make-instance gx#module-import::t _$args162425_)))
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
      (lambda _$args162422_
        (apply make-instance gx#module-export::t _$args162422_)))
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
      (lambda _$args162419_
        (apply make-instance gx#import-set::t _$args162419_)))
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
      (lambda _$args162416_
        (apply make-instance gx#export-set::t _$args162416_)))
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
      (lambda _$args162413_
        (apply make-instance gx#import-expander::t _$args162413_)))
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
      (lambda _$args162410_
        (apply make-instance gx#export-expander::t _$args162410_)))
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
      (lambda _$args162407_
        (apply make-instance gx#import-export-expander::t _$args162407_)))
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
      (lambda (_path162404_ _fun162405_)
        (call-with-input-file
         (cons 'path: (cons _path162404_ gx#source-file-settings))
         _fun162405_)))
    (define gx#module-context:::init!
      (lambda (_self162398_ _id162399_ _super162400_ _ns162401_ _path162402_)
        (if (##fx< '11 (##structure-length _self162398_))
            (begin
              (##unchecked-structure-set!
               _self162398_
               _id162399_
               '1
               (##structure-type _self162398_)
               '#f)
              (##unchecked-structure-set!
               _self162398_
               (make-table 'test: eq?)
               '2
               (##structure-type _self162398_)
               '#f)
              (##unchecked-structure-set!
               _self162398_
               _super162400_
               '3
               (##structure-type _self162398_)
               '#f)
              (##unchecked-structure-set!
               _self162398_
               '#f
               '4
               (##structure-type _self162398_)
               '#f)
              (##unchecked-structure-set!
               _self162398_
               '#f
               '5
               (##structure-type _self162398_)
               '#f)
              (##unchecked-structure-set!
               _self162398_
               _ns162401_
               '6
               (##structure-type _self162398_)
               '#f)
              (##unchecked-structure-set!
               _self162398_
               _path162402_
               '7
               (##structure-type _self162398_)
               '#f)
              (##unchecked-structure-set!
               _self162398_
               '()
               '8
               (##structure-type _self162398_)
               '#f)
              (##unchecked-structure-set!
               _self162398_
               '()
               '9
               (##structure-type _self162398_)
               '#f)
              (##unchecked-structure-set!
               _self162398_
               '#f
               '10
               (##structure-type _self162398_)
               '#f)
              (##unchecked-structure-set!
               _self162398_
               '#f
               '11
               (##structure-type _self162398_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self162398_
                   '11
                   (##vector-length _self162398_)))))
    (bind-method! gx#module-context::t ':init! gx#module-context:::init! '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_self162242_ _ctx162243_ _root162244_)
        (let ((_super162252_
               (let ((_$e162246_ _root162244_))
                 (if _$e162246_
                     _$e162246_
                     (let ((_$e162249_ (gx#core-context-root__0)))
                       (if _$e162249_
                           _$e162249_
                           (let ((__obj167035
                                  (##structure gx#root-context::t '#f '#f)))
                             (let ((__constructor167036
                                    (direct-method-ref
                                     gx#root-context::t
                                     ':init!)))
                               (if __constructor167036
                                   (__constructor167036 __obj167035)
                                   (error '"missing constructor method implementation"
                                          'class:
                                          gx#root-context::t
                                          'method:
                                          ':init!)))
                             __obj167035)))))))
          (if _ctx162243_
              (let ((_id162255_
                     (##structure-ref
                      _ctx162243_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_path162256_
                     (##structure-ref _ctx162243_ '7 gx#module-context::t '#f))
                    (_in162257_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _ctx162243_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_e162258_
                     (make-promise (lambda () (gx#eval-module _ctx162243_)))))
                (if (##fx< '8 (##structure-length _self162242_))
                    (begin
                      (##unchecked-structure-set!
                       _self162242_
                       _id162255_
                       '1
                       (##structure-type _self162242_)
                       '#f)
                      (##unchecked-structure-set!
                       _self162242_
                       (make-table 'test: eq? 'size: (length _in162257_))
                       '2
                       (##structure-type _self162242_)
                       '#f)
                      (##unchecked-structure-set!
                       _self162242_
                       _super162252_
                       '3
                       (##structure-type _self162242_)
                       '#f)
                      (##unchecked-structure-set!
                       _self162242_
                       '#f
                       '4
                       (##structure-type _self162242_)
                       '#f)
                      (##unchecked-structure-set!
                       _self162242_
                       '#f
                       '5
                       (##structure-type _self162242_)
                       '#f)
                      (##unchecked-structure-set!
                       _self162242_
                       _path162256_
                       '6
                       (##structure-type _self162242_)
                       '#f)
                      (##unchecked-structure-set!
                       _self162242_
                       _in162257_
                       '7
                       (##structure-type _self162242_)
                       '#f)
                      (##unchecked-structure-set!
                       _self162242_
                       _e162258_
                       '8
                       (##structure-type _self162242_)
                       '#f))
                    (error '"struct-instance-init!: too many arguments for struct"
                           _self162242_
                           '8
                           (##vector-length _self162242_)))
                (for-each
                 (lambda (_g162259162261_)
                   (gx#core-bind-weak-import!__% _g162259162261_ _self162242_))
                 _in162257_))
              (if (##fx< '8 (##structure-length _self162242_))
                  (begin
                    (##unchecked-structure-set!
                     _self162242_
                     '#f
                     '1
                     (##structure-type _self162242_)
                     '#f)
                    (##unchecked-structure-set!
                     _self162242_
                     (make-table 'test: eq?)
                     '2
                     (##structure-type _self162242_)
                     '#f)
                    (##unchecked-structure-set!
                     _self162242_
                     _super162252_
                     '3
                     (##structure-type _self162242_)
                     '#f)
                    (##unchecked-structure-set!
                     _self162242_
                     '#f
                     '4
                     (##structure-type _self162242_)
                     '#f)
                    (##unchecked-structure-set!
                     _self162242_
                     '#f
                     '5
                     (##structure-type _self162242_)
                     '#f)
                    (##unchecked-structure-set!
                     _self162242_
                     '#f
                     '6
                     (##structure-type _self162242_)
                     '#f)
                    (##unchecked-structure-set!
                     _self162242_
                     '()
                     '7
                     (##structure-type _self162242_)
                     '#f)
                    (##unchecked-structure-set!
                     _self162242_
                     '#f
                     '8
                     (##structure-type _self162242_)
                     '#f))
                  (error '"struct-instance-init!: too many arguments for struct"
                         _self162242_
                         '8
                         (##vector-length _self162242_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_self162267_ _ctx162268_)
        (let ((_root162270_ '#f))
          (gx#prelude-context:::init!__%
           _self162267_
           _ctx162268_
           _root162270_))))
    (define gx#prelude-context:::init!
      (lambda _g167042_
        (let ((_g167041_ (##length _g167042_)))
          (cond ((##fx= _g167041_ 2)
                 (apply (lambda (_self162267_ _ctx162268_)
                          (gx#prelude-context:::init!__0
                           _self162267_
                           _ctx162268_))
                        _g167042_))
                ((##fx= _g167041_ 3)
                 (apply (lambda (_self162272_ _ctx162273_ _root162274_)
                          (gx#prelude-context:::init!__%
                           _self162272_
                           _ctx162273_
                           _root162274_))
                        _g167042_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g167042_))))))
    (bind-method! gx#prelude-context::t ':init! gx#prelude-context:::init! '#f)
    (define gx#import-export-expander-init!
      (lambda (_self162116_ _e162117_)
        (if (##fx< '3 (##structure-length _self162116_))
            (begin
              (##unchecked-structure-set!
               _self162116_
               _e162117_
               '1
               (##structure-type _self162116_)
               '#f)
              (##unchecked-structure-set!
               _self162116_
               (gx#current-expander-context)
               '2
               (##structure-type _self162116_)
               '#f)
              (##unchecked-structure-set!
               _self162116_
               (fx- (gx#current-expander-phi) '1)
               '3
               (##structure-type _self162116_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self162116_
                   '3
                   (##vector-length _self162116_)))))
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
      (lambda (_g161742161745_ _g161743161747_)
        (gx#core-apply-user-expander__%
         _g161742161745_
         _g161743161747_
         'apply-import-expander)))
    (bind-method!
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_g161613161616_ _g161614161618_)
        (gx#core-apply-user-expander__%
         _g161613161616_
         _g161614161618_
         'apply-export-expander)))
    (bind-method!
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_ctx161484_)
        (let* ((_path161486_
                (##structure-ref _ctx161484_ '7 gx#module-context::t '#f))
               (_path161488_
                (if (pair? _path161486_) (last _path161486_) _path161486_)))
          (if (string? _path161488_) _path161488_ '#f))))
    (define gx#import-module__%
      (lambda (_path161460_ _reload?161461_ _eval?161462_)
        (let ((_ctx161464_
               ((gx#current-expander-module-import)
                _path161460_
                _reload?161461_)))
          (if (and _ctx161464_ _eval?161462_)
              (gx#eval-module _ctx161464_)
              '#!void)
          _ctx161464_)))
    (define gx#import-module__0
      (lambda (_path161469_)
        (let* ((_reload?161471_ '#f) (_eval?161473_ '#f))
          (gx#import-module__% _path161469_ _reload?161471_ _eval?161473_))))
    (define gx#import-module__1
      (lambda (_path161475_ _reload?161476_)
        (let ((_eval?161478_ '#f))
          (gx#import-module__% _path161475_ _reload?161476_ _eval?161478_))))
    (define gx#import-module
      (lambda _g167044_
        (let ((_g167043_ (##length _g167044_)))
          (cond ((##fx= _g167043_ 1)
                 (apply (lambda (_path161469_)
                          (gx#import-module__0 _path161469_))
                        _g167044_))
                ((##fx= _g167043_ 2)
                 (apply (lambda (_path161475_ _reload?161476_)
                          (gx#import-module__1 _path161475_ _reload?161476_))
                        _g167044_))
                ((##fx= _g167043_ 3)
                 (apply (lambda (_path161480_ _reload?161481_ _eval?161482_)
                          (gx#import-module__%
                           _path161480_
                           _reload?161481_
                           _eval?161482_))
                        _g167044_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g167044_))))))
    (define gx#eval-module
      (lambda (_mod161457_) ((gx#current-expander-module-eval) _mod161457_)))
    (define gx#core-eval-module
      (lambda (_obj161442_)
        (letrec ((_force-e161444_
                  (lambda (_getf161453_ _e161454_)
                    (call-with-parameters
                     (lambda () (force (_getf161453_ _e161454_)))
                     gx#current-expander-context
                     _e161454_
                     gx#current-expander-phi
                     '0))))
          (let _recur161446_ ((_e161448_ _obj161442_))
            (if (##structure-instance-of? _e161448_ 'gx#module-context::t)
                (begin
                  (let ((_$e161450_ (gx#core-context-prelude__% _e161448_)))
                    (if _$e161450_ (_recur161446_ _$e161450_) '#!void))
                  (_force-e161444_ gx#module-context-e _e161448_))
                (if (##structure-instance-of? _e161448_ 'gx#prelude-context::t)
                    (_force-e161444_ gx#prelude-context-e _e161448_)
                    (if (gx#stx-string? _e161448_)
                        (_recur161446_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _e161448_)))
                        (if (gx#core-library-module-path? _e161448_)
                            (_recur161446_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _e161448_)))
                            (error '"Cannot eval module" _obj161442_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_ctx161425_)
        (let _lp161427_ ((_e161429_ _ctx161425_))
          (if (or (##structure-instance-of? _e161429_ 'gx#module-context::t)
                  (##structure-instance-of? _e161429_ 'gx#local-context::t))
              (_lp161427_
               (##unchecked-structure-ref _e161429_ '3 gx#phi-context::t '#f))
              (if (##structure-instance-of? _e161429_ 'gx#prelude-context::t)
                  _e161429_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_ctx161438_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _ctx161438_))))
    (define gx#core-context-prelude
      (lambda _g167046_
        (let ((_g167045_ (##length _g167046_)))
          (cond ((##fx= _g167045_ 0)
                 (apply (lambda () (gx#core-context-prelude__0)) _g167046_))
                ((##fx= _g167045_ 1)
                 (apply (lambda (_ctx161440_)
                          (gx#core-context-prelude__% _ctx161440_))
                        _g167046_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g167046_))))))
    (define gx#core-module->prelude-context
      (lambda (_ctx161415_)
        (let* ((_ht161417_ (gx#current-expander-module-registry))
               (_$e161419_ (table-ref _ht161417_ _ctx161415_ '#f)))
          (if _$e161419_
              (values _$e161419_)
              (let ((_pre161422_
                     (let ((__obj167037
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
                       (gx#prelude-context:::init! __obj167037 _ctx161415_)
                       __obj167037)))
                (table-set! _ht161417_ _ctx161415_ _pre161422_)
                _pre161422_)))))
    (define gx#core-import-module__%
      (lambda (_rpath161296_ _reload?161297_)
        (letrec ((_import-source161299_
                  (lambda (_path161384_)
                    (if (member _path161384_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _path161384_)
                        '#!void)
                    (call-with-parameters
                     (lambda ()
                       (let ((_g167047_ (gx#core-read-module _path161384_)))
                         (begin
                           (let ((_g167048_
                                  (if (##values? _g167047_)
                                      (##vector-length _g167047_)
                                      1)))
                             (if (not (##fx= _g167048_ 4))
                                 (error "Context expects 4 values" _g167048_)))
                           (let ((_pre161387_ (##vector-ref _g167047_ 0))
                                 (_id161388_ (##vector-ref _g167047_ 1))
                                 (_ns161389_ (##vector-ref _g167047_ 2))
                                 (_body161390_ (##vector-ref _g167047_ 3)))
                             (let* ((_prelude161395_
                                     (if (##structure-instance-of?
                                          _pre161387_
                                          'gx#prelude-context::t)
                                         _pre161387_
                                         (if (##structure-instance-of?
                                              _pre161387_
                                              'gx#module-context::t)
                                             (gx#core-module->prelude-context
                                              _pre161387_)
                                             (if (string? _pre161387_)
                                                 (gx#core-module->prelude-context
                                                  (gx#core-import-module__0
                                                   _pre161387_))
                                                 (if (not _pre161387_)
                                                     (let ((_$e161392_
                                                            (gx#current-expander-module-prelude)))
                                                       (if _$e161392_
                                                           _$e161392_
                                                           (let ((__obj167038
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
                     (gx#prelude-context:::init! __obj167038 '#f)
                     __obj167038)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error '"Cannot import module; unknown prelude"
                                                            _rpath161296_
                                                            _pre161387_))))))
                                    (_ctx161397_
                                     (let ((__obj167039
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
                                        __obj167039
                                        _id161388_
                                        _prelude161395_
                                        _ns161389_
                                        _path161384_)
                                       __obj167039))
                                    (_body161399_
                                     (gx#core-expand-module-begin
                                      _body161390_
                                      _ctx161397_))
                                    (_body161401_
                                     (gx#core-quote-syntax__%
                                      (gx#core-cons '%#begin _body161399_)
                                      _path161384_
                                      _ctx161397_
                                      '())))
                               (##unchecked-structure-set!
                                _ctx161397_
                                (make-promise
                                 (lambda () (gx#eval-syntax* _body161401_)))
                                '10
                                gx#module-context::t
                                '#f)
                               (##unchecked-structure-set!
                                _ctx161397_
                                _body161401_
                                '11
                                gx#module-context::t
                                '#f)
                               (table-set!
                                (gx#current-expander-module-registry)
                                _path161384_
                                _ctx161397_)
                               (table-set!
                                (gx#current-expander-module-registry)
                                _id161388_
                                _ctx161397_)
                               _ctx161397_)))))
                     gx#current-expander-context
                     (gx#core-context-root__0)
                     gx#current-expander-marks
                     '()
                     gx#current-expander-phi
                     '0
                     gx#current-expander-path
                     (cons _path161384_ (gx#current-expander-path))
                     gx#current-import-expander-phi
                     '#f
                     gx#current-export-expander-phi
                     '#f)))
                 (_import-submodule161300_
                  (lambda (_rpath161312_)
                    (let* ((_rpath161313161320_ _rpath161312_)
                           (_E161315161324_
                            (lambda ()
                              (error '"No clause matching"
                                     _rpath161313161320_)))
                           (_K161316161372_
                            (lambda (_refs161327_ _origin161328_)
                              (let ((_ctx161330_
                                     (if _origin161328_
                                         (gx#core-import-module__%
                                          _origin161328_
                                          _reload?161297_)
                                         (gx#current-expander-context))))
                                (let _lp161332_ ((_rest161334_ _refs161327_)
                                                 (_ctx161335_ _ctx161330_))
                                  (let* ((_rest161336161344_ _rest161334_)
                                         (_else161338161352_
                                          (lambda () _ctx161335_))
                                         (_K161340161360_
                                          (lambda (_rest161355_ _id161356_)
                                            (let ((_bind161358_
                                                   (gx#resolve-identifier__%
                                                    _id161356_
                                                    '0
                                                    _ctx161335_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _bind161358_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _bind161358_
                                                         '4
                                                         gx#syntax-binding::t
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_lp161332_
                                                   _rest161355_
                                                   (##unchecked-structure-ref
                                                    _bind161358_
                                                    '4
                                                    gx#syntax-binding::t
                                                    '#f))
                                                  (error '"Cannot import submodule; not bound as a module"
                                                         _rpath161312_
                                                         _id161356_
                                                         _bind161358_))))))
                                    (if (##pair? _rest161336161344_)
                                        (let ((_hd161341161363_
                                               (##car _rest161336161344_))
                                              (_tl161342161365_
                                               (##cdr _rest161336161344_)))
                                          (let* ((_id161368_ _hd161341161363_)
                                                 (_rest161370_
                                                  _tl161342161365_))
                                            (_K161340161360_
                                             _rest161370_
                                             _id161368_)))
                                        (_else161338161352_))))))))
                      (if (##pair? _rpath161313161320_)
                          (let ((_hd161317161375_ (##car _rpath161313161320_))
                                (_tl161318161377_ (##cdr _rpath161313161320_)))
                            (let* ((_origin161380_ _hd161317161375_)
                                   (_refs161382_ _tl161318161377_))
                              (_K161316161372_ _refs161382_ _origin161380_)))
                          (_E161315161324_))))))
          (let ((_$e161302_
                 (if (not _reload?161297_)
                     (table-ref
                      (gx#current-expander-module-registry)
                      _rpath161296_
                      '#f)
                     '#f)))
            (if _$e161302_
                (values _$e161302_)
                (if (list? _rpath161296_)
                    (_import-submodule161300_ _rpath161296_)
                    (if (gx#core-library-module-path? _rpath161296_)
                        (let ((_ctx161305_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _rpath161296_)
                                _reload?161297_)))
                          (table-set!
                           (gx#current-expander-module-registry)
                           _rpath161296_
                           _ctx161305_)
                          _ctx161305_)
                        (let* ((_npath161307_ (path-normalize _rpath161296_))
                               (_$e161309_
                                (if (not _reload?161297_)
                                    (table-ref
                                     (gx#current-expander-module-registry)
                                     _npath161307_
                                     '#f)
                                    '#f)))
                          (if _$e161309_
                              (values _$e161309_)
                              (_import-source161299_ _npath161307_))))))))))
    (define gx#core-import-module__0
      (lambda (_rpath161408_)
        (let ((_reload?161410_ '#f))
          (gx#core-import-module__% _rpath161408_ _reload?161410_))))
    (define gx#core-import-module
      (lambda _g167050_
        (let ((_g167049_ (##length _g167050_)))
          (cond ((##fx= _g167049_ 1)
                 (apply (lambda (_rpath161408_)
                          (gx#core-import-module__0 _rpath161408_))
                        _g167050_))
                ((##fx= _g167049_ 2)
                 (apply (lambda (_rpath161412_ _reload?161413_)
                          (gx#core-import-module__%
                           _rpath161412_
                           _reload?161413_))
                        _g167050_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g167050_))))))
    (define gx#core-read-module
      (lambda (_path161285_)
        (with-catch
         (lambda (_exn161287_)
           (if (and (datum-parsing-exception? _exn161287_)
                    (eq? (datum-parsing-exception-filepos _exn161287_) '0))
               (gx#core-read-module/lang _path161285_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _path161285_
                (call-with-parameters
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_g161289161291_)
                      (display-exception _exn161287_ _g161289161291_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _path161285_)))))
    (define gx#core-read-module/sexp
      (lambda (_path161148_)
        (let _lp161150_ ((_body161152_ (read-syntax-from-file _path161148_))
                         (_pre161153_ '#f)
                         (_ns161154_ '#f)
                         (_pkg161155_ '#f))
          (let* ((_e161156161180_ _body161152_)
                 (_E161172161202_
                  (lambda ()
                    (let ((_g167051_
                           (if _pkg161155_
                               (values _pre161153_ _ns161154_ _pkg161155_)
                               (gx#core-read-module-package
                                _path161148_
                                _pre161153_
                                _ns161154_))))
                      (begin
                        (let ((_g167052_
                               (if (##values? _g167051_)
                                   (##vector-length _g167051_)
                                   1)))
                          (if (not (##fx= _g167052_ 3))
                              (error "Context expects 3 values" _g167052_)))
                        (let ((_pre161184_ (##vector-ref _g167051_ 0))
                              (_ns161185_ (##vector-ref _g167051_ 1))
                              (_pkg161186_ (##vector-ref _g167051_ 2)))
                          (let* ((_prelude161188_
                                  (if (gx#core-bound-module-prelude?
                                       _pre161184_)
                                      (gx#syntax-local-e__0 _pre161184_)
                                      (if (gx#core-library-module-path?
                                           _pre161184_)
                                          (gx#core-resolve-library-module-path
                                           _pre161184_)
                                          (if (gx#stx-string? _pre161184_)
                                              (gx#core-resolve-module-path__%
                                               _pre161184_
                                               _path161148_)
                                              (gx#stx-e _pre161184_)))))
                                 (_path-id161190_
                                  (gx#core-module-path->namespace
                                   _path161148_))
                                 (_pkg-id161192_
                                  (if _pkg161186_
                                      (string-append
                                       _pkg161186_
                                       '"/"
                                       _path-id161190_)
                                      _path-id161190_))
                                 (_module-id161194_
                                  (string->symbol _pkg-id161192_))
                                 (_module-ns161199_
                                  (if (eq? _ns161185_ '#!void)
                                      '#f
                                      (let ((_$e161196_ _ns161185_))
                                        (if _$e161196_
                                            _$e161196_
                                            _pkg-id161192_)))))
                            (values _prelude161188_
                                    _module-id161194_
                                    _module-ns161199_
                                    _body161152_)))))))
                 (_E161165161231_
                  (lambda ()
                    (if (gx#stx-pair? _e161156161180_)
                        (let ((_e161173161206_ (gx#syntax-e _e161156161180_)))
                          (let ((_hd161174161209_ (##car _e161173161206_))
                                (_tl161175161211_ (##cdr _e161173161206_)))
                            (if (eq? (gx#stx-e _hd161174161209_) 'package:)
                                (if (gx#stx-pair? _tl161175161211_)
                                    (let ((_e161176161214_
                                           (gx#syntax-e _tl161175161211_)))
                                      (let ((_hd161177161217_
                                             (##car _e161176161214_))
                                            (_tl161178161219_
                                             (##cdr _e161176161214_)))
                                        (let* ((_pkg161222_ _hd161177161217_)
                                               (_rest161224_ _tl161178161219_))
                                          (if '#t
                                              (let ((_pkg161229_
                                                     (if (gx#identifier?
                                                          _pkg161222_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _pkg161222_))
                                                         (if (or (gx#stx-string?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _pkg161222_)
                         (gx#stx-false? _pkg161222_))
                     (gx#stx-e _pkg161222_)
                     (gx#raise-syntax-error
                      'import
                      '"Bad syntax; Illegal package name"
                      _pkg161222_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp161150_
                                                 _rest161224_
                                                 _pre161153_
                                                 _ns161154_
                                                 _pkg161229_))
                                              (_E161172161202_)))))
                                    (_E161172161202_))
                                (_E161172161202_))))
                        (_E161172161202_))))
                 (_E161158161257_
                  (lambda ()
                    (if (gx#stx-pair? _e161156161180_)
                        (let ((_e161166161235_ (gx#syntax-e _e161156161180_)))
                          (let ((_hd161167161238_ (##car _e161166161235_))
                                (_tl161168161240_ (##cdr _e161166161235_)))
                            (if (eq? (gx#stx-e _hd161167161238_) 'namespace:)
                                (if (gx#stx-pair? _tl161168161240_)
                                    (let ((_e161169161243_
                                           (gx#syntax-e _tl161168161240_)))
                                      (let ((_hd161170161246_
                                             (##car _e161169161243_))
                                            (_tl161171161248_
                                             (##cdr _e161169161243_)))
                                        (let* ((_ns161251_ _hd161170161246_)
                                               (_rest161253_ _tl161171161248_))
                                          (if '#t
                                              (let ((_ns161255_
                                                     (if (gx#identifier?
                                                          _ns161251_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _ns161251_))
                                                         (if (gx#stx-string?
                                                              _ns161251_)
                                                             (gx#stx-e
                                                              _ns161251_)
                                                             (if (gx#stx-false?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _ns161251_)
                         '#!void
                         (gx#raise-syntax-error
                          'import
                          '"Bad syntax; illegal namespace"
                          _ns161251_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp161150_
                                                 _rest161253_
                                                 _pre161153_
                                                 _ns161255_
                                                 _pkg161155_))
                                              (_E161165161231_)))))
                                    (_E161165161231_))
                                (_E161165161231_))))
                        (_E161165161231_))))
                 (_E161157161281_
                  (lambda ()
                    (if (gx#stx-pair? _e161156161180_)
                        (let ((_e161159161261_ (gx#syntax-e _e161156161180_)))
                          (let ((_hd161160161264_ (##car _e161159161261_))
                                (_tl161161161266_ (##cdr _e161159161261_)))
                            (if (eq? (gx#stx-e _hd161160161264_) 'prelude:)
                                (if (gx#stx-pair? _tl161161161266_)
                                    (let ((_e161162161269_
                                           (gx#syntax-e _tl161161161266_)))
                                      (let ((_hd161163161272_
                                             (##car _e161162161269_))
                                            (_tl161164161274_
                                             (##cdr _e161162161269_)))
                                        (let* ((_prelude161277_
                                                _hd161163161272_)
                                               (_rest161279_ _tl161164161274_))
                                          (if '#t
                                              (_lp161150_
                                               _rest161279_
                                               _prelude161277_
                                               _ns161154_
                                               _pkg161155_)
                                              (_E161158161257_)))))
                                    (_E161158161257_))
                                (_E161158161257_))))
                        (_E161158161257_)))))
            (_E161157161281_)))))
    (define gx#core-read-module/lang
      (lambda (_path160975_)
        (letrec ((_default-read-module-body160977_
                  (lambda (_inp161140_)
                    (let _lp161142_ ((_body161144_ '()))
                      (let ((_next161146_ (read-syntax _inp161140_)))
                        (if (eof-object? _next161146_)
                            (reverse _body161144_)
                            (_lp161142_ (cons _next161146_ _body161144_)))))))
                 (_read-body160978_
                  (lambda (_inp161059_
                           _pre161060_
                           _ns161061_
                           _pkg161062_
                           _args161063_)
                    (let ((_g167053_
                           (if _pkg161062_
                               (values _pre161060_ _ns161061_ _pkg161062_)
                               (gx#core-read-module-package
                                _path160975_
                                _pre161060_
                                _ns161061_))))
                      (begin
                        (let ((_g167054_
                               (if (##values? _g167053_)
                                   (##vector-length _g167053_)
                                   1)))
                          (if (not (##fx= _g167054_ 3))
                              (error "Context expects 3 values" _g167054_)))
                        (let ((_pre161065_ (##vector-ref _g167053_ 0))
                              (_ns161066_ (##vector-ref _g167053_ 1))
                              (_pkg161067_ (##vector-ref _g167053_ 2)))
                          (let* ((_prelude161069_
                                  (gx#import-module__0 _pre161065_))
                                 (_read-module-body161123_
                                  (let ((_$e161115_
                                         (find (lambda (_e161070161072_)
                                                 (let* ((_g161074161084_
                                                         _e161070161072_)
                                                        (_else161076161092_
                                                         (lambda () '#f))
                                                        (_K161078161096_
                                                         (lambda () '#t)))
                                                   (if (##structure-direct-instance-of?
                                                        _g161074161084_
                                                        'gx#module-export::t)
                                                       (let* ((_e161079161099_
                                                               (##unchecked-structure-ref
                                                                _g161074161084_
                                                                '1
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e161080161102_
                                                               (##unchecked-structure-ref
                                                                _g161074161084_
                                                                '2
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e161081161105_
                                                               (##unchecked-structure-ref
                                                                _g161074161084_
                                                                '3
                                                                gx#module-export::t
                                                                '#f)))
                                                         (if (##eq? _e161081161105_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)
                     (let ((_e161082161108_
                            (##unchecked-structure-ref
                             _g161074161084_
                             '4
                             gx#module-export::t
                             '#f)))
                       (if ((lambda (_g161110161112_)
                              (eq? _g161110161112_ 'read-module-body))
                            _e161082161108_)
                           (_K161078161096_)
                           (_else161076161092_)))
                     (_else161076161092_)))
               (_else161076161092_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (##unchecked-structure-ref
                                                _prelude161069_
                                                '9
                                                gx#module-context::t
                                                '#f))))
                                    (if _$e161115_
                                        ((lambda (_xport161118_)
                                           (let ((_proc161121_
                                                  (with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _xport161118_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _proc161121_)
                                                 _proc161121_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _path160975_
                                                  _pre161065_
                                                  _proc161121_))))
                                         _$e161115_)
                                        _default-read-module-body160977_)))
                                 (_path-id161125_
                                  (gx#core-module-path->namespace
                                   _path160975_))
                                 (_pkg-id161127_
                                  (if _pkg161067_
                                      (string-append
                                       _pkg161067_
                                       '"/"
                                       _path-id161125_)
                                      _path-id161125_))
                                 (_module-id161129_
                                  (string->symbol _pkg-id161127_))
                                 (_module-ns161134_
                                  (let ((_$e161131_ _ns161066_))
                                    (if _$e161131_ _$e161131_ _pkg-id161127_)))
                                 (_body161137_
                                  (call-with-parameters
                                   (lambda ()
                                     (_read-module-body161123_ _inp161059_))
                                   gx#current-module-reader-path
                                   _path160975_
                                   gx#current-module-reader-args
                                   _args161063_)))
                            (values _prelude161069_
                                    _module-id161129_
                                    _module-ns161134_
                                    _body161137_)))))))
                 (_string-e160979_
                  (lambda (_obj161056_ _what161057_)
                    (if (string? _obj161056_)
                        _obj161056_
                        (if (symbol? _obj161056_)
                            (symbol->string _obj161056_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _what161057_)
                             _path160975_
                             _obj161056_)))))
                 (_read-lang-args160980_
                  (lambda (_inp161011_ _args161012_)
                    (let* ((_args161013161021_ _args161012_)
                           (_else161015161029_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _path160975_)))
                           (_K161017161044_
                            (lambda (_args161032_ _prelude161033_)
                              (let* ((_pkg161035_
                                      (pgetq 'package: _args161032_))
                                     (_pkg161037_
                                      (if _pkg161035_
                                          (_string-e160979_
                                           _pkg161035_
                                           '"package")
                                          '#f))
                                     (_ns161039_
                                      (pgetq 'namespace: _args161032_))
                                     (_ns161041_
                                      (if _ns161039_
                                          (_string-e160979_
                                           _ns161039_
                                           '"namespace")
                                          '#f)))
                                (_read-body160978_
                                 _inp161011_
                                 _prelude161033_
                                 _ns161041_
                                 _pkg161037_
                                 _args161032_)))))
                      (if (##pair? _args161013161021_)
                          (let ((_hd161018161047_ (##car _args161013161021_))
                                (_tl161019161049_ (##cdr _args161013161021_)))
                            (let* ((_prelude161052_ _hd161018161047_)
                                   (_args161054_ _tl161019161049_))
                              (_K161017161044_ _args161054_ _prelude161052_)))
                          (_else161015161029_)))))
                 (_read-lang160981_
                  (lambda (_inp160986_)
                    (let* ((_head160988_ (read-line _inp160986_))
                           (_$e160990_ (string-index _head160988_ '#\space)))
                      (if _$e160990_
                          ((lambda (_ix160993_)
                             (let ((_lang160995_
                                    (substring _head160988_ '0 _ix160993_)))
                               (if (equal? _lang160995_ '"#lang")
                                   (let* ((_rest160997_
                                           (substring
                                            _head160988_
                                            (fx+ _ix160993_ '1)
                                            (string-length _head160988_)))
                                          (_args161008_
                                           (with-catch
                                            (lambda (_g160998161000_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _path160975_
                                               _g160998161000_))
                                            (lambda ()
                                              (call-with-input-string
                                               _rest160997_
                                               (lambda (_g161003161005_)
                                                 (read-all
                                                  _g161003161005_
                                                  read)))))))
                                     (_read-lang-args160980_
                                      _inp160986_
                                      _args161008_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _path160975_))))
                           _$e160990_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _path160975_)))))
                 (_read-e160982_
                  (lambda (_inp160984_)
                    (if (eq? (peek-char _inp160984_) '#\#)
                        (_read-lang160981_ _inp160984_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _path160975_)))))
          (gx#call-with-input-source-file _path160975_ _read-e160982_))))
    (define gx#core-read-module-package
      (lambda (_path160929_ _pre160930_ _ns160931_)
        (letrec ((_string-e160933_
                  (lambda (_e160973_)
                    (if (symbol? _e160973_)
                        (symbol->string _e160973_)
                        (if (string? _e160973_)
                            _e160973_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _e160973_))))))
          (let _lp160935_ ((_dir160937_ (path-directory _path160929_))
                           (_pkg-path160938_ '()))
            (let ((_gerbil.pkg160940_ (path-expand '"gerbil.pkg" _dir160937_)))
              (if (file-exists? _gerbil.pkg160940_)
                  (let ((_plist160942_
                         (gx#core-library-package-plist__% _dir160937_ '#t)))
                    (if (null? _plist160942_)
                        (let ((_pkg160944_
                               (if (not (null? _pkg-path160938_))
                                   (string-join _pkg-path160938_ '"/")
                                   '#f)))
                          (values _pre160930_ _ns160931_ _pkg160944_))
                        (if (list? _plist160942_)
                            (let* ((_root160946_
                                    (pgetq 'package: _plist160942_))
                                   (_pkg160950_
                                    (let ((_pkg-path160948_
                                           (if _root160946_
                                               (cons (_string-e160933_
                                                      _root160946_)
                                                     _pkg-path160938_)
                                               _pkg-path160938_)))
                                      (if (not (null? _pkg-path160948_))
                                          (string-join _pkg-path160948_ '"/")
                                          '#f)))
                                   (_ns160957_
                                    (let ((_ns160955_
                                           (let ((_$e160952_ _ns160931_))
                                             (if _$e160952_
                                                 _$e160952_
                                                 (pgetq 'namespace:
                                                        _plist160942_)))))
                                      (if _ns160955_
                                          (_string-e160933_ _ns160955_)
                                          '#f)))
                                   (_pre160962_
                                    (let ((_$e160959_ _pre160930_))
                                      (if _$e160959_
                                          _$e160959_
                                          (pgetq 'prelude: _plist160942_)))))
                              (values _pre160962_ _ns160957_ _pkg160950_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _plist160942_))))
                  (let ((_dir*160965_
                         (path-strip-trailing-directory-separator
                          _dir160937_)))
                    (if (or (string-empty? _dir*160965_)
                            (equal? _dir160937_ _dir*160965_))
                        (values _pre160930_ _ns160931_ '#f)
                        (let ((_xpath160970_
                               (path-strip-directory _dir*160965_))
                              (_xdir160971_ (path-directory _dir*160965_)))
                          (_lp160935_
                           _xdir160971_
                           (cons _xpath160970_ _pkg-path160938_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_path160927_)
        (path-strip-extension (path-strip-directory _path160927_))))
    (define gx#core-module-path->id
      (lambda (_path160925_)
        (string->symbol (gx#core-module-path->namespace _path160925_))))
    (define gx#core-resolve-module-path__%
      (lambda (_stx-path160904_ _rel160905_)
        (let* ((_path160907_ (gx#stx-e _stx-path160904_))
               (_path160909_
                (if (string-empty? (path-extension _path160907_))
                    (string-append _path160907_ '".ss")
                    _path160907_)))
          (gx#core-resolve-path__%
           _path160909_
           (let ((_$e160912_ (gx#stx-source _stx-path160904_)))
             (if _$e160912_ _$e160912_ _rel160905_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_stx-path160918_)
        (let ((_rel160920_ '#f))
          (gx#core-resolve-module-path__% _stx-path160918_ _rel160920_))))
    (define gx#core-resolve-module-path
      (lambda _g167056_
        (let ((_g167055_ (##length _g167056_)))
          (cond ((##fx= _g167055_ 1)
                 (apply (lambda (_stx-path160918_)
                          (gx#core-resolve-module-path__0 _stx-path160918_))
                        _g167056_))
                ((##fx= _g167055_ 2)
                 (apply (lambda (_stx-path160922_ _rel160923_)
                          (gx#core-resolve-module-path__%
                           _stx-path160922_
                           _rel160923_))
                        _g167056_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g167056_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_libpath160790_)
        (let* ((_spath160792_ (symbol->string (gx#stx-e _libpath160790_)))
               (_spath160794_
                (substring _spath160792_ '1 (string-length _spath160792_)))
               (_ext160796_ (path-extension _spath160794_))
               (_ssi160798_
                (if (string-empty? _ext160796_)
                    (string-append _spath160794_ '".ssi")
                    (string-append
                     (path-strip-extension _spath160794_)
                     '".ssi")))
               (_srcs160802_
                (if (string-empty? _ext160796_)
                    (map (lambda (_ext160800_)
                           (string-append _spath160794_ _ext160800_))
                         '(".ss" ".sld" ".scm"))
                    (cons _spath160794_ '()))))
          (let _lp160805_ ((_rest160807_
                            (gx#current-expander-module-library-path)))
            (let* ((_rest160808160817_ _rest160807_)
                   (_E160811160821_
                    (lambda ()
                      (error '"No clause matching" _rest160808160817_))))
              (let ((_K160813160891_
                     (lambda (_rest160832_ _dir160833_)
                       (letrec ((_resolve160835_
                                 (lambda (_ssi160847_ _srcs160848_)
                                   (let ((_compiled-path160850_
                                          (path-expand
                                           _ssi160847_
                                           _dir160833_)))
                                     (if (file-exists? _compiled-path160850_)
                                         (path-normalize _compiled-path160850_)
                                         (let _lpr160852_ ((_rest-src160854_
                                                            _srcs160848_))
                                           (let* ((_rest-src160855160863_
                                                   _rest-src160854_)
                                                  (_else160857160871_
                                                   (lambda ()
                                                     (_lp160805_
                                                      _rest160832_)))
                                                  (_K160859160879_
                                                   (lambda (_rest-src160874_
                                                            _src160875_)
                                                     (let ((_src-path160877_
                                                            (path-expand
                                                             _src160875_
                                                             _dir160833_)))
                                                       (if (file-exists?
                                                            _src-path160877_)
                                                           (path-normalize
                                                            _src-path160877_)
                                                           (_lpr160852_
                                                            _rest-src160874_))))))
                                             (if (##pair? _rest-src160855160863_)
                                                 (let ((_hd160860160882_
                                                        (##car _rest-src160855160863_))
                                                       (_tl160861160884_
                                                        (##cdr _rest-src160855160863_)))
                                                   (let* ((_src160887_
                                                           _hd160860160882_)
                                                          (_rest-src160889_
                                                           _tl160861160884_))
                                                     (_K160859160879_
                                                      _rest-src160889_
                                                      _src160887_)))
                                                 (_else160857160871_)))))))))
                         (let ((_$e160837_
                                (gx#core-library-package-path-prefix
                                 _dir160833_)))
                           (if _$e160837_
                               ((lambda (_prefix160840_)
                                  (if (string-prefix?
                                       _prefix160840_
                                       _spath160794_)
                                      (let ((_ssi160844_
                                             (substring
                                              _ssi160798_
                                              (string-length _prefix160840_)
                                              (string-length _ssi160798_)))
                                            (_srcs160845_
                                             (map (lambda (_src160842_)
                                                    (substring
                                                     _src160842_
                                                     (string-length
                                                      _prefix160840_)
                                                     (string-length
                                                      _src160842_)))
                                                  _srcs160802_)))
                                        (_resolve160835_
                                         _ssi160844_
                                         _srcs160845_))
                                      (_lp160805_ _rest160832_)))
                                _$e160837_)
                               (_resolve160835_ _ssi160798_ _srcs160802_))))))
                    (_K160812160826_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"Cannot find library module"
                        _libpath160790_))))
                (let ((_try-match160810160829_
                       (lambda ()
                         (if (##null? _rest160808160817_)
                             (_K160812160826_)
                             (_E160811160821_)))))
                  (if (##pair? _rest160808160817_)
                      (let ((_tl160815160896_ (##cdr _rest160808160817_))
                            (_hd160814160894_ (##car _rest160808160817_)))
                        (let ((_dir160899_ _hd160814160894_)
                              (_rest160901_ _tl160815160896_))
                          (_K160813160891_ _rest160901_ _dir160899_)))
                      (_try-match160810160829_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_modpath160763_)
        (letrec ((_resolve160765_
                  (lambda (_path160782_ _base160783_)
                    (let ((_$e160785_ (string-rindex _base160783_ '#\/)))
                      (if _$e160785_
                          ((lambda (_idx160788_)
                             (gx#core-resolve-library-module-path
                              (string->symbol
                               (string-append
                                '":"
                                (substring _base160783_ '0 _idx160788_)
                                '"/"
                                _path160782_))))
                           _$e160785_)
                          (gx#core-resolve-library-module-path
                           (string->symbol
                            (string-append '":" _path160782_))))))))
          (let ((_spath160767_ (symbol->string (gx#stx-e _modpath160763_)))
                (_mod160768_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _mod160768_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"Cannot resolve relative module path; not in module context"
                 _modpath160763_))
            (let ((_mpath160770_
                   (symbol->string
                    (##structure-ref
                     _mod160768_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _lp160772_ ((_spath160774_ _spath160767_)
                               (_mpath160775_ _mpath160770_))
                (if (string-prefix? '"../" _spath160774_)
                    (let ((_$e160777_ (string-rindex _mpath160775_ '#\/)))
                      (if _$e160777_
                          ((lambda (_idx160780_)
                             (_lp160772_
                              (substring
                               _spath160774_
                               '3
                               (string-length _spath160774_))
                              (substring _mpath160775_ '0 _idx160780_)))
                           _$e160777_)
                          (gx#raise-syntax-error
                           '#f
                           '"Cannot resolve relative module path; illegal traversal"
                           _modpath160763_)))
                    (if (string-prefix? '"./" _spath160774_)
                        (_lp160772_
                         (substring
                          _spath160774_
                          '2
                          (string-length _spath160774_))
                         _mpath160775_)
                        (_resolve160765_ _spath160774_ _mpath160775_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_dir160756_)
        (let ((_$e160758_
               (pgetq 'package:
                      (gx#core-library-package-plist__0 _dir160756_))))
          (if _$e160758_
              ((lambda (_pkg160761_)
                 (string-append (symbol->string _pkg160761_) '"/"))
               _$e160758_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_dir160728_ _exists?160729_)
        (let* ((_cache160731_ (gx#core-library-package-cache))
               (_$e160733_ (table-ref _cache160731_ _dir160728_ '#f)))
          (if _$e160733_
              (values _$e160733_)
              (let* ((_gerbil.pkg160736_
                      (path-expand '"gerbil.pkg" _dir160728_))
                     (_plist160743_
                      (if (or _exists?160729_
                              (file-exists? _gerbil.pkg160736_))
                          (let ((_e160741_
                                 (gx#call-with-input-source-file
                                  _gerbil.pkg160736_
                                  read)))
                            (if (eof-object? _e160741_)
                                '()
                                (if (list? _e160741_)
                                    _e160741_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _gerbil.pkg160736_
                                     _e160741_))))
                          '())))
                (table-set! _cache160731_ _dir160728_ _plist160743_)
                _plist160743_)))))
    (define gx#core-library-package-plist__0
      (lambda (_dir160749_)
        (let ((_exists?160751_ '#f))
          (gx#core-library-package-plist__% _dir160749_ _exists?160751_))))
    (define gx#core-library-package-plist
      (lambda _g167058_
        (let ((_g167057_ (##length _g167058_)))
          (cond ((##fx= _g167057_ 1)
                 (apply (lambda (_dir160749_)
                          (gx#core-library-package-plist__0 _dir160749_))
                        _g167058_))
                ((##fx= _g167057_ 2)
                 (apply (lambda (_dir160753_ _exists?160754_)
                          (gx#core-library-package-plist__%
                           _dir160753_
                           _exists?160754_))
                        _g167058_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g167058_))))))
    (define gx#core-library-package-cache
      (lambda ()
        (let ((_$e160722_ (gx#current-expander-module-library-package-cache)))
          (if _$e160722_
              (values _$e160722_)
              (let ((_cache160725_ (make-table)))
                (gx#current-expander-module-library-package-cache
                 _cache160725_)
                _cache160725_)))))
    (define gx#core-library-module-path?
      (lambda (_stx160719_) (gx#core-special-module-path? _stx160719_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_stx160717_) (gx#core-special-module-path? _stx160717_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_stx160712_ _char160713_)
        (if (gx#identifier? _stx160712_)
            (if (interned-symbol? (gx#stx-e _stx160712_))
                (let ((_str160715_ (symbol->string (gx#stx-e _stx160712_))))
                  (if (fx> (string-length _str160715_) '1)
                      (eq? (string-ref _str160715_ '0) _char160713_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_stx160706_)
        (gx#core-bound-identifier?__%
         _stx160706_
         (lambda (_g160707160709_)
           (gx#expander-binding?__% _g160707160709_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_stx160700_)
        (gx#core-bound-identifier?__%
         _stx160700_
         (lambda (_g160701160703_)
           (gx#expander-binding?__% _g160701160703_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_stx160687_)
        (letrec ((_module-prelude?160689_
                  (lambda (_e160695_)
                    (let ((_$e160697_
                           (##structure-instance-of?
                            _e160695_
                            'gx#module-context::t)))
                      (if _$e160697_
                          _$e160697_
                          (##structure-instance-of?
                           _e160695_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _stx160687_
           (lambda (_g160690160692_)
             (gx#expander-binding?__%
              _g160690160692_
              _module-prelude?160689_))))))
    (define gx#core-bind-import!__%
      (lambda (_in160617_ _ctx160618_ _force-weak?160619_)
        (let* ((_in160620160629_ _in160617_)
               (_E160622160633_
                (lambda () (error '"No clause matching" _in160620160629_)))
               (_K160623160646_
                (lambda (_weak?160636_ _phi160637_ _key160638_ _source160639_)
                  (gx#core-bind!__%
                   _key160638_
                   (let ((_e160641_
                          (gx#core-resolve-module-export _source160639_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref
                       _e160641_
                       '1
                       gx#binding::t
                       '#f)
                      _key160638_
                      _phi160637_
                      _e160641_
                      (##unchecked-structure-ref
                       _source160639_
                       '1
                       gx#module-export::t
                       '#f)
                      (let ((_$e160643_ _force-weak?160619_))
                        (if _$e160643_ _$e160643_ _weak?160636_))))
                   gx#core-context-rebind?
                   _phi160637_
                   _ctx160618_))))
          (if (##structure-direct-instance-of?
               _in160620160629_
               'gx#module-import::t)
              (let* ((_e160624160649_
                      (##unchecked-structure-ref
                       _in160620160629_
                       '1
                       gx#module-import::t
                       '#f))
                     (_source160652_ _e160624160649_)
                     (_e160625160654_
                      (##unchecked-structure-ref
                       _in160620160629_
                       '2
                       gx#module-import::t
                       '#f))
                     (_key160657_ _e160625160654_)
                     (_e160626160659_
                      (##unchecked-structure-ref
                       _in160620160629_
                       '3
                       gx#module-import::t
                       '#f))
                     (_phi160662_ _e160626160659_)
                     (_e160627160664_
                      (##unchecked-structure-ref
                       _in160620160629_
                       '4
                       gx#module-import::t
                       '#f))
                     (_weak?160667_ _e160627160664_))
                (_K160623160646_
                 _weak?160667_
                 _phi160662_
                 _key160657_
                 _source160652_))
              (_E160622160633_)))))
    (define gx#core-bind-import!__0
      (lambda (_in160672_)
        (let* ((_ctx160674_ (gx#current-expander-context))
               (_force-weak?160676_ '#f))
          (gx#core-bind-import!__%
           _in160672_
           _ctx160674_
           _force-weak?160676_))))
    (define gx#core-bind-import!__1
      (lambda (_in160678_ _ctx160679_)
        (let ((_force-weak?160681_ '#f))
          (gx#core-bind-import!__%
           _in160678_
           _ctx160679_
           _force-weak?160681_))))
    (define gx#core-bind-import!
      (lambda _g167060_
        (let ((_g167059_ (##length _g167060_)))
          (cond ((##fx= _g167059_ 1)
                 (apply (lambda (_in160672_)
                          (gx#core-bind-import!__0 _in160672_))
                        _g167060_))
                ((##fx= _g167059_ 2)
                 (apply (lambda (_in160678_ _ctx160679_)
                          (gx#core-bind-import!__1 _in160678_ _ctx160679_))
                        _g167060_))
                ((##fx= _g167059_ 3)
                 (apply (lambda (_in160683_ _ctx160684_ _force-weak?160685_)
                          (gx#core-bind-import!__%
                           _in160683_
                           _ctx160684_
                           _force-weak?160685_))
                        _g167060_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g167060_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_in160603_ _ctx160604_)
        (gx#core-bind-import!__% _in160603_ _ctx160604_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_in160609_)
        (let ((_ctx160611_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _in160609_ _ctx160611_))))
    (define gx#core-bind-weak-import!
      (lambda _g167062_
        (let ((_g167061_ (##length _g167062_)))
          (cond ((##fx= _g167061_ 1)
                 (apply (lambda (_in160609_)
                          (gx#core-bind-weak-import!__0 _in160609_))
                        _g167062_))
                ((##fx= _g167061_ 2)
                 (apply (lambda (_in160613_ _ctx160614_)
                          (gx#core-bind-weak-import!__%
                           _in160613_
                           _ctx160614_))
                        _g167062_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g167062_))))))
    (define gx#core-resolve-module-export
      (lambda (_out160494_)
        (letrec ((_subst160496_
                  (lambda (_key160542_)
                    (let* ((_key160543160551_ _key160542_)
                           (_else160545160559_ (lambda () _key160542_))
                           (_K160547160590_
                            (lambda (_mark160562_ _id160563_)
                              (let* ((_mark160564160570_ _mark160562_)
                                     (_E160566160574_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark160564160570_)))
                                     (_K160567160582_
                                      (lambda (_subst160577_)
                                        (let ((_$e160579_
                                               (if _subst160577_
                                                   (table-ref
                                                    _subst160577_
                                                    _id160563_
                                                    '#f)
                                                   '#f)))
                                          (if _$e160579_
                                              _$e160579_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _key160542_))))))
                                (if (##structure-instance-of?
                                     _mark160564160570_
                                     'gx#expander-mark::t)
                                    (let* ((_e160568160585_
                                            (##unchecked-structure-ref
                                             _mark160564160570_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst160588_ _e160568160585_))
                                      (_K160567160582_ _subst160588_))
                                    (_E160566160574_))))))
                      (if (##pair? _key160543160551_)
                          (let ((_hd160548160593_ (##car _key160543160551_))
                                (_tl160549160595_ (##cdr _key160543160551_)))
                            (let* ((_id160598_ _hd160548160593_)
                                   (_mark160600_ _tl160549160595_))
                              (_K160547160590_ _mark160600_ _id160598_)))
                          (_else160545160559_))))))
          (let* ((_out160497160507_ _out160494_)
                 (_E160499160511_
                  (lambda () (error '"No clause matching" _out160497160507_)))
                 (_K160500160518_
                  (lambda (_phi160514_ _key160515_ _ctx160516_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _ctx160516_ _phi160514_)
                     (_subst160496_ _key160515_)))))
            (if (##structure-direct-instance-of?
                 _out160497160507_
                 'gx#module-export::t)
                (let* ((_e160501160521_
                        (##unchecked-structure-ref
                         _out160497160507_
                         '1
                         gx#module-export::t
                         '#f))
                       (_ctx160524_ _e160501160521_)
                       (_e160502160526_
                        (##unchecked-structure-ref
                         _out160497160507_
                         '2
                         gx#module-export::t
                         '#f))
                       (_key160529_ _e160502160526_)
                       (_e160503160531_
                        (##unchecked-structure-ref
                         _out160497160507_
                         '3
                         gx#module-export::t
                         '#f))
                       (_phi160534_ _e160503160531_)
                       (_e160504160536_
                        (##unchecked-structure-ref
                         _out160497160507_
                         '4
                         gx#module-export::t
                         '#f))
                       (_e160505160539_
                        (##unchecked-structure-ref
                         _out160497160507_
                         '5
                         gx#module-export::t
                         '#f)))
                  (_K160500160518_ _phi160534_ _key160529_ _ctx160524_))
                (_E160499160511_))))))
    (define gx#core-module-export->import__%
      (lambda (_out160419_ _rename160420_ _dphi160421_)
        (let* ((_out160422160432_ _out160419_)
               (_E160424160436_
                (lambda () (error '"No clause matching" _out160422160432_)))
               (_K160425160448_
                (lambda (_weak?160439_
                         _name160440_
                         _phi160441_
                         _key160442_
                         _ctx160443_)
                  (##structure
                   gx#module-import::t
                   _out160419_
                   (let ((_$e160445_ _rename160420_))
                     (if _$e160445_ _$e160445_ _name160440_))
                   (fx+ _phi160441_ _dphi160421_)
                   _weak?160439_))))
          (if (##structure-direct-instance-of?
               _out160422160432_
               'gx#module-export::t)
              (let* ((_e160426160451_
                      (##unchecked-structure-ref
                       _out160422160432_
                       '1
                       gx#module-export::t
                       '#f))
                     (_ctx160454_ _e160426160451_)
                     (_e160427160456_
                      (##unchecked-structure-ref
                       _out160422160432_
                       '2
                       gx#module-export::t
                       '#f))
                     (_key160459_ _e160427160456_)
                     (_e160428160461_
                      (##unchecked-structure-ref
                       _out160422160432_
                       '3
                       gx#module-export::t
                       '#f))
                     (_phi160464_ _e160428160461_)
                     (_e160429160466_
                      (##unchecked-structure-ref
                       _out160422160432_
                       '4
                       gx#module-export::t
                       '#f))
                     (_name160469_ _e160429160466_)
                     (_e160430160471_
                      (##unchecked-structure-ref
                       _out160422160432_
                       '5
                       gx#module-export::t
                       '#f))
                     (_weak?160474_ _e160430160471_))
                (_K160425160448_
                 _weak?160474_
                 _name160469_
                 _phi160464_
                 _key160459_
                 _ctx160454_))
              (_E160424160436_)))))
    (define gx#core-module-export->import__0
      (lambda (_out160479_)
        (let* ((_rename160481_ '#f) (_dphi160483_ '0))
          (gx#core-module-export->import__%
           _out160479_
           _rename160481_
           _dphi160483_))))
    (define gx#core-module-export->import__1
      (lambda (_out160485_ _rename160486_)
        (let ((_dphi160488_ '0))
          (gx#core-module-export->import__%
           _out160485_
           _rename160486_
           _dphi160488_))))
    (define gx#core-module-export->import
      (lambda _g167064_
        (let ((_g167063_ (##length _g167064_)))
          (cond ((##fx= _g167063_ 1)
                 (apply (lambda (_out160479_)
                          (gx#core-module-export->import__0 _out160479_))
                        _g167064_))
                ((##fx= _g167063_ 2)
                 (apply (lambda (_out160485_ _rename160486_)
                          (gx#core-module-export->import__1
                           _out160485_
                           _rename160486_))
                        _g167064_))
                ((##fx= _g167063_ 3)
                 (apply (lambda (_out160490_ _rename160491_ _dphi160492_)
                          (gx#core-module-export->import__%
                           _out160490_
                           _rename160491_
                           _dphi160492_))
                        _g167064_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g167064_))))))
    (define gx#core-expand-module%
      (lambda (_stx160347_)
        (letrec ((_make-context160349_
                  (lambda (_id160400_)
                    (let* ((_super160402_ (gx#current-expander-context))
                           (_bind-id160404_ (gx#stx-e _id160400_))
                           (_mod-id160406_
                            (if (##structure-instance-of?
                                 _super160402_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##structure-ref
                                  _super160402_
                                  '1
                                  gx#expander-context::t
                                  '#f)
                                 '"$"
                                 _bind-id160404_)
                                _bind-id160404_))
                           (_ns160408_ (symbol->string _mod-id160406_))
                           (_path160415_
                            (if (##structure-instance-of?
                                 _super160402_
                                 'gx#module-context::t)
                                (let ((_path160410_
                                       (##unchecked-structure-ref
                                        _super160402_
                                        '7
                                        gx#module-context::t
                                        '#f)))
                                  (if (or (pair? _path160410_)
                                          (null? _path160410_))
                                      (cons _bind-id160404_ _path160410_)
                                      (if (not _path160410_)
                                          _bind-id160404_
                                          (cons _bind-id160404_
                                                (cons _path160410_ '())))))
                                _bind-id160404_)))
                      (let ((__obj167040
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
                         __obj167040
                         _mod-id160406_
                         _super160402_
                         _ns160408_
                         _path160415_)
                        __obj167040)))))
          (let* ((_e160350160360_ _stx160347_)
                 (_E160352160364_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e160350160360_)))
                 (_E160351160396_
                  (lambda ()
                    (if (gx#stx-pair? _e160350160360_)
                        (let ((_e160353160368_ (gx#syntax-e _e160350160360_)))
                          (let ((_hd160354160371_ (##car _e160353160368_))
                                (_tl160355160373_ (##cdr _e160353160368_)))
                            (if (gx#stx-pair? _tl160355160373_)
                                (let ((_e160356160376_
                                       (gx#syntax-e _tl160355160373_)))
                                  (let ((_hd160357160379_
                                         (##car _e160356160376_))
                                        (_tl160358160381_
                                         (##cdr _e160356160376_)))
                                    (let* ((_id160384_ _hd160357160379_)
                                           (_body160386_ _tl160358160381_))
                                      (if (and (gx#identifier? _id160384_)
                                               (gx#stx-list? _body160386_))
                                          (let* ((_ctx160388_
                                                  (_make-context160349_
                                                   _id160384_))
                                                 (_body160390_
                                                  (gx#core-expand-module-begin
                                                   _body160386_
                                                   _ctx160388_))
                                                 (_body160392_
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body160390_)
                                                   (gx#stx-source
                                                    _stx160347_))))
                                            (##unchecked-structure-set!
                                             _ctx160388_
                                             (make-promise
                                              (lambda ()
                                                (gx#eval-syntax*
                                                 _body160392_)))
                                             '10
                                             gx#module-context::t
                                             '#f)
                                            (##unchecked-structure-set!
                                             _ctx160388_
                                             _body160392_
                                             '11
                                             gx#module-context::t
                                             '#f)
                                            (gx#core-bind-syntax!__0
                                             _id160384_
                                             _ctx160388_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-list
                                              '%#module
                                              (gx#core-quote-syntax__0
                                               _id160384_)
                                              _body160392_)
                                             (gx#stx-source _stx160347_)))
                                          (_E160352160364_)))))
                                (_E160352160364_))))
                        (_E160352160364_)))))
            (_E160351160396_)))))
    (define gx#core-expand-module-begin
      (lambda (_body160313_ _ctx160314_)
        (call-with-parameters
         (lambda ()
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_stx160317_
                   (gx#core-expand-head (cons '%%begin-module _body160313_)))
                  (_e160318160325_ _stx160317_)
                  (_E160320160329_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _stx160317_)))
                  (_E160319160343_
                   (lambda ()
                     (if (gx#stx-pair? _e160318160325_)
                         (let ((_e160321160333_ (gx#syntax-e _e160318160325_)))
                           (let ((_hd160322160336_ (##car _e160321160333_))
                                 (_tl160323160338_ (##cdr _e160321160333_)))
                             (if (and (gx#identifier? _hd160322160336_)
                                      (gx#core-identifier=?
                                       _hd160322160336_
                                       '%#begin-module))
                                 (let ((_body160341_ _tl160323160338_))
                                   (if '#t
                                       (if (gx#sealed-syntax? _stx160317_)
                                           _body160341_
                                           (gx#core-expand-module-body
                                            _body160341_))
                                       (_E160320160329_)))
                                 (_E160320160329_))))
                         (_E160320160329_)))))
             (_E160319160343_)))
         gx#current-expander-context
         _ctx160314_
         gx#current-expander-phi
         '0)))
    (define gx#core-expand-module-body
      (lambda (_body160109_)
        (letrec ((_expand-special160111_
                  (lambda (_hd160240_ _K160241_ _rest160242_ _r160243_)
                    (let* ((_e160244160261_ _hd160240_)
                           (_E160256160265_
                            (lambda ()
                              (_K160241_
                               _rest160242_
                               (cons (gx#core-expand-top _hd160240_)
                                     _r160243_))))
                           (_E160246160277_
                            (lambda ()
                              (if (gx#stx-pair? _e160244160261_)
                                  (let ((_e160257160269_
                                         (gx#syntax-e _e160244160261_)))
                                    (let ((_hd160258160272_
                                           (##car _e160257160269_))
                                          (_tl160259160274_
                                           (##cdr _e160257160269_)))
                                      (if (and (gx#identifier?
                                                _hd160258160272_)
                                               (gx#core-identifier=?
                                                _hd160258160272_
                                                '%#export))
                                          (if '#t
                                              (_K160241_
                                               _rest160242_
                                               (cons _hd160240_ _r160243_))
                                              (_E160256160265_))
                                          (_E160256160265_))))
                                  (_E160256160265_))))
                           (_E160245160309_
                            (lambda ()
                              (if (gx#stx-pair? _e160244160261_)
                                  (let ((_e160247160281_
                                         (gx#syntax-e _e160244160261_)))
                                    (let ((_hd160248160284_
                                           (##car _e160247160281_))
                                          (_tl160249160286_
                                           (##cdr _e160247160281_)))
                                      (if (and (gx#identifier?
                                                _hd160248160284_)
                                               (gx#core-identifier=?
                                                _hd160248160284_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl160249160286_)
                                              (let ((_e160250160289_
                                                     (gx#syntax-e
                                                      _tl160249160286_)))
                                                (let ((_hd160251160292_
                                                       (##car _e160250160289_))
                                                      (_tl160252160294_
                                                       (##cdr _e160250160289_)))
                                                  (let ((_hd-bind160297_
                                                         _hd160251160292_))
                                                    (if (gx#stx-pair?
                                                         _tl160252160294_)
                                                        (let ((_e160253160299_
                                                               (gx#syntax-e
                                                                _tl160252160294_)))
                                                          (let ((_hd160254160302_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e160253160299_))
                        (_tl160255160304_ (##cdr _e160253160299_)))
                    (let ((_expr160307_ _hd160254160302_))
                      (if (gx#stx-null? _tl160255160304_)
                          (if (gx#core-bind-values? _hd-bind160297_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind160297_)
                                (_K160241_
                                 _rest160242_
                                 (cons _hd160240_ _r160243_)))
                              (_E160246160277_))
                          (_E160246160277_)))))
                (_E160246160277_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E160246160277_))
                                          (_E160246160277_))))
                                  (_E160246160277_)))))
                      (_E160245160309_))))
                 (_expand-body160112_
                  (lambda (_rbody160114_)
                    (let _lp160116_ ((_rest160118_ _rbody160114_)
                                     (_body160119_ '()))
                      (let* ((_rest160120160128_ _rest160118_)
                             (_else160122160136_ (lambda () _body160119_))
                             (_K160124160228_
                              (lambda (_rest160139_ _hd160140_)
                                (let* ((_e160141160162_ _hd160140_)
                                       (_E160157160166_
                                        (lambda ()
                                          (_lp160116_
                                           _rest160139_
                                           (cons (gx#core-expand-expression
                                                  _hd160140_)
                                                 _body160119_))))
                                       (_E160153160180_
                                        (lambda ()
                                          (if (gx#stx-pair? _e160141160162_)
                                              (let ((_e160158160170_
                                                     (gx#syntax-e
                                                      _e160141160162_)))
                                                (let ((_hd160159160173_
                                                       (##car _e160158160170_))
                                                      (_tl160160160175_
                                                       (##cdr _e160158160170_)))
                                                  (let ((_form160178_
                                                         _hd160159160173_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _form160178_
                                                         gx#special-form-binding?)
                                                        (_lp160116_
                                                         _rest160139_
                                                         (cons _hd160140_
                                                               _body160119_))
                                                        (_E160157160166_)))))
                                              (_E160157160166_))))
                                       (_E160143160192_
                                        (lambda ()
                                          (if (gx#stx-pair? _e160141160162_)
                                              (let ((_e160154160184_
                                                     (gx#syntax-e
                                                      _e160141160162_)))
                                                (let ((_hd160155160187_
                                                       (##car _e160154160184_))
                                                      (_tl160156160189_
                                                       (##cdr _e160154160184_)))
                                                  (if (and (gx#identifier?
                                                            _hd160155160187_)
                                                           (gx#core-identifier=?
                                                            _hd160155160187_
                                                            '%#export))
                                                      (if '#t
                                                          (_lp160116_
                                                           _rest160139_
                                                           (cons (gx#core-expand-export%__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd160140_)
                         _body160119_))
                  (_E160153160180_))
              (_E160153160180_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E160153160180_))))
                                       (_E160142160224_
                                        (lambda ()
                                          (if (gx#stx-pair? _e160141160162_)
                                              (let ((_e160144160196_
                                                     (gx#syntax-e
                                                      _e160141160162_)))
                                                (let ((_hd160145160199_
                                                       (##car _e160144160196_))
                                                      (_tl160146160201_
                                                       (##cdr _e160144160196_)))
                                                  (if (and (gx#identifier?
                                                            _hd160145160199_)
                                                           (gx#core-identifier=?
                                                            _hd160145160199_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl160146160201_)
                                                          (let ((_e160147160204_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl160146160201_)))
                    (let ((_hd160148160207_ (##car _e160147160204_))
                          (_tl160149160209_ (##cdr _e160147160204_)))
                      (let ((_hd-bind160212_ _hd160148160207_))
                        (if (gx#stx-pair? _tl160149160209_)
                            (let ((_e160150160214_
                                   (gx#syntax-e _tl160149160209_)))
                              (let ((_hd160151160217_ (##car _e160150160214_))
                                    (_tl160152160219_ (##cdr _e160150160214_)))
                                (let ((_expr160222_ _hd160151160217_))
                                  (if (gx#stx-null? _tl160152160219_)
                                      (if '#t
                                          (_lp160116_
                                           _rest160139_
                                           (cons (gx#core-quote-syntax__1
                                                  (gx#core-list
                                                   '%#define-values
                                                   (gx#core-quote-bind-values
                                                    _hd-bind160212_)
                                                   (gx#core-expand-expression
                                                    _expr160222_))
                                                  (gx#stx-source _hd160140_))
                                                 _body160119_))
                                          (_E160143160192_))
                                      (_E160143160192_)))))
                            (_E160143160192_)))))
                  (_E160143160192_))
              (_E160143160192_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E160143160192_)))))
                                  (_E160142160224_)))))
                        (if (##pair? _rest160120160128_)
                            (let ((_hd160125160231_ (##car _rest160120160128_))
                                  (_tl160126160233_
                                   (##cdr _rest160120160128_)))
                              (let* ((_hd160236_ _hd160125160231_)
                                     (_rest160238_ _tl160126160233_))
                                (_K160124160228_ _rest160238_ _hd160236_)))
                            (_else160122160136_)))))))
          (_expand-body160112_
           (gx#core-expand-block__%
            (cons '%#begin-module _body160109_)
            _expand-special160111_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_stx159952_
               _expanded?159953_
               _method159954_
               _current-phi159955_
               _expand1159956_)
        (letrec ((_K159958_
                  (lambda (_rest160076_ _r160077_)
                    (let* ((_e160078160085_ _rest160076_)
                           (_E160080160089_ (lambda () _r160077_))
                           (_E160079160105_
                            (lambda ()
                              (if (gx#stx-pair? _e160078160085_)
                                  (let ((_e160081160093_
                                         (gx#syntax-e _e160078160085_)))
                                    (let ((_hd160082160096_
                                           (##car _e160081160093_))
                                          (_tl160083160098_
                                           (##cdr _e160081160093_)))
                                      (let* ((_hd160101_ _hd160082160096_)
                                             (_rest160103_ _tl160083160098_))
                                        (if '#t
                                            (_step159959_
                                             _hd160101_
                                             _rest160103_
                                             _r160077_)
                                            (_E160080160089_)))))
                                  (_E160080160089_)))))
                      (_E160079160105_))))
                 (_step159959_
                  (lambda (_hd159990_ _rest159991_ _r159992_)
                    (let* ((_e159993160011_ _hd159990_)
                           (_E160006160015_
                            (lambda ()
                              (if (_expanded?159953_ (gx#stx-e _hd159990_))
                                  (_K159958_
                                   _rest159991_
                                   (cons (gx#stx-e _hd159990_) _r159992_))
                                  (_expand1159956_
                                   _hd159990_
                                   _K159958_
                                   _rest159991_
                                   _r159992_))))
                           (_E160002160031_
                            (lambda ()
                              (if (gx#stx-pair? _e159993160011_)
                                  (let ((_e160007160019_
                                         (gx#syntax-e _e159993160011_)))
                                    (let ((_hd160008160022_
                                           (##car _e160007160019_))
                                          (_tl160009160024_
                                           (##cdr _e160007160019_)))
                                      (let* ((_macro160027_ _hd160008160022_)
                                             (_body160029_ _tl160009160024_))
                                        (if (gx#core-bound-identifier?__%
                                             _macro160027_
                                             gx#syntax-binding?)
                                            (_K159958_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _macro160027_)
                                                    _hd159990_
                                                    _method159954_)
                                                   _rest159991_)
                                             _r159992_)
                                            (_E160006160015_)))))
                                  (_E160006160015_))))
                           (_E159995160045_
                            (lambda ()
                              (if (gx#stx-pair? _e159993160011_)
                                  (let ((_e160003160035_
                                         (gx#syntax-e _e159993160011_)))
                                    (let ((_hd160004160038_
                                           (##car _e160003160035_))
                                          (_tl160005160040_
                                           (##cdr _e160003160035_)))
                                      (if (eq? (gx#stx-e _hd160004160038_)
                                               'begin:)
                                          (let ((_body160043_
                                                 _tl160005160040_))
                                            (if '#t
                                                (_K159958_
                                                 (gx#stx-foldr
                                                  cons
                                                  _rest159991_
                                                  _body160043_)
                                                 _r159992_)
                                                (_E160002160031_)))
                                          (_E160002160031_))))
                                  (_E160002160031_))))
                           (_E159994160072_
                            (lambda ()
                              (if (gx#stx-pair? _e159993160011_)
                                  (let ((_e159996160049_
                                         (gx#syntax-e _e159993160011_)))
                                    (let ((_hd159997160052_
                                           (##car _e159996160049_))
                                          (_tl159998160054_
                                           (##cdr _e159996160049_)))
                                      (if (eq? (gx#stx-e _hd159997160052_)
                                               'phi:)
                                          (if (gx#stx-pair? _tl159998160054_)
                                              (let ((_e159999160057_
                                                     (gx#syntax-e
                                                      _tl159998160054_)))
                                                (let ((_hd160000160060_
                                                       (##car _e159999160057_))
                                                      (_tl160001160062_
                                                       (##cdr _e159999160057_)))
                                                  (let* ((_dphi160065_
                                                          _hd160000160060_)
                                                         (_body160067_
                                                          _tl160001160062_))
                                                    (if (gx#stx-fixnum?
                                                         _dphi160065_)
                                                        (let ((_rbody160070_
                                                               (call-with-parameters
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_K159958_ _body160067_ '()))
                        _current-phi159955_
                        (fx+ (gx#stx-e _dphi160065_) (_current-phi159955_)))))
                  (_K159958_
                   _rest159991_
                   (foldr1 cons _r159992_ _rbody160070_)))
                (_E159995160045_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E159995160045_))
                                          (_E159995160045_))))
                                  (_E159995160045_)))))
                      (_E159994160072_)))))
          (let* ((_e159960159967_ _stx159952_)
                 (_E159962159971_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e159960159967_)))
                 (_E159961159986_
                  (lambda ()
                    (if (gx#stx-pair? _e159960159967_)
                        (let ((_e159963159975_ (gx#syntax-e _e159960159967_)))
                          (let ((_hd159964159978_ (##car _e159963159975_))
                                (_tl159965159980_ (##cdr _e159963159975_)))
                            (let ((_body159983_ _tl159965159980_))
                              (if '#t
                                  (if (_current-phi159955_)
                                      (_K159958_ _body159983_ '())
                                      (call-with-parameters
                                       (lambda () (_K159958_ _body159983_ '()))
                                       _current-phi159955_
                                       (gx#current-expander-phi)))
                                  (_E159962159971_)))))
                        (_E159962159971_)))))
            (_E159961159986_)))))
    (define gx#core-expand-import%__%
      (lambda (_stx159619_ _internal-expand?159620_)
        (letrec ((_expand1159622_
                  (lambda (_hd159932_ _K159933_ _rest159934_ _r159935_)
                    (if (gx#core-bound-module? _hd159932_)
                        (_import1159623_
                         (gx#syntax-local-e__0 _hd159932_)
                         _K159933_
                         _rest159934_
                         _r159935_)
                        (if (gx#core-library-module-path? _hd159932_)
                            (_import1159623_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _hd159932_))
                             _K159933_
                             _rest159934_
                             _r159935_)
                            (if (gx#core-library-relative-module-path?
                                 _hd159932_)
                                (_import1159623_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _hd159932_))
                                 _K159933_
                                 _rest159934_
                                 _r159935_)
                                (let ((_e159937_ (gx#stx-e _hd159932_)))
                                  (if (pair? _e159937_)
                                      (let ((_$e159939_
                                             (gx#stx-e (car _e159937_))))
                                        (if (eq? 'spec: _$e159939_)
                                            (_import-spec159626_
                                             _hd159932_
                                             _K159933_
                                             _rest159934_
                                             _r159935_)
                                            (if (eq? 'in: _$e159939_)
                                                (_import-submodule159624_
                                                 _hd159932_
                                                 _K159933_
                                                 _rest159934_
                                                 _r159935_)
                                                (if (eq? 'runtime: _$e159939_)
                                                    (_import-runtime159625_
                                                     _hd159932_
                                                     _K159933_
                                                     _rest159934_
                                                     _r159935_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _stx159619_
                                                     _hd159932_)))))
                                      (if (string? _e159937_)
                                          (_import1159623_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _hd159932_
                                             (gx#stx-source _stx159619_)))
                                           _K159933_
                                           _rest159934_
                                           _r159935_)
                                          (if (##structure-instance-of?
                                               _e159937_
                                               'gx#module-context::t)
                                              (_K159933_
                                               _rest159934_
                                               (cons _e159937_ _r159935_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _stx159619_
                                               _hd159932_))))))))))
                 (_import1159623_
                  (lambda (_ctx159921_ _K159922_ _rest159923_ _r159924_)
                    (let ((_dphi159926_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_K159922_
                       _rest159923_
                       (cons (##structure
                              gx#import-set::t
                              _ctx159921_
                              _dphi159926_
                              (map (lambda (_g159927159929_)
                                     (gx#core-module-export->import__%
                                      _g159927159929_
                                      '#f
                                      _dphi159926_))
                                   (##unchecked-structure-ref
                                    _ctx159921_
                                    '9
                                    gx#module-context::t
                                    '#f)))
                             _r159924_)))))
                 (_import-submodule159624_
                  (lambda (_hd159888_ _K159889_ _rest159890_ _r159891_)
                    (let* ((_e159892159899_ _hd159888_)
                           (_E159894159903_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e159892159899_)))
                           (_E159893159917_
                            (lambda ()
                              (if (gx#stx-pair? _e159892159899_)
                                  (let ((_e159895159907_
                                         (gx#syntax-e _e159892159899_)))
                                    (let ((_hd159896159910_
                                           (##car _e159895159907_))
                                          (_tl159897159912_
                                           (##cdr _e159895159907_)))
                                      (let ((_spath159915_ _tl159897159912_))
                                        (if '#t
                                            (_import1159623_
                                             (_import-spec-source159627_
                                              _spath159915_)
                                             _K159889_
                                             _rest159890_
                                             _r159891_)
                                            (_E159894159903_)))))
                                  (_E159894159903_)))))
                      (_E159893159917_))))
                 (_import-runtime159625_
                  (lambda (_hd159855_ _K159856_ _rest159857_ _r159858_)
                    (let* ((_e159859159866_ _hd159855_)
                           (_E159861159870_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e159859159866_)))
                           (_E159860159884_
                            (lambda ()
                              (if (gx#stx-pair? _e159859159866_)
                                  (let ((_e159862159874_
                                         (gx#syntax-e _e159859159866_)))
                                    (let ((_hd159863159877_
                                           (##car _e159862159874_))
                                          (_tl159864159879_
                                           (##cdr _e159862159874_)))
                                      (let ((_spath159882_ _tl159864159879_))
                                        (if '#t
                                            (_K159856_
                                             _rest159857_
                                             (cons (_import-spec-source159627_
                                                    _spath159882_)
                                                   _r159858_))
                                            (_E159861159870_)))))
                                  (_E159861159870_)))))
                      (_E159860159884_))))
                 (_import-spec159626_
                  (lambda (_hd159694_ _K159695_ _rest159696_ _r159697_)
                    (let* ((_e159698159715_ _hd159694_)
                           (_E159707159719_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e159698159715_)))
                           (_E159700159829_
                            (lambda ()
                              (if (gx#stx-pair? _e159698159715_)
                                  (let ((_e159708159723_
                                         (gx#syntax-e _e159698159715_)))
                                    (let ((_hd159709159726_
                                           (##car _e159708159723_))
                                          (_tl159710159728_
                                           (##cdr _e159708159723_)))
                                      (if (gx#stx-pair? _tl159710159728_)
                                          (let ((_e159711159731_
                                                 (gx#syntax-e
                                                  _tl159710159728_)))
                                            (let ((_hd159712159734_
                                                   (##car _e159711159731_))
                                                  (_tl159713159736_
                                                   (##cdr _e159711159731_)))
                                              (let* ((_path159739_
                                                      _hd159712159734_)
                                                     (_specs159741_
                                                      _tl159713159736_))
                                                (if '#t
                                                    (let ((_src-ctx159743_
                                                           (_import-spec-source159627_
                                                            _path159739_))
                                                          (_exports159744_
                                                           (make-table))
                                                          (_specs159745_
                                                           (gx#syntax->list
                                                            _specs159741_)))
                                                      (for-each
                                                       (lambda (_out159747_)
                                                         (table-set!
                                                          _exports159744_
                                                          (cons (##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _out159747_
                         '3
                         gx#module-export::t
                         '#f)
                        (##unchecked-structure-ref
                         _out159747_
                         '4
                         gx#module-export::t
                         '#f))
                  _out159747_))
               (##unchecked-structure-ref
                _src-ctx159743_
                '9
                gx#module-context::t
                '#f))
              (_K159695_
               _rest159696_
               (foldl1 (lambda (_spec159749_ _r159750_)
                         (let* ((_e159751159767_ _spec159749_)
                                (_E159753159771_
                                 (lambda ()
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid syntax-case clause"
                                    _e159751159767_)))
                                (_E159752159825_
                                 (lambda ()
                                   (if (gx#stx-pair? _e159751159767_)
                                       (let ((_e159754159775_
                                              (gx#syntax-e _e159751159767_)))
                                         (let ((_hd159755159778_
                                                (##car _e159754159775_))
                                               (_tl159756159780_
                                                (##cdr _e159754159775_)))
                                           (let ((_phi159783_
                                                  _hd159755159778_))
                                             (if (gx#stx-pair?
                                                  _tl159756159780_)
                                                 (let ((_e159757159785_
                                                        (gx#syntax-e
                                                         _tl159756159780_)))
                                                   (let ((_hd159758159788_
                                                          (##car _e159757159785_))
                                                         (_tl159759159790_
                                                          (##cdr _e159757159785_)))
                                                     (let ((_name159793_
                                                            _hd159758159788_))
                                                       (if (gx#stx-pair?
                                                            _tl159759159790_)
                                                           (let ((_e159760159795_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl159759159790_)))
                     (let ((_hd159761159798_ (##car _e159760159795_))
                           (_tl159762159800_ (##cdr _e159760159795_)))
                       (let ((_src-phi159803_ _hd159761159798_))
                         (if (gx#stx-pair? _tl159762159800_)
                             (let ((_e159763159805_
                                    (gx#syntax-e _tl159762159800_)))
                               (let ((_hd159764159808_ (##car _e159763159805_))
                                     (_tl159765159810_
                                      (##cdr _e159763159805_)))
                                 (let ((_src-name159813_ _hd159764159808_))
                                   (if (gx#stx-null? _tl159765159810_)
                                       (if (and (gx#stx-fixnum?
                                                 _src-phi159803_)
                                                (gx#identifier?
                                                 _src-name159813_)
                                                (gx#stx-fixnum? _phi159783_)
                                                (gx#identifier? _name159793_))
                                           (let ((_src-phi159815_
                                                  (gx#stx-e _src-phi159803_))
                                                 (_src-name159816_
                                                  (gx#core-identifier-key
                                                   _src-name159813_))
                                                 (_phi159817_
                                                  (gx#stx-e _phi159783_))
                                                 (_name159818_
                                                  (gx#core-identifier-key
                                                   _name159793_)))
                                             (let ((_$e159820_
                                                    (table-ref
                                                     _exports159744_
                                                     (cons _src-phi159815_
                                                           _src-name159816_)
                                                     '#f)))
                                               (if _$e159820_
                                                   ((lambda (_out159823_)
                                                      (cons (gx#core-module-export->import__%
                                                             _out159823_
                                                             _name159818_
                                                             (fx- _phi159817_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _src-phi159815_))
                    _r159750_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _$e159820_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; no matching export"
                                                    _stx159619_
                                                    _hd159694_))))
                                           (_E159753159771_))
                                       (_E159753159771_)))))
                             (_E159753159771_)))))
                   (_E159753159771_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E159753159771_)))))
                                       (_E159753159771_)))))
                           (_E159752159825_)))
                       _r159697_
                       _specs159745_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E159707159719_)))))
                                          (_E159707159719_))))
                                  (_E159707159719_))))
                           (_E159699159851_
                            (lambda ()
                              (if (gx#stx-pair? _e159698159715_)
                                  (let ((_e159701159833_
                                         (gx#syntax-e _e159698159715_)))
                                    (let ((_hd159702159836_
                                           (##car _e159701159833_))
                                          (_tl159703159838_
                                           (##cdr _e159701159833_)))
                                      (if (gx#stx-pair? _tl159703159838_)
                                          (let ((_e159704159841_
                                                 (gx#syntax-e
                                                  _tl159703159838_)))
                                            (let ((_hd159705159844_
                                                   (##car _e159704159841_))
                                                  (_tl159706159846_
                                                   (##cdr _e159704159841_)))
                                              (let ((_path159849_
                                                     _hd159705159844_))
                                                (if (gx#stx-null?
                                                     _tl159706159846_)
                                                    (if '#t
                                                        (_K159695_
                                                         _rest159696_
                                                         (cons (_import-spec-source159627_
                                                                _path159849_)
                                                               _r159697_))
                                                        (_E159700159829_))
                                                    (_E159700159829_)))))
                                          (_E159700159829_))))
                                  (_E159700159829_)))))
                      (_E159699159851_))))
                 (_import-spec-source159627_
                  (lambda (_spath159692_)
                    (gx#core-import-nested-module _spath159692_ _stx159619_)))
                 (_import!159628_
                  (lambda (_rbody159641_)
                    (letrec* ((_current-ctx159643_
                               (gx#current-expander-context))
                              (_deps159644_ (make-table 'test: eq?))
                              (_bind!159645_
                               (lambda (_hd159690_)
                                 (gx#core-bind-import!__1
                                  _hd159690_
                                  _current-ctx159643_))))
                      (let _lp159647_ ((_rest159649_ _rbody159641_)
                                       (_body159650_ '()))
                        (let* ((_rest159651159659_ _rest159649_)
                               (_else159653159669_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _current-ctx159643_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _current-ctx159643_
                                       (foldl1 cons
                                               (##unchecked-structure-ref
                                                _current-ctx159643_
                                                '8
                                                gx#module-context::t
                                                '#f)
                                               _body159650_)
                                       '8
                                       gx#module-context::t
                                       '#f)
                                      '#!void)
                                  (table-for-each
                                   (lambda (_ctx159667_ _g167065_)
                                     (gx#eval-module _ctx159667_))
                                   _deps159644_)
                                  _body159650_))
                               (_K159655159678_
                                (lambda (_rest159672_ _hd159673_)
                                  (if (##structure-direct-instance-of?
                                       _hd159673_
                                       'gx#module-import::t)
                                      (begin
                                        (_bind!159645_ _hd159673_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _hd159673_
                                                   '3
                                                   gx#module-import::t
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _hd159673_
                                                            '1
                                                            gx#module-import::t
                                                            '#f)
                                                           '3
                                                           gx#module-export::t
                                                           '#f)))
                                            (table-set!
                                             _deps159644_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _hd159673_
                                               '1
                                               gx#module-import::t
                                               '#f)
                                              '1
                                              gx#module-export::t
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _hd159673_
                                           'gx#import-set::t)
                                          (begin
                                            (for-each
                                             _bind!159645_
                                             (##unchecked-structure-ref
                                              _hd159673_
                                              '3
                                              gx#import-set::t
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _hd159673_
                                                  '2
                                                  gx#import-set::t
                                                  '#f))
                                                (table-set!
                                                 _deps159644_
                                                 (##unchecked-structure-ref
                                                  _hd159673_
                                                  '1
                                                  gx#import-set::t
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_$e159675_
                                                 (##structure-instance-of?
                                                  _hd159673_
                                                  'gx#module-context::t)))
                                            (if _$e159675_
                                                _$e159675_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _stx159619_
                                                 _hd159673_)))))
                                  (_lp159647_
                                   _rest159672_
                                   (cons _hd159673_ _body159650_)))))
                          (if (##pair? _rest159651159659_)
                              (let ((_hd159656159681_
                                     (##car _rest159651159659_))
                                    (_tl159657159683_
                                     (##cdr _rest159651159659_)))
                                (let* ((_hd159686_ _hd159656159681_)
                                       (_rest159688_ _tl159657159683_))
                                  (_K159655159678_ _rest159688_ _hd159686_)))
                              (_else159653159669_)))))))
                 (_expanded-import?159629_
                  (lambda (_e159633_)
                    (let ((_$e159635_
                           (##structure-direct-instance-of?
                            _e159633_
                            'gx#import-set::t)))
                      (if _$e159635_
                          _$e159635_
                          (let ((_$e159638_
                                 (##structure-direct-instance-of?
                                  _e159633_
                                  'gx#module-import::t)))
                            (if _$e159638_
                                _$e159638_
                                (##structure-instance-of?
                                 _e159633_
                                 'gx#module-context::t))))))))
          (let ((_rbody159631_
                 (gx#core-expand-import/export
                  _stx159619_
                  _expanded-import?159629_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _expand1159622_)))
            (if _internal-expand?159620_
                (reverse _rbody159631_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_import!159628_ _rbody159631_))
                 (gx#stx-source _stx159619_)))))))
    (define gx#core-expand-import%__0
      (lambda (_stx159945_)
        (let ((_internal-expand?159947_ '#f))
          (gx#core-expand-import%__% _stx159945_ _internal-expand?159947_))))
    (define gx#core-expand-import%
      (lambda _g167067_
        (let ((_g167066_ (##length _g167067_)))
          (cond ((##fx= _g167066_ 1)
                 (apply (lambda (_stx159945_)
                          (gx#core-expand-import%__0 _stx159945_))
                        _g167067_))
                ((##fx= _g167066_ 2)
                 (apply (lambda (_stx159949_ _internal-expand?159950_)
                          (gx#core-expand-import%__%
                           _stx159949_
                           _internal-expand?159950_))
                        _g167067_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g167067_))))))
    (define gx#core-import-nested-module
      (lambda (_spath159546_ _where159547_)
        (let* ((_e159548159555_ _spath159546_)
               (_E159550159559_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e159548159555_)))
               (_E159549159614_
                (lambda ()
                  (if (gx#stx-pair? _e159548159555_)
                      (let ((_e159551159563_ (gx#syntax-e _e159548159555_)))
                        (let ((_hd159552159566_ (##car _e159551159563_))
                              (_tl159553159568_ (##cdr _e159551159563_)))
                          (let* ((_origin159571_ _hd159552159566_)
                                 (_sub159573_ _tl159553159568_))
                            (if '#t
                                (let ((_origin-ctx159575_
                                       (if (gx#stx-false? _origin159571_)
                                           (gx#current-expander-context)
                                           (gx#import-module__0
                                            _origin159571_))))
                                  (let _lp159577_ ((_rest159579_ _sub159573_)
                                                   (_ctx159580_
                                                    _origin-ctx159575_))
                                    (let* ((_e159581159588_ _rest159579_)
                                           (_E159583159592_
                                            (lambda () _ctx159580_))
                                           (_E159582159610_
                                            (lambda ()
                                              (if (gx#stx-pair?
                                                   _e159581159588_)
                                                  (let ((_e159584159596_
                                                         (gx#syntax-e
                                                          _e159581159588_)))
                                                    (let ((_hd159585159599_
                                                           (##car _e159584159596_))
                                                          (_tl159586159601_
                                                           (##cdr _e159584159596_)))
                                                      (let* ((_id159604_
                                                              _hd159585159599_)
                                                             (_rest159606_
                                                              _tl159586159601_))
                                                        (if '#t
                                                            (let ((_bind159608_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#resolve-identifier__%
                            _id159604_
                            '0
                            _ctx159580_)))
                      (if (and (##structure-direct-instance-of?
                                _bind159608_
                                'gx#syntax-binding::t)
                               (##structure-instance-of?
                                (##unchecked-structure-ref
                                 _bind159608_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                'gx#module-context::t))
                          '#!void
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; not bound as module"
                           _where159547_
                           _spath159546_
                           _id159604_))
                      (_lp159577_
                       _rest159606_
                       (##unchecked-structure-ref
                        _bind159608_
                        '4
                        gx#syntax-binding::t
                        '#f)))
                    (_E159583159592_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E159583159592_)))))
                                      (_E159582159610_))))
                                (_E159550159559_)))))
                      (_E159550159559_)))))
          (_E159549159614_))))
    (define gx#core-expand-import-source
      (lambda (_hd159544_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _hd159544_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_stx159052_ _internal-expand?159053_)
        (letrec* ((_make-export__166996166997_
                   (lambda (_bind159492_ _phi159493_ _ctx159494_ _name159495_)
                     (let* ((_key159497_
                             (##unchecked-structure-ref
                              _bind159492_
                              '2
                              gx#binding::t
                              '#f))
                            (_export-key159499_
                             (if _name159495_
                                 (gx#core-identifier-key _name159495_)
                                 _key159497_)))
                       (##structure
                        gx#module-export::t
                        _ctx159494_
                        _key159497_
                        _phi159493_
                        _export-key159499_
                        (let ((_$e159502_
                               (##structure-instance-of?
                                _bind159492_
                                'gx#extern-binding::t)))
                          (if _$e159502_
                              _$e159502_
                              (##structure-direct-instance-of?
                               _bind159492_
                               'gx#import-binding::t)))))))
                  (_make-export__0__166998167001_
                   (lambda (_bind159508_)
                     (let* ((_phi159510_ (gx#current-export-expander-phi))
                            (_ctx159512_ (gx#current-expander-context))
                            (_name159514_ '#f))
                       (_make-export__166996166997_
                        _bind159508_
                        _phi159510_
                        _ctx159512_
                        _name159514_))))
                  (_make-export__1__166999167002_
                   (lambda (_bind159516_ _phi159517_)
                     (let* ((_ctx159519_ (gx#current-expander-context))
                            (_name159521_ '#f))
                       (_make-export__166996166997_
                        _bind159516_
                        _phi159517_
                        _ctx159519_
                        _name159521_))))
                  (_make-export__2__167000167003_
                   (lambda (_bind159523_ _phi159524_ _ctx159525_)
                     (let ((_name159527_ '#f))
                       (_make-export__166996166997_
                        _bind159523_
                        _phi159524_
                        _ctx159525_
                        _name159527_))))
                  (_make-export159055_
                   (lambda _g167069_
                     (let ((_g167068_ (##length _g167069_)))
                       (cond ((##fx= _g167068_ 1)
                              (apply (lambda (_bind159508_)
                                       (_make-export__0__166998167001_
                                        _bind159508_))
                                     _g167069_))
                             ((##fx= _g167068_ 2)
                              (apply (lambda (_bind159516_ _phi159517_)
                                       (_make-export__1__166999167002_
                                        _bind159516_
                                        _phi159517_))
                                     _g167069_))
                             ((##fx= _g167068_ 3)
                              (apply (lambda (_bind159523_
                                              _phi159524_
                                              _ctx159525_)
                                       (_make-export__2__167000167003_
                                        _bind159523_
                                        _phi159524_
                                        _ctx159525_))
                                     _g167069_))
                             ((##fx= _g167068_ 4)
                              (apply (lambda (_bind159529_
                                              _phi159530_
                                              _ctx159531_
                                              _name159532_)
                                       (_make-export__166996166997_
                                        _bind159529_
                                        _phi159530_
                                        _ctx159531_
                                        _name159532_))
                                     _g167069_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g167069_))))))
                  (_expand1159056_
                   (lambda (_hd159205_ _K159206_ _rest159207_ _r159208_)
                     (let* ((_e159209159241_ _hd159205_)
                            (_E159236159245_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _stx159052_
                                _hd159205_)))
                            (_E159226159324_
                             (lambda ()
                               (if (gx#stx-pair? _e159209159241_)
                                   (let ((_e159237159249_
                                          (gx#syntax-e _e159209159241_)))
                                     (let ((_hd159238159252_
                                            (##car _e159237159249_))
                                           (_tl159239159254_
                                            (##cdr _e159237159249_)))
                                       (if (eq? (gx#stx-e _hd159238159252_)
                                                'import:)
                                           (let ((_in159257_ _tl159239159254_))
                                             (if (gx#stx-list? _in159257_)
                                                 (let _lp159259_ ((_in-rest159261_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _in159257_)
                          (_r159262_ _r159208_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_e159263159270_
                                                           _in-rest159261_)
                                                          (_E159265159274_
                                                           (lambda ()
                                                             (_K159206_
                                                              _rest159207_
                                                              _r159262_)))
                                                          (_E159264159320_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _e159263159270_)
                         (let ((_e159266159278_ (gx#syntax-e _e159263159270_)))
                           (let ((_hd159267159281_ (##car _e159266159278_))
                                 (_tl159268159283_ (##cdr _e159266159278_)))
                             (let* ((_hd159286_ _hd159267159281_)
                                    (_in-rest159288_ _tl159268159283_))
                               (if '#t
                                   (let ((_src159318_
                                          (if (gx#core-bound-module?
                                               _hd159286_)
                                              (gx#syntax-local-e__0 _hd159286_)
                                              (if (gx#core-library-module-path?
                                                   _hd159286_)
                                                  (gx#import-module__0
                                                   (gx#core-resolve-library-module-path
                                                    _hd159286_))
                                                  (if (gx#core-library-relative-module-path?
                                                       _hd159286_)
                                                      (gx#import-module__0
                                                       (gx#core-resolve-library-relative-module-path
                                                        _hd159286_))
                                                      (if (gx#stx-string?
                                                           _hd159286_)
                                                          (gx#import-module__0
                                                           (gx#core-resolve-module-path__%
                                                            _hd159286_
                                                            (gx#stx-source
                                                             _stx159052_)))
                                                          (let* ((_e159289159296_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd159286_)
                         (_E159291159300_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; illegal re-export"
                             _stx159052_
                             _hd159286_)))
                         (_E159290159314_
                          (lambda ()
                            (if (gx#stx-pair? _e159289159296_)
                                (let ((_e159292159304_
                                       (gx#syntax-e _e159289159296_)))
                                  (let ((_hd159293159307_
                                         (##car _e159292159304_))
                                        (_tl159294159309_
                                         (##cdr _e159292159304_)))
                                    (if (eq? (gx#stx-e _hd159293159307_) 'in:)
                                        (let ((_spath159312_ _tl159294159309_))
                                          (if '#t
                                              (gx#core-import-nested-module
                                               _spath159312_
                                               _stx159052_)
                                              (_E159291159300_)))
                                        (_E159291159300_))))
                                (_E159291159300_)))))
                    (_E159290159314_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_lp159259_
                                      _in-rest159288_
                                      (_export-imports159057_
                                       _src159318_
                                       _r159262_)))
                                   (_E159265159274_)))))
                         (_E159265159274_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E159264159320_)))
                                                 (_E159236159245_)))
                                           (_E159236159245_))))
                                   (_E159236159245_))))
                            (_E159213159363_
                             (lambda ()
                               (if (gx#stx-pair? _e159209159241_)
                                   (let ((_e159227159328_
                                          (gx#syntax-e _e159209159241_)))
                                     (let ((_hd159228159331_
                                            (##car _e159227159328_))
                                           (_tl159229159333_
                                            (##cdr _e159227159328_)))
                                       (if (eq? (gx#stx-e _hd159228159331_)
                                                'rename:)
                                           (if (gx#stx-pair? _tl159229159333_)
                                               (let ((_e159230159336_
                                                      (gx#syntax-e
                                                       _tl159229159333_)))
                                                 (let ((_hd159231159339_
                                                        (##car _e159230159336_))
                                                       (_tl159232159341_
                                                        (##cdr _e159230159336_)))
                                                   (let ((_id159344_
                                                          _hd159231159339_))
                                                     (if (gx#stx-pair?
                                                          _tl159232159341_)
                                                         (let ((_e159233159346_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl159232159341_)))
                   (let ((_hd159234159349_ (##car _e159233159346_))
                         (_tl159235159351_ (##cdr _e159233159346_)))
                     (let ((_name159354_ _hd159234159349_))
                       (if (gx#stx-null? _tl159235159351_)
                           (if '#t
                               (let* ((_phi159356_
                                       (gx#current-export-expander-phi))
                                      (_$e159358_
                                       (gx#core-resolve-identifier__1
                                        _id159344_
                                        _phi159356_)))
                                 (if _$e159358_
                                     ((lambda (_bind159361_)
                                        (_K159206_
                                         _rest159207_
                                         (cons (_make-export__166996166997_
                                                _bind159361_
                                                _phi159356_
                                                (gx#current-expander-context)
                                                _name159354_)
                                               _r159208_)))
                                      _$e159358_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Reference to unbound identifier"
                                      _stx159052_
                                      _hd159205_
                                      _id159344_)))
                               (_E159226159324_))
                           (_E159226159324_)))))
                 (_E159226159324_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E159226159324_))
                                           (_E159226159324_))))
                                   (_E159226159324_))))
                            (_E159212159412_
                             (lambda ()
                               (if (gx#stx-pair? _e159209159241_)
                                   (let ((_e159214159367_
                                          (gx#syntax-e _e159209159241_)))
                                     (let ((_hd159215159370_
                                            (##car _e159214159367_))
                                           (_tl159216159372_
                                            (##cdr _e159214159367_)))
                                       (if (eq? (gx#stx-e _hd159215159370_)
                                                'spec:)
                                           (if (gx#stx-pair? _tl159216159372_)
                                               (let ((_e159217159375_
                                                      (gx#syntax-e
                                                       _tl159216159372_)))
                                                 (let ((_hd159218159378_
                                                        (##car _e159217159375_))
                                                       (_tl159219159380_
                                                        (##cdr _e159217159375_)))
                                                   (let ((_phi159383_
                                                          _hd159218159378_))
                                                     (if (gx#stx-pair?
                                                          _tl159219159380_)
                                                         (let ((_e159220159385_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl159219159380_)))
                   (let ((_hd159221159388_ (##car _e159220159385_))
                         (_tl159222159390_ (##cdr _e159220159385_)))
                     (let ((_id159393_ _hd159221159388_))
                       (if (gx#stx-pair? _tl159222159390_)
                           (let ((_e159223159395_
                                  (gx#syntax-e _tl159222159390_)))
                             (let ((_hd159224159398_ (##car _e159223159395_))
                                   (_tl159225159400_ (##cdr _e159223159395_)))
                               (let ((_name159403_ _hd159224159398_))
                                 (if (gx#stx-null? _tl159225159400_)
                                     (if (and (gx#stx-fixnum? _phi159383_)
                                              (gx#identifier? _id159393_)
                                              (gx#identifier? _name159403_))
                                         (let* ((_phi159405_
                                                 (gx#stx-e _phi159383_))
                                                (_$e159407_
                                                 (gx#core-resolve-identifier__1
                                                  _id159393_
                                                  _phi159405_)))
                                           (if _$e159407_
                                               ((lambda (_bind159410_)
                                                  (_K159206_
                                                   _rest159207_
                                                   (cons (_make-export__166996166997_
                                                          _bind159410_
                                                          _phi159405_
                                                          (gx#current-expander-context)
                                                          _name159403_)
                                                         _r159208_)))
                                                _$e159407_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _stx159052_
                                                _hd159205_
                                                _id159393_)))
                                         (_E159213159363_))
                                     (_E159213159363_)))))
                           (_E159213159363_)))))
                 (_E159213159363_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E159213159363_))
                                           (_E159213159363_))))
                                   (_E159213159363_))))
                            (_E159211159423_
                             (lambda ()
                               (let ((_id159416_ _e159209159241_))
                                 (if (gx#identifier? _id159416_)
                                     (let ((_$e159418_
                                            (gx#core-resolve-identifier__1
                                             _id159416_
                                             (gx#current-export-expander-phi))))
                                       (if _$e159418_
                                           ((lambda (_bind159421_)
                                              (_K159206_
                                               _rest159207_
                                               (cons (_make-export__0__166998167001_
                                                      _bind159421_)
                                                     _r159208_)))
                                            _$e159418_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _stx159052_
                                            _hd159205_)))
                                     (_E159212159412_)))))
                            (_E159210159487_
                             (lambda ()
                               (if (eq? (gx#stx-e _e159209159241_) '#t)
                                   (if '#t
                                       (let* ((_current-ctx159427_
                                               (gx#current-expander-context))
                                              (_current-phi159429_
                                               (gx#current-export-expander-phi))
                                              (_phi-ctx159431_
                                               (gx#core-context-shift
                                                _current-ctx159427_
                                                _current-phi159429_))
                                              (_phi-bind159433_
                                               (table->list
                                                (##unchecked-structure-ref
                                                 _phi-ctx159431_
                                                 '2
                                                 gx#expander-context::t
                                                 '#f))))
                                         (let _lp159436_ ((_bind-rest159438_
                                                           _phi-bind159433_)
                                                          (_set159439_ '()))
                                           (let* ((_bind-rest159440159450_
                                                   _bind-rest159438_)
                                                  (_else159442159458_
                                                   (lambda ()
                                                     (_K159206_
                                                      _rest159207_
                                                      (cons (##structure
                                                             gx#export-set::t
                                                             '#f
                                                             _current-phi159429_
                                                             _set159439_)
                                                            _r159208_))))
                                                  (_K159444159468_
                                                   (lambda (_bind-rest159461_
                                                            _bind159462_
                                                            _key159463_)
                                                     (if (or (##structure-direct-instance-of?
                                                              _bind159462_
                                                              'gx#import-binding::t)
                                                             (gx#private-feature-binding?
                                                              _bind159462_))
                                                         (_lp159436_
                                                          _bind-rest159461_
                                                          _set159439_)
                                                         (_lp159436_
                                                          _bind-rest159461_
                                                          (cons (_make-export__2__167000167003_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind159462_
                         _current-phi159429_
                         _current-ctx159427_)
                        _set159439_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _bind-rest159440159450_)
                                                 (let ((_hd159445159471_
                                                        (##car _bind-rest159440159450_))
                                                       (_tl159446159473_
                                                        (##cdr _bind-rest159440159450_)))
                                                   (if (##pair? _hd159445159471_)
                                                       (let ((_hd159447159476_
                                                              (##car _hd159445159471_))
                                                             (_tl159448159478_
                                                              (##cdr _hd159445159471_)))
                                                         (let* ((_key159481_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd159447159476_)
                        (_bind159483_ _tl159448159478_)
                        (_bind-rest159485_ _tl159446159473_))
                   (_K159444159468_
                    _bind-rest159485_
                    _bind159483_
                    _key159481_)))
               (_else159442159458_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_else159442159458_)))))
                                       (_E159211159423_))
                                   (_E159211159423_)))))
                       (_E159210159487_))))
                  (_export-imports159057_
                   (lambda (_src159081_ _r159082_)
                     (letrec* ((_current-ctx159084_
                                (gx#current-expander-context))
                               (_current-phi159085_
                                (gx#current-export-expander-phi))
                               (_import->export159086_
                                (lambda (_in159167_)
                                  (let* ((_in159168159176_ _in159167_)
                                         (_E159170159180_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _in159168159176_)))
                                         (_K159171159187_
                                          (lambda (_phi159183_
                                                   _key159184_
                                                   _out159185_)
                                            (##structure
                                             gx#module-export::t
                                             _current-ctx159084_
                                             _key159184_
                                             _phi159183_
                                             _key159184_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _in159168159176_
                                         'gx#module-import::t)
                                        (let* ((_e159172159190_
                                                (##unchecked-structure-ref
                                                 _in159168159176_
                                                 '1
                                                 gx#module-import::t
                                                 '#f))
                                               (_out159193_ _e159172159190_)
                                               (_e159173159195_
                                                (##unchecked-structure-ref
                                                 _in159168159176_
                                                 '2
                                                 gx#module-import::t
                                                 '#f))
                                               (_key159198_ _e159173159195_)
                                               (_e159174159200_
                                                (##unchecked-structure-ref
                                                 _in159168159176_
                                                 '3
                                                 gx#module-import::t
                                                 '#f))
                                               (_phi159203_ _e159174159200_))
                                          (_K159171159187_
                                           _phi159203_
                                           _key159198_
                                           _out159193_))
                                        (_E159170159180_)))))
                               (_fold-e159087_
                                (lambda (_in159089_ _r159090_)
                                  (let* ((_in159091159105_ _in159089_)
                                         (_else159094159113_
                                          (lambda () _r159090_)))
                                    (let ((_K159100159149_
                                           (lambda (_phi159145_
                                                    _key159146_
                                                    _out159147_)
                                             (if (and (fx= _phi159145_
                                                           _current-phi159085_)
                                                      (eq? _src159081_
                                                           (##unchecked-structure-ref
                                                            _out159147_
                                                            '1
                                                            gx#module-export::t
                                                            '#f)))
                                                 (cons (_import->export159086_
                                                        _in159089_)
                                                       _r159090_)
                                                 _r159090_)))
                                          (_K159096159124_
                                           (lambda (_imports159117_
                                                    _phi159118_
                                                    _ctx159119_)
                                             (if (and (fx= _phi159118_
                                                           _current-phi159085_)
                                                      (eq? _src159081_
                                                           _ctx159119_))
                                                 (foldl1 (lambda (_in159121_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r159122_)
                   (cons (_import->export159086_ _in159121_) _r159122_))
                 _r159090_
                 _imports159117_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _r159090_))))
                                      (let ((_try-match159093159142_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _in159091159105_
                                                    'gx#import-set::t)
                                                   (let* ((_e159097159127_
                                                           (##unchecked-structure-ref
                                                            _in159091159105_
                                                            '1
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e159098159132_
                                                           (##unchecked-structure-ref
                                                            _in159091159105_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e159099159137_
                                                           (##unchecked-structure-ref
                                                            _in159091159105_
                                                            '3
                                                            gx#import-set::t
                                                            '#f)))
                                                     (let ((_ctx159130_
                                                            _e159097159127_)
                                                           (_phi159135_
                                                            _e159098159132_)
                                                           (_imports159140_
                                                            _e159099159137_))
                                                       (_K159096159124_
                                                        _imports159140_
                                                        _phi159135_
                                                        _ctx159130_)))
                                                   (_else159094159113_)))))
                                        (if (##structure-direct-instance-of?
                                             _in159091159105_
                                             'gx#module-import::t)
                                            (let* ((_e159101159152_
                                                    (##unchecked-structure-ref
                                                     _in159091159105_
                                                     '1
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e159102159157_
                                                    (##unchecked-structure-ref
                                                     _in159091159105_
                                                     '2
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e159103159162_
                                                    (##unchecked-structure-ref
                                                     _in159091159105_
                                                     '3
                                                     gx#module-import::t
                                                     '#f)))
                                              (let ((_out159155_
                                                     _e159101159152_)
                                                    (_key159160_
                                                     _e159102159157_)
                                                    (_phi159165_
                                                     _e159103159162_))
                                                (_K159100159149_
                                                 _phi159165_
                                                 _key159160_
                                                 _out159155_)))
                                            (_try-match159093159142_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _src159081_
                              _current-phi159085_
                              (foldl1 _fold-e159087_
                                      '()
                                      (##unchecked-structure-ref
                                       _current-ctx159084_
                                       '8
                                       gx#module-context::t
                                       '#f)))
                             _r159082_))))
                  (_export!159058_
                   (lambda (_rbody159071_)
                     (letrec* ((_current-ctx159073_
                                (gx#current-expander-context))
                               (_fold-e159074_
                                (lambda (_out159078_ _r159079_)
                                  (if (##structure-direct-instance-of?
                                       _out159078_
                                       'gx#module-export::t)
                                      (cons _out159078_ _r159079_)
                                      (if (##structure-direct-instance-of?
                                           _out159078_
                                           'gx#export-set::t)
                                          (foldl1 cons
                                                  _r159079_
                                                  (##unchecked-structure-ref
                                                   _out159078_
                                                   '3
                                                   gx#export-set::t
                                                   '#f))
                                          _r159079_)))))
                       (let ((_body159076_ (reverse _rbody159071_)))
                         (##unchecked-structure-set!
                          _current-ctx159073_
                          (foldl1 _fold-e159074_
                                  (##unchecked-structure-ref
                                   _current-ctx159073_
                                   '9
                                   gx#module-context::t
                                   '#f)
                                  _body159076_)
                          '9
                          gx#module-context::t
                          '#f)
                         _body159076_))))
                  (_expanded-export?159059_
                   (lambda (_e159066_)
                     (let ((_$e159068_
                            (##structure-direct-instance-of?
                             _e159066_
                             'gx#module-export::t)))
                       (if _$e159068_
                           _$e159068_
                           (##structure-direct-instance-of?
                            _e159066_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _internal-expand?159053_)
              (let ((_rbody159064_
                     (gx#core-expand-import/export
                      _stx159052_
                      _expanded-export?159059_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _expand1159056_)))
                (if _internal-expand?159053_
                    (reverse _rbody159064_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons '%#export (_export!159058_ _rbody159064_))
                     (gx#stx-source _stx159052_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _stx159052_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _stx159052_))))))
    (define gx#core-expand-export%__0
      (lambda (_stx159537_)
        (let ((_internal-expand?159539_ '#f))
          (gx#core-expand-export%__% _stx159537_ _internal-expand?159539_))))
    (define gx#core-expand-export%
      (lambda _g167071_
        (let ((_g167070_ (##length _g167071_)))
          (cond ((##fx= _g167070_ 1)
                 (apply (lambda (_stx159537_)
                          (gx#core-expand-export%__0 _stx159537_))
                        _g167071_))
                ((##fx= _g167070_ 2)
                 (apply (lambda (_stx159541_ _internal-expand?159542_)
                          (gx#core-expand-export%__%
                           _stx159541_
                           _internal-expand?159542_))
                        _g167071_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g167071_))))))
    (define gx#core-expand-export-source
      (lambda (_hd159049_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _hd159049_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_stx159019_)
        (let* ((_e159020159027_ _stx159019_)
               (_E159022159031_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e159020159027_)))
               (_E159021159045_
                (lambda ()
                  (if (gx#stx-pair? _e159020159027_)
                      (let ((_e159023159035_ (gx#syntax-e _e159020159027_)))
                        (let ((_hd159024159038_ (##car _e159023159035_))
                              (_tl159025159040_ (##cdr _e159023159035_)))
                          (let ((_body159043_ _tl159025159040_))
                            (if (gx#identifier-list? _body159043_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _body159043_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _body159043_))
                                   (gx#stx-source _stx159019_)))
                                (_E159022159031_)))))
                      (_E159022159031_)))))
          (_E159021159045_))))
    (define gx#core-bind-feature!__%
      (lambda (_id158985_ _private?158986_ _phi158987_ _ctx158988_)
        (gx#core-bind-syntax!__%
         _id158985_
         ((if _private?158986_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _id158985_))
         _private?158986_
         _phi158987_
         _ctx158988_)))
    (define gx#core-bind-feature!__0
      (lambda (_id158993_)
        (let* ((_private?158995_ '#f)
               (_phi158997_ (gx#current-expander-phi))
               (_ctx158999_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id158993_
           _private?158995_
           _phi158997_
           _ctx158999_))))
    (define gx#core-bind-feature!__1
      (lambda (_id159001_ _private?159002_)
        (let* ((_phi159004_ (gx#current-expander-phi))
               (_ctx159006_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id159001_
           _private?159002_
           _phi159004_
           _ctx159006_))))
    (define gx#core-bind-feature!__2
      (lambda (_id159008_ _private?159009_ _phi159010_)
        (let ((_ctx159012_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id159008_
           _private?159009_
           _phi159010_
           _ctx159012_))))
    (define gx#core-bind-feature!
      (lambda _g167073_
        (let ((_g167072_ (##length _g167073_)))
          (cond ((##fx= _g167072_ 1)
                 (apply (lambda (_id158993_)
                          (gx#core-bind-feature!__0 _id158993_))
                        _g167073_))
                ((##fx= _g167072_ 2)
                 (apply (lambda (_id159001_ _private?159002_)
                          (gx#core-bind-feature!__1
                           _id159001_
                           _private?159002_))
                        _g167073_))
                ((##fx= _g167072_ 3)
                 (apply (lambda (_id159008_ _private?159009_ _phi159010_)
                          (gx#core-bind-feature!__2
                           _id159008_
                           _private?159009_
                           _phi159010_))
                        _g167073_))
                ((##fx= _g167072_ 4)
                 (apply (lambda (_id159014_
                                 _private?159015_
                                 _phi159016_
                                 _ctx159017_)
                          (gx#core-bind-feature!__%
                           _id159014_
                           _private?159015_
                           _phi159016_
                           _ctx159017_))
                        _g167073_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g167073_))))))))
