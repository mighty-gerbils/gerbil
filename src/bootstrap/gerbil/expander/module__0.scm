(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1707742541)
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
      (lambda _$args162396_
        (apply make-instance gx#module-import::t _$args162396_)))
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
      (lambda _$args162393_
        (apply make-instance gx#module-export::t _$args162393_)))
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
      (lambda _$args162390_
        (apply make-instance gx#import-set::t _$args162390_)))
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
      (lambda _$args162387_
        (apply make-instance gx#export-set::t _$args162387_)))
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
      (lambda _$args162384_
        (apply make-instance gx#import-expander::t _$args162384_)))
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
      (lambda _$args162381_
        (apply make-instance gx#export-expander::t _$args162381_)))
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
      (lambda _$args162378_
        (apply make-instance gx#import-export-expander::t _$args162378_)))
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
      (lambda (_path162375_ _fun162376_)
        (call-with-input-file
         (cons 'path: (cons _path162375_ gx#source-file-settings))
         _fun162376_)))
    (define gx#module-context:::init!
      (lambda (_self162369_ _id162370_ _super162371_ _ns162372_ _path162373_)
        (if (##fx< '11 (##structure-length _self162369_))
            (begin
              (##unchecked-structure-set!
               _self162369_
               _id162370_
               '1
               (##structure-type _self162369_)
               '#f)
              (##unchecked-structure-set!
               _self162369_
               (make-table 'test: eq?)
               '2
               (##structure-type _self162369_)
               '#f)
              (##unchecked-structure-set!
               _self162369_
               _super162371_
               '3
               (##structure-type _self162369_)
               '#f)
              (##unchecked-structure-set!
               _self162369_
               '#f
               '4
               (##structure-type _self162369_)
               '#f)
              (##unchecked-structure-set!
               _self162369_
               '#f
               '5
               (##structure-type _self162369_)
               '#f)
              (##unchecked-structure-set!
               _self162369_
               _ns162372_
               '6
               (##structure-type _self162369_)
               '#f)
              (##unchecked-structure-set!
               _self162369_
               _path162373_
               '7
               (##structure-type _self162369_)
               '#f)
              (##unchecked-structure-set!
               _self162369_
               '()
               '8
               (##structure-type _self162369_)
               '#f)
              (##unchecked-structure-set!
               _self162369_
               '()
               '9
               (##structure-type _self162369_)
               '#f)
              (##unchecked-structure-set!
               _self162369_
               '#f
               '10
               (##structure-type _self162369_)
               '#f)
              (##unchecked-structure-set!
               _self162369_
               '#f
               '11
               (##structure-type _self162369_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self162369_
                   '11
                   (##vector-length _self162369_)))))
    (bind-method! gx#module-context::t ':init! gx#module-context:::init! '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_self162213_ _ctx162214_ _root162215_)
        (let ((_super162223_
               (let ((_$e162217_ _root162215_))
                 (if _$e162217_
                     _$e162217_
                     (let ((_$e162220_ (gx#core-context-root__0)))
                       (if _$e162220_
                           _$e162220_
                           (let ((__obj167006
                                  (##structure gx#root-context::t '#f '#f)))
                             (let ((__constructor167007
                                    (direct-method-ref
                                     gx#root-context::t
                                     ':init!)))
                               (if __constructor167007
                                   (__constructor167007 __obj167006)
                                   (error '"missing constructor method implementation"
                                          'class:
                                          gx#root-context::t
                                          'method:
                                          ':init!)))
                             __obj167006)))))))
          (if _ctx162214_
              (let ((_id162226_
                     (##structure-ref
                      _ctx162214_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_path162227_
                     (##structure-ref _ctx162214_ '7 gx#module-context::t '#f))
                    (_in162228_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _ctx162214_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_e162229_
                     (make-promise (lambda () (gx#eval-module _ctx162214_)))))
                (if (##fx< '8 (##structure-length _self162213_))
                    (begin
                      (##unchecked-structure-set!
                       _self162213_
                       _id162226_
                       '1
                       (##structure-type _self162213_)
                       '#f)
                      (##unchecked-structure-set!
                       _self162213_
                       (make-table 'test: eq? 'size: (length _in162228_))
                       '2
                       (##structure-type _self162213_)
                       '#f)
                      (##unchecked-structure-set!
                       _self162213_
                       _super162223_
                       '3
                       (##structure-type _self162213_)
                       '#f)
                      (##unchecked-structure-set!
                       _self162213_
                       '#f
                       '4
                       (##structure-type _self162213_)
                       '#f)
                      (##unchecked-structure-set!
                       _self162213_
                       '#f
                       '5
                       (##structure-type _self162213_)
                       '#f)
                      (##unchecked-structure-set!
                       _self162213_
                       _path162227_
                       '6
                       (##structure-type _self162213_)
                       '#f)
                      (##unchecked-structure-set!
                       _self162213_
                       _in162228_
                       '7
                       (##structure-type _self162213_)
                       '#f)
                      (##unchecked-structure-set!
                       _self162213_
                       _e162229_
                       '8
                       (##structure-type _self162213_)
                       '#f))
                    (error '"struct-instance-init!: too many arguments for struct"
                           _self162213_
                           '8
                           (##vector-length _self162213_)))
                (for-each
                 (lambda (_g162230162232_)
                   (gx#core-bind-weak-import!__% _g162230162232_ _self162213_))
                 _in162228_))
              (if (##fx< '8 (##structure-length _self162213_))
                  (begin
                    (##unchecked-structure-set!
                     _self162213_
                     '#f
                     '1
                     (##structure-type _self162213_)
                     '#f)
                    (##unchecked-structure-set!
                     _self162213_
                     (make-table 'test: eq?)
                     '2
                     (##structure-type _self162213_)
                     '#f)
                    (##unchecked-structure-set!
                     _self162213_
                     _super162223_
                     '3
                     (##structure-type _self162213_)
                     '#f)
                    (##unchecked-structure-set!
                     _self162213_
                     '#f
                     '4
                     (##structure-type _self162213_)
                     '#f)
                    (##unchecked-structure-set!
                     _self162213_
                     '#f
                     '5
                     (##structure-type _self162213_)
                     '#f)
                    (##unchecked-structure-set!
                     _self162213_
                     '#f
                     '6
                     (##structure-type _self162213_)
                     '#f)
                    (##unchecked-structure-set!
                     _self162213_
                     '()
                     '7
                     (##structure-type _self162213_)
                     '#f)
                    (##unchecked-structure-set!
                     _self162213_
                     '#f
                     '8
                     (##structure-type _self162213_)
                     '#f))
                  (error '"struct-instance-init!: too many arguments for struct"
                         _self162213_
                         '8
                         (##vector-length _self162213_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_self162238_ _ctx162239_)
        (let ((_root162241_ '#f))
          (gx#prelude-context:::init!__%
           _self162238_
           _ctx162239_
           _root162241_))))
    (define gx#prelude-context:::init!
      (lambda _g167013_
        (let ((_g167012_ (##length _g167013_)))
          (cond ((##fx= _g167012_ 2)
                 (apply (lambda (_self162238_ _ctx162239_)
                          (gx#prelude-context:::init!__0
                           _self162238_
                           _ctx162239_))
                        _g167013_))
                ((##fx= _g167012_ 3)
                 (apply (lambda (_self162243_ _ctx162244_ _root162245_)
                          (gx#prelude-context:::init!__%
                           _self162243_
                           _ctx162244_
                           _root162245_))
                        _g167013_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g167013_))))))
    (bind-method! gx#prelude-context::t ':init! gx#prelude-context:::init! '#f)
    (define gx#import-export-expander-init!
      (lambda (_self162087_ _e162088_)
        (if (##fx< '3 (##structure-length _self162087_))
            (begin
              (##unchecked-structure-set!
               _self162087_
               _e162088_
               '1
               (##structure-type _self162087_)
               '#f)
              (##unchecked-structure-set!
               _self162087_
               (gx#current-expander-context)
               '2
               (##structure-type _self162087_)
               '#f)
              (##unchecked-structure-set!
               _self162087_
               (fx- (gx#current-expander-phi) '1)
               '3
               (##structure-type _self162087_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self162087_
                   '3
                   (##vector-length _self162087_)))))
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
      (lambda (_g161713161716_ _g161714161718_)
        (gx#core-apply-user-expander__%
         _g161713161716_
         _g161714161718_
         'apply-import-expander)))
    (bind-method!
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_g161584161587_ _g161585161589_)
        (gx#core-apply-user-expander__%
         _g161584161587_
         _g161585161589_
         'apply-export-expander)))
    (bind-method!
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_ctx161455_)
        (let* ((_path161457_
                (##structure-ref _ctx161455_ '7 gx#module-context::t '#f))
               (_path161459_
                (if (pair? _path161457_) (last _path161457_) _path161457_)))
          (if (string? _path161459_) _path161459_ '#f))))
    (define gx#import-module__%
      (lambda (_path161431_ _reload?161432_ _eval?161433_)
        (let ((_ctx161435_
               ((gx#current-expander-module-import)
                _path161431_
                _reload?161432_)))
          (if (and _ctx161435_ _eval?161433_)
              (gx#eval-module _ctx161435_)
              '#!void)
          _ctx161435_)))
    (define gx#import-module__0
      (lambda (_path161440_)
        (let* ((_reload?161442_ '#f) (_eval?161444_ '#f))
          (gx#import-module__% _path161440_ _reload?161442_ _eval?161444_))))
    (define gx#import-module__1
      (lambda (_path161446_ _reload?161447_)
        (let ((_eval?161449_ '#f))
          (gx#import-module__% _path161446_ _reload?161447_ _eval?161449_))))
    (define gx#import-module
      (lambda _g167015_
        (let ((_g167014_ (##length _g167015_)))
          (cond ((##fx= _g167014_ 1)
                 (apply (lambda (_path161440_)
                          (gx#import-module__0 _path161440_))
                        _g167015_))
                ((##fx= _g167014_ 2)
                 (apply (lambda (_path161446_ _reload?161447_)
                          (gx#import-module__1 _path161446_ _reload?161447_))
                        _g167015_))
                ((##fx= _g167014_ 3)
                 (apply (lambda (_path161451_ _reload?161452_ _eval?161453_)
                          (gx#import-module__%
                           _path161451_
                           _reload?161452_
                           _eval?161453_))
                        _g167015_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g167015_))))))
    (define gx#eval-module
      (lambda (_mod161428_) ((gx#current-expander-module-eval) _mod161428_)))
    (define gx#core-eval-module
      (lambda (_obj161413_)
        (letrec ((_force-e161415_
                  (lambda (_getf161424_ _e161425_)
                    (call-with-parameters
                     (lambda () (force (_getf161424_ _e161425_)))
                     gx#current-expander-context
                     _e161425_
                     gx#current-expander-phi
                     '0))))
          (let _recur161417_ ((_e161419_ _obj161413_))
            (if (##structure-instance-of? _e161419_ 'gx#module-context::t)
                (begin
                  (let ((_$e161421_ (gx#core-context-prelude__% _e161419_)))
                    (if _$e161421_ (_recur161417_ _$e161421_) '#!void))
                  (_force-e161415_ gx#module-context-e _e161419_))
                (if (##structure-instance-of? _e161419_ 'gx#prelude-context::t)
                    (_force-e161415_ gx#prelude-context-e _e161419_)
                    (if (gx#stx-string? _e161419_)
                        (_recur161417_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _e161419_)))
                        (if (gx#core-library-module-path? _e161419_)
                            (_recur161417_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _e161419_)))
                            (error '"Cannot eval module" _obj161413_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_ctx161396_)
        (let _lp161398_ ((_e161400_ _ctx161396_))
          (if (or (##structure-instance-of? _e161400_ 'gx#module-context::t)
                  (##structure-instance-of? _e161400_ 'gx#local-context::t))
              (_lp161398_
               (##unchecked-structure-ref _e161400_ '3 gx#phi-context::t '#f))
              (if (##structure-instance-of? _e161400_ 'gx#prelude-context::t)
                  _e161400_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_ctx161409_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _ctx161409_))))
    (define gx#core-context-prelude
      (lambda _g167017_
        (let ((_g167016_ (##length _g167017_)))
          (cond ((##fx= _g167016_ 0)
                 (apply (lambda () (gx#core-context-prelude__0)) _g167017_))
                ((##fx= _g167016_ 1)
                 (apply (lambda (_ctx161411_)
                          (gx#core-context-prelude__% _ctx161411_))
                        _g167017_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g167017_))))))
    (define gx#core-module->prelude-context
      (lambda (_ctx161386_)
        (let* ((_ht161388_ (gx#current-expander-module-registry))
               (_$e161390_ (table-ref _ht161388_ _ctx161386_ '#f)))
          (if _$e161390_
              (values _$e161390_)
              (let ((_pre161393_
                     (let ((__obj167008
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
                       (gx#prelude-context:::init! __obj167008 _ctx161386_)
                       __obj167008)))
                (table-set! _ht161388_ _ctx161386_ _pre161393_)
                _pre161393_)))))
    (define gx#core-import-module__%
      (lambda (_rpath161267_ _reload?161268_)
        (letrec ((_import-source161270_
                  (lambda (_path161355_)
                    (if (member _path161355_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _path161355_)
                        '#!void)
                    (call-with-parameters
                     (lambda ()
                       (let ((_g167018_ (gx#core-read-module _path161355_)))
                         (begin
                           (let ((_g167019_
                                  (if (##values? _g167018_)
                                      (##vector-length _g167018_)
                                      1)))
                             (if (not (##fx= _g167019_ 4))
                                 (error "Context expects 4 values" _g167019_)))
                           (let ((_pre161358_ (##vector-ref _g167018_ 0))
                                 (_id161359_ (##vector-ref _g167018_ 1))
                                 (_ns161360_ (##vector-ref _g167018_ 2))
                                 (_body161361_ (##vector-ref _g167018_ 3)))
                             (let* ((_prelude161366_
                                     (if (##structure-instance-of?
                                          _pre161358_
                                          'gx#prelude-context::t)
                                         _pre161358_
                                         (if (##structure-instance-of?
                                              _pre161358_
                                              'gx#module-context::t)
                                             (gx#core-module->prelude-context
                                              _pre161358_)
                                             (if (string? _pre161358_)
                                                 (gx#core-module->prelude-context
                                                  (gx#core-import-module__0
                                                   _pre161358_))
                                                 (if (not _pre161358_)
                                                     (let ((_$e161363_
                                                            (gx#current-expander-module-prelude)))
                                                       (if _$e161363_
                                                           _$e161363_
                                                           (let ((__obj167009
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
                     (gx#prelude-context:::init! __obj167009 '#f)
                     __obj167009)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error '"Cannot import module; unknown prelude"
                                                            _rpath161267_
                                                            _pre161358_))))))
                                    (_ctx161368_
                                     (let ((__obj167010
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
                                        __obj167010
                                        _id161359_
                                        _prelude161366_
                                        _ns161360_
                                        _path161355_)
                                       __obj167010))
                                    (_body161370_
                                     (gx#core-expand-module-begin
                                      _body161361_
                                      _ctx161368_))
                                    (_body161372_
                                     (gx#core-quote-syntax__%
                                      (gx#core-cons '%#begin _body161370_)
                                      _path161355_
                                      _ctx161368_
                                      '())))
                               (##unchecked-structure-set!
                                _ctx161368_
                                (make-promise
                                 (lambda () (gx#eval-syntax* _body161372_)))
                                '10
                                gx#module-context::t
                                '#f)
                               (##unchecked-structure-set!
                                _ctx161368_
                                _body161372_
                                '11
                                gx#module-context::t
                                '#f)
                               (table-set!
                                (gx#current-expander-module-registry)
                                _path161355_
                                _ctx161368_)
                               (table-set!
                                (gx#current-expander-module-registry)
                                _id161359_
                                _ctx161368_)
                               _ctx161368_)))))
                     gx#current-expander-context
                     (gx#core-context-root__0)
                     gx#current-expander-marks
                     '()
                     gx#current-expander-phi
                     '0
                     gx#current-expander-path
                     (cons _path161355_ (gx#current-expander-path))
                     gx#current-import-expander-phi
                     '#f
                     gx#current-export-expander-phi
                     '#f)))
                 (_import-submodule161271_
                  (lambda (_rpath161283_)
                    (let* ((_rpath161284161291_ _rpath161283_)
                           (_E161286161295_
                            (lambda ()
                              (error '"No clause matching"
                                     _rpath161284161291_)))
                           (_K161287161343_
                            (lambda (_refs161298_ _origin161299_)
                              (let ((_ctx161301_
                                     (if _origin161299_
                                         (gx#core-import-module__%
                                          _origin161299_
                                          _reload?161268_)
                                         (gx#current-expander-context))))
                                (let _lp161303_ ((_rest161305_ _refs161298_)
                                                 (_ctx161306_ _ctx161301_))
                                  (let* ((_rest161307161315_ _rest161305_)
                                         (_else161309161323_
                                          (lambda () _ctx161306_))
                                         (_K161311161331_
                                          (lambda (_rest161326_ _id161327_)
                                            (let ((_bind161329_
                                                   (gx#resolve-identifier__%
                                                    _id161327_
                                                    '0
                                                    _ctx161306_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _bind161329_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _bind161329_
                                                         '4
                                                         gx#syntax-binding::t
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_lp161303_
                                                   _rest161326_
                                                   (##unchecked-structure-ref
                                                    _bind161329_
                                                    '4
                                                    gx#syntax-binding::t
                                                    '#f))
                                                  (error '"Cannot import submodule; not bound as a module"
                                                         _rpath161283_
                                                         _id161327_
                                                         _bind161329_))))))
                                    (if (##pair? _rest161307161315_)
                                        (let ((_hd161312161334_
                                               (##car _rest161307161315_))
                                              (_tl161313161336_
                                               (##cdr _rest161307161315_)))
                                          (let* ((_id161339_ _hd161312161334_)
                                                 (_rest161341_
                                                  _tl161313161336_))
                                            (_K161311161331_
                                             _rest161341_
                                             _id161339_)))
                                        (_else161309161323_))))))))
                      (if (##pair? _rpath161284161291_)
                          (let ((_hd161288161346_ (##car _rpath161284161291_))
                                (_tl161289161348_ (##cdr _rpath161284161291_)))
                            (let* ((_origin161351_ _hd161288161346_)
                                   (_refs161353_ _tl161289161348_))
                              (_K161287161343_ _refs161353_ _origin161351_)))
                          (_E161286161295_))))))
          (let ((_$e161273_
                 (if (not _reload?161268_)
                     (table-ref
                      (gx#current-expander-module-registry)
                      _rpath161267_
                      '#f)
                     '#f)))
            (if _$e161273_
                (values _$e161273_)
                (if (list? _rpath161267_)
                    (_import-submodule161271_ _rpath161267_)
                    (if (gx#core-library-module-path? _rpath161267_)
                        (let ((_ctx161276_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _rpath161267_)
                                _reload?161268_)))
                          (table-set!
                           (gx#current-expander-module-registry)
                           _rpath161267_
                           _ctx161276_)
                          _ctx161276_)
                        (let* ((_npath161278_ (path-normalize _rpath161267_))
                               (_$e161280_
                                (if (not _reload?161268_)
                                    (table-ref
                                     (gx#current-expander-module-registry)
                                     _npath161278_
                                     '#f)
                                    '#f)))
                          (if _$e161280_
                              (values _$e161280_)
                              (_import-source161270_ _npath161278_))))))))))
    (define gx#core-import-module__0
      (lambda (_rpath161379_)
        (let ((_reload?161381_ '#f))
          (gx#core-import-module__% _rpath161379_ _reload?161381_))))
    (define gx#core-import-module
      (lambda _g167021_
        (let ((_g167020_ (##length _g167021_)))
          (cond ((##fx= _g167020_ 1)
                 (apply (lambda (_rpath161379_)
                          (gx#core-import-module__0 _rpath161379_))
                        _g167021_))
                ((##fx= _g167020_ 2)
                 (apply (lambda (_rpath161383_ _reload?161384_)
                          (gx#core-import-module__%
                           _rpath161383_
                           _reload?161384_))
                        _g167021_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g167021_))))))
    (define gx#core-read-module
      (lambda (_path161256_)
        (with-catch
         (lambda (_exn161258_)
           (if (and (datum-parsing-exception? _exn161258_)
                    (eq? (datum-parsing-exception-filepos _exn161258_) '0))
               (gx#core-read-module/lang _path161256_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _path161256_
                (call-with-parameters
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_g161260161262_)
                      (display-exception _exn161258_ _g161260161262_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _path161256_)))))
    (define gx#core-read-module/sexp
      (lambda (_path161119_)
        (let _lp161121_ ((_body161123_ (read-syntax-from-file _path161119_))
                         (_pre161124_ '#f)
                         (_ns161125_ '#f)
                         (_pkg161126_ '#f))
          (let* ((_e161127161151_ _body161123_)
                 (_E161143161173_
                  (lambda ()
                    (let ((_g167022_
                           (if _pkg161126_
                               (values _pre161124_ _ns161125_ _pkg161126_)
                               (gx#core-read-module-package
                                _path161119_
                                _pre161124_
                                _ns161125_))))
                      (begin
                        (let ((_g167023_
                               (if (##values? _g167022_)
                                   (##vector-length _g167022_)
                                   1)))
                          (if (not (##fx= _g167023_ 3))
                              (error "Context expects 3 values" _g167023_)))
                        (let ((_pre161155_ (##vector-ref _g167022_ 0))
                              (_ns161156_ (##vector-ref _g167022_ 1))
                              (_pkg161157_ (##vector-ref _g167022_ 2)))
                          (let* ((_prelude161159_
                                  (if (gx#core-bound-module-prelude?
                                       _pre161155_)
                                      (gx#syntax-local-e__0 _pre161155_)
                                      (if (gx#core-library-module-path?
                                           _pre161155_)
                                          (gx#core-resolve-library-module-path
                                           _pre161155_)
                                          (if (gx#stx-string? _pre161155_)
                                              (gx#core-resolve-module-path__%
                                               _pre161155_
                                               _path161119_)
                                              (gx#stx-e _pre161155_)))))
                                 (_path-id161161_
                                  (gx#core-module-path->namespace
                                   _path161119_))
                                 (_pkg-id161163_
                                  (if _pkg161157_
                                      (string-append
                                       _pkg161157_
                                       '"/"
                                       _path-id161161_)
                                      _path-id161161_))
                                 (_module-id161165_
                                  (string->symbol _pkg-id161163_))
                                 (_module-ns161170_
                                  (if (eq? _ns161156_ '#!void)
                                      '#f
                                      (let ((_$e161167_ _ns161156_))
                                        (if _$e161167_
                                            _$e161167_
                                            _pkg-id161163_)))))
                            (values _prelude161159_
                                    _module-id161165_
                                    _module-ns161170_
                                    _body161123_)))))))
                 (_E161136161202_
                  (lambda ()
                    (if (gx#stx-pair? _e161127161151_)
                        (let ((_e161144161177_ (gx#syntax-e _e161127161151_)))
                          (let ((_hd161145161180_ (##car _e161144161177_))
                                (_tl161146161182_ (##cdr _e161144161177_)))
                            (if (eq? (gx#stx-e _hd161145161180_) 'package:)
                                (if (gx#stx-pair? _tl161146161182_)
                                    (let ((_e161147161185_
                                           (gx#syntax-e _tl161146161182_)))
                                      (let ((_hd161148161188_
                                             (##car _e161147161185_))
                                            (_tl161149161190_
                                             (##cdr _e161147161185_)))
                                        (let* ((_pkg161193_ _hd161148161188_)
                                               (_rest161195_ _tl161149161190_))
                                          (if '#t
                                              (let ((_pkg161200_
                                                     (if (gx#identifier?
                                                          _pkg161193_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _pkg161193_))
                                                         (if (or (gx#stx-string?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _pkg161193_)
                         (gx#stx-false? _pkg161193_))
                     (gx#stx-e _pkg161193_)
                     (gx#raise-syntax-error
                      'import
                      '"Bad syntax; Illegal package name"
                      _pkg161193_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp161121_
                                                 _rest161195_
                                                 _pre161124_
                                                 _ns161125_
                                                 _pkg161200_))
                                              (_E161143161173_)))))
                                    (_E161143161173_))
                                (_E161143161173_))))
                        (_E161143161173_))))
                 (_E161129161228_
                  (lambda ()
                    (if (gx#stx-pair? _e161127161151_)
                        (let ((_e161137161206_ (gx#syntax-e _e161127161151_)))
                          (let ((_hd161138161209_ (##car _e161137161206_))
                                (_tl161139161211_ (##cdr _e161137161206_)))
                            (if (eq? (gx#stx-e _hd161138161209_) 'namespace:)
                                (if (gx#stx-pair? _tl161139161211_)
                                    (let ((_e161140161214_
                                           (gx#syntax-e _tl161139161211_)))
                                      (let ((_hd161141161217_
                                             (##car _e161140161214_))
                                            (_tl161142161219_
                                             (##cdr _e161140161214_)))
                                        (let* ((_ns161222_ _hd161141161217_)
                                               (_rest161224_ _tl161142161219_))
                                          (if '#t
                                              (let ((_ns161226_
                                                     (if (gx#identifier?
                                                          _ns161222_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _ns161222_))
                                                         (if (gx#stx-string?
                                                              _ns161222_)
                                                             (gx#stx-e
                                                              _ns161222_)
                                                             (if (gx#stx-false?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _ns161222_)
                         '#!void
                         (gx#raise-syntax-error
                          'import
                          '"Bad syntax; illegal namespace"
                          _ns161222_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp161121_
                                                 _rest161224_
                                                 _pre161124_
                                                 _ns161226_
                                                 _pkg161126_))
                                              (_E161136161202_)))))
                                    (_E161136161202_))
                                (_E161136161202_))))
                        (_E161136161202_))))
                 (_E161128161252_
                  (lambda ()
                    (if (gx#stx-pair? _e161127161151_)
                        (let ((_e161130161232_ (gx#syntax-e _e161127161151_)))
                          (let ((_hd161131161235_ (##car _e161130161232_))
                                (_tl161132161237_ (##cdr _e161130161232_)))
                            (if (eq? (gx#stx-e _hd161131161235_) 'prelude:)
                                (if (gx#stx-pair? _tl161132161237_)
                                    (let ((_e161133161240_
                                           (gx#syntax-e _tl161132161237_)))
                                      (let ((_hd161134161243_
                                             (##car _e161133161240_))
                                            (_tl161135161245_
                                             (##cdr _e161133161240_)))
                                        (let* ((_prelude161248_
                                                _hd161134161243_)
                                               (_rest161250_ _tl161135161245_))
                                          (if '#t
                                              (_lp161121_
                                               _rest161250_
                                               _prelude161248_
                                               _ns161125_
                                               _pkg161126_)
                                              (_E161129161228_)))))
                                    (_E161129161228_))
                                (_E161129161228_))))
                        (_E161129161228_)))))
            (_E161128161252_)))))
    (define gx#core-read-module/lang
      (lambda (_path160946_)
        (letrec ((_default-read-module-body160948_
                  (lambda (_inp161111_)
                    (let _lp161113_ ((_body161115_ '()))
                      (let ((_next161117_ (read-syntax _inp161111_)))
                        (if (eof-object? _next161117_)
                            (reverse _body161115_)
                            (_lp161113_ (cons _next161117_ _body161115_)))))))
                 (_read-body160949_
                  (lambda (_inp161030_
                           _pre161031_
                           _ns161032_
                           _pkg161033_
                           _args161034_)
                    (let ((_g167024_
                           (if _pkg161033_
                               (values _pre161031_ _ns161032_ _pkg161033_)
                               (gx#core-read-module-package
                                _path160946_
                                _pre161031_
                                _ns161032_))))
                      (begin
                        (let ((_g167025_
                               (if (##values? _g167024_)
                                   (##vector-length _g167024_)
                                   1)))
                          (if (not (##fx= _g167025_ 3))
                              (error "Context expects 3 values" _g167025_)))
                        (let ((_pre161036_ (##vector-ref _g167024_ 0))
                              (_ns161037_ (##vector-ref _g167024_ 1))
                              (_pkg161038_ (##vector-ref _g167024_ 2)))
                          (let* ((_prelude161040_
                                  (gx#import-module__0 _pre161036_))
                                 (_read-module-body161094_
                                  (let ((_$e161086_
                                         (find (lambda (_e161041161043_)
                                                 (let* ((_g161045161055_
                                                         _e161041161043_)
                                                        (_else161047161063_
                                                         (lambda () '#f))
                                                        (_K161049161067_
                                                         (lambda () '#t)))
                                                   (if (##structure-direct-instance-of?
                                                        _g161045161055_
                                                        'gx#module-export::t)
                                                       (let* ((_e161050161070_
                                                               (##unchecked-structure-ref
                                                                _g161045161055_
                                                                '1
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e161051161073_
                                                               (##unchecked-structure-ref
                                                                _g161045161055_
                                                                '2
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e161052161076_
                                                               (##unchecked-structure-ref
                                                                _g161045161055_
                                                                '3
                                                                gx#module-export::t
                                                                '#f)))
                                                         (if (##eq? _e161052161076_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)
                     (let ((_e161053161079_
                            (##unchecked-structure-ref
                             _g161045161055_
                             '4
                             gx#module-export::t
                             '#f)))
                       (if ((lambda (_g161081161083_)
                              (eq? _g161081161083_ 'read-module-body))
                            _e161053161079_)
                           (_K161049161067_)
                           (_else161047161063_)))
                     (_else161047161063_)))
               (_else161047161063_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (##unchecked-structure-ref
                                                _prelude161040_
                                                '9
                                                gx#module-context::t
                                                '#f))))
                                    (if _$e161086_
                                        ((lambda (_xport161089_)
                                           (let ((_proc161092_
                                                  (with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _xport161089_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _proc161092_)
                                                 _proc161092_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _path160946_
                                                  _pre161036_
                                                  _proc161092_))))
                                         _$e161086_)
                                        _default-read-module-body160948_)))
                                 (_path-id161096_
                                  (gx#core-module-path->namespace
                                   _path160946_))
                                 (_pkg-id161098_
                                  (if _pkg161038_
                                      (string-append
                                       _pkg161038_
                                       '"/"
                                       _path-id161096_)
                                      _path-id161096_))
                                 (_module-id161100_
                                  (string->symbol _pkg-id161098_))
                                 (_module-ns161105_
                                  (let ((_$e161102_ _ns161037_))
                                    (if _$e161102_ _$e161102_ _pkg-id161098_)))
                                 (_body161108_
                                  (call-with-parameters
                                   (lambda ()
                                     (_read-module-body161094_ _inp161030_))
                                   gx#current-module-reader-path
                                   _path160946_
                                   gx#current-module-reader-args
                                   _args161034_)))
                            (values _prelude161040_
                                    _module-id161100_
                                    _module-ns161105_
                                    _body161108_)))))))
                 (_string-e160950_
                  (lambda (_obj161027_ _what161028_)
                    (if (string? _obj161027_)
                        _obj161027_
                        (if (symbol? _obj161027_)
                            (symbol->string _obj161027_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _what161028_)
                             _path160946_
                             _obj161027_)))))
                 (_read-lang-args160951_
                  (lambda (_inp160982_ _args160983_)
                    (let* ((_args160984160992_ _args160983_)
                           (_else160986161000_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _path160946_)))
                           (_K160988161015_
                            (lambda (_args161003_ _prelude161004_)
                              (let* ((_pkg161006_
                                      (pgetq 'package: _args161003_))
                                     (_pkg161008_
                                      (if _pkg161006_
                                          (_string-e160950_
                                           _pkg161006_
                                           '"package")
                                          '#f))
                                     (_ns161010_
                                      (pgetq 'namespace: _args161003_))
                                     (_ns161012_
                                      (if _ns161010_
                                          (_string-e160950_
                                           _ns161010_
                                           '"namespace")
                                          '#f)))
                                (_read-body160949_
                                 _inp160982_
                                 _prelude161004_
                                 _ns161012_
                                 _pkg161008_
                                 _args161003_)))))
                      (if (##pair? _args160984160992_)
                          (let ((_hd160989161018_ (##car _args160984160992_))
                                (_tl160990161020_ (##cdr _args160984160992_)))
                            (let* ((_prelude161023_ _hd160989161018_)
                                   (_args161025_ _tl160990161020_))
                              (_K160988161015_ _args161025_ _prelude161023_)))
                          (_else160986161000_)))))
                 (_read-lang160952_
                  (lambda (_inp160957_)
                    (let* ((_head160959_ (read-line _inp160957_))
                           (_$e160961_ (string-index _head160959_ '#\space)))
                      (if _$e160961_
                          ((lambda (_ix160964_)
                             (let ((_lang160966_
                                    (substring _head160959_ '0 _ix160964_)))
                               (if (equal? _lang160966_ '"#lang")
                                   (let* ((_rest160968_
                                           (substring
                                            _head160959_
                                            (fx+ _ix160964_ '1)
                                            (string-length _head160959_)))
                                          (_args160979_
                                           (with-catch
                                            (lambda (_g160969160971_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _path160946_
                                               _g160969160971_))
                                            (lambda ()
                                              (call-with-input-string
                                               _rest160968_
                                               (lambda (_g160974160976_)
                                                 (read-all
                                                  _g160974160976_
                                                  read)))))))
                                     (_read-lang-args160951_
                                      _inp160957_
                                      _args160979_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _path160946_))))
                           _$e160961_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _path160946_)))))
                 (_read-e160953_
                  (lambda (_inp160955_)
                    (if (eq? (peek-char _inp160955_) '#\#)
                        (_read-lang160952_ _inp160955_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _path160946_)))))
          (gx#call-with-input-source-file _path160946_ _read-e160953_))))
    (define gx#core-read-module-package
      (lambda (_path160900_ _pre160901_ _ns160902_)
        (letrec ((_string-e160904_
                  (lambda (_e160944_)
                    (if (symbol? _e160944_)
                        (symbol->string _e160944_)
                        (if (string? _e160944_)
                            _e160944_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _e160944_))))))
          (let _lp160906_ ((_dir160908_ (path-directory _path160900_))
                           (_pkg-path160909_ '()))
            (let ((_gerbil.pkg160911_ (path-expand '"gerbil.pkg" _dir160908_)))
              (if (file-exists? _gerbil.pkg160911_)
                  (let ((_plist160913_
                         (gx#core-library-package-plist__% _dir160908_ '#t)))
                    (if (null? _plist160913_)
                        (let ((_pkg160915_
                               (if (not (null? _pkg-path160909_))
                                   (string-join _pkg-path160909_ '"/")
                                   '#f)))
                          (values _pre160901_ _ns160902_ _pkg160915_))
                        (if (list? _plist160913_)
                            (let* ((_root160917_
                                    (pgetq 'package: _plist160913_))
                                   (_pkg160921_
                                    (let ((_pkg-path160919_
                                           (if _root160917_
                                               (cons (_string-e160904_
                                                      _root160917_)
                                                     _pkg-path160909_)
                                               _pkg-path160909_)))
                                      (if (not (null? _pkg-path160919_))
                                          (string-join _pkg-path160919_ '"/")
                                          '#f)))
                                   (_ns160928_
                                    (let ((_ns160926_
                                           (let ((_$e160923_ _ns160902_))
                                             (if _$e160923_
                                                 _$e160923_
                                                 (pgetq 'namespace:
                                                        _plist160913_)))))
                                      (if _ns160926_
                                          (_string-e160904_ _ns160926_)
                                          '#f)))
                                   (_pre160933_
                                    (let ((_$e160930_ _pre160901_))
                                      (if _$e160930_
                                          _$e160930_
                                          (pgetq 'prelude: _plist160913_)))))
                              (values _pre160933_ _ns160928_ _pkg160921_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _plist160913_))))
                  (let ((_dir*160936_
                         (path-strip-trailing-directory-separator
                          _dir160908_)))
                    (if (or (string-empty? _dir*160936_)
                            (equal? _dir160908_ _dir*160936_))
                        (values _pre160901_ _ns160902_ '#f)
                        (let ((_xpath160941_
                               (path-strip-directory _dir*160936_))
                              (_xdir160942_ (path-directory _dir*160936_)))
                          (_lp160906_
                           _xdir160942_
                           (cons _xpath160941_ _pkg-path160909_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_path160898_)
        (path-strip-extension (path-strip-directory _path160898_))))
    (define gx#core-module-path->id
      (lambda (_path160896_)
        (string->symbol (gx#core-module-path->namespace _path160896_))))
    (define gx#core-resolve-module-path__%
      (lambda (_stx-path160875_ _rel160876_)
        (let* ((_path160878_ (gx#stx-e _stx-path160875_))
               (_path160880_
                (if (string-empty? (path-extension _path160878_))
                    (string-append _path160878_ '".ss")
                    _path160878_)))
          (gx#core-resolve-path__%
           _path160880_
           (let ((_$e160883_ (gx#stx-source _stx-path160875_)))
             (if _$e160883_ _$e160883_ _rel160876_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_stx-path160889_)
        (let ((_rel160891_ '#f))
          (gx#core-resolve-module-path__% _stx-path160889_ _rel160891_))))
    (define gx#core-resolve-module-path
      (lambda _g167027_
        (let ((_g167026_ (##length _g167027_)))
          (cond ((##fx= _g167026_ 1)
                 (apply (lambda (_stx-path160889_)
                          (gx#core-resolve-module-path__0 _stx-path160889_))
                        _g167027_))
                ((##fx= _g167026_ 2)
                 (apply (lambda (_stx-path160893_ _rel160894_)
                          (gx#core-resolve-module-path__%
                           _stx-path160893_
                           _rel160894_))
                        _g167027_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g167027_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_libpath160761_)
        (let* ((_spath160763_ (symbol->string (gx#stx-e _libpath160761_)))
               (_spath160765_
                (substring _spath160763_ '1 (string-length _spath160763_)))
               (_ext160767_ (path-extension _spath160765_))
               (_ssi160769_
                (if (string-empty? _ext160767_)
                    (string-append _spath160765_ '".ssi")
                    (string-append
                     (path-strip-extension _spath160765_)
                     '".ssi")))
               (_srcs160773_
                (if (string-empty? _ext160767_)
                    (map (lambda (_ext160771_)
                           (string-append _spath160765_ _ext160771_))
                         '(".ss" ".sld" ".scm"))
                    (cons _spath160765_ '()))))
          (let _lp160776_ ((_rest160778_
                            (gx#current-expander-module-library-path)))
            (let* ((_rest160779160788_ _rest160778_)
                   (_E160782160792_
                    (lambda ()
                      (error '"No clause matching" _rest160779160788_))))
              (let ((_K160784160862_
                     (lambda (_rest160803_ _dir160804_)
                       (letrec ((_resolve160806_
                                 (lambda (_ssi160818_ _srcs160819_)
                                   (let ((_compiled-path160821_
                                          (path-expand
                                           _ssi160818_
                                           _dir160804_)))
                                     (if (file-exists? _compiled-path160821_)
                                         (path-normalize _compiled-path160821_)
                                         (let _lpr160823_ ((_rest-src160825_
                                                            _srcs160819_))
                                           (let* ((_rest-src160826160834_
                                                   _rest-src160825_)
                                                  (_else160828160842_
                                                   (lambda ()
                                                     (_lp160776_
                                                      _rest160803_)))
                                                  (_K160830160850_
                                                   (lambda (_rest-src160845_
                                                            _src160846_)
                                                     (let ((_src-path160848_
                                                            (path-expand
                                                             _src160846_
                                                             _dir160804_)))
                                                       (if (file-exists?
                                                            _src-path160848_)
                                                           (path-normalize
                                                            _src-path160848_)
                                                           (_lpr160823_
                                                            _rest-src160845_))))))
                                             (if (##pair? _rest-src160826160834_)
                                                 (let ((_hd160831160853_
                                                        (##car _rest-src160826160834_))
                                                       (_tl160832160855_
                                                        (##cdr _rest-src160826160834_)))
                                                   (let* ((_src160858_
                                                           _hd160831160853_)
                                                          (_rest-src160860_
                                                           _tl160832160855_))
                                                     (_K160830160850_
                                                      _rest-src160860_
                                                      _src160858_)))
                                                 (_else160828160842_)))))))))
                         (let ((_$e160808_
                                (gx#core-library-package-path-prefix
                                 _dir160804_)))
                           (if _$e160808_
                               ((lambda (_prefix160811_)
                                  (if (string-prefix?
                                       _prefix160811_
                                       _spath160765_)
                                      (let ((_ssi160815_
                                             (substring
                                              _ssi160769_
                                              (string-length _prefix160811_)
                                              (string-length _ssi160769_)))
                                            (_srcs160816_
                                             (map (lambda (_src160813_)
                                                    (substring
                                                     _src160813_
                                                     (string-length
                                                      _prefix160811_)
                                                     (string-length
                                                      _src160813_)))
                                                  _srcs160773_)))
                                        (_resolve160806_
                                         _ssi160815_
                                         _srcs160816_))
                                      (_lp160776_ _rest160803_)))
                                _$e160808_)
                               (_resolve160806_ _ssi160769_ _srcs160773_))))))
                    (_K160783160797_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"Cannot find library module"
                        _libpath160761_))))
                (let ((_try-match160781160800_
                       (lambda ()
                         (if (##null? _rest160779160788_)
                             (_K160783160797_)
                             (_E160782160792_)))))
                  (if (##pair? _rest160779160788_)
                      (let ((_tl160786160867_ (##cdr _rest160779160788_))
                            (_hd160785160865_ (##car _rest160779160788_)))
                        (let ((_dir160870_ _hd160785160865_)
                              (_rest160872_ _tl160786160867_))
                          (_K160784160862_ _rest160872_ _dir160870_)))
                      (_try-match160781160800_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_modpath160734_)
        (letrec ((_resolve160736_
                  (lambda (_path160753_ _base160754_)
                    (let ((_$e160756_ (string-rindex _base160754_ '#\/)))
                      (if _$e160756_
                          ((lambda (_idx160759_)
                             (gx#core-resolve-library-module-path
                              (string->symbol
                               (string-append
                                '":"
                                (substring _base160754_ '0 _idx160759_)
                                '"/"
                                _path160753_))))
                           _$e160756_)
                          (gx#core-resolve-library-module-path
                           (string->symbol
                            (string-append '":" _path160753_))))))))
          (let ((_spath160738_ (symbol->string (gx#stx-e _modpath160734_)))
                (_mod160739_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _mod160739_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"Cannot resolve relative module path; not in module context"
                 _modpath160734_))
            (let ((_mpath160741_
                   (symbol->string
                    (##structure-ref
                     _mod160739_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _lp160743_ ((_spath160745_ _spath160738_)
                               (_mpath160746_ _mpath160741_))
                (if (string-prefix? '"../" _spath160745_)
                    (let ((_$e160748_ (string-rindex _mpath160746_ '#\/)))
                      (if _$e160748_
                          ((lambda (_idx160751_)
                             (_lp160743_
                              (substring
                               _spath160745_
                               '3
                               (string-length _spath160745_))
                              (substring _mpath160746_ '0 _idx160751_)))
                           _$e160748_)
                          (gx#raise-syntax-error
                           '#f
                           '"Cannot resolve relative module path; illegal traversal"
                           _modpath160734_)))
                    (if (string-prefix? '"./" _spath160745_)
                        (_lp160743_
                         (substring
                          _spath160745_
                          '2
                          (string-length _spath160745_))
                         _mpath160746_)
                        (_resolve160736_ _spath160745_ _mpath160746_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_dir160727_)
        (let ((_$e160729_
               (pgetq 'package:
                      (gx#core-library-package-plist__0 _dir160727_))))
          (if _$e160729_
              ((lambda (_pkg160732_)
                 (string-append (symbol->string _pkg160732_) '"/"))
               _$e160729_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_dir160699_ _exists?160700_)
        (let* ((_cache160702_ (gx#core-library-package-cache))
               (_$e160704_ (table-ref _cache160702_ _dir160699_ '#f)))
          (if _$e160704_
              (values _$e160704_)
              (let* ((_gerbil.pkg160707_
                      (path-expand '"gerbil.pkg" _dir160699_))
                     (_plist160714_
                      (if (or _exists?160700_
                              (file-exists? _gerbil.pkg160707_))
                          (let ((_e160712_
                                 (gx#call-with-input-source-file
                                  _gerbil.pkg160707_
                                  read)))
                            (if (eof-object? _e160712_)
                                '()
                                (if (list? _e160712_)
                                    _e160712_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _gerbil.pkg160707_
                                     _e160712_))))
                          '())))
                (table-set! _cache160702_ _dir160699_ _plist160714_)
                _plist160714_)))))
    (define gx#core-library-package-plist__0
      (lambda (_dir160720_)
        (let ((_exists?160722_ '#f))
          (gx#core-library-package-plist__% _dir160720_ _exists?160722_))))
    (define gx#core-library-package-plist
      (lambda _g167029_
        (let ((_g167028_ (##length _g167029_)))
          (cond ((##fx= _g167028_ 1)
                 (apply (lambda (_dir160720_)
                          (gx#core-library-package-plist__0 _dir160720_))
                        _g167029_))
                ((##fx= _g167028_ 2)
                 (apply (lambda (_dir160724_ _exists?160725_)
                          (gx#core-library-package-plist__%
                           _dir160724_
                           _exists?160725_))
                        _g167029_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g167029_))))))
    (define gx#core-library-package-cache
      (lambda ()
        (let ((_$e160693_ (gx#current-expander-module-library-package-cache)))
          (if _$e160693_
              (values _$e160693_)
              (let ((_cache160696_ (make-table)))
                (gx#current-expander-module-library-package-cache
                 _cache160696_)
                _cache160696_)))))
    (define gx#core-library-module-path?
      (lambda (_stx160690_) (gx#core-special-module-path? _stx160690_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_stx160688_) (gx#core-special-module-path? _stx160688_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_stx160683_ _char160684_)
        (if (gx#identifier? _stx160683_)
            (if (interned-symbol? (gx#stx-e _stx160683_))
                (let ((_str160686_ (symbol->string (gx#stx-e _stx160683_))))
                  (if (fx> (string-length _str160686_) '1)
                      (eq? (string-ref _str160686_ '0) _char160684_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_stx160677_)
        (gx#core-bound-identifier?__%
         _stx160677_
         (lambda (_g160678160680_)
           (gx#expander-binding?__% _g160678160680_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_stx160671_)
        (gx#core-bound-identifier?__%
         _stx160671_
         (lambda (_g160672160674_)
           (gx#expander-binding?__% _g160672160674_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_stx160658_)
        (letrec ((_module-prelude?160660_
                  (lambda (_e160666_)
                    (let ((_$e160668_
                           (##structure-instance-of?
                            _e160666_
                            'gx#module-context::t)))
                      (if _$e160668_
                          _$e160668_
                          (##structure-instance-of?
                           _e160666_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _stx160658_
           (lambda (_g160661160663_)
             (gx#expander-binding?__%
              _g160661160663_
              _module-prelude?160660_))))))
    (define gx#core-bind-import!__%
      (lambda (_in160588_ _ctx160589_ _force-weak?160590_)
        (let* ((_in160591160600_ _in160588_)
               (_E160593160604_
                (lambda () (error '"No clause matching" _in160591160600_)))
               (_K160594160617_
                (lambda (_weak?160607_ _phi160608_ _key160609_ _source160610_)
                  (gx#core-bind!__%
                   _key160609_
                   (let ((_e160612_
                          (gx#core-resolve-module-export _source160610_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref
                       _e160612_
                       '1
                       gx#binding::t
                       '#f)
                      _key160609_
                      _phi160608_
                      _e160612_
                      (##unchecked-structure-ref
                       _source160610_
                       '1
                       gx#module-export::t
                       '#f)
                      (let ((_$e160614_ _force-weak?160590_))
                        (if _$e160614_ _$e160614_ _weak?160607_))))
                   gx#core-context-rebind?
                   _phi160608_
                   _ctx160589_))))
          (if (##structure-direct-instance-of?
               _in160591160600_
               'gx#module-import::t)
              (let* ((_e160595160620_
                      (##unchecked-structure-ref
                       _in160591160600_
                       '1
                       gx#module-import::t
                       '#f))
                     (_source160623_ _e160595160620_)
                     (_e160596160625_
                      (##unchecked-structure-ref
                       _in160591160600_
                       '2
                       gx#module-import::t
                       '#f))
                     (_key160628_ _e160596160625_)
                     (_e160597160630_
                      (##unchecked-structure-ref
                       _in160591160600_
                       '3
                       gx#module-import::t
                       '#f))
                     (_phi160633_ _e160597160630_)
                     (_e160598160635_
                      (##unchecked-structure-ref
                       _in160591160600_
                       '4
                       gx#module-import::t
                       '#f))
                     (_weak?160638_ _e160598160635_))
                (_K160594160617_
                 _weak?160638_
                 _phi160633_
                 _key160628_
                 _source160623_))
              (_E160593160604_)))))
    (define gx#core-bind-import!__0
      (lambda (_in160643_)
        (let* ((_ctx160645_ (gx#current-expander-context))
               (_force-weak?160647_ '#f))
          (gx#core-bind-import!__%
           _in160643_
           _ctx160645_
           _force-weak?160647_))))
    (define gx#core-bind-import!__1
      (lambda (_in160649_ _ctx160650_)
        (let ((_force-weak?160652_ '#f))
          (gx#core-bind-import!__%
           _in160649_
           _ctx160650_
           _force-weak?160652_))))
    (define gx#core-bind-import!
      (lambda _g167031_
        (let ((_g167030_ (##length _g167031_)))
          (cond ((##fx= _g167030_ 1)
                 (apply (lambda (_in160643_)
                          (gx#core-bind-import!__0 _in160643_))
                        _g167031_))
                ((##fx= _g167030_ 2)
                 (apply (lambda (_in160649_ _ctx160650_)
                          (gx#core-bind-import!__1 _in160649_ _ctx160650_))
                        _g167031_))
                ((##fx= _g167030_ 3)
                 (apply (lambda (_in160654_ _ctx160655_ _force-weak?160656_)
                          (gx#core-bind-import!__%
                           _in160654_
                           _ctx160655_
                           _force-weak?160656_))
                        _g167031_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g167031_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_in160574_ _ctx160575_)
        (gx#core-bind-import!__% _in160574_ _ctx160575_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_in160580_)
        (let ((_ctx160582_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _in160580_ _ctx160582_))))
    (define gx#core-bind-weak-import!
      (lambda _g167033_
        (let ((_g167032_ (##length _g167033_)))
          (cond ((##fx= _g167032_ 1)
                 (apply (lambda (_in160580_)
                          (gx#core-bind-weak-import!__0 _in160580_))
                        _g167033_))
                ((##fx= _g167032_ 2)
                 (apply (lambda (_in160584_ _ctx160585_)
                          (gx#core-bind-weak-import!__%
                           _in160584_
                           _ctx160585_))
                        _g167033_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g167033_))))))
    (define gx#core-resolve-module-export
      (lambda (_out160465_)
        (letrec ((_subst160467_
                  (lambda (_key160513_)
                    (let* ((_key160514160522_ _key160513_)
                           (_else160516160530_ (lambda () _key160513_))
                           (_K160518160561_
                            (lambda (_mark160533_ _id160534_)
                              (let* ((_mark160535160541_ _mark160533_)
                                     (_E160537160545_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark160535160541_)))
                                     (_K160538160553_
                                      (lambda (_subst160548_)
                                        (let ((_$e160550_
                                               (if _subst160548_
                                                   (table-ref
                                                    _subst160548_
                                                    _id160534_
                                                    '#f)
                                                   '#f)))
                                          (if _$e160550_
                                              _$e160550_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _key160513_))))))
                                (if (##structure-instance-of?
                                     _mark160535160541_
                                     'gx#expander-mark::t)
                                    (let* ((_e160539160556_
                                            (##unchecked-structure-ref
                                             _mark160535160541_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst160559_ _e160539160556_))
                                      (_K160538160553_ _subst160559_))
                                    (_E160537160545_))))))
                      (if (##pair? _key160514160522_)
                          (let ((_hd160519160564_ (##car _key160514160522_))
                                (_tl160520160566_ (##cdr _key160514160522_)))
                            (let* ((_id160569_ _hd160519160564_)
                                   (_mark160571_ _tl160520160566_))
                              (_K160518160561_ _mark160571_ _id160569_)))
                          (_else160516160530_))))))
          (let* ((_out160468160478_ _out160465_)
                 (_E160470160482_
                  (lambda () (error '"No clause matching" _out160468160478_)))
                 (_K160471160489_
                  (lambda (_phi160485_ _key160486_ _ctx160487_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _ctx160487_ _phi160485_)
                     (_subst160467_ _key160486_)))))
            (if (##structure-direct-instance-of?
                 _out160468160478_
                 'gx#module-export::t)
                (let* ((_e160472160492_
                        (##unchecked-structure-ref
                         _out160468160478_
                         '1
                         gx#module-export::t
                         '#f))
                       (_ctx160495_ _e160472160492_)
                       (_e160473160497_
                        (##unchecked-structure-ref
                         _out160468160478_
                         '2
                         gx#module-export::t
                         '#f))
                       (_key160500_ _e160473160497_)
                       (_e160474160502_
                        (##unchecked-structure-ref
                         _out160468160478_
                         '3
                         gx#module-export::t
                         '#f))
                       (_phi160505_ _e160474160502_)
                       (_e160475160507_
                        (##unchecked-structure-ref
                         _out160468160478_
                         '4
                         gx#module-export::t
                         '#f))
                       (_e160476160510_
                        (##unchecked-structure-ref
                         _out160468160478_
                         '5
                         gx#module-export::t
                         '#f)))
                  (_K160471160489_ _phi160505_ _key160500_ _ctx160495_))
                (_E160470160482_))))))
    (define gx#core-module-export->import__%
      (lambda (_out160390_ _rename160391_ _dphi160392_)
        (let* ((_out160393160403_ _out160390_)
               (_E160395160407_
                (lambda () (error '"No clause matching" _out160393160403_)))
               (_K160396160419_
                (lambda (_weak?160410_
                         _name160411_
                         _phi160412_
                         _key160413_
                         _ctx160414_)
                  (##structure
                   gx#module-import::t
                   _out160390_
                   (let ((_$e160416_ _rename160391_))
                     (if _$e160416_ _$e160416_ _name160411_))
                   (fx+ _phi160412_ _dphi160392_)
                   _weak?160410_))))
          (if (##structure-direct-instance-of?
               _out160393160403_
               'gx#module-export::t)
              (let* ((_e160397160422_
                      (##unchecked-structure-ref
                       _out160393160403_
                       '1
                       gx#module-export::t
                       '#f))
                     (_ctx160425_ _e160397160422_)
                     (_e160398160427_
                      (##unchecked-structure-ref
                       _out160393160403_
                       '2
                       gx#module-export::t
                       '#f))
                     (_key160430_ _e160398160427_)
                     (_e160399160432_
                      (##unchecked-structure-ref
                       _out160393160403_
                       '3
                       gx#module-export::t
                       '#f))
                     (_phi160435_ _e160399160432_)
                     (_e160400160437_
                      (##unchecked-structure-ref
                       _out160393160403_
                       '4
                       gx#module-export::t
                       '#f))
                     (_name160440_ _e160400160437_)
                     (_e160401160442_
                      (##unchecked-structure-ref
                       _out160393160403_
                       '5
                       gx#module-export::t
                       '#f))
                     (_weak?160445_ _e160401160442_))
                (_K160396160419_
                 _weak?160445_
                 _name160440_
                 _phi160435_
                 _key160430_
                 _ctx160425_))
              (_E160395160407_)))))
    (define gx#core-module-export->import__0
      (lambda (_out160450_)
        (let* ((_rename160452_ '#f) (_dphi160454_ '0))
          (gx#core-module-export->import__%
           _out160450_
           _rename160452_
           _dphi160454_))))
    (define gx#core-module-export->import__1
      (lambda (_out160456_ _rename160457_)
        (let ((_dphi160459_ '0))
          (gx#core-module-export->import__%
           _out160456_
           _rename160457_
           _dphi160459_))))
    (define gx#core-module-export->import
      (lambda _g167035_
        (let ((_g167034_ (##length _g167035_)))
          (cond ((##fx= _g167034_ 1)
                 (apply (lambda (_out160450_)
                          (gx#core-module-export->import__0 _out160450_))
                        _g167035_))
                ((##fx= _g167034_ 2)
                 (apply (lambda (_out160456_ _rename160457_)
                          (gx#core-module-export->import__1
                           _out160456_
                           _rename160457_))
                        _g167035_))
                ((##fx= _g167034_ 3)
                 (apply (lambda (_out160461_ _rename160462_ _dphi160463_)
                          (gx#core-module-export->import__%
                           _out160461_
                           _rename160462_
                           _dphi160463_))
                        _g167035_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g167035_))))))
    (define gx#core-expand-module%
      (lambda (_stx160318_)
        (letrec ((_make-context160320_
                  (lambda (_id160371_)
                    (let* ((_super160373_ (gx#current-expander-context))
                           (_bind-id160375_ (gx#stx-e _id160371_))
                           (_mod-id160377_
                            (if (##structure-instance-of?
                                 _super160373_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##structure-ref
                                  _super160373_
                                  '1
                                  gx#expander-context::t
                                  '#f)
                                 '"$"
                                 _bind-id160375_)
                                _bind-id160375_))
                           (_ns160379_ (symbol->string _mod-id160377_))
                           (_path160386_
                            (if (##structure-instance-of?
                                 _super160373_
                                 'gx#module-context::t)
                                (let ((_path160381_
                                       (##unchecked-structure-ref
                                        _super160373_
                                        '7
                                        gx#module-context::t
                                        '#f)))
                                  (if (or (pair? _path160381_)
                                          (null? _path160381_))
                                      (cons _bind-id160375_ _path160381_)
                                      (if (not _path160381_)
                                          _bind-id160375_
                                          (cons _bind-id160375_
                                                (cons _path160381_ '())))))
                                _bind-id160375_)))
                      (let ((__obj167011
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
                         __obj167011
                         _mod-id160377_
                         _super160373_
                         _ns160379_
                         _path160386_)
                        __obj167011)))))
          (let* ((_e160321160331_ _stx160318_)
                 (_E160323160335_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e160321160331_)))
                 (_E160322160367_
                  (lambda ()
                    (if (gx#stx-pair? _e160321160331_)
                        (let ((_e160324160339_ (gx#syntax-e _e160321160331_)))
                          (let ((_hd160325160342_ (##car _e160324160339_))
                                (_tl160326160344_ (##cdr _e160324160339_)))
                            (if (gx#stx-pair? _tl160326160344_)
                                (let ((_e160327160347_
                                       (gx#syntax-e _tl160326160344_)))
                                  (let ((_hd160328160350_
                                         (##car _e160327160347_))
                                        (_tl160329160352_
                                         (##cdr _e160327160347_)))
                                    (let* ((_id160355_ _hd160328160350_)
                                           (_body160357_ _tl160329160352_))
                                      (if (and (gx#identifier? _id160355_)
                                               (gx#stx-list? _body160357_))
                                          (let* ((_ctx160359_
                                                  (_make-context160320_
                                                   _id160355_))
                                                 (_body160361_
                                                  (gx#core-expand-module-begin
                                                   _body160357_
                                                   _ctx160359_))
                                                 (_body160363_
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body160361_)
                                                   (gx#stx-source
                                                    _stx160318_))))
                                            (##unchecked-structure-set!
                                             _ctx160359_
                                             (make-promise
                                              (lambda ()
                                                (gx#eval-syntax*
                                                 _body160363_)))
                                             '10
                                             gx#module-context::t
                                             '#f)
                                            (##unchecked-structure-set!
                                             _ctx160359_
                                             _body160363_
                                             '11
                                             gx#module-context::t
                                             '#f)
                                            (gx#core-bind-syntax!__0
                                             _id160355_
                                             _ctx160359_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-list
                                              '%#module
                                              (gx#core-quote-syntax__0
                                               _id160355_)
                                              _body160363_)
                                             (gx#stx-source _stx160318_)))
                                          (_E160323160335_)))))
                                (_E160323160335_))))
                        (_E160323160335_)))))
            (_E160322160367_)))))
    (define gx#core-expand-module-begin
      (lambda (_body160284_ _ctx160285_)
        (call-with-parameters
         (lambda ()
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_stx160288_
                   (gx#core-expand-head (cons '%%begin-module _body160284_)))
                  (_e160289160296_ _stx160288_)
                  (_E160291160300_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _stx160288_)))
                  (_E160290160314_
                   (lambda ()
                     (if (gx#stx-pair? _e160289160296_)
                         (let ((_e160292160304_ (gx#syntax-e _e160289160296_)))
                           (let ((_hd160293160307_ (##car _e160292160304_))
                                 (_tl160294160309_ (##cdr _e160292160304_)))
                             (if (and (gx#identifier? _hd160293160307_)
                                      (gx#core-identifier=?
                                       _hd160293160307_
                                       '%#begin-module))
                                 (let ((_body160312_ _tl160294160309_))
                                   (if '#t
                                       (if (gx#sealed-syntax? _stx160288_)
                                           _body160312_
                                           (gx#core-expand-module-body
                                            _body160312_))
                                       (_E160291160300_)))
                                 (_E160291160300_))))
                         (_E160291160300_)))))
             (_E160290160314_)))
         gx#current-expander-context
         _ctx160285_
         gx#current-expander-phi
         '0)))
    (define gx#core-expand-module-body
      (lambda (_body160080_)
        (letrec ((_expand-special160082_
                  (lambda (_hd160211_ _K160212_ _rest160213_ _r160214_)
                    (let* ((_e160215160232_ _hd160211_)
                           (_E160227160236_
                            (lambda ()
                              (_K160212_
                               _rest160213_
                               (cons (gx#core-expand-top _hd160211_)
                                     _r160214_))))
                           (_E160217160248_
                            (lambda ()
                              (if (gx#stx-pair? _e160215160232_)
                                  (let ((_e160228160240_
                                         (gx#syntax-e _e160215160232_)))
                                    (let ((_hd160229160243_
                                           (##car _e160228160240_))
                                          (_tl160230160245_
                                           (##cdr _e160228160240_)))
                                      (if (and (gx#identifier?
                                                _hd160229160243_)
                                               (gx#core-identifier=?
                                                _hd160229160243_
                                                '%#export))
                                          (if '#t
                                              (_K160212_
                                               _rest160213_
                                               (cons _hd160211_ _r160214_))
                                              (_E160227160236_))
                                          (_E160227160236_))))
                                  (_E160227160236_))))
                           (_E160216160280_
                            (lambda ()
                              (if (gx#stx-pair? _e160215160232_)
                                  (let ((_e160218160252_
                                         (gx#syntax-e _e160215160232_)))
                                    (let ((_hd160219160255_
                                           (##car _e160218160252_))
                                          (_tl160220160257_
                                           (##cdr _e160218160252_)))
                                      (if (and (gx#identifier?
                                                _hd160219160255_)
                                               (gx#core-identifier=?
                                                _hd160219160255_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl160220160257_)
                                              (let ((_e160221160260_
                                                     (gx#syntax-e
                                                      _tl160220160257_)))
                                                (let ((_hd160222160263_
                                                       (##car _e160221160260_))
                                                      (_tl160223160265_
                                                       (##cdr _e160221160260_)))
                                                  (let ((_hd-bind160268_
                                                         _hd160222160263_))
                                                    (if (gx#stx-pair?
                                                         _tl160223160265_)
                                                        (let ((_e160224160270_
                                                               (gx#syntax-e
                                                                _tl160223160265_)))
                                                          (let ((_hd160225160273_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e160224160270_))
                        (_tl160226160275_ (##cdr _e160224160270_)))
                    (let ((_expr160278_ _hd160225160273_))
                      (if (gx#stx-null? _tl160226160275_)
                          (if (gx#core-bind-values? _hd-bind160268_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind160268_)
                                (_K160212_
                                 _rest160213_
                                 (cons _hd160211_ _r160214_)))
                              (_E160217160248_))
                          (_E160217160248_)))))
                (_E160217160248_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E160217160248_))
                                          (_E160217160248_))))
                                  (_E160217160248_)))))
                      (_E160216160280_))))
                 (_expand-body160083_
                  (lambda (_rbody160085_)
                    (let _lp160087_ ((_rest160089_ _rbody160085_)
                                     (_body160090_ '()))
                      (let* ((_rest160091160099_ _rest160089_)
                             (_else160093160107_ (lambda () _body160090_))
                             (_K160095160199_
                              (lambda (_rest160110_ _hd160111_)
                                (let* ((_e160112160133_ _hd160111_)
                                       (_E160128160137_
                                        (lambda ()
                                          (_lp160087_
                                           _rest160110_
                                           (cons (gx#core-expand-expression
                                                  _hd160111_)
                                                 _body160090_))))
                                       (_E160124160151_
                                        (lambda ()
                                          (if (gx#stx-pair? _e160112160133_)
                                              (let ((_e160129160141_
                                                     (gx#syntax-e
                                                      _e160112160133_)))
                                                (let ((_hd160130160144_
                                                       (##car _e160129160141_))
                                                      (_tl160131160146_
                                                       (##cdr _e160129160141_)))
                                                  (let ((_form160149_
                                                         _hd160130160144_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _form160149_
                                                         gx#special-form-binding?)
                                                        (_lp160087_
                                                         _rest160110_
                                                         (cons _hd160111_
                                                               _body160090_))
                                                        (_E160128160137_)))))
                                              (_E160128160137_))))
                                       (_E160114160163_
                                        (lambda ()
                                          (if (gx#stx-pair? _e160112160133_)
                                              (let ((_e160125160155_
                                                     (gx#syntax-e
                                                      _e160112160133_)))
                                                (let ((_hd160126160158_
                                                       (##car _e160125160155_))
                                                      (_tl160127160160_
                                                       (##cdr _e160125160155_)))
                                                  (if (and (gx#identifier?
                                                            _hd160126160158_)
                                                           (gx#core-identifier=?
                                                            _hd160126160158_
                                                            '%#export))
                                                      (if '#t
                                                          (_lp160087_
                                                           _rest160110_
                                                           (cons (gx#core-expand-export%__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd160111_)
                         _body160090_))
                  (_E160124160151_))
              (_E160124160151_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E160124160151_))))
                                       (_E160113160195_
                                        (lambda ()
                                          (if (gx#stx-pair? _e160112160133_)
                                              (let ((_e160115160167_
                                                     (gx#syntax-e
                                                      _e160112160133_)))
                                                (let ((_hd160116160170_
                                                       (##car _e160115160167_))
                                                      (_tl160117160172_
                                                       (##cdr _e160115160167_)))
                                                  (if (and (gx#identifier?
                                                            _hd160116160170_)
                                                           (gx#core-identifier=?
                                                            _hd160116160170_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl160117160172_)
                                                          (let ((_e160118160175_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl160117160172_)))
                    (let ((_hd160119160178_ (##car _e160118160175_))
                          (_tl160120160180_ (##cdr _e160118160175_)))
                      (let ((_hd-bind160183_ _hd160119160178_))
                        (if (gx#stx-pair? _tl160120160180_)
                            (let ((_e160121160185_
                                   (gx#syntax-e _tl160120160180_)))
                              (let ((_hd160122160188_ (##car _e160121160185_))
                                    (_tl160123160190_ (##cdr _e160121160185_)))
                                (let ((_expr160193_ _hd160122160188_))
                                  (if (gx#stx-null? _tl160123160190_)
                                      (if '#t
                                          (_lp160087_
                                           _rest160110_
                                           (cons (gx#core-quote-syntax__1
                                                  (gx#core-list
                                                   '%#define-values
                                                   (gx#core-quote-bind-values
                                                    _hd-bind160183_)
                                                   (gx#core-expand-expression
                                                    _expr160193_))
                                                  (gx#stx-source _hd160111_))
                                                 _body160090_))
                                          (_E160114160163_))
                                      (_E160114160163_)))))
                            (_E160114160163_)))))
                  (_E160114160163_))
              (_E160114160163_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E160114160163_)))))
                                  (_E160113160195_)))))
                        (if (##pair? _rest160091160099_)
                            (let ((_hd160096160202_ (##car _rest160091160099_))
                                  (_tl160097160204_
                                   (##cdr _rest160091160099_)))
                              (let* ((_hd160207_ _hd160096160202_)
                                     (_rest160209_ _tl160097160204_))
                                (_K160095160199_ _rest160209_ _hd160207_)))
                            (_else160093160107_)))))))
          (_expand-body160083_
           (gx#core-expand-block__%
            (cons '%#begin-module _body160080_)
            _expand-special160082_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_stx159923_
               _expanded?159924_
               _method159925_
               _current-phi159926_
               _expand1159927_)
        (letrec ((_K159929_
                  (lambda (_rest160047_ _r160048_)
                    (let* ((_e160049160056_ _rest160047_)
                           (_E160051160060_ (lambda () _r160048_))
                           (_E160050160076_
                            (lambda ()
                              (if (gx#stx-pair? _e160049160056_)
                                  (let ((_e160052160064_
                                         (gx#syntax-e _e160049160056_)))
                                    (let ((_hd160053160067_
                                           (##car _e160052160064_))
                                          (_tl160054160069_
                                           (##cdr _e160052160064_)))
                                      (let* ((_hd160072_ _hd160053160067_)
                                             (_rest160074_ _tl160054160069_))
                                        (if '#t
                                            (_step159930_
                                             _hd160072_
                                             _rest160074_
                                             _r160048_)
                                            (_E160051160060_)))))
                                  (_E160051160060_)))))
                      (_E160050160076_))))
                 (_step159930_
                  (lambda (_hd159961_ _rest159962_ _r159963_)
                    (let* ((_e159964159982_ _hd159961_)
                           (_E159977159986_
                            (lambda ()
                              (if (_expanded?159924_ (gx#stx-e _hd159961_))
                                  (_K159929_
                                   _rest159962_
                                   (cons (gx#stx-e _hd159961_) _r159963_))
                                  (_expand1159927_
                                   _hd159961_
                                   _K159929_
                                   _rest159962_
                                   _r159963_))))
                           (_E159973160002_
                            (lambda ()
                              (if (gx#stx-pair? _e159964159982_)
                                  (let ((_e159978159990_
                                         (gx#syntax-e _e159964159982_)))
                                    (let ((_hd159979159993_
                                           (##car _e159978159990_))
                                          (_tl159980159995_
                                           (##cdr _e159978159990_)))
                                      (let* ((_macro159998_ _hd159979159993_)
                                             (_body160000_ _tl159980159995_))
                                        (if (gx#core-bound-identifier?__%
                                             _macro159998_
                                             gx#syntax-binding?)
                                            (_K159929_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _macro159998_)
                                                    _hd159961_
                                                    _method159925_)
                                                   _rest159962_)
                                             _r159963_)
                                            (_E159977159986_)))))
                                  (_E159977159986_))))
                           (_E159966160016_
                            (lambda ()
                              (if (gx#stx-pair? _e159964159982_)
                                  (let ((_e159974160006_
                                         (gx#syntax-e _e159964159982_)))
                                    (let ((_hd159975160009_
                                           (##car _e159974160006_))
                                          (_tl159976160011_
                                           (##cdr _e159974160006_)))
                                      (if (eq? (gx#stx-e _hd159975160009_)
                                               'begin:)
                                          (let ((_body160014_
                                                 _tl159976160011_))
                                            (if '#t
                                                (_K159929_
                                                 (gx#stx-foldr
                                                  cons
                                                  _rest159962_
                                                  _body160014_)
                                                 _r159963_)
                                                (_E159973160002_)))
                                          (_E159973160002_))))
                                  (_E159973160002_))))
                           (_E159965160043_
                            (lambda ()
                              (if (gx#stx-pair? _e159964159982_)
                                  (let ((_e159967160020_
                                         (gx#syntax-e _e159964159982_)))
                                    (let ((_hd159968160023_
                                           (##car _e159967160020_))
                                          (_tl159969160025_
                                           (##cdr _e159967160020_)))
                                      (if (eq? (gx#stx-e _hd159968160023_)
                                               'phi:)
                                          (if (gx#stx-pair? _tl159969160025_)
                                              (let ((_e159970160028_
                                                     (gx#syntax-e
                                                      _tl159969160025_)))
                                                (let ((_hd159971160031_
                                                       (##car _e159970160028_))
                                                      (_tl159972160033_
                                                       (##cdr _e159970160028_)))
                                                  (let* ((_dphi160036_
                                                          _hd159971160031_)
                                                         (_body160038_
                                                          _tl159972160033_))
                                                    (if (gx#stx-fixnum?
                                                         _dphi160036_)
                                                        (let ((_rbody160041_
                                                               (call-with-parameters
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_K159929_ _body160038_ '()))
                        _current-phi159926_
                        (fx+ (gx#stx-e _dphi160036_) (_current-phi159926_)))))
                  (_K159929_
                   _rest159962_
                   (foldr1 cons _r159963_ _rbody160041_)))
                (_E159966160016_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E159966160016_))
                                          (_E159966160016_))))
                                  (_E159966160016_)))))
                      (_E159965160043_)))))
          (let* ((_e159931159938_ _stx159923_)
                 (_E159933159942_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e159931159938_)))
                 (_E159932159957_
                  (lambda ()
                    (if (gx#stx-pair? _e159931159938_)
                        (let ((_e159934159946_ (gx#syntax-e _e159931159938_)))
                          (let ((_hd159935159949_ (##car _e159934159946_))
                                (_tl159936159951_ (##cdr _e159934159946_)))
                            (let ((_body159954_ _tl159936159951_))
                              (if '#t
                                  (if (_current-phi159926_)
                                      (_K159929_ _body159954_ '())
                                      (call-with-parameters
                                       (lambda () (_K159929_ _body159954_ '()))
                                       _current-phi159926_
                                       (gx#current-expander-phi)))
                                  (_E159933159942_)))))
                        (_E159933159942_)))))
            (_E159932159957_)))))
    (define gx#core-expand-import%__%
      (lambda (_stx159590_ _internal-expand?159591_)
        (letrec ((_expand1159593_
                  (lambda (_hd159903_ _K159904_ _rest159905_ _r159906_)
                    (if (gx#core-bound-module? _hd159903_)
                        (_import1159594_
                         (gx#syntax-local-e__0 _hd159903_)
                         _K159904_
                         _rest159905_
                         _r159906_)
                        (if (gx#core-library-module-path? _hd159903_)
                            (_import1159594_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _hd159903_))
                             _K159904_
                             _rest159905_
                             _r159906_)
                            (if (gx#core-library-relative-module-path?
                                 _hd159903_)
                                (_import1159594_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _hd159903_))
                                 _K159904_
                                 _rest159905_
                                 _r159906_)
                                (let ((_e159908_ (gx#stx-e _hd159903_)))
                                  (if (pair? _e159908_)
                                      (let ((_$e159910_
                                             (gx#stx-e (car _e159908_))))
                                        (if (eq? 'spec: _$e159910_)
                                            (_import-spec159597_
                                             _hd159903_
                                             _K159904_
                                             _rest159905_
                                             _r159906_)
                                            (if (eq? 'in: _$e159910_)
                                                (_import-submodule159595_
                                                 _hd159903_
                                                 _K159904_
                                                 _rest159905_
                                                 _r159906_)
                                                (if (eq? 'runtime: _$e159910_)
                                                    (_import-runtime159596_
                                                     _hd159903_
                                                     _K159904_
                                                     _rest159905_
                                                     _r159906_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _stx159590_
                                                     _hd159903_)))))
                                      (if (string? _e159908_)
                                          (_import1159594_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _hd159903_
                                             (gx#stx-source _stx159590_)))
                                           _K159904_
                                           _rest159905_
                                           _r159906_)
                                          (if (##structure-instance-of?
                                               _e159908_
                                               'gx#module-context::t)
                                              (_K159904_
                                               _rest159905_
                                               (cons _e159908_ _r159906_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _stx159590_
                                               _hd159903_))))))))))
                 (_import1159594_
                  (lambda (_ctx159892_ _K159893_ _rest159894_ _r159895_)
                    (let ((_dphi159897_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_K159893_
                       _rest159894_
                       (cons (##structure
                              gx#import-set::t
                              _ctx159892_
                              _dphi159897_
                              (map (lambda (_g159898159900_)
                                     (gx#core-module-export->import__%
                                      _g159898159900_
                                      '#f
                                      _dphi159897_))
                                   (##unchecked-structure-ref
                                    _ctx159892_
                                    '9
                                    gx#module-context::t
                                    '#f)))
                             _r159895_)))))
                 (_import-submodule159595_
                  (lambda (_hd159859_ _K159860_ _rest159861_ _r159862_)
                    (let* ((_e159863159870_ _hd159859_)
                           (_E159865159874_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e159863159870_)))
                           (_E159864159888_
                            (lambda ()
                              (if (gx#stx-pair? _e159863159870_)
                                  (let ((_e159866159878_
                                         (gx#syntax-e _e159863159870_)))
                                    (let ((_hd159867159881_
                                           (##car _e159866159878_))
                                          (_tl159868159883_
                                           (##cdr _e159866159878_)))
                                      (let ((_spath159886_ _tl159868159883_))
                                        (if '#t
                                            (_import1159594_
                                             (_import-spec-source159598_
                                              _spath159886_)
                                             _K159860_
                                             _rest159861_
                                             _r159862_)
                                            (_E159865159874_)))))
                                  (_E159865159874_)))))
                      (_E159864159888_))))
                 (_import-runtime159596_
                  (lambda (_hd159826_ _K159827_ _rest159828_ _r159829_)
                    (let* ((_e159830159837_ _hd159826_)
                           (_E159832159841_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e159830159837_)))
                           (_E159831159855_
                            (lambda ()
                              (if (gx#stx-pair? _e159830159837_)
                                  (let ((_e159833159845_
                                         (gx#syntax-e _e159830159837_)))
                                    (let ((_hd159834159848_
                                           (##car _e159833159845_))
                                          (_tl159835159850_
                                           (##cdr _e159833159845_)))
                                      (let ((_spath159853_ _tl159835159850_))
                                        (if '#t
                                            (_K159827_
                                             _rest159828_
                                             (cons (_import-spec-source159598_
                                                    _spath159853_)
                                                   _r159829_))
                                            (_E159832159841_)))))
                                  (_E159832159841_)))))
                      (_E159831159855_))))
                 (_import-spec159597_
                  (lambda (_hd159665_ _K159666_ _rest159667_ _r159668_)
                    (let* ((_e159669159686_ _hd159665_)
                           (_E159678159690_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e159669159686_)))
                           (_E159671159800_
                            (lambda ()
                              (if (gx#stx-pair? _e159669159686_)
                                  (let ((_e159679159694_
                                         (gx#syntax-e _e159669159686_)))
                                    (let ((_hd159680159697_
                                           (##car _e159679159694_))
                                          (_tl159681159699_
                                           (##cdr _e159679159694_)))
                                      (if (gx#stx-pair? _tl159681159699_)
                                          (let ((_e159682159702_
                                                 (gx#syntax-e
                                                  _tl159681159699_)))
                                            (let ((_hd159683159705_
                                                   (##car _e159682159702_))
                                                  (_tl159684159707_
                                                   (##cdr _e159682159702_)))
                                              (let* ((_path159710_
                                                      _hd159683159705_)
                                                     (_specs159712_
                                                      _tl159684159707_))
                                                (if '#t
                                                    (let ((_src-ctx159714_
                                                           (_import-spec-source159598_
                                                            _path159710_))
                                                          (_exports159715_
                                                           (make-table))
                                                          (_specs159716_
                                                           (gx#syntax->list
                                                            _specs159712_)))
                                                      (for-each
                                                       (lambda (_out159718_)
                                                         (table-set!
                                                          _exports159715_
                                                          (cons (##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _out159718_
                         '3
                         gx#module-export::t
                         '#f)
                        (##unchecked-structure-ref
                         _out159718_
                         '4
                         gx#module-export::t
                         '#f))
                  _out159718_))
               (##unchecked-structure-ref
                _src-ctx159714_
                '9
                gx#module-context::t
                '#f))
              (_K159666_
               _rest159667_
               (foldl1 (lambda (_spec159720_ _r159721_)
                         (let* ((_e159722159738_ _spec159720_)
                                (_E159724159742_
                                 (lambda ()
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid syntax-case clause"
                                    _e159722159738_)))
                                (_E159723159796_
                                 (lambda ()
                                   (if (gx#stx-pair? _e159722159738_)
                                       (let ((_e159725159746_
                                              (gx#syntax-e _e159722159738_)))
                                         (let ((_hd159726159749_
                                                (##car _e159725159746_))
                                               (_tl159727159751_
                                                (##cdr _e159725159746_)))
                                           (let ((_phi159754_
                                                  _hd159726159749_))
                                             (if (gx#stx-pair?
                                                  _tl159727159751_)
                                                 (let ((_e159728159756_
                                                        (gx#syntax-e
                                                         _tl159727159751_)))
                                                   (let ((_hd159729159759_
                                                          (##car _e159728159756_))
                                                         (_tl159730159761_
                                                          (##cdr _e159728159756_)))
                                                     (let ((_name159764_
                                                            _hd159729159759_))
                                                       (if (gx#stx-pair?
                                                            _tl159730159761_)
                                                           (let ((_e159731159766_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl159730159761_)))
                     (let ((_hd159732159769_ (##car _e159731159766_))
                           (_tl159733159771_ (##cdr _e159731159766_)))
                       (let ((_src-phi159774_ _hd159732159769_))
                         (if (gx#stx-pair? _tl159733159771_)
                             (let ((_e159734159776_
                                    (gx#syntax-e _tl159733159771_)))
                               (let ((_hd159735159779_ (##car _e159734159776_))
                                     (_tl159736159781_
                                      (##cdr _e159734159776_)))
                                 (let ((_src-name159784_ _hd159735159779_))
                                   (if (gx#stx-null? _tl159736159781_)
                                       (if (and (gx#stx-fixnum?
                                                 _src-phi159774_)
                                                (gx#identifier?
                                                 _src-name159784_)
                                                (gx#stx-fixnum? _phi159754_)
                                                (gx#identifier? _name159764_))
                                           (let ((_src-phi159786_
                                                  (gx#stx-e _src-phi159774_))
                                                 (_src-name159787_
                                                  (gx#core-identifier-key
                                                   _src-name159784_))
                                                 (_phi159788_
                                                  (gx#stx-e _phi159754_))
                                                 (_name159789_
                                                  (gx#core-identifier-key
                                                   _name159764_)))
                                             (let ((_$e159791_
                                                    (table-ref
                                                     _exports159715_
                                                     (cons _src-phi159786_
                                                           _src-name159787_)
                                                     '#f)))
                                               (if _$e159791_
                                                   ((lambda (_out159794_)
                                                      (cons (gx#core-module-export->import__%
                                                             _out159794_
                                                             _name159789_
                                                             (fx- _phi159788_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _src-phi159786_))
                    _r159721_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _$e159791_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; no matching export"
                                                    _stx159590_
                                                    _hd159665_))))
                                           (_E159724159742_))
                                       (_E159724159742_)))))
                             (_E159724159742_)))))
                   (_E159724159742_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E159724159742_)))))
                                       (_E159724159742_)))))
                           (_E159723159796_)))
                       _r159668_
                       _specs159716_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E159678159690_)))))
                                          (_E159678159690_))))
                                  (_E159678159690_))))
                           (_E159670159822_
                            (lambda ()
                              (if (gx#stx-pair? _e159669159686_)
                                  (let ((_e159672159804_
                                         (gx#syntax-e _e159669159686_)))
                                    (let ((_hd159673159807_
                                           (##car _e159672159804_))
                                          (_tl159674159809_
                                           (##cdr _e159672159804_)))
                                      (if (gx#stx-pair? _tl159674159809_)
                                          (let ((_e159675159812_
                                                 (gx#syntax-e
                                                  _tl159674159809_)))
                                            (let ((_hd159676159815_
                                                   (##car _e159675159812_))
                                                  (_tl159677159817_
                                                   (##cdr _e159675159812_)))
                                              (let ((_path159820_
                                                     _hd159676159815_))
                                                (if (gx#stx-null?
                                                     _tl159677159817_)
                                                    (if '#t
                                                        (_K159666_
                                                         _rest159667_
                                                         (cons (_import-spec-source159598_
                                                                _path159820_)
                                                               _r159668_))
                                                        (_E159671159800_))
                                                    (_E159671159800_)))))
                                          (_E159671159800_))))
                                  (_E159671159800_)))))
                      (_E159670159822_))))
                 (_import-spec-source159598_
                  (lambda (_spath159663_)
                    (gx#core-import-nested-module _spath159663_ _stx159590_)))
                 (_import!159599_
                  (lambda (_rbody159612_)
                    (letrec* ((_current-ctx159614_
                               (gx#current-expander-context))
                              (_deps159615_ (make-table 'test: eq?))
                              (_bind!159616_
                               (lambda (_hd159661_)
                                 (gx#core-bind-import!__1
                                  _hd159661_
                                  _current-ctx159614_))))
                      (let _lp159618_ ((_rest159620_ _rbody159612_)
                                       (_body159621_ '()))
                        (let* ((_rest159622159630_ _rest159620_)
                               (_else159624159640_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _current-ctx159614_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _current-ctx159614_
                                       (foldl1 cons
                                               (##unchecked-structure-ref
                                                _current-ctx159614_
                                                '8
                                                gx#module-context::t
                                                '#f)
                                               _body159621_)
                                       '8
                                       gx#module-context::t
                                       '#f)
                                      '#!void)
                                  (table-for-each
                                   (lambda (_ctx159638_ _g167036_)
                                     (gx#eval-module _ctx159638_))
                                   _deps159615_)
                                  _body159621_))
                               (_K159626159649_
                                (lambda (_rest159643_ _hd159644_)
                                  (if (##structure-direct-instance-of?
                                       _hd159644_
                                       'gx#module-import::t)
                                      (begin
                                        (_bind!159616_ _hd159644_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _hd159644_
                                                   '3
                                                   gx#module-import::t
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _hd159644_
                                                            '1
                                                            gx#module-import::t
                                                            '#f)
                                                           '3
                                                           gx#module-export::t
                                                           '#f)))
                                            (table-set!
                                             _deps159615_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _hd159644_
                                               '1
                                               gx#module-import::t
                                               '#f)
                                              '1
                                              gx#module-export::t
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _hd159644_
                                           'gx#import-set::t)
                                          (begin
                                            (for-each
                                             _bind!159616_
                                             (##unchecked-structure-ref
                                              _hd159644_
                                              '3
                                              gx#import-set::t
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _hd159644_
                                                  '2
                                                  gx#import-set::t
                                                  '#f))
                                                (table-set!
                                                 _deps159615_
                                                 (##unchecked-structure-ref
                                                  _hd159644_
                                                  '1
                                                  gx#import-set::t
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_$e159646_
                                                 (##structure-instance-of?
                                                  _hd159644_
                                                  'gx#module-context::t)))
                                            (if _$e159646_
                                                _$e159646_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _stx159590_
                                                 _hd159644_)))))
                                  (_lp159618_
                                   _rest159643_
                                   (cons _hd159644_ _body159621_)))))
                          (if (##pair? _rest159622159630_)
                              (let ((_hd159627159652_
                                     (##car _rest159622159630_))
                                    (_tl159628159654_
                                     (##cdr _rest159622159630_)))
                                (let* ((_hd159657_ _hd159627159652_)
                                       (_rest159659_ _tl159628159654_))
                                  (_K159626159649_ _rest159659_ _hd159657_)))
                              (_else159624159640_)))))))
                 (_expanded-import?159600_
                  (lambda (_e159604_)
                    (let ((_$e159606_
                           (##structure-direct-instance-of?
                            _e159604_
                            'gx#import-set::t)))
                      (if _$e159606_
                          _$e159606_
                          (let ((_$e159609_
                                 (##structure-direct-instance-of?
                                  _e159604_
                                  'gx#module-import::t)))
                            (if _$e159609_
                                _$e159609_
                                (##structure-instance-of?
                                 _e159604_
                                 'gx#module-context::t))))))))
          (let ((_rbody159602_
                 (gx#core-expand-import/export
                  _stx159590_
                  _expanded-import?159600_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _expand1159593_)))
            (if _internal-expand?159591_
                (reverse _rbody159602_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_import!159599_ _rbody159602_))
                 (gx#stx-source _stx159590_)))))))
    (define gx#core-expand-import%__0
      (lambda (_stx159916_)
        (let ((_internal-expand?159918_ '#f))
          (gx#core-expand-import%__% _stx159916_ _internal-expand?159918_))))
    (define gx#core-expand-import%
      (lambda _g167038_
        (let ((_g167037_ (##length _g167038_)))
          (cond ((##fx= _g167037_ 1)
                 (apply (lambda (_stx159916_)
                          (gx#core-expand-import%__0 _stx159916_))
                        _g167038_))
                ((##fx= _g167037_ 2)
                 (apply (lambda (_stx159920_ _internal-expand?159921_)
                          (gx#core-expand-import%__%
                           _stx159920_
                           _internal-expand?159921_))
                        _g167038_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g167038_))))))
    (define gx#core-import-nested-module
      (lambda (_spath159517_ _where159518_)
        (let* ((_e159519159526_ _spath159517_)
               (_E159521159530_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e159519159526_)))
               (_E159520159585_
                (lambda ()
                  (if (gx#stx-pair? _e159519159526_)
                      (let ((_e159522159534_ (gx#syntax-e _e159519159526_)))
                        (let ((_hd159523159537_ (##car _e159522159534_))
                              (_tl159524159539_ (##cdr _e159522159534_)))
                          (let* ((_origin159542_ _hd159523159537_)
                                 (_sub159544_ _tl159524159539_))
                            (if '#t
                                (let ((_origin-ctx159546_
                                       (if (gx#stx-false? _origin159542_)
                                           (gx#current-expander-context)
                                           (gx#import-module__0
                                            _origin159542_))))
                                  (let _lp159548_ ((_rest159550_ _sub159544_)
                                                   (_ctx159551_
                                                    _origin-ctx159546_))
                                    (let* ((_e159552159559_ _rest159550_)
                                           (_E159554159563_
                                            (lambda () _ctx159551_))
                                           (_E159553159581_
                                            (lambda ()
                                              (if (gx#stx-pair?
                                                   _e159552159559_)
                                                  (let ((_e159555159567_
                                                         (gx#syntax-e
                                                          _e159552159559_)))
                                                    (let ((_hd159556159570_
                                                           (##car _e159555159567_))
                                                          (_tl159557159572_
                                                           (##cdr _e159555159567_)))
                                                      (let* ((_id159575_
                                                              _hd159556159570_)
                                                             (_rest159577_
                                                              _tl159557159572_))
                                                        (if '#t
                                                            (let ((_bind159579_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#resolve-identifier__%
                            _id159575_
                            '0
                            _ctx159551_)))
                      (if (and (##structure-direct-instance-of?
                                _bind159579_
                                'gx#syntax-binding::t)
                               (##structure-instance-of?
                                (##unchecked-structure-ref
                                 _bind159579_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                'gx#module-context::t))
                          '#!void
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; not bound as module"
                           _where159518_
                           _spath159517_
                           _id159575_))
                      (_lp159548_
                       _rest159577_
                       (##unchecked-structure-ref
                        _bind159579_
                        '4
                        gx#syntax-binding::t
                        '#f)))
                    (_E159554159563_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E159554159563_)))))
                                      (_E159553159581_))))
                                (_E159521159530_)))))
                      (_E159521159530_)))))
          (_E159520159585_))))
    (define gx#core-expand-import-source
      (lambda (_hd159515_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _hd159515_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_stx159023_ _internal-expand?159024_)
        (letrec* ((_make-export__166967166968_
                   (lambda (_bind159463_ _phi159464_ _ctx159465_ _name159466_)
                     (let* ((_key159468_
                             (##unchecked-structure-ref
                              _bind159463_
                              '2
                              gx#binding::t
                              '#f))
                            (_export-key159470_
                             (if _name159466_
                                 (gx#core-identifier-key _name159466_)
                                 _key159468_)))
                       (##structure
                        gx#module-export::t
                        _ctx159465_
                        _key159468_
                        _phi159464_
                        _export-key159470_
                        (let ((_$e159473_
                               (##structure-instance-of?
                                _bind159463_
                                'gx#extern-binding::t)))
                          (if _$e159473_
                              _$e159473_
                              (##structure-direct-instance-of?
                               _bind159463_
                               'gx#import-binding::t)))))))
                  (_make-export__0__166969166972_
                   (lambda (_bind159479_)
                     (let* ((_phi159481_ (gx#current-export-expander-phi))
                            (_ctx159483_ (gx#current-expander-context))
                            (_name159485_ '#f))
                       (_make-export__166967166968_
                        _bind159479_
                        _phi159481_
                        _ctx159483_
                        _name159485_))))
                  (_make-export__1__166970166973_
                   (lambda (_bind159487_ _phi159488_)
                     (let* ((_ctx159490_ (gx#current-expander-context))
                            (_name159492_ '#f))
                       (_make-export__166967166968_
                        _bind159487_
                        _phi159488_
                        _ctx159490_
                        _name159492_))))
                  (_make-export__2__166971166974_
                   (lambda (_bind159494_ _phi159495_ _ctx159496_)
                     (let ((_name159498_ '#f))
                       (_make-export__166967166968_
                        _bind159494_
                        _phi159495_
                        _ctx159496_
                        _name159498_))))
                  (_make-export159026_
                   (lambda _g167040_
                     (let ((_g167039_ (##length _g167040_)))
                       (cond ((##fx= _g167039_ 1)
                              (apply (lambda (_bind159479_)
                                       (_make-export__0__166969166972_
                                        _bind159479_))
                                     _g167040_))
                             ((##fx= _g167039_ 2)
                              (apply (lambda (_bind159487_ _phi159488_)
                                       (_make-export__1__166970166973_
                                        _bind159487_
                                        _phi159488_))
                                     _g167040_))
                             ((##fx= _g167039_ 3)
                              (apply (lambda (_bind159494_
                                              _phi159495_
                                              _ctx159496_)
                                       (_make-export__2__166971166974_
                                        _bind159494_
                                        _phi159495_
                                        _ctx159496_))
                                     _g167040_))
                             ((##fx= _g167039_ 4)
                              (apply (lambda (_bind159500_
                                              _phi159501_
                                              _ctx159502_
                                              _name159503_)
                                       (_make-export__166967166968_
                                        _bind159500_
                                        _phi159501_
                                        _ctx159502_
                                        _name159503_))
                                     _g167040_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g167040_))))))
                  (_expand1159027_
                   (lambda (_hd159176_ _K159177_ _rest159178_ _r159179_)
                     (let* ((_e159180159212_ _hd159176_)
                            (_E159207159216_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _stx159023_
                                _hd159176_)))
                            (_E159197159295_
                             (lambda ()
                               (if (gx#stx-pair? _e159180159212_)
                                   (let ((_e159208159220_
                                          (gx#syntax-e _e159180159212_)))
                                     (let ((_hd159209159223_
                                            (##car _e159208159220_))
                                           (_tl159210159225_
                                            (##cdr _e159208159220_)))
                                       (if (eq? (gx#stx-e _hd159209159223_)
                                                'import:)
                                           (let ((_in159228_ _tl159210159225_))
                                             (if (gx#stx-list? _in159228_)
                                                 (let _lp159230_ ((_in-rest159232_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _in159228_)
                          (_r159233_ _r159179_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_e159234159241_
                                                           _in-rest159232_)
                                                          (_E159236159245_
                                                           (lambda ()
                                                             (_K159177_
                                                              _rest159178_
                                                              _r159233_)))
                                                          (_E159235159291_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _e159234159241_)
                         (let ((_e159237159249_ (gx#syntax-e _e159234159241_)))
                           (let ((_hd159238159252_ (##car _e159237159249_))
                                 (_tl159239159254_ (##cdr _e159237159249_)))
                             (let* ((_hd159257_ _hd159238159252_)
                                    (_in-rest159259_ _tl159239159254_))
                               (if '#t
                                   (let ((_src159289_
                                          (if (gx#core-bound-module?
                                               _hd159257_)
                                              (gx#syntax-local-e__0 _hd159257_)
                                              (if (gx#core-library-module-path?
                                                   _hd159257_)
                                                  (gx#import-module__0
                                                   (gx#core-resolve-library-module-path
                                                    _hd159257_))
                                                  (if (gx#core-library-relative-module-path?
                                                       _hd159257_)
                                                      (gx#import-module__0
                                                       (gx#core-resolve-library-relative-module-path
                                                        _hd159257_))
                                                      (if (gx#stx-string?
                                                           _hd159257_)
                                                          (gx#import-module__0
                                                           (gx#core-resolve-module-path__%
                                                            _hd159257_
                                                            (gx#stx-source
                                                             _stx159023_)))
                                                          (let* ((_e159260159267_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd159257_)
                         (_E159262159271_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; illegal re-export"
                             _stx159023_
                             _hd159257_)))
                         (_E159261159285_
                          (lambda ()
                            (if (gx#stx-pair? _e159260159267_)
                                (let ((_e159263159275_
                                       (gx#syntax-e _e159260159267_)))
                                  (let ((_hd159264159278_
                                         (##car _e159263159275_))
                                        (_tl159265159280_
                                         (##cdr _e159263159275_)))
                                    (if (eq? (gx#stx-e _hd159264159278_) 'in:)
                                        (let ((_spath159283_ _tl159265159280_))
                                          (if '#t
                                              (gx#core-import-nested-module
                                               _spath159283_
                                               _stx159023_)
                                              (_E159262159271_)))
                                        (_E159262159271_))))
                                (_E159262159271_)))))
                    (_E159261159285_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_lp159230_
                                      _in-rest159259_
                                      (_export-imports159028_
                                       _src159289_
                                       _r159233_)))
                                   (_E159236159245_)))))
                         (_E159236159245_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E159235159291_)))
                                                 (_E159207159216_)))
                                           (_E159207159216_))))
                                   (_E159207159216_))))
                            (_E159184159334_
                             (lambda ()
                               (if (gx#stx-pair? _e159180159212_)
                                   (let ((_e159198159299_
                                          (gx#syntax-e _e159180159212_)))
                                     (let ((_hd159199159302_
                                            (##car _e159198159299_))
                                           (_tl159200159304_
                                            (##cdr _e159198159299_)))
                                       (if (eq? (gx#stx-e _hd159199159302_)
                                                'rename:)
                                           (if (gx#stx-pair? _tl159200159304_)
                                               (let ((_e159201159307_
                                                      (gx#syntax-e
                                                       _tl159200159304_)))
                                                 (let ((_hd159202159310_
                                                        (##car _e159201159307_))
                                                       (_tl159203159312_
                                                        (##cdr _e159201159307_)))
                                                   (let ((_id159315_
                                                          _hd159202159310_))
                                                     (if (gx#stx-pair?
                                                          _tl159203159312_)
                                                         (let ((_e159204159317_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl159203159312_)))
                   (let ((_hd159205159320_ (##car _e159204159317_))
                         (_tl159206159322_ (##cdr _e159204159317_)))
                     (let ((_name159325_ _hd159205159320_))
                       (if (gx#stx-null? _tl159206159322_)
                           (if '#t
                               (let* ((_phi159327_
                                       (gx#current-export-expander-phi))
                                      (_$e159329_
                                       (gx#core-resolve-identifier__1
                                        _id159315_
                                        _phi159327_)))
                                 (if _$e159329_
                                     ((lambda (_bind159332_)
                                        (_K159177_
                                         _rest159178_
                                         (cons (_make-export__166967166968_
                                                _bind159332_
                                                _phi159327_
                                                (gx#current-expander-context)
                                                _name159325_)
                                               _r159179_)))
                                      _$e159329_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Reference to unbound identifier"
                                      _stx159023_
                                      _hd159176_
                                      _id159315_)))
                               (_E159197159295_))
                           (_E159197159295_)))))
                 (_E159197159295_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E159197159295_))
                                           (_E159197159295_))))
                                   (_E159197159295_))))
                            (_E159183159383_
                             (lambda ()
                               (if (gx#stx-pair? _e159180159212_)
                                   (let ((_e159185159338_
                                          (gx#syntax-e _e159180159212_)))
                                     (let ((_hd159186159341_
                                            (##car _e159185159338_))
                                           (_tl159187159343_
                                            (##cdr _e159185159338_)))
                                       (if (eq? (gx#stx-e _hd159186159341_)
                                                'spec:)
                                           (if (gx#stx-pair? _tl159187159343_)
                                               (let ((_e159188159346_
                                                      (gx#syntax-e
                                                       _tl159187159343_)))
                                                 (let ((_hd159189159349_
                                                        (##car _e159188159346_))
                                                       (_tl159190159351_
                                                        (##cdr _e159188159346_)))
                                                   (let ((_phi159354_
                                                          _hd159189159349_))
                                                     (if (gx#stx-pair?
                                                          _tl159190159351_)
                                                         (let ((_e159191159356_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl159190159351_)))
                   (let ((_hd159192159359_ (##car _e159191159356_))
                         (_tl159193159361_ (##cdr _e159191159356_)))
                     (let ((_id159364_ _hd159192159359_))
                       (if (gx#stx-pair? _tl159193159361_)
                           (let ((_e159194159366_
                                  (gx#syntax-e _tl159193159361_)))
                             (let ((_hd159195159369_ (##car _e159194159366_))
                                   (_tl159196159371_ (##cdr _e159194159366_)))
                               (let ((_name159374_ _hd159195159369_))
                                 (if (gx#stx-null? _tl159196159371_)
                                     (if (and (gx#stx-fixnum? _phi159354_)
                                              (gx#identifier? _id159364_)
                                              (gx#identifier? _name159374_))
                                         (let* ((_phi159376_
                                                 (gx#stx-e _phi159354_))
                                                (_$e159378_
                                                 (gx#core-resolve-identifier__1
                                                  _id159364_
                                                  _phi159376_)))
                                           (if _$e159378_
                                               ((lambda (_bind159381_)
                                                  (_K159177_
                                                   _rest159178_
                                                   (cons (_make-export__166967166968_
                                                          _bind159381_
                                                          _phi159376_
                                                          (gx#current-expander-context)
                                                          _name159374_)
                                                         _r159179_)))
                                                _$e159378_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _stx159023_
                                                _hd159176_
                                                _id159364_)))
                                         (_E159184159334_))
                                     (_E159184159334_)))))
                           (_E159184159334_)))))
                 (_E159184159334_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E159184159334_))
                                           (_E159184159334_))))
                                   (_E159184159334_))))
                            (_E159182159394_
                             (lambda ()
                               (let ((_id159387_ _e159180159212_))
                                 (if (gx#identifier? _id159387_)
                                     (let ((_$e159389_
                                            (gx#core-resolve-identifier__1
                                             _id159387_
                                             (gx#current-export-expander-phi))))
                                       (if _$e159389_
                                           ((lambda (_bind159392_)
                                              (_K159177_
                                               _rest159178_
                                               (cons (_make-export__0__166969166972_
                                                      _bind159392_)
                                                     _r159179_)))
                                            _$e159389_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _stx159023_
                                            _hd159176_)))
                                     (_E159183159383_)))))
                            (_E159181159458_
                             (lambda ()
                               (if (eq? (gx#stx-e _e159180159212_) '#t)
                                   (if '#t
                                       (let* ((_current-ctx159398_
                                               (gx#current-expander-context))
                                              (_current-phi159400_
                                               (gx#current-export-expander-phi))
                                              (_phi-ctx159402_
                                               (gx#core-context-shift
                                                _current-ctx159398_
                                                _current-phi159400_))
                                              (_phi-bind159404_
                                               (table->list
                                                (##unchecked-structure-ref
                                                 _phi-ctx159402_
                                                 '2
                                                 gx#expander-context::t
                                                 '#f))))
                                         (let _lp159407_ ((_bind-rest159409_
                                                           _phi-bind159404_)
                                                          (_set159410_ '()))
                                           (let* ((_bind-rest159411159421_
                                                   _bind-rest159409_)
                                                  (_else159413159429_
                                                   (lambda ()
                                                     (_K159177_
                                                      _rest159178_
                                                      (cons (##structure
                                                             gx#export-set::t
                                                             '#f
                                                             _current-phi159400_
                                                             _set159410_)
                                                            _r159179_))))
                                                  (_K159415159439_
                                                   (lambda (_bind-rest159432_
                                                            _bind159433_
                                                            _key159434_)
                                                     (if (or (##structure-direct-instance-of?
                                                              _bind159433_
                                                              'gx#import-binding::t)
                                                             (gx#private-feature-binding?
                                                              _bind159433_))
                                                         (_lp159407_
                                                          _bind-rest159432_
                                                          _set159410_)
                                                         (_lp159407_
                                                          _bind-rest159432_
                                                          (cons (_make-export__2__166971166974_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind159433_
                         _current-phi159400_
                         _current-ctx159398_)
                        _set159410_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _bind-rest159411159421_)
                                                 (let ((_hd159416159442_
                                                        (##car _bind-rest159411159421_))
                                                       (_tl159417159444_
                                                        (##cdr _bind-rest159411159421_)))
                                                   (if (##pair? _hd159416159442_)
                                                       (let ((_hd159418159447_
                                                              (##car _hd159416159442_))
                                                             (_tl159419159449_
                                                              (##cdr _hd159416159442_)))
                                                         (let* ((_key159452_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd159418159447_)
                        (_bind159454_ _tl159419159449_)
                        (_bind-rest159456_ _tl159417159444_))
                   (_K159415159439_
                    _bind-rest159456_
                    _bind159454_
                    _key159452_)))
               (_else159413159429_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_else159413159429_)))))
                                       (_E159182159394_))
                                   (_E159182159394_)))))
                       (_E159181159458_))))
                  (_export-imports159028_
                   (lambda (_src159052_ _r159053_)
                     (letrec* ((_current-ctx159055_
                                (gx#current-expander-context))
                               (_current-phi159056_
                                (gx#current-export-expander-phi))
                               (_import->export159057_
                                (lambda (_in159138_)
                                  (let* ((_in159139159147_ _in159138_)
                                         (_E159141159151_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _in159139159147_)))
                                         (_K159142159158_
                                          (lambda (_phi159154_
                                                   _key159155_
                                                   _out159156_)
                                            (##structure
                                             gx#module-export::t
                                             _current-ctx159055_
                                             _key159155_
                                             _phi159154_
                                             _key159155_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _in159139159147_
                                         'gx#module-import::t)
                                        (let* ((_e159143159161_
                                                (##unchecked-structure-ref
                                                 _in159139159147_
                                                 '1
                                                 gx#module-import::t
                                                 '#f))
                                               (_out159164_ _e159143159161_)
                                               (_e159144159166_
                                                (##unchecked-structure-ref
                                                 _in159139159147_
                                                 '2
                                                 gx#module-import::t
                                                 '#f))
                                               (_key159169_ _e159144159166_)
                                               (_e159145159171_
                                                (##unchecked-structure-ref
                                                 _in159139159147_
                                                 '3
                                                 gx#module-import::t
                                                 '#f))
                                               (_phi159174_ _e159145159171_))
                                          (_K159142159158_
                                           _phi159174_
                                           _key159169_
                                           _out159164_))
                                        (_E159141159151_)))))
                               (_fold-e159058_
                                (lambda (_in159060_ _r159061_)
                                  (let* ((_in159062159076_ _in159060_)
                                         (_else159065159084_
                                          (lambda () _r159061_)))
                                    (let ((_K159071159120_
                                           (lambda (_phi159116_
                                                    _key159117_
                                                    _out159118_)
                                             (if (and (fx= _phi159116_
                                                           _current-phi159056_)
                                                      (eq? _src159052_
                                                           (##unchecked-structure-ref
                                                            _out159118_
                                                            '1
                                                            gx#module-export::t
                                                            '#f)))
                                                 (cons (_import->export159057_
                                                        _in159060_)
                                                       _r159061_)
                                                 _r159061_)))
                                          (_K159067159095_
                                           (lambda (_imports159088_
                                                    _phi159089_
                                                    _ctx159090_)
                                             (if (and (fx= _phi159089_
                                                           _current-phi159056_)
                                                      (eq? _src159052_
                                                           _ctx159090_))
                                                 (foldl1 (lambda (_in159092_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r159093_)
                   (cons (_import->export159057_ _in159092_) _r159093_))
                 _r159061_
                 _imports159088_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _r159061_))))
                                      (let ((_try-match159064159113_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _in159062159076_
                                                    'gx#import-set::t)
                                                   (let* ((_e159068159098_
                                                           (##unchecked-structure-ref
                                                            _in159062159076_
                                                            '1
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e159069159103_
                                                           (##unchecked-structure-ref
                                                            _in159062159076_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e159070159108_
                                                           (##unchecked-structure-ref
                                                            _in159062159076_
                                                            '3
                                                            gx#import-set::t
                                                            '#f)))
                                                     (let ((_ctx159101_
                                                            _e159068159098_)
                                                           (_phi159106_
                                                            _e159069159103_)
                                                           (_imports159111_
                                                            _e159070159108_))
                                                       (_K159067159095_
                                                        _imports159111_
                                                        _phi159106_
                                                        _ctx159101_)))
                                                   (_else159065159084_)))))
                                        (if (##structure-direct-instance-of?
                                             _in159062159076_
                                             'gx#module-import::t)
                                            (let* ((_e159072159123_
                                                    (##unchecked-structure-ref
                                                     _in159062159076_
                                                     '1
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e159073159128_
                                                    (##unchecked-structure-ref
                                                     _in159062159076_
                                                     '2
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e159074159133_
                                                    (##unchecked-structure-ref
                                                     _in159062159076_
                                                     '3
                                                     gx#module-import::t
                                                     '#f)))
                                              (let ((_out159126_
                                                     _e159072159123_)
                                                    (_key159131_
                                                     _e159073159128_)
                                                    (_phi159136_
                                                     _e159074159133_))
                                                (_K159071159120_
                                                 _phi159136_
                                                 _key159131_
                                                 _out159126_)))
                                            (_try-match159064159113_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _src159052_
                              _current-phi159056_
                              (foldl1 _fold-e159058_
                                      '()
                                      (##unchecked-structure-ref
                                       _current-ctx159055_
                                       '8
                                       gx#module-context::t
                                       '#f)))
                             _r159053_))))
                  (_export!159029_
                   (lambda (_rbody159042_)
                     (letrec* ((_current-ctx159044_
                                (gx#current-expander-context))
                               (_fold-e159045_
                                (lambda (_out159049_ _r159050_)
                                  (if (##structure-direct-instance-of?
                                       _out159049_
                                       'gx#module-export::t)
                                      (cons _out159049_ _r159050_)
                                      (if (##structure-direct-instance-of?
                                           _out159049_
                                           'gx#export-set::t)
                                          (foldl1 cons
                                                  _r159050_
                                                  (##unchecked-structure-ref
                                                   _out159049_
                                                   '3
                                                   gx#export-set::t
                                                   '#f))
                                          _r159050_)))))
                       (let ((_body159047_ (reverse _rbody159042_)))
                         (##unchecked-structure-set!
                          _current-ctx159044_
                          (foldl1 _fold-e159045_
                                  (##unchecked-structure-ref
                                   _current-ctx159044_
                                   '9
                                   gx#module-context::t
                                   '#f)
                                  _body159047_)
                          '9
                          gx#module-context::t
                          '#f)
                         _body159047_))))
                  (_expanded-export?159030_
                   (lambda (_e159037_)
                     (let ((_$e159039_
                            (##structure-direct-instance-of?
                             _e159037_
                             'gx#module-export::t)))
                       (if _$e159039_
                           _$e159039_
                           (##structure-direct-instance-of?
                            _e159037_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _internal-expand?159024_)
              (let ((_rbody159035_
                     (gx#core-expand-import/export
                      _stx159023_
                      _expanded-export?159030_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _expand1159027_)))
                (if _internal-expand?159024_
                    (reverse _rbody159035_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons '%#export (_export!159029_ _rbody159035_))
                     (gx#stx-source _stx159023_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _stx159023_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _stx159023_))))))
    (define gx#core-expand-export%__0
      (lambda (_stx159508_)
        (let ((_internal-expand?159510_ '#f))
          (gx#core-expand-export%__% _stx159508_ _internal-expand?159510_))))
    (define gx#core-expand-export%
      (lambda _g167042_
        (let ((_g167041_ (##length _g167042_)))
          (cond ((##fx= _g167041_ 1)
                 (apply (lambda (_stx159508_)
                          (gx#core-expand-export%__0 _stx159508_))
                        _g167042_))
                ((##fx= _g167041_ 2)
                 (apply (lambda (_stx159512_ _internal-expand?159513_)
                          (gx#core-expand-export%__%
                           _stx159512_
                           _internal-expand?159513_))
                        _g167042_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g167042_))))))
    (define gx#core-expand-export-source
      (lambda (_hd159020_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _hd159020_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_stx158990_)
        (let* ((_e158991158998_ _stx158990_)
               (_E158993159002_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e158991158998_)))
               (_E158992159016_
                (lambda ()
                  (if (gx#stx-pair? _e158991158998_)
                      (let ((_e158994159006_ (gx#syntax-e _e158991158998_)))
                        (let ((_hd158995159009_ (##car _e158994159006_))
                              (_tl158996159011_ (##cdr _e158994159006_)))
                          (let ((_body159014_ _tl158996159011_))
                            (if (gx#identifier-list? _body159014_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _body159014_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _body159014_))
                                   (gx#stx-source _stx158990_)))
                                (_E158993159002_)))))
                      (_E158993159002_)))))
          (_E158992159016_))))
    (define gx#core-bind-feature!__%
      (lambda (_id158956_ _private?158957_ _phi158958_ _ctx158959_)
        (gx#core-bind-syntax!__%
         _id158956_
         ((if _private?158957_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _id158956_))
         _private?158957_
         _phi158958_
         _ctx158959_)))
    (define gx#core-bind-feature!__0
      (lambda (_id158964_)
        (let* ((_private?158966_ '#f)
               (_phi158968_ (gx#current-expander-phi))
               (_ctx158970_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id158964_
           _private?158966_
           _phi158968_
           _ctx158970_))))
    (define gx#core-bind-feature!__1
      (lambda (_id158972_ _private?158973_)
        (let* ((_phi158975_ (gx#current-expander-phi))
               (_ctx158977_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id158972_
           _private?158973_
           _phi158975_
           _ctx158977_))))
    (define gx#core-bind-feature!__2
      (lambda (_id158979_ _private?158980_ _phi158981_)
        (let ((_ctx158983_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id158979_
           _private?158980_
           _phi158981_
           _ctx158983_))))
    (define gx#core-bind-feature!
      (lambda _g167044_
        (let ((_g167043_ (##length _g167044_)))
          (cond ((##fx= _g167043_ 1)
                 (apply (lambda (_id158964_)
                          (gx#core-bind-feature!__0 _id158964_))
                        _g167044_))
                ((##fx= _g167043_ 2)
                 (apply (lambda (_id158972_ _private?158973_)
                          (gx#core-bind-feature!__1
                           _id158972_
                           _private?158973_))
                        _g167044_))
                ((##fx= _g167043_ 3)
                 (apply (lambda (_id158979_ _private?158980_ _phi158981_)
                          (gx#core-bind-feature!__2
                           _id158979_
                           _private?158980_
                           _phi158981_))
                        _g167044_))
                ((##fx= _g167043_ 4)
                 (apply (lambda (_id158985_
                                 _private?158986_
                                 _phi158987_
                                 _ctx158988_)
                          (gx#core-bind-feature!__%
                           _id158985_
                           _private?158986_
                           _phi158987_
                           _ctx158988_))
                        _g167044_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g167044_))))))))
