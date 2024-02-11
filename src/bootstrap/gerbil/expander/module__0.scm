(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1707674931)
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
      (lambda _$args162388_
        (apply make-instance gx#module-import::t _$args162388_)))
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
      (lambda _$args162385_
        (apply make-instance gx#module-export::t _$args162385_)))
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
      (lambda _$args162382_
        (apply make-instance gx#import-set::t _$args162382_)))
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
      (lambda _$args162379_
        (apply make-instance gx#export-set::t _$args162379_)))
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
      (lambda _$args162376_
        (apply make-instance gx#import-expander::t _$args162376_)))
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
      (lambda _$args162373_
        (apply make-instance gx#export-expander::t _$args162373_)))
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
      (lambda _$args162370_
        (apply make-instance gx#import-export-expander::t _$args162370_)))
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
      (lambda (_path162367_ _fun162368_)
        (call-with-input-file
         (cons 'path: (cons _path162367_ gx#source-file-settings))
         _fun162368_)))
    (define gx#module-context:::init!
      (lambda (_self162361_ _id162362_ _super162363_ _ns162364_ _path162365_)
        (if (##fx< '11 (##structure-length _self162361_))
            (begin
              (##unchecked-structure-set!
               _self162361_
               _id162362_
               '1
               (##structure-type _self162361_)
               '#f)
              (##unchecked-structure-set!
               _self162361_
               (make-table 'test: eq?)
               '2
               (##structure-type _self162361_)
               '#f)
              (##unchecked-structure-set!
               _self162361_
               _super162363_
               '3
               (##structure-type _self162361_)
               '#f)
              (##unchecked-structure-set!
               _self162361_
               '#f
               '4
               (##structure-type _self162361_)
               '#f)
              (##unchecked-structure-set!
               _self162361_
               '#f
               '5
               (##structure-type _self162361_)
               '#f)
              (##unchecked-structure-set!
               _self162361_
               _ns162364_
               '6
               (##structure-type _self162361_)
               '#f)
              (##unchecked-structure-set!
               _self162361_
               _path162365_
               '7
               (##structure-type _self162361_)
               '#f)
              (##unchecked-structure-set!
               _self162361_
               '()
               '8
               (##structure-type _self162361_)
               '#f)
              (##unchecked-structure-set!
               _self162361_
               '()
               '9
               (##structure-type _self162361_)
               '#f)
              (##unchecked-structure-set!
               _self162361_
               '#f
               '10
               (##structure-type _self162361_)
               '#f)
              (##unchecked-structure-set!
               _self162361_
               '#f
               '11
               (##structure-type _self162361_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self162361_
                   '11
                   (##vector-length _self162361_)))))
    (bind-method! gx#module-context::t ':init! gx#module-context:::init! '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_self162205_ _ctx162206_ _root162207_)
        (let ((_super162215_
               (let ((_$e162209_ _root162207_))
                 (if _$e162209_
                     _$e162209_
                     (let ((_$e162212_ (gx#core-context-root__0)))
                       (if _$e162212_
                           _$e162212_
                           (let ((__obj166998
                                  (##structure gx#root-context::t '#f '#f)))
                             (let ((__constructor166999
                                    (direct-method-ref
                                     gx#root-context::t
                                     ':init!)))
                               (if __constructor166999
                                   (__constructor166999 __obj166998)
                                   (error '"missing constructor method implementation"
                                          'class:
                                          gx#root-context::t
                                          'method:
                                          ':init!)))
                             __obj166998)))))))
          (if _ctx162206_
              (let ((_id162218_
                     (##structure-ref
                      _ctx162206_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_path162219_
                     (##structure-ref _ctx162206_ '7 gx#module-context::t '#f))
                    (_in162220_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _ctx162206_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_e162221_
                     (make-promise (lambda () (gx#eval-module _ctx162206_)))))
                (if (##fx< '8 (##structure-length _self162205_))
                    (begin
                      (##unchecked-structure-set!
                       _self162205_
                       _id162218_
                       '1
                       (##structure-type _self162205_)
                       '#f)
                      (##unchecked-structure-set!
                       _self162205_
                       (make-table 'test: eq? 'size: (length _in162220_))
                       '2
                       (##structure-type _self162205_)
                       '#f)
                      (##unchecked-structure-set!
                       _self162205_
                       _super162215_
                       '3
                       (##structure-type _self162205_)
                       '#f)
                      (##unchecked-structure-set!
                       _self162205_
                       '#f
                       '4
                       (##structure-type _self162205_)
                       '#f)
                      (##unchecked-structure-set!
                       _self162205_
                       '#f
                       '5
                       (##structure-type _self162205_)
                       '#f)
                      (##unchecked-structure-set!
                       _self162205_
                       _path162219_
                       '6
                       (##structure-type _self162205_)
                       '#f)
                      (##unchecked-structure-set!
                       _self162205_
                       _in162220_
                       '7
                       (##structure-type _self162205_)
                       '#f)
                      (##unchecked-structure-set!
                       _self162205_
                       _e162221_
                       '8
                       (##structure-type _self162205_)
                       '#f))
                    (error '"struct-instance-init!: too many arguments for struct"
                           _self162205_
                           '8
                           (##vector-length _self162205_)))
                (for-each
                 (lambda (_g162222162224_)
                   (gx#core-bind-weak-import!__% _g162222162224_ _self162205_))
                 _in162220_))
              (if (##fx< '8 (##structure-length _self162205_))
                  (begin
                    (##unchecked-structure-set!
                     _self162205_
                     '#f
                     '1
                     (##structure-type _self162205_)
                     '#f)
                    (##unchecked-structure-set!
                     _self162205_
                     (make-table 'test: eq?)
                     '2
                     (##structure-type _self162205_)
                     '#f)
                    (##unchecked-structure-set!
                     _self162205_
                     _super162215_
                     '3
                     (##structure-type _self162205_)
                     '#f)
                    (##unchecked-structure-set!
                     _self162205_
                     '#f
                     '4
                     (##structure-type _self162205_)
                     '#f)
                    (##unchecked-structure-set!
                     _self162205_
                     '#f
                     '5
                     (##structure-type _self162205_)
                     '#f)
                    (##unchecked-structure-set!
                     _self162205_
                     '#f
                     '6
                     (##structure-type _self162205_)
                     '#f)
                    (##unchecked-structure-set!
                     _self162205_
                     '()
                     '7
                     (##structure-type _self162205_)
                     '#f)
                    (##unchecked-structure-set!
                     _self162205_
                     '#f
                     '8
                     (##structure-type _self162205_)
                     '#f))
                  (error '"struct-instance-init!: too many arguments for struct"
                         _self162205_
                         '8
                         (##vector-length _self162205_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_self162230_ _ctx162231_)
        (let ((_root162233_ '#f))
          (gx#prelude-context:::init!__%
           _self162230_
           _ctx162231_
           _root162233_))))
    (define gx#prelude-context:::init!
      (lambda _g167005_
        (let ((_g167004_ (##length _g167005_)))
          (cond ((##fx= _g167004_ 2)
                 (apply (lambda (_self162230_ _ctx162231_)
                          (gx#prelude-context:::init!__0
                           _self162230_
                           _ctx162231_))
                        _g167005_))
                ((##fx= _g167004_ 3)
                 (apply (lambda (_self162235_ _ctx162236_ _root162237_)
                          (gx#prelude-context:::init!__%
                           _self162235_
                           _ctx162236_
                           _root162237_))
                        _g167005_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g167005_))))))
    (bind-method! gx#prelude-context::t ':init! gx#prelude-context:::init! '#f)
    (define gx#import-export-expander-init!
      (lambda (_self162079_ _e162080_)
        (if (##fx< '3 (##structure-length _self162079_))
            (begin
              (##unchecked-structure-set!
               _self162079_
               _e162080_
               '1
               (##structure-type _self162079_)
               '#f)
              (##unchecked-structure-set!
               _self162079_
               (gx#current-expander-context)
               '2
               (##structure-type _self162079_)
               '#f)
              (##unchecked-structure-set!
               _self162079_
               (fx- (gx#current-expander-phi) '1)
               '3
               (##structure-type _self162079_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self162079_
                   '3
                   (##vector-length _self162079_)))))
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
      (lambda (_g161705161708_ _g161706161710_)
        (gx#core-apply-user-expander__%
         _g161705161708_
         _g161706161710_
         'apply-import-expander)))
    (bind-method!
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_g161576161579_ _g161577161581_)
        (gx#core-apply-user-expander__%
         _g161576161579_
         _g161577161581_
         'apply-export-expander)))
    (bind-method!
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_ctx161447_)
        (let* ((_path161449_
                (##structure-ref _ctx161447_ '7 gx#module-context::t '#f))
               (_path161451_
                (if (pair? _path161449_) (last _path161449_) _path161449_)))
          (if (string? _path161451_) _path161451_ '#f))))
    (define gx#import-module__%
      (lambda (_path161423_ _reload?161424_ _eval?161425_)
        (let ((_ctx161427_
               ((gx#current-expander-module-import)
                _path161423_
                _reload?161424_)))
          (if (and _ctx161427_ _eval?161425_)
              (gx#eval-module _ctx161427_)
              '#!void)
          _ctx161427_)))
    (define gx#import-module__0
      (lambda (_path161432_)
        (let* ((_reload?161434_ '#f) (_eval?161436_ '#f))
          (gx#import-module__% _path161432_ _reload?161434_ _eval?161436_))))
    (define gx#import-module__1
      (lambda (_path161438_ _reload?161439_)
        (let ((_eval?161441_ '#f))
          (gx#import-module__% _path161438_ _reload?161439_ _eval?161441_))))
    (define gx#import-module
      (lambda _g167007_
        (let ((_g167006_ (##length _g167007_)))
          (cond ((##fx= _g167006_ 1)
                 (apply (lambda (_path161432_)
                          (gx#import-module__0 _path161432_))
                        _g167007_))
                ((##fx= _g167006_ 2)
                 (apply (lambda (_path161438_ _reload?161439_)
                          (gx#import-module__1 _path161438_ _reload?161439_))
                        _g167007_))
                ((##fx= _g167006_ 3)
                 (apply (lambda (_path161443_ _reload?161444_ _eval?161445_)
                          (gx#import-module__%
                           _path161443_
                           _reload?161444_
                           _eval?161445_))
                        _g167007_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g167007_))))))
    (define gx#eval-module
      (lambda (_mod161420_) ((gx#current-expander-module-eval) _mod161420_)))
    (define gx#core-eval-module
      (lambda (_obj161405_)
        (letrec ((_force-e161407_
                  (lambda (_getf161416_ _e161417_)
                    (call-with-parameters
                     (lambda () (force (_getf161416_ _e161417_)))
                     gx#current-expander-context
                     _e161417_
                     gx#current-expander-phi
                     '0))))
          (let _recur161409_ ((_e161411_ _obj161405_))
            (if (##structure-instance-of? _e161411_ 'gx#module-context::t)
                (begin
                  (let ((_$e161413_ (gx#core-context-prelude__% _e161411_)))
                    (if _$e161413_ (_recur161409_ _$e161413_) '#!void))
                  (_force-e161407_ gx#module-context-e _e161411_))
                (if (##structure-instance-of? _e161411_ 'gx#prelude-context::t)
                    (_force-e161407_ gx#prelude-context-e _e161411_)
                    (if (gx#stx-string? _e161411_)
                        (_recur161409_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _e161411_)))
                        (if (gx#core-library-module-path? _e161411_)
                            (_recur161409_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _e161411_)))
                            (error '"Cannot eval module" _obj161405_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_ctx161388_)
        (let _lp161390_ ((_e161392_ _ctx161388_))
          (if (or (##structure-instance-of? _e161392_ 'gx#module-context::t)
                  (##structure-instance-of? _e161392_ 'gx#local-context::t))
              (_lp161390_
               (##unchecked-structure-ref _e161392_ '3 gx#phi-context::t '#f))
              (if (##structure-instance-of? _e161392_ 'gx#prelude-context::t)
                  _e161392_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_ctx161401_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _ctx161401_))))
    (define gx#core-context-prelude
      (lambda _g167009_
        (let ((_g167008_ (##length _g167009_)))
          (cond ((##fx= _g167008_ 0)
                 (apply (lambda () (gx#core-context-prelude__0)) _g167009_))
                ((##fx= _g167008_ 1)
                 (apply (lambda (_ctx161403_)
                          (gx#core-context-prelude__% _ctx161403_))
                        _g167009_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g167009_))))))
    (define gx#core-module->prelude-context
      (lambda (_ctx161378_)
        (let* ((_ht161380_ (gx#current-expander-module-registry))
               (_$e161382_ (table-ref _ht161380_ _ctx161378_ '#f)))
          (if _$e161382_
              (values _$e161382_)
              (let ((_pre161385_
                     (let ((__obj167000
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
                       (gx#prelude-context:::init! __obj167000 _ctx161378_)
                       __obj167000)))
                (table-set! _ht161380_ _ctx161378_ _pre161385_)
                _pre161385_)))))
    (define gx#core-import-module__%
      (lambda (_rpath161259_ _reload?161260_)
        (letrec ((_import-source161262_
                  (lambda (_path161347_)
                    (if (member _path161347_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _path161347_)
                        '#!void)
                    (call-with-parameters
                     (lambda ()
                       (let ((_g167010_ (gx#core-read-module _path161347_)))
                         (begin
                           (let ((_g167011_
                                  (if (##values? _g167010_)
                                      (##vector-length _g167010_)
                                      1)))
                             (if (not (##fx= _g167011_ 4))
                                 (error "Context expects 4 values" _g167011_)))
                           (let ((_pre161350_ (##vector-ref _g167010_ 0))
                                 (_id161351_ (##vector-ref _g167010_ 1))
                                 (_ns161352_ (##vector-ref _g167010_ 2))
                                 (_body161353_ (##vector-ref _g167010_ 3)))
                             (let* ((_prelude161358_
                                     (if (##structure-instance-of?
                                          _pre161350_
                                          'gx#prelude-context::t)
                                         _pre161350_
                                         (if (##structure-instance-of?
                                              _pre161350_
                                              'gx#module-context::t)
                                             (gx#core-module->prelude-context
                                              _pre161350_)
                                             (if (string? _pre161350_)
                                                 (gx#core-module->prelude-context
                                                  (gx#core-import-module__0
                                                   _pre161350_))
                                                 (if (not _pre161350_)
                                                     (let ((_$e161355_
                                                            (gx#current-expander-module-prelude)))
                                                       (if _$e161355_
                                                           _$e161355_
                                                           (let ((__obj167001
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
                     (gx#prelude-context:::init! __obj167001 '#f)
                     __obj167001)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error '"Cannot import module; unknown prelude"
                                                            _rpath161259_
                                                            _pre161350_))))))
                                    (_ctx161360_
                                     (let ((__obj167002
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
                                        __obj167002
                                        _id161351_
                                        _prelude161358_
                                        _ns161352_
                                        _path161347_)
                                       __obj167002))
                                    (_body161362_
                                     (gx#core-expand-module-begin
                                      _body161353_
                                      _ctx161360_))
                                    (_body161364_
                                     (gx#core-quote-syntax__%
                                      (gx#core-cons '%#begin _body161362_)
                                      _path161347_
                                      _ctx161360_
                                      '())))
                               (##unchecked-structure-set!
                                _ctx161360_
                                (make-promise
                                 (lambda () (gx#eval-syntax* _body161364_)))
                                '10
                                gx#module-context::t
                                '#f)
                               (##unchecked-structure-set!
                                _ctx161360_
                                _body161364_
                                '11
                                gx#module-context::t
                                '#f)
                               (table-set!
                                (gx#current-expander-module-registry)
                                _path161347_
                                _ctx161360_)
                               (table-set!
                                (gx#current-expander-module-registry)
                                _id161351_
                                _ctx161360_)
                               _ctx161360_)))))
                     gx#current-expander-context
                     (gx#core-context-root__0)
                     gx#current-expander-marks
                     '()
                     gx#current-expander-phi
                     '0
                     gx#current-expander-path
                     (cons _path161347_ (gx#current-expander-path))
                     gx#current-import-expander-phi
                     '#f
                     gx#current-export-expander-phi
                     '#f)))
                 (_import-submodule161263_
                  (lambda (_rpath161275_)
                    (let* ((_rpath161276161283_ _rpath161275_)
                           (_E161278161287_
                            (lambda ()
                              (error '"No clause matching"
                                     _rpath161276161283_)))
                           (_K161279161335_
                            (lambda (_refs161290_ _origin161291_)
                              (let ((_ctx161293_
                                     (if _origin161291_
                                         (gx#core-import-module__%
                                          _origin161291_
                                          _reload?161260_)
                                         (gx#current-expander-context))))
                                (let _lp161295_ ((_rest161297_ _refs161290_)
                                                 (_ctx161298_ _ctx161293_))
                                  (let* ((_rest161299161307_ _rest161297_)
                                         (_else161301161315_
                                          (lambda () _ctx161298_))
                                         (_K161303161323_
                                          (lambda (_rest161318_ _id161319_)
                                            (let ((_bind161321_
                                                   (gx#resolve-identifier__%
                                                    _id161319_
                                                    '0
                                                    _ctx161298_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _bind161321_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _bind161321_
                                                         '4
                                                         gx#syntax-binding::t
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_lp161295_
                                                   _rest161318_
                                                   (##unchecked-structure-ref
                                                    _bind161321_
                                                    '4
                                                    gx#syntax-binding::t
                                                    '#f))
                                                  (error '"Cannot import submodule; not bound as a module"
                                                         _rpath161275_
                                                         _id161319_
                                                         _bind161321_))))))
                                    (if (##pair? _rest161299161307_)
                                        (let ((_hd161304161326_
                                               (##car _rest161299161307_))
                                              (_tl161305161328_
                                               (##cdr _rest161299161307_)))
                                          (let* ((_id161331_ _hd161304161326_)
                                                 (_rest161333_
                                                  _tl161305161328_))
                                            (_K161303161323_
                                             _rest161333_
                                             _id161331_)))
                                        (_else161301161315_))))))))
                      (if (##pair? _rpath161276161283_)
                          (let ((_hd161280161338_ (##car _rpath161276161283_))
                                (_tl161281161340_ (##cdr _rpath161276161283_)))
                            (let* ((_origin161343_ _hd161280161338_)
                                   (_refs161345_ _tl161281161340_))
                              (_K161279161335_ _refs161345_ _origin161343_)))
                          (_E161278161287_))))))
          (let ((_$e161265_
                 (if (not _reload?161260_)
                     (table-ref
                      (gx#current-expander-module-registry)
                      _rpath161259_
                      '#f)
                     '#f)))
            (if _$e161265_
                (values _$e161265_)
                (if (list? _rpath161259_)
                    (_import-submodule161263_ _rpath161259_)
                    (if (gx#core-library-module-path? _rpath161259_)
                        (let ((_ctx161268_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _rpath161259_)
                                _reload?161260_)))
                          (table-set!
                           (gx#current-expander-module-registry)
                           _rpath161259_
                           _ctx161268_)
                          _ctx161268_)
                        (let* ((_npath161270_ (path-normalize _rpath161259_))
                               (_$e161272_
                                (if (not _reload?161260_)
                                    (table-ref
                                     (gx#current-expander-module-registry)
                                     _npath161270_
                                     '#f)
                                    '#f)))
                          (if _$e161272_
                              (values _$e161272_)
                              (_import-source161262_ _npath161270_))))))))))
    (define gx#core-import-module__0
      (lambda (_rpath161371_)
        (let ((_reload?161373_ '#f))
          (gx#core-import-module__% _rpath161371_ _reload?161373_))))
    (define gx#core-import-module
      (lambda _g167013_
        (let ((_g167012_ (##length _g167013_)))
          (cond ((##fx= _g167012_ 1)
                 (apply (lambda (_rpath161371_)
                          (gx#core-import-module__0 _rpath161371_))
                        _g167013_))
                ((##fx= _g167012_ 2)
                 (apply (lambda (_rpath161375_ _reload?161376_)
                          (gx#core-import-module__%
                           _rpath161375_
                           _reload?161376_))
                        _g167013_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g167013_))))))
    (define gx#core-read-module
      (lambda (_path161248_)
        (with-catch
         (lambda (_exn161250_)
           (if (and (datum-parsing-exception? _exn161250_)
                    (eq? (datum-parsing-exception-filepos _exn161250_) '0))
               (gx#core-read-module/lang _path161248_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _path161248_
                (call-with-parameters
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_g161252161254_)
                      (display-exception _exn161250_ _g161252161254_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _path161248_)))))
    (define gx#core-read-module/sexp
      (lambda (_path161111_)
        (let _lp161113_ ((_body161115_ (read-syntax-from-file _path161111_))
                         (_pre161116_ '#f)
                         (_ns161117_ '#f)
                         (_pkg161118_ '#f))
          (let* ((_e161119161143_ _body161115_)
                 (_E161135161165_
                  (lambda ()
                    (let ((_g167014_
                           (if _pkg161118_
                               (values _pre161116_ _ns161117_ _pkg161118_)
                               (gx#core-read-module-package
                                _path161111_
                                _pre161116_
                                _ns161117_))))
                      (begin
                        (let ((_g167015_
                               (if (##values? _g167014_)
                                   (##vector-length _g167014_)
                                   1)))
                          (if (not (##fx= _g167015_ 3))
                              (error "Context expects 3 values" _g167015_)))
                        (let ((_pre161147_ (##vector-ref _g167014_ 0))
                              (_ns161148_ (##vector-ref _g167014_ 1))
                              (_pkg161149_ (##vector-ref _g167014_ 2)))
                          (let* ((_prelude161151_
                                  (if (gx#core-bound-module-prelude?
                                       _pre161147_)
                                      (gx#syntax-local-e__0 _pre161147_)
                                      (if (gx#core-library-module-path?
                                           _pre161147_)
                                          (gx#core-resolve-library-module-path
                                           _pre161147_)
                                          (if (gx#stx-string? _pre161147_)
                                              (gx#core-resolve-module-path__%
                                               _pre161147_
                                               _path161111_)
                                              (gx#stx-e _pre161147_)))))
                                 (_path-id161153_
                                  (gx#core-module-path->namespace
                                   _path161111_))
                                 (_pkg-id161155_
                                  (if _pkg161149_
                                      (string-append
                                       _pkg161149_
                                       '"/"
                                       _path-id161153_)
                                      _path-id161153_))
                                 (_module-id161157_
                                  (string->symbol _pkg-id161155_))
                                 (_module-ns161162_
                                  (if (eq? _ns161148_ '#!void)
                                      '#f
                                      (let ((_$e161159_ _ns161148_))
                                        (if _$e161159_
                                            _$e161159_
                                            _pkg-id161155_)))))
                            (values _prelude161151_
                                    _module-id161157_
                                    _module-ns161162_
                                    _body161115_)))))))
                 (_E161128161194_
                  (lambda ()
                    (if (gx#stx-pair? _e161119161143_)
                        (let ((_e161136161169_ (gx#syntax-e _e161119161143_)))
                          (let ((_hd161137161172_ (##car _e161136161169_))
                                (_tl161138161174_ (##cdr _e161136161169_)))
                            (if (eq? (gx#stx-e _hd161137161172_) 'package:)
                                (if (gx#stx-pair? _tl161138161174_)
                                    (let ((_e161139161177_
                                           (gx#syntax-e _tl161138161174_)))
                                      (let ((_hd161140161180_
                                             (##car _e161139161177_))
                                            (_tl161141161182_
                                             (##cdr _e161139161177_)))
                                        (let* ((_pkg161185_ _hd161140161180_)
                                               (_rest161187_ _tl161141161182_))
                                          (if '#t
                                              (let ((_pkg161192_
                                                     (if (gx#identifier?
                                                          _pkg161185_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _pkg161185_))
                                                         (if (or (gx#stx-string?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _pkg161185_)
                         (gx#stx-false? _pkg161185_))
                     (gx#stx-e _pkg161185_)
                     (gx#raise-syntax-error
                      'import
                      '"Bad syntax; Illegal package name"
                      _pkg161185_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp161113_
                                                 _rest161187_
                                                 _pre161116_
                                                 _ns161117_
                                                 _pkg161192_))
                                              (_E161135161165_)))))
                                    (_E161135161165_))
                                (_E161135161165_))))
                        (_E161135161165_))))
                 (_E161121161220_
                  (lambda ()
                    (if (gx#stx-pair? _e161119161143_)
                        (let ((_e161129161198_ (gx#syntax-e _e161119161143_)))
                          (let ((_hd161130161201_ (##car _e161129161198_))
                                (_tl161131161203_ (##cdr _e161129161198_)))
                            (if (eq? (gx#stx-e _hd161130161201_) 'namespace:)
                                (if (gx#stx-pair? _tl161131161203_)
                                    (let ((_e161132161206_
                                           (gx#syntax-e _tl161131161203_)))
                                      (let ((_hd161133161209_
                                             (##car _e161132161206_))
                                            (_tl161134161211_
                                             (##cdr _e161132161206_)))
                                        (let* ((_ns161214_ _hd161133161209_)
                                               (_rest161216_ _tl161134161211_))
                                          (if '#t
                                              (let ((_ns161218_
                                                     (if (gx#identifier?
                                                          _ns161214_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _ns161214_))
                                                         (if (gx#stx-string?
                                                              _ns161214_)
                                                             (gx#stx-e
                                                              _ns161214_)
                                                             (if (gx#stx-false?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _ns161214_)
                         '#!void
                         (gx#raise-syntax-error
                          'import
                          '"Bad syntax; illegal namespace"
                          _ns161214_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp161113_
                                                 _rest161216_
                                                 _pre161116_
                                                 _ns161218_
                                                 _pkg161118_))
                                              (_E161128161194_)))))
                                    (_E161128161194_))
                                (_E161128161194_))))
                        (_E161128161194_))))
                 (_E161120161244_
                  (lambda ()
                    (if (gx#stx-pair? _e161119161143_)
                        (let ((_e161122161224_ (gx#syntax-e _e161119161143_)))
                          (let ((_hd161123161227_ (##car _e161122161224_))
                                (_tl161124161229_ (##cdr _e161122161224_)))
                            (if (eq? (gx#stx-e _hd161123161227_) 'prelude:)
                                (if (gx#stx-pair? _tl161124161229_)
                                    (let ((_e161125161232_
                                           (gx#syntax-e _tl161124161229_)))
                                      (let ((_hd161126161235_
                                             (##car _e161125161232_))
                                            (_tl161127161237_
                                             (##cdr _e161125161232_)))
                                        (let* ((_prelude161240_
                                                _hd161126161235_)
                                               (_rest161242_ _tl161127161237_))
                                          (if '#t
                                              (_lp161113_
                                               _rest161242_
                                               _prelude161240_
                                               _ns161117_
                                               _pkg161118_)
                                              (_E161121161220_)))))
                                    (_E161121161220_))
                                (_E161121161220_))))
                        (_E161121161220_)))))
            (_E161120161244_)))))
    (define gx#core-read-module/lang
      (lambda (_path160938_)
        (letrec ((_default-read-module-body160940_
                  (lambda (_inp161103_)
                    (let _lp161105_ ((_body161107_ '()))
                      (let ((_next161109_ (read-syntax _inp161103_)))
                        (if (eof-object? _next161109_)
                            (reverse _body161107_)
                            (_lp161105_ (cons _next161109_ _body161107_)))))))
                 (_read-body160941_
                  (lambda (_inp161022_
                           _pre161023_
                           _ns161024_
                           _pkg161025_
                           _args161026_)
                    (let ((_g167016_
                           (if _pkg161025_
                               (values _pre161023_ _ns161024_ _pkg161025_)
                               (gx#core-read-module-package
                                _path160938_
                                _pre161023_
                                _ns161024_))))
                      (begin
                        (let ((_g167017_
                               (if (##values? _g167016_)
                                   (##vector-length _g167016_)
                                   1)))
                          (if (not (##fx= _g167017_ 3))
                              (error "Context expects 3 values" _g167017_)))
                        (let ((_pre161028_ (##vector-ref _g167016_ 0))
                              (_ns161029_ (##vector-ref _g167016_ 1))
                              (_pkg161030_ (##vector-ref _g167016_ 2)))
                          (let* ((_prelude161032_
                                  (gx#import-module__0 _pre161028_))
                                 (_read-module-body161086_
                                  (let ((_$e161078_
                                         (find (lambda (_e161033161035_)
                                                 (let* ((_g161037161047_
                                                         _e161033161035_)
                                                        (_else161039161055_
                                                         (lambda () '#f))
                                                        (_K161041161059_
                                                         (lambda () '#t)))
                                                   (if (##structure-direct-instance-of?
                                                        _g161037161047_
                                                        'gx#module-export::t)
                                                       (let* ((_e161042161062_
                                                               (##unchecked-structure-ref
                                                                _g161037161047_
                                                                '1
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e161043161065_
                                                               (##unchecked-structure-ref
                                                                _g161037161047_
                                                                '2
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e161044161068_
                                                               (##unchecked-structure-ref
                                                                _g161037161047_
                                                                '3
                                                                gx#module-export::t
                                                                '#f)))
                                                         (if (##eq? _e161044161068_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)
                     (let ((_e161045161071_
                            (##unchecked-structure-ref
                             _g161037161047_
                             '4
                             gx#module-export::t
                             '#f)))
                       (if ((lambda (_g161073161075_)
                              (eq? _g161073161075_ 'read-module-body))
                            _e161045161071_)
                           (_K161041161059_)
                           (_else161039161055_)))
                     (_else161039161055_)))
               (_else161039161055_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (##unchecked-structure-ref
                                                _prelude161032_
                                                '9
                                                gx#module-context::t
                                                '#f))))
                                    (if _$e161078_
                                        ((lambda (_xport161081_)
                                           (let ((_proc161084_
                                                  (with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _xport161081_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _proc161084_)
                                                 _proc161084_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _path160938_
                                                  _pre161028_
                                                  _proc161084_))))
                                         _$e161078_)
                                        _default-read-module-body160940_)))
                                 (_path-id161088_
                                  (gx#core-module-path->namespace
                                   _path160938_))
                                 (_pkg-id161090_
                                  (if _pkg161030_
                                      (string-append
                                       _pkg161030_
                                       '"/"
                                       _path-id161088_)
                                      _path-id161088_))
                                 (_module-id161092_
                                  (string->symbol _pkg-id161090_))
                                 (_module-ns161097_
                                  (let ((_$e161094_ _ns161029_))
                                    (if _$e161094_ _$e161094_ _pkg-id161090_)))
                                 (_body161100_
                                  (call-with-parameters
                                   (lambda ()
                                     (_read-module-body161086_ _inp161022_))
                                   gx#current-module-reader-path
                                   _path160938_
                                   gx#current-module-reader-args
                                   _args161026_)))
                            (values _prelude161032_
                                    _module-id161092_
                                    _module-ns161097_
                                    _body161100_)))))))
                 (_string-e160942_
                  (lambda (_obj161019_ _what161020_)
                    (if (string? _obj161019_)
                        _obj161019_
                        (if (symbol? _obj161019_)
                            (symbol->string _obj161019_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _what161020_)
                             _path160938_
                             _obj161019_)))))
                 (_read-lang-args160943_
                  (lambda (_inp160974_ _args160975_)
                    (let* ((_args160976160984_ _args160975_)
                           (_else160978160992_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _path160938_)))
                           (_K160980161007_
                            (lambda (_args160995_ _prelude160996_)
                              (let* ((_pkg160998_
                                      (pgetq 'package: _args160995_))
                                     (_pkg161000_
                                      (if _pkg160998_
                                          (_string-e160942_
                                           _pkg160998_
                                           '"package")
                                          '#f))
                                     (_ns161002_
                                      (pgetq 'namespace: _args160995_))
                                     (_ns161004_
                                      (if _ns161002_
                                          (_string-e160942_
                                           _ns161002_
                                           '"namespace")
                                          '#f)))
                                (_read-body160941_
                                 _inp160974_
                                 _prelude160996_
                                 _ns161004_
                                 _pkg161000_
                                 _args160995_)))))
                      (if (##pair? _args160976160984_)
                          (let ((_hd160981161010_ (##car _args160976160984_))
                                (_tl160982161012_ (##cdr _args160976160984_)))
                            (let* ((_prelude161015_ _hd160981161010_)
                                   (_args161017_ _tl160982161012_))
                              (_K160980161007_ _args161017_ _prelude161015_)))
                          (_else160978160992_)))))
                 (_read-lang160944_
                  (lambda (_inp160949_)
                    (let* ((_head160951_ (read-line _inp160949_))
                           (_$e160953_ (string-index _head160951_ '#\space)))
                      (if _$e160953_
                          ((lambda (_ix160956_)
                             (let ((_lang160958_
                                    (substring _head160951_ '0 _ix160956_)))
                               (if (equal? _lang160958_ '"#lang")
                                   (let* ((_rest160960_
                                           (substring
                                            _head160951_
                                            (fx+ _ix160956_ '1)
                                            (string-length _head160951_)))
                                          (_args160971_
                                           (with-catch
                                            (lambda (_g160961160963_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _path160938_
                                               _g160961160963_))
                                            (lambda ()
                                              (call-with-input-string
                                               _rest160960_
                                               (lambda (_g160966160968_)
                                                 (read-all
                                                  _g160966160968_
                                                  read)))))))
                                     (_read-lang-args160943_
                                      _inp160949_
                                      _args160971_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _path160938_))))
                           _$e160953_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _path160938_)))))
                 (_read-e160945_
                  (lambda (_inp160947_)
                    (if (eq? (peek-char _inp160947_) '#\#)
                        (_read-lang160944_ _inp160947_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _path160938_)))))
          (gx#call-with-input-source-file _path160938_ _read-e160945_))))
    (define gx#core-read-module-package
      (lambda (_path160892_ _pre160893_ _ns160894_)
        (letrec ((_string-e160896_
                  (lambda (_e160936_)
                    (if (symbol? _e160936_)
                        (symbol->string _e160936_)
                        (if (string? _e160936_)
                            _e160936_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _e160936_))))))
          (let _lp160898_ ((_dir160900_ (path-directory _path160892_))
                           (_pkg-path160901_ '()))
            (let ((_gerbil.pkg160903_ (path-expand '"gerbil.pkg" _dir160900_)))
              (if (file-exists? _gerbil.pkg160903_)
                  (let ((_plist160905_
                         (gx#core-library-package-plist__% _dir160900_ '#t)))
                    (if (null? _plist160905_)
                        (let ((_pkg160907_
                               (if (not (null? _pkg-path160901_))
                                   (string-join _pkg-path160901_ '"/")
                                   '#f)))
                          (values _pre160893_ _ns160894_ _pkg160907_))
                        (if (list? _plist160905_)
                            (let* ((_root160909_
                                    (pgetq 'package: _plist160905_))
                                   (_pkg160913_
                                    (let ((_pkg-path160911_
                                           (if _root160909_
                                               (cons (_string-e160896_
                                                      _root160909_)
                                                     _pkg-path160901_)
                                               _pkg-path160901_)))
                                      (if (not (null? _pkg-path160911_))
                                          (string-join _pkg-path160911_ '"/")
                                          '#f)))
                                   (_ns160920_
                                    (let ((_ns160918_
                                           (let ((_$e160915_ _ns160894_))
                                             (if _$e160915_
                                                 _$e160915_
                                                 (pgetq 'namespace:
                                                        _plist160905_)))))
                                      (if _ns160918_
                                          (_string-e160896_ _ns160918_)
                                          '#f)))
                                   (_pre160925_
                                    (let ((_$e160922_ _pre160893_))
                                      (if _$e160922_
                                          _$e160922_
                                          (pgetq 'prelude: _plist160905_)))))
                              (values _pre160925_ _ns160920_ _pkg160913_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _plist160905_))))
                  (let ((_dir*160928_
                         (path-strip-trailing-directory-separator
                          _dir160900_)))
                    (if (or (string-empty? _dir*160928_)
                            (equal? _dir160900_ _dir*160928_))
                        (values _pre160893_ _ns160894_ '#f)
                        (let ((_xpath160933_
                               (path-strip-directory _dir*160928_))
                              (_xdir160934_ (path-directory _dir*160928_)))
                          (_lp160898_
                           _xdir160934_
                           (cons _xpath160933_ _pkg-path160901_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_path160890_)
        (path-strip-extension (path-strip-directory _path160890_))))
    (define gx#core-module-path->id
      (lambda (_path160888_)
        (string->symbol (gx#core-module-path->namespace _path160888_))))
    (define gx#core-resolve-module-path__%
      (lambda (_stx-path160867_ _rel160868_)
        (let* ((_path160870_ (gx#stx-e _stx-path160867_))
               (_path160872_
                (if (string-empty? (path-extension _path160870_))
                    (string-append _path160870_ '".ss")
                    _path160870_)))
          (gx#core-resolve-path__%
           _path160872_
           (let ((_$e160875_ (gx#stx-source _stx-path160867_)))
             (if _$e160875_ _$e160875_ _rel160868_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_stx-path160881_)
        (let ((_rel160883_ '#f))
          (gx#core-resolve-module-path__% _stx-path160881_ _rel160883_))))
    (define gx#core-resolve-module-path
      (lambda _g167019_
        (let ((_g167018_ (##length _g167019_)))
          (cond ((##fx= _g167018_ 1)
                 (apply (lambda (_stx-path160881_)
                          (gx#core-resolve-module-path__0 _stx-path160881_))
                        _g167019_))
                ((##fx= _g167018_ 2)
                 (apply (lambda (_stx-path160885_ _rel160886_)
                          (gx#core-resolve-module-path__%
                           _stx-path160885_
                           _rel160886_))
                        _g167019_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g167019_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_libpath160753_)
        (let* ((_spath160755_ (symbol->string (gx#stx-e _libpath160753_)))
               (_spath160757_
                (substring _spath160755_ '1 (string-length _spath160755_)))
               (_ext160759_ (path-extension _spath160757_))
               (_ssi160761_
                (if (string-empty? _ext160759_)
                    (string-append _spath160757_ '".ssi")
                    (string-append
                     (path-strip-extension _spath160757_)
                     '".ssi")))
               (_srcs160765_
                (if (string-empty? _ext160759_)
                    (map (lambda (_ext160763_)
                           (string-append _spath160757_ _ext160763_))
                         '(".ss" ".sld" ".scm"))
                    (cons _spath160757_ '()))))
          (let _lp160768_ ((_rest160770_
                            (gx#current-expander-module-library-path)))
            (let* ((_rest160771160780_ _rest160770_)
                   (_E160774160784_
                    (lambda ()
                      (error '"No clause matching" _rest160771160780_))))
              (let ((_K160776160854_
                     (lambda (_rest160795_ _dir160796_)
                       (letrec ((_resolve160798_
                                 (lambda (_ssi160810_ _srcs160811_)
                                   (let ((_compiled-path160813_
                                          (path-expand
                                           _ssi160810_
                                           _dir160796_)))
                                     (if (file-exists? _compiled-path160813_)
                                         (path-normalize _compiled-path160813_)
                                         (let _lpr160815_ ((_rest-src160817_
                                                            _srcs160811_))
                                           (let* ((_rest-src160818160826_
                                                   _rest-src160817_)
                                                  (_else160820160834_
                                                   (lambda ()
                                                     (_lp160768_
                                                      _rest160795_)))
                                                  (_K160822160842_
                                                   (lambda (_rest-src160837_
                                                            _src160838_)
                                                     (let ((_src-path160840_
                                                            (path-expand
                                                             _src160838_
                                                             _dir160796_)))
                                                       (if (file-exists?
                                                            _src-path160840_)
                                                           (path-normalize
                                                            _src-path160840_)
                                                           (_lpr160815_
                                                            _rest-src160837_))))))
                                             (if (##pair? _rest-src160818160826_)
                                                 (let ((_hd160823160845_
                                                        (##car _rest-src160818160826_))
                                                       (_tl160824160847_
                                                        (##cdr _rest-src160818160826_)))
                                                   (let* ((_src160850_
                                                           _hd160823160845_)
                                                          (_rest-src160852_
                                                           _tl160824160847_))
                                                     (_K160822160842_
                                                      _rest-src160852_
                                                      _src160850_)))
                                                 (_else160820160834_)))))))))
                         (let ((_$e160800_
                                (gx#core-library-package-path-prefix
                                 _dir160796_)))
                           (if _$e160800_
                               ((lambda (_prefix160803_)
                                  (if (string-prefix?
                                       _prefix160803_
                                       _spath160757_)
                                      (let ((_ssi160807_
                                             (substring
                                              _ssi160761_
                                              (string-length _prefix160803_)
                                              (string-length _ssi160761_)))
                                            (_srcs160808_
                                             (map (lambda (_src160805_)
                                                    (substring
                                                     _src160805_
                                                     (string-length
                                                      _prefix160803_)
                                                     (string-length
                                                      _src160805_)))
                                                  _srcs160765_)))
                                        (_resolve160798_
                                         _ssi160807_
                                         _srcs160808_))
                                      (_lp160768_ _rest160795_)))
                                _$e160800_)
                               (_resolve160798_ _ssi160761_ _srcs160765_))))))
                    (_K160775160789_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"Cannot find library module"
                        _libpath160753_))))
                (let ((_try-match160773160792_
                       (lambda ()
                         (if (##null? _rest160771160780_)
                             (_K160775160789_)
                             (_E160774160784_)))))
                  (if (##pair? _rest160771160780_)
                      (let ((_tl160778160859_ (##cdr _rest160771160780_))
                            (_hd160777160857_ (##car _rest160771160780_)))
                        (let ((_dir160862_ _hd160777160857_)
                              (_rest160864_ _tl160778160859_))
                          (_K160776160854_ _rest160864_ _dir160862_)))
                      (_try-match160773160792_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_modpath160726_)
        (letrec ((_resolve160728_
                  (lambda (_path160745_ _base160746_)
                    (let ((_$e160748_ (string-rindex _base160746_ '#\/)))
                      (if _$e160748_
                          ((lambda (_idx160751_)
                             (gx#core-resolve-library-module-path
                              (string->symbol
                               (string-append
                                '":"
                                (substring _base160746_ '0 _idx160751_)
                                '"/"
                                _path160745_))))
                           _$e160748_)
                          (gx#core-resolve-library-module-path
                           (string->symbol
                            (string-append '":" _path160745_))))))))
          (let ((_spath160730_ (symbol->string (gx#stx-e _modpath160726_)))
                (_mod160731_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _mod160731_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"Cannot resolve relative module path; not in module context"
                 _modpath160726_))
            (let ((_mpath160733_
                   (symbol->string
                    (##structure-ref
                     _mod160731_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _lp160735_ ((_spath160737_ _spath160730_)
                               (_mpath160738_ _mpath160733_))
                (if (string-prefix? '"../" _spath160737_)
                    (let ((_$e160740_ (string-rindex _mpath160738_ '#\/)))
                      (if _$e160740_
                          ((lambda (_idx160743_)
                             (_lp160735_
                              (substring
                               _spath160737_
                               '3
                               (string-length _spath160737_))
                              (substring _mpath160738_ '0 _idx160743_)))
                           _$e160740_)
                          (gx#raise-syntax-error
                           '#f
                           '"Cannot resolve relative module path; illegal traversal"
                           _modpath160726_)))
                    (if (string-prefix? '"./" _spath160737_)
                        (_lp160735_
                         (substring
                          _spath160737_
                          '2
                          (string-length _spath160737_))
                         _mpath160738_)
                        (_resolve160728_ _spath160737_ _mpath160738_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_dir160719_)
        (let ((_$e160721_
               (pgetq 'package:
                      (gx#core-library-package-plist__0 _dir160719_))))
          (if _$e160721_
              ((lambda (_pkg160724_)
                 (string-append (symbol->string _pkg160724_) '"/"))
               _$e160721_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_dir160691_ _exists?160692_)
        (let* ((_cache160694_ (gx#core-library-package-cache))
               (_$e160696_ (table-ref _cache160694_ _dir160691_ '#f)))
          (if _$e160696_
              (values _$e160696_)
              (let* ((_gerbil.pkg160699_
                      (path-expand '"gerbil.pkg" _dir160691_))
                     (_plist160706_
                      (if (or _exists?160692_
                              (file-exists? _gerbil.pkg160699_))
                          (let ((_e160704_
                                 (gx#call-with-input-source-file
                                  _gerbil.pkg160699_
                                  read)))
                            (if (eof-object? _e160704_)
                                '()
                                (if (list? _e160704_)
                                    _e160704_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _gerbil.pkg160699_
                                     _e160704_))))
                          '())))
                (table-set! _cache160694_ _dir160691_ _plist160706_)
                _plist160706_)))))
    (define gx#core-library-package-plist__0
      (lambda (_dir160712_)
        (let ((_exists?160714_ '#f))
          (gx#core-library-package-plist__% _dir160712_ _exists?160714_))))
    (define gx#core-library-package-plist
      (lambda _g167021_
        (let ((_g167020_ (##length _g167021_)))
          (cond ((##fx= _g167020_ 1)
                 (apply (lambda (_dir160712_)
                          (gx#core-library-package-plist__0 _dir160712_))
                        _g167021_))
                ((##fx= _g167020_ 2)
                 (apply (lambda (_dir160716_ _exists?160717_)
                          (gx#core-library-package-plist__%
                           _dir160716_
                           _exists?160717_))
                        _g167021_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g167021_))))))
    (define gx#core-library-package-cache
      (lambda ()
        (let ((_$e160685_ (gx#current-expander-module-library-package-cache)))
          (if _$e160685_
              (values _$e160685_)
              (let ((_cache160688_ (make-table)))
                (gx#current-expander-module-library-package-cache
                 _cache160688_)
                _cache160688_)))))
    (define gx#core-library-module-path?
      (lambda (_stx160682_) (gx#core-special-module-path? _stx160682_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_stx160680_) (gx#core-special-module-path? _stx160680_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_stx160675_ _char160676_)
        (if (gx#identifier? _stx160675_)
            (if (interned-symbol? (gx#stx-e _stx160675_))
                (let ((_str160678_ (symbol->string (gx#stx-e _stx160675_))))
                  (if (fx> (string-length _str160678_) '1)
                      (eq? (string-ref _str160678_ '0) _char160676_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_stx160669_)
        (gx#core-bound-identifier?__%
         _stx160669_
         (lambda (_g160670160672_)
           (gx#expander-binding?__% _g160670160672_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_stx160663_)
        (gx#core-bound-identifier?__%
         _stx160663_
         (lambda (_g160664160666_)
           (gx#expander-binding?__% _g160664160666_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_stx160650_)
        (letrec ((_module-prelude?160652_
                  (lambda (_e160658_)
                    (let ((_$e160660_
                           (##structure-instance-of?
                            _e160658_
                            'gx#module-context::t)))
                      (if _$e160660_
                          _$e160660_
                          (##structure-instance-of?
                           _e160658_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _stx160650_
           (lambda (_g160653160655_)
             (gx#expander-binding?__%
              _g160653160655_
              _module-prelude?160652_))))))
    (define gx#core-bind-import!__%
      (lambda (_in160580_ _ctx160581_ _force-weak?160582_)
        (let* ((_in160583160592_ _in160580_)
               (_E160585160596_
                (lambda () (error '"No clause matching" _in160583160592_)))
               (_K160586160609_
                (lambda (_weak?160599_ _phi160600_ _key160601_ _source160602_)
                  (gx#core-bind!__%
                   _key160601_
                   (let ((_e160604_
                          (gx#core-resolve-module-export _source160602_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref
                       _e160604_
                       '1
                       gx#binding::t
                       '#f)
                      _key160601_
                      _phi160600_
                      _e160604_
                      (##unchecked-structure-ref
                       _source160602_
                       '1
                       gx#module-export::t
                       '#f)
                      (let ((_$e160606_ _force-weak?160582_))
                        (if _$e160606_ _$e160606_ _weak?160599_))))
                   gx#core-context-rebind?
                   _phi160600_
                   _ctx160581_))))
          (if (##structure-direct-instance-of?
               _in160583160592_
               'gx#module-import::t)
              (let* ((_e160587160612_
                      (##unchecked-structure-ref
                       _in160583160592_
                       '1
                       gx#module-import::t
                       '#f))
                     (_source160615_ _e160587160612_)
                     (_e160588160617_
                      (##unchecked-structure-ref
                       _in160583160592_
                       '2
                       gx#module-import::t
                       '#f))
                     (_key160620_ _e160588160617_)
                     (_e160589160622_
                      (##unchecked-structure-ref
                       _in160583160592_
                       '3
                       gx#module-import::t
                       '#f))
                     (_phi160625_ _e160589160622_)
                     (_e160590160627_
                      (##unchecked-structure-ref
                       _in160583160592_
                       '4
                       gx#module-import::t
                       '#f))
                     (_weak?160630_ _e160590160627_))
                (_K160586160609_
                 _weak?160630_
                 _phi160625_
                 _key160620_
                 _source160615_))
              (_E160585160596_)))))
    (define gx#core-bind-import!__0
      (lambda (_in160635_)
        (let* ((_ctx160637_ (gx#current-expander-context))
               (_force-weak?160639_ '#f))
          (gx#core-bind-import!__%
           _in160635_
           _ctx160637_
           _force-weak?160639_))))
    (define gx#core-bind-import!__1
      (lambda (_in160641_ _ctx160642_)
        (let ((_force-weak?160644_ '#f))
          (gx#core-bind-import!__%
           _in160641_
           _ctx160642_
           _force-weak?160644_))))
    (define gx#core-bind-import!
      (lambda _g167023_
        (let ((_g167022_ (##length _g167023_)))
          (cond ((##fx= _g167022_ 1)
                 (apply (lambda (_in160635_)
                          (gx#core-bind-import!__0 _in160635_))
                        _g167023_))
                ((##fx= _g167022_ 2)
                 (apply (lambda (_in160641_ _ctx160642_)
                          (gx#core-bind-import!__1 _in160641_ _ctx160642_))
                        _g167023_))
                ((##fx= _g167022_ 3)
                 (apply (lambda (_in160646_ _ctx160647_ _force-weak?160648_)
                          (gx#core-bind-import!__%
                           _in160646_
                           _ctx160647_
                           _force-weak?160648_))
                        _g167023_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g167023_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_in160566_ _ctx160567_)
        (gx#core-bind-import!__% _in160566_ _ctx160567_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_in160572_)
        (let ((_ctx160574_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _in160572_ _ctx160574_))))
    (define gx#core-bind-weak-import!
      (lambda _g167025_
        (let ((_g167024_ (##length _g167025_)))
          (cond ((##fx= _g167024_ 1)
                 (apply (lambda (_in160572_)
                          (gx#core-bind-weak-import!__0 _in160572_))
                        _g167025_))
                ((##fx= _g167024_ 2)
                 (apply (lambda (_in160576_ _ctx160577_)
                          (gx#core-bind-weak-import!__%
                           _in160576_
                           _ctx160577_))
                        _g167025_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g167025_))))))
    (define gx#core-resolve-module-export
      (lambda (_out160457_)
        (letrec ((_subst160459_
                  (lambda (_key160505_)
                    (let* ((_key160506160514_ _key160505_)
                           (_else160508160522_ (lambda () _key160505_))
                           (_K160510160553_
                            (lambda (_mark160525_ _id160526_)
                              (let* ((_mark160527160533_ _mark160525_)
                                     (_E160529160537_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark160527160533_)))
                                     (_K160530160545_
                                      (lambda (_subst160540_)
                                        (let ((_$e160542_
                                               (if _subst160540_
                                                   (table-ref
                                                    _subst160540_
                                                    _id160526_
                                                    '#f)
                                                   '#f)))
                                          (if _$e160542_
                                              _$e160542_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _key160505_))))))
                                (if (##structure-instance-of?
                                     _mark160527160533_
                                     'gx#expander-mark::t)
                                    (let* ((_e160531160548_
                                            (##unchecked-structure-ref
                                             _mark160527160533_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst160551_ _e160531160548_))
                                      (_K160530160545_ _subst160551_))
                                    (_E160529160537_))))))
                      (if (##pair? _key160506160514_)
                          (let ((_hd160511160556_ (##car _key160506160514_))
                                (_tl160512160558_ (##cdr _key160506160514_)))
                            (let* ((_id160561_ _hd160511160556_)
                                   (_mark160563_ _tl160512160558_))
                              (_K160510160553_ _mark160563_ _id160561_)))
                          (_else160508160522_))))))
          (let* ((_out160460160470_ _out160457_)
                 (_E160462160474_
                  (lambda () (error '"No clause matching" _out160460160470_)))
                 (_K160463160481_
                  (lambda (_phi160477_ _key160478_ _ctx160479_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _ctx160479_ _phi160477_)
                     (_subst160459_ _key160478_)))))
            (if (##structure-direct-instance-of?
                 _out160460160470_
                 'gx#module-export::t)
                (let* ((_e160464160484_
                        (##unchecked-structure-ref
                         _out160460160470_
                         '1
                         gx#module-export::t
                         '#f))
                       (_ctx160487_ _e160464160484_)
                       (_e160465160489_
                        (##unchecked-structure-ref
                         _out160460160470_
                         '2
                         gx#module-export::t
                         '#f))
                       (_key160492_ _e160465160489_)
                       (_e160466160494_
                        (##unchecked-structure-ref
                         _out160460160470_
                         '3
                         gx#module-export::t
                         '#f))
                       (_phi160497_ _e160466160494_)
                       (_e160467160499_
                        (##unchecked-structure-ref
                         _out160460160470_
                         '4
                         gx#module-export::t
                         '#f))
                       (_e160468160502_
                        (##unchecked-structure-ref
                         _out160460160470_
                         '5
                         gx#module-export::t
                         '#f)))
                  (_K160463160481_ _phi160497_ _key160492_ _ctx160487_))
                (_E160462160474_))))))
    (define gx#core-module-export->import__%
      (lambda (_out160382_ _rename160383_ _dphi160384_)
        (let* ((_out160385160395_ _out160382_)
               (_E160387160399_
                (lambda () (error '"No clause matching" _out160385160395_)))
               (_K160388160411_
                (lambda (_weak?160402_
                         _name160403_
                         _phi160404_
                         _key160405_
                         _ctx160406_)
                  (##structure
                   gx#module-import::t
                   _out160382_
                   (let ((_$e160408_ _rename160383_))
                     (if _$e160408_ _$e160408_ _name160403_))
                   (fx+ _phi160404_ _dphi160384_)
                   _weak?160402_))))
          (if (##structure-direct-instance-of?
               _out160385160395_
               'gx#module-export::t)
              (let* ((_e160389160414_
                      (##unchecked-structure-ref
                       _out160385160395_
                       '1
                       gx#module-export::t
                       '#f))
                     (_ctx160417_ _e160389160414_)
                     (_e160390160419_
                      (##unchecked-structure-ref
                       _out160385160395_
                       '2
                       gx#module-export::t
                       '#f))
                     (_key160422_ _e160390160419_)
                     (_e160391160424_
                      (##unchecked-structure-ref
                       _out160385160395_
                       '3
                       gx#module-export::t
                       '#f))
                     (_phi160427_ _e160391160424_)
                     (_e160392160429_
                      (##unchecked-structure-ref
                       _out160385160395_
                       '4
                       gx#module-export::t
                       '#f))
                     (_name160432_ _e160392160429_)
                     (_e160393160434_
                      (##unchecked-structure-ref
                       _out160385160395_
                       '5
                       gx#module-export::t
                       '#f))
                     (_weak?160437_ _e160393160434_))
                (_K160388160411_
                 _weak?160437_
                 _name160432_
                 _phi160427_
                 _key160422_
                 _ctx160417_))
              (_E160387160399_)))))
    (define gx#core-module-export->import__0
      (lambda (_out160442_)
        (let* ((_rename160444_ '#f) (_dphi160446_ '0))
          (gx#core-module-export->import__%
           _out160442_
           _rename160444_
           _dphi160446_))))
    (define gx#core-module-export->import__1
      (lambda (_out160448_ _rename160449_)
        (let ((_dphi160451_ '0))
          (gx#core-module-export->import__%
           _out160448_
           _rename160449_
           _dphi160451_))))
    (define gx#core-module-export->import
      (lambda _g167027_
        (let ((_g167026_ (##length _g167027_)))
          (cond ((##fx= _g167026_ 1)
                 (apply (lambda (_out160442_)
                          (gx#core-module-export->import__0 _out160442_))
                        _g167027_))
                ((##fx= _g167026_ 2)
                 (apply (lambda (_out160448_ _rename160449_)
                          (gx#core-module-export->import__1
                           _out160448_
                           _rename160449_))
                        _g167027_))
                ((##fx= _g167026_ 3)
                 (apply (lambda (_out160453_ _rename160454_ _dphi160455_)
                          (gx#core-module-export->import__%
                           _out160453_
                           _rename160454_
                           _dphi160455_))
                        _g167027_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g167027_))))))
    (define gx#core-expand-module%
      (lambda (_stx160310_)
        (letrec ((_make-context160312_
                  (lambda (_id160363_)
                    (let* ((_super160365_ (gx#current-expander-context))
                           (_bind-id160367_ (gx#stx-e _id160363_))
                           (_mod-id160369_
                            (if (##structure-instance-of?
                                 _super160365_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##structure-ref
                                  _super160365_
                                  '1
                                  gx#expander-context::t
                                  '#f)
                                 '"$"
                                 _bind-id160367_)
                                _bind-id160367_))
                           (_ns160371_ (symbol->string _mod-id160369_))
                           (_path160378_
                            (if (##structure-instance-of?
                                 _super160365_
                                 'gx#module-context::t)
                                (let ((_path160373_
                                       (##unchecked-structure-ref
                                        _super160365_
                                        '7
                                        gx#module-context::t
                                        '#f)))
                                  (if (or (pair? _path160373_)
                                          (null? _path160373_))
                                      (cons _bind-id160367_ _path160373_)
                                      (if (not _path160373_)
                                          _bind-id160367_
                                          (cons _bind-id160367_
                                                (cons _path160373_ '())))))
                                _bind-id160367_)))
                      (let ((__obj167003
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
                         __obj167003
                         _mod-id160369_
                         _super160365_
                         _ns160371_
                         _path160378_)
                        __obj167003)))))
          (let* ((_e160313160323_ _stx160310_)
                 (_E160315160327_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e160313160323_)))
                 (_E160314160359_
                  (lambda ()
                    (if (gx#stx-pair? _e160313160323_)
                        (let ((_e160316160331_ (gx#syntax-e _e160313160323_)))
                          (let ((_hd160317160334_ (##car _e160316160331_))
                                (_tl160318160336_ (##cdr _e160316160331_)))
                            (if (gx#stx-pair? _tl160318160336_)
                                (let ((_e160319160339_
                                       (gx#syntax-e _tl160318160336_)))
                                  (let ((_hd160320160342_
                                         (##car _e160319160339_))
                                        (_tl160321160344_
                                         (##cdr _e160319160339_)))
                                    (let* ((_id160347_ _hd160320160342_)
                                           (_body160349_ _tl160321160344_))
                                      (if (and (gx#identifier? _id160347_)
                                               (gx#stx-list? _body160349_))
                                          (let* ((_ctx160351_
                                                  (_make-context160312_
                                                   _id160347_))
                                                 (_body160353_
                                                  (gx#core-expand-module-begin
                                                   _body160349_
                                                   _ctx160351_))
                                                 (_body160355_
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body160353_)
                                                   (gx#stx-source
                                                    _stx160310_))))
                                            (##unchecked-structure-set!
                                             _ctx160351_
                                             (make-promise
                                              (lambda ()
                                                (gx#eval-syntax*
                                                 _body160355_)))
                                             '10
                                             gx#module-context::t
                                             '#f)
                                            (##unchecked-structure-set!
                                             _ctx160351_
                                             _body160355_
                                             '11
                                             gx#module-context::t
                                             '#f)
                                            (gx#core-bind-syntax!__0
                                             _id160347_
                                             _ctx160351_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-list
                                              '%#module
                                              (gx#core-quote-syntax__0
                                               _id160347_)
                                              _body160355_)
                                             (gx#stx-source _stx160310_)))
                                          (_E160315160327_)))))
                                (_E160315160327_))))
                        (_E160315160327_)))))
            (_E160314160359_)))))
    (define gx#core-expand-module-begin
      (lambda (_body160276_ _ctx160277_)
        (call-with-parameters
         (lambda ()
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_stx160280_
                   (gx#core-expand-head (cons '%%begin-module _body160276_)))
                  (_e160281160288_ _stx160280_)
                  (_E160283160292_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _stx160280_)))
                  (_E160282160306_
                   (lambda ()
                     (if (gx#stx-pair? _e160281160288_)
                         (let ((_e160284160296_ (gx#syntax-e _e160281160288_)))
                           (let ((_hd160285160299_ (##car _e160284160296_))
                                 (_tl160286160301_ (##cdr _e160284160296_)))
                             (if (and (gx#identifier? _hd160285160299_)
                                      (gx#core-identifier=?
                                       _hd160285160299_
                                       '%#begin-module))
                                 (let ((_body160304_ _tl160286160301_))
                                   (if '#t
                                       (if (gx#sealed-syntax? _stx160280_)
                                           _body160304_
                                           (gx#core-expand-module-body
                                            _body160304_))
                                       (_E160283160292_)))
                                 (_E160283160292_))))
                         (_E160283160292_)))))
             (_E160282160306_)))
         gx#current-expander-context
         _ctx160277_
         gx#current-expander-phi
         '0)))
    (define gx#core-expand-module-body
      (lambda (_body160072_)
        (letrec ((_expand-special160074_
                  (lambda (_hd160203_ _K160204_ _rest160205_ _r160206_)
                    (let* ((_e160207160224_ _hd160203_)
                           (_E160219160228_
                            (lambda ()
                              (_K160204_
                               _rest160205_
                               (cons (gx#core-expand-top _hd160203_)
                                     _r160206_))))
                           (_E160209160240_
                            (lambda ()
                              (if (gx#stx-pair? _e160207160224_)
                                  (let ((_e160220160232_
                                         (gx#syntax-e _e160207160224_)))
                                    (let ((_hd160221160235_
                                           (##car _e160220160232_))
                                          (_tl160222160237_
                                           (##cdr _e160220160232_)))
                                      (if (and (gx#identifier?
                                                _hd160221160235_)
                                               (gx#core-identifier=?
                                                _hd160221160235_
                                                '%#export))
                                          (if '#t
                                              (_K160204_
                                               _rest160205_
                                               (cons _hd160203_ _r160206_))
                                              (_E160219160228_))
                                          (_E160219160228_))))
                                  (_E160219160228_))))
                           (_E160208160272_
                            (lambda ()
                              (if (gx#stx-pair? _e160207160224_)
                                  (let ((_e160210160244_
                                         (gx#syntax-e _e160207160224_)))
                                    (let ((_hd160211160247_
                                           (##car _e160210160244_))
                                          (_tl160212160249_
                                           (##cdr _e160210160244_)))
                                      (if (and (gx#identifier?
                                                _hd160211160247_)
                                               (gx#core-identifier=?
                                                _hd160211160247_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl160212160249_)
                                              (let ((_e160213160252_
                                                     (gx#syntax-e
                                                      _tl160212160249_)))
                                                (let ((_hd160214160255_
                                                       (##car _e160213160252_))
                                                      (_tl160215160257_
                                                       (##cdr _e160213160252_)))
                                                  (let ((_hd-bind160260_
                                                         _hd160214160255_))
                                                    (if (gx#stx-pair?
                                                         _tl160215160257_)
                                                        (let ((_e160216160262_
                                                               (gx#syntax-e
                                                                _tl160215160257_)))
                                                          (let ((_hd160217160265_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e160216160262_))
                        (_tl160218160267_ (##cdr _e160216160262_)))
                    (let ((_expr160270_ _hd160217160265_))
                      (if (gx#stx-null? _tl160218160267_)
                          (if (gx#core-bind-values? _hd-bind160260_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind160260_)
                                (_K160204_
                                 _rest160205_
                                 (cons _hd160203_ _r160206_)))
                              (_E160209160240_))
                          (_E160209160240_)))))
                (_E160209160240_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E160209160240_))
                                          (_E160209160240_))))
                                  (_E160209160240_)))))
                      (_E160208160272_))))
                 (_expand-body160075_
                  (lambda (_rbody160077_)
                    (let _lp160079_ ((_rest160081_ _rbody160077_)
                                     (_body160082_ '()))
                      (let* ((_rest160083160091_ _rest160081_)
                             (_else160085160099_ (lambda () _body160082_))
                             (_K160087160191_
                              (lambda (_rest160102_ _hd160103_)
                                (let* ((_e160104160125_ _hd160103_)
                                       (_E160120160129_
                                        (lambda ()
                                          (_lp160079_
                                           _rest160102_
                                           (cons (gx#core-expand-expression
                                                  _hd160103_)
                                                 _body160082_))))
                                       (_E160116160143_
                                        (lambda ()
                                          (if (gx#stx-pair? _e160104160125_)
                                              (let ((_e160121160133_
                                                     (gx#syntax-e
                                                      _e160104160125_)))
                                                (let ((_hd160122160136_
                                                       (##car _e160121160133_))
                                                      (_tl160123160138_
                                                       (##cdr _e160121160133_)))
                                                  (let ((_form160141_
                                                         _hd160122160136_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _form160141_
                                                         gx#special-form-binding?)
                                                        (_lp160079_
                                                         _rest160102_
                                                         (cons _hd160103_
                                                               _body160082_))
                                                        (_E160120160129_)))))
                                              (_E160120160129_))))
                                       (_E160106160155_
                                        (lambda ()
                                          (if (gx#stx-pair? _e160104160125_)
                                              (let ((_e160117160147_
                                                     (gx#syntax-e
                                                      _e160104160125_)))
                                                (let ((_hd160118160150_
                                                       (##car _e160117160147_))
                                                      (_tl160119160152_
                                                       (##cdr _e160117160147_)))
                                                  (if (and (gx#identifier?
                                                            _hd160118160150_)
                                                           (gx#core-identifier=?
                                                            _hd160118160150_
                                                            '%#export))
                                                      (if '#t
                                                          (_lp160079_
                                                           _rest160102_
                                                           (cons (gx#core-expand-export%__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd160103_)
                         _body160082_))
                  (_E160116160143_))
              (_E160116160143_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E160116160143_))))
                                       (_E160105160187_
                                        (lambda ()
                                          (if (gx#stx-pair? _e160104160125_)
                                              (let ((_e160107160159_
                                                     (gx#syntax-e
                                                      _e160104160125_)))
                                                (let ((_hd160108160162_
                                                       (##car _e160107160159_))
                                                      (_tl160109160164_
                                                       (##cdr _e160107160159_)))
                                                  (if (and (gx#identifier?
                                                            _hd160108160162_)
                                                           (gx#core-identifier=?
                                                            _hd160108160162_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl160109160164_)
                                                          (let ((_e160110160167_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl160109160164_)))
                    (let ((_hd160111160170_ (##car _e160110160167_))
                          (_tl160112160172_ (##cdr _e160110160167_)))
                      (let ((_hd-bind160175_ _hd160111160170_))
                        (if (gx#stx-pair? _tl160112160172_)
                            (let ((_e160113160177_
                                   (gx#syntax-e _tl160112160172_)))
                              (let ((_hd160114160180_ (##car _e160113160177_))
                                    (_tl160115160182_ (##cdr _e160113160177_)))
                                (let ((_expr160185_ _hd160114160180_))
                                  (if (gx#stx-null? _tl160115160182_)
                                      (if '#t
                                          (_lp160079_
                                           _rest160102_
                                           (cons (gx#core-quote-syntax__1
                                                  (gx#core-list
                                                   '%#define-values
                                                   (gx#core-quote-bind-values
                                                    _hd-bind160175_)
                                                   (gx#core-expand-expression
                                                    _expr160185_))
                                                  (gx#stx-source _hd160103_))
                                                 _body160082_))
                                          (_E160106160155_))
                                      (_E160106160155_)))))
                            (_E160106160155_)))))
                  (_E160106160155_))
              (_E160106160155_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E160106160155_)))))
                                  (_E160105160187_)))))
                        (if (##pair? _rest160083160091_)
                            (let ((_hd160088160194_ (##car _rest160083160091_))
                                  (_tl160089160196_
                                   (##cdr _rest160083160091_)))
                              (let* ((_hd160199_ _hd160088160194_)
                                     (_rest160201_ _tl160089160196_))
                                (_K160087160191_ _rest160201_ _hd160199_)))
                            (_else160085160099_)))))))
          (_expand-body160075_
           (gx#core-expand-block__%
            (cons '%#begin-module _body160072_)
            _expand-special160074_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_stx159915_
               _expanded?159916_
               _method159917_
               _current-phi159918_
               _expand1159919_)
        (letrec ((_K159921_
                  (lambda (_rest160039_ _r160040_)
                    (let* ((_e160041160048_ _rest160039_)
                           (_E160043160052_ (lambda () _r160040_))
                           (_E160042160068_
                            (lambda ()
                              (if (gx#stx-pair? _e160041160048_)
                                  (let ((_e160044160056_
                                         (gx#syntax-e _e160041160048_)))
                                    (let ((_hd160045160059_
                                           (##car _e160044160056_))
                                          (_tl160046160061_
                                           (##cdr _e160044160056_)))
                                      (let* ((_hd160064_ _hd160045160059_)
                                             (_rest160066_ _tl160046160061_))
                                        (if '#t
                                            (_step159922_
                                             _hd160064_
                                             _rest160066_
                                             _r160040_)
                                            (_E160043160052_)))))
                                  (_E160043160052_)))))
                      (_E160042160068_))))
                 (_step159922_
                  (lambda (_hd159953_ _rest159954_ _r159955_)
                    (let* ((_e159956159974_ _hd159953_)
                           (_E159969159978_
                            (lambda ()
                              (if (_expanded?159916_ (gx#stx-e _hd159953_))
                                  (_K159921_
                                   _rest159954_
                                   (cons (gx#stx-e _hd159953_) _r159955_))
                                  (_expand1159919_
                                   _hd159953_
                                   _K159921_
                                   _rest159954_
                                   _r159955_))))
                           (_E159965159994_
                            (lambda ()
                              (if (gx#stx-pair? _e159956159974_)
                                  (let ((_e159970159982_
                                         (gx#syntax-e _e159956159974_)))
                                    (let ((_hd159971159985_
                                           (##car _e159970159982_))
                                          (_tl159972159987_
                                           (##cdr _e159970159982_)))
                                      (let* ((_macro159990_ _hd159971159985_)
                                             (_body159992_ _tl159972159987_))
                                        (if (gx#core-bound-identifier?__%
                                             _macro159990_
                                             gx#syntax-binding?)
                                            (_K159921_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _macro159990_)
                                                    _hd159953_
                                                    _method159917_)
                                                   _rest159954_)
                                             _r159955_)
                                            (_E159969159978_)))))
                                  (_E159969159978_))))
                           (_E159958160008_
                            (lambda ()
                              (if (gx#stx-pair? _e159956159974_)
                                  (let ((_e159966159998_
                                         (gx#syntax-e _e159956159974_)))
                                    (let ((_hd159967160001_
                                           (##car _e159966159998_))
                                          (_tl159968160003_
                                           (##cdr _e159966159998_)))
                                      (if (eq? (gx#stx-e _hd159967160001_)
                                               'begin:)
                                          (let ((_body160006_
                                                 _tl159968160003_))
                                            (if '#t
                                                (_K159921_
                                                 (gx#stx-foldr
                                                  cons
                                                  _rest159954_
                                                  _body160006_)
                                                 _r159955_)
                                                (_E159965159994_)))
                                          (_E159965159994_))))
                                  (_E159965159994_))))
                           (_E159957160035_
                            (lambda ()
                              (if (gx#stx-pair? _e159956159974_)
                                  (let ((_e159959160012_
                                         (gx#syntax-e _e159956159974_)))
                                    (let ((_hd159960160015_
                                           (##car _e159959160012_))
                                          (_tl159961160017_
                                           (##cdr _e159959160012_)))
                                      (if (eq? (gx#stx-e _hd159960160015_)
                                               'phi:)
                                          (if (gx#stx-pair? _tl159961160017_)
                                              (let ((_e159962160020_
                                                     (gx#syntax-e
                                                      _tl159961160017_)))
                                                (let ((_hd159963160023_
                                                       (##car _e159962160020_))
                                                      (_tl159964160025_
                                                       (##cdr _e159962160020_)))
                                                  (let* ((_dphi160028_
                                                          _hd159963160023_)
                                                         (_body160030_
                                                          _tl159964160025_))
                                                    (if (gx#stx-fixnum?
                                                         _dphi160028_)
                                                        (let ((_rbody160033_
                                                               (call-with-parameters
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_K159921_ _body160030_ '()))
                        _current-phi159918_
                        (fx+ (gx#stx-e _dphi160028_) (_current-phi159918_)))))
                  (_K159921_
                   _rest159954_
                   (foldr1 cons _r159955_ _rbody160033_)))
                (_E159958160008_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E159958160008_))
                                          (_E159958160008_))))
                                  (_E159958160008_)))))
                      (_E159957160035_)))))
          (let* ((_e159923159930_ _stx159915_)
                 (_E159925159934_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e159923159930_)))
                 (_E159924159949_
                  (lambda ()
                    (if (gx#stx-pair? _e159923159930_)
                        (let ((_e159926159938_ (gx#syntax-e _e159923159930_)))
                          (let ((_hd159927159941_ (##car _e159926159938_))
                                (_tl159928159943_ (##cdr _e159926159938_)))
                            (let ((_body159946_ _tl159928159943_))
                              (if '#t
                                  (if (_current-phi159918_)
                                      (_K159921_ _body159946_ '())
                                      (call-with-parameters
                                       (lambda () (_K159921_ _body159946_ '()))
                                       _current-phi159918_
                                       (gx#current-expander-phi)))
                                  (_E159925159934_)))))
                        (_E159925159934_)))))
            (_E159924159949_)))))
    (define gx#core-expand-import%__%
      (lambda (_stx159582_ _internal-expand?159583_)
        (letrec ((_expand1159585_
                  (lambda (_hd159895_ _K159896_ _rest159897_ _r159898_)
                    (if (gx#core-bound-module? _hd159895_)
                        (_import1159586_
                         (gx#syntax-local-e__0 _hd159895_)
                         _K159896_
                         _rest159897_
                         _r159898_)
                        (if (gx#core-library-module-path? _hd159895_)
                            (_import1159586_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _hd159895_))
                             _K159896_
                             _rest159897_
                             _r159898_)
                            (if (gx#core-library-relative-module-path?
                                 _hd159895_)
                                (_import1159586_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _hd159895_))
                                 _K159896_
                                 _rest159897_
                                 _r159898_)
                                (let ((_e159900_ (gx#stx-e _hd159895_)))
                                  (if (pair? _e159900_)
                                      (let ((_$e159902_
                                             (gx#stx-e (car _e159900_))))
                                        (if (eq? 'spec: _$e159902_)
                                            (_import-spec159589_
                                             _hd159895_
                                             _K159896_
                                             _rest159897_
                                             _r159898_)
                                            (if (eq? 'in: _$e159902_)
                                                (_import-submodule159587_
                                                 _hd159895_
                                                 _K159896_
                                                 _rest159897_
                                                 _r159898_)
                                                (if (eq? 'runtime: _$e159902_)
                                                    (_import-runtime159588_
                                                     _hd159895_
                                                     _K159896_
                                                     _rest159897_
                                                     _r159898_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _stx159582_
                                                     _hd159895_)))))
                                      (if (string? _e159900_)
                                          (_import1159586_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _hd159895_
                                             (gx#stx-source _stx159582_)))
                                           _K159896_
                                           _rest159897_
                                           _r159898_)
                                          (if (##structure-instance-of?
                                               _e159900_
                                               'gx#module-context::t)
                                              (_K159896_
                                               _rest159897_
                                               (cons _e159900_ _r159898_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _stx159582_
                                               _hd159895_))))))))))
                 (_import1159586_
                  (lambda (_ctx159884_ _K159885_ _rest159886_ _r159887_)
                    (let ((_dphi159889_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_K159885_
                       _rest159886_
                       (cons (##structure
                              gx#import-set::t
                              _ctx159884_
                              _dphi159889_
                              (map (lambda (_g159890159892_)
                                     (gx#core-module-export->import__%
                                      _g159890159892_
                                      '#f
                                      _dphi159889_))
                                   (##unchecked-structure-ref
                                    _ctx159884_
                                    '9
                                    gx#module-context::t
                                    '#f)))
                             _r159887_)))))
                 (_import-submodule159587_
                  (lambda (_hd159851_ _K159852_ _rest159853_ _r159854_)
                    (let* ((_e159855159862_ _hd159851_)
                           (_E159857159866_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e159855159862_)))
                           (_E159856159880_
                            (lambda ()
                              (if (gx#stx-pair? _e159855159862_)
                                  (let ((_e159858159870_
                                         (gx#syntax-e _e159855159862_)))
                                    (let ((_hd159859159873_
                                           (##car _e159858159870_))
                                          (_tl159860159875_
                                           (##cdr _e159858159870_)))
                                      (let ((_spath159878_ _tl159860159875_))
                                        (if '#t
                                            (_import1159586_
                                             (_import-spec-source159590_
                                              _spath159878_)
                                             _K159852_
                                             _rest159853_
                                             _r159854_)
                                            (_E159857159866_)))))
                                  (_E159857159866_)))))
                      (_E159856159880_))))
                 (_import-runtime159588_
                  (lambda (_hd159818_ _K159819_ _rest159820_ _r159821_)
                    (let* ((_e159822159829_ _hd159818_)
                           (_E159824159833_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e159822159829_)))
                           (_E159823159847_
                            (lambda ()
                              (if (gx#stx-pair? _e159822159829_)
                                  (let ((_e159825159837_
                                         (gx#syntax-e _e159822159829_)))
                                    (let ((_hd159826159840_
                                           (##car _e159825159837_))
                                          (_tl159827159842_
                                           (##cdr _e159825159837_)))
                                      (let ((_spath159845_ _tl159827159842_))
                                        (if '#t
                                            (_K159819_
                                             _rest159820_
                                             (cons (_import-spec-source159590_
                                                    _spath159845_)
                                                   _r159821_))
                                            (_E159824159833_)))))
                                  (_E159824159833_)))))
                      (_E159823159847_))))
                 (_import-spec159589_
                  (lambda (_hd159657_ _K159658_ _rest159659_ _r159660_)
                    (let* ((_e159661159678_ _hd159657_)
                           (_E159670159682_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e159661159678_)))
                           (_E159663159792_
                            (lambda ()
                              (if (gx#stx-pair? _e159661159678_)
                                  (let ((_e159671159686_
                                         (gx#syntax-e _e159661159678_)))
                                    (let ((_hd159672159689_
                                           (##car _e159671159686_))
                                          (_tl159673159691_
                                           (##cdr _e159671159686_)))
                                      (if (gx#stx-pair? _tl159673159691_)
                                          (let ((_e159674159694_
                                                 (gx#syntax-e
                                                  _tl159673159691_)))
                                            (let ((_hd159675159697_
                                                   (##car _e159674159694_))
                                                  (_tl159676159699_
                                                   (##cdr _e159674159694_)))
                                              (let* ((_path159702_
                                                      _hd159675159697_)
                                                     (_specs159704_
                                                      _tl159676159699_))
                                                (if '#t
                                                    (let ((_src-ctx159706_
                                                           (_import-spec-source159590_
                                                            _path159702_))
                                                          (_exports159707_
                                                           (make-table))
                                                          (_specs159708_
                                                           (gx#syntax->list
                                                            _specs159704_)))
                                                      (for-each
                                                       (lambda (_out159710_)
                                                         (table-set!
                                                          _exports159707_
                                                          (cons (##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _out159710_
                         '3
                         gx#module-export::t
                         '#f)
                        (##unchecked-structure-ref
                         _out159710_
                         '4
                         gx#module-export::t
                         '#f))
                  _out159710_))
               (##unchecked-structure-ref
                _src-ctx159706_
                '9
                gx#module-context::t
                '#f))
              (_K159658_
               _rest159659_
               (foldl1 (lambda (_spec159712_ _r159713_)
                         (let* ((_e159714159730_ _spec159712_)
                                (_E159716159734_
                                 (lambda ()
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid syntax-case clause"
                                    _e159714159730_)))
                                (_E159715159788_
                                 (lambda ()
                                   (if (gx#stx-pair? _e159714159730_)
                                       (let ((_e159717159738_
                                              (gx#syntax-e _e159714159730_)))
                                         (let ((_hd159718159741_
                                                (##car _e159717159738_))
                                               (_tl159719159743_
                                                (##cdr _e159717159738_)))
                                           (let ((_phi159746_
                                                  _hd159718159741_))
                                             (if (gx#stx-pair?
                                                  _tl159719159743_)
                                                 (let ((_e159720159748_
                                                        (gx#syntax-e
                                                         _tl159719159743_)))
                                                   (let ((_hd159721159751_
                                                          (##car _e159720159748_))
                                                         (_tl159722159753_
                                                          (##cdr _e159720159748_)))
                                                     (let ((_name159756_
                                                            _hd159721159751_))
                                                       (if (gx#stx-pair?
                                                            _tl159722159753_)
                                                           (let ((_e159723159758_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl159722159753_)))
                     (let ((_hd159724159761_ (##car _e159723159758_))
                           (_tl159725159763_ (##cdr _e159723159758_)))
                       (let ((_src-phi159766_ _hd159724159761_))
                         (if (gx#stx-pair? _tl159725159763_)
                             (let ((_e159726159768_
                                    (gx#syntax-e _tl159725159763_)))
                               (let ((_hd159727159771_ (##car _e159726159768_))
                                     (_tl159728159773_
                                      (##cdr _e159726159768_)))
                                 (let ((_src-name159776_ _hd159727159771_))
                                   (if (gx#stx-null? _tl159728159773_)
                                       (if (and (gx#stx-fixnum?
                                                 _src-phi159766_)
                                                (gx#identifier?
                                                 _src-name159776_)
                                                (gx#stx-fixnum? _phi159746_)
                                                (gx#identifier? _name159756_))
                                           (let ((_src-phi159778_
                                                  (gx#stx-e _src-phi159766_))
                                                 (_src-name159779_
                                                  (gx#core-identifier-key
                                                   _src-name159776_))
                                                 (_phi159780_
                                                  (gx#stx-e _phi159746_))
                                                 (_name159781_
                                                  (gx#core-identifier-key
                                                   _name159756_)))
                                             (let ((_$e159783_
                                                    (table-ref
                                                     _exports159707_
                                                     (cons _src-phi159778_
                                                           _src-name159779_)
                                                     '#f)))
                                               (if _$e159783_
                                                   ((lambda (_out159786_)
                                                      (cons (gx#core-module-export->import__%
                                                             _out159786_
                                                             _name159781_
                                                             (fx- _phi159780_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _src-phi159778_))
                    _r159713_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _$e159783_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; no matching export"
                                                    _stx159582_
                                                    _hd159657_))))
                                           (_E159716159734_))
                                       (_E159716159734_)))))
                             (_E159716159734_)))))
                   (_E159716159734_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E159716159734_)))))
                                       (_E159716159734_)))))
                           (_E159715159788_)))
                       _r159660_
                       _specs159708_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E159670159682_)))))
                                          (_E159670159682_))))
                                  (_E159670159682_))))
                           (_E159662159814_
                            (lambda ()
                              (if (gx#stx-pair? _e159661159678_)
                                  (let ((_e159664159796_
                                         (gx#syntax-e _e159661159678_)))
                                    (let ((_hd159665159799_
                                           (##car _e159664159796_))
                                          (_tl159666159801_
                                           (##cdr _e159664159796_)))
                                      (if (gx#stx-pair? _tl159666159801_)
                                          (let ((_e159667159804_
                                                 (gx#syntax-e
                                                  _tl159666159801_)))
                                            (let ((_hd159668159807_
                                                   (##car _e159667159804_))
                                                  (_tl159669159809_
                                                   (##cdr _e159667159804_)))
                                              (let ((_path159812_
                                                     _hd159668159807_))
                                                (if (gx#stx-null?
                                                     _tl159669159809_)
                                                    (if '#t
                                                        (_K159658_
                                                         _rest159659_
                                                         (cons (_import-spec-source159590_
                                                                _path159812_)
                                                               _r159660_))
                                                        (_E159663159792_))
                                                    (_E159663159792_)))))
                                          (_E159663159792_))))
                                  (_E159663159792_)))))
                      (_E159662159814_))))
                 (_import-spec-source159590_
                  (lambda (_spath159655_)
                    (gx#core-import-nested-module _spath159655_ _stx159582_)))
                 (_import!159591_
                  (lambda (_rbody159604_)
                    (letrec* ((_current-ctx159606_
                               (gx#current-expander-context))
                              (_deps159607_ (make-table 'test: eq?))
                              (_bind!159608_
                               (lambda (_hd159653_)
                                 (gx#core-bind-import!__1
                                  _hd159653_
                                  _current-ctx159606_))))
                      (let _lp159610_ ((_rest159612_ _rbody159604_)
                                       (_body159613_ '()))
                        (let* ((_rest159614159622_ _rest159612_)
                               (_else159616159632_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _current-ctx159606_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _current-ctx159606_
                                       (foldl1 cons
                                               (##unchecked-structure-ref
                                                _current-ctx159606_
                                                '8
                                                gx#module-context::t
                                                '#f)
                                               _body159613_)
                                       '8
                                       gx#module-context::t
                                       '#f)
                                      '#!void)
                                  (table-for-each
                                   (lambda (_ctx159630_ _g167028_)
                                     (gx#eval-module _ctx159630_))
                                   _deps159607_)
                                  _body159613_))
                               (_K159618159641_
                                (lambda (_rest159635_ _hd159636_)
                                  (if (##structure-direct-instance-of?
                                       _hd159636_
                                       'gx#module-import::t)
                                      (begin
                                        (_bind!159608_ _hd159636_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _hd159636_
                                                   '3
                                                   gx#module-import::t
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _hd159636_
                                                            '1
                                                            gx#module-import::t
                                                            '#f)
                                                           '3
                                                           gx#module-export::t
                                                           '#f)))
                                            (table-set!
                                             _deps159607_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _hd159636_
                                               '1
                                               gx#module-import::t
                                               '#f)
                                              '1
                                              gx#module-export::t
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _hd159636_
                                           'gx#import-set::t)
                                          (begin
                                            (for-each
                                             _bind!159608_
                                             (##unchecked-structure-ref
                                              _hd159636_
                                              '3
                                              gx#import-set::t
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _hd159636_
                                                  '2
                                                  gx#import-set::t
                                                  '#f))
                                                (table-set!
                                                 _deps159607_
                                                 (##unchecked-structure-ref
                                                  _hd159636_
                                                  '1
                                                  gx#import-set::t
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_$e159638_
                                                 (##structure-instance-of?
                                                  _hd159636_
                                                  'gx#module-context::t)))
                                            (if _$e159638_
                                                _$e159638_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _stx159582_
                                                 _hd159636_)))))
                                  (_lp159610_
                                   _rest159635_
                                   (cons _hd159636_ _body159613_)))))
                          (if (##pair? _rest159614159622_)
                              (let ((_hd159619159644_
                                     (##car _rest159614159622_))
                                    (_tl159620159646_
                                     (##cdr _rest159614159622_)))
                                (let* ((_hd159649_ _hd159619159644_)
                                       (_rest159651_ _tl159620159646_))
                                  (_K159618159641_ _rest159651_ _hd159649_)))
                              (_else159616159632_)))))))
                 (_expanded-import?159592_
                  (lambda (_e159596_)
                    (let ((_$e159598_
                           (##structure-direct-instance-of?
                            _e159596_
                            'gx#import-set::t)))
                      (if _$e159598_
                          _$e159598_
                          (let ((_$e159601_
                                 (##structure-direct-instance-of?
                                  _e159596_
                                  'gx#module-import::t)))
                            (if _$e159601_
                                _$e159601_
                                (##structure-instance-of?
                                 _e159596_
                                 'gx#module-context::t))))))))
          (let ((_rbody159594_
                 (gx#core-expand-import/export
                  _stx159582_
                  _expanded-import?159592_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _expand1159585_)))
            (if _internal-expand?159583_
                (reverse _rbody159594_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_import!159591_ _rbody159594_))
                 (gx#stx-source _stx159582_)))))))
    (define gx#core-expand-import%__0
      (lambda (_stx159908_)
        (let ((_internal-expand?159910_ '#f))
          (gx#core-expand-import%__% _stx159908_ _internal-expand?159910_))))
    (define gx#core-expand-import%
      (lambda _g167030_
        (let ((_g167029_ (##length _g167030_)))
          (cond ((##fx= _g167029_ 1)
                 (apply (lambda (_stx159908_)
                          (gx#core-expand-import%__0 _stx159908_))
                        _g167030_))
                ((##fx= _g167029_ 2)
                 (apply (lambda (_stx159912_ _internal-expand?159913_)
                          (gx#core-expand-import%__%
                           _stx159912_
                           _internal-expand?159913_))
                        _g167030_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g167030_))))))
    (define gx#core-import-nested-module
      (lambda (_spath159509_ _where159510_)
        (let* ((_e159511159518_ _spath159509_)
               (_E159513159522_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e159511159518_)))
               (_E159512159577_
                (lambda ()
                  (if (gx#stx-pair? _e159511159518_)
                      (let ((_e159514159526_ (gx#syntax-e _e159511159518_)))
                        (let ((_hd159515159529_ (##car _e159514159526_))
                              (_tl159516159531_ (##cdr _e159514159526_)))
                          (let* ((_origin159534_ _hd159515159529_)
                                 (_sub159536_ _tl159516159531_))
                            (if '#t
                                (let ((_origin-ctx159538_
                                       (if (gx#stx-false? _origin159534_)
                                           (gx#current-expander-context)
                                           (gx#import-module__0
                                            _origin159534_))))
                                  (let _lp159540_ ((_rest159542_ _sub159536_)
                                                   (_ctx159543_
                                                    _origin-ctx159538_))
                                    (let* ((_e159544159551_ _rest159542_)
                                           (_E159546159555_
                                            (lambda () _ctx159543_))
                                           (_E159545159573_
                                            (lambda ()
                                              (if (gx#stx-pair?
                                                   _e159544159551_)
                                                  (let ((_e159547159559_
                                                         (gx#syntax-e
                                                          _e159544159551_)))
                                                    (let ((_hd159548159562_
                                                           (##car _e159547159559_))
                                                          (_tl159549159564_
                                                           (##cdr _e159547159559_)))
                                                      (let* ((_id159567_
                                                              _hd159548159562_)
                                                             (_rest159569_
                                                              _tl159549159564_))
                                                        (if '#t
                                                            (let ((_bind159571_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#resolve-identifier__%
                            _id159567_
                            '0
                            _ctx159543_)))
                      (if (and (##structure-direct-instance-of?
                                _bind159571_
                                'gx#syntax-binding::t)
                               (##structure-instance-of?
                                (##unchecked-structure-ref
                                 _bind159571_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                'gx#module-context::t))
                          '#!void
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; not bound as module"
                           _where159510_
                           _spath159509_
                           _id159567_))
                      (_lp159540_
                       _rest159569_
                       (##unchecked-structure-ref
                        _bind159571_
                        '4
                        gx#syntax-binding::t
                        '#f)))
                    (_E159546159555_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E159546159555_)))))
                                      (_E159545159573_))))
                                (_E159513159522_)))))
                      (_E159513159522_)))))
          (_E159512159577_))))
    (define gx#core-expand-import-source
      (lambda (_hd159507_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _hd159507_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_stx159015_ _internal-expand?159016_)
        (letrec* ((_make-export__166959166960_
                   (lambda (_bind159455_ _phi159456_ _ctx159457_ _name159458_)
                     (let* ((_key159460_
                             (##unchecked-structure-ref
                              _bind159455_
                              '2
                              gx#binding::t
                              '#f))
                            (_export-key159462_
                             (if _name159458_
                                 (gx#core-identifier-key _name159458_)
                                 _key159460_)))
                       (##structure
                        gx#module-export::t
                        _ctx159457_
                        _key159460_
                        _phi159456_
                        _export-key159462_
                        (let ((_$e159465_
                               (##structure-instance-of?
                                _bind159455_
                                'gx#extern-binding::t)))
                          (if _$e159465_
                              _$e159465_
                              (##structure-direct-instance-of?
                               _bind159455_
                               'gx#import-binding::t)))))))
                  (_make-export__0__166961166964_
                   (lambda (_bind159471_)
                     (let* ((_phi159473_ (gx#current-export-expander-phi))
                            (_ctx159475_ (gx#current-expander-context))
                            (_name159477_ '#f))
                       (_make-export__166959166960_
                        _bind159471_
                        _phi159473_
                        _ctx159475_
                        _name159477_))))
                  (_make-export__1__166962166965_
                   (lambda (_bind159479_ _phi159480_)
                     (let* ((_ctx159482_ (gx#current-expander-context))
                            (_name159484_ '#f))
                       (_make-export__166959166960_
                        _bind159479_
                        _phi159480_
                        _ctx159482_
                        _name159484_))))
                  (_make-export__2__166963166966_
                   (lambda (_bind159486_ _phi159487_ _ctx159488_)
                     (let ((_name159490_ '#f))
                       (_make-export__166959166960_
                        _bind159486_
                        _phi159487_
                        _ctx159488_
                        _name159490_))))
                  (_make-export159018_
                   (lambda _g167032_
                     (let ((_g167031_ (##length _g167032_)))
                       (cond ((##fx= _g167031_ 1)
                              (apply (lambda (_bind159471_)
                                       (_make-export__0__166961166964_
                                        _bind159471_))
                                     _g167032_))
                             ((##fx= _g167031_ 2)
                              (apply (lambda (_bind159479_ _phi159480_)
                                       (_make-export__1__166962166965_
                                        _bind159479_
                                        _phi159480_))
                                     _g167032_))
                             ((##fx= _g167031_ 3)
                              (apply (lambda (_bind159486_
                                              _phi159487_
                                              _ctx159488_)
                                       (_make-export__2__166963166966_
                                        _bind159486_
                                        _phi159487_
                                        _ctx159488_))
                                     _g167032_))
                             ((##fx= _g167031_ 4)
                              (apply (lambda (_bind159492_
                                              _phi159493_
                                              _ctx159494_
                                              _name159495_)
                                       (_make-export__166959166960_
                                        _bind159492_
                                        _phi159493_
                                        _ctx159494_
                                        _name159495_))
                                     _g167032_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g167032_))))))
                  (_expand1159019_
                   (lambda (_hd159168_ _K159169_ _rest159170_ _r159171_)
                     (let* ((_e159172159204_ _hd159168_)
                            (_E159199159208_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _stx159015_
                                _hd159168_)))
                            (_E159189159287_
                             (lambda ()
                               (if (gx#stx-pair? _e159172159204_)
                                   (let ((_e159200159212_
                                          (gx#syntax-e _e159172159204_)))
                                     (let ((_hd159201159215_
                                            (##car _e159200159212_))
                                           (_tl159202159217_
                                            (##cdr _e159200159212_)))
                                       (if (eq? (gx#stx-e _hd159201159215_)
                                                'import:)
                                           (let ((_in159220_ _tl159202159217_))
                                             (if (gx#stx-list? _in159220_)
                                                 (let _lp159222_ ((_in-rest159224_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _in159220_)
                          (_r159225_ _r159171_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_e159226159233_
                                                           _in-rest159224_)
                                                          (_E159228159237_
                                                           (lambda ()
                                                             (_K159169_
                                                              _rest159170_
                                                              _r159225_)))
                                                          (_E159227159283_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _e159226159233_)
                         (let ((_e159229159241_ (gx#syntax-e _e159226159233_)))
                           (let ((_hd159230159244_ (##car _e159229159241_))
                                 (_tl159231159246_ (##cdr _e159229159241_)))
                             (let* ((_hd159249_ _hd159230159244_)
                                    (_in-rest159251_ _tl159231159246_))
                               (if '#t
                                   (let ((_src159281_
                                          (if (gx#core-bound-module?
                                               _hd159249_)
                                              (gx#syntax-local-e__0 _hd159249_)
                                              (if (gx#core-library-module-path?
                                                   _hd159249_)
                                                  (gx#import-module__0
                                                   (gx#core-resolve-library-module-path
                                                    _hd159249_))
                                                  (if (gx#core-library-relative-module-path?
                                                       _hd159249_)
                                                      (gx#import-module__0
                                                       (gx#core-resolve-library-relative-module-path
                                                        _hd159249_))
                                                      (if (gx#stx-string?
                                                           _hd159249_)
                                                          (gx#import-module__0
                                                           (gx#core-resolve-module-path__%
                                                            _hd159249_
                                                            (gx#stx-source
                                                             _stx159015_)))
                                                          (let* ((_e159252159259_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd159249_)
                         (_E159254159263_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; illegal re-export"
                             _stx159015_
                             _hd159249_)))
                         (_E159253159277_
                          (lambda ()
                            (if (gx#stx-pair? _e159252159259_)
                                (let ((_e159255159267_
                                       (gx#syntax-e _e159252159259_)))
                                  (let ((_hd159256159270_
                                         (##car _e159255159267_))
                                        (_tl159257159272_
                                         (##cdr _e159255159267_)))
                                    (if (eq? (gx#stx-e _hd159256159270_) 'in:)
                                        (let ((_spath159275_ _tl159257159272_))
                                          (if '#t
                                              (gx#core-import-nested-module
                                               _spath159275_
                                               _stx159015_)
                                              (_E159254159263_)))
                                        (_E159254159263_))))
                                (_E159254159263_)))))
                    (_E159253159277_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_lp159222_
                                      _in-rest159251_
                                      (_export-imports159020_
                                       _src159281_
                                       _r159225_)))
                                   (_E159228159237_)))))
                         (_E159228159237_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E159227159283_)))
                                                 (_E159199159208_)))
                                           (_E159199159208_))))
                                   (_E159199159208_))))
                            (_E159176159326_
                             (lambda ()
                               (if (gx#stx-pair? _e159172159204_)
                                   (let ((_e159190159291_
                                          (gx#syntax-e _e159172159204_)))
                                     (let ((_hd159191159294_
                                            (##car _e159190159291_))
                                           (_tl159192159296_
                                            (##cdr _e159190159291_)))
                                       (if (eq? (gx#stx-e _hd159191159294_)
                                                'rename:)
                                           (if (gx#stx-pair? _tl159192159296_)
                                               (let ((_e159193159299_
                                                      (gx#syntax-e
                                                       _tl159192159296_)))
                                                 (let ((_hd159194159302_
                                                        (##car _e159193159299_))
                                                       (_tl159195159304_
                                                        (##cdr _e159193159299_)))
                                                   (let ((_id159307_
                                                          _hd159194159302_))
                                                     (if (gx#stx-pair?
                                                          _tl159195159304_)
                                                         (let ((_e159196159309_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl159195159304_)))
                   (let ((_hd159197159312_ (##car _e159196159309_))
                         (_tl159198159314_ (##cdr _e159196159309_)))
                     (let ((_name159317_ _hd159197159312_))
                       (if (gx#stx-null? _tl159198159314_)
                           (if '#t
                               (let* ((_phi159319_
                                       (gx#current-export-expander-phi))
                                      (_$e159321_
                                       (gx#core-resolve-identifier__1
                                        _id159307_
                                        _phi159319_)))
                                 (if _$e159321_
                                     ((lambda (_bind159324_)
                                        (_K159169_
                                         _rest159170_
                                         (cons (_make-export__166959166960_
                                                _bind159324_
                                                _phi159319_
                                                (gx#current-expander-context)
                                                _name159317_)
                                               _r159171_)))
                                      _$e159321_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Reference to unbound identifier"
                                      _stx159015_
                                      _hd159168_
                                      _id159307_)))
                               (_E159189159287_))
                           (_E159189159287_)))))
                 (_E159189159287_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E159189159287_))
                                           (_E159189159287_))))
                                   (_E159189159287_))))
                            (_E159175159375_
                             (lambda ()
                               (if (gx#stx-pair? _e159172159204_)
                                   (let ((_e159177159330_
                                          (gx#syntax-e _e159172159204_)))
                                     (let ((_hd159178159333_
                                            (##car _e159177159330_))
                                           (_tl159179159335_
                                            (##cdr _e159177159330_)))
                                       (if (eq? (gx#stx-e _hd159178159333_)
                                                'spec:)
                                           (if (gx#stx-pair? _tl159179159335_)
                                               (let ((_e159180159338_
                                                      (gx#syntax-e
                                                       _tl159179159335_)))
                                                 (let ((_hd159181159341_
                                                        (##car _e159180159338_))
                                                       (_tl159182159343_
                                                        (##cdr _e159180159338_)))
                                                   (let ((_phi159346_
                                                          _hd159181159341_))
                                                     (if (gx#stx-pair?
                                                          _tl159182159343_)
                                                         (let ((_e159183159348_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl159182159343_)))
                   (let ((_hd159184159351_ (##car _e159183159348_))
                         (_tl159185159353_ (##cdr _e159183159348_)))
                     (let ((_id159356_ _hd159184159351_))
                       (if (gx#stx-pair? _tl159185159353_)
                           (let ((_e159186159358_
                                  (gx#syntax-e _tl159185159353_)))
                             (let ((_hd159187159361_ (##car _e159186159358_))
                                   (_tl159188159363_ (##cdr _e159186159358_)))
                               (let ((_name159366_ _hd159187159361_))
                                 (if (gx#stx-null? _tl159188159363_)
                                     (if (and (gx#stx-fixnum? _phi159346_)
                                              (gx#identifier? _id159356_)
                                              (gx#identifier? _name159366_))
                                         (let* ((_phi159368_
                                                 (gx#stx-e _phi159346_))
                                                (_$e159370_
                                                 (gx#core-resolve-identifier__1
                                                  _id159356_
                                                  _phi159368_)))
                                           (if _$e159370_
                                               ((lambda (_bind159373_)
                                                  (_K159169_
                                                   _rest159170_
                                                   (cons (_make-export__166959166960_
                                                          _bind159373_
                                                          _phi159368_
                                                          (gx#current-expander-context)
                                                          _name159366_)
                                                         _r159171_)))
                                                _$e159370_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _stx159015_
                                                _hd159168_
                                                _id159356_)))
                                         (_E159176159326_))
                                     (_E159176159326_)))))
                           (_E159176159326_)))))
                 (_E159176159326_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E159176159326_))
                                           (_E159176159326_))))
                                   (_E159176159326_))))
                            (_E159174159386_
                             (lambda ()
                               (let ((_id159379_ _e159172159204_))
                                 (if (gx#identifier? _id159379_)
                                     (let ((_$e159381_
                                            (gx#core-resolve-identifier__1
                                             _id159379_
                                             (gx#current-export-expander-phi))))
                                       (if _$e159381_
                                           ((lambda (_bind159384_)
                                              (_K159169_
                                               _rest159170_
                                               (cons (_make-export__0__166961166964_
                                                      _bind159384_)
                                                     _r159171_)))
                                            _$e159381_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _stx159015_
                                            _hd159168_)))
                                     (_E159175159375_)))))
                            (_E159173159450_
                             (lambda ()
                               (if (eq? (gx#stx-e _e159172159204_) '#t)
                                   (if '#t
                                       (let* ((_current-ctx159390_
                                               (gx#current-expander-context))
                                              (_current-phi159392_
                                               (gx#current-export-expander-phi))
                                              (_phi-ctx159394_
                                               (gx#core-context-shift
                                                _current-ctx159390_
                                                _current-phi159392_))
                                              (_phi-bind159396_
                                               (table->list
                                                (##unchecked-structure-ref
                                                 _phi-ctx159394_
                                                 '2
                                                 gx#expander-context::t
                                                 '#f))))
                                         (let _lp159399_ ((_bind-rest159401_
                                                           _phi-bind159396_)
                                                          (_set159402_ '()))
                                           (let* ((_bind-rest159403159413_
                                                   _bind-rest159401_)
                                                  (_else159405159421_
                                                   (lambda ()
                                                     (_K159169_
                                                      _rest159170_
                                                      (cons (##structure
                                                             gx#export-set::t
                                                             '#f
                                                             _current-phi159392_
                                                             _set159402_)
                                                            _r159171_))))
                                                  (_K159407159431_
                                                   (lambda (_bind-rest159424_
                                                            _bind159425_
                                                            _key159426_)
                                                     (if (or (##structure-direct-instance-of?
                                                              _bind159425_
                                                              'gx#import-binding::t)
                                                             (gx#private-feature-binding?
                                                              _bind159425_))
                                                         (_lp159399_
                                                          _bind-rest159424_
                                                          _set159402_)
                                                         (_lp159399_
                                                          _bind-rest159424_
                                                          (cons (_make-export__2__166963166966_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind159425_
                         _current-phi159392_
                         _current-ctx159390_)
                        _set159402_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _bind-rest159403159413_)
                                                 (let ((_hd159408159434_
                                                        (##car _bind-rest159403159413_))
                                                       (_tl159409159436_
                                                        (##cdr _bind-rest159403159413_)))
                                                   (if (##pair? _hd159408159434_)
                                                       (let ((_hd159410159439_
                                                              (##car _hd159408159434_))
                                                             (_tl159411159441_
                                                              (##cdr _hd159408159434_)))
                                                         (let* ((_key159444_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd159410159439_)
                        (_bind159446_ _tl159411159441_)
                        (_bind-rest159448_ _tl159409159436_))
                   (_K159407159431_
                    _bind-rest159448_
                    _bind159446_
                    _key159444_)))
               (_else159405159421_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_else159405159421_)))))
                                       (_E159174159386_))
                                   (_E159174159386_)))))
                       (_E159173159450_))))
                  (_export-imports159020_
                   (lambda (_src159044_ _r159045_)
                     (letrec* ((_current-ctx159047_
                                (gx#current-expander-context))
                               (_current-phi159048_
                                (gx#current-export-expander-phi))
                               (_import->export159049_
                                (lambda (_in159130_)
                                  (let* ((_in159131159139_ _in159130_)
                                         (_E159133159143_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _in159131159139_)))
                                         (_K159134159150_
                                          (lambda (_phi159146_
                                                   _key159147_
                                                   _out159148_)
                                            (##structure
                                             gx#module-export::t
                                             _current-ctx159047_
                                             _key159147_
                                             _phi159146_
                                             _key159147_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _in159131159139_
                                         'gx#module-import::t)
                                        (let* ((_e159135159153_
                                                (##unchecked-structure-ref
                                                 _in159131159139_
                                                 '1
                                                 gx#module-import::t
                                                 '#f))
                                               (_out159156_ _e159135159153_)
                                               (_e159136159158_
                                                (##unchecked-structure-ref
                                                 _in159131159139_
                                                 '2
                                                 gx#module-import::t
                                                 '#f))
                                               (_key159161_ _e159136159158_)
                                               (_e159137159163_
                                                (##unchecked-structure-ref
                                                 _in159131159139_
                                                 '3
                                                 gx#module-import::t
                                                 '#f))
                                               (_phi159166_ _e159137159163_))
                                          (_K159134159150_
                                           _phi159166_
                                           _key159161_
                                           _out159156_))
                                        (_E159133159143_)))))
                               (_fold-e159050_
                                (lambda (_in159052_ _r159053_)
                                  (let* ((_in159054159068_ _in159052_)
                                         (_else159057159076_
                                          (lambda () _r159053_)))
                                    (let ((_K159063159112_
                                           (lambda (_phi159108_
                                                    _key159109_
                                                    _out159110_)
                                             (if (and (fx= _phi159108_
                                                           _current-phi159048_)
                                                      (eq? _src159044_
                                                           (##unchecked-structure-ref
                                                            _out159110_
                                                            '1
                                                            gx#module-export::t
                                                            '#f)))
                                                 (cons (_import->export159049_
                                                        _in159052_)
                                                       _r159053_)
                                                 _r159053_)))
                                          (_K159059159087_
                                           (lambda (_imports159080_
                                                    _phi159081_
                                                    _ctx159082_)
                                             (if (and (fx= _phi159081_
                                                           _current-phi159048_)
                                                      (eq? _src159044_
                                                           _ctx159082_))
                                                 (foldl1 (lambda (_in159084_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r159085_)
                   (cons (_import->export159049_ _in159084_) _r159085_))
                 _r159053_
                 _imports159080_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _r159053_))))
                                      (let ((_try-match159056159105_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _in159054159068_
                                                    'gx#import-set::t)
                                                   (let* ((_e159060159090_
                                                           (##unchecked-structure-ref
                                                            _in159054159068_
                                                            '1
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e159061159095_
                                                           (##unchecked-structure-ref
                                                            _in159054159068_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e159062159100_
                                                           (##unchecked-structure-ref
                                                            _in159054159068_
                                                            '3
                                                            gx#import-set::t
                                                            '#f)))
                                                     (let ((_ctx159093_
                                                            _e159060159090_)
                                                           (_phi159098_
                                                            _e159061159095_)
                                                           (_imports159103_
                                                            _e159062159100_))
                                                       (_K159059159087_
                                                        _imports159103_
                                                        _phi159098_
                                                        _ctx159093_)))
                                                   (_else159057159076_)))))
                                        (if (##structure-direct-instance-of?
                                             _in159054159068_
                                             'gx#module-import::t)
                                            (let* ((_e159064159115_
                                                    (##unchecked-structure-ref
                                                     _in159054159068_
                                                     '1
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e159065159120_
                                                    (##unchecked-structure-ref
                                                     _in159054159068_
                                                     '2
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e159066159125_
                                                    (##unchecked-structure-ref
                                                     _in159054159068_
                                                     '3
                                                     gx#module-import::t
                                                     '#f)))
                                              (let ((_out159118_
                                                     _e159064159115_)
                                                    (_key159123_
                                                     _e159065159120_)
                                                    (_phi159128_
                                                     _e159066159125_))
                                                (_K159063159112_
                                                 _phi159128_
                                                 _key159123_
                                                 _out159118_)))
                                            (_try-match159056159105_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _src159044_
                              _current-phi159048_
                              (foldl1 _fold-e159050_
                                      '()
                                      (##unchecked-structure-ref
                                       _current-ctx159047_
                                       '8
                                       gx#module-context::t
                                       '#f)))
                             _r159045_))))
                  (_export!159021_
                   (lambda (_rbody159034_)
                     (letrec* ((_current-ctx159036_
                                (gx#current-expander-context))
                               (_fold-e159037_
                                (lambda (_out159041_ _r159042_)
                                  (if (##structure-direct-instance-of?
                                       _out159041_
                                       'gx#module-export::t)
                                      (cons _out159041_ _r159042_)
                                      (if (##structure-direct-instance-of?
                                           _out159041_
                                           'gx#export-set::t)
                                          (foldl1 cons
                                                  _r159042_
                                                  (##unchecked-structure-ref
                                                   _out159041_
                                                   '3
                                                   gx#export-set::t
                                                   '#f))
                                          _r159042_)))))
                       (let ((_body159039_ (reverse _rbody159034_)))
                         (##unchecked-structure-set!
                          _current-ctx159036_
                          (foldl1 _fold-e159037_
                                  (##unchecked-structure-ref
                                   _current-ctx159036_
                                   '9
                                   gx#module-context::t
                                   '#f)
                                  _body159039_)
                          '9
                          gx#module-context::t
                          '#f)
                         _body159039_))))
                  (_expanded-export?159022_
                   (lambda (_e159029_)
                     (let ((_$e159031_
                            (##structure-direct-instance-of?
                             _e159029_
                             'gx#module-export::t)))
                       (if _$e159031_
                           _$e159031_
                           (##structure-direct-instance-of?
                            _e159029_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _internal-expand?159016_)
              (let ((_rbody159027_
                     (gx#core-expand-import/export
                      _stx159015_
                      _expanded-export?159022_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _expand1159019_)))
                (if _internal-expand?159016_
                    (reverse _rbody159027_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons '%#export (_export!159021_ _rbody159027_))
                     (gx#stx-source _stx159015_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _stx159015_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _stx159015_))))))
    (define gx#core-expand-export%__0
      (lambda (_stx159500_)
        (let ((_internal-expand?159502_ '#f))
          (gx#core-expand-export%__% _stx159500_ _internal-expand?159502_))))
    (define gx#core-expand-export%
      (lambda _g167034_
        (let ((_g167033_ (##length _g167034_)))
          (cond ((##fx= _g167033_ 1)
                 (apply (lambda (_stx159500_)
                          (gx#core-expand-export%__0 _stx159500_))
                        _g167034_))
                ((##fx= _g167033_ 2)
                 (apply (lambda (_stx159504_ _internal-expand?159505_)
                          (gx#core-expand-export%__%
                           _stx159504_
                           _internal-expand?159505_))
                        _g167034_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g167034_))))))
    (define gx#core-expand-export-source
      (lambda (_hd159012_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _hd159012_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_stx158982_)
        (let* ((_e158983158990_ _stx158982_)
               (_E158985158994_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e158983158990_)))
               (_E158984159008_
                (lambda ()
                  (if (gx#stx-pair? _e158983158990_)
                      (let ((_e158986158998_ (gx#syntax-e _e158983158990_)))
                        (let ((_hd158987159001_ (##car _e158986158998_))
                              (_tl158988159003_ (##cdr _e158986158998_)))
                          (let ((_body159006_ _tl158988159003_))
                            (if (gx#identifier-list? _body159006_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _body159006_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _body159006_))
                                   (gx#stx-source _stx158982_)))
                                (_E158985158994_)))))
                      (_E158985158994_)))))
          (_E158984159008_))))
    (define gx#core-bind-feature!__%
      (lambda (_id158948_ _private?158949_ _phi158950_ _ctx158951_)
        (gx#core-bind-syntax!__%
         _id158948_
         ((if _private?158949_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _id158948_))
         _private?158949_
         _phi158950_
         _ctx158951_)))
    (define gx#core-bind-feature!__0
      (lambda (_id158956_)
        (let* ((_private?158958_ '#f)
               (_phi158960_ (gx#current-expander-phi))
               (_ctx158962_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id158956_
           _private?158958_
           _phi158960_
           _ctx158962_))))
    (define gx#core-bind-feature!__1
      (lambda (_id158964_ _private?158965_)
        (let* ((_phi158967_ (gx#current-expander-phi))
               (_ctx158969_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id158964_
           _private?158965_
           _phi158967_
           _ctx158969_))))
    (define gx#core-bind-feature!__2
      (lambda (_id158971_ _private?158972_ _phi158973_)
        (let ((_ctx158975_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id158971_
           _private?158972_
           _phi158973_
           _ctx158975_))))
    (define gx#core-bind-feature!
      (lambda _g167036_
        (let ((_g167035_ (##length _g167036_)))
          (cond ((##fx= _g167035_ 1)
                 (apply (lambda (_id158956_)
                          (gx#core-bind-feature!__0 _id158956_))
                        _g167036_))
                ((##fx= _g167035_ 2)
                 (apply (lambda (_id158964_ _private?158965_)
                          (gx#core-bind-feature!__1
                           _id158964_
                           _private?158965_))
                        _g167036_))
                ((##fx= _g167035_ 3)
                 (apply (lambda (_id158971_ _private?158972_ _phi158973_)
                          (gx#core-bind-feature!__2
                           _id158971_
                           _private?158972_
                           _phi158973_))
                        _g167036_))
                ((##fx= _g167035_ 4)
                 (apply (lambda (_id158977_
                                 _private?158978_
                                 _phi158979_
                                 _ctx158980_)
                          (gx#core-bind-feature!__%
                           _id158977_
                           _private?158978_
                           _phi158979_
                           _ctx158980_))
                        _g167036_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g167036_))))))))
