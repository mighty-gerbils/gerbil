(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1707740668)
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
      (lambda _$args162398_
        (apply make-instance gx#module-import::t _$args162398_)))
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
      (lambda _$args162395_
        (apply make-instance gx#module-export::t _$args162395_)))
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
      (lambda _$args162392_
        (apply make-instance gx#import-set::t _$args162392_)))
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
      (lambda _$args162389_
        (apply make-instance gx#export-set::t _$args162389_)))
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
      (lambda _$args162386_
        (apply make-instance gx#import-expander::t _$args162386_)))
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
      (lambda _$args162383_
        (apply make-instance gx#export-expander::t _$args162383_)))
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
      (lambda _$args162380_
        (apply make-instance gx#import-export-expander::t _$args162380_)))
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
      (lambda (_path162377_ _fun162378_)
        (call-with-input-file
         (cons 'path: (cons _path162377_ gx#source-file-settings))
         _fun162378_)))
    (define gx#module-context:::init!
      (lambda (_self162371_ _id162372_ _super162373_ _ns162374_ _path162375_)
        (if (##fx< '11 (##structure-length _self162371_))
            (begin
              (##unchecked-structure-set!
               _self162371_
               _id162372_
               '1
               (##structure-type _self162371_)
               '#f)
              (##unchecked-structure-set!
               _self162371_
               (make-table 'test: eq?)
               '2
               (##structure-type _self162371_)
               '#f)
              (##unchecked-structure-set!
               _self162371_
               _super162373_
               '3
               (##structure-type _self162371_)
               '#f)
              (##unchecked-structure-set!
               _self162371_
               '#f
               '4
               (##structure-type _self162371_)
               '#f)
              (##unchecked-structure-set!
               _self162371_
               '#f
               '5
               (##structure-type _self162371_)
               '#f)
              (##unchecked-structure-set!
               _self162371_
               _ns162374_
               '6
               (##structure-type _self162371_)
               '#f)
              (##unchecked-structure-set!
               _self162371_
               _path162375_
               '7
               (##structure-type _self162371_)
               '#f)
              (##unchecked-structure-set!
               _self162371_
               '()
               '8
               (##structure-type _self162371_)
               '#f)
              (##unchecked-structure-set!
               _self162371_
               '()
               '9
               (##structure-type _self162371_)
               '#f)
              (##unchecked-structure-set!
               _self162371_
               '#f
               '10
               (##structure-type _self162371_)
               '#f)
              (##unchecked-structure-set!
               _self162371_
               '#f
               '11
               (##structure-type _self162371_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self162371_
                   '11
                   (##vector-length _self162371_)))))
    (bind-method! gx#module-context::t ':init! gx#module-context:::init! '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_self162215_ _ctx162216_ _root162217_)
        (let ((_super162225_
               (let ((_$e162219_ _root162217_))
                 (if _$e162219_
                     _$e162219_
                     (let ((_$e162222_ (gx#core-context-root__0)))
                       (if _$e162222_
                           _$e162222_
                           (let ((__obj167008
                                  (##structure gx#root-context::t '#f '#f)))
                             (let ((__constructor167009
                                    (direct-method-ref
                                     gx#root-context::t
                                     ':init!)))
                               (if __constructor167009
                                   (__constructor167009 __obj167008)
                                   (error '"missing constructor method implementation"
                                          'class:
                                          gx#root-context::t
                                          'method:
                                          ':init!)))
                             __obj167008)))))))
          (if _ctx162216_
              (let ((_id162228_
                     (##structure-ref
                      _ctx162216_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_path162229_
                     (##structure-ref _ctx162216_ '7 gx#module-context::t '#f))
                    (_in162230_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _ctx162216_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_e162231_
                     (make-promise (lambda () (gx#eval-module _ctx162216_)))))
                (if (##fx< '8 (##structure-length _self162215_))
                    (begin
                      (##unchecked-structure-set!
                       _self162215_
                       _id162228_
                       '1
                       (##structure-type _self162215_)
                       '#f)
                      (##unchecked-structure-set!
                       _self162215_
                       (make-table 'test: eq? 'size: (length _in162230_))
                       '2
                       (##structure-type _self162215_)
                       '#f)
                      (##unchecked-structure-set!
                       _self162215_
                       _super162225_
                       '3
                       (##structure-type _self162215_)
                       '#f)
                      (##unchecked-structure-set!
                       _self162215_
                       '#f
                       '4
                       (##structure-type _self162215_)
                       '#f)
                      (##unchecked-structure-set!
                       _self162215_
                       '#f
                       '5
                       (##structure-type _self162215_)
                       '#f)
                      (##unchecked-structure-set!
                       _self162215_
                       _path162229_
                       '6
                       (##structure-type _self162215_)
                       '#f)
                      (##unchecked-structure-set!
                       _self162215_
                       _in162230_
                       '7
                       (##structure-type _self162215_)
                       '#f)
                      (##unchecked-structure-set!
                       _self162215_
                       _e162231_
                       '8
                       (##structure-type _self162215_)
                       '#f))
                    (error '"struct-instance-init!: too many arguments for struct"
                           _self162215_
                           '8
                           (##vector-length _self162215_)))
                (for-each
                 (lambda (_g162232162234_)
                   (gx#core-bind-weak-import!__% _g162232162234_ _self162215_))
                 _in162230_))
              (if (##fx< '8 (##structure-length _self162215_))
                  (begin
                    (##unchecked-structure-set!
                     _self162215_
                     '#f
                     '1
                     (##structure-type _self162215_)
                     '#f)
                    (##unchecked-structure-set!
                     _self162215_
                     (make-table 'test: eq?)
                     '2
                     (##structure-type _self162215_)
                     '#f)
                    (##unchecked-structure-set!
                     _self162215_
                     _super162225_
                     '3
                     (##structure-type _self162215_)
                     '#f)
                    (##unchecked-structure-set!
                     _self162215_
                     '#f
                     '4
                     (##structure-type _self162215_)
                     '#f)
                    (##unchecked-structure-set!
                     _self162215_
                     '#f
                     '5
                     (##structure-type _self162215_)
                     '#f)
                    (##unchecked-structure-set!
                     _self162215_
                     '#f
                     '6
                     (##structure-type _self162215_)
                     '#f)
                    (##unchecked-structure-set!
                     _self162215_
                     '()
                     '7
                     (##structure-type _self162215_)
                     '#f)
                    (##unchecked-structure-set!
                     _self162215_
                     '#f
                     '8
                     (##structure-type _self162215_)
                     '#f))
                  (error '"struct-instance-init!: too many arguments for struct"
                         _self162215_
                         '8
                         (##vector-length _self162215_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_self162240_ _ctx162241_)
        (let ((_root162243_ '#f))
          (gx#prelude-context:::init!__%
           _self162240_
           _ctx162241_
           _root162243_))))
    (define gx#prelude-context:::init!
      (lambda _g167015_
        (let ((_g167014_ (##length _g167015_)))
          (cond ((##fx= _g167014_ 2)
                 (apply (lambda (_self162240_ _ctx162241_)
                          (gx#prelude-context:::init!__0
                           _self162240_
                           _ctx162241_))
                        _g167015_))
                ((##fx= _g167014_ 3)
                 (apply (lambda (_self162245_ _ctx162246_ _root162247_)
                          (gx#prelude-context:::init!__%
                           _self162245_
                           _ctx162246_
                           _root162247_))
                        _g167015_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g167015_))))))
    (bind-method! gx#prelude-context::t ':init! gx#prelude-context:::init! '#f)
    (define gx#import-export-expander-init!
      (lambda (_self162089_ _e162090_)
        (if (##fx< '3 (##structure-length _self162089_))
            (begin
              (##unchecked-structure-set!
               _self162089_
               _e162090_
               '1
               (##structure-type _self162089_)
               '#f)
              (##unchecked-structure-set!
               _self162089_
               (gx#current-expander-context)
               '2
               (##structure-type _self162089_)
               '#f)
              (##unchecked-structure-set!
               _self162089_
               (fx- (gx#current-expander-phi) '1)
               '3
               (##structure-type _self162089_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self162089_
                   '3
                   (##vector-length _self162089_)))))
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
      (lambda (_g161715161718_ _g161716161720_)
        (gx#core-apply-user-expander__%
         _g161715161718_
         _g161716161720_
         'apply-import-expander)))
    (bind-method!
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_g161586161589_ _g161587161591_)
        (gx#core-apply-user-expander__%
         _g161586161589_
         _g161587161591_
         'apply-export-expander)))
    (bind-method!
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_ctx161457_)
        (let* ((_path161459_
                (##structure-ref _ctx161457_ '7 gx#module-context::t '#f))
               (_path161461_
                (if (pair? _path161459_) (last _path161459_) _path161459_)))
          (if (string? _path161461_) _path161461_ '#f))))
    (define gx#import-module__%
      (lambda (_path161433_ _reload?161434_ _eval?161435_)
        (let ((_ctx161437_
               ((gx#current-expander-module-import)
                _path161433_
                _reload?161434_)))
          (if (and _ctx161437_ _eval?161435_)
              (gx#eval-module _ctx161437_)
              '#!void)
          _ctx161437_)))
    (define gx#import-module__0
      (lambda (_path161442_)
        (let* ((_reload?161444_ '#f) (_eval?161446_ '#f))
          (gx#import-module__% _path161442_ _reload?161444_ _eval?161446_))))
    (define gx#import-module__1
      (lambda (_path161448_ _reload?161449_)
        (let ((_eval?161451_ '#f))
          (gx#import-module__% _path161448_ _reload?161449_ _eval?161451_))))
    (define gx#import-module
      (lambda _g167017_
        (let ((_g167016_ (##length _g167017_)))
          (cond ((##fx= _g167016_ 1)
                 (apply (lambda (_path161442_)
                          (gx#import-module__0 _path161442_))
                        _g167017_))
                ((##fx= _g167016_ 2)
                 (apply (lambda (_path161448_ _reload?161449_)
                          (gx#import-module__1 _path161448_ _reload?161449_))
                        _g167017_))
                ((##fx= _g167016_ 3)
                 (apply (lambda (_path161453_ _reload?161454_ _eval?161455_)
                          (gx#import-module__%
                           _path161453_
                           _reload?161454_
                           _eval?161455_))
                        _g167017_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g167017_))))))
    (define gx#eval-module
      (lambda (_mod161430_) ((gx#current-expander-module-eval) _mod161430_)))
    (define gx#core-eval-module
      (lambda (_obj161415_)
        (letrec ((_force-e161417_
                  (lambda (_getf161426_ _e161427_)
                    (call-with-parameters
                     (lambda () (force (_getf161426_ _e161427_)))
                     gx#current-expander-context
                     _e161427_
                     gx#current-expander-phi
                     '0))))
          (let _recur161419_ ((_e161421_ _obj161415_))
            (if (##structure-instance-of? _e161421_ 'gx#module-context::t)
                (begin
                  (let ((_$e161423_ (gx#core-context-prelude__% _e161421_)))
                    (if _$e161423_ (_recur161419_ _$e161423_) '#!void))
                  (_force-e161417_ gx#module-context-e _e161421_))
                (if (##structure-instance-of? _e161421_ 'gx#prelude-context::t)
                    (_force-e161417_ gx#prelude-context-e _e161421_)
                    (if (gx#stx-string? _e161421_)
                        (_recur161419_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _e161421_)))
                        (if (gx#core-library-module-path? _e161421_)
                            (_recur161419_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _e161421_)))
                            (error '"Cannot eval module" _obj161415_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_ctx161398_)
        (let _lp161400_ ((_e161402_ _ctx161398_))
          (if (or (##structure-instance-of? _e161402_ 'gx#module-context::t)
                  (##structure-instance-of? _e161402_ 'gx#local-context::t))
              (_lp161400_
               (##unchecked-structure-ref _e161402_ '3 gx#phi-context::t '#f))
              (if (##structure-instance-of? _e161402_ 'gx#prelude-context::t)
                  _e161402_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_ctx161411_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _ctx161411_))))
    (define gx#core-context-prelude
      (lambda _g167019_
        (let ((_g167018_ (##length _g167019_)))
          (cond ((##fx= _g167018_ 0)
                 (apply (lambda () (gx#core-context-prelude__0)) _g167019_))
                ((##fx= _g167018_ 1)
                 (apply (lambda (_ctx161413_)
                          (gx#core-context-prelude__% _ctx161413_))
                        _g167019_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g167019_))))))
    (define gx#core-module->prelude-context
      (lambda (_ctx161388_)
        (let* ((_ht161390_ (gx#current-expander-module-registry))
               (_$e161392_ (table-ref _ht161390_ _ctx161388_ '#f)))
          (if _$e161392_
              (values _$e161392_)
              (let ((_pre161395_
                     (let ((__obj167010
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
                       (gx#prelude-context:::init! __obj167010 _ctx161388_)
                       __obj167010)))
                (table-set! _ht161390_ _ctx161388_ _pre161395_)
                _pre161395_)))))
    (define gx#core-import-module__%
      (lambda (_rpath161269_ _reload?161270_)
        (letrec ((_import-source161272_
                  (lambda (_path161357_)
                    (if (member _path161357_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _path161357_)
                        '#!void)
                    (call-with-parameters
                     (lambda ()
                       (let ((_g167020_ (gx#core-read-module _path161357_)))
                         (begin
                           (let ((_g167021_
                                  (if (##values? _g167020_)
                                      (##vector-length _g167020_)
                                      1)))
                             (if (not (##fx= _g167021_ 4))
                                 (error "Context expects 4 values" _g167021_)))
                           (let ((_pre161360_ (##vector-ref _g167020_ 0))
                                 (_id161361_ (##vector-ref _g167020_ 1))
                                 (_ns161362_ (##vector-ref _g167020_ 2))
                                 (_body161363_ (##vector-ref _g167020_ 3)))
                             (let* ((_prelude161368_
                                     (if (##structure-instance-of?
                                          _pre161360_
                                          'gx#prelude-context::t)
                                         _pre161360_
                                         (if (##structure-instance-of?
                                              _pre161360_
                                              'gx#module-context::t)
                                             (gx#core-module->prelude-context
                                              _pre161360_)
                                             (if (string? _pre161360_)
                                                 (gx#core-module->prelude-context
                                                  (gx#core-import-module__0
                                                   _pre161360_))
                                                 (if (not _pre161360_)
                                                     (let ((_$e161365_
                                                            (gx#current-expander-module-prelude)))
                                                       (if _$e161365_
                                                           _$e161365_
                                                           (let ((__obj167011
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
                     (gx#prelude-context:::init! __obj167011 '#f)
                     __obj167011)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error '"Cannot import module; unknown prelude"
                                                            _rpath161269_
                                                            _pre161360_))))))
                                    (_ctx161370_
                                     (let ((__obj167012
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
                                        __obj167012
                                        _id161361_
                                        _prelude161368_
                                        _ns161362_
                                        _path161357_)
                                       __obj167012))
                                    (_body161372_
                                     (gx#core-expand-module-begin
                                      _body161363_
                                      _ctx161370_))
                                    (_body161374_
                                     (gx#core-quote-syntax__%
                                      (gx#core-cons '%#begin _body161372_)
                                      _path161357_
                                      _ctx161370_
                                      '())))
                               (##unchecked-structure-set!
                                _ctx161370_
                                (make-promise
                                 (lambda () (gx#eval-syntax* _body161374_)))
                                '10
                                gx#module-context::t
                                '#f)
                               (##unchecked-structure-set!
                                _ctx161370_
                                _body161374_
                                '11
                                gx#module-context::t
                                '#f)
                               (table-set!
                                (gx#current-expander-module-registry)
                                _path161357_
                                _ctx161370_)
                               (table-set!
                                (gx#current-expander-module-registry)
                                _id161361_
                                _ctx161370_)
                               _ctx161370_)))))
                     gx#current-expander-context
                     (gx#core-context-root__0)
                     gx#current-expander-marks
                     '()
                     gx#current-expander-phi
                     '0
                     gx#current-expander-path
                     (cons _path161357_ (gx#current-expander-path))
                     gx#current-import-expander-phi
                     '#f
                     gx#current-export-expander-phi
                     '#f)))
                 (_import-submodule161273_
                  (lambda (_rpath161285_)
                    (let* ((_rpath161286161293_ _rpath161285_)
                           (_E161288161297_
                            (lambda ()
                              (error '"No clause matching"
                                     _rpath161286161293_)))
                           (_K161289161345_
                            (lambda (_refs161300_ _origin161301_)
                              (let ((_ctx161303_
                                     (if _origin161301_
                                         (gx#core-import-module__%
                                          _origin161301_
                                          _reload?161270_)
                                         (gx#current-expander-context))))
                                (let _lp161305_ ((_rest161307_ _refs161300_)
                                                 (_ctx161308_ _ctx161303_))
                                  (let* ((_rest161309161317_ _rest161307_)
                                         (_else161311161325_
                                          (lambda () _ctx161308_))
                                         (_K161313161333_
                                          (lambda (_rest161328_ _id161329_)
                                            (let ((_bind161331_
                                                   (gx#resolve-identifier__%
                                                    _id161329_
                                                    '0
                                                    _ctx161308_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _bind161331_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _bind161331_
                                                         '4
                                                         gx#syntax-binding::t
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_lp161305_
                                                   _rest161328_
                                                   (##unchecked-structure-ref
                                                    _bind161331_
                                                    '4
                                                    gx#syntax-binding::t
                                                    '#f))
                                                  (error '"Cannot import submodule; not bound as a module"
                                                         _rpath161285_
                                                         _id161329_
                                                         _bind161331_))))))
                                    (if (##pair? _rest161309161317_)
                                        (let ((_hd161314161336_
                                               (##car _rest161309161317_))
                                              (_tl161315161338_
                                               (##cdr _rest161309161317_)))
                                          (let* ((_id161341_ _hd161314161336_)
                                                 (_rest161343_
                                                  _tl161315161338_))
                                            (_K161313161333_
                                             _rest161343_
                                             _id161341_)))
                                        (_else161311161325_))))))))
                      (if (##pair? _rpath161286161293_)
                          (let ((_hd161290161348_ (##car _rpath161286161293_))
                                (_tl161291161350_ (##cdr _rpath161286161293_)))
                            (let* ((_origin161353_ _hd161290161348_)
                                   (_refs161355_ _tl161291161350_))
                              (_K161289161345_ _refs161355_ _origin161353_)))
                          (_E161288161297_))))))
          (let ((_$e161275_
                 (if (not _reload?161270_)
                     (table-ref
                      (gx#current-expander-module-registry)
                      _rpath161269_
                      '#f)
                     '#f)))
            (if _$e161275_
                (values _$e161275_)
                (if (list? _rpath161269_)
                    (_import-submodule161273_ _rpath161269_)
                    (if (gx#core-library-module-path? _rpath161269_)
                        (let ((_ctx161278_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _rpath161269_)
                                _reload?161270_)))
                          (table-set!
                           (gx#current-expander-module-registry)
                           _rpath161269_
                           _ctx161278_)
                          _ctx161278_)
                        (let* ((_npath161280_ (path-normalize _rpath161269_))
                               (_$e161282_
                                (if (not _reload?161270_)
                                    (table-ref
                                     (gx#current-expander-module-registry)
                                     _npath161280_
                                     '#f)
                                    '#f)))
                          (if _$e161282_
                              (values _$e161282_)
                              (_import-source161272_ _npath161280_))))))))))
    (define gx#core-import-module__0
      (lambda (_rpath161381_)
        (let ((_reload?161383_ '#f))
          (gx#core-import-module__% _rpath161381_ _reload?161383_))))
    (define gx#core-import-module
      (lambda _g167023_
        (let ((_g167022_ (##length _g167023_)))
          (cond ((##fx= _g167022_ 1)
                 (apply (lambda (_rpath161381_)
                          (gx#core-import-module__0 _rpath161381_))
                        _g167023_))
                ((##fx= _g167022_ 2)
                 (apply (lambda (_rpath161385_ _reload?161386_)
                          (gx#core-import-module__%
                           _rpath161385_
                           _reload?161386_))
                        _g167023_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g167023_))))))
    (define gx#core-read-module
      (lambda (_path161258_)
        (with-catch
         (lambda (_exn161260_)
           (if (and (datum-parsing-exception? _exn161260_)
                    (eq? (datum-parsing-exception-filepos _exn161260_) '0))
               (gx#core-read-module/lang _path161258_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _path161258_
                (call-with-parameters
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_g161262161264_)
                      (display-exception _exn161260_ _g161262161264_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _path161258_)))))
    (define gx#core-read-module/sexp
      (lambda (_path161121_)
        (let _lp161123_ ((_body161125_ (read-syntax-from-file _path161121_))
                         (_pre161126_ '#f)
                         (_ns161127_ '#f)
                         (_pkg161128_ '#f))
          (let* ((_e161129161153_ _body161125_)
                 (_E161145161175_
                  (lambda ()
                    (let ((_g167024_
                           (if _pkg161128_
                               (values _pre161126_ _ns161127_ _pkg161128_)
                               (gx#core-read-module-package
                                _path161121_
                                _pre161126_
                                _ns161127_))))
                      (begin
                        (let ((_g167025_
                               (if (##values? _g167024_)
                                   (##vector-length _g167024_)
                                   1)))
                          (if (not (##fx= _g167025_ 3))
                              (error "Context expects 3 values" _g167025_)))
                        (let ((_pre161157_ (##vector-ref _g167024_ 0))
                              (_ns161158_ (##vector-ref _g167024_ 1))
                              (_pkg161159_ (##vector-ref _g167024_ 2)))
                          (let* ((_prelude161161_
                                  (if (gx#core-bound-module-prelude?
                                       _pre161157_)
                                      (gx#syntax-local-e__0 _pre161157_)
                                      (if (gx#core-library-module-path?
                                           _pre161157_)
                                          (gx#core-resolve-library-module-path
                                           _pre161157_)
                                          (if (gx#stx-string? _pre161157_)
                                              (gx#core-resolve-module-path__%
                                               _pre161157_
                                               _path161121_)
                                              (gx#stx-e _pre161157_)))))
                                 (_path-id161163_
                                  (gx#core-module-path->namespace
                                   _path161121_))
                                 (_pkg-id161165_
                                  (if _pkg161159_
                                      (string-append
                                       _pkg161159_
                                       '"/"
                                       _path-id161163_)
                                      _path-id161163_))
                                 (_module-id161167_
                                  (string->symbol _pkg-id161165_))
                                 (_module-ns161172_
                                  (if (eq? _ns161158_ '#!void)
                                      '#f
                                      (let ((_$e161169_ _ns161158_))
                                        (if _$e161169_
                                            _$e161169_
                                            _pkg-id161165_)))))
                            (values _prelude161161_
                                    _module-id161167_
                                    _module-ns161172_
                                    _body161125_)))))))
                 (_E161138161204_
                  (lambda ()
                    (if (gx#stx-pair? _e161129161153_)
                        (let ((_e161146161179_ (gx#syntax-e _e161129161153_)))
                          (let ((_hd161147161182_ (##car _e161146161179_))
                                (_tl161148161184_ (##cdr _e161146161179_)))
                            (if (eq? (gx#stx-e _hd161147161182_) 'package:)
                                (if (gx#stx-pair? _tl161148161184_)
                                    (let ((_e161149161187_
                                           (gx#syntax-e _tl161148161184_)))
                                      (let ((_hd161150161190_
                                             (##car _e161149161187_))
                                            (_tl161151161192_
                                             (##cdr _e161149161187_)))
                                        (let* ((_pkg161195_ _hd161150161190_)
                                               (_rest161197_ _tl161151161192_))
                                          (if '#t
                                              (let ((_pkg161202_
                                                     (if (gx#identifier?
                                                          _pkg161195_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _pkg161195_))
                                                         (if (or (gx#stx-string?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _pkg161195_)
                         (gx#stx-false? _pkg161195_))
                     (gx#stx-e _pkg161195_)
                     (gx#raise-syntax-error
                      'import
                      '"Bad syntax; Illegal package name"
                      _pkg161195_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp161123_
                                                 _rest161197_
                                                 _pre161126_
                                                 _ns161127_
                                                 _pkg161202_))
                                              (_E161145161175_)))))
                                    (_E161145161175_))
                                (_E161145161175_))))
                        (_E161145161175_))))
                 (_E161131161230_
                  (lambda ()
                    (if (gx#stx-pair? _e161129161153_)
                        (let ((_e161139161208_ (gx#syntax-e _e161129161153_)))
                          (let ((_hd161140161211_ (##car _e161139161208_))
                                (_tl161141161213_ (##cdr _e161139161208_)))
                            (if (eq? (gx#stx-e _hd161140161211_) 'namespace:)
                                (if (gx#stx-pair? _tl161141161213_)
                                    (let ((_e161142161216_
                                           (gx#syntax-e _tl161141161213_)))
                                      (let ((_hd161143161219_
                                             (##car _e161142161216_))
                                            (_tl161144161221_
                                             (##cdr _e161142161216_)))
                                        (let* ((_ns161224_ _hd161143161219_)
                                               (_rest161226_ _tl161144161221_))
                                          (if '#t
                                              (let ((_ns161228_
                                                     (if (gx#identifier?
                                                          _ns161224_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _ns161224_))
                                                         (if (gx#stx-string?
                                                              _ns161224_)
                                                             (gx#stx-e
                                                              _ns161224_)
                                                             (if (gx#stx-false?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _ns161224_)
                         '#!void
                         (gx#raise-syntax-error
                          'import
                          '"Bad syntax; illegal namespace"
                          _ns161224_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp161123_
                                                 _rest161226_
                                                 _pre161126_
                                                 _ns161228_
                                                 _pkg161128_))
                                              (_E161138161204_)))))
                                    (_E161138161204_))
                                (_E161138161204_))))
                        (_E161138161204_))))
                 (_E161130161254_
                  (lambda ()
                    (if (gx#stx-pair? _e161129161153_)
                        (let ((_e161132161234_ (gx#syntax-e _e161129161153_)))
                          (let ((_hd161133161237_ (##car _e161132161234_))
                                (_tl161134161239_ (##cdr _e161132161234_)))
                            (if (eq? (gx#stx-e _hd161133161237_) 'prelude:)
                                (if (gx#stx-pair? _tl161134161239_)
                                    (let ((_e161135161242_
                                           (gx#syntax-e _tl161134161239_)))
                                      (let ((_hd161136161245_
                                             (##car _e161135161242_))
                                            (_tl161137161247_
                                             (##cdr _e161135161242_)))
                                        (let* ((_prelude161250_
                                                _hd161136161245_)
                                               (_rest161252_ _tl161137161247_))
                                          (if '#t
                                              (_lp161123_
                                               _rest161252_
                                               _prelude161250_
                                               _ns161127_
                                               _pkg161128_)
                                              (_E161131161230_)))))
                                    (_E161131161230_))
                                (_E161131161230_))))
                        (_E161131161230_)))))
            (_E161130161254_)))))
    (define gx#core-read-module/lang
      (lambda (_path160948_)
        (letrec ((_default-read-module-body160950_
                  (lambda (_inp161113_)
                    (let _lp161115_ ((_body161117_ '()))
                      (let ((_next161119_ (read-syntax _inp161113_)))
                        (if (eof-object? _next161119_)
                            (reverse _body161117_)
                            (_lp161115_ (cons _next161119_ _body161117_)))))))
                 (_read-body160951_
                  (lambda (_inp161032_
                           _pre161033_
                           _ns161034_
                           _pkg161035_
                           _args161036_)
                    (let ((_g167026_
                           (if _pkg161035_
                               (values _pre161033_ _ns161034_ _pkg161035_)
                               (gx#core-read-module-package
                                _path160948_
                                _pre161033_
                                _ns161034_))))
                      (begin
                        (let ((_g167027_
                               (if (##values? _g167026_)
                                   (##vector-length _g167026_)
                                   1)))
                          (if (not (##fx= _g167027_ 3))
                              (error "Context expects 3 values" _g167027_)))
                        (let ((_pre161038_ (##vector-ref _g167026_ 0))
                              (_ns161039_ (##vector-ref _g167026_ 1))
                              (_pkg161040_ (##vector-ref _g167026_ 2)))
                          (let* ((_prelude161042_
                                  (gx#import-module__0 _pre161038_))
                                 (_read-module-body161096_
                                  (let ((_$e161088_
                                         (find (lambda (_e161043161045_)
                                                 (let* ((_g161047161057_
                                                         _e161043161045_)
                                                        (_else161049161065_
                                                         (lambda () '#f))
                                                        (_K161051161069_
                                                         (lambda () '#t)))
                                                   (if (##structure-direct-instance-of?
                                                        _g161047161057_
                                                        'gx#module-export::t)
                                                       (let* ((_e161052161072_
                                                               (##unchecked-structure-ref
                                                                _g161047161057_
                                                                '1
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e161053161075_
                                                               (##unchecked-structure-ref
                                                                _g161047161057_
                                                                '2
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e161054161078_
                                                               (##unchecked-structure-ref
                                                                _g161047161057_
                                                                '3
                                                                gx#module-export::t
                                                                '#f)))
                                                         (if (##eq? _e161054161078_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)
                     (let ((_e161055161081_
                            (##unchecked-structure-ref
                             _g161047161057_
                             '4
                             gx#module-export::t
                             '#f)))
                       (if ((lambda (_g161083161085_)
                              (eq? _g161083161085_ 'read-module-body))
                            _e161055161081_)
                           (_K161051161069_)
                           (_else161049161065_)))
                     (_else161049161065_)))
               (_else161049161065_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (##unchecked-structure-ref
                                                _prelude161042_
                                                '9
                                                gx#module-context::t
                                                '#f))))
                                    (if _$e161088_
                                        ((lambda (_xport161091_)
                                           (let ((_proc161094_
                                                  (with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _xport161091_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _proc161094_)
                                                 _proc161094_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _path160948_
                                                  _pre161038_
                                                  _proc161094_))))
                                         _$e161088_)
                                        _default-read-module-body160950_)))
                                 (_path-id161098_
                                  (gx#core-module-path->namespace
                                   _path160948_))
                                 (_pkg-id161100_
                                  (if _pkg161040_
                                      (string-append
                                       _pkg161040_
                                       '"/"
                                       _path-id161098_)
                                      _path-id161098_))
                                 (_module-id161102_
                                  (string->symbol _pkg-id161100_))
                                 (_module-ns161107_
                                  (let ((_$e161104_ _ns161039_))
                                    (if _$e161104_ _$e161104_ _pkg-id161100_)))
                                 (_body161110_
                                  (call-with-parameters
                                   (lambda ()
                                     (_read-module-body161096_ _inp161032_))
                                   gx#current-module-reader-path
                                   _path160948_
                                   gx#current-module-reader-args
                                   _args161036_)))
                            (values _prelude161042_
                                    _module-id161102_
                                    _module-ns161107_
                                    _body161110_)))))))
                 (_string-e160952_
                  (lambda (_obj161029_ _what161030_)
                    (if (string? _obj161029_)
                        _obj161029_
                        (if (symbol? _obj161029_)
                            (symbol->string _obj161029_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _what161030_)
                             _path160948_
                             _obj161029_)))))
                 (_read-lang-args160953_
                  (lambda (_inp160984_ _args160985_)
                    (let* ((_args160986160994_ _args160985_)
                           (_else160988161002_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _path160948_)))
                           (_K160990161017_
                            (lambda (_args161005_ _prelude161006_)
                              (let* ((_pkg161008_
                                      (pgetq 'package: _args161005_))
                                     (_pkg161010_
                                      (if _pkg161008_
                                          (_string-e160952_
                                           _pkg161008_
                                           '"package")
                                          '#f))
                                     (_ns161012_
                                      (pgetq 'namespace: _args161005_))
                                     (_ns161014_
                                      (if _ns161012_
                                          (_string-e160952_
                                           _ns161012_
                                           '"namespace")
                                          '#f)))
                                (_read-body160951_
                                 _inp160984_
                                 _prelude161006_
                                 _ns161014_
                                 _pkg161010_
                                 _args161005_)))))
                      (if (##pair? _args160986160994_)
                          (let ((_hd160991161020_ (##car _args160986160994_))
                                (_tl160992161022_ (##cdr _args160986160994_)))
                            (let* ((_prelude161025_ _hd160991161020_)
                                   (_args161027_ _tl160992161022_))
                              (_K160990161017_ _args161027_ _prelude161025_)))
                          (_else160988161002_)))))
                 (_read-lang160954_
                  (lambda (_inp160959_)
                    (let* ((_head160961_ (read-line _inp160959_))
                           (_$e160963_ (string-index _head160961_ '#\space)))
                      (if _$e160963_
                          ((lambda (_ix160966_)
                             (let ((_lang160968_
                                    (substring _head160961_ '0 _ix160966_)))
                               (if (equal? _lang160968_ '"#lang")
                                   (let* ((_rest160970_
                                           (substring
                                            _head160961_
                                            (fx+ _ix160966_ '1)
                                            (string-length _head160961_)))
                                          (_args160981_
                                           (with-catch
                                            (lambda (_g160971160973_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _path160948_
                                               _g160971160973_))
                                            (lambda ()
                                              (call-with-input-string
                                               _rest160970_
                                               (lambda (_g160976160978_)
                                                 (read-all
                                                  _g160976160978_
                                                  read)))))))
                                     (_read-lang-args160953_
                                      _inp160959_
                                      _args160981_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _path160948_))))
                           _$e160963_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _path160948_)))))
                 (_read-e160955_
                  (lambda (_inp160957_)
                    (if (eq? (peek-char _inp160957_) '#\#)
                        (_read-lang160954_ _inp160957_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _path160948_)))))
          (gx#call-with-input-source-file _path160948_ _read-e160955_))))
    (define gx#core-read-module-package
      (lambda (_path160902_ _pre160903_ _ns160904_)
        (letrec ((_string-e160906_
                  (lambda (_e160946_)
                    (if (symbol? _e160946_)
                        (symbol->string _e160946_)
                        (if (string? _e160946_)
                            _e160946_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _e160946_))))))
          (let _lp160908_ ((_dir160910_ (path-directory _path160902_))
                           (_pkg-path160911_ '()))
            (let ((_gerbil.pkg160913_ (path-expand '"gerbil.pkg" _dir160910_)))
              (if (file-exists? _gerbil.pkg160913_)
                  (let ((_plist160915_
                         (gx#core-library-package-plist__% _dir160910_ '#t)))
                    (if (null? _plist160915_)
                        (let ((_pkg160917_
                               (if (not (null? _pkg-path160911_))
                                   (string-join _pkg-path160911_ '"/")
                                   '#f)))
                          (values _pre160903_ _ns160904_ _pkg160917_))
                        (if (list? _plist160915_)
                            (let* ((_root160919_
                                    (pgetq 'package: _plist160915_))
                                   (_pkg160923_
                                    (let ((_pkg-path160921_
                                           (if _root160919_
                                               (cons (_string-e160906_
                                                      _root160919_)
                                                     _pkg-path160911_)
                                               _pkg-path160911_)))
                                      (if (not (null? _pkg-path160921_))
                                          (string-join _pkg-path160921_ '"/")
                                          '#f)))
                                   (_ns160930_
                                    (let ((_ns160928_
                                           (let ((_$e160925_ _ns160904_))
                                             (if _$e160925_
                                                 _$e160925_
                                                 (pgetq 'namespace:
                                                        _plist160915_)))))
                                      (if _ns160928_
                                          (_string-e160906_ _ns160928_)
                                          '#f)))
                                   (_pre160935_
                                    (let ((_$e160932_ _pre160903_))
                                      (if _$e160932_
                                          _$e160932_
                                          (pgetq 'prelude: _plist160915_)))))
                              (values _pre160935_ _ns160930_ _pkg160923_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _plist160915_))))
                  (let ((_dir*160938_
                         (path-strip-trailing-directory-separator
                          _dir160910_)))
                    (if (or (string-empty? _dir*160938_)
                            (equal? _dir160910_ _dir*160938_))
                        (values _pre160903_ _ns160904_ '#f)
                        (let ((_xpath160943_
                               (path-strip-directory _dir*160938_))
                              (_xdir160944_ (path-directory _dir*160938_)))
                          (_lp160908_
                           _xdir160944_
                           (cons _xpath160943_ _pkg-path160911_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_path160900_)
        (path-strip-extension (path-strip-directory _path160900_))))
    (define gx#core-module-path->id
      (lambda (_path160898_)
        (string->symbol (gx#core-module-path->namespace _path160898_))))
    (define gx#core-resolve-module-path__%
      (lambda (_stx-path160877_ _rel160878_)
        (let* ((_path160880_ (gx#stx-e _stx-path160877_))
               (_path160882_
                (if (string-empty? (path-extension _path160880_))
                    (string-append _path160880_ '".ss")
                    _path160880_)))
          (gx#core-resolve-path__%
           _path160882_
           (let ((_$e160885_ (gx#stx-source _stx-path160877_)))
             (if _$e160885_ _$e160885_ _rel160878_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_stx-path160891_)
        (let ((_rel160893_ '#f))
          (gx#core-resolve-module-path__% _stx-path160891_ _rel160893_))))
    (define gx#core-resolve-module-path
      (lambda _g167029_
        (let ((_g167028_ (##length _g167029_)))
          (cond ((##fx= _g167028_ 1)
                 (apply (lambda (_stx-path160891_)
                          (gx#core-resolve-module-path__0 _stx-path160891_))
                        _g167029_))
                ((##fx= _g167028_ 2)
                 (apply (lambda (_stx-path160895_ _rel160896_)
                          (gx#core-resolve-module-path__%
                           _stx-path160895_
                           _rel160896_))
                        _g167029_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g167029_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_libpath160763_)
        (let* ((_spath160765_ (symbol->string (gx#stx-e _libpath160763_)))
               (_spath160767_
                (substring _spath160765_ '1 (string-length _spath160765_)))
               (_ext160769_ (path-extension _spath160767_))
               (_ssi160771_
                (if (string-empty? _ext160769_)
                    (string-append _spath160767_ '".ssi")
                    (string-append
                     (path-strip-extension _spath160767_)
                     '".ssi")))
               (_srcs160775_
                (if (string-empty? _ext160769_)
                    (map (lambda (_ext160773_)
                           (string-append _spath160767_ _ext160773_))
                         '(".ss" ".sld" ".scm"))
                    (cons _spath160767_ '()))))
          (let _lp160778_ ((_rest160780_
                            (gx#current-expander-module-library-path)))
            (let* ((_rest160781160790_ _rest160780_)
                   (_E160784160794_
                    (lambda ()
                      (error '"No clause matching" _rest160781160790_))))
              (let ((_K160786160864_
                     (lambda (_rest160805_ _dir160806_)
                       (letrec ((_resolve160808_
                                 (lambda (_ssi160820_ _srcs160821_)
                                   (let ((_compiled-path160823_
                                          (path-expand
                                           _ssi160820_
                                           _dir160806_)))
                                     (if (file-exists? _compiled-path160823_)
                                         (path-normalize _compiled-path160823_)
                                         (let _lpr160825_ ((_rest-src160827_
                                                            _srcs160821_))
                                           (let* ((_rest-src160828160836_
                                                   _rest-src160827_)
                                                  (_else160830160844_
                                                   (lambda ()
                                                     (_lp160778_
                                                      _rest160805_)))
                                                  (_K160832160852_
                                                   (lambda (_rest-src160847_
                                                            _src160848_)
                                                     (let ((_src-path160850_
                                                            (path-expand
                                                             _src160848_
                                                             _dir160806_)))
                                                       (if (file-exists?
                                                            _src-path160850_)
                                                           (path-normalize
                                                            _src-path160850_)
                                                           (_lpr160825_
                                                            _rest-src160847_))))))
                                             (if (##pair? _rest-src160828160836_)
                                                 (let ((_hd160833160855_
                                                        (##car _rest-src160828160836_))
                                                       (_tl160834160857_
                                                        (##cdr _rest-src160828160836_)))
                                                   (let* ((_src160860_
                                                           _hd160833160855_)
                                                          (_rest-src160862_
                                                           _tl160834160857_))
                                                     (_K160832160852_
                                                      _rest-src160862_
                                                      _src160860_)))
                                                 (_else160830160844_)))))))))
                         (let ((_$e160810_
                                (gx#core-library-package-path-prefix
                                 _dir160806_)))
                           (if _$e160810_
                               ((lambda (_prefix160813_)
                                  (if (string-prefix?
                                       _prefix160813_
                                       _spath160767_)
                                      (let ((_ssi160817_
                                             (substring
                                              _ssi160771_
                                              (string-length _prefix160813_)
                                              (string-length _ssi160771_)))
                                            (_srcs160818_
                                             (map (lambda (_src160815_)
                                                    (substring
                                                     _src160815_
                                                     (string-length
                                                      _prefix160813_)
                                                     (string-length
                                                      _src160815_)))
                                                  _srcs160775_)))
                                        (_resolve160808_
                                         _ssi160817_
                                         _srcs160818_))
                                      (_lp160778_ _rest160805_)))
                                _$e160810_)
                               (_resolve160808_ _ssi160771_ _srcs160775_))))))
                    (_K160785160799_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"Cannot find library module"
                        _libpath160763_))))
                (let ((_try-match160783160802_
                       (lambda ()
                         (if (##null? _rest160781160790_)
                             (_K160785160799_)
                             (_E160784160794_)))))
                  (if (##pair? _rest160781160790_)
                      (let ((_tl160788160869_ (##cdr _rest160781160790_))
                            (_hd160787160867_ (##car _rest160781160790_)))
                        (let ((_dir160872_ _hd160787160867_)
                              (_rest160874_ _tl160788160869_))
                          (_K160786160864_ _rest160874_ _dir160872_)))
                      (_try-match160783160802_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_modpath160736_)
        (letrec ((_resolve160738_
                  (lambda (_path160755_ _base160756_)
                    (let ((_$e160758_ (string-rindex _base160756_ '#\/)))
                      (if _$e160758_
                          ((lambda (_idx160761_)
                             (gx#core-resolve-library-module-path
                              (string->symbol
                               (string-append
                                '":"
                                (substring _base160756_ '0 _idx160761_)
                                '"/"
                                _path160755_))))
                           _$e160758_)
                          (gx#core-resolve-library-module-path
                           (string->symbol
                            (string-append '":" _path160755_))))))))
          (let ((_spath160740_ (symbol->string (gx#stx-e _modpath160736_)))
                (_mod160741_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _mod160741_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"Cannot resolve relative module path; not in module context"
                 _modpath160736_))
            (let ((_mpath160743_
                   (symbol->string
                    (##structure-ref
                     _mod160741_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _lp160745_ ((_spath160747_ _spath160740_)
                               (_mpath160748_ _mpath160743_))
                (if (string-prefix? '"../" _spath160747_)
                    (let ((_$e160750_ (string-rindex _mpath160748_ '#\/)))
                      (if _$e160750_
                          ((lambda (_idx160753_)
                             (_lp160745_
                              (substring
                               _spath160747_
                               '3
                               (string-length _spath160747_))
                              (substring _mpath160748_ '0 _idx160753_)))
                           _$e160750_)
                          (gx#raise-syntax-error
                           '#f
                           '"Cannot resolve relative module path; illegal traversal"
                           _modpath160736_)))
                    (if (string-prefix? '"./" _spath160747_)
                        (_lp160745_
                         (substring
                          _spath160747_
                          '2
                          (string-length _spath160747_))
                         _mpath160748_)
                        (_resolve160738_ _spath160747_ _mpath160748_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_dir160729_)
        (let ((_$e160731_
               (pgetq 'package:
                      (gx#core-library-package-plist__0 _dir160729_))))
          (if _$e160731_
              ((lambda (_pkg160734_)
                 (string-append (symbol->string _pkg160734_) '"/"))
               _$e160731_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_dir160701_ _exists?160702_)
        (let* ((_cache160704_ (gx#core-library-package-cache))
               (_$e160706_ (table-ref _cache160704_ _dir160701_ '#f)))
          (if _$e160706_
              (values _$e160706_)
              (let* ((_gerbil.pkg160709_
                      (path-expand '"gerbil.pkg" _dir160701_))
                     (_plist160716_
                      (if (or _exists?160702_
                              (file-exists? _gerbil.pkg160709_))
                          (let ((_e160714_
                                 (gx#call-with-input-source-file
                                  _gerbil.pkg160709_
                                  read)))
                            (if (eof-object? _e160714_)
                                '()
                                (if (list? _e160714_)
                                    _e160714_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _gerbil.pkg160709_
                                     _e160714_))))
                          '())))
                (table-set! _cache160704_ _dir160701_ _plist160716_)
                _plist160716_)))))
    (define gx#core-library-package-plist__0
      (lambda (_dir160722_)
        (let ((_exists?160724_ '#f))
          (gx#core-library-package-plist__% _dir160722_ _exists?160724_))))
    (define gx#core-library-package-plist
      (lambda _g167031_
        (let ((_g167030_ (##length _g167031_)))
          (cond ((##fx= _g167030_ 1)
                 (apply (lambda (_dir160722_)
                          (gx#core-library-package-plist__0 _dir160722_))
                        _g167031_))
                ((##fx= _g167030_ 2)
                 (apply (lambda (_dir160726_ _exists?160727_)
                          (gx#core-library-package-plist__%
                           _dir160726_
                           _exists?160727_))
                        _g167031_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g167031_))))))
    (define gx#core-library-package-cache
      (lambda ()
        (let ((_$e160695_ (gx#current-expander-module-library-package-cache)))
          (if _$e160695_
              (values _$e160695_)
              (let ((_cache160698_ (make-table)))
                (gx#current-expander-module-library-package-cache
                 _cache160698_)
                _cache160698_)))))
    (define gx#core-library-module-path?
      (lambda (_stx160692_) (gx#core-special-module-path? _stx160692_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_stx160690_) (gx#core-special-module-path? _stx160690_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_stx160685_ _char160686_)
        (if (gx#identifier? _stx160685_)
            (if (interned-symbol? (gx#stx-e _stx160685_))
                (let ((_str160688_ (symbol->string (gx#stx-e _stx160685_))))
                  (if (fx> (string-length _str160688_) '1)
                      (eq? (string-ref _str160688_ '0) _char160686_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_stx160679_)
        (gx#core-bound-identifier?__%
         _stx160679_
         (lambda (_g160680160682_)
           (gx#expander-binding?__% _g160680160682_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_stx160673_)
        (gx#core-bound-identifier?__%
         _stx160673_
         (lambda (_g160674160676_)
           (gx#expander-binding?__% _g160674160676_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_stx160660_)
        (letrec ((_module-prelude?160662_
                  (lambda (_e160668_)
                    (let ((_$e160670_
                           (##structure-instance-of?
                            _e160668_
                            'gx#module-context::t)))
                      (if _$e160670_
                          _$e160670_
                          (##structure-instance-of?
                           _e160668_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _stx160660_
           (lambda (_g160663160665_)
             (gx#expander-binding?__%
              _g160663160665_
              _module-prelude?160662_))))))
    (define gx#core-bind-import!__%
      (lambda (_in160590_ _ctx160591_ _force-weak?160592_)
        (let* ((_in160593160602_ _in160590_)
               (_E160595160606_
                (lambda () (error '"No clause matching" _in160593160602_)))
               (_K160596160619_
                (lambda (_weak?160609_ _phi160610_ _key160611_ _source160612_)
                  (gx#core-bind!__%
                   _key160611_
                   (let ((_e160614_
                          (gx#core-resolve-module-export _source160612_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref
                       _e160614_
                       '1
                       gx#binding::t
                       '#f)
                      _key160611_
                      _phi160610_
                      _e160614_
                      (##unchecked-structure-ref
                       _source160612_
                       '1
                       gx#module-export::t
                       '#f)
                      (let ((_$e160616_ _force-weak?160592_))
                        (if _$e160616_ _$e160616_ _weak?160609_))))
                   gx#core-context-rebind?
                   _phi160610_
                   _ctx160591_))))
          (if (##structure-direct-instance-of?
               _in160593160602_
               'gx#module-import::t)
              (let* ((_e160597160622_
                      (##unchecked-structure-ref
                       _in160593160602_
                       '1
                       gx#module-import::t
                       '#f))
                     (_source160625_ _e160597160622_)
                     (_e160598160627_
                      (##unchecked-structure-ref
                       _in160593160602_
                       '2
                       gx#module-import::t
                       '#f))
                     (_key160630_ _e160598160627_)
                     (_e160599160632_
                      (##unchecked-structure-ref
                       _in160593160602_
                       '3
                       gx#module-import::t
                       '#f))
                     (_phi160635_ _e160599160632_)
                     (_e160600160637_
                      (##unchecked-structure-ref
                       _in160593160602_
                       '4
                       gx#module-import::t
                       '#f))
                     (_weak?160640_ _e160600160637_))
                (_K160596160619_
                 _weak?160640_
                 _phi160635_
                 _key160630_
                 _source160625_))
              (_E160595160606_)))))
    (define gx#core-bind-import!__0
      (lambda (_in160645_)
        (let* ((_ctx160647_ (gx#current-expander-context))
               (_force-weak?160649_ '#f))
          (gx#core-bind-import!__%
           _in160645_
           _ctx160647_
           _force-weak?160649_))))
    (define gx#core-bind-import!__1
      (lambda (_in160651_ _ctx160652_)
        (let ((_force-weak?160654_ '#f))
          (gx#core-bind-import!__%
           _in160651_
           _ctx160652_
           _force-weak?160654_))))
    (define gx#core-bind-import!
      (lambda _g167033_
        (let ((_g167032_ (##length _g167033_)))
          (cond ((##fx= _g167032_ 1)
                 (apply (lambda (_in160645_)
                          (gx#core-bind-import!__0 _in160645_))
                        _g167033_))
                ((##fx= _g167032_ 2)
                 (apply (lambda (_in160651_ _ctx160652_)
                          (gx#core-bind-import!__1 _in160651_ _ctx160652_))
                        _g167033_))
                ((##fx= _g167032_ 3)
                 (apply (lambda (_in160656_ _ctx160657_ _force-weak?160658_)
                          (gx#core-bind-import!__%
                           _in160656_
                           _ctx160657_
                           _force-weak?160658_))
                        _g167033_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g167033_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_in160576_ _ctx160577_)
        (gx#core-bind-import!__% _in160576_ _ctx160577_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_in160582_)
        (let ((_ctx160584_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _in160582_ _ctx160584_))))
    (define gx#core-bind-weak-import!
      (lambda _g167035_
        (let ((_g167034_ (##length _g167035_)))
          (cond ((##fx= _g167034_ 1)
                 (apply (lambda (_in160582_)
                          (gx#core-bind-weak-import!__0 _in160582_))
                        _g167035_))
                ((##fx= _g167034_ 2)
                 (apply (lambda (_in160586_ _ctx160587_)
                          (gx#core-bind-weak-import!__%
                           _in160586_
                           _ctx160587_))
                        _g167035_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g167035_))))))
    (define gx#core-resolve-module-export
      (lambda (_out160467_)
        (letrec ((_subst160469_
                  (lambda (_key160515_)
                    (let* ((_key160516160524_ _key160515_)
                           (_else160518160532_ (lambda () _key160515_))
                           (_K160520160563_
                            (lambda (_mark160535_ _id160536_)
                              (let* ((_mark160537160543_ _mark160535_)
                                     (_E160539160547_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark160537160543_)))
                                     (_K160540160555_
                                      (lambda (_subst160550_)
                                        (let ((_$e160552_
                                               (if _subst160550_
                                                   (table-ref
                                                    _subst160550_
                                                    _id160536_
                                                    '#f)
                                                   '#f)))
                                          (if _$e160552_
                                              _$e160552_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _key160515_))))))
                                (if (##structure-instance-of?
                                     _mark160537160543_
                                     'gx#expander-mark::t)
                                    (let* ((_e160541160558_
                                            (##unchecked-structure-ref
                                             _mark160537160543_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst160561_ _e160541160558_))
                                      (_K160540160555_ _subst160561_))
                                    (_E160539160547_))))))
                      (if (##pair? _key160516160524_)
                          (let ((_hd160521160566_ (##car _key160516160524_))
                                (_tl160522160568_ (##cdr _key160516160524_)))
                            (let* ((_id160571_ _hd160521160566_)
                                   (_mark160573_ _tl160522160568_))
                              (_K160520160563_ _mark160573_ _id160571_)))
                          (_else160518160532_))))))
          (let* ((_out160470160480_ _out160467_)
                 (_E160472160484_
                  (lambda () (error '"No clause matching" _out160470160480_)))
                 (_K160473160491_
                  (lambda (_phi160487_ _key160488_ _ctx160489_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _ctx160489_ _phi160487_)
                     (_subst160469_ _key160488_)))))
            (if (##structure-direct-instance-of?
                 _out160470160480_
                 'gx#module-export::t)
                (let* ((_e160474160494_
                        (##unchecked-structure-ref
                         _out160470160480_
                         '1
                         gx#module-export::t
                         '#f))
                       (_ctx160497_ _e160474160494_)
                       (_e160475160499_
                        (##unchecked-structure-ref
                         _out160470160480_
                         '2
                         gx#module-export::t
                         '#f))
                       (_key160502_ _e160475160499_)
                       (_e160476160504_
                        (##unchecked-structure-ref
                         _out160470160480_
                         '3
                         gx#module-export::t
                         '#f))
                       (_phi160507_ _e160476160504_)
                       (_e160477160509_
                        (##unchecked-structure-ref
                         _out160470160480_
                         '4
                         gx#module-export::t
                         '#f))
                       (_e160478160512_
                        (##unchecked-structure-ref
                         _out160470160480_
                         '5
                         gx#module-export::t
                         '#f)))
                  (_K160473160491_ _phi160507_ _key160502_ _ctx160497_))
                (_E160472160484_))))))
    (define gx#core-module-export->import__%
      (lambda (_out160392_ _rename160393_ _dphi160394_)
        (let* ((_out160395160405_ _out160392_)
               (_E160397160409_
                (lambda () (error '"No clause matching" _out160395160405_)))
               (_K160398160421_
                (lambda (_weak?160412_
                         _name160413_
                         _phi160414_
                         _key160415_
                         _ctx160416_)
                  (##structure
                   gx#module-import::t
                   _out160392_
                   (let ((_$e160418_ _rename160393_))
                     (if _$e160418_ _$e160418_ _name160413_))
                   (fx+ _phi160414_ _dphi160394_)
                   _weak?160412_))))
          (if (##structure-direct-instance-of?
               _out160395160405_
               'gx#module-export::t)
              (let* ((_e160399160424_
                      (##unchecked-structure-ref
                       _out160395160405_
                       '1
                       gx#module-export::t
                       '#f))
                     (_ctx160427_ _e160399160424_)
                     (_e160400160429_
                      (##unchecked-structure-ref
                       _out160395160405_
                       '2
                       gx#module-export::t
                       '#f))
                     (_key160432_ _e160400160429_)
                     (_e160401160434_
                      (##unchecked-structure-ref
                       _out160395160405_
                       '3
                       gx#module-export::t
                       '#f))
                     (_phi160437_ _e160401160434_)
                     (_e160402160439_
                      (##unchecked-structure-ref
                       _out160395160405_
                       '4
                       gx#module-export::t
                       '#f))
                     (_name160442_ _e160402160439_)
                     (_e160403160444_
                      (##unchecked-structure-ref
                       _out160395160405_
                       '5
                       gx#module-export::t
                       '#f))
                     (_weak?160447_ _e160403160444_))
                (_K160398160421_
                 _weak?160447_
                 _name160442_
                 _phi160437_
                 _key160432_
                 _ctx160427_))
              (_E160397160409_)))))
    (define gx#core-module-export->import__0
      (lambda (_out160452_)
        (let* ((_rename160454_ '#f) (_dphi160456_ '0))
          (gx#core-module-export->import__%
           _out160452_
           _rename160454_
           _dphi160456_))))
    (define gx#core-module-export->import__1
      (lambda (_out160458_ _rename160459_)
        (let ((_dphi160461_ '0))
          (gx#core-module-export->import__%
           _out160458_
           _rename160459_
           _dphi160461_))))
    (define gx#core-module-export->import
      (lambda _g167037_
        (let ((_g167036_ (##length _g167037_)))
          (cond ((##fx= _g167036_ 1)
                 (apply (lambda (_out160452_)
                          (gx#core-module-export->import__0 _out160452_))
                        _g167037_))
                ((##fx= _g167036_ 2)
                 (apply (lambda (_out160458_ _rename160459_)
                          (gx#core-module-export->import__1
                           _out160458_
                           _rename160459_))
                        _g167037_))
                ((##fx= _g167036_ 3)
                 (apply (lambda (_out160463_ _rename160464_ _dphi160465_)
                          (gx#core-module-export->import__%
                           _out160463_
                           _rename160464_
                           _dphi160465_))
                        _g167037_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g167037_))))))
    (define gx#core-expand-module%
      (lambda (_stx160320_)
        (letrec ((_make-context160322_
                  (lambda (_id160373_)
                    (let* ((_super160375_ (gx#current-expander-context))
                           (_bind-id160377_ (gx#stx-e _id160373_))
                           (_mod-id160379_
                            (if (##structure-instance-of?
                                 _super160375_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##structure-ref
                                  _super160375_
                                  '1
                                  gx#expander-context::t
                                  '#f)
                                 '"$"
                                 _bind-id160377_)
                                _bind-id160377_))
                           (_ns160381_ (symbol->string _mod-id160379_))
                           (_path160388_
                            (if (##structure-instance-of?
                                 _super160375_
                                 'gx#module-context::t)
                                (let ((_path160383_
                                       (##unchecked-structure-ref
                                        _super160375_
                                        '7
                                        gx#module-context::t
                                        '#f)))
                                  (if (or (pair? _path160383_)
                                          (null? _path160383_))
                                      (cons _bind-id160377_ _path160383_)
                                      (if (not _path160383_)
                                          _bind-id160377_
                                          (cons _bind-id160377_
                                                (cons _path160383_ '())))))
                                _bind-id160377_)))
                      (let ((__obj167013
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
                         __obj167013
                         _mod-id160379_
                         _super160375_
                         _ns160381_
                         _path160388_)
                        __obj167013)))))
          (let* ((_e160323160333_ _stx160320_)
                 (_E160325160337_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e160323160333_)))
                 (_E160324160369_
                  (lambda ()
                    (if (gx#stx-pair? _e160323160333_)
                        (let ((_e160326160341_ (gx#syntax-e _e160323160333_)))
                          (let ((_hd160327160344_ (##car _e160326160341_))
                                (_tl160328160346_ (##cdr _e160326160341_)))
                            (if (gx#stx-pair? _tl160328160346_)
                                (let ((_e160329160349_
                                       (gx#syntax-e _tl160328160346_)))
                                  (let ((_hd160330160352_
                                         (##car _e160329160349_))
                                        (_tl160331160354_
                                         (##cdr _e160329160349_)))
                                    (let* ((_id160357_ _hd160330160352_)
                                           (_body160359_ _tl160331160354_))
                                      (if (and (gx#identifier? _id160357_)
                                               (gx#stx-list? _body160359_))
                                          (let* ((_ctx160361_
                                                  (_make-context160322_
                                                   _id160357_))
                                                 (_body160363_
                                                  (gx#core-expand-module-begin
                                                   _body160359_
                                                   _ctx160361_))
                                                 (_body160365_
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body160363_)
                                                   (gx#stx-source
                                                    _stx160320_))))
                                            (##unchecked-structure-set!
                                             _ctx160361_
                                             (make-promise
                                              (lambda ()
                                                (gx#eval-syntax*
                                                 _body160365_)))
                                             '10
                                             gx#module-context::t
                                             '#f)
                                            (##unchecked-structure-set!
                                             _ctx160361_
                                             _body160365_
                                             '11
                                             gx#module-context::t
                                             '#f)
                                            (gx#core-bind-syntax!__0
                                             _id160357_
                                             _ctx160361_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-list
                                              '%#module
                                              (gx#core-quote-syntax__0
                                               _id160357_)
                                              _body160365_)
                                             (gx#stx-source _stx160320_)))
                                          (_E160325160337_)))))
                                (_E160325160337_))))
                        (_E160325160337_)))))
            (_E160324160369_)))))
    (define gx#core-expand-module-begin
      (lambda (_body160286_ _ctx160287_)
        (call-with-parameters
         (lambda ()
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_stx160290_
                   (gx#core-expand-head (cons '%%begin-module _body160286_)))
                  (_e160291160298_ _stx160290_)
                  (_E160293160302_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _stx160290_)))
                  (_E160292160316_
                   (lambda ()
                     (if (gx#stx-pair? _e160291160298_)
                         (let ((_e160294160306_ (gx#syntax-e _e160291160298_)))
                           (let ((_hd160295160309_ (##car _e160294160306_))
                                 (_tl160296160311_ (##cdr _e160294160306_)))
                             (if (and (gx#identifier? _hd160295160309_)
                                      (gx#core-identifier=?
                                       _hd160295160309_
                                       '%#begin-module))
                                 (let ((_body160314_ _tl160296160311_))
                                   (if '#t
                                       (if (gx#sealed-syntax? _stx160290_)
                                           _body160314_
                                           (gx#core-expand-module-body
                                            _body160314_))
                                       (_E160293160302_)))
                                 (_E160293160302_))))
                         (_E160293160302_)))))
             (_E160292160316_)))
         gx#current-expander-context
         _ctx160287_
         gx#current-expander-phi
         '0)))
    (define gx#core-expand-module-body
      (lambda (_body160082_)
        (letrec ((_expand-special160084_
                  (lambda (_hd160213_ _K160214_ _rest160215_ _r160216_)
                    (let* ((_e160217160234_ _hd160213_)
                           (_E160229160238_
                            (lambda ()
                              (_K160214_
                               _rest160215_
                               (cons (gx#core-expand-top _hd160213_)
                                     _r160216_))))
                           (_E160219160250_
                            (lambda ()
                              (if (gx#stx-pair? _e160217160234_)
                                  (let ((_e160230160242_
                                         (gx#syntax-e _e160217160234_)))
                                    (let ((_hd160231160245_
                                           (##car _e160230160242_))
                                          (_tl160232160247_
                                           (##cdr _e160230160242_)))
                                      (if (and (gx#identifier?
                                                _hd160231160245_)
                                               (gx#core-identifier=?
                                                _hd160231160245_
                                                '%#export))
                                          (if '#t
                                              (_K160214_
                                               _rest160215_
                                               (cons _hd160213_ _r160216_))
                                              (_E160229160238_))
                                          (_E160229160238_))))
                                  (_E160229160238_))))
                           (_E160218160282_
                            (lambda ()
                              (if (gx#stx-pair? _e160217160234_)
                                  (let ((_e160220160254_
                                         (gx#syntax-e _e160217160234_)))
                                    (let ((_hd160221160257_
                                           (##car _e160220160254_))
                                          (_tl160222160259_
                                           (##cdr _e160220160254_)))
                                      (if (and (gx#identifier?
                                                _hd160221160257_)
                                               (gx#core-identifier=?
                                                _hd160221160257_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl160222160259_)
                                              (let ((_e160223160262_
                                                     (gx#syntax-e
                                                      _tl160222160259_)))
                                                (let ((_hd160224160265_
                                                       (##car _e160223160262_))
                                                      (_tl160225160267_
                                                       (##cdr _e160223160262_)))
                                                  (let ((_hd-bind160270_
                                                         _hd160224160265_))
                                                    (if (gx#stx-pair?
                                                         _tl160225160267_)
                                                        (let ((_e160226160272_
                                                               (gx#syntax-e
                                                                _tl160225160267_)))
                                                          (let ((_hd160227160275_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e160226160272_))
                        (_tl160228160277_ (##cdr _e160226160272_)))
                    (let ((_expr160280_ _hd160227160275_))
                      (if (gx#stx-null? _tl160228160277_)
                          (if (gx#core-bind-values? _hd-bind160270_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind160270_)
                                (_K160214_
                                 _rest160215_
                                 (cons _hd160213_ _r160216_)))
                              (_E160219160250_))
                          (_E160219160250_)))))
                (_E160219160250_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E160219160250_))
                                          (_E160219160250_))))
                                  (_E160219160250_)))))
                      (_E160218160282_))))
                 (_expand-body160085_
                  (lambda (_rbody160087_)
                    (let _lp160089_ ((_rest160091_ _rbody160087_)
                                     (_body160092_ '()))
                      (let* ((_rest160093160101_ _rest160091_)
                             (_else160095160109_ (lambda () _body160092_))
                             (_K160097160201_
                              (lambda (_rest160112_ _hd160113_)
                                (let* ((_e160114160135_ _hd160113_)
                                       (_E160130160139_
                                        (lambda ()
                                          (_lp160089_
                                           _rest160112_
                                           (cons (gx#core-expand-expression
                                                  _hd160113_)
                                                 _body160092_))))
                                       (_E160126160153_
                                        (lambda ()
                                          (if (gx#stx-pair? _e160114160135_)
                                              (let ((_e160131160143_
                                                     (gx#syntax-e
                                                      _e160114160135_)))
                                                (let ((_hd160132160146_
                                                       (##car _e160131160143_))
                                                      (_tl160133160148_
                                                       (##cdr _e160131160143_)))
                                                  (let ((_form160151_
                                                         _hd160132160146_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _form160151_
                                                         gx#special-form-binding?)
                                                        (_lp160089_
                                                         _rest160112_
                                                         (cons _hd160113_
                                                               _body160092_))
                                                        (_E160130160139_)))))
                                              (_E160130160139_))))
                                       (_E160116160165_
                                        (lambda ()
                                          (if (gx#stx-pair? _e160114160135_)
                                              (let ((_e160127160157_
                                                     (gx#syntax-e
                                                      _e160114160135_)))
                                                (let ((_hd160128160160_
                                                       (##car _e160127160157_))
                                                      (_tl160129160162_
                                                       (##cdr _e160127160157_)))
                                                  (if (and (gx#identifier?
                                                            _hd160128160160_)
                                                           (gx#core-identifier=?
                                                            _hd160128160160_
                                                            '%#export))
                                                      (if '#t
                                                          (_lp160089_
                                                           _rest160112_
                                                           (cons (gx#core-expand-export%__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd160113_)
                         _body160092_))
                  (_E160126160153_))
              (_E160126160153_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E160126160153_))))
                                       (_E160115160197_
                                        (lambda ()
                                          (if (gx#stx-pair? _e160114160135_)
                                              (let ((_e160117160169_
                                                     (gx#syntax-e
                                                      _e160114160135_)))
                                                (let ((_hd160118160172_
                                                       (##car _e160117160169_))
                                                      (_tl160119160174_
                                                       (##cdr _e160117160169_)))
                                                  (if (and (gx#identifier?
                                                            _hd160118160172_)
                                                           (gx#core-identifier=?
                                                            _hd160118160172_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl160119160174_)
                                                          (let ((_e160120160177_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl160119160174_)))
                    (let ((_hd160121160180_ (##car _e160120160177_))
                          (_tl160122160182_ (##cdr _e160120160177_)))
                      (let ((_hd-bind160185_ _hd160121160180_))
                        (if (gx#stx-pair? _tl160122160182_)
                            (let ((_e160123160187_
                                   (gx#syntax-e _tl160122160182_)))
                              (let ((_hd160124160190_ (##car _e160123160187_))
                                    (_tl160125160192_ (##cdr _e160123160187_)))
                                (let ((_expr160195_ _hd160124160190_))
                                  (if (gx#stx-null? _tl160125160192_)
                                      (if '#t
                                          (_lp160089_
                                           _rest160112_
                                           (cons (gx#core-quote-syntax__1
                                                  (gx#core-list
                                                   '%#define-values
                                                   (gx#core-quote-bind-values
                                                    _hd-bind160185_)
                                                   (gx#core-expand-expression
                                                    _expr160195_))
                                                  (gx#stx-source _hd160113_))
                                                 _body160092_))
                                          (_E160116160165_))
                                      (_E160116160165_)))))
                            (_E160116160165_)))))
                  (_E160116160165_))
              (_E160116160165_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E160116160165_)))))
                                  (_E160115160197_)))))
                        (if (##pair? _rest160093160101_)
                            (let ((_hd160098160204_ (##car _rest160093160101_))
                                  (_tl160099160206_
                                   (##cdr _rest160093160101_)))
                              (let* ((_hd160209_ _hd160098160204_)
                                     (_rest160211_ _tl160099160206_))
                                (_K160097160201_ _rest160211_ _hd160209_)))
                            (_else160095160109_)))))))
          (_expand-body160085_
           (gx#core-expand-block__%
            (cons '%#begin-module _body160082_)
            _expand-special160084_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_stx159925_
               _expanded?159926_
               _method159927_
               _current-phi159928_
               _expand1159929_)
        (letrec ((_K159931_
                  (lambda (_rest160049_ _r160050_)
                    (let* ((_e160051160058_ _rest160049_)
                           (_E160053160062_ (lambda () _r160050_))
                           (_E160052160078_
                            (lambda ()
                              (if (gx#stx-pair? _e160051160058_)
                                  (let ((_e160054160066_
                                         (gx#syntax-e _e160051160058_)))
                                    (let ((_hd160055160069_
                                           (##car _e160054160066_))
                                          (_tl160056160071_
                                           (##cdr _e160054160066_)))
                                      (let* ((_hd160074_ _hd160055160069_)
                                             (_rest160076_ _tl160056160071_))
                                        (if '#t
                                            (_step159932_
                                             _hd160074_
                                             _rest160076_
                                             _r160050_)
                                            (_E160053160062_)))))
                                  (_E160053160062_)))))
                      (_E160052160078_))))
                 (_step159932_
                  (lambda (_hd159963_ _rest159964_ _r159965_)
                    (let* ((_e159966159984_ _hd159963_)
                           (_E159979159988_
                            (lambda ()
                              (if (_expanded?159926_ (gx#stx-e _hd159963_))
                                  (_K159931_
                                   _rest159964_
                                   (cons (gx#stx-e _hd159963_) _r159965_))
                                  (_expand1159929_
                                   _hd159963_
                                   _K159931_
                                   _rest159964_
                                   _r159965_))))
                           (_E159975160004_
                            (lambda ()
                              (if (gx#stx-pair? _e159966159984_)
                                  (let ((_e159980159992_
                                         (gx#syntax-e _e159966159984_)))
                                    (let ((_hd159981159995_
                                           (##car _e159980159992_))
                                          (_tl159982159997_
                                           (##cdr _e159980159992_)))
                                      (let* ((_macro160000_ _hd159981159995_)
                                             (_body160002_ _tl159982159997_))
                                        (if (gx#core-bound-identifier?__%
                                             _macro160000_
                                             gx#syntax-binding?)
                                            (_K159931_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _macro160000_)
                                                    _hd159963_
                                                    _method159927_)
                                                   _rest159964_)
                                             _r159965_)
                                            (_E159979159988_)))))
                                  (_E159979159988_))))
                           (_E159968160018_
                            (lambda ()
                              (if (gx#stx-pair? _e159966159984_)
                                  (let ((_e159976160008_
                                         (gx#syntax-e _e159966159984_)))
                                    (let ((_hd159977160011_
                                           (##car _e159976160008_))
                                          (_tl159978160013_
                                           (##cdr _e159976160008_)))
                                      (if (eq? (gx#stx-e _hd159977160011_)
                                               'begin:)
                                          (let ((_body160016_
                                                 _tl159978160013_))
                                            (if '#t
                                                (_K159931_
                                                 (gx#stx-foldr
                                                  cons
                                                  _rest159964_
                                                  _body160016_)
                                                 _r159965_)
                                                (_E159975160004_)))
                                          (_E159975160004_))))
                                  (_E159975160004_))))
                           (_E159967160045_
                            (lambda ()
                              (if (gx#stx-pair? _e159966159984_)
                                  (let ((_e159969160022_
                                         (gx#syntax-e _e159966159984_)))
                                    (let ((_hd159970160025_
                                           (##car _e159969160022_))
                                          (_tl159971160027_
                                           (##cdr _e159969160022_)))
                                      (if (eq? (gx#stx-e _hd159970160025_)
                                               'phi:)
                                          (if (gx#stx-pair? _tl159971160027_)
                                              (let ((_e159972160030_
                                                     (gx#syntax-e
                                                      _tl159971160027_)))
                                                (let ((_hd159973160033_
                                                       (##car _e159972160030_))
                                                      (_tl159974160035_
                                                       (##cdr _e159972160030_)))
                                                  (let* ((_dphi160038_
                                                          _hd159973160033_)
                                                         (_body160040_
                                                          _tl159974160035_))
                                                    (if (gx#stx-fixnum?
                                                         _dphi160038_)
                                                        (let ((_rbody160043_
                                                               (call-with-parameters
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_K159931_ _body160040_ '()))
                        _current-phi159928_
                        (fx+ (gx#stx-e _dphi160038_) (_current-phi159928_)))))
                  (_K159931_
                   _rest159964_
                   (foldr1 cons _r159965_ _rbody160043_)))
                (_E159968160018_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E159968160018_))
                                          (_E159968160018_))))
                                  (_E159968160018_)))))
                      (_E159967160045_)))))
          (let* ((_e159933159940_ _stx159925_)
                 (_E159935159944_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e159933159940_)))
                 (_E159934159959_
                  (lambda ()
                    (if (gx#stx-pair? _e159933159940_)
                        (let ((_e159936159948_ (gx#syntax-e _e159933159940_)))
                          (let ((_hd159937159951_ (##car _e159936159948_))
                                (_tl159938159953_ (##cdr _e159936159948_)))
                            (let ((_body159956_ _tl159938159953_))
                              (if '#t
                                  (if (_current-phi159928_)
                                      (_K159931_ _body159956_ '())
                                      (call-with-parameters
                                       (lambda () (_K159931_ _body159956_ '()))
                                       _current-phi159928_
                                       (gx#current-expander-phi)))
                                  (_E159935159944_)))))
                        (_E159935159944_)))))
            (_E159934159959_)))))
    (define gx#core-expand-import%__%
      (lambda (_stx159592_ _internal-expand?159593_)
        (letrec ((_expand1159595_
                  (lambda (_hd159905_ _K159906_ _rest159907_ _r159908_)
                    (if (gx#core-bound-module? _hd159905_)
                        (_import1159596_
                         (gx#syntax-local-e__0 _hd159905_)
                         _K159906_
                         _rest159907_
                         _r159908_)
                        (if (gx#core-library-module-path? _hd159905_)
                            (_import1159596_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _hd159905_))
                             _K159906_
                             _rest159907_
                             _r159908_)
                            (if (gx#core-library-relative-module-path?
                                 _hd159905_)
                                (_import1159596_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _hd159905_))
                                 _K159906_
                                 _rest159907_
                                 _r159908_)
                                (let ((_e159910_ (gx#stx-e _hd159905_)))
                                  (if (pair? _e159910_)
                                      (let ((_$e159912_
                                             (gx#stx-e (car _e159910_))))
                                        (if (eq? 'spec: _$e159912_)
                                            (_import-spec159599_
                                             _hd159905_
                                             _K159906_
                                             _rest159907_
                                             _r159908_)
                                            (if (eq? 'in: _$e159912_)
                                                (_import-submodule159597_
                                                 _hd159905_
                                                 _K159906_
                                                 _rest159907_
                                                 _r159908_)
                                                (if (eq? 'runtime: _$e159912_)
                                                    (_import-runtime159598_
                                                     _hd159905_
                                                     _K159906_
                                                     _rest159907_
                                                     _r159908_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _stx159592_
                                                     _hd159905_)))))
                                      (if (string? _e159910_)
                                          (_import1159596_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _hd159905_
                                             (gx#stx-source _stx159592_)))
                                           _K159906_
                                           _rest159907_
                                           _r159908_)
                                          (if (##structure-instance-of?
                                               _e159910_
                                               'gx#module-context::t)
                                              (_K159906_
                                               _rest159907_
                                               (cons _e159910_ _r159908_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _stx159592_
                                               _hd159905_))))))))))
                 (_import1159596_
                  (lambda (_ctx159894_ _K159895_ _rest159896_ _r159897_)
                    (let ((_dphi159899_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_K159895_
                       _rest159896_
                       (cons (##structure
                              gx#import-set::t
                              _ctx159894_
                              _dphi159899_
                              (map (lambda (_g159900159902_)
                                     (gx#core-module-export->import__%
                                      _g159900159902_
                                      '#f
                                      _dphi159899_))
                                   (##unchecked-structure-ref
                                    _ctx159894_
                                    '9
                                    gx#module-context::t
                                    '#f)))
                             _r159897_)))))
                 (_import-submodule159597_
                  (lambda (_hd159861_ _K159862_ _rest159863_ _r159864_)
                    (let* ((_e159865159872_ _hd159861_)
                           (_E159867159876_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e159865159872_)))
                           (_E159866159890_
                            (lambda ()
                              (if (gx#stx-pair? _e159865159872_)
                                  (let ((_e159868159880_
                                         (gx#syntax-e _e159865159872_)))
                                    (let ((_hd159869159883_
                                           (##car _e159868159880_))
                                          (_tl159870159885_
                                           (##cdr _e159868159880_)))
                                      (let ((_spath159888_ _tl159870159885_))
                                        (if '#t
                                            (_import1159596_
                                             (_import-spec-source159600_
                                              _spath159888_)
                                             _K159862_
                                             _rest159863_
                                             _r159864_)
                                            (_E159867159876_)))))
                                  (_E159867159876_)))))
                      (_E159866159890_))))
                 (_import-runtime159598_
                  (lambda (_hd159828_ _K159829_ _rest159830_ _r159831_)
                    (let* ((_e159832159839_ _hd159828_)
                           (_E159834159843_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e159832159839_)))
                           (_E159833159857_
                            (lambda ()
                              (if (gx#stx-pair? _e159832159839_)
                                  (let ((_e159835159847_
                                         (gx#syntax-e _e159832159839_)))
                                    (let ((_hd159836159850_
                                           (##car _e159835159847_))
                                          (_tl159837159852_
                                           (##cdr _e159835159847_)))
                                      (let ((_spath159855_ _tl159837159852_))
                                        (if '#t
                                            (_K159829_
                                             _rest159830_
                                             (cons (_import-spec-source159600_
                                                    _spath159855_)
                                                   _r159831_))
                                            (_E159834159843_)))))
                                  (_E159834159843_)))))
                      (_E159833159857_))))
                 (_import-spec159599_
                  (lambda (_hd159667_ _K159668_ _rest159669_ _r159670_)
                    (let* ((_e159671159688_ _hd159667_)
                           (_E159680159692_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e159671159688_)))
                           (_E159673159802_
                            (lambda ()
                              (if (gx#stx-pair? _e159671159688_)
                                  (let ((_e159681159696_
                                         (gx#syntax-e _e159671159688_)))
                                    (let ((_hd159682159699_
                                           (##car _e159681159696_))
                                          (_tl159683159701_
                                           (##cdr _e159681159696_)))
                                      (if (gx#stx-pair? _tl159683159701_)
                                          (let ((_e159684159704_
                                                 (gx#syntax-e
                                                  _tl159683159701_)))
                                            (let ((_hd159685159707_
                                                   (##car _e159684159704_))
                                                  (_tl159686159709_
                                                   (##cdr _e159684159704_)))
                                              (let* ((_path159712_
                                                      _hd159685159707_)
                                                     (_specs159714_
                                                      _tl159686159709_))
                                                (if '#t
                                                    (let ((_src-ctx159716_
                                                           (_import-spec-source159600_
                                                            _path159712_))
                                                          (_exports159717_
                                                           (make-table))
                                                          (_specs159718_
                                                           (gx#syntax->list
                                                            _specs159714_)))
                                                      (for-each
                                                       (lambda (_out159720_)
                                                         (table-set!
                                                          _exports159717_
                                                          (cons (##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _out159720_
                         '3
                         gx#module-export::t
                         '#f)
                        (##unchecked-structure-ref
                         _out159720_
                         '4
                         gx#module-export::t
                         '#f))
                  _out159720_))
               (##unchecked-structure-ref
                _src-ctx159716_
                '9
                gx#module-context::t
                '#f))
              (_K159668_
               _rest159669_
               (foldl1 (lambda (_spec159722_ _r159723_)
                         (let* ((_e159724159740_ _spec159722_)
                                (_E159726159744_
                                 (lambda ()
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid syntax-case clause"
                                    _e159724159740_)))
                                (_E159725159798_
                                 (lambda ()
                                   (if (gx#stx-pair? _e159724159740_)
                                       (let ((_e159727159748_
                                              (gx#syntax-e _e159724159740_)))
                                         (let ((_hd159728159751_
                                                (##car _e159727159748_))
                                               (_tl159729159753_
                                                (##cdr _e159727159748_)))
                                           (let ((_phi159756_
                                                  _hd159728159751_))
                                             (if (gx#stx-pair?
                                                  _tl159729159753_)
                                                 (let ((_e159730159758_
                                                        (gx#syntax-e
                                                         _tl159729159753_)))
                                                   (let ((_hd159731159761_
                                                          (##car _e159730159758_))
                                                         (_tl159732159763_
                                                          (##cdr _e159730159758_)))
                                                     (let ((_name159766_
                                                            _hd159731159761_))
                                                       (if (gx#stx-pair?
                                                            _tl159732159763_)
                                                           (let ((_e159733159768_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl159732159763_)))
                     (let ((_hd159734159771_ (##car _e159733159768_))
                           (_tl159735159773_ (##cdr _e159733159768_)))
                       (let ((_src-phi159776_ _hd159734159771_))
                         (if (gx#stx-pair? _tl159735159773_)
                             (let ((_e159736159778_
                                    (gx#syntax-e _tl159735159773_)))
                               (let ((_hd159737159781_ (##car _e159736159778_))
                                     (_tl159738159783_
                                      (##cdr _e159736159778_)))
                                 (let ((_src-name159786_ _hd159737159781_))
                                   (if (gx#stx-null? _tl159738159783_)
                                       (if (and (gx#stx-fixnum?
                                                 _src-phi159776_)
                                                (gx#identifier?
                                                 _src-name159786_)
                                                (gx#stx-fixnum? _phi159756_)
                                                (gx#identifier? _name159766_))
                                           (let ((_src-phi159788_
                                                  (gx#stx-e _src-phi159776_))
                                                 (_src-name159789_
                                                  (gx#core-identifier-key
                                                   _src-name159786_))
                                                 (_phi159790_
                                                  (gx#stx-e _phi159756_))
                                                 (_name159791_
                                                  (gx#core-identifier-key
                                                   _name159766_)))
                                             (let ((_$e159793_
                                                    (table-ref
                                                     _exports159717_
                                                     (cons _src-phi159788_
                                                           _src-name159789_)
                                                     '#f)))
                                               (if _$e159793_
                                                   ((lambda (_out159796_)
                                                      (cons (gx#core-module-export->import__%
                                                             _out159796_
                                                             _name159791_
                                                             (fx- _phi159790_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _src-phi159788_))
                    _r159723_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _$e159793_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; no matching export"
                                                    _stx159592_
                                                    _hd159667_))))
                                           (_E159726159744_))
                                       (_E159726159744_)))))
                             (_E159726159744_)))))
                   (_E159726159744_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E159726159744_)))))
                                       (_E159726159744_)))))
                           (_E159725159798_)))
                       _r159670_
                       _specs159718_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E159680159692_)))))
                                          (_E159680159692_))))
                                  (_E159680159692_))))
                           (_E159672159824_
                            (lambda ()
                              (if (gx#stx-pair? _e159671159688_)
                                  (let ((_e159674159806_
                                         (gx#syntax-e _e159671159688_)))
                                    (let ((_hd159675159809_
                                           (##car _e159674159806_))
                                          (_tl159676159811_
                                           (##cdr _e159674159806_)))
                                      (if (gx#stx-pair? _tl159676159811_)
                                          (let ((_e159677159814_
                                                 (gx#syntax-e
                                                  _tl159676159811_)))
                                            (let ((_hd159678159817_
                                                   (##car _e159677159814_))
                                                  (_tl159679159819_
                                                   (##cdr _e159677159814_)))
                                              (let ((_path159822_
                                                     _hd159678159817_))
                                                (if (gx#stx-null?
                                                     _tl159679159819_)
                                                    (if '#t
                                                        (_K159668_
                                                         _rest159669_
                                                         (cons (_import-spec-source159600_
                                                                _path159822_)
                                                               _r159670_))
                                                        (_E159673159802_))
                                                    (_E159673159802_)))))
                                          (_E159673159802_))))
                                  (_E159673159802_)))))
                      (_E159672159824_))))
                 (_import-spec-source159600_
                  (lambda (_spath159665_)
                    (gx#core-import-nested-module _spath159665_ _stx159592_)))
                 (_import!159601_
                  (lambda (_rbody159614_)
                    (letrec* ((_current-ctx159616_
                               (gx#current-expander-context))
                              (_deps159617_ (make-table 'test: eq?))
                              (_bind!159618_
                               (lambda (_hd159663_)
                                 (gx#core-bind-import!__1
                                  _hd159663_
                                  _current-ctx159616_))))
                      (let _lp159620_ ((_rest159622_ _rbody159614_)
                                       (_body159623_ '()))
                        (let* ((_rest159624159632_ _rest159622_)
                               (_else159626159642_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _current-ctx159616_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _current-ctx159616_
                                       (foldl1 cons
                                               (##unchecked-structure-ref
                                                _current-ctx159616_
                                                '8
                                                gx#module-context::t
                                                '#f)
                                               _body159623_)
                                       '8
                                       gx#module-context::t
                                       '#f)
                                      '#!void)
                                  (table-for-each
                                   (lambda (_ctx159640_ _g167038_)
                                     (gx#eval-module _ctx159640_))
                                   _deps159617_)
                                  _body159623_))
                               (_K159628159651_
                                (lambda (_rest159645_ _hd159646_)
                                  (if (##structure-direct-instance-of?
                                       _hd159646_
                                       'gx#module-import::t)
                                      (begin
                                        (_bind!159618_ _hd159646_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _hd159646_
                                                   '3
                                                   gx#module-import::t
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _hd159646_
                                                            '1
                                                            gx#module-import::t
                                                            '#f)
                                                           '3
                                                           gx#module-export::t
                                                           '#f)))
                                            (table-set!
                                             _deps159617_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _hd159646_
                                               '1
                                               gx#module-import::t
                                               '#f)
                                              '1
                                              gx#module-export::t
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _hd159646_
                                           'gx#import-set::t)
                                          (begin
                                            (for-each
                                             _bind!159618_
                                             (##unchecked-structure-ref
                                              _hd159646_
                                              '3
                                              gx#import-set::t
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _hd159646_
                                                  '2
                                                  gx#import-set::t
                                                  '#f))
                                                (table-set!
                                                 _deps159617_
                                                 (##unchecked-structure-ref
                                                  _hd159646_
                                                  '1
                                                  gx#import-set::t
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_$e159648_
                                                 (##structure-instance-of?
                                                  _hd159646_
                                                  'gx#module-context::t)))
                                            (if _$e159648_
                                                _$e159648_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _stx159592_
                                                 _hd159646_)))))
                                  (_lp159620_
                                   _rest159645_
                                   (cons _hd159646_ _body159623_)))))
                          (if (##pair? _rest159624159632_)
                              (let ((_hd159629159654_
                                     (##car _rest159624159632_))
                                    (_tl159630159656_
                                     (##cdr _rest159624159632_)))
                                (let* ((_hd159659_ _hd159629159654_)
                                       (_rest159661_ _tl159630159656_))
                                  (_K159628159651_ _rest159661_ _hd159659_)))
                              (_else159626159642_)))))))
                 (_expanded-import?159602_
                  (lambda (_e159606_)
                    (let ((_$e159608_
                           (##structure-direct-instance-of?
                            _e159606_
                            'gx#import-set::t)))
                      (if _$e159608_
                          _$e159608_
                          (let ((_$e159611_
                                 (##structure-direct-instance-of?
                                  _e159606_
                                  'gx#module-import::t)))
                            (if _$e159611_
                                _$e159611_
                                (##structure-instance-of?
                                 _e159606_
                                 'gx#module-context::t))))))))
          (let ((_rbody159604_
                 (gx#core-expand-import/export
                  _stx159592_
                  _expanded-import?159602_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _expand1159595_)))
            (if _internal-expand?159593_
                (reverse _rbody159604_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_import!159601_ _rbody159604_))
                 (gx#stx-source _stx159592_)))))))
    (define gx#core-expand-import%__0
      (lambda (_stx159918_)
        (let ((_internal-expand?159920_ '#f))
          (gx#core-expand-import%__% _stx159918_ _internal-expand?159920_))))
    (define gx#core-expand-import%
      (lambda _g167040_
        (let ((_g167039_ (##length _g167040_)))
          (cond ((##fx= _g167039_ 1)
                 (apply (lambda (_stx159918_)
                          (gx#core-expand-import%__0 _stx159918_))
                        _g167040_))
                ((##fx= _g167039_ 2)
                 (apply (lambda (_stx159922_ _internal-expand?159923_)
                          (gx#core-expand-import%__%
                           _stx159922_
                           _internal-expand?159923_))
                        _g167040_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g167040_))))))
    (define gx#core-import-nested-module
      (lambda (_spath159519_ _where159520_)
        (let* ((_e159521159528_ _spath159519_)
               (_E159523159532_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e159521159528_)))
               (_E159522159587_
                (lambda ()
                  (if (gx#stx-pair? _e159521159528_)
                      (let ((_e159524159536_ (gx#syntax-e _e159521159528_)))
                        (let ((_hd159525159539_ (##car _e159524159536_))
                              (_tl159526159541_ (##cdr _e159524159536_)))
                          (let* ((_origin159544_ _hd159525159539_)
                                 (_sub159546_ _tl159526159541_))
                            (if '#t
                                (let ((_origin-ctx159548_
                                       (if (gx#stx-false? _origin159544_)
                                           (gx#current-expander-context)
                                           (gx#import-module__0
                                            _origin159544_))))
                                  (let _lp159550_ ((_rest159552_ _sub159546_)
                                                   (_ctx159553_
                                                    _origin-ctx159548_))
                                    (let* ((_e159554159561_ _rest159552_)
                                           (_E159556159565_
                                            (lambda () _ctx159553_))
                                           (_E159555159583_
                                            (lambda ()
                                              (if (gx#stx-pair?
                                                   _e159554159561_)
                                                  (let ((_e159557159569_
                                                         (gx#syntax-e
                                                          _e159554159561_)))
                                                    (let ((_hd159558159572_
                                                           (##car _e159557159569_))
                                                          (_tl159559159574_
                                                           (##cdr _e159557159569_)))
                                                      (let* ((_id159577_
                                                              _hd159558159572_)
                                                             (_rest159579_
                                                              _tl159559159574_))
                                                        (if '#t
                                                            (let ((_bind159581_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#resolve-identifier__%
                            _id159577_
                            '0
                            _ctx159553_)))
                      (if (and (##structure-direct-instance-of?
                                _bind159581_
                                'gx#syntax-binding::t)
                               (##structure-instance-of?
                                (##unchecked-structure-ref
                                 _bind159581_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                'gx#module-context::t))
                          '#!void
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; not bound as module"
                           _where159520_
                           _spath159519_
                           _id159577_))
                      (_lp159550_
                       _rest159579_
                       (##unchecked-structure-ref
                        _bind159581_
                        '4
                        gx#syntax-binding::t
                        '#f)))
                    (_E159556159565_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E159556159565_)))))
                                      (_E159555159583_))))
                                (_E159523159532_)))))
                      (_E159523159532_)))))
          (_E159522159587_))))
    (define gx#core-expand-import-source
      (lambda (_hd159517_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _hd159517_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_stx159025_ _internal-expand?159026_)
        (letrec* ((_make-export__166969166970_
                   (lambda (_bind159465_ _phi159466_ _ctx159467_ _name159468_)
                     (let* ((_key159470_
                             (##unchecked-structure-ref
                              _bind159465_
                              '2
                              gx#binding::t
                              '#f))
                            (_export-key159472_
                             (if _name159468_
                                 (gx#core-identifier-key _name159468_)
                                 _key159470_)))
                       (##structure
                        gx#module-export::t
                        _ctx159467_
                        _key159470_
                        _phi159466_
                        _export-key159472_
                        (let ((_$e159475_
                               (##structure-instance-of?
                                _bind159465_
                                'gx#extern-binding::t)))
                          (if _$e159475_
                              _$e159475_
                              (##structure-direct-instance-of?
                               _bind159465_
                               'gx#import-binding::t)))))))
                  (_make-export__0__166971166974_
                   (lambda (_bind159481_)
                     (let* ((_phi159483_ (gx#current-export-expander-phi))
                            (_ctx159485_ (gx#current-expander-context))
                            (_name159487_ '#f))
                       (_make-export__166969166970_
                        _bind159481_
                        _phi159483_
                        _ctx159485_
                        _name159487_))))
                  (_make-export__1__166972166975_
                   (lambda (_bind159489_ _phi159490_)
                     (let* ((_ctx159492_ (gx#current-expander-context))
                            (_name159494_ '#f))
                       (_make-export__166969166970_
                        _bind159489_
                        _phi159490_
                        _ctx159492_
                        _name159494_))))
                  (_make-export__2__166973166976_
                   (lambda (_bind159496_ _phi159497_ _ctx159498_)
                     (let ((_name159500_ '#f))
                       (_make-export__166969166970_
                        _bind159496_
                        _phi159497_
                        _ctx159498_
                        _name159500_))))
                  (_make-export159028_
                   (lambda _g167042_
                     (let ((_g167041_ (##length _g167042_)))
                       (cond ((##fx= _g167041_ 1)
                              (apply (lambda (_bind159481_)
                                       (_make-export__0__166971166974_
                                        _bind159481_))
                                     _g167042_))
                             ((##fx= _g167041_ 2)
                              (apply (lambda (_bind159489_ _phi159490_)
                                       (_make-export__1__166972166975_
                                        _bind159489_
                                        _phi159490_))
                                     _g167042_))
                             ((##fx= _g167041_ 3)
                              (apply (lambda (_bind159496_
                                              _phi159497_
                                              _ctx159498_)
                                       (_make-export__2__166973166976_
                                        _bind159496_
                                        _phi159497_
                                        _ctx159498_))
                                     _g167042_))
                             ((##fx= _g167041_ 4)
                              (apply (lambda (_bind159502_
                                              _phi159503_
                                              _ctx159504_
                                              _name159505_)
                                       (_make-export__166969166970_
                                        _bind159502_
                                        _phi159503_
                                        _ctx159504_
                                        _name159505_))
                                     _g167042_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g167042_))))))
                  (_expand1159029_
                   (lambda (_hd159178_ _K159179_ _rest159180_ _r159181_)
                     (let* ((_e159182159214_ _hd159178_)
                            (_E159209159218_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _stx159025_
                                _hd159178_)))
                            (_E159199159297_
                             (lambda ()
                               (if (gx#stx-pair? _e159182159214_)
                                   (let ((_e159210159222_
                                          (gx#syntax-e _e159182159214_)))
                                     (let ((_hd159211159225_
                                            (##car _e159210159222_))
                                           (_tl159212159227_
                                            (##cdr _e159210159222_)))
                                       (if (eq? (gx#stx-e _hd159211159225_)
                                                'import:)
                                           (let ((_in159230_ _tl159212159227_))
                                             (if (gx#stx-list? _in159230_)
                                                 (let _lp159232_ ((_in-rest159234_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _in159230_)
                          (_r159235_ _r159181_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_e159236159243_
                                                           _in-rest159234_)
                                                          (_E159238159247_
                                                           (lambda ()
                                                             (_K159179_
                                                              _rest159180_
                                                              _r159235_)))
                                                          (_E159237159293_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _e159236159243_)
                         (let ((_e159239159251_ (gx#syntax-e _e159236159243_)))
                           (let ((_hd159240159254_ (##car _e159239159251_))
                                 (_tl159241159256_ (##cdr _e159239159251_)))
                             (let* ((_hd159259_ _hd159240159254_)
                                    (_in-rest159261_ _tl159241159256_))
                               (if '#t
                                   (let ((_src159291_
                                          (if (gx#core-bound-module?
                                               _hd159259_)
                                              (gx#syntax-local-e__0 _hd159259_)
                                              (if (gx#core-library-module-path?
                                                   _hd159259_)
                                                  (gx#import-module__0
                                                   (gx#core-resolve-library-module-path
                                                    _hd159259_))
                                                  (if (gx#core-library-relative-module-path?
                                                       _hd159259_)
                                                      (gx#import-module__0
                                                       (gx#core-resolve-library-relative-module-path
                                                        _hd159259_))
                                                      (if (gx#stx-string?
                                                           _hd159259_)
                                                          (gx#import-module__0
                                                           (gx#core-resolve-module-path__%
                                                            _hd159259_
                                                            (gx#stx-source
                                                             _stx159025_)))
                                                          (let* ((_e159262159269_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd159259_)
                         (_E159264159273_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; illegal re-export"
                             _stx159025_
                             _hd159259_)))
                         (_E159263159287_
                          (lambda ()
                            (if (gx#stx-pair? _e159262159269_)
                                (let ((_e159265159277_
                                       (gx#syntax-e _e159262159269_)))
                                  (let ((_hd159266159280_
                                         (##car _e159265159277_))
                                        (_tl159267159282_
                                         (##cdr _e159265159277_)))
                                    (if (eq? (gx#stx-e _hd159266159280_) 'in:)
                                        (let ((_spath159285_ _tl159267159282_))
                                          (if '#t
                                              (gx#core-import-nested-module
                                               _spath159285_
                                               _stx159025_)
                                              (_E159264159273_)))
                                        (_E159264159273_))))
                                (_E159264159273_)))))
                    (_E159263159287_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_lp159232_
                                      _in-rest159261_
                                      (_export-imports159030_
                                       _src159291_
                                       _r159235_)))
                                   (_E159238159247_)))))
                         (_E159238159247_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E159237159293_)))
                                                 (_E159209159218_)))
                                           (_E159209159218_))))
                                   (_E159209159218_))))
                            (_E159186159336_
                             (lambda ()
                               (if (gx#stx-pair? _e159182159214_)
                                   (let ((_e159200159301_
                                          (gx#syntax-e _e159182159214_)))
                                     (let ((_hd159201159304_
                                            (##car _e159200159301_))
                                           (_tl159202159306_
                                            (##cdr _e159200159301_)))
                                       (if (eq? (gx#stx-e _hd159201159304_)
                                                'rename:)
                                           (if (gx#stx-pair? _tl159202159306_)
                                               (let ((_e159203159309_
                                                      (gx#syntax-e
                                                       _tl159202159306_)))
                                                 (let ((_hd159204159312_
                                                        (##car _e159203159309_))
                                                       (_tl159205159314_
                                                        (##cdr _e159203159309_)))
                                                   (let ((_id159317_
                                                          _hd159204159312_))
                                                     (if (gx#stx-pair?
                                                          _tl159205159314_)
                                                         (let ((_e159206159319_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl159205159314_)))
                   (let ((_hd159207159322_ (##car _e159206159319_))
                         (_tl159208159324_ (##cdr _e159206159319_)))
                     (let ((_name159327_ _hd159207159322_))
                       (if (gx#stx-null? _tl159208159324_)
                           (if '#t
                               (let* ((_phi159329_
                                       (gx#current-export-expander-phi))
                                      (_$e159331_
                                       (gx#core-resolve-identifier__1
                                        _id159317_
                                        _phi159329_)))
                                 (if _$e159331_
                                     ((lambda (_bind159334_)
                                        (_K159179_
                                         _rest159180_
                                         (cons (_make-export__166969166970_
                                                _bind159334_
                                                _phi159329_
                                                (gx#current-expander-context)
                                                _name159327_)
                                               _r159181_)))
                                      _$e159331_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Reference to unbound identifier"
                                      _stx159025_
                                      _hd159178_
                                      _id159317_)))
                               (_E159199159297_))
                           (_E159199159297_)))))
                 (_E159199159297_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E159199159297_))
                                           (_E159199159297_))))
                                   (_E159199159297_))))
                            (_E159185159385_
                             (lambda ()
                               (if (gx#stx-pair? _e159182159214_)
                                   (let ((_e159187159340_
                                          (gx#syntax-e _e159182159214_)))
                                     (let ((_hd159188159343_
                                            (##car _e159187159340_))
                                           (_tl159189159345_
                                            (##cdr _e159187159340_)))
                                       (if (eq? (gx#stx-e _hd159188159343_)
                                                'spec:)
                                           (if (gx#stx-pair? _tl159189159345_)
                                               (let ((_e159190159348_
                                                      (gx#syntax-e
                                                       _tl159189159345_)))
                                                 (let ((_hd159191159351_
                                                        (##car _e159190159348_))
                                                       (_tl159192159353_
                                                        (##cdr _e159190159348_)))
                                                   (let ((_phi159356_
                                                          _hd159191159351_))
                                                     (if (gx#stx-pair?
                                                          _tl159192159353_)
                                                         (let ((_e159193159358_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl159192159353_)))
                   (let ((_hd159194159361_ (##car _e159193159358_))
                         (_tl159195159363_ (##cdr _e159193159358_)))
                     (let ((_id159366_ _hd159194159361_))
                       (if (gx#stx-pair? _tl159195159363_)
                           (let ((_e159196159368_
                                  (gx#syntax-e _tl159195159363_)))
                             (let ((_hd159197159371_ (##car _e159196159368_))
                                   (_tl159198159373_ (##cdr _e159196159368_)))
                               (let ((_name159376_ _hd159197159371_))
                                 (if (gx#stx-null? _tl159198159373_)
                                     (if (and (gx#stx-fixnum? _phi159356_)
                                              (gx#identifier? _id159366_)
                                              (gx#identifier? _name159376_))
                                         (let* ((_phi159378_
                                                 (gx#stx-e _phi159356_))
                                                (_$e159380_
                                                 (gx#core-resolve-identifier__1
                                                  _id159366_
                                                  _phi159378_)))
                                           (if _$e159380_
                                               ((lambda (_bind159383_)
                                                  (_K159179_
                                                   _rest159180_
                                                   (cons (_make-export__166969166970_
                                                          _bind159383_
                                                          _phi159378_
                                                          (gx#current-expander-context)
                                                          _name159376_)
                                                         _r159181_)))
                                                _$e159380_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _stx159025_
                                                _hd159178_
                                                _id159366_)))
                                         (_E159186159336_))
                                     (_E159186159336_)))))
                           (_E159186159336_)))))
                 (_E159186159336_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E159186159336_))
                                           (_E159186159336_))))
                                   (_E159186159336_))))
                            (_E159184159396_
                             (lambda ()
                               (let ((_id159389_ _e159182159214_))
                                 (if (gx#identifier? _id159389_)
                                     (let ((_$e159391_
                                            (gx#core-resolve-identifier__1
                                             _id159389_
                                             (gx#current-export-expander-phi))))
                                       (if _$e159391_
                                           ((lambda (_bind159394_)
                                              (_K159179_
                                               _rest159180_
                                               (cons (_make-export__0__166971166974_
                                                      _bind159394_)
                                                     _r159181_)))
                                            _$e159391_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _stx159025_
                                            _hd159178_)))
                                     (_E159185159385_)))))
                            (_E159183159460_
                             (lambda ()
                               (if (eq? (gx#stx-e _e159182159214_) '#t)
                                   (if '#t
                                       (let* ((_current-ctx159400_
                                               (gx#current-expander-context))
                                              (_current-phi159402_
                                               (gx#current-export-expander-phi))
                                              (_phi-ctx159404_
                                               (gx#core-context-shift
                                                _current-ctx159400_
                                                _current-phi159402_))
                                              (_phi-bind159406_
                                               (table->list
                                                (##unchecked-structure-ref
                                                 _phi-ctx159404_
                                                 '2
                                                 gx#expander-context::t
                                                 '#f))))
                                         (let _lp159409_ ((_bind-rest159411_
                                                           _phi-bind159406_)
                                                          (_set159412_ '()))
                                           (let* ((_bind-rest159413159423_
                                                   _bind-rest159411_)
                                                  (_else159415159431_
                                                   (lambda ()
                                                     (_K159179_
                                                      _rest159180_
                                                      (cons (##structure
                                                             gx#export-set::t
                                                             '#f
                                                             _current-phi159402_
                                                             _set159412_)
                                                            _r159181_))))
                                                  (_K159417159441_
                                                   (lambda (_bind-rest159434_
                                                            _bind159435_
                                                            _key159436_)
                                                     (if (or (##structure-direct-instance-of?
                                                              _bind159435_
                                                              'gx#import-binding::t)
                                                             (gx#private-feature-binding?
                                                              _bind159435_))
                                                         (_lp159409_
                                                          _bind-rest159434_
                                                          _set159412_)
                                                         (_lp159409_
                                                          _bind-rest159434_
                                                          (cons (_make-export__2__166973166976_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind159435_
                         _current-phi159402_
                         _current-ctx159400_)
                        _set159412_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _bind-rest159413159423_)
                                                 (let ((_hd159418159444_
                                                        (##car _bind-rest159413159423_))
                                                       (_tl159419159446_
                                                        (##cdr _bind-rest159413159423_)))
                                                   (if (##pair? _hd159418159444_)
                                                       (let ((_hd159420159449_
                                                              (##car _hd159418159444_))
                                                             (_tl159421159451_
                                                              (##cdr _hd159418159444_)))
                                                         (let* ((_key159454_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd159420159449_)
                        (_bind159456_ _tl159421159451_)
                        (_bind-rest159458_ _tl159419159446_))
                   (_K159417159441_
                    _bind-rest159458_
                    _bind159456_
                    _key159454_)))
               (_else159415159431_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_else159415159431_)))))
                                       (_E159184159396_))
                                   (_E159184159396_)))))
                       (_E159183159460_))))
                  (_export-imports159030_
                   (lambda (_src159054_ _r159055_)
                     (letrec* ((_current-ctx159057_
                                (gx#current-expander-context))
                               (_current-phi159058_
                                (gx#current-export-expander-phi))
                               (_import->export159059_
                                (lambda (_in159140_)
                                  (let* ((_in159141159149_ _in159140_)
                                         (_E159143159153_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _in159141159149_)))
                                         (_K159144159160_
                                          (lambda (_phi159156_
                                                   _key159157_
                                                   _out159158_)
                                            (##structure
                                             gx#module-export::t
                                             _current-ctx159057_
                                             _key159157_
                                             _phi159156_
                                             _key159157_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _in159141159149_
                                         'gx#module-import::t)
                                        (let* ((_e159145159163_
                                                (##unchecked-structure-ref
                                                 _in159141159149_
                                                 '1
                                                 gx#module-import::t
                                                 '#f))
                                               (_out159166_ _e159145159163_)
                                               (_e159146159168_
                                                (##unchecked-structure-ref
                                                 _in159141159149_
                                                 '2
                                                 gx#module-import::t
                                                 '#f))
                                               (_key159171_ _e159146159168_)
                                               (_e159147159173_
                                                (##unchecked-structure-ref
                                                 _in159141159149_
                                                 '3
                                                 gx#module-import::t
                                                 '#f))
                                               (_phi159176_ _e159147159173_))
                                          (_K159144159160_
                                           _phi159176_
                                           _key159171_
                                           _out159166_))
                                        (_E159143159153_)))))
                               (_fold-e159060_
                                (lambda (_in159062_ _r159063_)
                                  (let* ((_in159064159078_ _in159062_)
                                         (_else159067159086_
                                          (lambda () _r159063_)))
                                    (let ((_K159073159122_
                                           (lambda (_phi159118_
                                                    _key159119_
                                                    _out159120_)
                                             (if (and (fx= _phi159118_
                                                           _current-phi159058_)
                                                      (eq? _src159054_
                                                           (##unchecked-structure-ref
                                                            _out159120_
                                                            '1
                                                            gx#module-export::t
                                                            '#f)))
                                                 (cons (_import->export159059_
                                                        _in159062_)
                                                       _r159063_)
                                                 _r159063_)))
                                          (_K159069159097_
                                           (lambda (_imports159090_
                                                    _phi159091_
                                                    _ctx159092_)
                                             (if (and (fx= _phi159091_
                                                           _current-phi159058_)
                                                      (eq? _src159054_
                                                           _ctx159092_))
                                                 (foldl1 (lambda (_in159094_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r159095_)
                   (cons (_import->export159059_ _in159094_) _r159095_))
                 _r159063_
                 _imports159090_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _r159063_))))
                                      (let ((_try-match159066159115_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _in159064159078_
                                                    'gx#import-set::t)
                                                   (let* ((_e159070159100_
                                                           (##unchecked-structure-ref
                                                            _in159064159078_
                                                            '1
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e159071159105_
                                                           (##unchecked-structure-ref
                                                            _in159064159078_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e159072159110_
                                                           (##unchecked-structure-ref
                                                            _in159064159078_
                                                            '3
                                                            gx#import-set::t
                                                            '#f)))
                                                     (let ((_ctx159103_
                                                            _e159070159100_)
                                                           (_phi159108_
                                                            _e159071159105_)
                                                           (_imports159113_
                                                            _e159072159110_))
                                                       (_K159069159097_
                                                        _imports159113_
                                                        _phi159108_
                                                        _ctx159103_)))
                                                   (_else159067159086_)))))
                                        (if (##structure-direct-instance-of?
                                             _in159064159078_
                                             'gx#module-import::t)
                                            (let* ((_e159074159125_
                                                    (##unchecked-structure-ref
                                                     _in159064159078_
                                                     '1
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e159075159130_
                                                    (##unchecked-structure-ref
                                                     _in159064159078_
                                                     '2
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e159076159135_
                                                    (##unchecked-structure-ref
                                                     _in159064159078_
                                                     '3
                                                     gx#module-import::t
                                                     '#f)))
                                              (let ((_out159128_
                                                     _e159074159125_)
                                                    (_key159133_
                                                     _e159075159130_)
                                                    (_phi159138_
                                                     _e159076159135_))
                                                (_K159073159122_
                                                 _phi159138_
                                                 _key159133_
                                                 _out159128_)))
                                            (_try-match159066159115_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _src159054_
                              _current-phi159058_
                              (foldl1 _fold-e159060_
                                      '()
                                      (##unchecked-structure-ref
                                       _current-ctx159057_
                                       '8
                                       gx#module-context::t
                                       '#f)))
                             _r159055_))))
                  (_export!159031_
                   (lambda (_rbody159044_)
                     (letrec* ((_current-ctx159046_
                                (gx#current-expander-context))
                               (_fold-e159047_
                                (lambda (_out159051_ _r159052_)
                                  (if (##structure-direct-instance-of?
                                       _out159051_
                                       'gx#module-export::t)
                                      (cons _out159051_ _r159052_)
                                      (if (##structure-direct-instance-of?
                                           _out159051_
                                           'gx#export-set::t)
                                          (foldl1 cons
                                                  _r159052_
                                                  (##unchecked-structure-ref
                                                   _out159051_
                                                   '3
                                                   gx#export-set::t
                                                   '#f))
                                          _r159052_)))))
                       (let ((_body159049_ (reverse _rbody159044_)))
                         (##unchecked-structure-set!
                          _current-ctx159046_
                          (foldl1 _fold-e159047_
                                  (##unchecked-structure-ref
                                   _current-ctx159046_
                                   '9
                                   gx#module-context::t
                                   '#f)
                                  _body159049_)
                          '9
                          gx#module-context::t
                          '#f)
                         _body159049_))))
                  (_expanded-export?159032_
                   (lambda (_e159039_)
                     (let ((_$e159041_
                            (##structure-direct-instance-of?
                             _e159039_
                             'gx#module-export::t)))
                       (if _$e159041_
                           _$e159041_
                           (##structure-direct-instance-of?
                            _e159039_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _internal-expand?159026_)
              (let ((_rbody159037_
                     (gx#core-expand-import/export
                      _stx159025_
                      _expanded-export?159032_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _expand1159029_)))
                (if _internal-expand?159026_
                    (reverse _rbody159037_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons '%#export (_export!159031_ _rbody159037_))
                     (gx#stx-source _stx159025_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _stx159025_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _stx159025_))))))
    (define gx#core-expand-export%__0
      (lambda (_stx159510_)
        (let ((_internal-expand?159512_ '#f))
          (gx#core-expand-export%__% _stx159510_ _internal-expand?159512_))))
    (define gx#core-expand-export%
      (lambda _g167044_
        (let ((_g167043_ (##length _g167044_)))
          (cond ((##fx= _g167043_ 1)
                 (apply (lambda (_stx159510_)
                          (gx#core-expand-export%__0 _stx159510_))
                        _g167044_))
                ((##fx= _g167043_ 2)
                 (apply (lambda (_stx159514_ _internal-expand?159515_)
                          (gx#core-expand-export%__%
                           _stx159514_
                           _internal-expand?159515_))
                        _g167044_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g167044_))))))
    (define gx#core-expand-export-source
      (lambda (_hd159022_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _hd159022_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_stx158992_)
        (let* ((_e158993159000_ _stx158992_)
               (_E158995159004_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e158993159000_)))
               (_E158994159018_
                (lambda ()
                  (if (gx#stx-pair? _e158993159000_)
                      (let ((_e158996159008_ (gx#syntax-e _e158993159000_)))
                        (let ((_hd158997159011_ (##car _e158996159008_))
                              (_tl158998159013_ (##cdr _e158996159008_)))
                          (let ((_body159016_ _tl158998159013_))
                            (if (gx#identifier-list? _body159016_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _body159016_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _body159016_))
                                   (gx#stx-source _stx158992_)))
                                (_E158995159004_)))))
                      (_E158995159004_)))))
          (_E158994159018_))))
    (define gx#core-bind-feature!__%
      (lambda (_id158958_ _private?158959_ _phi158960_ _ctx158961_)
        (gx#core-bind-syntax!__%
         _id158958_
         ((if _private?158959_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _id158958_))
         _private?158959_
         _phi158960_
         _ctx158961_)))
    (define gx#core-bind-feature!__0
      (lambda (_id158966_)
        (let* ((_private?158968_ '#f)
               (_phi158970_ (gx#current-expander-phi))
               (_ctx158972_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id158966_
           _private?158968_
           _phi158970_
           _ctx158972_))))
    (define gx#core-bind-feature!__1
      (lambda (_id158974_ _private?158975_)
        (let* ((_phi158977_ (gx#current-expander-phi))
               (_ctx158979_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id158974_
           _private?158975_
           _phi158977_
           _ctx158979_))))
    (define gx#core-bind-feature!__2
      (lambda (_id158981_ _private?158982_ _phi158983_)
        (let ((_ctx158985_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id158981_
           _private?158982_
           _phi158983_
           _ctx158985_))))
    (define gx#core-bind-feature!
      (lambda _g167046_
        (let ((_g167045_ (##length _g167046_)))
          (cond ((##fx= _g167045_ 1)
                 (apply (lambda (_id158966_)
                          (gx#core-bind-feature!__0 _id158966_))
                        _g167046_))
                ((##fx= _g167045_ 2)
                 (apply (lambda (_id158974_ _private?158975_)
                          (gx#core-bind-feature!__1
                           _id158974_
                           _private?158975_))
                        _g167046_))
                ((##fx= _g167045_ 3)
                 (apply (lambda (_id158981_ _private?158982_ _phi158983_)
                          (gx#core-bind-feature!__2
                           _id158981_
                           _private?158982_
                           _phi158983_))
                        _g167046_))
                ((##fx= _g167045_ 4)
                 (apply (lambda (_id158987_
                                 _private?158988_
                                 _phi158989_
                                 _ctx158990_)
                          (gx#core-bind-feature!__%
                           _id158987_
                           _private?158988_
                           _phi158989_
                           _ctx158990_))
                        _g167046_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g167046_))))))))
