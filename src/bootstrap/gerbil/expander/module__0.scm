(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1707738032)
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
      (lambda _$args162397_
        (apply make-instance gx#module-import::t _$args162397_)))
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
      (lambda _$args162394_
        (apply make-instance gx#module-export::t _$args162394_)))
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
      (lambda _$args162391_
        (apply make-instance gx#import-set::t _$args162391_)))
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
      (lambda _$args162388_
        (apply make-instance gx#export-set::t _$args162388_)))
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
      (lambda _$args162385_
        (apply make-instance gx#import-expander::t _$args162385_)))
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
      (lambda _$args162382_
        (apply make-instance gx#export-expander::t _$args162382_)))
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
      (lambda _$args162379_
        (apply make-instance gx#import-export-expander::t _$args162379_)))
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
      (lambda (_path162376_ _fun162377_)
        (call-with-input-file
         (cons 'path: (cons _path162376_ gx#source-file-settings))
         _fun162377_)))
    (define gx#module-context:::init!
      (lambda (_self162370_ _id162371_ _super162372_ _ns162373_ _path162374_)
        (if (##fx< '11 (##structure-length _self162370_))
            (begin
              (##unchecked-structure-set!
               _self162370_
               _id162371_
               '1
               (##structure-type _self162370_)
               '#f)
              (##unchecked-structure-set!
               _self162370_
               (make-table 'test: eq?)
               '2
               (##structure-type _self162370_)
               '#f)
              (##unchecked-structure-set!
               _self162370_
               _super162372_
               '3
               (##structure-type _self162370_)
               '#f)
              (##unchecked-structure-set!
               _self162370_
               '#f
               '4
               (##structure-type _self162370_)
               '#f)
              (##unchecked-structure-set!
               _self162370_
               '#f
               '5
               (##structure-type _self162370_)
               '#f)
              (##unchecked-structure-set!
               _self162370_
               _ns162373_
               '6
               (##structure-type _self162370_)
               '#f)
              (##unchecked-structure-set!
               _self162370_
               _path162374_
               '7
               (##structure-type _self162370_)
               '#f)
              (##unchecked-structure-set!
               _self162370_
               '()
               '8
               (##structure-type _self162370_)
               '#f)
              (##unchecked-structure-set!
               _self162370_
               '()
               '9
               (##structure-type _self162370_)
               '#f)
              (##unchecked-structure-set!
               _self162370_
               '#f
               '10
               (##structure-type _self162370_)
               '#f)
              (##unchecked-structure-set!
               _self162370_
               '#f
               '11
               (##structure-type _self162370_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self162370_
                   '11
                   (##vector-length _self162370_)))))
    (bind-method! gx#module-context::t ':init! gx#module-context:::init! '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_self162214_ _ctx162215_ _root162216_)
        (let ((_super162224_
               (let ((_$e162218_ _root162216_))
                 (if _$e162218_
                     _$e162218_
                     (let ((_$e162221_ (gx#core-context-root__0)))
                       (if _$e162221_
                           _$e162221_
                           (let ((__obj167007
                                  (##structure gx#root-context::t '#f '#f)))
                             (let ((__constructor167008
                                    (direct-method-ref
                                     gx#root-context::t
                                     ':init!)))
                               (if __constructor167008
                                   (__constructor167008 __obj167007)
                                   (error '"missing constructor method implementation"
                                          'class:
                                          gx#root-context::t
                                          'method:
                                          ':init!)))
                             __obj167007)))))))
          (if _ctx162215_
              (let ((_id162227_
                     (##structure-ref
                      _ctx162215_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_path162228_
                     (##structure-ref _ctx162215_ '7 gx#module-context::t '#f))
                    (_in162229_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _ctx162215_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_e162230_
                     (make-promise (lambda () (gx#eval-module _ctx162215_)))))
                (if (##fx< '8 (##structure-length _self162214_))
                    (begin
                      (##unchecked-structure-set!
                       _self162214_
                       _id162227_
                       '1
                       (##structure-type _self162214_)
                       '#f)
                      (##unchecked-structure-set!
                       _self162214_
                       (make-table 'test: eq? 'size: (length _in162229_))
                       '2
                       (##structure-type _self162214_)
                       '#f)
                      (##unchecked-structure-set!
                       _self162214_
                       _super162224_
                       '3
                       (##structure-type _self162214_)
                       '#f)
                      (##unchecked-structure-set!
                       _self162214_
                       '#f
                       '4
                       (##structure-type _self162214_)
                       '#f)
                      (##unchecked-structure-set!
                       _self162214_
                       '#f
                       '5
                       (##structure-type _self162214_)
                       '#f)
                      (##unchecked-structure-set!
                       _self162214_
                       _path162228_
                       '6
                       (##structure-type _self162214_)
                       '#f)
                      (##unchecked-structure-set!
                       _self162214_
                       _in162229_
                       '7
                       (##structure-type _self162214_)
                       '#f)
                      (##unchecked-structure-set!
                       _self162214_
                       _e162230_
                       '8
                       (##structure-type _self162214_)
                       '#f))
                    (error '"struct-instance-init!: too many arguments for struct"
                           _self162214_
                           '8
                           (##vector-length _self162214_)))
                (for-each
                 (lambda (_g162231162233_)
                   (gx#core-bind-weak-import!__% _g162231162233_ _self162214_))
                 _in162229_))
              (if (##fx< '8 (##structure-length _self162214_))
                  (begin
                    (##unchecked-structure-set!
                     _self162214_
                     '#f
                     '1
                     (##structure-type _self162214_)
                     '#f)
                    (##unchecked-structure-set!
                     _self162214_
                     (make-table 'test: eq?)
                     '2
                     (##structure-type _self162214_)
                     '#f)
                    (##unchecked-structure-set!
                     _self162214_
                     _super162224_
                     '3
                     (##structure-type _self162214_)
                     '#f)
                    (##unchecked-structure-set!
                     _self162214_
                     '#f
                     '4
                     (##structure-type _self162214_)
                     '#f)
                    (##unchecked-structure-set!
                     _self162214_
                     '#f
                     '5
                     (##structure-type _self162214_)
                     '#f)
                    (##unchecked-structure-set!
                     _self162214_
                     '#f
                     '6
                     (##structure-type _self162214_)
                     '#f)
                    (##unchecked-structure-set!
                     _self162214_
                     '()
                     '7
                     (##structure-type _self162214_)
                     '#f)
                    (##unchecked-structure-set!
                     _self162214_
                     '#f
                     '8
                     (##structure-type _self162214_)
                     '#f))
                  (error '"struct-instance-init!: too many arguments for struct"
                         _self162214_
                         '8
                         (##vector-length _self162214_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_self162239_ _ctx162240_)
        (let ((_root162242_ '#f))
          (gx#prelude-context:::init!__%
           _self162239_
           _ctx162240_
           _root162242_))))
    (define gx#prelude-context:::init!
      (lambda _g167014_
        (let ((_g167013_ (##length _g167014_)))
          (cond ((##fx= _g167013_ 2)
                 (apply (lambda (_self162239_ _ctx162240_)
                          (gx#prelude-context:::init!__0
                           _self162239_
                           _ctx162240_))
                        _g167014_))
                ((##fx= _g167013_ 3)
                 (apply (lambda (_self162244_ _ctx162245_ _root162246_)
                          (gx#prelude-context:::init!__%
                           _self162244_
                           _ctx162245_
                           _root162246_))
                        _g167014_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g167014_))))))
    (bind-method! gx#prelude-context::t ':init! gx#prelude-context:::init! '#f)
    (define gx#import-export-expander-init!
      (lambda (_self162088_ _e162089_)
        (if (##fx< '3 (##structure-length _self162088_))
            (begin
              (##unchecked-structure-set!
               _self162088_
               _e162089_
               '1
               (##structure-type _self162088_)
               '#f)
              (##unchecked-structure-set!
               _self162088_
               (gx#current-expander-context)
               '2
               (##structure-type _self162088_)
               '#f)
              (##unchecked-structure-set!
               _self162088_
               (fx- (gx#current-expander-phi) '1)
               '3
               (##structure-type _self162088_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self162088_
                   '3
                   (##vector-length _self162088_)))))
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
      (lambda (_g161714161717_ _g161715161719_)
        (gx#core-apply-user-expander__%
         _g161714161717_
         _g161715161719_
         'apply-import-expander)))
    (bind-method!
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_g161585161588_ _g161586161590_)
        (gx#core-apply-user-expander__%
         _g161585161588_
         _g161586161590_
         'apply-export-expander)))
    (bind-method!
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_ctx161456_)
        (let* ((_path161458_
                (##structure-ref _ctx161456_ '7 gx#module-context::t '#f))
               (_path161460_
                (if (pair? _path161458_) (last _path161458_) _path161458_)))
          (if (string? _path161460_) _path161460_ '#f))))
    (define gx#import-module__%
      (lambda (_path161432_ _reload?161433_ _eval?161434_)
        (let ((_ctx161436_
               ((gx#current-expander-module-import)
                _path161432_
                _reload?161433_)))
          (if (and _ctx161436_ _eval?161434_)
              (gx#eval-module _ctx161436_)
              '#!void)
          _ctx161436_)))
    (define gx#import-module__0
      (lambda (_path161441_)
        (let* ((_reload?161443_ '#f) (_eval?161445_ '#f))
          (gx#import-module__% _path161441_ _reload?161443_ _eval?161445_))))
    (define gx#import-module__1
      (lambda (_path161447_ _reload?161448_)
        (let ((_eval?161450_ '#f))
          (gx#import-module__% _path161447_ _reload?161448_ _eval?161450_))))
    (define gx#import-module
      (lambda _g167016_
        (let ((_g167015_ (##length _g167016_)))
          (cond ((##fx= _g167015_ 1)
                 (apply (lambda (_path161441_)
                          (gx#import-module__0 _path161441_))
                        _g167016_))
                ((##fx= _g167015_ 2)
                 (apply (lambda (_path161447_ _reload?161448_)
                          (gx#import-module__1 _path161447_ _reload?161448_))
                        _g167016_))
                ((##fx= _g167015_ 3)
                 (apply (lambda (_path161452_ _reload?161453_ _eval?161454_)
                          (gx#import-module__%
                           _path161452_
                           _reload?161453_
                           _eval?161454_))
                        _g167016_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g167016_))))))
    (define gx#eval-module
      (lambda (_mod161429_) ((gx#current-expander-module-eval) _mod161429_)))
    (define gx#core-eval-module
      (lambda (_obj161414_)
        (letrec ((_force-e161416_
                  (lambda (_getf161425_ _e161426_)
                    (call-with-parameters
                     (lambda () (force (_getf161425_ _e161426_)))
                     gx#current-expander-context
                     _e161426_
                     gx#current-expander-phi
                     '0))))
          (let _recur161418_ ((_e161420_ _obj161414_))
            (if (##structure-instance-of? _e161420_ 'gx#module-context::t)
                (begin
                  (let ((_$e161422_ (gx#core-context-prelude__% _e161420_)))
                    (if _$e161422_ (_recur161418_ _$e161422_) '#!void))
                  (_force-e161416_ gx#module-context-e _e161420_))
                (if (##structure-instance-of? _e161420_ 'gx#prelude-context::t)
                    (_force-e161416_ gx#prelude-context-e _e161420_)
                    (if (gx#stx-string? _e161420_)
                        (_recur161418_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _e161420_)))
                        (if (gx#core-library-module-path? _e161420_)
                            (_recur161418_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _e161420_)))
                            (error '"Cannot eval module" _obj161414_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_ctx161397_)
        (let _lp161399_ ((_e161401_ _ctx161397_))
          (if (or (##structure-instance-of? _e161401_ 'gx#module-context::t)
                  (##structure-instance-of? _e161401_ 'gx#local-context::t))
              (_lp161399_
               (##unchecked-structure-ref _e161401_ '3 gx#phi-context::t '#f))
              (if (##structure-instance-of? _e161401_ 'gx#prelude-context::t)
                  _e161401_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_ctx161410_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _ctx161410_))))
    (define gx#core-context-prelude
      (lambda _g167018_
        (let ((_g167017_ (##length _g167018_)))
          (cond ((##fx= _g167017_ 0)
                 (apply (lambda () (gx#core-context-prelude__0)) _g167018_))
                ((##fx= _g167017_ 1)
                 (apply (lambda (_ctx161412_)
                          (gx#core-context-prelude__% _ctx161412_))
                        _g167018_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g167018_))))))
    (define gx#core-module->prelude-context
      (lambda (_ctx161387_)
        (let* ((_ht161389_ (gx#current-expander-module-registry))
               (_$e161391_ (table-ref _ht161389_ _ctx161387_ '#f)))
          (if _$e161391_
              (values _$e161391_)
              (let ((_pre161394_
                     (let ((__obj167009
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
                       (gx#prelude-context:::init! __obj167009 _ctx161387_)
                       __obj167009)))
                (table-set! _ht161389_ _ctx161387_ _pre161394_)
                _pre161394_)))))
    (define gx#core-import-module__%
      (lambda (_rpath161268_ _reload?161269_)
        (letrec ((_import-source161271_
                  (lambda (_path161356_)
                    (if (member _path161356_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _path161356_)
                        '#!void)
                    (call-with-parameters
                     (lambda ()
                       (let ((_g167019_ (gx#core-read-module _path161356_)))
                         (begin
                           (let ((_g167020_
                                  (if (##values? _g167019_)
                                      (##vector-length _g167019_)
                                      1)))
                             (if (not (##fx= _g167020_ 4))
                                 (error "Context expects 4 values" _g167020_)))
                           (let ((_pre161359_ (##vector-ref _g167019_ 0))
                                 (_id161360_ (##vector-ref _g167019_ 1))
                                 (_ns161361_ (##vector-ref _g167019_ 2))
                                 (_body161362_ (##vector-ref _g167019_ 3)))
                             (let* ((_prelude161367_
                                     (if (##structure-instance-of?
                                          _pre161359_
                                          'gx#prelude-context::t)
                                         _pre161359_
                                         (if (##structure-instance-of?
                                              _pre161359_
                                              'gx#module-context::t)
                                             (gx#core-module->prelude-context
                                              _pre161359_)
                                             (if (string? _pre161359_)
                                                 (gx#core-module->prelude-context
                                                  (gx#core-import-module__0
                                                   _pre161359_))
                                                 (if (not _pre161359_)
                                                     (let ((_$e161364_
                                                            (gx#current-expander-module-prelude)))
                                                       (if _$e161364_
                                                           _$e161364_
                                                           (let ((__obj167010
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
                     (gx#prelude-context:::init! __obj167010 '#f)
                     __obj167010)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error '"Cannot import module; unknown prelude"
                                                            _rpath161268_
                                                            _pre161359_))))))
                                    (_ctx161369_
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
                                        _id161360_
                                        _prelude161367_
                                        _ns161361_
                                        _path161356_)
                                       __obj167011))
                                    (_body161371_
                                     (gx#core-expand-module-begin
                                      _body161362_
                                      _ctx161369_))
                                    (_body161373_
                                     (gx#core-quote-syntax__%
                                      (gx#core-cons '%#begin _body161371_)
                                      _path161356_
                                      _ctx161369_
                                      '())))
                               (##unchecked-structure-set!
                                _ctx161369_
                                (make-promise
                                 (lambda () (gx#eval-syntax* _body161373_)))
                                '10
                                gx#module-context::t
                                '#f)
                               (##unchecked-structure-set!
                                _ctx161369_
                                _body161373_
                                '11
                                gx#module-context::t
                                '#f)
                               (table-set!
                                (gx#current-expander-module-registry)
                                _path161356_
                                _ctx161369_)
                               (table-set!
                                (gx#current-expander-module-registry)
                                _id161360_
                                _ctx161369_)
                               _ctx161369_)))))
                     gx#current-expander-context
                     (gx#core-context-root__0)
                     gx#current-expander-marks
                     '()
                     gx#current-expander-phi
                     '0
                     gx#current-expander-path
                     (cons _path161356_ (gx#current-expander-path))
                     gx#current-import-expander-phi
                     '#f
                     gx#current-export-expander-phi
                     '#f)))
                 (_import-submodule161272_
                  (lambda (_rpath161284_)
                    (let* ((_rpath161285161292_ _rpath161284_)
                           (_E161287161296_
                            (lambda ()
                              (error '"No clause matching"
                                     _rpath161285161292_)))
                           (_K161288161344_
                            (lambda (_refs161299_ _origin161300_)
                              (let ((_ctx161302_
                                     (if _origin161300_
                                         (gx#core-import-module__%
                                          _origin161300_
                                          _reload?161269_)
                                         (gx#current-expander-context))))
                                (let _lp161304_ ((_rest161306_ _refs161299_)
                                                 (_ctx161307_ _ctx161302_))
                                  (let* ((_rest161308161316_ _rest161306_)
                                         (_else161310161324_
                                          (lambda () _ctx161307_))
                                         (_K161312161332_
                                          (lambda (_rest161327_ _id161328_)
                                            (let ((_bind161330_
                                                   (gx#resolve-identifier__%
                                                    _id161328_
                                                    '0
                                                    _ctx161307_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _bind161330_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _bind161330_
                                                         '4
                                                         gx#syntax-binding::t
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_lp161304_
                                                   _rest161327_
                                                   (##unchecked-structure-ref
                                                    _bind161330_
                                                    '4
                                                    gx#syntax-binding::t
                                                    '#f))
                                                  (error '"Cannot import submodule; not bound as a module"
                                                         _rpath161284_
                                                         _id161328_
                                                         _bind161330_))))))
                                    (if (##pair? _rest161308161316_)
                                        (let ((_hd161313161335_
                                               (##car _rest161308161316_))
                                              (_tl161314161337_
                                               (##cdr _rest161308161316_)))
                                          (let* ((_id161340_ _hd161313161335_)
                                                 (_rest161342_
                                                  _tl161314161337_))
                                            (_K161312161332_
                                             _rest161342_
                                             _id161340_)))
                                        (_else161310161324_))))))))
                      (if (##pair? _rpath161285161292_)
                          (let ((_hd161289161347_ (##car _rpath161285161292_))
                                (_tl161290161349_ (##cdr _rpath161285161292_)))
                            (let* ((_origin161352_ _hd161289161347_)
                                   (_refs161354_ _tl161290161349_))
                              (_K161288161344_ _refs161354_ _origin161352_)))
                          (_E161287161296_))))))
          (let ((_$e161274_
                 (if (not _reload?161269_)
                     (table-ref
                      (gx#current-expander-module-registry)
                      _rpath161268_
                      '#f)
                     '#f)))
            (if _$e161274_
                (values _$e161274_)
                (if (list? _rpath161268_)
                    (_import-submodule161272_ _rpath161268_)
                    (if (gx#core-library-module-path? _rpath161268_)
                        (let ((_ctx161277_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _rpath161268_)
                                _reload?161269_)))
                          (table-set!
                           (gx#current-expander-module-registry)
                           _rpath161268_
                           _ctx161277_)
                          _ctx161277_)
                        (let* ((_npath161279_ (path-normalize _rpath161268_))
                               (_$e161281_
                                (if (not _reload?161269_)
                                    (table-ref
                                     (gx#current-expander-module-registry)
                                     _npath161279_
                                     '#f)
                                    '#f)))
                          (if _$e161281_
                              (values _$e161281_)
                              (_import-source161271_ _npath161279_))))))))))
    (define gx#core-import-module__0
      (lambda (_rpath161380_)
        (let ((_reload?161382_ '#f))
          (gx#core-import-module__% _rpath161380_ _reload?161382_))))
    (define gx#core-import-module
      (lambda _g167022_
        (let ((_g167021_ (##length _g167022_)))
          (cond ((##fx= _g167021_ 1)
                 (apply (lambda (_rpath161380_)
                          (gx#core-import-module__0 _rpath161380_))
                        _g167022_))
                ((##fx= _g167021_ 2)
                 (apply (lambda (_rpath161384_ _reload?161385_)
                          (gx#core-import-module__%
                           _rpath161384_
                           _reload?161385_))
                        _g167022_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g167022_))))))
    (define gx#core-read-module
      (lambda (_path161257_)
        (with-catch
         (lambda (_exn161259_)
           (if (and (datum-parsing-exception? _exn161259_)
                    (eq? (datum-parsing-exception-filepos _exn161259_) '0))
               (gx#core-read-module/lang _path161257_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _path161257_
                (call-with-parameters
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_g161261161263_)
                      (display-exception _exn161259_ _g161261161263_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _path161257_)))))
    (define gx#core-read-module/sexp
      (lambda (_path161120_)
        (let _lp161122_ ((_body161124_ (read-syntax-from-file _path161120_))
                         (_pre161125_ '#f)
                         (_ns161126_ '#f)
                         (_pkg161127_ '#f))
          (let* ((_e161128161152_ _body161124_)
                 (_E161144161174_
                  (lambda ()
                    (let ((_g167023_
                           (if _pkg161127_
                               (values _pre161125_ _ns161126_ _pkg161127_)
                               (gx#core-read-module-package
                                _path161120_
                                _pre161125_
                                _ns161126_))))
                      (begin
                        (let ((_g167024_
                               (if (##values? _g167023_)
                                   (##vector-length _g167023_)
                                   1)))
                          (if (not (##fx= _g167024_ 3))
                              (error "Context expects 3 values" _g167024_)))
                        (let ((_pre161156_ (##vector-ref _g167023_ 0))
                              (_ns161157_ (##vector-ref _g167023_ 1))
                              (_pkg161158_ (##vector-ref _g167023_ 2)))
                          (let* ((_prelude161160_
                                  (if (gx#core-bound-module-prelude?
                                       _pre161156_)
                                      (gx#syntax-local-e__0 _pre161156_)
                                      (if (gx#core-library-module-path?
                                           _pre161156_)
                                          (gx#core-resolve-library-module-path
                                           _pre161156_)
                                          (if (gx#stx-string? _pre161156_)
                                              (gx#core-resolve-module-path__%
                                               _pre161156_
                                               _path161120_)
                                              (gx#stx-e _pre161156_)))))
                                 (_path-id161162_
                                  (gx#core-module-path->namespace
                                   _path161120_))
                                 (_pkg-id161164_
                                  (if _pkg161158_
                                      (string-append
                                       _pkg161158_
                                       '"/"
                                       _path-id161162_)
                                      _path-id161162_))
                                 (_module-id161166_
                                  (string->symbol _pkg-id161164_))
                                 (_module-ns161171_
                                  (if (eq? _ns161157_ '#!void)
                                      '#f
                                      (let ((_$e161168_ _ns161157_))
                                        (if _$e161168_
                                            _$e161168_
                                            _pkg-id161164_)))))
                            (values _prelude161160_
                                    _module-id161166_
                                    _module-ns161171_
                                    _body161124_)))))))
                 (_E161137161203_
                  (lambda ()
                    (if (gx#stx-pair? _e161128161152_)
                        (let ((_e161145161178_ (gx#syntax-e _e161128161152_)))
                          (let ((_hd161146161181_ (##car _e161145161178_))
                                (_tl161147161183_ (##cdr _e161145161178_)))
                            (if (eq? (gx#stx-e _hd161146161181_) 'package:)
                                (if (gx#stx-pair? _tl161147161183_)
                                    (let ((_e161148161186_
                                           (gx#syntax-e _tl161147161183_)))
                                      (let ((_hd161149161189_
                                             (##car _e161148161186_))
                                            (_tl161150161191_
                                             (##cdr _e161148161186_)))
                                        (let* ((_pkg161194_ _hd161149161189_)
                                               (_rest161196_ _tl161150161191_))
                                          (if '#t
                                              (let ((_pkg161201_
                                                     (if (gx#identifier?
                                                          _pkg161194_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _pkg161194_))
                                                         (if (or (gx#stx-string?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _pkg161194_)
                         (gx#stx-false? _pkg161194_))
                     (gx#stx-e _pkg161194_)
                     (gx#raise-syntax-error
                      'import
                      '"Bad syntax; Illegal package name"
                      _pkg161194_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp161122_
                                                 _rest161196_
                                                 _pre161125_
                                                 _ns161126_
                                                 _pkg161201_))
                                              (_E161144161174_)))))
                                    (_E161144161174_))
                                (_E161144161174_))))
                        (_E161144161174_))))
                 (_E161130161229_
                  (lambda ()
                    (if (gx#stx-pair? _e161128161152_)
                        (let ((_e161138161207_ (gx#syntax-e _e161128161152_)))
                          (let ((_hd161139161210_ (##car _e161138161207_))
                                (_tl161140161212_ (##cdr _e161138161207_)))
                            (if (eq? (gx#stx-e _hd161139161210_) 'namespace:)
                                (if (gx#stx-pair? _tl161140161212_)
                                    (let ((_e161141161215_
                                           (gx#syntax-e _tl161140161212_)))
                                      (let ((_hd161142161218_
                                             (##car _e161141161215_))
                                            (_tl161143161220_
                                             (##cdr _e161141161215_)))
                                        (let* ((_ns161223_ _hd161142161218_)
                                               (_rest161225_ _tl161143161220_))
                                          (if '#t
                                              (let ((_ns161227_
                                                     (if (gx#identifier?
                                                          _ns161223_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _ns161223_))
                                                         (if (gx#stx-string?
                                                              _ns161223_)
                                                             (gx#stx-e
                                                              _ns161223_)
                                                             (if (gx#stx-false?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _ns161223_)
                         '#!void
                         (gx#raise-syntax-error
                          'import
                          '"Bad syntax; illegal namespace"
                          _ns161223_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp161122_
                                                 _rest161225_
                                                 _pre161125_
                                                 _ns161227_
                                                 _pkg161127_))
                                              (_E161137161203_)))))
                                    (_E161137161203_))
                                (_E161137161203_))))
                        (_E161137161203_))))
                 (_E161129161253_
                  (lambda ()
                    (if (gx#stx-pair? _e161128161152_)
                        (let ((_e161131161233_ (gx#syntax-e _e161128161152_)))
                          (let ((_hd161132161236_ (##car _e161131161233_))
                                (_tl161133161238_ (##cdr _e161131161233_)))
                            (if (eq? (gx#stx-e _hd161132161236_) 'prelude:)
                                (if (gx#stx-pair? _tl161133161238_)
                                    (let ((_e161134161241_
                                           (gx#syntax-e _tl161133161238_)))
                                      (let ((_hd161135161244_
                                             (##car _e161134161241_))
                                            (_tl161136161246_
                                             (##cdr _e161134161241_)))
                                        (let* ((_prelude161249_
                                                _hd161135161244_)
                                               (_rest161251_ _tl161136161246_))
                                          (if '#t
                                              (_lp161122_
                                               _rest161251_
                                               _prelude161249_
                                               _ns161126_
                                               _pkg161127_)
                                              (_E161130161229_)))))
                                    (_E161130161229_))
                                (_E161130161229_))))
                        (_E161130161229_)))))
            (_E161129161253_)))))
    (define gx#core-read-module/lang
      (lambda (_path160947_)
        (letrec ((_default-read-module-body160949_
                  (lambda (_inp161112_)
                    (let _lp161114_ ((_body161116_ '()))
                      (let ((_next161118_ (read-syntax _inp161112_)))
                        (if (eof-object? _next161118_)
                            (reverse _body161116_)
                            (_lp161114_ (cons _next161118_ _body161116_)))))))
                 (_read-body160950_
                  (lambda (_inp161031_
                           _pre161032_
                           _ns161033_
                           _pkg161034_
                           _args161035_)
                    (let ((_g167025_
                           (if _pkg161034_
                               (values _pre161032_ _ns161033_ _pkg161034_)
                               (gx#core-read-module-package
                                _path160947_
                                _pre161032_
                                _ns161033_))))
                      (begin
                        (let ((_g167026_
                               (if (##values? _g167025_)
                                   (##vector-length _g167025_)
                                   1)))
                          (if (not (##fx= _g167026_ 3))
                              (error "Context expects 3 values" _g167026_)))
                        (let ((_pre161037_ (##vector-ref _g167025_ 0))
                              (_ns161038_ (##vector-ref _g167025_ 1))
                              (_pkg161039_ (##vector-ref _g167025_ 2)))
                          (let* ((_prelude161041_
                                  (gx#import-module__0 _pre161037_))
                                 (_read-module-body161095_
                                  (let ((_$e161087_
                                         (find (lambda (_e161042161044_)
                                                 (let* ((_g161046161056_
                                                         _e161042161044_)
                                                        (_else161048161064_
                                                         (lambda () '#f))
                                                        (_K161050161068_
                                                         (lambda () '#t)))
                                                   (if (##structure-direct-instance-of?
                                                        _g161046161056_
                                                        'gx#module-export::t)
                                                       (let* ((_e161051161071_
                                                               (##unchecked-structure-ref
                                                                _g161046161056_
                                                                '1
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e161052161074_
                                                               (##unchecked-structure-ref
                                                                _g161046161056_
                                                                '2
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e161053161077_
                                                               (##unchecked-structure-ref
                                                                _g161046161056_
                                                                '3
                                                                gx#module-export::t
                                                                '#f)))
                                                         (if (##eq? _e161053161077_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)
                     (let ((_e161054161080_
                            (##unchecked-structure-ref
                             _g161046161056_
                             '4
                             gx#module-export::t
                             '#f)))
                       (if ((lambda (_g161082161084_)
                              (eq? _g161082161084_ 'read-module-body))
                            _e161054161080_)
                           (_K161050161068_)
                           (_else161048161064_)))
                     (_else161048161064_)))
               (_else161048161064_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (##unchecked-structure-ref
                                                _prelude161041_
                                                '9
                                                gx#module-context::t
                                                '#f))))
                                    (if _$e161087_
                                        ((lambda (_xport161090_)
                                           (let ((_proc161093_
                                                  (with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _xport161090_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _proc161093_)
                                                 _proc161093_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _path160947_
                                                  _pre161037_
                                                  _proc161093_))))
                                         _$e161087_)
                                        _default-read-module-body160949_)))
                                 (_path-id161097_
                                  (gx#core-module-path->namespace
                                   _path160947_))
                                 (_pkg-id161099_
                                  (if _pkg161039_
                                      (string-append
                                       _pkg161039_
                                       '"/"
                                       _path-id161097_)
                                      _path-id161097_))
                                 (_module-id161101_
                                  (string->symbol _pkg-id161099_))
                                 (_module-ns161106_
                                  (let ((_$e161103_ _ns161038_))
                                    (if _$e161103_ _$e161103_ _pkg-id161099_)))
                                 (_body161109_
                                  (call-with-parameters
                                   (lambda ()
                                     (_read-module-body161095_ _inp161031_))
                                   gx#current-module-reader-path
                                   _path160947_
                                   gx#current-module-reader-args
                                   _args161035_)))
                            (values _prelude161041_
                                    _module-id161101_
                                    _module-ns161106_
                                    _body161109_)))))))
                 (_string-e160951_
                  (lambda (_obj161028_ _what161029_)
                    (if (string? _obj161028_)
                        _obj161028_
                        (if (symbol? _obj161028_)
                            (symbol->string _obj161028_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _what161029_)
                             _path160947_
                             _obj161028_)))))
                 (_read-lang-args160952_
                  (lambda (_inp160983_ _args160984_)
                    (let* ((_args160985160993_ _args160984_)
                           (_else160987161001_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _path160947_)))
                           (_K160989161016_
                            (lambda (_args161004_ _prelude161005_)
                              (let* ((_pkg161007_
                                      (pgetq 'package: _args161004_))
                                     (_pkg161009_
                                      (if _pkg161007_
                                          (_string-e160951_
                                           _pkg161007_
                                           '"package")
                                          '#f))
                                     (_ns161011_
                                      (pgetq 'namespace: _args161004_))
                                     (_ns161013_
                                      (if _ns161011_
                                          (_string-e160951_
                                           _ns161011_
                                           '"namespace")
                                          '#f)))
                                (_read-body160950_
                                 _inp160983_
                                 _prelude161005_
                                 _ns161013_
                                 _pkg161009_
                                 _args161004_)))))
                      (if (##pair? _args160985160993_)
                          (let ((_hd160990161019_ (##car _args160985160993_))
                                (_tl160991161021_ (##cdr _args160985160993_)))
                            (let* ((_prelude161024_ _hd160990161019_)
                                   (_args161026_ _tl160991161021_))
                              (_K160989161016_ _args161026_ _prelude161024_)))
                          (_else160987161001_)))))
                 (_read-lang160953_
                  (lambda (_inp160958_)
                    (let* ((_head160960_ (read-line _inp160958_))
                           (_$e160962_ (string-index _head160960_ '#\space)))
                      (if _$e160962_
                          ((lambda (_ix160965_)
                             (let ((_lang160967_
                                    (substring _head160960_ '0 _ix160965_)))
                               (if (equal? _lang160967_ '"#lang")
                                   (let* ((_rest160969_
                                           (substring
                                            _head160960_
                                            (fx+ _ix160965_ '1)
                                            (string-length _head160960_)))
                                          (_args160980_
                                           (with-catch
                                            (lambda (_g160970160972_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _path160947_
                                               _g160970160972_))
                                            (lambda ()
                                              (call-with-input-string
                                               _rest160969_
                                               (lambda (_g160975160977_)
                                                 (read-all
                                                  _g160975160977_
                                                  read)))))))
                                     (_read-lang-args160952_
                                      _inp160958_
                                      _args160980_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _path160947_))))
                           _$e160962_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _path160947_)))))
                 (_read-e160954_
                  (lambda (_inp160956_)
                    (if (eq? (peek-char _inp160956_) '#\#)
                        (_read-lang160953_ _inp160956_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _path160947_)))))
          (gx#call-with-input-source-file _path160947_ _read-e160954_))))
    (define gx#core-read-module-package
      (lambda (_path160901_ _pre160902_ _ns160903_)
        (letrec ((_string-e160905_
                  (lambda (_e160945_)
                    (if (symbol? _e160945_)
                        (symbol->string _e160945_)
                        (if (string? _e160945_)
                            _e160945_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _e160945_))))))
          (let _lp160907_ ((_dir160909_ (path-directory _path160901_))
                           (_pkg-path160910_ '()))
            (let ((_gerbil.pkg160912_ (path-expand '"gerbil.pkg" _dir160909_)))
              (if (file-exists? _gerbil.pkg160912_)
                  (let ((_plist160914_
                         (gx#core-library-package-plist__% _dir160909_ '#t)))
                    (if (null? _plist160914_)
                        (let ((_pkg160916_
                               (if (not (null? _pkg-path160910_))
                                   (string-join _pkg-path160910_ '"/")
                                   '#f)))
                          (values _pre160902_ _ns160903_ _pkg160916_))
                        (if (list? _plist160914_)
                            (let* ((_root160918_
                                    (pgetq 'package: _plist160914_))
                                   (_pkg160922_
                                    (let ((_pkg-path160920_
                                           (if _root160918_
                                               (cons (_string-e160905_
                                                      _root160918_)
                                                     _pkg-path160910_)
                                               _pkg-path160910_)))
                                      (if (not (null? _pkg-path160920_))
                                          (string-join _pkg-path160920_ '"/")
                                          '#f)))
                                   (_ns160929_
                                    (let ((_ns160927_
                                           (let ((_$e160924_ _ns160903_))
                                             (if _$e160924_
                                                 _$e160924_
                                                 (pgetq 'namespace:
                                                        _plist160914_)))))
                                      (if _ns160927_
                                          (_string-e160905_ _ns160927_)
                                          '#f)))
                                   (_pre160934_
                                    (let ((_$e160931_ _pre160902_))
                                      (if _$e160931_
                                          _$e160931_
                                          (pgetq 'prelude: _plist160914_)))))
                              (values _pre160934_ _ns160929_ _pkg160922_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _plist160914_))))
                  (let ((_dir*160937_
                         (path-strip-trailing-directory-separator
                          _dir160909_)))
                    (if (or (string-empty? _dir*160937_)
                            (equal? _dir160909_ _dir*160937_))
                        (values _pre160902_ _ns160903_ '#f)
                        (let ((_xpath160942_
                               (path-strip-directory _dir*160937_))
                              (_xdir160943_ (path-directory _dir*160937_)))
                          (_lp160907_
                           _xdir160943_
                           (cons _xpath160942_ _pkg-path160910_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_path160899_)
        (path-strip-extension (path-strip-directory _path160899_))))
    (define gx#core-module-path->id
      (lambda (_path160897_)
        (string->symbol (gx#core-module-path->namespace _path160897_))))
    (define gx#core-resolve-module-path__%
      (lambda (_stx-path160876_ _rel160877_)
        (let* ((_path160879_ (gx#stx-e _stx-path160876_))
               (_path160881_
                (if (string-empty? (path-extension _path160879_))
                    (string-append _path160879_ '".ss")
                    _path160879_)))
          (gx#core-resolve-path__%
           _path160881_
           (let ((_$e160884_ (gx#stx-source _stx-path160876_)))
             (if _$e160884_ _$e160884_ _rel160877_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_stx-path160890_)
        (let ((_rel160892_ '#f))
          (gx#core-resolve-module-path__% _stx-path160890_ _rel160892_))))
    (define gx#core-resolve-module-path
      (lambda _g167028_
        (let ((_g167027_ (##length _g167028_)))
          (cond ((##fx= _g167027_ 1)
                 (apply (lambda (_stx-path160890_)
                          (gx#core-resolve-module-path__0 _stx-path160890_))
                        _g167028_))
                ((##fx= _g167027_ 2)
                 (apply (lambda (_stx-path160894_ _rel160895_)
                          (gx#core-resolve-module-path__%
                           _stx-path160894_
                           _rel160895_))
                        _g167028_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g167028_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_libpath160762_)
        (let* ((_spath160764_ (symbol->string (gx#stx-e _libpath160762_)))
               (_spath160766_
                (substring _spath160764_ '1 (string-length _spath160764_)))
               (_ext160768_ (path-extension _spath160766_))
               (_ssi160770_
                (if (string-empty? _ext160768_)
                    (string-append _spath160766_ '".ssi")
                    (string-append
                     (path-strip-extension _spath160766_)
                     '".ssi")))
               (_srcs160774_
                (if (string-empty? _ext160768_)
                    (map (lambda (_ext160772_)
                           (string-append _spath160766_ _ext160772_))
                         '(".ss" ".sld" ".scm"))
                    (cons _spath160766_ '()))))
          (let _lp160777_ ((_rest160779_
                            (gx#current-expander-module-library-path)))
            (let* ((_rest160780160789_ _rest160779_)
                   (_E160783160793_
                    (lambda ()
                      (error '"No clause matching" _rest160780160789_))))
              (let ((_K160785160863_
                     (lambda (_rest160804_ _dir160805_)
                       (letrec ((_resolve160807_
                                 (lambda (_ssi160819_ _srcs160820_)
                                   (let ((_compiled-path160822_
                                          (path-expand
                                           _ssi160819_
                                           _dir160805_)))
                                     (if (file-exists? _compiled-path160822_)
                                         (path-normalize _compiled-path160822_)
                                         (let _lpr160824_ ((_rest-src160826_
                                                            _srcs160820_))
                                           (let* ((_rest-src160827160835_
                                                   _rest-src160826_)
                                                  (_else160829160843_
                                                   (lambda ()
                                                     (_lp160777_
                                                      _rest160804_)))
                                                  (_K160831160851_
                                                   (lambda (_rest-src160846_
                                                            _src160847_)
                                                     (let ((_src-path160849_
                                                            (path-expand
                                                             _src160847_
                                                             _dir160805_)))
                                                       (if (file-exists?
                                                            _src-path160849_)
                                                           (path-normalize
                                                            _src-path160849_)
                                                           (_lpr160824_
                                                            _rest-src160846_))))))
                                             (if (##pair? _rest-src160827160835_)
                                                 (let ((_hd160832160854_
                                                        (##car _rest-src160827160835_))
                                                       (_tl160833160856_
                                                        (##cdr _rest-src160827160835_)))
                                                   (let* ((_src160859_
                                                           _hd160832160854_)
                                                          (_rest-src160861_
                                                           _tl160833160856_))
                                                     (_K160831160851_
                                                      _rest-src160861_
                                                      _src160859_)))
                                                 (_else160829160843_)))))))))
                         (let ((_$e160809_
                                (gx#core-library-package-path-prefix
                                 _dir160805_)))
                           (if _$e160809_
                               ((lambda (_prefix160812_)
                                  (if (string-prefix?
                                       _prefix160812_
                                       _spath160766_)
                                      (let ((_ssi160816_
                                             (substring
                                              _ssi160770_
                                              (string-length _prefix160812_)
                                              (string-length _ssi160770_)))
                                            (_srcs160817_
                                             (map (lambda (_src160814_)
                                                    (substring
                                                     _src160814_
                                                     (string-length
                                                      _prefix160812_)
                                                     (string-length
                                                      _src160814_)))
                                                  _srcs160774_)))
                                        (_resolve160807_
                                         _ssi160816_
                                         _srcs160817_))
                                      (_lp160777_ _rest160804_)))
                                _$e160809_)
                               (_resolve160807_ _ssi160770_ _srcs160774_))))))
                    (_K160784160798_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"Cannot find library module"
                        _libpath160762_))))
                (let ((_try-match160782160801_
                       (lambda ()
                         (if (##null? _rest160780160789_)
                             (_K160784160798_)
                             (_E160783160793_)))))
                  (if (##pair? _rest160780160789_)
                      (let ((_tl160787160868_ (##cdr _rest160780160789_))
                            (_hd160786160866_ (##car _rest160780160789_)))
                        (let ((_dir160871_ _hd160786160866_)
                              (_rest160873_ _tl160787160868_))
                          (_K160785160863_ _rest160873_ _dir160871_)))
                      (_try-match160782160801_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_modpath160735_)
        (letrec ((_resolve160737_
                  (lambda (_path160754_ _base160755_)
                    (let ((_$e160757_ (string-rindex _base160755_ '#\/)))
                      (if _$e160757_
                          ((lambda (_idx160760_)
                             (gx#core-resolve-library-module-path
                              (string->symbol
                               (string-append
                                '":"
                                (substring _base160755_ '0 _idx160760_)
                                '"/"
                                _path160754_))))
                           _$e160757_)
                          (gx#core-resolve-library-module-path
                           (string->symbol
                            (string-append '":" _path160754_))))))))
          (let ((_spath160739_ (symbol->string (gx#stx-e _modpath160735_)))
                (_mod160740_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _mod160740_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"Cannot resolve relative module path; not in module context"
                 _modpath160735_))
            (let ((_mpath160742_
                   (symbol->string
                    (##structure-ref
                     _mod160740_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _lp160744_ ((_spath160746_ _spath160739_)
                               (_mpath160747_ _mpath160742_))
                (if (string-prefix? '"../" _spath160746_)
                    (let ((_$e160749_ (string-rindex _mpath160747_ '#\/)))
                      (if _$e160749_
                          ((lambda (_idx160752_)
                             (_lp160744_
                              (substring
                               _spath160746_
                               '3
                               (string-length _spath160746_))
                              (substring _mpath160747_ '0 _idx160752_)))
                           _$e160749_)
                          (gx#raise-syntax-error
                           '#f
                           '"Cannot resolve relative module path; illegal traversal"
                           _modpath160735_)))
                    (if (string-prefix? '"./" _spath160746_)
                        (_lp160744_
                         (substring
                          _spath160746_
                          '2
                          (string-length _spath160746_))
                         _mpath160747_)
                        (_resolve160737_ _spath160746_ _mpath160747_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_dir160728_)
        (let ((_$e160730_
               (pgetq 'package:
                      (gx#core-library-package-plist__0 _dir160728_))))
          (if _$e160730_
              ((lambda (_pkg160733_)
                 (string-append (symbol->string _pkg160733_) '"/"))
               _$e160730_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_dir160700_ _exists?160701_)
        (let* ((_cache160703_ (gx#core-library-package-cache))
               (_$e160705_ (table-ref _cache160703_ _dir160700_ '#f)))
          (if _$e160705_
              (values _$e160705_)
              (let* ((_gerbil.pkg160708_
                      (path-expand '"gerbil.pkg" _dir160700_))
                     (_plist160715_
                      (if (or _exists?160701_
                              (file-exists? _gerbil.pkg160708_))
                          (let ((_e160713_
                                 (gx#call-with-input-source-file
                                  _gerbil.pkg160708_
                                  read)))
                            (if (eof-object? _e160713_)
                                '()
                                (if (list? _e160713_)
                                    _e160713_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _gerbil.pkg160708_
                                     _e160713_))))
                          '())))
                (table-set! _cache160703_ _dir160700_ _plist160715_)
                _plist160715_)))))
    (define gx#core-library-package-plist__0
      (lambda (_dir160721_)
        (let ((_exists?160723_ '#f))
          (gx#core-library-package-plist__% _dir160721_ _exists?160723_))))
    (define gx#core-library-package-plist
      (lambda _g167030_
        (let ((_g167029_ (##length _g167030_)))
          (cond ((##fx= _g167029_ 1)
                 (apply (lambda (_dir160721_)
                          (gx#core-library-package-plist__0 _dir160721_))
                        _g167030_))
                ((##fx= _g167029_ 2)
                 (apply (lambda (_dir160725_ _exists?160726_)
                          (gx#core-library-package-plist__%
                           _dir160725_
                           _exists?160726_))
                        _g167030_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g167030_))))))
    (define gx#core-library-package-cache
      (lambda ()
        (let ((_$e160694_ (gx#current-expander-module-library-package-cache)))
          (if _$e160694_
              (values _$e160694_)
              (let ((_cache160697_ (make-table)))
                (gx#current-expander-module-library-package-cache
                 _cache160697_)
                _cache160697_)))))
    (define gx#core-library-module-path?
      (lambda (_stx160691_) (gx#core-special-module-path? _stx160691_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_stx160689_) (gx#core-special-module-path? _stx160689_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_stx160684_ _char160685_)
        (if (gx#identifier? _stx160684_)
            (if (interned-symbol? (gx#stx-e _stx160684_))
                (let ((_str160687_ (symbol->string (gx#stx-e _stx160684_))))
                  (if (fx> (string-length _str160687_) '1)
                      (eq? (string-ref _str160687_ '0) _char160685_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_stx160678_)
        (gx#core-bound-identifier?__%
         _stx160678_
         (lambda (_g160679160681_)
           (gx#expander-binding?__% _g160679160681_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_stx160672_)
        (gx#core-bound-identifier?__%
         _stx160672_
         (lambda (_g160673160675_)
           (gx#expander-binding?__% _g160673160675_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_stx160659_)
        (letrec ((_module-prelude?160661_
                  (lambda (_e160667_)
                    (let ((_$e160669_
                           (##structure-instance-of?
                            _e160667_
                            'gx#module-context::t)))
                      (if _$e160669_
                          _$e160669_
                          (##structure-instance-of?
                           _e160667_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _stx160659_
           (lambda (_g160662160664_)
             (gx#expander-binding?__%
              _g160662160664_
              _module-prelude?160661_))))))
    (define gx#core-bind-import!__%
      (lambda (_in160589_ _ctx160590_ _force-weak?160591_)
        (let* ((_in160592160601_ _in160589_)
               (_E160594160605_
                (lambda () (error '"No clause matching" _in160592160601_)))
               (_K160595160618_
                (lambda (_weak?160608_ _phi160609_ _key160610_ _source160611_)
                  (gx#core-bind!__%
                   _key160610_
                   (let ((_e160613_
                          (gx#core-resolve-module-export _source160611_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref
                       _e160613_
                       '1
                       gx#binding::t
                       '#f)
                      _key160610_
                      _phi160609_
                      _e160613_
                      (##unchecked-structure-ref
                       _source160611_
                       '1
                       gx#module-export::t
                       '#f)
                      (let ((_$e160615_ _force-weak?160591_))
                        (if _$e160615_ _$e160615_ _weak?160608_))))
                   gx#core-context-rebind?
                   _phi160609_
                   _ctx160590_))))
          (if (##structure-direct-instance-of?
               _in160592160601_
               'gx#module-import::t)
              (let* ((_e160596160621_
                      (##unchecked-structure-ref
                       _in160592160601_
                       '1
                       gx#module-import::t
                       '#f))
                     (_source160624_ _e160596160621_)
                     (_e160597160626_
                      (##unchecked-structure-ref
                       _in160592160601_
                       '2
                       gx#module-import::t
                       '#f))
                     (_key160629_ _e160597160626_)
                     (_e160598160631_
                      (##unchecked-structure-ref
                       _in160592160601_
                       '3
                       gx#module-import::t
                       '#f))
                     (_phi160634_ _e160598160631_)
                     (_e160599160636_
                      (##unchecked-structure-ref
                       _in160592160601_
                       '4
                       gx#module-import::t
                       '#f))
                     (_weak?160639_ _e160599160636_))
                (_K160595160618_
                 _weak?160639_
                 _phi160634_
                 _key160629_
                 _source160624_))
              (_E160594160605_)))))
    (define gx#core-bind-import!__0
      (lambda (_in160644_)
        (let* ((_ctx160646_ (gx#current-expander-context))
               (_force-weak?160648_ '#f))
          (gx#core-bind-import!__%
           _in160644_
           _ctx160646_
           _force-weak?160648_))))
    (define gx#core-bind-import!__1
      (lambda (_in160650_ _ctx160651_)
        (let ((_force-weak?160653_ '#f))
          (gx#core-bind-import!__%
           _in160650_
           _ctx160651_
           _force-weak?160653_))))
    (define gx#core-bind-import!
      (lambda _g167032_
        (let ((_g167031_ (##length _g167032_)))
          (cond ((##fx= _g167031_ 1)
                 (apply (lambda (_in160644_)
                          (gx#core-bind-import!__0 _in160644_))
                        _g167032_))
                ((##fx= _g167031_ 2)
                 (apply (lambda (_in160650_ _ctx160651_)
                          (gx#core-bind-import!__1 _in160650_ _ctx160651_))
                        _g167032_))
                ((##fx= _g167031_ 3)
                 (apply (lambda (_in160655_ _ctx160656_ _force-weak?160657_)
                          (gx#core-bind-import!__%
                           _in160655_
                           _ctx160656_
                           _force-weak?160657_))
                        _g167032_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g167032_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_in160575_ _ctx160576_)
        (gx#core-bind-import!__% _in160575_ _ctx160576_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_in160581_)
        (let ((_ctx160583_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _in160581_ _ctx160583_))))
    (define gx#core-bind-weak-import!
      (lambda _g167034_
        (let ((_g167033_ (##length _g167034_)))
          (cond ((##fx= _g167033_ 1)
                 (apply (lambda (_in160581_)
                          (gx#core-bind-weak-import!__0 _in160581_))
                        _g167034_))
                ((##fx= _g167033_ 2)
                 (apply (lambda (_in160585_ _ctx160586_)
                          (gx#core-bind-weak-import!__%
                           _in160585_
                           _ctx160586_))
                        _g167034_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g167034_))))))
    (define gx#core-resolve-module-export
      (lambda (_out160466_)
        (letrec ((_subst160468_
                  (lambda (_key160514_)
                    (let* ((_key160515160523_ _key160514_)
                           (_else160517160531_ (lambda () _key160514_))
                           (_K160519160562_
                            (lambda (_mark160534_ _id160535_)
                              (let* ((_mark160536160542_ _mark160534_)
                                     (_E160538160546_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark160536160542_)))
                                     (_K160539160554_
                                      (lambda (_subst160549_)
                                        (let ((_$e160551_
                                               (if _subst160549_
                                                   (table-ref
                                                    _subst160549_
                                                    _id160535_
                                                    '#f)
                                                   '#f)))
                                          (if _$e160551_
                                              _$e160551_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _key160514_))))))
                                (if (##structure-instance-of?
                                     _mark160536160542_
                                     'gx#expander-mark::t)
                                    (let* ((_e160540160557_
                                            (##unchecked-structure-ref
                                             _mark160536160542_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst160560_ _e160540160557_))
                                      (_K160539160554_ _subst160560_))
                                    (_E160538160546_))))))
                      (if (##pair? _key160515160523_)
                          (let ((_hd160520160565_ (##car _key160515160523_))
                                (_tl160521160567_ (##cdr _key160515160523_)))
                            (let* ((_id160570_ _hd160520160565_)
                                   (_mark160572_ _tl160521160567_))
                              (_K160519160562_ _mark160572_ _id160570_)))
                          (_else160517160531_))))))
          (let* ((_out160469160479_ _out160466_)
                 (_E160471160483_
                  (lambda () (error '"No clause matching" _out160469160479_)))
                 (_K160472160490_
                  (lambda (_phi160486_ _key160487_ _ctx160488_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _ctx160488_ _phi160486_)
                     (_subst160468_ _key160487_)))))
            (if (##structure-direct-instance-of?
                 _out160469160479_
                 'gx#module-export::t)
                (let* ((_e160473160493_
                        (##unchecked-structure-ref
                         _out160469160479_
                         '1
                         gx#module-export::t
                         '#f))
                       (_ctx160496_ _e160473160493_)
                       (_e160474160498_
                        (##unchecked-structure-ref
                         _out160469160479_
                         '2
                         gx#module-export::t
                         '#f))
                       (_key160501_ _e160474160498_)
                       (_e160475160503_
                        (##unchecked-structure-ref
                         _out160469160479_
                         '3
                         gx#module-export::t
                         '#f))
                       (_phi160506_ _e160475160503_)
                       (_e160476160508_
                        (##unchecked-structure-ref
                         _out160469160479_
                         '4
                         gx#module-export::t
                         '#f))
                       (_e160477160511_
                        (##unchecked-structure-ref
                         _out160469160479_
                         '5
                         gx#module-export::t
                         '#f)))
                  (_K160472160490_ _phi160506_ _key160501_ _ctx160496_))
                (_E160471160483_))))))
    (define gx#core-module-export->import__%
      (lambda (_out160391_ _rename160392_ _dphi160393_)
        (let* ((_out160394160404_ _out160391_)
               (_E160396160408_
                (lambda () (error '"No clause matching" _out160394160404_)))
               (_K160397160420_
                (lambda (_weak?160411_
                         _name160412_
                         _phi160413_
                         _key160414_
                         _ctx160415_)
                  (##structure
                   gx#module-import::t
                   _out160391_
                   (let ((_$e160417_ _rename160392_))
                     (if _$e160417_ _$e160417_ _name160412_))
                   (fx+ _phi160413_ _dphi160393_)
                   _weak?160411_))))
          (if (##structure-direct-instance-of?
               _out160394160404_
               'gx#module-export::t)
              (let* ((_e160398160423_
                      (##unchecked-structure-ref
                       _out160394160404_
                       '1
                       gx#module-export::t
                       '#f))
                     (_ctx160426_ _e160398160423_)
                     (_e160399160428_
                      (##unchecked-structure-ref
                       _out160394160404_
                       '2
                       gx#module-export::t
                       '#f))
                     (_key160431_ _e160399160428_)
                     (_e160400160433_
                      (##unchecked-structure-ref
                       _out160394160404_
                       '3
                       gx#module-export::t
                       '#f))
                     (_phi160436_ _e160400160433_)
                     (_e160401160438_
                      (##unchecked-structure-ref
                       _out160394160404_
                       '4
                       gx#module-export::t
                       '#f))
                     (_name160441_ _e160401160438_)
                     (_e160402160443_
                      (##unchecked-structure-ref
                       _out160394160404_
                       '5
                       gx#module-export::t
                       '#f))
                     (_weak?160446_ _e160402160443_))
                (_K160397160420_
                 _weak?160446_
                 _name160441_
                 _phi160436_
                 _key160431_
                 _ctx160426_))
              (_E160396160408_)))))
    (define gx#core-module-export->import__0
      (lambda (_out160451_)
        (let* ((_rename160453_ '#f) (_dphi160455_ '0))
          (gx#core-module-export->import__%
           _out160451_
           _rename160453_
           _dphi160455_))))
    (define gx#core-module-export->import__1
      (lambda (_out160457_ _rename160458_)
        (let ((_dphi160460_ '0))
          (gx#core-module-export->import__%
           _out160457_
           _rename160458_
           _dphi160460_))))
    (define gx#core-module-export->import
      (lambda _g167036_
        (let ((_g167035_ (##length _g167036_)))
          (cond ((##fx= _g167035_ 1)
                 (apply (lambda (_out160451_)
                          (gx#core-module-export->import__0 _out160451_))
                        _g167036_))
                ((##fx= _g167035_ 2)
                 (apply (lambda (_out160457_ _rename160458_)
                          (gx#core-module-export->import__1
                           _out160457_
                           _rename160458_))
                        _g167036_))
                ((##fx= _g167035_ 3)
                 (apply (lambda (_out160462_ _rename160463_ _dphi160464_)
                          (gx#core-module-export->import__%
                           _out160462_
                           _rename160463_
                           _dphi160464_))
                        _g167036_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g167036_))))))
    (define gx#core-expand-module%
      (lambda (_stx160319_)
        (letrec ((_make-context160321_
                  (lambda (_id160372_)
                    (let* ((_super160374_ (gx#current-expander-context))
                           (_bind-id160376_ (gx#stx-e _id160372_))
                           (_mod-id160378_
                            (if (##structure-instance-of?
                                 _super160374_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##structure-ref
                                  _super160374_
                                  '1
                                  gx#expander-context::t
                                  '#f)
                                 '"$"
                                 _bind-id160376_)
                                _bind-id160376_))
                           (_ns160380_ (symbol->string _mod-id160378_))
                           (_path160387_
                            (if (##structure-instance-of?
                                 _super160374_
                                 'gx#module-context::t)
                                (let ((_path160382_
                                       (##unchecked-structure-ref
                                        _super160374_
                                        '7
                                        gx#module-context::t
                                        '#f)))
                                  (if (or (pair? _path160382_)
                                          (null? _path160382_))
                                      (cons _bind-id160376_ _path160382_)
                                      (if (not _path160382_)
                                          _bind-id160376_
                                          (cons _bind-id160376_
                                                (cons _path160382_ '())))))
                                _bind-id160376_)))
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
                         _mod-id160378_
                         _super160374_
                         _ns160380_
                         _path160387_)
                        __obj167012)))))
          (let* ((_e160322160332_ _stx160319_)
                 (_E160324160336_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e160322160332_)))
                 (_E160323160368_
                  (lambda ()
                    (if (gx#stx-pair? _e160322160332_)
                        (let ((_e160325160340_ (gx#syntax-e _e160322160332_)))
                          (let ((_hd160326160343_ (##car _e160325160340_))
                                (_tl160327160345_ (##cdr _e160325160340_)))
                            (if (gx#stx-pair? _tl160327160345_)
                                (let ((_e160328160348_
                                       (gx#syntax-e _tl160327160345_)))
                                  (let ((_hd160329160351_
                                         (##car _e160328160348_))
                                        (_tl160330160353_
                                         (##cdr _e160328160348_)))
                                    (let* ((_id160356_ _hd160329160351_)
                                           (_body160358_ _tl160330160353_))
                                      (if (and (gx#identifier? _id160356_)
                                               (gx#stx-list? _body160358_))
                                          (let* ((_ctx160360_
                                                  (_make-context160321_
                                                   _id160356_))
                                                 (_body160362_
                                                  (gx#core-expand-module-begin
                                                   _body160358_
                                                   _ctx160360_))
                                                 (_body160364_
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body160362_)
                                                   (gx#stx-source
                                                    _stx160319_))))
                                            (##unchecked-structure-set!
                                             _ctx160360_
                                             (make-promise
                                              (lambda ()
                                                (gx#eval-syntax*
                                                 _body160364_)))
                                             '10
                                             gx#module-context::t
                                             '#f)
                                            (##unchecked-structure-set!
                                             _ctx160360_
                                             _body160364_
                                             '11
                                             gx#module-context::t
                                             '#f)
                                            (gx#core-bind-syntax!__0
                                             _id160356_
                                             _ctx160360_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-list
                                              '%#module
                                              (gx#core-quote-syntax__0
                                               _id160356_)
                                              _body160364_)
                                             (gx#stx-source _stx160319_)))
                                          (_E160324160336_)))))
                                (_E160324160336_))))
                        (_E160324160336_)))))
            (_E160323160368_)))))
    (define gx#core-expand-module-begin
      (lambda (_body160285_ _ctx160286_)
        (call-with-parameters
         (lambda ()
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_stx160289_
                   (gx#core-expand-head (cons '%%begin-module _body160285_)))
                  (_e160290160297_ _stx160289_)
                  (_E160292160301_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _stx160289_)))
                  (_E160291160315_
                   (lambda ()
                     (if (gx#stx-pair? _e160290160297_)
                         (let ((_e160293160305_ (gx#syntax-e _e160290160297_)))
                           (let ((_hd160294160308_ (##car _e160293160305_))
                                 (_tl160295160310_ (##cdr _e160293160305_)))
                             (if (and (gx#identifier? _hd160294160308_)
                                      (gx#core-identifier=?
                                       _hd160294160308_
                                       '%#begin-module))
                                 (let ((_body160313_ _tl160295160310_))
                                   (if '#t
                                       (if (gx#sealed-syntax? _stx160289_)
                                           _body160313_
                                           (gx#core-expand-module-body
                                            _body160313_))
                                       (_E160292160301_)))
                                 (_E160292160301_))))
                         (_E160292160301_)))))
             (_E160291160315_)))
         gx#current-expander-context
         _ctx160286_
         gx#current-expander-phi
         '0)))
    (define gx#core-expand-module-body
      (lambda (_body160081_)
        (letrec ((_expand-special160083_
                  (lambda (_hd160212_ _K160213_ _rest160214_ _r160215_)
                    (let* ((_e160216160233_ _hd160212_)
                           (_E160228160237_
                            (lambda ()
                              (_K160213_
                               _rest160214_
                               (cons (gx#core-expand-top _hd160212_)
                                     _r160215_))))
                           (_E160218160249_
                            (lambda ()
                              (if (gx#stx-pair? _e160216160233_)
                                  (let ((_e160229160241_
                                         (gx#syntax-e _e160216160233_)))
                                    (let ((_hd160230160244_
                                           (##car _e160229160241_))
                                          (_tl160231160246_
                                           (##cdr _e160229160241_)))
                                      (if (and (gx#identifier?
                                                _hd160230160244_)
                                               (gx#core-identifier=?
                                                _hd160230160244_
                                                '%#export))
                                          (if '#t
                                              (_K160213_
                                               _rest160214_
                                               (cons _hd160212_ _r160215_))
                                              (_E160228160237_))
                                          (_E160228160237_))))
                                  (_E160228160237_))))
                           (_E160217160281_
                            (lambda ()
                              (if (gx#stx-pair? _e160216160233_)
                                  (let ((_e160219160253_
                                         (gx#syntax-e _e160216160233_)))
                                    (let ((_hd160220160256_
                                           (##car _e160219160253_))
                                          (_tl160221160258_
                                           (##cdr _e160219160253_)))
                                      (if (and (gx#identifier?
                                                _hd160220160256_)
                                               (gx#core-identifier=?
                                                _hd160220160256_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl160221160258_)
                                              (let ((_e160222160261_
                                                     (gx#syntax-e
                                                      _tl160221160258_)))
                                                (let ((_hd160223160264_
                                                       (##car _e160222160261_))
                                                      (_tl160224160266_
                                                       (##cdr _e160222160261_)))
                                                  (let ((_hd-bind160269_
                                                         _hd160223160264_))
                                                    (if (gx#stx-pair?
                                                         _tl160224160266_)
                                                        (let ((_e160225160271_
                                                               (gx#syntax-e
                                                                _tl160224160266_)))
                                                          (let ((_hd160226160274_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e160225160271_))
                        (_tl160227160276_ (##cdr _e160225160271_)))
                    (let ((_expr160279_ _hd160226160274_))
                      (if (gx#stx-null? _tl160227160276_)
                          (if (gx#core-bind-values? _hd-bind160269_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind160269_)
                                (_K160213_
                                 _rest160214_
                                 (cons _hd160212_ _r160215_)))
                              (_E160218160249_))
                          (_E160218160249_)))))
                (_E160218160249_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E160218160249_))
                                          (_E160218160249_))))
                                  (_E160218160249_)))))
                      (_E160217160281_))))
                 (_expand-body160084_
                  (lambda (_rbody160086_)
                    (let _lp160088_ ((_rest160090_ _rbody160086_)
                                     (_body160091_ '()))
                      (let* ((_rest160092160100_ _rest160090_)
                             (_else160094160108_ (lambda () _body160091_))
                             (_K160096160200_
                              (lambda (_rest160111_ _hd160112_)
                                (let* ((_e160113160134_ _hd160112_)
                                       (_E160129160138_
                                        (lambda ()
                                          (_lp160088_
                                           _rest160111_
                                           (cons (gx#core-expand-expression
                                                  _hd160112_)
                                                 _body160091_))))
                                       (_E160125160152_
                                        (lambda ()
                                          (if (gx#stx-pair? _e160113160134_)
                                              (let ((_e160130160142_
                                                     (gx#syntax-e
                                                      _e160113160134_)))
                                                (let ((_hd160131160145_
                                                       (##car _e160130160142_))
                                                      (_tl160132160147_
                                                       (##cdr _e160130160142_)))
                                                  (let ((_form160150_
                                                         _hd160131160145_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _form160150_
                                                         gx#special-form-binding?)
                                                        (_lp160088_
                                                         _rest160111_
                                                         (cons _hd160112_
                                                               _body160091_))
                                                        (_E160129160138_)))))
                                              (_E160129160138_))))
                                       (_E160115160164_
                                        (lambda ()
                                          (if (gx#stx-pair? _e160113160134_)
                                              (let ((_e160126160156_
                                                     (gx#syntax-e
                                                      _e160113160134_)))
                                                (let ((_hd160127160159_
                                                       (##car _e160126160156_))
                                                      (_tl160128160161_
                                                       (##cdr _e160126160156_)))
                                                  (if (and (gx#identifier?
                                                            _hd160127160159_)
                                                           (gx#core-identifier=?
                                                            _hd160127160159_
                                                            '%#export))
                                                      (if '#t
                                                          (_lp160088_
                                                           _rest160111_
                                                           (cons (gx#core-expand-export%__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd160112_)
                         _body160091_))
                  (_E160125160152_))
              (_E160125160152_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E160125160152_))))
                                       (_E160114160196_
                                        (lambda ()
                                          (if (gx#stx-pair? _e160113160134_)
                                              (let ((_e160116160168_
                                                     (gx#syntax-e
                                                      _e160113160134_)))
                                                (let ((_hd160117160171_
                                                       (##car _e160116160168_))
                                                      (_tl160118160173_
                                                       (##cdr _e160116160168_)))
                                                  (if (and (gx#identifier?
                                                            _hd160117160171_)
                                                           (gx#core-identifier=?
                                                            _hd160117160171_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl160118160173_)
                                                          (let ((_e160119160176_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl160118160173_)))
                    (let ((_hd160120160179_ (##car _e160119160176_))
                          (_tl160121160181_ (##cdr _e160119160176_)))
                      (let ((_hd-bind160184_ _hd160120160179_))
                        (if (gx#stx-pair? _tl160121160181_)
                            (let ((_e160122160186_
                                   (gx#syntax-e _tl160121160181_)))
                              (let ((_hd160123160189_ (##car _e160122160186_))
                                    (_tl160124160191_ (##cdr _e160122160186_)))
                                (let ((_expr160194_ _hd160123160189_))
                                  (if (gx#stx-null? _tl160124160191_)
                                      (if '#t
                                          (_lp160088_
                                           _rest160111_
                                           (cons (gx#core-quote-syntax__1
                                                  (gx#core-list
                                                   '%#define-values
                                                   (gx#core-quote-bind-values
                                                    _hd-bind160184_)
                                                   (gx#core-expand-expression
                                                    _expr160194_))
                                                  (gx#stx-source _hd160112_))
                                                 _body160091_))
                                          (_E160115160164_))
                                      (_E160115160164_)))))
                            (_E160115160164_)))))
                  (_E160115160164_))
              (_E160115160164_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E160115160164_)))))
                                  (_E160114160196_)))))
                        (if (##pair? _rest160092160100_)
                            (let ((_hd160097160203_ (##car _rest160092160100_))
                                  (_tl160098160205_
                                   (##cdr _rest160092160100_)))
                              (let* ((_hd160208_ _hd160097160203_)
                                     (_rest160210_ _tl160098160205_))
                                (_K160096160200_ _rest160210_ _hd160208_)))
                            (_else160094160108_)))))))
          (_expand-body160084_
           (gx#core-expand-block__%
            (cons '%#begin-module _body160081_)
            _expand-special160083_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_stx159924_
               _expanded?159925_
               _method159926_
               _current-phi159927_
               _expand1159928_)
        (letrec ((_K159930_
                  (lambda (_rest160048_ _r160049_)
                    (let* ((_e160050160057_ _rest160048_)
                           (_E160052160061_ (lambda () _r160049_))
                           (_E160051160077_
                            (lambda ()
                              (if (gx#stx-pair? _e160050160057_)
                                  (let ((_e160053160065_
                                         (gx#syntax-e _e160050160057_)))
                                    (let ((_hd160054160068_
                                           (##car _e160053160065_))
                                          (_tl160055160070_
                                           (##cdr _e160053160065_)))
                                      (let* ((_hd160073_ _hd160054160068_)
                                             (_rest160075_ _tl160055160070_))
                                        (if '#t
                                            (_step159931_
                                             _hd160073_
                                             _rest160075_
                                             _r160049_)
                                            (_E160052160061_)))))
                                  (_E160052160061_)))))
                      (_E160051160077_))))
                 (_step159931_
                  (lambda (_hd159962_ _rest159963_ _r159964_)
                    (let* ((_e159965159983_ _hd159962_)
                           (_E159978159987_
                            (lambda ()
                              (if (_expanded?159925_ (gx#stx-e _hd159962_))
                                  (_K159930_
                                   _rest159963_
                                   (cons (gx#stx-e _hd159962_) _r159964_))
                                  (_expand1159928_
                                   _hd159962_
                                   _K159930_
                                   _rest159963_
                                   _r159964_))))
                           (_E159974160003_
                            (lambda ()
                              (if (gx#stx-pair? _e159965159983_)
                                  (let ((_e159979159991_
                                         (gx#syntax-e _e159965159983_)))
                                    (let ((_hd159980159994_
                                           (##car _e159979159991_))
                                          (_tl159981159996_
                                           (##cdr _e159979159991_)))
                                      (let* ((_macro159999_ _hd159980159994_)
                                             (_body160001_ _tl159981159996_))
                                        (if (gx#core-bound-identifier?__%
                                             _macro159999_
                                             gx#syntax-binding?)
                                            (_K159930_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _macro159999_)
                                                    _hd159962_
                                                    _method159926_)
                                                   _rest159963_)
                                             _r159964_)
                                            (_E159978159987_)))))
                                  (_E159978159987_))))
                           (_E159967160017_
                            (lambda ()
                              (if (gx#stx-pair? _e159965159983_)
                                  (let ((_e159975160007_
                                         (gx#syntax-e _e159965159983_)))
                                    (let ((_hd159976160010_
                                           (##car _e159975160007_))
                                          (_tl159977160012_
                                           (##cdr _e159975160007_)))
                                      (if (eq? (gx#stx-e _hd159976160010_)
                                               'begin:)
                                          (let ((_body160015_
                                                 _tl159977160012_))
                                            (if '#t
                                                (_K159930_
                                                 (gx#stx-foldr
                                                  cons
                                                  _rest159963_
                                                  _body160015_)
                                                 _r159964_)
                                                (_E159974160003_)))
                                          (_E159974160003_))))
                                  (_E159974160003_))))
                           (_E159966160044_
                            (lambda ()
                              (if (gx#stx-pair? _e159965159983_)
                                  (let ((_e159968160021_
                                         (gx#syntax-e _e159965159983_)))
                                    (let ((_hd159969160024_
                                           (##car _e159968160021_))
                                          (_tl159970160026_
                                           (##cdr _e159968160021_)))
                                      (if (eq? (gx#stx-e _hd159969160024_)
                                               'phi:)
                                          (if (gx#stx-pair? _tl159970160026_)
                                              (let ((_e159971160029_
                                                     (gx#syntax-e
                                                      _tl159970160026_)))
                                                (let ((_hd159972160032_
                                                       (##car _e159971160029_))
                                                      (_tl159973160034_
                                                       (##cdr _e159971160029_)))
                                                  (let* ((_dphi160037_
                                                          _hd159972160032_)
                                                         (_body160039_
                                                          _tl159973160034_))
                                                    (if (gx#stx-fixnum?
                                                         _dphi160037_)
                                                        (let ((_rbody160042_
                                                               (call-with-parameters
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_K159930_ _body160039_ '()))
                        _current-phi159927_
                        (fx+ (gx#stx-e _dphi160037_) (_current-phi159927_)))))
                  (_K159930_
                   _rest159963_
                   (foldr1 cons _r159964_ _rbody160042_)))
                (_E159967160017_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E159967160017_))
                                          (_E159967160017_))))
                                  (_E159967160017_)))))
                      (_E159966160044_)))))
          (let* ((_e159932159939_ _stx159924_)
                 (_E159934159943_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e159932159939_)))
                 (_E159933159958_
                  (lambda ()
                    (if (gx#stx-pair? _e159932159939_)
                        (let ((_e159935159947_ (gx#syntax-e _e159932159939_)))
                          (let ((_hd159936159950_ (##car _e159935159947_))
                                (_tl159937159952_ (##cdr _e159935159947_)))
                            (let ((_body159955_ _tl159937159952_))
                              (if '#t
                                  (if (_current-phi159927_)
                                      (_K159930_ _body159955_ '())
                                      (call-with-parameters
                                       (lambda () (_K159930_ _body159955_ '()))
                                       _current-phi159927_
                                       (gx#current-expander-phi)))
                                  (_E159934159943_)))))
                        (_E159934159943_)))))
            (_E159933159958_)))))
    (define gx#core-expand-import%__%
      (lambda (_stx159591_ _internal-expand?159592_)
        (letrec ((_expand1159594_
                  (lambda (_hd159904_ _K159905_ _rest159906_ _r159907_)
                    (if (gx#core-bound-module? _hd159904_)
                        (_import1159595_
                         (gx#syntax-local-e__0 _hd159904_)
                         _K159905_
                         _rest159906_
                         _r159907_)
                        (if (gx#core-library-module-path? _hd159904_)
                            (_import1159595_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _hd159904_))
                             _K159905_
                             _rest159906_
                             _r159907_)
                            (if (gx#core-library-relative-module-path?
                                 _hd159904_)
                                (_import1159595_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _hd159904_))
                                 _K159905_
                                 _rest159906_
                                 _r159907_)
                                (let ((_e159909_ (gx#stx-e _hd159904_)))
                                  (if (pair? _e159909_)
                                      (let ((_$e159911_
                                             (gx#stx-e (car _e159909_))))
                                        (if (eq? 'spec: _$e159911_)
                                            (_import-spec159598_
                                             _hd159904_
                                             _K159905_
                                             _rest159906_
                                             _r159907_)
                                            (if (eq? 'in: _$e159911_)
                                                (_import-submodule159596_
                                                 _hd159904_
                                                 _K159905_
                                                 _rest159906_
                                                 _r159907_)
                                                (if (eq? 'runtime: _$e159911_)
                                                    (_import-runtime159597_
                                                     _hd159904_
                                                     _K159905_
                                                     _rest159906_
                                                     _r159907_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _stx159591_
                                                     _hd159904_)))))
                                      (if (string? _e159909_)
                                          (_import1159595_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _hd159904_
                                             (gx#stx-source _stx159591_)))
                                           _K159905_
                                           _rest159906_
                                           _r159907_)
                                          (if (##structure-instance-of?
                                               _e159909_
                                               'gx#module-context::t)
                                              (_K159905_
                                               _rest159906_
                                               (cons _e159909_ _r159907_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _stx159591_
                                               _hd159904_))))))))))
                 (_import1159595_
                  (lambda (_ctx159893_ _K159894_ _rest159895_ _r159896_)
                    (let ((_dphi159898_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_K159894_
                       _rest159895_
                       (cons (##structure
                              gx#import-set::t
                              _ctx159893_
                              _dphi159898_
                              (map (lambda (_g159899159901_)
                                     (gx#core-module-export->import__%
                                      _g159899159901_
                                      '#f
                                      _dphi159898_))
                                   (##unchecked-structure-ref
                                    _ctx159893_
                                    '9
                                    gx#module-context::t
                                    '#f)))
                             _r159896_)))))
                 (_import-submodule159596_
                  (lambda (_hd159860_ _K159861_ _rest159862_ _r159863_)
                    (let* ((_e159864159871_ _hd159860_)
                           (_E159866159875_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e159864159871_)))
                           (_E159865159889_
                            (lambda ()
                              (if (gx#stx-pair? _e159864159871_)
                                  (let ((_e159867159879_
                                         (gx#syntax-e _e159864159871_)))
                                    (let ((_hd159868159882_
                                           (##car _e159867159879_))
                                          (_tl159869159884_
                                           (##cdr _e159867159879_)))
                                      (let ((_spath159887_ _tl159869159884_))
                                        (if '#t
                                            (_import1159595_
                                             (_import-spec-source159599_
                                              _spath159887_)
                                             _K159861_
                                             _rest159862_
                                             _r159863_)
                                            (_E159866159875_)))))
                                  (_E159866159875_)))))
                      (_E159865159889_))))
                 (_import-runtime159597_
                  (lambda (_hd159827_ _K159828_ _rest159829_ _r159830_)
                    (let* ((_e159831159838_ _hd159827_)
                           (_E159833159842_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e159831159838_)))
                           (_E159832159856_
                            (lambda ()
                              (if (gx#stx-pair? _e159831159838_)
                                  (let ((_e159834159846_
                                         (gx#syntax-e _e159831159838_)))
                                    (let ((_hd159835159849_
                                           (##car _e159834159846_))
                                          (_tl159836159851_
                                           (##cdr _e159834159846_)))
                                      (let ((_spath159854_ _tl159836159851_))
                                        (if '#t
                                            (_K159828_
                                             _rest159829_
                                             (cons (_import-spec-source159599_
                                                    _spath159854_)
                                                   _r159830_))
                                            (_E159833159842_)))))
                                  (_E159833159842_)))))
                      (_E159832159856_))))
                 (_import-spec159598_
                  (lambda (_hd159666_ _K159667_ _rest159668_ _r159669_)
                    (let* ((_e159670159687_ _hd159666_)
                           (_E159679159691_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e159670159687_)))
                           (_E159672159801_
                            (lambda ()
                              (if (gx#stx-pair? _e159670159687_)
                                  (let ((_e159680159695_
                                         (gx#syntax-e _e159670159687_)))
                                    (let ((_hd159681159698_
                                           (##car _e159680159695_))
                                          (_tl159682159700_
                                           (##cdr _e159680159695_)))
                                      (if (gx#stx-pair? _tl159682159700_)
                                          (let ((_e159683159703_
                                                 (gx#syntax-e
                                                  _tl159682159700_)))
                                            (let ((_hd159684159706_
                                                   (##car _e159683159703_))
                                                  (_tl159685159708_
                                                   (##cdr _e159683159703_)))
                                              (let* ((_path159711_
                                                      _hd159684159706_)
                                                     (_specs159713_
                                                      _tl159685159708_))
                                                (if '#t
                                                    (let ((_src-ctx159715_
                                                           (_import-spec-source159599_
                                                            _path159711_))
                                                          (_exports159716_
                                                           (make-table))
                                                          (_specs159717_
                                                           (gx#syntax->list
                                                            _specs159713_)))
                                                      (for-each
                                                       (lambda (_out159719_)
                                                         (table-set!
                                                          _exports159716_
                                                          (cons (##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _out159719_
                         '3
                         gx#module-export::t
                         '#f)
                        (##unchecked-structure-ref
                         _out159719_
                         '4
                         gx#module-export::t
                         '#f))
                  _out159719_))
               (##unchecked-structure-ref
                _src-ctx159715_
                '9
                gx#module-context::t
                '#f))
              (_K159667_
               _rest159668_
               (foldl1 (lambda (_spec159721_ _r159722_)
                         (let* ((_e159723159739_ _spec159721_)
                                (_E159725159743_
                                 (lambda ()
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid syntax-case clause"
                                    _e159723159739_)))
                                (_E159724159797_
                                 (lambda ()
                                   (if (gx#stx-pair? _e159723159739_)
                                       (let ((_e159726159747_
                                              (gx#syntax-e _e159723159739_)))
                                         (let ((_hd159727159750_
                                                (##car _e159726159747_))
                                               (_tl159728159752_
                                                (##cdr _e159726159747_)))
                                           (let ((_phi159755_
                                                  _hd159727159750_))
                                             (if (gx#stx-pair?
                                                  _tl159728159752_)
                                                 (let ((_e159729159757_
                                                        (gx#syntax-e
                                                         _tl159728159752_)))
                                                   (let ((_hd159730159760_
                                                          (##car _e159729159757_))
                                                         (_tl159731159762_
                                                          (##cdr _e159729159757_)))
                                                     (let ((_name159765_
                                                            _hd159730159760_))
                                                       (if (gx#stx-pair?
                                                            _tl159731159762_)
                                                           (let ((_e159732159767_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl159731159762_)))
                     (let ((_hd159733159770_ (##car _e159732159767_))
                           (_tl159734159772_ (##cdr _e159732159767_)))
                       (let ((_src-phi159775_ _hd159733159770_))
                         (if (gx#stx-pair? _tl159734159772_)
                             (let ((_e159735159777_
                                    (gx#syntax-e _tl159734159772_)))
                               (let ((_hd159736159780_ (##car _e159735159777_))
                                     (_tl159737159782_
                                      (##cdr _e159735159777_)))
                                 (let ((_src-name159785_ _hd159736159780_))
                                   (if (gx#stx-null? _tl159737159782_)
                                       (if (and (gx#stx-fixnum?
                                                 _src-phi159775_)
                                                (gx#identifier?
                                                 _src-name159785_)
                                                (gx#stx-fixnum? _phi159755_)
                                                (gx#identifier? _name159765_))
                                           (let ((_src-phi159787_
                                                  (gx#stx-e _src-phi159775_))
                                                 (_src-name159788_
                                                  (gx#core-identifier-key
                                                   _src-name159785_))
                                                 (_phi159789_
                                                  (gx#stx-e _phi159755_))
                                                 (_name159790_
                                                  (gx#core-identifier-key
                                                   _name159765_)))
                                             (let ((_$e159792_
                                                    (table-ref
                                                     _exports159716_
                                                     (cons _src-phi159787_
                                                           _src-name159788_)
                                                     '#f)))
                                               (if _$e159792_
                                                   ((lambda (_out159795_)
                                                      (cons (gx#core-module-export->import__%
                                                             _out159795_
                                                             _name159790_
                                                             (fx- _phi159789_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _src-phi159787_))
                    _r159722_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _$e159792_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; no matching export"
                                                    _stx159591_
                                                    _hd159666_))))
                                           (_E159725159743_))
                                       (_E159725159743_)))))
                             (_E159725159743_)))))
                   (_E159725159743_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E159725159743_)))))
                                       (_E159725159743_)))))
                           (_E159724159797_)))
                       _r159669_
                       _specs159717_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E159679159691_)))))
                                          (_E159679159691_))))
                                  (_E159679159691_))))
                           (_E159671159823_
                            (lambda ()
                              (if (gx#stx-pair? _e159670159687_)
                                  (let ((_e159673159805_
                                         (gx#syntax-e _e159670159687_)))
                                    (let ((_hd159674159808_
                                           (##car _e159673159805_))
                                          (_tl159675159810_
                                           (##cdr _e159673159805_)))
                                      (if (gx#stx-pair? _tl159675159810_)
                                          (let ((_e159676159813_
                                                 (gx#syntax-e
                                                  _tl159675159810_)))
                                            (let ((_hd159677159816_
                                                   (##car _e159676159813_))
                                                  (_tl159678159818_
                                                   (##cdr _e159676159813_)))
                                              (let ((_path159821_
                                                     _hd159677159816_))
                                                (if (gx#stx-null?
                                                     _tl159678159818_)
                                                    (if '#t
                                                        (_K159667_
                                                         _rest159668_
                                                         (cons (_import-spec-source159599_
                                                                _path159821_)
                                                               _r159669_))
                                                        (_E159672159801_))
                                                    (_E159672159801_)))))
                                          (_E159672159801_))))
                                  (_E159672159801_)))))
                      (_E159671159823_))))
                 (_import-spec-source159599_
                  (lambda (_spath159664_)
                    (gx#core-import-nested-module _spath159664_ _stx159591_)))
                 (_import!159600_
                  (lambda (_rbody159613_)
                    (letrec* ((_current-ctx159615_
                               (gx#current-expander-context))
                              (_deps159616_ (make-table 'test: eq?))
                              (_bind!159617_
                               (lambda (_hd159662_)
                                 (gx#core-bind-import!__1
                                  _hd159662_
                                  _current-ctx159615_))))
                      (let _lp159619_ ((_rest159621_ _rbody159613_)
                                       (_body159622_ '()))
                        (let* ((_rest159623159631_ _rest159621_)
                               (_else159625159641_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _current-ctx159615_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _current-ctx159615_
                                       (foldl1 cons
                                               (##unchecked-structure-ref
                                                _current-ctx159615_
                                                '8
                                                gx#module-context::t
                                                '#f)
                                               _body159622_)
                                       '8
                                       gx#module-context::t
                                       '#f)
                                      '#!void)
                                  (table-for-each
                                   (lambda (_ctx159639_ _g167037_)
                                     (gx#eval-module _ctx159639_))
                                   _deps159616_)
                                  _body159622_))
                               (_K159627159650_
                                (lambda (_rest159644_ _hd159645_)
                                  (if (##structure-direct-instance-of?
                                       _hd159645_
                                       'gx#module-import::t)
                                      (begin
                                        (_bind!159617_ _hd159645_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _hd159645_
                                                   '3
                                                   gx#module-import::t
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _hd159645_
                                                            '1
                                                            gx#module-import::t
                                                            '#f)
                                                           '3
                                                           gx#module-export::t
                                                           '#f)))
                                            (table-set!
                                             _deps159616_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _hd159645_
                                               '1
                                               gx#module-import::t
                                               '#f)
                                              '1
                                              gx#module-export::t
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _hd159645_
                                           'gx#import-set::t)
                                          (begin
                                            (for-each
                                             _bind!159617_
                                             (##unchecked-structure-ref
                                              _hd159645_
                                              '3
                                              gx#import-set::t
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _hd159645_
                                                  '2
                                                  gx#import-set::t
                                                  '#f))
                                                (table-set!
                                                 _deps159616_
                                                 (##unchecked-structure-ref
                                                  _hd159645_
                                                  '1
                                                  gx#import-set::t
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_$e159647_
                                                 (##structure-instance-of?
                                                  _hd159645_
                                                  'gx#module-context::t)))
                                            (if _$e159647_
                                                _$e159647_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _stx159591_
                                                 _hd159645_)))))
                                  (_lp159619_
                                   _rest159644_
                                   (cons _hd159645_ _body159622_)))))
                          (if (##pair? _rest159623159631_)
                              (let ((_hd159628159653_
                                     (##car _rest159623159631_))
                                    (_tl159629159655_
                                     (##cdr _rest159623159631_)))
                                (let* ((_hd159658_ _hd159628159653_)
                                       (_rest159660_ _tl159629159655_))
                                  (_K159627159650_ _rest159660_ _hd159658_)))
                              (_else159625159641_)))))))
                 (_expanded-import?159601_
                  (lambda (_e159605_)
                    (let ((_$e159607_
                           (##structure-direct-instance-of?
                            _e159605_
                            'gx#import-set::t)))
                      (if _$e159607_
                          _$e159607_
                          (let ((_$e159610_
                                 (##structure-direct-instance-of?
                                  _e159605_
                                  'gx#module-import::t)))
                            (if _$e159610_
                                _$e159610_
                                (##structure-instance-of?
                                 _e159605_
                                 'gx#module-context::t))))))))
          (let ((_rbody159603_
                 (gx#core-expand-import/export
                  _stx159591_
                  _expanded-import?159601_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _expand1159594_)))
            (if _internal-expand?159592_
                (reverse _rbody159603_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_import!159600_ _rbody159603_))
                 (gx#stx-source _stx159591_)))))))
    (define gx#core-expand-import%__0
      (lambda (_stx159917_)
        (let ((_internal-expand?159919_ '#f))
          (gx#core-expand-import%__% _stx159917_ _internal-expand?159919_))))
    (define gx#core-expand-import%
      (lambda _g167039_
        (let ((_g167038_ (##length _g167039_)))
          (cond ((##fx= _g167038_ 1)
                 (apply (lambda (_stx159917_)
                          (gx#core-expand-import%__0 _stx159917_))
                        _g167039_))
                ((##fx= _g167038_ 2)
                 (apply (lambda (_stx159921_ _internal-expand?159922_)
                          (gx#core-expand-import%__%
                           _stx159921_
                           _internal-expand?159922_))
                        _g167039_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g167039_))))))
    (define gx#core-import-nested-module
      (lambda (_spath159518_ _where159519_)
        (let* ((_e159520159527_ _spath159518_)
               (_E159522159531_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e159520159527_)))
               (_E159521159586_
                (lambda ()
                  (if (gx#stx-pair? _e159520159527_)
                      (let ((_e159523159535_ (gx#syntax-e _e159520159527_)))
                        (let ((_hd159524159538_ (##car _e159523159535_))
                              (_tl159525159540_ (##cdr _e159523159535_)))
                          (let* ((_origin159543_ _hd159524159538_)
                                 (_sub159545_ _tl159525159540_))
                            (if '#t
                                (let ((_origin-ctx159547_
                                       (if (gx#stx-false? _origin159543_)
                                           (gx#current-expander-context)
                                           (gx#import-module__0
                                            _origin159543_))))
                                  (let _lp159549_ ((_rest159551_ _sub159545_)
                                                   (_ctx159552_
                                                    _origin-ctx159547_))
                                    (let* ((_e159553159560_ _rest159551_)
                                           (_E159555159564_
                                            (lambda () _ctx159552_))
                                           (_E159554159582_
                                            (lambda ()
                                              (if (gx#stx-pair?
                                                   _e159553159560_)
                                                  (let ((_e159556159568_
                                                         (gx#syntax-e
                                                          _e159553159560_)))
                                                    (let ((_hd159557159571_
                                                           (##car _e159556159568_))
                                                          (_tl159558159573_
                                                           (##cdr _e159556159568_)))
                                                      (let* ((_id159576_
                                                              _hd159557159571_)
                                                             (_rest159578_
                                                              _tl159558159573_))
                                                        (if '#t
                                                            (let ((_bind159580_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#resolve-identifier__%
                            _id159576_
                            '0
                            _ctx159552_)))
                      (if (and (##structure-direct-instance-of?
                                _bind159580_
                                'gx#syntax-binding::t)
                               (##structure-instance-of?
                                (##unchecked-structure-ref
                                 _bind159580_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                'gx#module-context::t))
                          '#!void
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; not bound as module"
                           _where159519_
                           _spath159518_
                           _id159576_))
                      (_lp159549_
                       _rest159578_
                       (##unchecked-structure-ref
                        _bind159580_
                        '4
                        gx#syntax-binding::t
                        '#f)))
                    (_E159555159564_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E159555159564_)))))
                                      (_E159554159582_))))
                                (_E159522159531_)))))
                      (_E159522159531_)))))
          (_E159521159586_))))
    (define gx#core-expand-import-source
      (lambda (_hd159516_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _hd159516_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_stx159024_ _internal-expand?159025_)
        (letrec* ((_make-export__166968166969_
                   (lambda (_bind159464_ _phi159465_ _ctx159466_ _name159467_)
                     (let* ((_key159469_
                             (##unchecked-structure-ref
                              _bind159464_
                              '2
                              gx#binding::t
                              '#f))
                            (_export-key159471_
                             (if _name159467_
                                 (gx#core-identifier-key _name159467_)
                                 _key159469_)))
                       (##structure
                        gx#module-export::t
                        _ctx159466_
                        _key159469_
                        _phi159465_
                        _export-key159471_
                        (let ((_$e159474_
                               (##structure-instance-of?
                                _bind159464_
                                'gx#extern-binding::t)))
                          (if _$e159474_
                              _$e159474_
                              (##structure-direct-instance-of?
                               _bind159464_
                               'gx#import-binding::t)))))))
                  (_make-export__0__166970166973_
                   (lambda (_bind159480_)
                     (let* ((_phi159482_ (gx#current-export-expander-phi))
                            (_ctx159484_ (gx#current-expander-context))
                            (_name159486_ '#f))
                       (_make-export__166968166969_
                        _bind159480_
                        _phi159482_
                        _ctx159484_
                        _name159486_))))
                  (_make-export__1__166971166974_
                   (lambda (_bind159488_ _phi159489_)
                     (let* ((_ctx159491_ (gx#current-expander-context))
                            (_name159493_ '#f))
                       (_make-export__166968166969_
                        _bind159488_
                        _phi159489_
                        _ctx159491_
                        _name159493_))))
                  (_make-export__2__166972166975_
                   (lambda (_bind159495_ _phi159496_ _ctx159497_)
                     (let ((_name159499_ '#f))
                       (_make-export__166968166969_
                        _bind159495_
                        _phi159496_
                        _ctx159497_
                        _name159499_))))
                  (_make-export159027_
                   (lambda _g167041_
                     (let ((_g167040_ (##length _g167041_)))
                       (cond ((##fx= _g167040_ 1)
                              (apply (lambda (_bind159480_)
                                       (_make-export__0__166970166973_
                                        _bind159480_))
                                     _g167041_))
                             ((##fx= _g167040_ 2)
                              (apply (lambda (_bind159488_ _phi159489_)
                                       (_make-export__1__166971166974_
                                        _bind159488_
                                        _phi159489_))
                                     _g167041_))
                             ((##fx= _g167040_ 3)
                              (apply (lambda (_bind159495_
                                              _phi159496_
                                              _ctx159497_)
                                       (_make-export__2__166972166975_
                                        _bind159495_
                                        _phi159496_
                                        _ctx159497_))
                                     _g167041_))
                             ((##fx= _g167040_ 4)
                              (apply (lambda (_bind159501_
                                              _phi159502_
                                              _ctx159503_
                                              _name159504_)
                                       (_make-export__166968166969_
                                        _bind159501_
                                        _phi159502_
                                        _ctx159503_
                                        _name159504_))
                                     _g167041_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g167041_))))))
                  (_expand1159028_
                   (lambda (_hd159177_ _K159178_ _rest159179_ _r159180_)
                     (let* ((_e159181159213_ _hd159177_)
                            (_E159208159217_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _stx159024_
                                _hd159177_)))
                            (_E159198159296_
                             (lambda ()
                               (if (gx#stx-pair? _e159181159213_)
                                   (let ((_e159209159221_
                                          (gx#syntax-e _e159181159213_)))
                                     (let ((_hd159210159224_
                                            (##car _e159209159221_))
                                           (_tl159211159226_
                                            (##cdr _e159209159221_)))
                                       (if (eq? (gx#stx-e _hd159210159224_)
                                                'import:)
                                           (let ((_in159229_ _tl159211159226_))
                                             (if (gx#stx-list? _in159229_)
                                                 (let _lp159231_ ((_in-rest159233_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _in159229_)
                          (_r159234_ _r159180_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_e159235159242_
                                                           _in-rest159233_)
                                                          (_E159237159246_
                                                           (lambda ()
                                                             (_K159178_
                                                              _rest159179_
                                                              _r159234_)))
                                                          (_E159236159292_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _e159235159242_)
                         (let ((_e159238159250_ (gx#syntax-e _e159235159242_)))
                           (let ((_hd159239159253_ (##car _e159238159250_))
                                 (_tl159240159255_ (##cdr _e159238159250_)))
                             (let* ((_hd159258_ _hd159239159253_)
                                    (_in-rest159260_ _tl159240159255_))
                               (if '#t
                                   (let ((_src159290_
                                          (if (gx#core-bound-module?
                                               _hd159258_)
                                              (gx#syntax-local-e__0 _hd159258_)
                                              (if (gx#core-library-module-path?
                                                   _hd159258_)
                                                  (gx#import-module__0
                                                   (gx#core-resolve-library-module-path
                                                    _hd159258_))
                                                  (if (gx#core-library-relative-module-path?
                                                       _hd159258_)
                                                      (gx#import-module__0
                                                       (gx#core-resolve-library-relative-module-path
                                                        _hd159258_))
                                                      (if (gx#stx-string?
                                                           _hd159258_)
                                                          (gx#import-module__0
                                                           (gx#core-resolve-module-path__%
                                                            _hd159258_
                                                            (gx#stx-source
                                                             _stx159024_)))
                                                          (let* ((_e159261159268_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd159258_)
                         (_E159263159272_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; illegal re-export"
                             _stx159024_
                             _hd159258_)))
                         (_E159262159286_
                          (lambda ()
                            (if (gx#stx-pair? _e159261159268_)
                                (let ((_e159264159276_
                                       (gx#syntax-e _e159261159268_)))
                                  (let ((_hd159265159279_
                                         (##car _e159264159276_))
                                        (_tl159266159281_
                                         (##cdr _e159264159276_)))
                                    (if (eq? (gx#stx-e _hd159265159279_) 'in:)
                                        (let ((_spath159284_ _tl159266159281_))
                                          (if '#t
                                              (gx#core-import-nested-module
                                               _spath159284_
                                               _stx159024_)
                                              (_E159263159272_)))
                                        (_E159263159272_))))
                                (_E159263159272_)))))
                    (_E159262159286_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_lp159231_
                                      _in-rest159260_
                                      (_export-imports159029_
                                       _src159290_
                                       _r159234_)))
                                   (_E159237159246_)))))
                         (_E159237159246_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E159236159292_)))
                                                 (_E159208159217_)))
                                           (_E159208159217_))))
                                   (_E159208159217_))))
                            (_E159185159335_
                             (lambda ()
                               (if (gx#stx-pair? _e159181159213_)
                                   (let ((_e159199159300_
                                          (gx#syntax-e _e159181159213_)))
                                     (let ((_hd159200159303_
                                            (##car _e159199159300_))
                                           (_tl159201159305_
                                            (##cdr _e159199159300_)))
                                       (if (eq? (gx#stx-e _hd159200159303_)
                                                'rename:)
                                           (if (gx#stx-pair? _tl159201159305_)
                                               (let ((_e159202159308_
                                                      (gx#syntax-e
                                                       _tl159201159305_)))
                                                 (let ((_hd159203159311_
                                                        (##car _e159202159308_))
                                                       (_tl159204159313_
                                                        (##cdr _e159202159308_)))
                                                   (let ((_id159316_
                                                          _hd159203159311_))
                                                     (if (gx#stx-pair?
                                                          _tl159204159313_)
                                                         (let ((_e159205159318_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl159204159313_)))
                   (let ((_hd159206159321_ (##car _e159205159318_))
                         (_tl159207159323_ (##cdr _e159205159318_)))
                     (let ((_name159326_ _hd159206159321_))
                       (if (gx#stx-null? _tl159207159323_)
                           (if '#t
                               (let* ((_phi159328_
                                       (gx#current-export-expander-phi))
                                      (_$e159330_
                                       (gx#core-resolve-identifier__1
                                        _id159316_
                                        _phi159328_)))
                                 (if _$e159330_
                                     ((lambda (_bind159333_)
                                        (_K159178_
                                         _rest159179_
                                         (cons (_make-export__166968166969_
                                                _bind159333_
                                                _phi159328_
                                                (gx#current-expander-context)
                                                _name159326_)
                                               _r159180_)))
                                      _$e159330_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Reference to unbound identifier"
                                      _stx159024_
                                      _hd159177_
                                      _id159316_)))
                               (_E159198159296_))
                           (_E159198159296_)))))
                 (_E159198159296_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E159198159296_))
                                           (_E159198159296_))))
                                   (_E159198159296_))))
                            (_E159184159384_
                             (lambda ()
                               (if (gx#stx-pair? _e159181159213_)
                                   (let ((_e159186159339_
                                          (gx#syntax-e _e159181159213_)))
                                     (let ((_hd159187159342_
                                            (##car _e159186159339_))
                                           (_tl159188159344_
                                            (##cdr _e159186159339_)))
                                       (if (eq? (gx#stx-e _hd159187159342_)
                                                'spec:)
                                           (if (gx#stx-pair? _tl159188159344_)
                                               (let ((_e159189159347_
                                                      (gx#syntax-e
                                                       _tl159188159344_)))
                                                 (let ((_hd159190159350_
                                                        (##car _e159189159347_))
                                                       (_tl159191159352_
                                                        (##cdr _e159189159347_)))
                                                   (let ((_phi159355_
                                                          _hd159190159350_))
                                                     (if (gx#stx-pair?
                                                          _tl159191159352_)
                                                         (let ((_e159192159357_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl159191159352_)))
                   (let ((_hd159193159360_ (##car _e159192159357_))
                         (_tl159194159362_ (##cdr _e159192159357_)))
                     (let ((_id159365_ _hd159193159360_))
                       (if (gx#stx-pair? _tl159194159362_)
                           (let ((_e159195159367_
                                  (gx#syntax-e _tl159194159362_)))
                             (let ((_hd159196159370_ (##car _e159195159367_))
                                   (_tl159197159372_ (##cdr _e159195159367_)))
                               (let ((_name159375_ _hd159196159370_))
                                 (if (gx#stx-null? _tl159197159372_)
                                     (if (and (gx#stx-fixnum? _phi159355_)
                                              (gx#identifier? _id159365_)
                                              (gx#identifier? _name159375_))
                                         (let* ((_phi159377_
                                                 (gx#stx-e _phi159355_))
                                                (_$e159379_
                                                 (gx#core-resolve-identifier__1
                                                  _id159365_
                                                  _phi159377_)))
                                           (if _$e159379_
                                               ((lambda (_bind159382_)
                                                  (_K159178_
                                                   _rest159179_
                                                   (cons (_make-export__166968166969_
                                                          _bind159382_
                                                          _phi159377_
                                                          (gx#current-expander-context)
                                                          _name159375_)
                                                         _r159180_)))
                                                _$e159379_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _stx159024_
                                                _hd159177_
                                                _id159365_)))
                                         (_E159185159335_))
                                     (_E159185159335_)))))
                           (_E159185159335_)))))
                 (_E159185159335_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E159185159335_))
                                           (_E159185159335_))))
                                   (_E159185159335_))))
                            (_E159183159395_
                             (lambda ()
                               (let ((_id159388_ _e159181159213_))
                                 (if (gx#identifier? _id159388_)
                                     (let ((_$e159390_
                                            (gx#core-resolve-identifier__1
                                             _id159388_
                                             (gx#current-export-expander-phi))))
                                       (if _$e159390_
                                           ((lambda (_bind159393_)
                                              (_K159178_
                                               _rest159179_
                                               (cons (_make-export__0__166970166973_
                                                      _bind159393_)
                                                     _r159180_)))
                                            _$e159390_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _stx159024_
                                            _hd159177_)))
                                     (_E159184159384_)))))
                            (_E159182159459_
                             (lambda ()
                               (if (eq? (gx#stx-e _e159181159213_) '#t)
                                   (if '#t
                                       (let* ((_current-ctx159399_
                                               (gx#current-expander-context))
                                              (_current-phi159401_
                                               (gx#current-export-expander-phi))
                                              (_phi-ctx159403_
                                               (gx#core-context-shift
                                                _current-ctx159399_
                                                _current-phi159401_))
                                              (_phi-bind159405_
                                               (table->list
                                                (##unchecked-structure-ref
                                                 _phi-ctx159403_
                                                 '2
                                                 gx#expander-context::t
                                                 '#f))))
                                         (let _lp159408_ ((_bind-rest159410_
                                                           _phi-bind159405_)
                                                          (_set159411_ '()))
                                           (let* ((_bind-rest159412159422_
                                                   _bind-rest159410_)
                                                  (_else159414159430_
                                                   (lambda ()
                                                     (_K159178_
                                                      _rest159179_
                                                      (cons (##structure
                                                             gx#export-set::t
                                                             '#f
                                                             _current-phi159401_
                                                             _set159411_)
                                                            _r159180_))))
                                                  (_K159416159440_
                                                   (lambda (_bind-rest159433_
                                                            _bind159434_
                                                            _key159435_)
                                                     (if (or (##structure-direct-instance-of?
                                                              _bind159434_
                                                              'gx#import-binding::t)
                                                             (gx#private-feature-binding?
                                                              _bind159434_))
                                                         (_lp159408_
                                                          _bind-rest159433_
                                                          _set159411_)
                                                         (_lp159408_
                                                          _bind-rest159433_
                                                          (cons (_make-export__2__166972166975_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind159434_
                         _current-phi159401_
                         _current-ctx159399_)
                        _set159411_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _bind-rest159412159422_)
                                                 (let ((_hd159417159443_
                                                        (##car _bind-rest159412159422_))
                                                       (_tl159418159445_
                                                        (##cdr _bind-rest159412159422_)))
                                                   (if (##pair? _hd159417159443_)
                                                       (let ((_hd159419159448_
                                                              (##car _hd159417159443_))
                                                             (_tl159420159450_
                                                              (##cdr _hd159417159443_)))
                                                         (let* ((_key159453_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd159419159448_)
                        (_bind159455_ _tl159420159450_)
                        (_bind-rest159457_ _tl159418159445_))
                   (_K159416159440_
                    _bind-rest159457_
                    _bind159455_
                    _key159453_)))
               (_else159414159430_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_else159414159430_)))))
                                       (_E159183159395_))
                                   (_E159183159395_)))))
                       (_E159182159459_))))
                  (_export-imports159029_
                   (lambda (_src159053_ _r159054_)
                     (letrec* ((_current-ctx159056_
                                (gx#current-expander-context))
                               (_current-phi159057_
                                (gx#current-export-expander-phi))
                               (_import->export159058_
                                (lambda (_in159139_)
                                  (let* ((_in159140159148_ _in159139_)
                                         (_E159142159152_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _in159140159148_)))
                                         (_K159143159159_
                                          (lambda (_phi159155_
                                                   _key159156_
                                                   _out159157_)
                                            (##structure
                                             gx#module-export::t
                                             _current-ctx159056_
                                             _key159156_
                                             _phi159155_
                                             _key159156_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _in159140159148_
                                         'gx#module-import::t)
                                        (let* ((_e159144159162_
                                                (##unchecked-structure-ref
                                                 _in159140159148_
                                                 '1
                                                 gx#module-import::t
                                                 '#f))
                                               (_out159165_ _e159144159162_)
                                               (_e159145159167_
                                                (##unchecked-structure-ref
                                                 _in159140159148_
                                                 '2
                                                 gx#module-import::t
                                                 '#f))
                                               (_key159170_ _e159145159167_)
                                               (_e159146159172_
                                                (##unchecked-structure-ref
                                                 _in159140159148_
                                                 '3
                                                 gx#module-import::t
                                                 '#f))
                                               (_phi159175_ _e159146159172_))
                                          (_K159143159159_
                                           _phi159175_
                                           _key159170_
                                           _out159165_))
                                        (_E159142159152_)))))
                               (_fold-e159059_
                                (lambda (_in159061_ _r159062_)
                                  (let* ((_in159063159077_ _in159061_)
                                         (_else159066159085_
                                          (lambda () _r159062_)))
                                    (let ((_K159072159121_
                                           (lambda (_phi159117_
                                                    _key159118_
                                                    _out159119_)
                                             (if (and (fx= _phi159117_
                                                           _current-phi159057_)
                                                      (eq? _src159053_
                                                           (##unchecked-structure-ref
                                                            _out159119_
                                                            '1
                                                            gx#module-export::t
                                                            '#f)))
                                                 (cons (_import->export159058_
                                                        _in159061_)
                                                       _r159062_)
                                                 _r159062_)))
                                          (_K159068159096_
                                           (lambda (_imports159089_
                                                    _phi159090_
                                                    _ctx159091_)
                                             (if (and (fx= _phi159090_
                                                           _current-phi159057_)
                                                      (eq? _src159053_
                                                           _ctx159091_))
                                                 (foldl1 (lambda (_in159093_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r159094_)
                   (cons (_import->export159058_ _in159093_) _r159094_))
                 _r159062_
                 _imports159089_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _r159062_))))
                                      (let ((_try-match159065159114_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _in159063159077_
                                                    'gx#import-set::t)
                                                   (let* ((_e159069159099_
                                                           (##unchecked-structure-ref
                                                            _in159063159077_
                                                            '1
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e159070159104_
                                                           (##unchecked-structure-ref
                                                            _in159063159077_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e159071159109_
                                                           (##unchecked-structure-ref
                                                            _in159063159077_
                                                            '3
                                                            gx#import-set::t
                                                            '#f)))
                                                     (let ((_ctx159102_
                                                            _e159069159099_)
                                                           (_phi159107_
                                                            _e159070159104_)
                                                           (_imports159112_
                                                            _e159071159109_))
                                                       (_K159068159096_
                                                        _imports159112_
                                                        _phi159107_
                                                        _ctx159102_)))
                                                   (_else159066159085_)))))
                                        (if (##structure-direct-instance-of?
                                             _in159063159077_
                                             'gx#module-import::t)
                                            (let* ((_e159073159124_
                                                    (##unchecked-structure-ref
                                                     _in159063159077_
                                                     '1
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e159074159129_
                                                    (##unchecked-structure-ref
                                                     _in159063159077_
                                                     '2
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e159075159134_
                                                    (##unchecked-structure-ref
                                                     _in159063159077_
                                                     '3
                                                     gx#module-import::t
                                                     '#f)))
                                              (let ((_out159127_
                                                     _e159073159124_)
                                                    (_key159132_
                                                     _e159074159129_)
                                                    (_phi159137_
                                                     _e159075159134_))
                                                (_K159072159121_
                                                 _phi159137_
                                                 _key159132_
                                                 _out159127_)))
                                            (_try-match159065159114_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _src159053_
                              _current-phi159057_
                              (foldl1 _fold-e159059_
                                      '()
                                      (##unchecked-structure-ref
                                       _current-ctx159056_
                                       '8
                                       gx#module-context::t
                                       '#f)))
                             _r159054_))))
                  (_export!159030_
                   (lambda (_rbody159043_)
                     (letrec* ((_current-ctx159045_
                                (gx#current-expander-context))
                               (_fold-e159046_
                                (lambda (_out159050_ _r159051_)
                                  (if (##structure-direct-instance-of?
                                       _out159050_
                                       'gx#module-export::t)
                                      (cons _out159050_ _r159051_)
                                      (if (##structure-direct-instance-of?
                                           _out159050_
                                           'gx#export-set::t)
                                          (foldl1 cons
                                                  _r159051_
                                                  (##unchecked-structure-ref
                                                   _out159050_
                                                   '3
                                                   gx#export-set::t
                                                   '#f))
                                          _r159051_)))))
                       (let ((_body159048_ (reverse _rbody159043_)))
                         (##unchecked-structure-set!
                          _current-ctx159045_
                          (foldl1 _fold-e159046_
                                  (##unchecked-structure-ref
                                   _current-ctx159045_
                                   '9
                                   gx#module-context::t
                                   '#f)
                                  _body159048_)
                          '9
                          gx#module-context::t
                          '#f)
                         _body159048_))))
                  (_expanded-export?159031_
                   (lambda (_e159038_)
                     (let ((_$e159040_
                            (##structure-direct-instance-of?
                             _e159038_
                             'gx#module-export::t)))
                       (if _$e159040_
                           _$e159040_
                           (##structure-direct-instance-of?
                            _e159038_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _internal-expand?159025_)
              (let ((_rbody159036_
                     (gx#core-expand-import/export
                      _stx159024_
                      _expanded-export?159031_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _expand1159028_)))
                (if _internal-expand?159025_
                    (reverse _rbody159036_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons '%#export (_export!159030_ _rbody159036_))
                     (gx#stx-source _stx159024_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _stx159024_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _stx159024_))))))
    (define gx#core-expand-export%__0
      (lambda (_stx159509_)
        (let ((_internal-expand?159511_ '#f))
          (gx#core-expand-export%__% _stx159509_ _internal-expand?159511_))))
    (define gx#core-expand-export%
      (lambda _g167043_
        (let ((_g167042_ (##length _g167043_)))
          (cond ((##fx= _g167042_ 1)
                 (apply (lambda (_stx159509_)
                          (gx#core-expand-export%__0 _stx159509_))
                        _g167043_))
                ((##fx= _g167042_ 2)
                 (apply (lambda (_stx159513_ _internal-expand?159514_)
                          (gx#core-expand-export%__%
                           _stx159513_
                           _internal-expand?159514_))
                        _g167043_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g167043_))))))
    (define gx#core-expand-export-source
      (lambda (_hd159021_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _hd159021_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_stx158991_)
        (let* ((_e158992158999_ _stx158991_)
               (_E158994159003_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e158992158999_)))
               (_E158993159017_
                (lambda ()
                  (if (gx#stx-pair? _e158992158999_)
                      (let ((_e158995159007_ (gx#syntax-e _e158992158999_)))
                        (let ((_hd158996159010_ (##car _e158995159007_))
                              (_tl158997159012_ (##cdr _e158995159007_)))
                          (let ((_body159015_ _tl158997159012_))
                            (if (gx#identifier-list? _body159015_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _body159015_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _body159015_))
                                   (gx#stx-source _stx158991_)))
                                (_E158994159003_)))))
                      (_E158994159003_)))))
          (_E158993159017_))))
    (define gx#core-bind-feature!__%
      (lambda (_id158957_ _private?158958_ _phi158959_ _ctx158960_)
        (gx#core-bind-syntax!__%
         _id158957_
         ((if _private?158958_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _id158957_))
         _private?158958_
         _phi158959_
         _ctx158960_)))
    (define gx#core-bind-feature!__0
      (lambda (_id158965_)
        (let* ((_private?158967_ '#f)
               (_phi158969_ (gx#current-expander-phi))
               (_ctx158971_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id158965_
           _private?158967_
           _phi158969_
           _ctx158971_))))
    (define gx#core-bind-feature!__1
      (lambda (_id158973_ _private?158974_)
        (let* ((_phi158976_ (gx#current-expander-phi))
               (_ctx158978_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id158973_
           _private?158974_
           _phi158976_
           _ctx158978_))))
    (define gx#core-bind-feature!__2
      (lambda (_id158980_ _private?158981_ _phi158982_)
        (let ((_ctx158984_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id158980_
           _private?158981_
           _phi158982_
           _ctx158984_))))
    (define gx#core-bind-feature!
      (lambda _g167045_
        (let ((_g167044_ (##length _g167045_)))
          (cond ((##fx= _g167044_ 1)
                 (apply (lambda (_id158965_)
                          (gx#core-bind-feature!__0 _id158965_))
                        _g167045_))
                ((##fx= _g167044_ 2)
                 (apply (lambda (_id158973_ _private?158974_)
                          (gx#core-bind-feature!__1
                           _id158973_
                           _private?158974_))
                        _g167045_))
                ((##fx= _g167044_ 3)
                 (apply (lambda (_id158980_ _private?158981_ _phi158982_)
                          (gx#core-bind-feature!__2
                           _id158980_
                           _private?158981_
                           _phi158982_))
                        _g167045_))
                ((##fx= _g167044_ 4)
                 (apply (lambda (_id158986_
                                 _private?158987_
                                 _phi158988_
                                 _ctx158989_)
                          (gx#core-bind-feature!__%
                           _id158986_
                           _private?158987_
                           _phi158988_
                           _ctx158989_))
                        _g167045_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g167045_))))))))
