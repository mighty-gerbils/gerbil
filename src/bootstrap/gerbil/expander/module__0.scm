(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1708202847)
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
      (lambda _$args160531_
        (apply make-instance gx#module-import::t _$args160531_)))
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
      (lambda _$args160528_
        (apply make-instance gx#module-export::t _$args160528_)))
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
      (lambda _$args160525_
        (apply make-instance gx#import-set::t _$args160525_)))
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
      (lambda _$args160522_
        (apply make-instance gx#export-set::t _$args160522_)))
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
      (lambda _$args160519_
        (apply make-instance gx#import-expander::t _$args160519_)))
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
      (lambda _$args160516_
        (apply make-instance gx#export-expander::t _$args160516_)))
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
      (lambda _$args160513_
        (apply make-instance gx#import-export-expander::t _$args160513_)))
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
      (lambda (_path160510_ _fun160511_)
        (call-with-input-file
         (cons 'path: (cons _path160510_ gx#source-file-settings))
         _fun160511_)))
    (define gx#module-context:::init!
      (lambda (_self160504_ _id160505_ _super160506_ _ns160507_ _path160508_)
        (if (##fx< '11 (##structure-length _self160504_))
            (begin
              (##unchecked-structure-set!
               _self160504_
               _id160505_
               '1
               (##structure-type _self160504_)
               '#f)
              (##unchecked-structure-set!
               _self160504_
               (make-hash-table-eq)
               '2
               (##structure-type _self160504_)
               '#f)
              (##unchecked-structure-set!
               _self160504_
               _super160506_
               '3
               (##structure-type _self160504_)
               '#f)
              (##unchecked-structure-set!
               _self160504_
               '#f
               '4
               (##structure-type _self160504_)
               '#f)
              (##unchecked-structure-set!
               _self160504_
               '#f
               '5
               (##structure-type _self160504_)
               '#f)
              (##unchecked-structure-set!
               _self160504_
               _ns160507_
               '6
               (##structure-type _self160504_)
               '#f)
              (##unchecked-structure-set!
               _self160504_
               _path160508_
               '7
               (##structure-type _self160504_)
               '#f)
              (##unchecked-structure-set!
               _self160504_
               '()
               '8
               (##structure-type _self160504_)
               '#f)
              (##unchecked-structure-set!
               _self160504_
               '()
               '9
               (##structure-type _self160504_)
               '#f)
              (##unchecked-structure-set!
               _self160504_
               '#f
               '10
               (##structure-type _self160504_)
               '#f)
              (##unchecked-structure-set!
               _self160504_
               '#f
               '11
               (##structure-type _self160504_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self160504_
                   '11
                   (##vector-length _self160504_)))))
    (bind-method! gx#module-context::t ':init! gx#module-context:::init! '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_self160348_ _ctx160349_ _root160350_)
        (let ((_super160358_
               (let ((_$e160352_ _root160350_))
                 (if _$e160352_
                     _$e160352_
                     (let ((_$e160355_ (gx#core-context-root__0)))
                       (if _$e160355_
                           _$e160355_
                           (let ((__obj164640
                                  (##structure gx#root-context::t '#f '#f)))
                             (let ((__constructor164641
                                    (direct-method-ref
                                     gx#root-context::t
                                     __obj164640
                                     ':init!)))
                               (if __constructor164641
                                   (__constructor164641 __obj164640)
                                   (error '"missing constructor method implementation"
                                          'class:
                                          gx#root-context::t
                                          'method:
                                          ':init!)))
                             __obj164640)))))))
          (if _ctx160349_
              (let ((_id160361_
                     (##structure-ref
                      _ctx160349_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_path160362_
                     (##structure-ref _ctx160349_ '7 gx#module-context::t '#f))
                    (_in160363_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _ctx160349_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_e160364_
                     (make-promise (lambda () (gx#eval-module _ctx160349_)))))
                (if (##fx< '8 (##structure-length _self160348_))
                    (begin
                      (##unchecked-structure-set!
                       _self160348_
                       _id160361_
                       '1
                       (##structure-type _self160348_)
                       '#f)
                      (##unchecked-structure-set!
                       _self160348_
                       (make-hash-table-eq 'size: (length _in160363_))
                       '2
                       (##structure-type _self160348_)
                       '#f)
                      (##unchecked-structure-set!
                       _self160348_
                       _super160358_
                       '3
                       (##structure-type _self160348_)
                       '#f)
                      (##unchecked-structure-set!
                       _self160348_
                       '#f
                       '4
                       (##structure-type _self160348_)
                       '#f)
                      (##unchecked-structure-set!
                       _self160348_
                       '#f
                       '5
                       (##structure-type _self160348_)
                       '#f)
                      (##unchecked-structure-set!
                       _self160348_
                       _path160362_
                       '6
                       (##structure-type _self160348_)
                       '#f)
                      (##unchecked-structure-set!
                       _self160348_
                       _in160363_
                       '7
                       (##structure-type _self160348_)
                       '#f)
                      (##unchecked-structure-set!
                       _self160348_
                       _e160364_
                       '8
                       (##structure-type _self160348_)
                       '#f))
                    (error '"struct-instance-init!: too many arguments for struct"
                           _self160348_
                           '8
                           (##vector-length _self160348_)))
                (for-each
                 (lambda (_g160365160367_)
                   (gx#core-bind-weak-import!__% _g160365160367_ _self160348_))
                 _in160363_))
              (if (##fx< '8 (##structure-length _self160348_))
                  (begin
                    (##unchecked-structure-set!
                     _self160348_
                     '#f
                     '1
                     (##structure-type _self160348_)
                     '#f)
                    (##unchecked-structure-set!
                     _self160348_
                     (make-hash-table-eq)
                     '2
                     (##structure-type _self160348_)
                     '#f)
                    (##unchecked-structure-set!
                     _self160348_
                     _super160358_
                     '3
                     (##structure-type _self160348_)
                     '#f)
                    (##unchecked-structure-set!
                     _self160348_
                     '#f
                     '4
                     (##structure-type _self160348_)
                     '#f)
                    (##unchecked-structure-set!
                     _self160348_
                     '#f
                     '5
                     (##structure-type _self160348_)
                     '#f)
                    (##unchecked-structure-set!
                     _self160348_
                     '#f
                     '6
                     (##structure-type _self160348_)
                     '#f)
                    (##unchecked-structure-set!
                     _self160348_
                     '()
                     '7
                     (##structure-type _self160348_)
                     '#f)
                    (##unchecked-structure-set!
                     _self160348_
                     '#f
                     '8
                     (##structure-type _self160348_)
                     '#f))
                  (error '"struct-instance-init!: too many arguments for struct"
                         _self160348_
                         '8
                         (##vector-length _self160348_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_self160373_ _ctx160374_)
        (let ((_root160376_ '#f))
          (gx#prelude-context:::init!__%
           _self160373_
           _ctx160374_
           _root160376_))))
    (define gx#prelude-context:::init!
      (lambda _g164647_
        (let ((_g164646_ (##length _g164647_)))
          (cond ((##fx= _g164646_ 2)
                 (apply (lambda (_self160373_ _ctx160374_)
                          (gx#prelude-context:::init!__0
                           _self160373_
                           _ctx160374_))
                        _g164647_))
                ((##fx= _g164646_ 3)
                 (apply (lambda (_self160378_ _ctx160379_ _root160380_)
                          (gx#prelude-context:::init!__%
                           _self160378_
                           _ctx160379_
                           _root160380_))
                        _g164647_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g164647_))))))
    (bind-method! gx#prelude-context::t ':init! gx#prelude-context:::init! '#f)
    (define gx#import-export-expander-init!
      (lambda (_self160222_ _e160223_)
        (if (##fx< '3 (##structure-length _self160222_))
            (begin
              (##unchecked-structure-set!
               _self160222_
               _e160223_
               '1
               (##structure-type _self160222_)
               '#f)
              (##unchecked-structure-set!
               _self160222_
               (gx#current-expander-context)
               '2
               (##structure-type _self160222_)
               '#f)
              (##unchecked-structure-set!
               _self160222_
               (fx- (gx#current-expander-phi) '1)
               '3
               (##structure-type _self160222_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self160222_
                   '3
                   (##vector-length _self160222_)))))
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
      (lambda (_g159848159851_ _g159849159853_)
        (gx#core-apply-user-expander__%
         _g159848159851_
         _g159849159853_
         'apply-import-expander)))
    (bind-method!
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_g159719159722_ _g159720159724_)
        (gx#core-apply-user-expander__%
         _g159719159722_
         _g159720159724_
         'apply-export-expander)))
    (bind-method!
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_ctx159590_)
        (let* ((_path159592_
                (##structure-ref _ctx159590_ '7 gx#module-context::t '#f))
               (_path159594_
                (if (pair? _path159592_) (last _path159592_) _path159592_)))
          (if (string? _path159594_) _path159594_ '#f))))
    (define gx#import-module__%
      (lambda (_path159566_ _reload?159567_ _eval?159568_)
        (let ((_ctx159570_
               ((gx#current-expander-module-import)
                _path159566_
                _reload?159567_)))
          (if (and _ctx159570_ _eval?159568_)
              (gx#eval-module _ctx159570_)
              '#!void)
          _ctx159570_)))
    (define gx#import-module__0
      (lambda (_path159575_)
        (let* ((_reload?159577_ '#f) (_eval?159579_ '#f))
          (gx#import-module__% _path159575_ _reload?159577_ _eval?159579_))))
    (define gx#import-module__1
      (lambda (_path159581_ _reload?159582_)
        (let ((_eval?159584_ '#f))
          (gx#import-module__% _path159581_ _reload?159582_ _eval?159584_))))
    (define gx#import-module
      (lambda _g164649_
        (let ((_g164648_ (##length _g164649_)))
          (cond ((##fx= _g164648_ 1)
                 (apply (lambda (_path159575_)
                          (gx#import-module__0 _path159575_))
                        _g164649_))
                ((##fx= _g164648_ 2)
                 (apply (lambda (_path159581_ _reload?159582_)
                          (gx#import-module__1 _path159581_ _reload?159582_))
                        _g164649_))
                ((##fx= _g164648_ 3)
                 (apply (lambda (_path159586_ _reload?159587_ _eval?159588_)
                          (gx#import-module__%
                           _path159586_
                           _reload?159587_
                           _eval?159588_))
                        _g164649_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g164649_))))))
    (define gx#eval-module
      (lambda (_mod159563_) ((gx#current-expander-module-eval) _mod159563_)))
    (define gx#core-eval-module
      (lambda (_obj159548_)
        (letrec ((_force-e159550_
                  (lambda (_getf159559_ _e159560_)
                    (call-with-parameters
                     (lambda () (force (_getf159559_ _e159560_)))
                     gx#current-expander-context
                     _e159560_
                     gx#current-expander-phi
                     '0))))
          (let _recur159552_ ((_e159554_ _obj159548_))
            (if (##structure-instance-of? _e159554_ 'gx#module-context::t)
                (begin
                  (let ((_$e159556_ (gx#core-context-prelude__% _e159554_)))
                    (if _$e159556_ (_recur159552_ _$e159556_) '#!void))
                  (_force-e159550_ gx#module-context-e _e159554_))
                (if (##structure-instance-of? _e159554_ 'gx#prelude-context::t)
                    (_force-e159550_ gx#prelude-context-e _e159554_)
                    (if (gx#stx-string? _e159554_)
                        (_recur159552_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _e159554_)))
                        (if (gx#core-library-module-path? _e159554_)
                            (_recur159552_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _e159554_)))
                            (error '"Cannot eval module" _obj159548_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_ctx159531_)
        (let _lp159533_ ((_e159535_ _ctx159531_))
          (if (or (##structure-instance-of? _e159535_ 'gx#module-context::t)
                  (##structure-instance-of? _e159535_ 'gx#local-context::t))
              (_lp159533_
               (##unchecked-structure-ref _e159535_ '3 gx#phi-context::t '#f))
              (if (##structure-instance-of? _e159535_ 'gx#prelude-context::t)
                  _e159535_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_ctx159544_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _ctx159544_))))
    (define gx#core-context-prelude
      (lambda _g164651_
        (let ((_g164650_ (##length _g164651_)))
          (cond ((##fx= _g164650_ 0)
                 (apply (lambda () (gx#core-context-prelude__0)) _g164651_))
                ((##fx= _g164650_ 1)
                 (apply (lambda (_ctx159546_)
                          (gx#core-context-prelude__% _ctx159546_))
                        _g164651_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g164651_))))))
    (define gx#core-module->prelude-context
      (lambda (_ctx159521_)
        (let* ((_ht159523_ (gx#current-expander-module-registry))
               (_$e159525_ (hash-get _ht159523_ _ctx159521_)))
          (if _$e159525_
              (values _$e159525_)
              (let ((_pre159528_
                     (let ((__obj164642
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
                       (gx#prelude-context:::init! __obj164642 _ctx159521_)
                       __obj164642)))
                (table-set! _ht159523_ _ctx159521_ _pre159528_)
                _pre159528_)))))
    (define gx#core-import-module__%
      (lambda (_rpath159402_ _reload?159403_)
        (letrec ((_import-source159405_
                  (lambda (_path159490_)
                    (if (member _path159490_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _path159490_)
                        '#!void)
                    (call-with-parameters
                     (lambda ()
                       (let ((_g164652_ (gx#core-read-module _path159490_)))
                         (begin
                           (let ((_g164653_
                                  (if (##values? _g164652_)
                                      (##vector-length _g164652_)
                                      1)))
                             (if (not (##fx= _g164653_ 4))
                                 (error "Context expects 4 values" _g164653_)))
                           (let ((_pre159493_ (##vector-ref _g164652_ 0))
                                 (_id159494_ (##vector-ref _g164652_ 1))
                                 (_ns159495_ (##vector-ref _g164652_ 2))
                                 (_body159496_ (##vector-ref _g164652_ 3)))
                             (let* ((_prelude159501_
                                     (if (##structure-instance-of?
                                          _pre159493_
                                          'gx#prelude-context::t)
                                         _pre159493_
                                         (if (##structure-instance-of?
                                              _pre159493_
                                              'gx#module-context::t)
                                             (gx#core-module->prelude-context
                                              _pre159493_)
                                             (if (string? _pre159493_)
                                                 (gx#core-module->prelude-context
                                                  (gx#core-import-module__0
                                                   _pre159493_))
                                                 (if (not _pre159493_)
                                                     (let ((_$e159498_
                                                            (gx#current-expander-module-prelude)))
                                                       (if _$e159498_
                                                           _$e159498_
                                                           (let ((__obj164643
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
                     (gx#prelude-context:::init! __obj164643 '#f)
                     __obj164643)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error '"Cannot import module; unknown prelude"
                                                            _rpath159402_
                                                            _pre159493_))))))
                                    (_ctx159503_
                                     (let ((__obj164644
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
                                        __obj164644
                                        _id159494_
                                        _prelude159501_
                                        _ns159495_
                                        _path159490_)
                                       __obj164644))
                                    (_body159505_
                                     (gx#core-expand-module-begin
                                      _body159496_
                                      _ctx159503_))
                                    (_body159507_
                                     (gx#core-quote-syntax__%
                                      (gx#core-cons '%#begin _body159505_)
                                      _path159490_
                                      _ctx159503_
                                      '())))
                               (##unchecked-structure-set!
                                _ctx159503_
                                (make-promise
                                 (lambda () (gx#eval-syntax* _body159507_)))
                                '10
                                gx#module-context::t
                                '#f)
                               (##unchecked-structure-set!
                                _ctx159503_
                                _body159507_
                                '11
                                gx#module-context::t
                                '#f)
                               (table-set!
                                (gx#current-expander-module-registry)
                                _path159490_
                                _ctx159503_)
                               (table-set!
                                (gx#current-expander-module-registry)
                                _id159494_
                                _ctx159503_)
                               _ctx159503_)))))
                     gx#current-expander-context
                     (gx#core-context-root__0)
                     gx#current-expander-marks
                     '()
                     gx#current-expander-phi
                     '0
                     gx#current-expander-path
                     (cons _path159490_ (gx#current-expander-path))
                     gx#current-import-expander-phi
                     '#f
                     gx#current-export-expander-phi
                     '#f)))
                 (_import-submodule159406_
                  (lambda (_rpath159418_)
                    (let* ((_rpath159419159426_ _rpath159418_)
                           (_E159421159430_
                            (lambda ()
                              (error '"No clause matching"
                                     _rpath159419159426_)))
                           (_K159422159478_
                            (lambda (_refs159433_ _origin159434_)
                              (let ((_ctx159436_
                                     (if _origin159434_
                                         (gx#core-import-module__%
                                          _origin159434_
                                          _reload?159403_)
                                         (gx#current-expander-context))))
                                (let _lp159438_ ((_rest159440_ _refs159433_)
                                                 (_ctx159441_ _ctx159436_))
                                  (let* ((_rest159442159450_ _rest159440_)
                                         (_else159444159458_
                                          (lambda () _ctx159441_))
                                         (_K159446159466_
                                          (lambda (_rest159461_ _id159462_)
                                            (let ((_bind159464_
                                                   (gx#resolve-identifier__%
                                                    _id159462_
                                                    '0
                                                    _ctx159441_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _bind159464_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _bind159464_
                                                         '4
                                                         gx#syntax-binding::t
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_lp159438_
                                                   _rest159461_
                                                   (##unchecked-structure-ref
                                                    _bind159464_
                                                    '4
                                                    gx#syntax-binding::t
                                                    '#f))
                                                  (error '"Cannot import submodule; not bound as a module"
                                                         _rpath159418_
                                                         _id159462_
                                                         _bind159464_))))))
                                    (if (##pair? _rest159442159450_)
                                        (let ((_hd159447159469_
                                               (##car _rest159442159450_))
                                              (_tl159448159471_
                                               (##cdr _rest159442159450_)))
                                          (let* ((_id159474_ _hd159447159469_)
                                                 (_rest159476_
                                                  _tl159448159471_))
                                            (_K159446159466_
                                             _rest159476_
                                             _id159474_)))
                                        (_else159444159458_))))))))
                      (if (##pair? _rpath159419159426_)
                          (let ((_hd159423159481_ (##car _rpath159419159426_))
                                (_tl159424159483_ (##cdr _rpath159419159426_)))
                            (let* ((_origin159486_ _hd159423159481_)
                                   (_refs159488_ _tl159424159483_))
                              (_K159422159478_ _refs159488_ _origin159486_)))
                          (_E159421159430_))))))
          (let ((_$e159408_
                 (if (not _reload?159403_)
                     (hash-get
                      (gx#current-expander-module-registry)
                      _rpath159402_)
                     '#f)))
            (if _$e159408_
                (values _$e159408_)
                (if (list? _rpath159402_)
                    (_import-submodule159406_ _rpath159402_)
                    (if (gx#core-library-module-path? _rpath159402_)
                        (let ((_ctx159411_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _rpath159402_)
                                _reload?159403_)))
                          (table-set!
                           (gx#current-expander-module-registry)
                           _rpath159402_
                           _ctx159411_)
                          _ctx159411_)
                        (let* ((_npath159413_ (path-normalize _rpath159402_))
                               (_$e159415_
                                (if (not _reload?159403_)
                                    (hash-get
                                     (gx#current-expander-module-registry)
                                     _npath159413_)
                                    '#f)))
                          (if _$e159415_
                              (values _$e159415_)
                              (_import-source159405_ _npath159413_))))))))))
    (define gx#core-import-module__0
      (lambda (_rpath159514_)
        (let ((_reload?159516_ '#f))
          (gx#core-import-module__% _rpath159514_ _reload?159516_))))
    (define gx#core-import-module
      (lambda _g164655_
        (let ((_g164654_ (##length _g164655_)))
          (cond ((##fx= _g164654_ 1)
                 (apply (lambda (_rpath159514_)
                          (gx#core-import-module__0 _rpath159514_))
                        _g164655_))
                ((##fx= _g164654_ 2)
                 (apply (lambda (_rpath159518_ _reload?159519_)
                          (gx#core-import-module__%
                           _rpath159518_
                           _reload?159519_))
                        _g164655_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g164655_))))))
    (define gx#core-read-module
      (lambda (_path159391_)
        (with-catch
         (lambda (_exn159393_)
           (if (and (datum-parsing-exception? _exn159393_)
                    (eq? (datum-parsing-exception-filepos _exn159393_) '0))
               (gx#core-read-module/lang _path159391_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _path159391_
                (call-with-parameters
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_g159395159397_)
                      (display-exception _exn159393_ _g159395159397_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _path159391_)))))
    (define gx#core-read-module/sexp
      (lambda (_path159254_)
        (let _lp159256_ ((_body159258_ (read-syntax-from-file _path159254_))
                         (_pre159259_ '#f)
                         (_ns159260_ '#f)
                         (_pkg159261_ '#f))
          (let* ((_e159262159286_ _body159258_)
                 (_E159278159308_
                  (lambda ()
                    (let ((_g164656_
                           (if _pkg159261_
                               (values _pre159259_ _ns159260_ _pkg159261_)
                               (gx#core-read-module-package
                                _path159254_
                                _pre159259_
                                _ns159260_))))
                      (begin
                        (let ((_g164657_
                               (if (##values? _g164656_)
                                   (##vector-length _g164656_)
                                   1)))
                          (if (not (##fx= _g164657_ 3))
                              (error "Context expects 3 values" _g164657_)))
                        (let ((_pre159290_ (##vector-ref _g164656_ 0))
                              (_ns159291_ (##vector-ref _g164656_ 1))
                              (_pkg159292_ (##vector-ref _g164656_ 2)))
                          (let* ((_prelude159294_
                                  (if (gx#core-bound-module-prelude?
                                       _pre159290_)
                                      (gx#syntax-local-e__0 _pre159290_)
                                      (if (gx#core-library-module-path?
                                           _pre159290_)
                                          (gx#core-resolve-library-module-path
                                           _pre159290_)
                                          (if (gx#stx-string? _pre159290_)
                                              (gx#core-resolve-module-path__%
                                               _pre159290_
                                               _path159254_)
                                              (gx#stx-e _pre159290_)))))
                                 (_path-id159296_
                                  (gx#core-module-path->namespace
                                   _path159254_))
                                 (_pkg-id159298_
                                  (if _pkg159292_
                                      (string-append
                                       _pkg159292_
                                       '"/"
                                       _path-id159296_)
                                      _path-id159296_))
                                 (_module-id159300_
                                  (string->symbol _pkg-id159298_))
                                 (_module-ns159305_
                                  (if (eq? _ns159291_ '#!void)
                                      '#f
                                      (let ((_$e159302_ _ns159291_))
                                        (if _$e159302_
                                            _$e159302_
                                            _pkg-id159298_)))))
                            (values _prelude159294_
                                    _module-id159300_
                                    _module-ns159305_
                                    _body159258_)))))))
                 (_E159271159337_
                  (lambda ()
                    (if (gx#stx-pair? _e159262159286_)
                        (let ((_e159279159312_ (gx#syntax-e _e159262159286_)))
                          (let ((_hd159280159315_ (##car _e159279159312_))
                                (_tl159281159317_ (##cdr _e159279159312_)))
                            (if (eq? (gx#stx-e _hd159280159315_) 'package:)
                                (if (gx#stx-pair? _tl159281159317_)
                                    (let ((_e159282159320_
                                           (gx#syntax-e _tl159281159317_)))
                                      (let ((_hd159283159323_
                                             (##car _e159282159320_))
                                            (_tl159284159325_
                                             (##cdr _e159282159320_)))
                                        (let* ((_pkg159328_ _hd159283159323_)
                                               (_rest159330_ _tl159284159325_))
                                          (if '#t
                                              (let ((_pkg159335_
                                                     (if (gx#identifier?
                                                          _pkg159328_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _pkg159328_))
                                                         (if (or (gx#stx-string?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _pkg159328_)
                         (gx#stx-false? _pkg159328_))
                     (gx#stx-e _pkg159328_)
                     (gx#raise-syntax-error
                      'import
                      '"Bad syntax; Illegal package name"
                      _pkg159328_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp159256_
                                                 _rest159330_
                                                 _pre159259_
                                                 _ns159260_
                                                 _pkg159335_))
                                              (_E159278159308_)))))
                                    (_E159278159308_))
                                (_E159278159308_))))
                        (_E159278159308_))))
                 (_E159264159363_
                  (lambda ()
                    (if (gx#stx-pair? _e159262159286_)
                        (let ((_e159272159341_ (gx#syntax-e _e159262159286_)))
                          (let ((_hd159273159344_ (##car _e159272159341_))
                                (_tl159274159346_ (##cdr _e159272159341_)))
                            (if (eq? (gx#stx-e _hd159273159344_) 'namespace:)
                                (if (gx#stx-pair? _tl159274159346_)
                                    (let ((_e159275159349_
                                           (gx#syntax-e _tl159274159346_)))
                                      (let ((_hd159276159352_
                                             (##car _e159275159349_))
                                            (_tl159277159354_
                                             (##cdr _e159275159349_)))
                                        (let* ((_ns159357_ _hd159276159352_)
                                               (_rest159359_ _tl159277159354_))
                                          (if '#t
                                              (let ((_ns159361_
                                                     (if (gx#identifier?
                                                          _ns159357_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _ns159357_))
                                                         (if (gx#stx-string?
                                                              _ns159357_)
                                                             (gx#stx-e
                                                              _ns159357_)
                                                             (if (gx#stx-false?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _ns159357_)
                         '#!void
                         (gx#raise-syntax-error
                          'import
                          '"Bad syntax; illegal namespace"
                          _ns159357_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp159256_
                                                 _rest159359_
                                                 _pre159259_
                                                 _ns159361_
                                                 _pkg159261_))
                                              (_E159271159337_)))))
                                    (_E159271159337_))
                                (_E159271159337_))))
                        (_E159271159337_))))
                 (_E159263159387_
                  (lambda ()
                    (if (gx#stx-pair? _e159262159286_)
                        (let ((_e159265159367_ (gx#syntax-e _e159262159286_)))
                          (let ((_hd159266159370_ (##car _e159265159367_))
                                (_tl159267159372_ (##cdr _e159265159367_)))
                            (if (eq? (gx#stx-e _hd159266159370_) 'prelude:)
                                (if (gx#stx-pair? _tl159267159372_)
                                    (let ((_e159268159375_
                                           (gx#syntax-e _tl159267159372_)))
                                      (let ((_hd159269159378_
                                             (##car _e159268159375_))
                                            (_tl159270159380_
                                             (##cdr _e159268159375_)))
                                        (let* ((_prelude159383_
                                                _hd159269159378_)
                                               (_rest159385_ _tl159270159380_))
                                          (if '#t
                                              (_lp159256_
                                               _rest159385_
                                               _prelude159383_
                                               _ns159260_
                                               _pkg159261_)
                                              (_E159264159363_)))))
                                    (_E159264159363_))
                                (_E159264159363_))))
                        (_E159264159363_)))))
            (_E159263159387_)))))
    (define gx#core-read-module/lang
      (lambda (_path159081_)
        (letrec ((_default-read-module-body159083_
                  (lambda (_inp159246_)
                    (let _lp159248_ ((_body159250_ '()))
                      (let ((_next159252_ (read-syntax _inp159246_)))
                        (if (eof-object? _next159252_)
                            (reverse _body159250_)
                            (_lp159248_ (cons _next159252_ _body159250_)))))))
                 (_read-body159084_
                  (lambda (_inp159165_
                           _pre159166_
                           _ns159167_
                           _pkg159168_
                           _args159169_)
                    (let ((_g164658_
                           (if _pkg159168_
                               (values _pre159166_ _ns159167_ _pkg159168_)
                               (gx#core-read-module-package
                                _path159081_
                                _pre159166_
                                _ns159167_))))
                      (begin
                        (let ((_g164659_
                               (if (##values? _g164658_)
                                   (##vector-length _g164658_)
                                   1)))
                          (if (not (##fx= _g164659_ 3))
                              (error "Context expects 3 values" _g164659_)))
                        (let ((_pre159171_ (##vector-ref _g164658_ 0))
                              (_ns159172_ (##vector-ref _g164658_ 1))
                              (_pkg159173_ (##vector-ref _g164658_ 2)))
                          (let* ((_prelude159175_
                                  (gx#import-module__0 _pre159171_))
                                 (_read-module-body159229_
                                  (let ((_$e159221_
                                         (find (lambda (_e159176159178_)
                                                 (let* ((_g159180159190_
                                                         _e159176159178_)
                                                        (_else159182159198_
                                                         (lambda () '#f))
                                                        (_K159184159202_
                                                         (lambda () '#t)))
                                                   (if (##structure-direct-instance-of?
                                                        _g159180159190_
                                                        'gx#module-export::t)
                                                       (let* ((_e159185159205_
                                                               (##unchecked-structure-ref
                                                                _g159180159190_
                                                                '1
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e159186159208_
                                                               (##unchecked-structure-ref
                                                                _g159180159190_
                                                                '2
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e159187159211_
                                                               (##unchecked-structure-ref
                                                                _g159180159190_
                                                                '3
                                                                gx#module-export::t
                                                                '#f)))
                                                         (if (##eq? _e159187159211_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)
                     (let ((_e159188159214_
                            (##unchecked-structure-ref
                             _g159180159190_
                             '4
                             gx#module-export::t
                             '#f)))
                       (if ((lambda (_g159216159218_)
                              (eq? _g159216159218_ 'read-module-body))
                            _e159188159214_)
                           (_K159184159202_)
                           (_else159182159198_)))
                     (_else159182159198_)))
               (_else159182159198_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (##unchecked-structure-ref
                                                _prelude159175_
                                                '9
                                                gx#module-context::t
                                                '#f))))
                                    (if _$e159221_
                                        ((lambda (_xport159224_)
                                           (let ((_proc159227_
                                                  (with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _xport159224_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _proc159227_)
                                                 _proc159227_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _path159081_
                                                  _pre159171_
                                                  _proc159227_))))
                                         _$e159221_)
                                        _default-read-module-body159083_)))
                                 (_path-id159231_
                                  (gx#core-module-path->namespace
                                   _path159081_))
                                 (_pkg-id159233_
                                  (if _pkg159173_
                                      (string-append
                                       _pkg159173_
                                       '"/"
                                       _path-id159231_)
                                      _path-id159231_))
                                 (_module-id159235_
                                  (string->symbol _pkg-id159233_))
                                 (_module-ns159240_
                                  (let ((_$e159237_ _ns159172_))
                                    (if _$e159237_ _$e159237_ _pkg-id159233_)))
                                 (_body159243_
                                  (call-with-parameters
                                   (lambda ()
                                     (_read-module-body159229_ _inp159165_))
                                   gx#current-module-reader-path
                                   _path159081_
                                   gx#current-module-reader-args
                                   _args159169_)))
                            (values _prelude159175_
                                    _module-id159235_
                                    _module-ns159240_
                                    _body159243_)))))))
                 (_string-e159085_
                  (lambda (_obj159162_ _what159163_)
                    (if (string? _obj159162_)
                        _obj159162_
                        (if (symbol? _obj159162_)
                            (symbol->string _obj159162_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _what159163_)
                             _path159081_
                             _obj159162_)))))
                 (_read-lang-args159086_
                  (lambda (_inp159117_ _args159118_)
                    (let* ((_args159119159127_ _args159118_)
                           (_else159121159135_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _path159081_)))
                           (_K159123159150_
                            (lambda (_args159138_ _prelude159139_)
                              (let* ((_pkg159141_
                                      (pgetq 'package: _args159138_))
                                     (_pkg159143_
                                      (if _pkg159141_
                                          (_string-e159085_
                                           _pkg159141_
                                           '"package")
                                          '#f))
                                     (_ns159145_
                                      (pgetq 'namespace: _args159138_))
                                     (_ns159147_
                                      (if _ns159145_
                                          (_string-e159085_
                                           _ns159145_
                                           '"namespace")
                                          '#f)))
                                (_read-body159084_
                                 _inp159117_
                                 _prelude159139_
                                 _ns159147_
                                 _pkg159143_
                                 _args159138_)))))
                      (if (##pair? _args159119159127_)
                          (let ((_hd159124159153_ (##car _args159119159127_))
                                (_tl159125159155_ (##cdr _args159119159127_)))
                            (let* ((_prelude159158_ _hd159124159153_)
                                   (_args159160_ _tl159125159155_))
                              (_K159123159150_ _args159160_ _prelude159158_)))
                          (_else159121159135_)))))
                 (_read-lang159087_
                  (lambda (_inp159092_)
                    (let* ((_head159094_ (read-line _inp159092_))
                           (_$e159096_ (string-index _head159094_ '#\space)))
                      (if _$e159096_
                          ((lambda (_ix159099_)
                             (let ((_lang159101_
                                    (substring _head159094_ '0 _ix159099_)))
                               (if (equal? _lang159101_ '"#lang")
                                   (let* ((_rest159103_
                                           (substring
                                            _head159094_
                                            (fx+ _ix159099_ '1)
                                            (string-length _head159094_)))
                                          (_args159114_
                                           (with-catch
                                            (lambda (_g159104159106_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _path159081_
                                               _g159104159106_))
                                            (lambda ()
                                              (call-with-input-string
                                               _rest159103_
                                               (lambda (_g159109159111_)
                                                 (read-all
                                                  _g159109159111_
                                                  read)))))))
                                     (_read-lang-args159086_
                                      _inp159092_
                                      _args159114_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _path159081_))))
                           _$e159096_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _path159081_)))))
                 (_read-e159088_
                  (lambda (_inp159090_)
                    (if (eq? (peek-char _inp159090_) '#\#)
                        (_read-lang159087_ _inp159090_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _path159081_)))))
          (gx#call-with-input-source-file _path159081_ _read-e159088_))))
    (define gx#core-read-module-package
      (lambda (_path159035_ _pre159036_ _ns159037_)
        (letrec ((_string-e159039_
                  (lambda (_e159079_)
                    (if (symbol? _e159079_)
                        (symbol->string _e159079_)
                        (if (string? _e159079_)
                            _e159079_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _e159079_))))))
          (let _lp159041_ ((_dir159043_ (path-directory _path159035_))
                           (_pkg-path159044_ '()))
            (let ((_gerbil.pkg159046_ (path-expand '"gerbil.pkg" _dir159043_)))
              (if (file-exists? _gerbil.pkg159046_)
                  (let ((_plist159048_
                         (gx#core-library-package-plist__% _dir159043_ '#t)))
                    (if (null? _plist159048_)
                        (let ((_pkg159050_
                               (if (not (null? _pkg-path159044_))
                                   (string-join _pkg-path159044_ '"/")
                                   '#f)))
                          (values _pre159036_ _ns159037_ _pkg159050_))
                        (if (list? _plist159048_)
                            (let* ((_root159052_
                                    (pgetq 'package: _plist159048_))
                                   (_pkg159056_
                                    (let ((_pkg-path159054_
                                           (if _root159052_
                                               (cons (_string-e159039_
                                                      _root159052_)
                                                     _pkg-path159044_)
                                               _pkg-path159044_)))
                                      (if (not (null? _pkg-path159054_))
                                          (string-join _pkg-path159054_ '"/")
                                          '#f)))
                                   (_ns159063_
                                    (let ((_ns159061_
                                           (let ((_$e159058_ _ns159037_))
                                             (if _$e159058_
                                                 _$e159058_
                                                 (pgetq 'namespace:
                                                        _plist159048_)))))
                                      (if _ns159061_
                                          (_string-e159039_ _ns159061_)
                                          '#f)))
                                   (_pre159068_
                                    (let ((_$e159065_ _pre159036_))
                                      (if _$e159065_
                                          _$e159065_
                                          (pgetq 'prelude: _plist159048_)))))
                              (values _pre159068_ _ns159063_ _pkg159056_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _plist159048_))))
                  (let ((_dir*159071_
                         (path-strip-trailing-directory-separator
                          _dir159043_)))
                    (if (or (string-empty? _dir*159071_)
                            (equal? _dir159043_ _dir*159071_))
                        (values _pre159036_ _ns159037_ '#f)
                        (let ((_xpath159076_
                               (path-strip-directory _dir*159071_))
                              (_xdir159077_ (path-directory _dir*159071_)))
                          (_lp159041_
                           _xdir159077_
                           (cons _xpath159076_ _pkg-path159044_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_path159033_)
        (path-strip-extension (path-strip-directory _path159033_))))
    (define gx#core-module-path->id
      (lambda (_path159031_)
        (string->symbol (gx#core-module-path->namespace _path159031_))))
    (define gx#core-resolve-module-path__%
      (lambda (_stx-path159010_ _rel159011_)
        (let* ((_path159013_ (gx#stx-e _stx-path159010_))
               (_path159015_
                (if (string-empty? (path-extension _path159013_))
                    (string-append _path159013_ '".ss")
                    _path159013_)))
          (gx#core-resolve-path__%
           _path159015_
           (let ((_$e159018_ (gx#stx-source _stx-path159010_)))
             (if _$e159018_ _$e159018_ _rel159011_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_stx-path159024_)
        (let ((_rel159026_ '#f))
          (gx#core-resolve-module-path__% _stx-path159024_ _rel159026_))))
    (define gx#core-resolve-module-path
      (lambda _g164661_
        (let ((_g164660_ (##length _g164661_)))
          (cond ((##fx= _g164660_ 1)
                 (apply (lambda (_stx-path159024_)
                          (gx#core-resolve-module-path__0 _stx-path159024_))
                        _g164661_))
                ((##fx= _g164660_ 2)
                 (apply (lambda (_stx-path159028_ _rel159029_)
                          (gx#core-resolve-module-path__%
                           _stx-path159028_
                           _rel159029_))
                        _g164661_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g164661_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_libpath158896_)
        (let* ((_spath158898_ (symbol->string (gx#stx-e _libpath158896_)))
               (_spath158900_
                (substring _spath158898_ '1 (string-length _spath158898_)))
               (_ext158902_ (path-extension _spath158900_))
               (_ssi158904_
                (if (string-empty? _ext158902_)
                    (string-append _spath158900_ '".ssi")
                    (string-append
                     (path-strip-extension _spath158900_)
                     '".ssi")))
               (_srcs158908_
                (if (string-empty? _ext158902_)
                    (map (lambda (_ext158906_)
                           (string-append _spath158900_ _ext158906_))
                         '(".ss" ".sld" ".scm"))
                    (cons _spath158900_ '()))))
          (let _lp158911_ ((_rest158913_
                            (gx#current-expander-module-library-path)))
            (let* ((_rest158914158923_ _rest158913_)
                   (_E158917158927_
                    (lambda ()
                      (error '"No clause matching" _rest158914158923_))))
              (let ((_K158919158997_
                     (lambda (_rest158938_ _dir158939_)
                       (letrec ((_resolve158941_
                                 (lambda (_ssi158953_ _srcs158954_)
                                   (let ((_compiled-path158956_
                                          (path-expand
                                           _ssi158953_
                                           _dir158939_)))
                                     (if (file-exists? _compiled-path158956_)
                                         (path-normalize _compiled-path158956_)
                                         (let _lpr158958_ ((_rest-src158960_
                                                            _srcs158954_))
                                           (let* ((_rest-src158961158969_
                                                   _rest-src158960_)
                                                  (_else158963158977_
                                                   (lambda ()
                                                     (_lp158911_
                                                      _rest158938_)))
                                                  (_K158965158985_
                                                   (lambda (_rest-src158980_
                                                            _src158981_)
                                                     (let ((_src-path158983_
                                                            (path-expand
                                                             _src158981_
                                                             _dir158939_)))
                                                       (if (file-exists?
                                                            _src-path158983_)
                                                           (path-normalize
                                                            _src-path158983_)
                                                           (_lpr158958_
                                                            _rest-src158980_))))))
                                             (if (##pair? _rest-src158961158969_)
                                                 (let ((_hd158966158988_
                                                        (##car _rest-src158961158969_))
                                                       (_tl158967158990_
                                                        (##cdr _rest-src158961158969_)))
                                                   (let* ((_src158993_
                                                           _hd158966158988_)
                                                          (_rest-src158995_
                                                           _tl158967158990_))
                                                     (_K158965158985_
                                                      _rest-src158995_
                                                      _src158993_)))
                                                 (_else158963158977_)))))))))
                         (let ((_$e158943_
                                (gx#core-library-package-path-prefix
                                 _dir158939_)))
                           (if _$e158943_
                               ((lambda (_prefix158946_)
                                  (if (string-prefix?
                                       _prefix158946_
                                       _spath158900_)
                                      (let ((_ssi158950_
                                             (substring
                                              _ssi158904_
                                              (string-length _prefix158946_)
                                              (string-length _ssi158904_)))
                                            (_srcs158951_
                                             (map (lambda (_src158948_)
                                                    (substring
                                                     _src158948_
                                                     (string-length
                                                      _prefix158946_)
                                                     (string-length
                                                      _src158948_)))
                                                  _srcs158908_)))
                                        (_resolve158941_
                                         _ssi158950_
                                         _srcs158951_))
                                      (_lp158911_ _rest158938_)))
                                _$e158943_)
                               (_resolve158941_ _ssi158904_ _srcs158908_))))))
                    (_K158918158932_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"Cannot find library module"
                        _libpath158896_))))
                (let ((_try-match158916158935_
                       (lambda ()
                         (if (##null? _rest158914158923_)
                             (_K158918158932_)
                             (_E158917158927_)))))
                  (if (##pair? _rest158914158923_)
                      (let ((_tl158921159002_ (##cdr _rest158914158923_))
                            (_hd158920159000_ (##car _rest158914158923_)))
                        (let ((_dir159005_ _hd158920159000_)
                              (_rest159007_ _tl158921159002_))
                          (_K158919158997_ _rest159007_ _dir159005_)))
                      (_try-match158916158935_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_modpath158869_)
        (letrec ((_resolve158871_
                  (lambda (_path158888_ _base158889_)
                    (let ((_$e158891_ (string-rindex _base158889_ '#\/)))
                      (if _$e158891_
                          ((lambda (_idx158894_)
                             (gx#core-resolve-library-module-path
                              (string->symbol
                               (string-append
                                '":"
                                (substring _base158889_ '0 _idx158894_)
                                '"/"
                                _path158888_))))
                           _$e158891_)
                          (gx#core-resolve-library-module-path
                           (string->symbol
                            (string-append '":" _path158888_))))))))
          (let ((_spath158873_ (symbol->string (gx#stx-e _modpath158869_)))
                (_mod158874_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _mod158874_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"Cannot resolve relative module path; not in module context"
                 _modpath158869_))
            (let ((_mpath158876_
                   (symbol->string
                    (##structure-ref
                     _mod158874_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _lp158878_ ((_spath158880_ _spath158873_)
                               (_mpath158881_ _mpath158876_))
                (if (string-prefix? '"../" _spath158880_)
                    (let ((_$e158883_ (string-rindex _mpath158881_ '#\/)))
                      (if _$e158883_
                          ((lambda (_idx158886_)
                             (_lp158878_
                              (substring
                               _spath158880_
                               '3
                               (string-length _spath158880_))
                              (substring _mpath158881_ '0 _idx158886_)))
                           _$e158883_)
                          (gx#raise-syntax-error
                           '#f
                           '"Cannot resolve relative module path; illegal traversal"
                           _modpath158869_)))
                    (if (string-prefix? '"./" _spath158880_)
                        (_lp158878_
                         (substring
                          _spath158880_
                          '2
                          (string-length _spath158880_))
                         _mpath158881_)
                        (_resolve158871_ _spath158880_ _mpath158881_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_dir158862_)
        (let ((_$e158864_
               (pgetq 'package:
                      (gx#core-library-package-plist__0 _dir158862_))))
          (if _$e158864_
              ((lambda (_pkg158867_)
                 (string-append (symbol->string _pkg158867_) '"/"))
               _$e158864_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_dir158834_ _exists?158835_)
        (let* ((_cache158837_ (gx#core-library-package-cache))
               (_$e158839_ (hash-get _cache158837_ _dir158834_)))
          (if _$e158839_
              (values _$e158839_)
              (let* ((_gerbil.pkg158842_
                      (path-expand '"gerbil.pkg" _dir158834_))
                     (_plist158849_
                      (if (or _exists?158835_
                              (file-exists? _gerbil.pkg158842_))
                          (let ((_e158847_
                                 (gx#call-with-input-source-file
                                  _gerbil.pkg158842_
                                  read)))
                            (if (eof-object? _e158847_)
                                '()
                                (if (list? _e158847_)
                                    _e158847_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _gerbil.pkg158842_
                                     _e158847_))))
                          '())))
                (table-set! _cache158837_ _dir158834_ _plist158849_)
                _plist158849_)))))
    (define gx#core-library-package-plist__0
      (lambda (_dir158855_)
        (let ((_exists?158857_ '#f))
          (gx#core-library-package-plist__% _dir158855_ _exists?158857_))))
    (define gx#core-library-package-plist
      (lambda _g164663_
        (let ((_g164662_ (##length _g164663_)))
          (cond ((##fx= _g164662_ 1)
                 (apply (lambda (_dir158855_)
                          (gx#core-library-package-plist__0 _dir158855_))
                        _g164663_))
                ((##fx= _g164662_ 2)
                 (apply (lambda (_dir158859_ _exists?158860_)
                          (gx#core-library-package-plist__%
                           _dir158859_
                           _exists?158860_))
                        _g164663_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g164663_))))))
    (define gx#core-library-package-cache
      (lambda ()
        (let ((_$e158828_ (gx#current-expander-module-library-package-cache)))
          (if _$e158828_
              (values _$e158828_)
              (let ((_cache158831_ (make-hash-table)))
                (gx#current-expander-module-library-package-cache
                 _cache158831_)
                _cache158831_)))))
    (define gx#core-library-module-path?
      (lambda (_stx158825_) (gx#core-special-module-path? _stx158825_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_stx158823_) (gx#core-special-module-path? _stx158823_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_stx158818_ _char158819_)
        (if (gx#identifier? _stx158818_)
            (if (interned-symbol? (gx#stx-e _stx158818_))
                (let ((_str158821_ (symbol->string (gx#stx-e _stx158818_))))
                  (if (fx> (string-length _str158821_) '1)
                      (eq? (string-ref _str158821_ '0) _char158819_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_stx158812_)
        (gx#core-bound-identifier?__%
         _stx158812_
         (lambda (_g158813158815_)
           (gx#expander-binding?__% _g158813158815_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_stx158806_)
        (gx#core-bound-identifier?__%
         _stx158806_
         (lambda (_g158807158809_)
           (gx#expander-binding?__% _g158807158809_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_stx158793_)
        (letrec ((_module-prelude?158795_
                  (lambda (_e158801_)
                    (let ((_$e158803_
                           (##structure-instance-of?
                            _e158801_
                            'gx#module-context::t)))
                      (if _$e158803_
                          _$e158803_
                          (##structure-instance-of?
                           _e158801_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _stx158793_
           (lambda (_g158796158798_)
             (gx#expander-binding?__%
              _g158796158798_
              _module-prelude?158795_))))))
    (define gx#core-bind-import!__%
      (lambda (_in158723_ _ctx158724_ _force-weak?158725_)
        (let* ((_in158726158735_ _in158723_)
               (_E158728158739_
                (lambda () (error '"No clause matching" _in158726158735_)))
               (_K158729158752_
                (lambda (_weak?158742_ _phi158743_ _key158744_ _source158745_)
                  (gx#core-bind!__%
                   _key158744_
                   (let ((_e158747_
                          (gx#core-resolve-module-export _source158745_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref
                       _e158747_
                       '1
                       gx#binding::t
                       '#f)
                      _key158744_
                      _phi158743_
                      _e158747_
                      (##unchecked-structure-ref
                       _source158745_
                       '1
                       gx#module-export::t
                       '#f)
                      (let ((_$e158749_ _force-weak?158725_))
                        (if _$e158749_ _$e158749_ _weak?158742_))))
                   gx#core-context-rebind?
                   _phi158743_
                   _ctx158724_))))
          (if (##structure-direct-instance-of?
               _in158726158735_
               'gx#module-import::t)
              (let* ((_e158730158755_
                      (##unchecked-structure-ref
                       _in158726158735_
                       '1
                       gx#module-import::t
                       '#f))
                     (_source158758_ _e158730158755_)
                     (_e158731158760_
                      (##unchecked-structure-ref
                       _in158726158735_
                       '2
                       gx#module-import::t
                       '#f))
                     (_key158763_ _e158731158760_)
                     (_e158732158765_
                      (##unchecked-structure-ref
                       _in158726158735_
                       '3
                       gx#module-import::t
                       '#f))
                     (_phi158768_ _e158732158765_)
                     (_e158733158770_
                      (##unchecked-structure-ref
                       _in158726158735_
                       '4
                       gx#module-import::t
                       '#f))
                     (_weak?158773_ _e158733158770_))
                (_K158729158752_
                 _weak?158773_
                 _phi158768_
                 _key158763_
                 _source158758_))
              (_E158728158739_)))))
    (define gx#core-bind-import!__0
      (lambda (_in158778_)
        (let* ((_ctx158780_ (gx#current-expander-context))
               (_force-weak?158782_ '#f))
          (gx#core-bind-import!__%
           _in158778_
           _ctx158780_
           _force-weak?158782_))))
    (define gx#core-bind-import!__1
      (lambda (_in158784_ _ctx158785_)
        (let ((_force-weak?158787_ '#f))
          (gx#core-bind-import!__%
           _in158784_
           _ctx158785_
           _force-weak?158787_))))
    (define gx#core-bind-import!
      (lambda _g164665_
        (let ((_g164664_ (##length _g164665_)))
          (cond ((##fx= _g164664_ 1)
                 (apply (lambda (_in158778_)
                          (gx#core-bind-import!__0 _in158778_))
                        _g164665_))
                ((##fx= _g164664_ 2)
                 (apply (lambda (_in158784_ _ctx158785_)
                          (gx#core-bind-import!__1 _in158784_ _ctx158785_))
                        _g164665_))
                ((##fx= _g164664_ 3)
                 (apply (lambda (_in158789_ _ctx158790_ _force-weak?158791_)
                          (gx#core-bind-import!__%
                           _in158789_
                           _ctx158790_
                           _force-weak?158791_))
                        _g164665_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g164665_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_in158709_ _ctx158710_)
        (gx#core-bind-import!__% _in158709_ _ctx158710_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_in158715_)
        (let ((_ctx158717_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _in158715_ _ctx158717_))))
    (define gx#core-bind-weak-import!
      (lambda _g164667_
        (let ((_g164666_ (##length _g164667_)))
          (cond ((##fx= _g164666_ 1)
                 (apply (lambda (_in158715_)
                          (gx#core-bind-weak-import!__0 _in158715_))
                        _g164667_))
                ((##fx= _g164666_ 2)
                 (apply (lambda (_in158719_ _ctx158720_)
                          (gx#core-bind-weak-import!__%
                           _in158719_
                           _ctx158720_))
                        _g164667_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g164667_))))))
    (define gx#core-resolve-module-export
      (lambda (_out158600_)
        (letrec ((_subst158602_
                  (lambda (_key158648_)
                    (let* ((_key158649158657_ _key158648_)
                           (_else158651158665_ (lambda () _key158648_))
                           (_K158653158696_
                            (lambda (_mark158668_ _id158669_)
                              (let* ((_mark158670158676_ _mark158668_)
                                     (_E158672158680_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark158670158676_)))
                                     (_K158673158688_
                                      (lambda (_subst158683_)
                                        (let ((_$e158685_
                                               (if _subst158683_
                                                   (hash-get
                                                    _subst158683_
                                                    _id158669_)
                                                   '#f)))
                                          (if _$e158685_
                                              _$e158685_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _key158648_))))))
                                (if (##structure-instance-of?
                                     _mark158670158676_
                                     'gx#expander-mark::t)
                                    (let* ((_e158674158691_
                                            (##unchecked-structure-ref
                                             _mark158670158676_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst158694_ _e158674158691_))
                                      (_K158673158688_ _subst158694_))
                                    (_E158672158680_))))))
                      (if (##pair? _key158649158657_)
                          (let ((_hd158654158699_ (##car _key158649158657_))
                                (_tl158655158701_ (##cdr _key158649158657_)))
                            (let* ((_id158704_ _hd158654158699_)
                                   (_mark158706_ _tl158655158701_))
                              (_K158653158696_ _mark158706_ _id158704_)))
                          (_else158651158665_))))))
          (let* ((_out158603158613_ _out158600_)
                 (_E158605158617_
                  (lambda () (error '"No clause matching" _out158603158613_)))
                 (_K158606158624_
                  (lambda (_phi158620_ _key158621_ _ctx158622_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _ctx158622_ _phi158620_)
                     (_subst158602_ _key158621_)))))
            (if (##structure-direct-instance-of?
                 _out158603158613_
                 'gx#module-export::t)
                (let* ((_e158607158627_
                        (##unchecked-structure-ref
                         _out158603158613_
                         '1
                         gx#module-export::t
                         '#f))
                       (_ctx158630_ _e158607158627_)
                       (_e158608158632_
                        (##unchecked-structure-ref
                         _out158603158613_
                         '2
                         gx#module-export::t
                         '#f))
                       (_key158635_ _e158608158632_)
                       (_e158609158637_
                        (##unchecked-structure-ref
                         _out158603158613_
                         '3
                         gx#module-export::t
                         '#f))
                       (_phi158640_ _e158609158637_)
                       (_e158610158642_
                        (##unchecked-structure-ref
                         _out158603158613_
                         '4
                         gx#module-export::t
                         '#f))
                       (_e158611158645_
                        (##unchecked-structure-ref
                         _out158603158613_
                         '5
                         gx#module-export::t
                         '#f)))
                  (_K158606158624_ _phi158640_ _key158635_ _ctx158630_))
                (_E158605158617_))))))
    (define gx#core-module-export->import__%
      (lambda (_out158525_ _rename158526_ _dphi158527_)
        (let* ((_out158528158538_ _out158525_)
               (_E158530158542_
                (lambda () (error '"No clause matching" _out158528158538_)))
               (_K158531158554_
                (lambda (_weak?158545_
                         _name158546_
                         _phi158547_
                         _key158548_
                         _ctx158549_)
                  (##structure
                   gx#module-import::t
                   _out158525_
                   (let ((_$e158551_ _rename158526_))
                     (if _$e158551_ _$e158551_ _name158546_))
                   (fx+ _phi158547_ _dphi158527_)
                   _weak?158545_))))
          (if (##structure-direct-instance-of?
               _out158528158538_
               'gx#module-export::t)
              (let* ((_e158532158557_
                      (##unchecked-structure-ref
                       _out158528158538_
                       '1
                       gx#module-export::t
                       '#f))
                     (_ctx158560_ _e158532158557_)
                     (_e158533158562_
                      (##unchecked-structure-ref
                       _out158528158538_
                       '2
                       gx#module-export::t
                       '#f))
                     (_key158565_ _e158533158562_)
                     (_e158534158567_
                      (##unchecked-structure-ref
                       _out158528158538_
                       '3
                       gx#module-export::t
                       '#f))
                     (_phi158570_ _e158534158567_)
                     (_e158535158572_
                      (##unchecked-structure-ref
                       _out158528158538_
                       '4
                       gx#module-export::t
                       '#f))
                     (_name158575_ _e158535158572_)
                     (_e158536158577_
                      (##unchecked-structure-ref
                       _out158528158538_
                       '5
                       gx#module-export::t
                       '#f))
                     (_weak?158580_ _e158536158577_))
                (_K158531158554_
                 _weak?158580_
                 _name158575_
                 _phi158570_
                 _key158565_
                 _ctx158560_))
              (_E158530158542_)))))
    (define gx#core-module-export->import__0
      (lambda (_out158585_)
        (let* ((_rename158587_ '#f) (_dphi158589_ '0))
          (gx#core-module-export->import__%
           _out158585_
           _rename158587_
           _dphi158589_))))
    (define gx#core-module-export->import__1
      (lambda (_out158591_ _rename158592_)
        (let ((_dphi158594_ '0))
          (gx#core-module-export->import__%
           _out158591_
           _rename158592_
           _dphi158594_))))
    (define gx#core-module-export->import
      (lambda _g164669_
        (let ((_g164668_ (##length _g164669_)))
          (cond ((##fx= _g164668_ 1)
                 (apply (lambda (_out158585_)
                          (gx#core-module-export->import__0 _out158585_))
                        _g164669_))
                ((##fx= _g164668_ 2)
                 (apply (lambda (_out158591_ _rename158592_)
                          (gx#core-module-export->import__1
                           _out158591_
                           _rename158592_))
                        _g164669_))
                ((##fx= _g164668_ 3)
                 (apply (lambda (_out158596_ _rename158597_ _dphi158598_)
                          (gx#core-module-export->import__%
                           _out158596_
                           _rename158597_
                           _dphi158598_))
                        _g164669_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g164669_))))))
    (define gx#core-expand-module%
      (lambda (_stx158453_)
        (letrec ((_make-context158455_
                  (lambda (_id158506_)
                    (let* ((_super158508_ (gx#current-expander-context))
                           (_bind-id158510_ (gx#stx-e _id158506_))
                           (_mod-id158512_
                            (if (##structure-instance-of?
                                 _super158508_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##structure-ref
                                  _super158508_
                                  '1
                                  gx#expander-context::t
                                  '#f)
                                 '"$"
                                 _bind-id158510_)
                                _bind-id158510_))
                           (_ns158514_ (symbol->string _mod-id158512_))
                           (_path158521_
                            (if (##structure-instance-of?
                                 _super158508_
                                 'gx#module-context::t)
                                (let ((_path158516_
                                       (##unchecked-structure-ref
                                        _super158508_
                                        '7
                                        gx#module-context::t
                                        '#f)))
                                  (if (or (pair? _path158516_)
                                          (null? _path158516_))
                                      (cons _bind-id158510_ _path158516_)
                                      (if (not _path158516_)
                                          _bind-id158510_
                                          (cons _bind-id158510_
                                                (cons _path158516_ '())))))
                                _bind-id158510_)))
                      (let ((__obj164645
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
                         __obj164645
                         _mod-id158512_
                         _super158508_
                         _ns158514_
                         _path158521_)
                        __obj164645)))))
          (let* ((_e158456158466_ _stx158453_)
                 (_E158458158470_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e158456158466_)))
                 (_E158457158502_
                  (lambda ()
                    (if (gx#stx-pair? _e158456158466_)
                        (let ((_e158459158474_ (gx#syntax-e _e158456158466_)))
                          (let ((_hd158460158477_ (##car _e158459158474_))
                                (_tl158461158479_ (##cdr _e158459158474_)))
                            (if (gx#stx-pair? _tl158461158479_)
                                (let ((_e158462158482_
                                       (gx#syntax-e _tl158461158479_)))
                                  (let ((_hd158463158485_
                                         (##car _e158462158482_))
                                        (_tl158464158487_
                                         (##cdr _e158462158482_)))
                                    (let* ((_id158490_ _hd158463158485_)
                                           (_body158492_ _tl158464158487_))
                                      (if (and (gx#identifier? _id158490_)
                                               (gx#stx-list? _body158492_))
                                          (let* ((_ctx158494_
                                                  (_make-context158455_
                                                   _id158490_))
                                                 (_body158496_
                                                  (gx#core-expand-module-begin
                                                   _body158492_
                                                   _ctx158494_))
                                                 (_body158498_
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body158496_)
                                                   (gx#stx-source
                                                    _stx158453_))))
                                            (##unchecked-structure-set!
                                             _ctx158494_
                                             (make-promise
                                              (lambda ()
                                                (gx#eval-syntax*
                                                 _body158498_)))
                                             '10
                                             gx#module-context::t
                                             '#f)
                                            (##unchecked-structure-set!
                                             _ctx158494_
                                             _body158498_
                                             '11
                                             gx#module-context::t
                                             '#f)
                                            (gx#core-bind-syntax!__0
                                             _id158490_
                                             _ctx158494_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-list
                                              '%#module
                                              (gx#core-quote-syntax__0
                                               _id158490_)
                                              _body158498_)
                                             (gx#stx-source _stx158453_)))
                                          (_E158458158470_)))))
                                (_E158458158470_))))
                        (_E158458158470_)))))
            (_E158457158502_)))))
    (define gx#core-expand-module-begin
      (lambda (_body158419_ _ctx158420_)
        (call-with-parameters
         (lambda ()
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_stx158423_
                   (gx#core-expand-head (cons '%%begin-module _body158419_)))
                  (_e158424158431_ _stx158423_)
                  (_E158426158435_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _stx158423_)))
                  (_E158425158449_
                   (lambda ()
                     (if (gx#stx-pair? _e158424158431_)
                         (let ((_e158427158439_ (gx#syntax-e _e158424158431_)))
                           (let ((_hd158428158442_ (##car _e158427158439_))
                                 (_tl158429158444_ (##cdr _e158427158439_)))
                             (if (and (gx#identifier? _hd158428158442_)
                                      (gx#core-identifier=?
                                       _hd158428158442_
                                       '%#begin-module))
                                 (let ((_body158447_ _tl158429158444_))
                                   (if '#t
                                       (if (gx#sealed-syntax? _stx158423_)
                                           _body158447_
                                           (gx#core-expand-module-body
                                            _body158447_))
                                       (_E158426158435_)))
                                 (_E158426158435_))))
                         (_E158426158435_)))))
             (_E158425158449_)))
         gx#current-expander-context
         _ctx158420_
         gx#current-expander-phi
         '0)))
    (define gx#core-expand-module-body
      (lambda (_body158215_)
        (letrec ((_expand-special158217_
                  (lambda (_hd158346_ _K158347_ _rest158348_ _r158349_)
                    (let* ((_e158350158367_ _hd158346_)
                           (_E158362158371_
                            (lambda ()
                              (_K158347_
                               _rest158348_
                               (cons (gx#core-expand-top _hd158346_)
                                     _r158349_))))
                           (_E158352158383_
                            (lambda ()
                              (if (gx#stx-pair? _e158350158367_)
                                  (let ((_e158363158375_
                                         (gx#syntax-e _e158350158367_)))
                                    (let ((_hd158364158378_
                                           (##car _e158363158375_))
                                          (_tl158365158380_
                                           (##cdr _e158363158375_)))
                                      (if (and (gx#identifier?
                                                _hd158364158378_)
                                               (gx#core-identifier=?
                                                _hd158364158378_
                                                '%#export))
                                          (if '#t
                                              (_K158347_
                                               _rest158348_
                                               (cons _hd158346_ _r158349_))
                                              (_E158362158371_))
                                          (_E158362158371_))))
                                  (_E158362158371_))))
                           (_E158351158415_
                            (lambda ()
                              (if (gx#stx-pair? _e158350158367_)
                                  (let ((_e158353158387_
                                         (gx#syntax-e _e158350158367_)))
                                    (let ((_hd158354158390_
                                           (##car _e158353158387_))
                                          (_tl158355158392_
                                           (##cdr _e158353158387_)))
                                      (if (and (gx#identifier?
                                                _hd158354158390_)
                                               (gx#core-identifier=?
                                                _hd158354158390_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl158355158392_)
                                              (let ((_e158356158395_
                                                     (gx#syntax-e
                                                      _tl158355158392_)))
                                                (let ((_hd158357158398_
                                                       (##car _e158356158395_))
                                                      (_tl158358158400_
                                                       (##cdr _e158356158395_)))
                                                  (let ((_hd-bind158403_
                                                         _hd158357158398_))
                                                    (if (gx#stx-pair?
                                                         _tl158358158400_)
                                                        (let ((_e158359158405_
                                                               (gx#syntax-e
                                                                _tl158358158400_)))
                                                          (let ((_hd158360158408_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e158359158405_))
                        (_tl158361158410_ (##cdr _e158359158405_)))
                    (let ((_expr158413_ _hd158360158408_))
                      (if (gx#stx-null? _tl158361158410_)
                          (if (gx#core-bind-values? _hd-bind158403_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind158403_)
                                (_K158347_
                                 _rest158348_
                                 (cons _hd158346_ _r158349_)))
                              (_E158352158383_))
                          (_E158352158383_)))))
                (_E158352158383_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E158352158383_))
                                          (_E158352158383_))))
                                  (_E158352158383_)))))
                      (_E158351158415_))))
                 (_expand-body158218_
                  (lambda (_rbody158220_)
                    (let _lp158222_ ((_rest158224_ _rbody158220_)
                                     (_body158225_ '()))
                      (let* ((_rest158226158234_ _rest158224_)
                             (_else158228158242_ (lambda () _body158225_))
                             (_K158230158334_
                              (lambda (_rest158245_ _hd158246_)
                                (let* ((_e158247158268_ _hd158246_)
                                       (_E158263158272_
                                        (lambda ()
                                          (_lp158222_
                                           _rest158245_
                                           (cons (gx#core-expand-expression
                                                  _hd158246_)
                                                 _body158225_))))
                                       (_E158259158286_
                                        (lambda ()
                                          (if (gx#stx-pair? _e158247158268_)
                                              (let ((_e158264158276_
                                                     (gx#syntax-e
                                                      _e158247158268_)))
                                                (let ((_hd158265158279_
                                                       (##car _e158264158276_))
                                                      (_tl158266158281_
                                                       (##cdr _e158264158276_)))
                                                  (let ((_form158284_
                                                         _hd158265158279_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _form158284_
                                                         gx#special-form-binding?)
                                                        (_lp158222_
                                                         _rest158245_
                                                         (cons _hd158246_
                                                               _body158225_))
                                                        (_E158263158272_)))))
                                              (_E158263158272_))))
                                       (_E158249158298_
                                        (lambda ()
                                          (if (gx#stx-pair? _e158247158268_)
                                              (let ((_e158260158290_
                                                     (gx#syntax-e
                                                      _e158247158268_)))
                                                (let ((_hd158261158293_
                                                       (##car _e158260158290_))
                                                      (_tl158262158295_
                                                       (##cdr _e158260158290_)))
                                                  (if (and (gx#identifier?
                                                            _hd158261158293_)
                                                           (gx#core-identifier=?
                                                            _hd158261158293_
                                                            '%#export))
                                                      (if '#t
                                                          (_lp158222_
                                                           _rest158245_
                                                           (cons (gx#core-expand-export%__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd158246_)
                         _body158225_))
                  (_E158259158286_))
              (_E158259158286_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E158259158286_))))
                                       (_E158248158330_
                                        (lambda ()
                                          (if (gx#stx-pair? _e158247158268_)
                                              (let ((_e158250158302_
                                                     (gx#syntax-e
                                                      _e158247158268_)))
                                                (let ((_hd158251158305_
                                                       (##car _e158250158302_))
                                                      (_tl158252158307_
                                                       (##cdr _e158250158302_)))
                                                  (if (and (gx#identifier?
                                                            _hd158251158305_)
                                                           (gx#core-identifier=?
                                                            _hd158251158305_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl158252158307_)
                                                          (let ((_e158253158310_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl158252158307_)))
                    (let ((_hd158254158313_ (##car _e158253158310_))
                          (_tl158255158315_ (##cdr _e158253158310_)))
                      (let ((_hd-bind158318_ _hd158254158313_))
                        (if (gx#stx-pair? _tl158255158315_)
                            (let ((_e158256158320_
                                   (gx#syntax-e _tl158255158315_)))
                              (let ((_hd158257158323_ (##car _e158256158320_))
                                    (_tl158258158325_ (##cdr _e158256158320_)))
                                (let ((_expr158328_ _hd158257158323_))
                                  (if (gx#stx-null? _tl158258158325_)
                                      (if '#t
                                          (_lp158222_
                                           _rest158245_
                                           (cons (gx#core-quote-syntax__1
                                                  (gx#core-list
                                                   '%#define-values
                                                   (gx#core-quote-bind-values
                                                    _hd-bind158318_)
                                                   (gx#core-expand-expression
                                                    _expr158328_))
                                                  (gx#stx-source _hd158246_))
                                                 _body158225_))
                                          (_E158249158298_))
                                      (_E158249158298_)))))
                            (_E158249158298_)))))
                  (_E158249158298_))
              (_E158249158298_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E158249158298_)))))
                                  (_E158248158330_)))))
                        (if (##pair? _rest158226158234_)
                            (let ((_hd158231158337_ (##car _rest158226158234_))
                                  (_tl158232158339_
                                   (##cdr _rest158226158234_)))
                              (let* ((_hd158342_ _hd158231158337_)
                                     (_rest158344_ _tl158232158339_))
                                (_K158230158334_ _rest158344_ _hd158342_)))
                            (_else158228158242_)))))))
          (_expand-body158218_
           (gx#core-expand-block__%
            (cons '%#begin-module _body158215_)
            _expand-special158217_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_stx158058_
               _expanded?158059_
               _method158060_
               _current-phi158061_
               _expand1158062_)
        (letrec ((_K158064_
                  (lambda (_rest158182_ _r158183_)
                    (let* ((_e158184158191_ _rest158182_)
                           (_E158186158195_ (lambda () _r158183_))
                           (_E158185158211_
                            (lambda ()
                              (if (gx#stx-pair? _e158184158191_)
                                  (let ((_e158187158199_
                                         (gx#syntax-e _e158184158191_)))
                                    (let ((_hd158188158202_
                                           (##car _e158187158199_))
                                          (_tl158189158204_
                                           (##cdr _e158187158199_)))
                                      (let* ((_hd158207_ _hd158188158202_)
                                             (_rest158209_ _tl158189158204_))
                                        (if '#t
                                            (_step158065_
                                             _hd158207_
                                             _rest158209_
                                             _r158183_)
                                            (_E158186158195_)))))
                                  (_E158186158195_)))))
                      (_E158185158211_))))
                 (_step158065_
                  (lambda (_hd158096_ _rest158097_ _r158098_)
                    (let* ((_e158099158117_ _hd158096_)
                           (_E158112158121_
                            (lambda ()
                              (if (_expanded?158059_ (gx#stx-e _hd158096_))
                                  (_K158064_
                                   _rest158097_
                                   (cons (gx#stx-e _hd158096_) _r158098_))
                                  (_expand1158062_
                                   _hd158096_
                                   _K158064_
                                   _rest158097_
                                   _r158098_))))
                           (_E158108158137_
                            (lambda ()
                              (if (gx#stx-pair? _e158099158117_)
                                  (let ((_e158113158125_
                                         (gx#syntax-e _e158099158117_)))
                                    (let ((_hd158114158128_
                                           (##car _e158113158125_))
                                          (_tl158115158130_
                                           (##cdr _e158113158125_)))
                                      (let* ((_macro158133_ _hd158114158128_)
                                             (_body158135_ _tl158115158130_))
                                        (if (gx#core-bound-identifier?__%
                                             _macro158133_
                                             gx#syntax-binding?)
                                            (_K158064_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _macro158133_)
                                                    _hd158096_
                                                    _method158060_)
                                                   _rest158097_)
                                             _r158098_)
                                            (_E158112158121_)))))
                                  (_E158112158121_))))
                           (_E158101158151_
                            (lambda ()
                              (if (gx#stx-pair? _e158099158117_)
                                  (let ((_e158109158141_
                                         (gx#syntax-e _e158099158117_)))
                                    (let ((_hd158110158144_
                                           (##car _e158109158141_))
                                          (_tl158111158146_
                                           (##cdr _e158109158141_)))
                                      (if (eq? (gx#stx-e _hd158110158144_)
                                               'begin:)
                                          (let ((_body158149_
                                                 _tl158111158146_))
                                            (if '#t
                                                (_K158064_
                                                 (gx#stx-foldr
                                                  cons
                                                  _rest158097_
                                                  _body158149_)
                                                 _r158098_)
                                                (_E158108158137_)))
                                          (_E158108158137_))))
                                  (_E158108158137_))))
                           (_E158100158178_
                            (lambda ()
                              (if (gx#stx-pair? _e158099158117_)
                                  (let ((_e158102158155_
                                         (gx#syntax-e _e158099158117_)))
                                    (let ((_hd158103158158_
                                           (##car _e158102158155_))
                                          (_tl158104158160_
                                           (##cdr _e158102158155_)))
                                      (if (eq? (gx#stx-e _hd158103158158_)
                                               'phi:)
                                          (if (gx#stx-pair? _tl158104158160_)
                                              (let ((_e158105158163_
                                                     (gx#syntax-e
                                                      _tl158104158160_)))
                                                (let ((_hd158106158166_
                                                       (##car _e158105158163_))
                                                      (_tl158107158168_
                                                       (##cdr _e158105158163_)))
                                                  (let* ((_dphi158171_
                                                          _hd158106158166_)
                                                         (_body158173_
                                                          _tl158107158168_))
                                                    (if (gx#stx-fixnum?
                                                         _dphi158171_)
                                                        (let ((_rbody158176_
                                                               (call-with-parameters
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_K158064_ _body158173_ '()))
                        _current-phi158061_
                        (fx+ (gx#stx-e _dphi158171_) (_current-phi158061_)))))
                  (_K158064_
                   _rest158097_
                   (foldr1 cons _r158098_ _rbody158176_)))
                (_E158101158151_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E158101158151_))
                                          (_E158101158151_))))
                                  (_E158101158151_)))))
                      (_E158100158178_)))))
          (let* ((_e158066158073_ _stx158058_)
                 (_E158068158077_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e158066158073_)))
                 (_E158067158092_
                  (lambda ()
                    (if (gx#stx-pair? _e158066158073_)
                        (let ((_e158069158081_ (gx#syntax-e _e158066158073_)))
                          (let ((_hd158070158084_ (##car _e158069158081_))
                                (_tl158071158086_ (##cdr _e158069158081_)))
                            (let ((_body158089_ _tl158071158086_))
                              (if '#t
                                  (if (_current-phi158061_)
                                      (_K158064_ _body158089_ '())
                                      (call-with-parameters
                                       (lambda () (_K158064_ _body158089_ '()))
                                       _current-phi158061_
                                       (gx#current-expander-phi)))
                                  (_E158068158077_)))))
                        (_E158068158077_)))))
            (_E158067158092_)))))
    (define gx#core-expand-import%__%
      (lambda (_stx157725_ _internal-expand?157726_)
        (letrec ((_expand1157728_
                  (lambda (_hd158038_ _K158039_ _rest158040_ _r158041_)
                    (if (gx#core-bound-module? _hd158038_)
                        (_import1157729_
                         (gx#syntax-local-e__0 _hd158038_)
                         _K158039_
                         _rest158040_
                         _r158041_)
                        (if (gx#core-library-module-path? _hd158038_)
                            (_import1157729_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _hd158038_))
                             _K158039_
                             _rest158040_
                             _r158041_)
                            (if (gx#core-library-relative-module-path?
                                 _hd158038_)
                                (_import1157729_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _hd158038_))
                                 _K158039_
                                 _rest158040_
                                 _r158041_)
                                (let ((_e158043_ (gx#stx-e _hd158038_)))
                                  (if (pair? _e158043_)
                                      (let ((_$e158045_
                                             (gx#stx-e (car _e158043_))))
                                        (if (eq? 'spec: _$e158045_)
                                            (_import-spec157732_
                                             _hd158038_
                                             _K158039_
                                             _rest158040_
                                             _r158041_)
                                            (if (eq? 'in: _$e158045_)
                                                (_import-submodule157730_
                                                 _hd158038_
                                                 _K158039_
                                                 _rest158040_
                                                 _r158041_)
                                                (if (eq? 'runtime: _$e158045_)
                                                    (_import-runtime157731_
                                                     _hd158038_
                                                     _K158039_
                                                     _rest158040_
                                                     _r158041_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _stx157725_
                                                     _hd158038_)))))
                                      (if (string? _e158043_)
                                          (_import1157729_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _hd158038_
                                             (gx#stx-source _stx157725_)))
                                           _K158039_
                                           _rest158040_
                                           _r158041_)
                                          (if (##structure-instance-of?
                                               _e158043_
                                               'gx#module-context::t)
                                              (_K158039_
                                               _rest158040_
                                               (cons _e158043_ _r158041_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _stx157725_
                                               _hd158038_))))))))))
                 (_import1157729_
                  (lambda (_ctx158027_ _K158028_ _rest158029_ _r158030_)
                    (let ((_dphi158032_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_K158028_
                       _rest158029_
                       (cons (##structure
                              gx#import-set::t
                              _ctx158027_
                              _dphi158032_
                              (map (lambda (_g158033158035_)
                                     (gx#core-module-export->import__%
                                      _g158033158035_
                                      '#f
                                      _dphi158032_))
                                   (##unchecked-structure-ref
                                    _ctx158027_
                                    '9
                                    gx#module-context::t
                                    '#f)))
                             _r158030_)))))
                 (_import-submodule157730_
                  (lambda (_hd157994_ _K157995_ _rest157996_ _r157997_)
                    (let* ((_e157998158005_ _hd157994_)
                           (_E158000158009_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e157998158005_)))
                           (_E157999158023_
                            (lambda ()
                              (if (gx#stx-pair? _e157998158005_)
                                  (let ((_e158001158013_
                                         (gx#syntax-e _e157998158005_)))
                                    (let ((_hd158002158016_
                                           (##car _e158001158013_))
                                          (_tl158003158018_
                                           (##cdr _e158001158013_)))
                                      (let ((_spath158021_ _tl158003158018_))
                                        (if '#t
                                            (_import1157729_
                                             (_import-spec-source157733_
                                              _spath158021_)
                                             _K157995_
                                             _rest157996_
                                             _r157997_)
                                            (_E158000158009_)))))
                                  (_E158000158009_)))))
                      (_E157999158023_))))
                 (_import-runtime157731_
                  (lambda (_hd157961_ _K157962_ _rest157963_ _r157964_)
                    (let* ((_e157965157972_ _hd157961_)
                           (_E157967157976_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e157965157972_)))
                           (_E157966157990_
                            (lambda ()
                              (if (gx#stx-pair? _e157965157972_)
                                  (let ((_e157968157980_
                                         (gx#syntax-e _e157965157972_)))
                                    (let ((_hd157969157983_
                                           (##car _e157968157980_))
                                          (_tl157970157985_
                                           (##cdr _e157968157980_)))
                                      (let ((_spath157988_ _tl157970157985_))
                                        (if '#t
                                            (_K157962_
                                             _rest157963_
                                             (cons (_import-spec-source157733_
                                                    _spath157988_)
                                                   _r157964_))
                                            (_E157967157976_)))))
                                  (_E157967157976_)))))
                      (_E157966157990_))))
                 (_import-spec157732_
                  (lambda (_hd157800_ _K157801_ _rest157802_ _r157803_)
                    (let* ((_e157804157821_ _hd157800_)
                           (_E157813157825_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e157804157821_)))
                           (_E157806157935_
                            (lambda ()
                              (if (gx#stx-pair? _e157804157821_)
                                  (let ((_e157814157829_
                                         (gx#syntax-e _e157804157821_)))
                                    (let ((_hd157815157832_
                                           (##car _e157814157829_))
                                          (_tl157816157834_
                                           (##cdr _e157814157829_)))
                                      (if (gx#stx-pair? _tl157816157834_)
                                          (let ((_e157817157837_
                                                 (gx#syntax-e
                                                  _tl157816157834_)))
                                            (let ((_hd157818157840_
                                                   (##car _e157817157837_))
                                                  (_tl157819157842_
                                                   (##cdr _e157817157837_)))
                                              (let* ((_path157845_
                                                      _hd157818157840_)
                                                     (_specs157847_
                                                      _tl157819157842_))
                                                (if '#t
                                                    (let ((_src-ctx157849_
                                                           (_import-spec-source157733_
                                                            _path157845_))
                                                          (_exports157850_
                                                           (make-hash-table))
                                                          (_specs157851_
                                                           (gx#syntax->list
                                                            _specs157847_)))
                                                      (for-each
                                                       (lambda (_out157853_)
                                                         (table-set!
                                                          _exports157850_
                                                          (cons (##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _out157853_
                         '3
                         gx#module-export::t
                         '#f)
                        (##unchecked-structure-ref
                         _out157853_
                         '4
                         gx#module-export::t
                         '#f))
                  _out157853_))
               (##unchecked-structure-ref
                _src-ctx157849_
                '9
                gx#module-context::t
                '#f))
              (_K157801_
               _rest157802_
               (foldl1 (lambda (_spec157855_ _r157856_)
                         (let* ((_e157857157873_ _spec157855_)
                                (_E157859157877_
                                 (lambda ()
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid syntax-case clause"
                                    _e157857157873_)))
                                (_E157858157931_
                                 (lambda ()
                                   (if (gx#stx-pair? _e157857157873_)
                                       (let ((_e157860157881_
                                              (gx#syntax-e _e157857157873_)))
                                         (let ((_hd157861157884_
                                                (##car _e157860157881_))
                                               (_tl157862157886_
                                                (##cdr _e157860157881_)))
                                           (let ((_phi157889_
                                                  _hd157861157884_))
                                             (if (gx#stx-pair?
                                                  _tl157862157886_)
                                                 (let ((_e157863157891_
                                                        (gx#syntax-e
                                                         _tl157862157886_)))
                                                   (let ((_hd157864157894_
                                                          (##car _e157863157891_))
                                                         (_tl157865157896_
                                                          (##cdr _e157863157891_)))
                                                     (let ((_name157899_
                                                            _hd157864157894_))
                                                       (if (gx#stx-pair?
                                                            _tl157865157896_)
                                                           (let ((_e157866157901_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl157865157896_)))
                     (let ((_hd157867157904_ (##car _e157866157901_))
                           (_tl157868157906_ (##cdr _e157866157901_)))
                       (let ((_src-phi157909_ _hd157867157904_))
                         (if (gx#stx-pair? _tl157868157906_)
                             (let ((_e157869157911_
                                    (gx#syntax-e _tl157868157906_)))
                               (let ((_hd157870157914_ (##car _e157869157911_))
                                     (_tl157871157916_
                                      (##cdr _e157869157911_)))
                                 (let ((_src-name157919_ _hd157870157914_))
                                   (if (gx#stx-null? _tl157871157916_)
                                       (if (and (gx#stx-fixnum?
                                                 _src-phi157909_)
                                                (gx#identifier?
                                                 _src-name157919_)
                                                (gx#stx-fixnum? _phi157889_)
                                                (gx#identifier? _name157899_))
                                           (let ((_src-phi157921_
                                                  (gx#stx-e _src-phi157909_))
                                                 (_src-name157922_
                                                  (gx#core-identifier-key
                                                   _src-name157919_))
                                                 (_phi157923_
                                                  (gx#stx-e _phi157889_))
                                                 (_name157924_
                                                  (gx#core-identifier-key
                                                   _name157899_)))
                                             (let ((_$e157926_
                                                    (hash-get
                                                     _exports157850_
                                                     (cons _src-phi157921_
                                                           _src-name157922_))))
                                               (if _$e157926_
                                                   ((lambda (_out157929_)
                                                      (cons (gx#core-module-export->import__%
                                                             _out157929_
                                                             _name157924_
                                                             (fx- _phi157923_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _src-phi157921_))
                    _r157856_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _$e157926_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; no matching export"
                                                    _stx157725_
                                                    _hd157800_))))
                                           (_E157859157877_))
                                       (_E157859157877_)))))
                             (_E157859157877_)))))
                   (_E157859157877_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E157859157877_)))))
                                       (_E157859157877_)))))
                           (_E157858157931_)))
                       _r157803_
                       _specs157851_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E157813157825_)))))
                                          (_E157813157825_))))
                                  (_E157813157825_))))
                           (_E157805157957_
                            (lambda ()
                              (if (gx#stx-pair? _e157804157821_)
                                  (let ((_e157807157939_
                                         (gx#syntax-e _e157804157821_)))
                                    (let ((_hd157808157942_
                                           (##car _e157807157939_))
                                          (_tl157809157944_
                                           (##cdr _e157807157939_)))
                                      (if (gx#stx-pair? _tl157809157944_)
                                          (let ((_e157810157947_
                                                 (gx#syntax-e
                                                  _tl157809157944_)))
                                            (let ((_hd157811157950_
                                                   (##car _e157810157947_))
                                                  (_tl157812157952_
                                                   (##cdr _e157810157947_)))
                                              (let ((_path157955_
                                                     _hd157811157950_))
                                                (if (gx#stx-null?
                                                     _tl157812157952_)
                                                    (if '#t
                                                        (_K157801_
                                                         _rest157802_
                                                         (cons (_import-spec-source157733_
                                                                _path157955_)
                                                               _r157803_))
                                                        (_E157806157935_))
                                                    (_E157806157935_)))))
                                          (_E157806157935_))))
                                  (_E157806157935_)))))
                      (_E157805157957_))))
                 (_import-spec-source157733_
                  (lambda (_spath157798_)
                    (gx#core-import-nested-module _spath157798_ _stx157725_)))
                 (_import!157734_
                  (lambda (_rbody157747_)
                    (letrec* ((_current-ctx157749_
                               (gx#current-expander-context))
                              (_deps157750_ (make-hash-table-eq))
                              (_bind!157751_
                               (lambda (_hd157796_)
                                 (gx#core-bind-import!__1
                                  _hd157796_
                                  _current-ctx157749_))))
                      (let _lp157753_ ((_rest157755_ _rbody157747_)
                                       (_body157756_ '()))
                        (let* ((_rest157757157765_ _rest157755_)
                               (_else157759157775_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _current-ctx157749_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _current-ctx157749_
                                       (foldl1 cons
                                               (##unchecked-structure-ref
                                                _current-ctx157749_
                                                '8
                                                gx#module-context::t
                                                '#f)
                                               _body157756_)
                                       '8
                                       gx#module-context::t
                                       '#f)
                                      '#!void)
                                  (hash-for-each
                                   (lambda (_ctx157773_ _g164670_)
                                     (gx#eval-module _ctx157773_))
                                   _deps157750_)
                                  _body157756_))
                               (_K157761157784_
                                (lambda (_rest157778_ _hd157779_)
                                  (if (##structure-direct-instance-of?
                                       _hd157779_
                                       'gx#module-import::t)
                                      (begin
                                        (_bind!157751_ _hd157779_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _hd157779_
                                                   '3
                                                   gx#module-import::t
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _hd157779_
                                                            '1
                                                            gx#module-import::t
                                                            '#f)
                                                           '3
                                                           gx#module-export::t
                                                           '#f)))
                                            (table-set!
                                             _deps157750_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _hd157779_
                                               '1
                                               gx#module-import::t
                                               '#f)
                                              '1
                                              gx#module-export::t
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _hd157779_
                                           'gx#import-set::t)
                                          (begin
                                            (for-each
                                             _bind!157751_
                                             (##unchecked-structure-ref
                                              _hd157779_
                                              '3
                                              gx#import-set::t
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _hd157779_
                                                  '2
                                                  gx#import-set::t
                                                  '#f))
                                                (table-set!
                                                 _deps157750_
                                                 (##unchecked-structure-ref
                                                  _hd157779_
                                                  '1
                                                  gx#import-set::t
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_$e157781_
                                                 (##structure-instance-of?
                                                  _hd157779_
                                                  'gx#module-context::t)))
                                            (if _$e157781_
                                                _$e157781_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _stx157725_
                                                 _hd157779_)))))
                                  (_lp157753_
                                   _rest157778_
                                   (cons _hd157779_ _body157756_)))))
                          (if (##pair? _rest157757157765_)
                              (let ((_hd157762157787_
                                     (##car _rest157757157765_))
                                    (_tl157763157789_
                                     (##cdr _rest157757157765_)))
                                (let* ((_hd157792_ _hd157762157787_)
                                       (_rest157794_ _tl157763157789_))
                                  (_K157761157784_ _rest157794_ _hd157792_)))
                              (_else157759157775_)))))))
                 (_expanded-import?157735_
                  (lambda (_e157739_)
                    (let ((_$e157741_
                           (##structure-direct-instance-of?
                            _e157739_
                            'gx#import-set::t)))
                      (if _$e157741_
                          _$e157741_
                          (let ((_$e157744_
                                 (##structure-direct-instance-of?
                                  _e157739_
                                  'gx#module-import::t)))
                            (if _$e157744_
                                _$e157744_
                                (##structure-instance-of?
                                 _e157739_
                                 'gx#module-context::t))))))))
          (let ((_rbody157737_
                 (gx#core-expand-import/export
                  _stx157725_
                  _expanded-import?157735_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _expand1157728_)))
            (if _internal-expand?157726_
                (reverse _rbody157737_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_import!157734_ _rbody157737_))
                 (gx#stx-source _stx157725_)))))))
    (define gx#core-expand-import%__0
      (lambda (_stx158051_)
        (let ((_internal-expand?158053_ '#f))
          (gx#core-expand-import%__% _stx158051_ _internal-expand?158053_))))
    (define gx#core-expand-import%
      (lambda _g164672_
        (let ((_g164671_ (##length _g164672_)))
          (cond ((##fx= _g164671_ 1)
                 (apply (lambda (_stx158051_)
                          (gx#core-expand-import%__0 _stx158051_))
                        _g164672_))
                ((##fx= _g164671_ 2)
                 (apply (lambda (_stx158055_ _internal-expand?158056_)
                          (gx#core-expand-import%__%
                           _stx158055_
                           _internal-expand?158056_))
                        _g164672_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g164672_))))))
    (define gx#core-import-nested-module
      (lambda (_spath157652_ _where157653_)
        (let* ((_e157654157661_ _spath157652_)
               (_E157656157665_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e157654157661_)))
               (_E157655157720_
                (lambda ()
                  (if (gx#stx-pair? _e157654157661_)
                      (let ((_e157657157669_ (gx#syntax-e _e157654157661_)))
                        (let ((_hd157658157672_ (##car _e157657157669_))
                              (_tl157659157674_ (##cdr _e157657157669_)))
                          (let* ((_origin157677_ _hd157658157672_)
                                 (_sub157679_ _tl157659157674_))
                            (if '#t
                                (let ((_origin-ctx157681_
                                       (if (gx#stx-false? _origin157677_)
                                           (gx#current-expander-context)
                                           (gx#import-module__0
                                            _origin157677_))))
                                  (let _lp157683_ ((_rest157685_ _sub157679_)
                                                   (_ctx157686_
                                                    _origin-ctx157681_))
                                    (let* ((_e157687157694_ _rest157685_)
                                           (_E157689157698_
                                            (lambda () _ctx157686_))
                                           (_E157688157716_
                                            (lambda ()
                                              (if (gx#stx-pair?
                                                   _e157687157694_)
                                                  (let ((_e157690157702_
                                                         (gx#syntax-e
                                                          _e157687157694_)))
                                                    (let ((_hd157691157705_
                                                           (##car _e157690157702_))
                                                          (_tl157692157707_
                                                           (##cdr _e157690157702_)))
                                                      (let* ((_id157710_
                                                              _hd157691157705_)
                                                             (_rest157712_
                                                              _tl157692157707_))
                                                        (if '#t
                                                            (let ((_bind157714_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#resolve-identifier__%
                            _id157710_
                            '0
                            _ctx157686_)))
                      (if (and (##structure-direct-instance-of?
                                _bind157714_
                                'gx#syntax-binding::t)
                               (##structure-instance-of?
                                (##unchecked-structure-ref
                                 _bind157714_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                'gx#module-context::t))
                          '#!void
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; not bound as module"
                           _where157653_
                           _spath157652_
                           _id157710_))
                      (_lp157683_
                       _rest157712_
                       (##unchecked-structure-ref
                        _bind157714_
                        '4
                        gx#syntax-binding::t
                        '#f)))
                    (_E157689157698_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E157689157698_)))))
                                      (_E157688157716_))))
                                (_E157656157665_)))))
                      (_E157656157665_)))))
          (_E157655157720_))))
    (define gx#core-expand-import-source
      (lambda (_hd157650_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _hd157650_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_stx157158_ _internal-expand?157159_)
        (letrec* ((_make-export__164601164602_
                   (lambda (_bind157598_ _phi157599_ _ctx157600_ _name157601_)
                     (let* ((_key157603_
                             (##unchecked-structure-ref
                              _bind157598_
                              '2
                              gx#binding::t
                              '#f))
                            (_export-key157605_
                             (if _name157601_
                                 (gx#core-identifier-key _name157601_)
                                 _key157603_)))
                       (##structure
                        gx#module-export::t
                        _ctx157600_
                        _key157603_
                        _phi157599_
                        _export-key157605_
                        (let ((_$e157608_
                               (##structure-instance-of?
                                _bind157598_
                                'gx#extern-binding::t)))
                          (if _$e157608_
                              _$e157608_
                              (##structure-direct-instance-of?
                               _bind157598_
                               'gx#import-binding::t)))))))
                  (_make-export__0__164603164606_
                   (lambda (_bind157614_)
                     (let* ((_phi157616_ (gx#current-export-expander-phi))
                            (_ctx157618_ (gx#current-expander-context))
                            (_name157620_ '#f))
                       (_make-export__164601164602_
                        _bind157614_
                        _phi157616_
                        _ctx157618_
                        _name157620_))))
                  (_make-export__1__164604164607_
                   (lambda (_bind157622_ _phi157623_)
                     (let* ((_ctx157625_ (gx#current-expander-context))
                            (_name157627_ '#f))
                       (_make-export__164601164602_
                        _bind157622_
                        _phi157623_
                        _ctx157625_
                        _name157627_))))
                  (_make-export__2__164605164608_
                   (lambda (_bind157629_ _phi157630_ _ctx157631_)
                     (let ((_name157633_ '#f))
                       (_make-export__164601164602_
                        _bind157629_
                        _phi157630_
                        _ctx157631_
                        _name157633_))))
                  (_make-export157161_
                   (lambda _g164674_
                     (let ((_g164673_ (##length _g164674_)))
                       (cond ((##fx= _g164673_ 1)
                              (apply (lambda (_bind157614_)
                                       (_make-export__0__164603164606_
                                        _bind157614_))
                                     _g164674_))
                             ((##fx= _g164673_ 2)
                              (apply (lambda (_bind157622_ _phi157623_)
                                       (_make-export__1__164604164607_
                                        _bind157622_
                                        _phi157623_))
                                     _g164674_))
                             ((##fx= _g164673_ 3)
                              (apply (lambda (_bind157629_
                                              _phi157630_
                                              _ctx157631_)
                                       (_make-export__2__164605164608_
                                        _bind157629_
                                        _phi157630_
                                        _ctx157631_))
                                     _g164674_))
                             ((##fx= _g164673_ 4)
                              (apply (lambda (_bind157635_
                                              _phi157636_
                                              _ctx157637_
                                              _name157638_)
                                       (_make-export__164601164602_
                                        _bind157635_
                                        _phi157636_
                                        _ctx157637_
                                        _name157638_))
                                     _g164674_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g164674_))))))
                  (_expand1157162_
                   (lambda (_hd157311_ _K157312_ _rest157313_ _r157314_)
                     (let* ((_e157315157347_ _hd157311_)
                            (_E157342157351_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _stx157158_
                                _hd157311_)))
                            (_E157332157430_
                             (lambda ()
                               (if (gx#stx-pair? _e157315157347_)
                                   (let ((_e157343157355_
                                          (gx#syntax-e _e157315157347_)))
                                     (let ((_hd157344157358_
                                            (##car _e157343157355_))
                                           (_tl157345157360_
                                            (##cdr _e157343157355_)))
                                       (if (eq? (gx#stx-e _hd157344157358_)
                                                'import:)
                                           (let ((_in157363_ _tl157345157360_))
                                             (if (gx#stx-list? _in157363_)
                                                 (let _lp157365_ ((_in-rest157367_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _in157363_)
                          (_r157368_ _r157314_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_e157369157376_
                                                           _in-rest157367_)
                                                          (_E157371157380_
                                                           (lambda ()
                                                             (_K157312_
                                                              _rest157313_
                                                              _r157368_)))
                                                          (_E157370157426_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _e157369157376_)
                         (let ((_e157372157384_ (gx#syntax-e _e157369157376_)))
                           (let ((_hd157373157387_ (##car _e157372157384_))
                                 (_tl157374157389_ (##cdr _e157372157384_)))
                             (let* ((_hd157392_ _hd157373157387_)
                                    (_in-rest157394_ _tl157374157389_))
                               (if '#t
                                   (let ((_src157424_
                                          (if (gx#core-bound-module?
                                               _hd157392_)
                                              (gx#syntax-local-e__0 _hd157392_)
                                              (if (gx#core-library-module-path?
                                                   _hd157392_)
                                                  (gx#import-module__0
                                                   (gx#core-resolve-library-module-path
                                                    _hd157392_))
                                                  (if (gx#core-library-relative-module-path?
                                                       _hd157392_)
                                                      (gx#import-module__0
                                                       (gx#core-resolve-library-relative-module-path
                                                        _hd157392_))
                                                      (if (gx#stx-string?
                                                           _hd157392_)
                                                          (gx#import-module__0
                                                           (gx#core-resolve-module-path__%
                                                            _hd157392_
                                                            (gx#stx-source
                                                             _stx157158_)))
                                                          (let* ((_e157395157402_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd157392_)
                         (_E157397157406_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; illegal re-export"
                             _stx157158_
                             _hd157392_)))
                         (_E157396157420_
                          (lambda ()
                            (if (gx#stx-pair? _e157395157402_)
                                (let ((_e157398157410_
                                       (gx#syntax-e _e157395157402_)))
                                  (let ((_hd157399157413_
                                         (##car _e157398157410_))
                                        (_tl157400157415_
                                         (##cdr _e157398157410_)))
                                    (if (eq? (gx#stx-e _hd157399157413_) 'in:)
                                        (let ((_spath157418_ _tl157400157415_))
                                          (if '#t
                                              (gx#core-import-nested-module
                                               _spath157418_
                                               _stx157158_)
                                              (_E157397157406_)))
                                        (_E157397157406_))))
                                (_E157397157406_)))))
                    (_E157396157420_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_lp157365_
                                      _in-rest157394_
                                      (_export-imports157163_
                                       _src157424_
                                       _r157368_)))
                                   (_E157371157380_)))))
                         (_E157371157380_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E157370157426_)))
                                                 (_E157342157351_)))
                                           (_E157342157351_))))
                                   (_E157342157351_))))
                            (_E157319157469_
                             (lambda ()
                               (if (gx#stx-pair? _e157315157347_)
                                   (let ((_e157333157434_
                                          (gx#syntax-e _e157315157347_)))
                                     (let ((_hd157334157437_
                                            (##car _e157333157434_))
                                           (_tl157335157439_
                                            (##cdr _e157333157434_)))
                                       (if (eq? (gx#stx-e _hd157334157437_)
                                                'rename:)
                                           (if (gx#stx-pair? _tl157335157439_)
                                               (let ((_e157336157442_
                                                      (gx#syntax-e
                                                       _tl157335157439_)))
                                                 (let ((_hd157337157445_
                                                        (##car _e157336157442_))
                                                       (_tl157338157447_
                                                        (##cdr _e157336157442_)))
                                                   (let ((_id157450_
                                                          _hd157337157445_))
                                                     (if (gx#stx-pair?
                                                          _tl157338157447_)
                                                         (let ((_e157339157452_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl157338157447_)))
                   (let ((_hd157340157455_ (##car _e157339157452_))
                         (_tl157341157457_ (##cdr _e157339157452_)))
                     (let ((_name157460_ _hd157340157455_))
                       (if (gx#stx-null? _tl157341157457_)
                           (if '#t
                               (let* ((_phi157462_
                                       (gx#current-export-expander-phi))
                                      (_$e157464_
                                       (gx#core-resolve-identifier__1
                                        _id157450_
                                        _phi157462_)))
                                 (if _$e157464_
                                     ((lambda (_bind157467_)
                                        (_K157312_
                                         _rest157313_
                                         (cons (_make-export__164601164602_
                                                _bind157467_
                                                _phi157462_
                                                (gx#current-expander-context)
                                                _name157460_)
                                               _r157314_)))
                                      _$e157464_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Reference to unbound identifier"
                                      _stx157158_
                                      _hd157311_
                                      _id157450_)))
                               (_E157332157430_))
                           (_E157332157430_)))))
                 (_E157332157430_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E157332157430_))
                                           (_E157332157430_))))
                                   (_E157332157430_))))
                            (_E157318157518_
                             (lambda ()
                               (if (gx#stx-pair? _e157315157347_)
                                   (let ((_e157320157473_
                                          (gx#syntax-e _e157315157347_)))
                                     (let ((_hd157321157476_
                                            (##car _e157320157473_))
                                           (_tl157322157478_
                                            (##cdr _e157320157473_)))
                                       (if (eq? (gx#stx-e _hd157321157476_)
                                                'spec:)
                                           (if (gx#stx-pair? _tl157322157478_)
                                               (let ((_e157323157481_
                                                      (gx#syntax-e
                                                       _tl157322157478_)))
                                                 (let ((_hd157324157484_
                                                        (##car _e157323157481_))
                                                       (_tl157325157486_
                                                        (##cdr _e157323157481_)))
                                                   (let ((_phi157489_
                                                          _hd157324157484_))
                                                     (if (gx#stx-pair?
                                                          _tl157325157486_)
                                                         (let ((_e157326157491_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl157325157486_)))
                   (let ((_hd157327157494_ (##car _e157326157491_))
                         (_tl157328157496_ (##cdr _e157326157491_)))
                     (let ((_id157499_ _hd157327157494_))
                       (if (gx#stx-pair? _tl157328157496_)
                           (let ((_e157329157501_
                                  (gx#syntax-e _tl157328157496_)))
                             (let ((_hd157330157504_ (##car _e157329157501_))
                                   (_tl157331157506_ (##cdr _e157329157501_)))
                               (let ((_name157509_ _hd157330157504_))
                                 (if (gx#stx-null? _tl157331157506_)
                                     (if (and (gx#stx-fixnum? _phi157489_)
                                              (gx#identifier? _id157499_)
                                              (gx#identifier? _name157509_))
                                         (let* ((_phi157511_
                                                 (gx#stx-e _phi157489_))
                                                (_$e157513_
                                                 (gx#core-resolve-identifier__1
                                                  _id157499_
                                                  _phi157511_)))
                                           (if _$e157513_
                                               ((lambda (_bind157516_)
                                                  (_K157312_
                                                   _rest157313_
                                                   (cons (_make-export__164601164602_
                                                          _bind157516_
                                                          _phi157511_
                                                          (gx#current-expander-context)
                                                          _name157509_)
                                                         _r157314_)))
                                                _$e157513_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _stx157158_
                                                _hd157311_
                                                _id157499_)))
                                         (_E157319157469_))
                                     (_E157319157469_)))))
                           (_E157319157469_)))))
                 (_E157319157469_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E157319157469_))
                                           (_E157319157469_))))
                                   (_E157319157469_))))
                            (_E157317157529_
                             (lambda ()
                               (let ((_id157522_ _e157315157347_))
                                 (if (gx#identifier? _id157522_)
                                     (let ((_$e157524_
                                            (gx#core-resolve-identifier__1
                                             _id157522_
                                             (gx#current-export-expander-phi))))
                                       (if _$e157524_
                                           ((lambda (_bind157527_)
                                              (_K157312_
                                               _rest157313_
                                               (cons (_make-export__0__164603164606_
                                                      _bind157527_)
                                                     _r157314_)))
                                            _$e157524_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _stx157158_
                                            _hd157311_)))
                                     (_E157318157518_)))))
                            (_E157316157593_
                             (lambda ()
                               (if (eq? (gx#stx-e _e157315157347_) '#t)
                                   (if '#t
                                       (let* ((_current-ctx157533_
                                               (gx#current-expander-context))
                                              (_current-phi157535_
                                               (gx#current-export-expander-phi))
                                              (_phi-ctx157537_
                                               (gx#core-context-shift
                                                _current-ctx157533_
                                                _current-phi157535_))
                                              (_phi-bind157539_
                                               (hash->list
                                                (##unchecked-structure-ref
                                                 _phi-ctx157537_
                                                 '2
                                                 gx#expander-context::t
                                                 '#f))))
                                         (let _lp157542_ ((_bind-rest157544_
                                                           _phi-bind157539_)
                                                          (_set157545_ '()))
                                           (let* ((_bind-rest157546157556_
                                                   _bind-rest157544_)
                                                  (_else157548157564_
                                                   (lambda ()
                                                     (_K157312_
                                                      _rest157313_
                                                      (cons (##structure
                                                             gx#export-set::t
                                                             '#f
                                                             _current-phi157535_
                                                             _set157545_)
                                                            _r157314_))))
                                                  (_K157550157574_
                                                   (lambda (_bind-rest157567_
                                                            _bind157568_
                                                            _key157569_)
                                                     (if (or (##structure-direct-instance-of?
                                                              _bind157568_
                                                              'gx#import-binding::t)
                                                             (gx#private-feature-binding?
                                                              _bind157568_))
                                                         (_lp157542_
                                                          _bind-rest157567_
                                                          _set157545_)
                                                         (_lp157542_
                                                          _bind-rest157567_
                                                          (cons (_make-export__2__164605164608_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind157568_
                         _current-phi157535_
                         _current-ctx157533_)
                        _set157545_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _bind-rest157546157556_)
                                                 (let ((_hd157551157577_
                                                        (##car _bind-rest157546157556_))
                                                       (_tl157552157579_
                                                        (##cdr _bind-rest157546157556_)))
                                                   (if (##pair? _hd157551157577_)
                                                       (let ((_hd157553157582_
                                                              (##car _hd157551157577_))
                                                             (_tl157554157584_
                                                              (##cdr _hd157551157577_)))
                                                         (let* ((_key157587_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd157553157582_)
                        (_bind157589_ _tl157554157584_)
                        (_bind-rest157591_ _tl157552157579_))
                   (_K157550157574_
                    _bind-rest157591_
                    _bind157589_
                    _key157587_)))
               (_else157548157564_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_else157548157564_)))))
                                       (_E157317157529_))
                                   (_E157317157529_)))))
                       (_E157316157593_))))
                  (_export-imports157163_
                   (lambda (_src157187_ _r157188_)
                     (letrec* ((_current-ctx157190_
                                (gx#current-expander-context))
                               (_current-phi157191_
                                (gx#current-export-expander-phi))
                               (_import->export157192_
                                (lambda (_in157273_)
                                  (let* ((_in157274157282_ _in157273_)
                                         (_E157276157286_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _in157274157282_)))
                                         (_K157277157293_
                                          (lambda (_phi157289_
                                                   _key157290_
                                                   _out157291_)
                                            (##structure
                                             gx#module-export::t
                                             _current-ctx157190_
                                             _key157290_
                                             _phi157289_
                                             _key157290_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _in157274157282_
                                         'gx#module-import::t)
                                        (let* ((_e157278157296_
                                                (##unchecked-structure-ref
                                                 _in157274157282_
                                                 '1
                                                 gx#module-import::t
                                                 '#f))
                                               (_out157299_ _e157278157296_)
                                               (_e157279157301_
                                                (##unchecked-structure-ref
                                                 _in157274157282_
                                                 '2
                                                 gx#module-import::t
                                                 '#f))
                                               (_key157304_ _e157279157301_)
                                               (_e157280157306_
                                                (##unchecked-structure-ref
                                                 _in157274157282_
                                                 '3
                                                 gx#module-import::t
                                                 '#f))
                                               (_phi157309_ _e157280157306_))
                                          (_K157277157293_
                                           _phi157309_
                                           _key157304_
                                           _out157299_))
                                        (_E157276157286_)))))
                               (_fold-e157193_
                                (lambda (_in157195_ _r157196_)
                                  (let* ((_in157197157211_ _in157195_)
                                         (_else157200157219_
                                          (lambda () _r157196_)))
                                    (let ((_K157206157255_
                                           (lambda (_phi157251_
                                                    _key157252_
                                                    _out157253_)
                                             (if (and (fx= _phi157251_
                                                           _current-phi157191_)
                                                      (eq? _src157187_
                                                           (##unchecked-structure-ref
                                                            _out157253_
                                                            '1
                                                            gx#module-export::t
                                                            '#f)))
                                                 (cons (_import->export157192_
                                                        _in157195_)
                                                       _r157196_)
                                                 _r157196_)))
                                          (_K157202157230_
                                           (lambda (_imports157223_
                                                    _phi157224_
                                                    _ctx157225_)
                                             (if (and (fx= _phi157224_
                                                           _current-phi157191_)
                                                      (eq? _src157187_
                                                           _ctx157225_))
                                                 (foldl1 (lambda (_in157227_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r157228_)
                   (cons (_import->export157192_ _in157227_) _r157228_))
                 _r157196_
                 _imports157223_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _r157196_))))
                                      (let ((_try-match157199157248_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _in157197157211_
                                                    'gx#import-set::t)
                                                   (let* ((_e157203157233_
                                                           (##unchecked-structure-ref
                                                            _in157197157211_
                                                            '1
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e157204157238_
                                                           (##unchecked-structure-ref
                                                            _in157197157211_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e157205157243_
                                                           (##unchecked-structure-ref
                                                            _in157197157211_
                                                            '3
                                                            gx#import-set::t
                                                            '#f)))
                                                     (let ((_ctx157236_
                                                            _e157203157233_)
                                                           (_phi157241_
                                                            _e157204157238_)
                                                           (_imports157246_
                                                            _e157205157243_))
                                                       (_K157202157230_
                                                        _imports157246_
                                                        _phi157241_
                                                        _ctx157236_)))
                                                   (_else157200157219_)))))
                                        (if (##structure-direct-instance-of?
                                             _in157197157211_
                                             'gx#module-import::t)
                                            (let* ((_e157207157258_
                                                    (##unchecked-structure-ref
                                                     _in157197157211_
                                                     '1
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e157208157263_
                                                    (##unchecked-structure-ref
                                                     _in157197157211_
                                                     '2
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e157209157268_
                                                    (##unchecked-structure-ref
                                                     _in157197157211_
                                                     '3
                                                     gx#module-import::t
                                                     '#f)))
                                              (let ((_out157261_
                                                     _e157207157258_)
                                                    (_key157266_
                                                     _e157208157263_)
                                                    (_phi157271_
                                                     _e157209157268_))
                                                (_K157206157255_
                                                 _phi157271_
                                                 _key157266_
                                                 _out157261_)))
                                            (_try-match157199157248_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _src157187_
                              _current-phi157191_
                              (foldl1 _fold-e157193_
                                      '()
                                      (##unchecked-structure-ref
                                       _current-ctx157190_
                                       '8
                                       gx#module-context::t
                                       '#f)))
                             _r157188_))))
                  (_export!157164_
                   (lambda (_rbody157177_)
                     (letrec* ((_current-ctx157179_
                                (gx#current-expander-context))
                               (_fold-e157180_
                                (lambda (_out157184_ _r157185_)
                                  (if (##structure-direct-instance-of?
                                       _out157184_
                                       'gx#module-export::t)
                                      (cons _out157184_ _r157185_)
                                      (if (##structure-direct-instance-of?
                                           _out157184_
                                           'gx#export-set::t)
                                          (foldl1 cons
                                                  _r157185_
                                                  (##unchecked-structure-ref
                                                   _out157184_
                                                   '3
                                                   gx#export-set::t
                                                   '#f))
                                          _r157185_)))))
                       (let ((_body157182_ (reverse _rbody157177_)))
                         (##unchecked-structure-set!
                          _current-ctx157179_
                          (foldl1 _fold-e157180_
                                  (##unchecked-structure-ref
                                   _current-ctx157179_
                                   '9
                                   gx#module-context::t
                                   '#f)
                                  _body157182_)
                          '9
                          gx#module-context::t
                          '#f)
                         _body157182_))))
                  (_expanded-export?157165_
                   (lambda (_e157172_)
                     (let ((_$e157174_
                            (##structure-direct-instance-of?
                             _e157172_
                             'gx#module-export::t)))
                       (if _$e157174_
                           _$e157174_
                           (##structure-direct-instance-of?
                            _e157172_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _internal-expand?157159_)
              (let ((_rbody157170_
                     (gx#core-expand-import/export
                      _stx157158_
                      _expanded-export?157165_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _expand1157162_)))
                (if _internal-expand?157159_
                    (reverse _rbody157170_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons '%#export (_export!157164_ _rbody157170_))
                     (gx#stx-source _stx157158_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _stx157158_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _stx157158_))))))
    (define gx#core-expand-export%__0
      (lambda (_stx157643_)
        (let ((_internal-expand?157645_ '#f))
          (gx#core-expand-export%__% _stx157643_ _internal-expand?157645_))))
    (define gx#core-expand-export%
      (lambda _g164676_
        (let ((_g164675_ (##length _g164676_)))
          (cond ((##fx= _g164675_ 1)
                 (apply (lambda (_stx157643_)
                          (gx#core-expand-export%__0 _stx157643_))
                        _g164676_))
                ((##fx= _g164675_ 2)
                 (apply (lambda (_stx157647_ _internal-expand?157648_)
                          (gx#core-expand-export%__%
                           _stx157647_
                           _internal-expand?157648_))
                        _g164676_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g164676_))))))
    (define gx#core-expand-export-source
      (lambda (_hd157155_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _hd157155_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_stx157125_)
        (let* ((_e157126157133_ _stx157125_)
               (_E157128157137_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e157126157133_)))
               (_E157127157151_
                (lambda ()
                  (if (gx#stx-pair? _e157126157133_)
                      (let ((_e157129157141_ (gx#syntax-e _e157126157133_)))
                        (let ((_hd157130157144_ (##car _e157129157141_))
                              (_tl157131157146_ (##cdr _e157129157141_)))
                          (let ((_body157149_ _tl157131157146_))
                            (if (gx#identifier-list? _body157149_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _body157149_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _body157149_))
                                   (gx#stx-source _stx157125_)))
                                (_E157128157137_)))))
                      (_E157128157137_)))))
          (_E157127157151_))))
    (define gx#core-bind-feature!__%
      (lambda (_id157091_ _private?157092_ _phi157093_ _ctx157094_)
        (gx#core-bind-syntax!__%
         _id157091_
         ((if _private?157092_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _id157091_))
         _private?157092_
         _phi157093_
         _ctx157094_)))
    (define gx#core-bind-feature!__0
      (lambda (_id157099_)
        (let* ((_private?157101_ '#f)
               (_phi157103_ (gx#current-expander-phi))
               (_ctx157105_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id157099_
           _private?157101_
           _phi157103_
           _ctx157105_))))
    (define gx#core-bind-feature!__1
      (lambda (_id157107_ _private?157108_)
        (let* ((_phi157110_ (gx#current-expander-phi))
               (_ctx157112_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id157107_
           _private?157108_
           _phi157110_
           _ctx157112_))))
    (define gx#core-bind-feature!__2
      (lambda (_id157114_ _private?157115_ _phi157116_)
        (let ((_ctx157118_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id157114_
           _private?157115_
           _phi157116_
           _ctx157118_))))
    (define gx#core-bind-feature!
      (lambda _g164678_
        (let ((_g164677_ (##length _g164678_)))
          (cond ((##fx= _g164677_ 1)
                 (apply (lambda (_id157099_)
                          (gx#core-bind-feature!__0 _id157099_))
                        _g164678_))
                ((##fx= _g164677_ 2)
                 (apply (lambda (_id157107_ _private?157108_)
                          (gx#core-bind-feature!__1
                           _id157107_
                           _private?157108_))
                        _g164678_))
                ((##fx= _g164677_ 3)
                 (apply (lambda (_id157114_ _private?157115_ _phi157116_)
                          (gx#core-bind-feature!__2
                           _id157114_
                           _private?157115_
                           _phi157116_))
                        _g164678_))
                ((##fx= _g164677_ 4)
                 (apply (lambda (_id157120_
                                 _private?157121_
                                 _phi157122_
                                 _ctx157123_)
                          (gx#core-bind-feature!__%
                           _id157120_
                           _private?157121_
                           _phi157122_
                           _ctx157123_))
                        _g164678_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g164678_))))))))
