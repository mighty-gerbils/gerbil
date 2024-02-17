(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1708210941)
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
      (lambda _$args160534_
        (apply make-instance gx#module-import::t _$args160534_)))
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
      (lambda _$args160531_
        (apply make-instance gx#module-export::t _$args160531_)))
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
      (lambda _$args160528_
        (apply make-instance gx#import-set::t _$args160528_)))
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
      (lambda _$args160525_
        (apply make-instance gx#export-set::t _$args160525_)))
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
      (lambda _$args160522_
        (apply make-instance gx#import-expander::t _$args160522_)))
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
      (lambda _$args160519_
        (apply make-instance gx#export-expander::t _$args160519_)))
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
      (lambda _$args160516_
        (apply make-instance gx#import-export-expander::t _$args160516_)))
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
      (lambda (_path160513_ _fun160514_)
        (call-with-input-file
         (cons 'path: (cons _path160513_ gx#source-file-settings))
         _fun160514_)))
    (define gx#module-context:::init!
      (lambda (_self160507_ _id160508_ _super160509_ _ns160510_ _path160511_)
        (if (##fx< '11 (##structure-length _self160507_))
            (begin
              (##unchecked-structure-set!
               _self160507_
               _id160508_
               '1
               (##structure-type _self160507_)
               '#f)
              (##unchecked-structure-set!
               _self160507_
               (make-hash-table-eq)
               '2
               (##structure-type _self160507_)
               '#f)
              (##unchecked-structure-set!
               _self160507_
               _super160509_
               '3
               (##structure-type _self160507_)
               '#f)
              (##unchecked-structure-set!
               _self160507_
               '#f
               '4
               (##structure-type _self160507_)
               '#f)
              (##unchecked-structure-set!
               _self160507_
               '#f
               '5
               (##structure-type _self160507_)
               '#f)
              (##unchecked-structure-set!
               _self160507_
               _ns160510_
               '6
               (##structure-type _self160507_)
               '#f)
              (##unchecked-structure-set!
               _self160507_
               _path160511_
               '7
               (##structure-type _self160507_)
               '#f)
              (##unchecked-structure-set!
               _self160507_
               '()
               '8
               (##structure-type _self160507_)
               '#f)
              (##unchecked-structure-set!
               _self160507_
               '()
               '9
               (##structure-type _self160507_)
               '#f)
              (##unchecked-structure-set!
               _self160507_
               '#f
               '10
               (##structure-type _self160507_)
               '#f)
              (##unchecked-structure-set!
               _self160507_
               '#f
               '11
               (##structure-type _self160507_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self160507_
                   '11
                   (##vector-length _self160507_)))))
    (bind-method! gx#module-context::t ':init! gx#module-context:::init! '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_self160351_ _ctx160352_ _root160353_)
        (let ((_super160361_
               (let ((_$e160355_ _root160353_))
                 (if _$e160355_
                     _$e160355_
                     (let ((_$e160358_ (gx#core-context-root__0)))
                       (if _$e160358_
                           _$e160358_
                           (let ((__obj164643
                                  (##structure gx#root-context::t '#f '#f)))
                             (let ((__constructor164644
                                    (direct-method-ref
                                     gx#root-context::t
                                     __obj164643
                                     ':init!)))
                               (if __constructor164644
                                   (__constructor164644 __obj164643)
                                   (error '"missing constructor method implementation"
                                          'class:
                                          gx#root-context::t
                                          'method:
                                          ':init!)))
                             __obj164643)))))))
          (if _ctx160352_
              (let ((_id160364_
                     (##structure-ref
                      _ctx160352_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_path160365_
                     (##structure-ref _ctx160352_ '7 gx#module-context::t '#f))
                    (_in160366_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _ctx160352_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_e160367_
                     (make-promise (lambda () (gx#eval-module _ctx160352_)))))
                (if (##fx< '8 (##structure-length _self160351_))
                    (begin
                      (##unchecked-structure-set!
                       _self160351_
                       _id160364_
                       '1
                       (##structure-type _self160351_)
                       '#f)
                      (##unchecked-structure-set!
                       _self160351_
                       (make-hash-table-eq 'size: (length _in160366_))
                       '2
                       (##structure-type _self160351_)
                       '#f)
                      (##unchecked-structure-set!
                       _self160351_
                       _super160361_
                       '3
                       (##structure-type _self160351_)
                       '#f)
                      (##unchecked-structure-set!
                       _self160351_
                       '#f
                       '4
                       (##structure-type _self160351_)
                       '#f)
                      (##unchecked-structure-set!
                       _self160351_
                       '#f
                       '5
                       (##structure-type _self160351_)
                       '#f)
                      (##unchecked-structure-set!
                       _self160351_
                       _path160365_
                       '6
                       (##structure-type _self160351_)
                       '#f)
                      (##unchecked-structure-set!
                       _self160351_
                       _in160366_
                       '7
                       (##structure-type _self160351_)
                       '#f)
                      (##unchecked-structure-set!
                       _self160351_
                       _e160367_
                       '8
                       (##structure-type _self160351_)
                       '#f))
                    (error '"struct-instance-init!: too many arguments for struct"
                           _self160351_
                           '8
                           (##vector-length _self160351_)))
                (for-each
                 (lambda (_g160368160370_)
                   (gx#core-bind-weak-import!__% _g160368160370_ _self160351_))
                 _in160366_))
              (if (##fx< '8 (##structure-length _self160351_))
                  (begin
                    (##unchecked-structure-set!
                     _self160351_
                     '#f
                     '1
                     (##structure-type _self160351_)
                     '#f)
                    (##unchecked-structure-set!
                     _self160351_
                     (make-hash-table-eq)
                     '2
                     (##structure-type _self160351_)
                     '#f)
                    (##unchecked-structure-set!
                     _self160351_
                     _super160361_
                     '3
                     (##structure-type _self160351_)
                     '#f)
                    (##unchecked-structure-set!
                     _self160351_
                     '#f
                     '4
                     (##structure-type _self160351_)
                     '#f)
                    (##unchecked-structure-set!
                     _self160351_
                     '#f
                     '5
                     (##structure-type _self160351_)
                     '#f)
                    (##unchecked-structure-set!
                     _self160351_
                     '#f
                     '6
                     (##structure-type _self160351_)
                     '#f)
                    (##unchecked-structure-set!
                     _self160351_
                     '()
                     '7
                     (##structure-type _self160351_)
                     '#f)
                    (##unchecked-structure-set!
                     _self160351_
                     '#f
                     '8
                     (##structure-type _self160351_)
                     '#f))
                  (error '"struct-instance-init!: too many arguments for struct"
                         _self160351_
                         '8
                         (##vector-length _self160351_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_self160376_ _ctx160377_)
        (let ((_root160379_ '#f))
          (gx#prelude-context:::init!__%
           _self160376_
           _ctx160377_
           _root160379_))))
    (define gx#prelude-context:::init!
      (lambda _g164650_
        (let ((_g164649_ (##length _g164650_)))
          (cond ((##fx= _g164649_ 2)
                 (apply (lambda (_self160376_ _ctx160377_)
                          (gx#prelude-context:::init!__0
                           _self160376_
                           _ctx160377_))
                        _g164650_))
                ((##fx= _g164649_ 3)
                 (apply (lambda (_self160381_ _ctx160382_ _root160383_)
                          (gx#prelude-context:::init!__%
                           _self160381_
                           _ctx160382_
                           _root160383_))
                        _g164650_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g164650_))))))
    (bind-method! gx#prelude-context::t ':init! gx#prelude-context:::init! '#f)
    (define gx#import-export-expander-init!
      (lambda (_self160225_ _e160226_)
        (if (##fx< '3 (##structure-length _self160225_))
            (begin
              (##unchecked-structure-set!
               _self160225_
               _e160226_
               '1
               (##structure-type _self160225_)
               '#f)
              (##unchecked-structure-set!
               _self160225_
               (gx#current-expander-context)
               '2
               (##structure-type _self160225_)
               '#f)
              (##unchecked-structure-set!
               _self160225_
               (fx- (gx#current-expander-phi) '1)
               '3
               (##structure-type _self160225_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self160225_
                   '3
                   (##vector-length _self160225_)))))
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
      (lambda (_g159851159854_ _g159852159856_)
        (gx#core-apply-user-expander__%
         _g159851159854_
         _g159852159856_
         'apply-import-expander)))
    (bind-method!
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_g159722159725_ _g159723159727_)
        (gx#core-apply-user-expander__%
         _g159722159725_
         _g159723159727_
         'apply-export-expander)))
    (bind-method!
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_ctx159593_)
        (let* ((_path159595_
                (##structure-ref _ctx159593_ '7 gx#module-context::t '#f))
               (_path159597_
                (if (pair? _path159595_) (last _path159595_) _path159595_)))
          (if (string? _path159597_) _path159597_ '#f))))
    (define gx#import-module__%
      (lambda (_path159569_ _reload?159570_ _eval?159571_)
        (let ((_ctx159573_
               ((gx#current-expander-module-import)
                _path159569_
                _reload?159570_)))
          (if (and _ctx159573_ _eval?159571_)
              (gx#eval-module _ctx159573_)
              '#!void)
          _ctx159573_)))
    (define gx#import-module__0
      (lambda (_path159578_)
        (let* ((_reload?159580_ '#f) (_eval?159582_ '#f))
          (gx#import-module__% _path159578_ _reload?159580_ _eval?159582_))))
    (define gx#import-module__1
      (lambda (_path159584_ _reload?159585_)
        (let ((_eval?159587_ '#f))
          (gx#import-module__% _path159584_ _reload?159585_ _eval?159587_))))
    (define gx#import-module
      (lambda _g164652_
        (let ((_g164651_ (##length _g164652_)))
          (cond ((##fx= _g164651_ 1)
                 (apply (lambda (_path159578_)
                          (gx#import-module__0 _path159578_))
                        _g164652_))
                ((##fx= _g164651_ 2)
                 (apply (lambda (_path159584_ _reload?159585_)
                          (gx#import-module__1 _path159584_ _reload?159585_))
                        _g164652_))
                ((##fx= _g164651_ 3)
                 (apply (lambda (_path159589_ _reload?159590_ _eval?159591_)
                          (gx#import-module__%
                           _path159589_
                           _reload?159590_
                           _eval?159591_))
                        _g164652_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g164652_))))))
    (define gx#eval-module
      (lambda (_mod159566_) ((gx#current-expander-module-eval) _mod159566_)))
    (define gx#core-eval-module
      (lambda (_obj159551_)
        (letrec ((_force-e159553_
                  (lambda (_getf159562_ _e159563_)
                    (call-with-parameters
                     (lambda () (force (_getf159562_ _e159563_)))
                     gx#current-expander-context
                     _e159563_
                     gx#current-expander-phi
                     '0))))
          (let _recur159555_ ((_e159557_ _obj159551_))
            (if (##structure-instance-of? _e159557_ 'gx#module-context::t)
                (begin
                  (let ((_$e159559_ (gx#core-context-prelude__% _e159557_)))
                    (if _$e159559_ (_recur159555_ _$e159559_) '#!void))
                  (_force-e159553_ gx#module-context-e _e159557_))
                (if (##structure-instance-of? _e159557_ 'gx#prelude-context::t)
                    (_force-e159553_ gx#prelude-context-e _e159557_)
                    (if (gx#stx-string? _e159557_)
                        (_recur159555_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _e159557_)))
                        (if (gx#core-library-module-path? _e159557_)
                            (_recur159555_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _e159557_)))
                            (error '"Cannot eval module" _obj159551_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_ctx159534_)
        (let _lp159536_ ((_e159538_ _ctx159534_))
          (if (or (##structure-instance-of? _e159538_ 'gx#module-context::t)
                  (##structure-instance-of? _e159538_ 'gx#local-context::t))
              (_lp159536_
               (##unchecked-structure-ref _e159538_ '3 gx#phi-context::t '#f))
              (if (##structure-instance-of? _e159538_ 'gx#prelude-context::t)
                  _e159538_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_ctx159547_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _ctx159547_))))
    (define gx#core-context-prelude
      (lambda _g164654_
        (let ((_g164653_ (##length _g164654_)))
          (cond ((##fx= _g164653_ 0)
                 (apply (lambda () (gx#core-context-prelude__0)) _g164654_))
                ((##fx= _g164653_ 1)
                 (apply (lambda (_ctx159549_)
                          (gx#core-context-prelude__% _ctx159549_))
                        _g164654_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g164654_))))))
    (define gx#core-module->prelude-context
      (lambda (_ctx159524_)
        (let* ((_ht159526_ (gx#current-expander-module-registry))
               (_$e159528_ (hash-get _ht159526_ _ctx159524_)))
          (if _$e159528_
              (values _$e159528_)
              (let ((_pre159531_
                     (let ((__obj164645
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
                       (gx#prelude-context:::init! __obj164645 _ctx159524_)
                       __obj164645)))
                (table-set! _ht159526_ _ctx159524_ _pre159531_)
                _pre159531_)))))
    (define gx#core-import-module__%
      (lambda (_rpath159405_ _reload?159406_)
        (letrec ((_import-source159408_
                  (lambda (_path159493_)
                    (if (member _path159493_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _path159493_)
                        '#!void)
                    (call-with-parameters
                     (lambda ()
                       (let ((_g164655_ (gx#core-read-module _path159493_)))
                         (begin
                           (let ((_g164656_
                                  (if (##values? _g164655_)
                                      (##vector-length _g164655_)
                                      1)))
                             (if (not (##fx= _g164656_ 4))
                                 (error "Context expects 4 values" _g164656_)))
                           (let ((_pre159496_ (##vector-ref _g164655_ 0))
                                 (_id159497_ (##vector-ref _g164655_ 1))
                                 (_ns159498_ (##vector-ref _g164655_ 2))
                                 (_body159499_ (##vector-ref _g164655_ 3)))
                             (let* ((_prelude159504_
                                     (if (##structure-instance-of?
                                          _pre159496_
                                          'gx#prelude-context::t)
                                         _pre159496_
                                         (if (##structure-instance-of?
                                              _pre159496_
                                              'gx#module-context::t)
                                             (gx#core-module->prelude-context
                                              _pre159496_)
                                             (if (string? _pre159496_)
                                                 (gx#core-module->prelude-context
                                                  (gx#core-import-module__0
                                                   _pre159496_))
                                                 (if (not _pre159496_)
                                                     (let ((_$e159501_
                                                            (gx#current-expander-module-prelude)))
                                                       (if _$e159501_
                                                           _$e159501_
                                                           (let ((__obj164646
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
                     (gx#prelude-context:::init! __obj164646 '#f)
                     __obj164646)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error '"Cannot import module; unknown prelude"
                                                            _rpath159405_
                                                            _pre159496_))))))
                                    (_ctx159506_
                                     (let ((__obj164647
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
                                        __obj164647
                                        _id159497_
                                        _prelude159504_
                                        _ns159498_
                                        _path159493_)
                                       __obj164647))
                                    (_body159508_
                                     (gx#core-expand-module-begin
                                      _body159499_
                                      _ctx159506_))
                                    (_body159510_
                                     (gx#core-quote-syntax__%
                                      (gx#core-cons '%#begin _body159508_)
                                      _path159493_
                                      _ctx159506_
                                      '())))
                               (##unchecked-structure-set!
                                _ctx159506_
                                (make-promise
                                 (lambda () (gx#eval-syntax* _body159510_)))
                                '10
                                gx#module-context::t
                                '#f)
                               (##unchecked-structure-set!
                                _ctx159506_
                                _body159510_
                                '11
                                gx#module-context::t
                                '#f)
                               (table-set!
                                (gx#current-expander-module-registry)
                                _path159493_
                                _ctx159506_)
                               (table-set!
                                (gx#current-expander-module-registry)
                                _id159497_
                                _ctx159506_)
                               _ctx159506_)))))
                     gx#current-expander-context
                     (gx#core-context-root__0)
                     gx#current-expander-marks
                     '()
                     gx#current-expander-phi
                     '0
                     gx#current-expander-path
                     (cons _path159493_ (gx#current-expander-path))
                     gx#current-import-expander-phi
                     '#f
                     gx#current-export-expander-phi
                     '#f)))
                 (_import-submodule159409_
                  (lambda (_rpath159421_)
                    (let* ((_rpath159422159429_ _rpath159421_)
                           (_E159424159433_
                            (lambda ()
                              (error '"No clause matching"
                                     _rpath159422159429_)))
                           (_K159425159481_
                            (lambda (_refs159436_ _origin159437_)
                              (let ((_ctx159439_
                                     (if _origin159437_
                                         (gx#core-import-module__%
                                          _origin159437_
                                          _reload?159406_)
                                         (gx#current-expander-context))))
                                (let _lp159441_ ((_rest159443_ _refs159436_)
                                                 (_ctx159444_ _ctx159439_))
                                  (let* ((_rest159445159453_ _rest159443_)
                                         (_else159447159461_
                                          (lambda () _ctx159444_))
                                         (_K159449159469_
                                          (lambda (_rest159464_ _id159465_)
                                            (let ((_bind159467_
                                                   (gx#resolve-identifier__%
                                                    _id159465_
                                                    '0
                                                    _ctx159444_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _bind159467_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _bind159467_
                                                         '4
                                                         gx#syntax-binding::t
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_lp159441_
                                                   _rest159464_
                                                   (##unchecked-structure-ref
                                                    _bind159467_
                                                    '4
                                                    gx#syntax-binding::t
                                                    '#f))
                                                  (error '"Cannot import submodule; not bound as a module"
                                                         _rpath159421_
                                                         _id159465_
                                                         _bind159467_))))))
                                    (if (##pair? _rest159445159453_)
                                        (let ((_hd159450159472_
                                               (##car _rest159445159453_))
                                              (_tl159451159474_
                                               (##cdr _rest159445159453_)))
                                          (let* ((_id159477_ _hd159450159472_)
                                                 (_rest159479_
                                                  _tl159451159474_))
                                            (_K159449159469_
                                             _rest159479_
                                             _id159477_)))
                                        (_else159447159461_))))))))
                      (if (##pair? _rpath159422159429_)
                          (let ((_hd159426159484_ (##car _rpath159422159429_))
                                (_tl159427159486_ (##cdr _rpath159422159429_)))
                            (let* ((_origin159489_ _hd159426159484_)
                                   (_refs159491_ _tl159427159486_))
                              (_K159425159481_ _refs159491_ _origin159489_)))
                          (_E159424159433_))))))
          (let ((_$e159411_
                 (if (not _reload?159406_)
                     (hash-get
                      (gx#current-expander-module-registry)
                      _rpath159405_)
                     '#f)))
            (if _$e159411_
                (values _$e159411_)
                (if (list? _rpath159405_)
                    (_import-submodule159409_ _rpath159405_)
                    (if (gx#core-library-module-path? _rpath159405_)
                        (let ((_ctx159414_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _rpath159405_)
                                _reload?159406_)))
                          (table-set!
                           (gx#current-expander-module-registry)
                           _rpath159405_
                           _ctx159414_)
                          _ctx159414_)
                        (let* ((_npath159416_ (path-normalize _rpath159405_))
                               (_$e159418_
                                (if (not _reload?159406_)
                                    (hash-get
                                     (gx#current-expander-module-registry)
                                     _npath159416_)
                                    '#f)))
                          (if _$e159418_
                              (values _$e159418_)
                              (_import-source159408_ _npath159416_))))))))))
    (define gx#core-import-module__0
      (lambda (_rpath159517_)
        (let ((_reload?159519_ '#f))
          (gx#core-import-module__% _rpath159517_ _reload?159519_))))
    (define gx#core-import-module
      (lambda _g164658_
        (let ((_g164657_ (##length _g164658_)))
          (cond ((##fx= _g164657_ 1)
                 (apply (lambda (_rpath159517_)
                          (gx#core-import-module__0 _rpath159517_))
                        _g164658_))
                ((##fx= _g164657_ 2)
                 (apply (lambda (_rpath159521_ _reload?159522_)
                          (gx#core-import-module__%
                           _rpath159521_
                           _reload?159522_))
                        _g164658_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g164658_))))))
    (define gx#core-read-module
      (lambda (_path159394_)
        (with-catch
         (lambda (_exn159396_)
           (if (and (datum-parsing-exception? _exn159396_)
                    (eq? (datum-parsing-exception-filepos _exn159396_) '0))
               (gx#core-read-module/lang _path159394_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _path159394_
                (call-with-parameters
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_g159398159400_)
                      (display-exception _exn159396_ _g159398159400_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _path159394_)))))
    (define gx#core-read-module/sexp
      (lambda (_path159257_)
        (let _lp159259_ ((_body159261_ (read-syntax-from-file _path159257_))
                         (_pre159262_ '#f)
                         (_ns159263_ '#f)
                         (_pkg159264_ '#f))
          (let* ((_e159265159289_ _body159261_)
                 (_E159281159311_
                  (lambda ()
                    (let ((_g164659_
                           (if _pkg159264_
                               (values _pre159262_ _ns159263_ _pkg159264_)
                               (gx#core-read-module-package
                                _path159257_
                                _pre159262_
                                _ns159263_))))
                      (begin
                        (let ((_g164660_
                               (if (##values? _g164659_)
                                   (##vector-length _g164659_)
                                   1)))
                          (if (not (##fx= _g164660_ 3))
                              (error "Context expects 3 values" _g164660_)))
                        (let ((_pre159293_ (##vector-ref _g164659_ 0))
                              (_ns159294_ (##vector-ref _g164659_ 1))
                              (_pkg159295_ (##vector-ref _g164659_ 2)))
                          (let* ((_prelude159297_
                                  (if (gx#core-bound-module-prelude?
                                       _pre159293_)
                                      (gx#syntax-local-e__0 _pre159293_)
                                      (if (gx#core-library-module-path?
                                           _pre159293_)
                                          (gx#core-resolve-library-module-path
                                           _pre159293_)
                                          (if (gx#stx-string? _pre159293_)
                                              (gx#core-resolve-module-path__%
                                               _pre159293_
                                               _path159257_)
                                              (gx#stx-e _pre159293_)))))
                                 (_path-id159299_
                                  (gx#core-module-path->namespace
                                   _path159257_))
                                 (_pkg-id159301_
                                  (if _pkg159295_
                                      (string-append
                                       _pkg159295_
                                       '"/"
                                       _path-id159299_)
                                      _path-id159299_))
                                 (_module-id159303_
                                  (string->symbol _pkg-id159301_))
                                 (_module-ns159308_
                                  (if (eq? _ns159294_ '#!void)
                                      '#f
                                      (let ((_$e159305_ _ns159294_))
                                        (if _$e159305_
                                            _$e159305_
                                            _pkg-id159301_)))))
                            (values _prelude159297_
                                    _module-id159303_
                                    _module-ns159308_
                                    _body159261_)))))))
                 (_E159274159340_
                  (lambda ()
                    (if (gx#stx-pair? _e159265159289_)
                        (let ((_e159282159315_ (gx#syntax-e _e159265159289_)))
                          (let ((_hd159283159318_ (##car _e159282159315_))
                                (_tl159284159320_ (##cdr _e159282159315_)))
                            (if (eq? (gx#stx-e _hd159283159318_) 'package:)
                                (if (gx#stx-pair? _tl159284159320_)
                                    (let ((_e159285159323_
                                           (gx#syntax-e _tl159284159320_)))
                                      (let ((_hd159286159326_
                                             (##car _e159285159323_))
                                            (_tl159287159328_
                                             (##cdr _e159285159323_)))
                                        (let* ((_pkg159331_ _hd159286159326_)
                                               (_rest159333_ _tl159287159328_))
                                          (if '#t
                                              (let ((_pkg159338_
                                                     (if (gx#identifier?
                                                          _pkg159331_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _pkg159331_))
                                                         (if (or (gx#stx-string?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _pkg159331_)
                         (gx#stx-false? _pkg159331_))
                     (gx#stx-e _pkg159331_)
                     (gx#raise-syntax-error
                      'import
                      '"Bad syntax; Illegal package name"
                      _pkg159331_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp159259_
                                                 _rest159333_
                                                 _pre159262_
                                                 _ns159263_
                                                 _pkg159338_))
                                              (_E159281159311_)))))
                                    (_E159281159311_))
                                (_E159281159311_))))
                        (_E159281159311_))))
                 (_E159267159366_
                  (lambda ()
                    (if (gx#stx-pair? _e159265159289_)
                        (let ((_e159275159344_ (gx#syntax-e _e159265159289_)))
                          (let ((_hd159276159347_ (##car _e159275159344_))
                                (_tl159277159349_ (##cdr _e159275159344_)))
                            (if (eq? (gx#stx-e _hd159276159347_) 'namespace:)
                                (if (gx#stx-pair? _tl159277159349_)
                                    (let ((_e159278159352_
                                           (gx#syntax-e _tl159277159349_)))
                                      (let ((_hd159279159355_
                                             (##car _e159278159352_))
                                            (_tl159280159357_
                                             (##cdr _e159278159352_)))
                                        (let* ((_ns159360_ _hd159279159355_)
                                               (_rest159362_ _tl159280159357_))
                                          (if '#t
                                              (let ((_ns159364_
                                                     (if (gx#identifier?
                                                          _ns159360_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _ns159360_))
                                                         (if (gx#stx-string?
                                                              _ns159360_)
                                                             (gx#stx-e
                                                              _ns159360_)
                                                             (if (gx#stx-false?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _ns159360_)
                         '#!void
                         (gx#raise-syntax-error
                          'import
                          '"Bad syntax; illegal namespace"
                          _ns159360_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp159259_
                                                 _rest159362_
                                                 _pre159262_
                                                 _ns159364_
                                                 _pkg159264_))
                                              (_E159274159340_)))))
                                    (_E159274159340_))
                                (_E159274159340_))))
                        (_E159274159340_))))
                 (_E159266159390_
                  (lambda ()
                    (if (gx#stx-pair? _e159265159289_)
                        (let ((_e159268159370_ (gx#syntax-e _e159265159289_)))
                          (let ((_hd159269159373_ (##car _e159268159370_))
                                (_tl159270159375_ (##cdr _e159268159370_)))
                            (if (eq? (gx#stx-e _hd159269159373_) 'prelude:)
                                (if (gx#stx-pair? _tl159270159375_)
                                    (let ((_e159271159378_
                                           (gx#syntax-e _tl159270159375_)))
                                      (let ((_hd159272159381_
                                             (##car _e159271159378_))
                                            (_tl159273159383_
                                             (##cdr _e159271159378_)))
                                        (let* ((_prelude159386_
                                                _hd159272159381_)
                                               (_rest159388_ _tl159273159383_))
                                          (if '#t
                                              (_lp159259_
                                               _rest159388_
                                               _prelude159386_
                                               _ns159263_
                                               _pkg159264_)
                                              (_E159267159366_)))))
                                    (_E159267159366_))
                                (_E159267159366_))))
                        (_E159267159366_)))))
            (_E159266159390_)))))
    (define gx#core-read-module/lang
      (lambda (_path159084_)
        (letrec ((_default-read-module-body159086_
                  (lambda (_inp159249_)
                    (let _lp159251_ ((_body159253_ '()))
                      (let ((_next159255_ (read-syntax _inp159249_)))
                        (if (eof-object? _next159255_)
                            (reverse _body159253_)
                            (_lp159251_ (cons _next159255_ _body159253_)))))))
                 (_read-body159087_
                  (lambda (_inp159168_
                           _pre159169_
                           _ns159170_
                           _pkg159171_
                           _args159172_)
                    (let ((_g164661_
                           (if _pkg159171_
                               (values _pre159169_ _ns159170_ _pkg159171_)
                               (gx#core-read-module-package
                                _path159084_
                                _pre159169_
                                _ns159170_))))
                      (begin
                        (let ((_g164662_
                               (if (##values? _g164661_)
                                   (##vector-length _g164661_)
                                   1)))
                          (if (not (##fx= _g164662_ 3))
                              (error "Context expects 3 values" _g164662_)))
                        (let ((_pre159174_ (##vector-ref _g164661_ 0))
                              (_ns159175_ (##vector-ref _g164661_ 1))
                              (_pkg159176_ (##vector-ref _g164661_ 2)))
                          (let* ((_prelude159178_
                                  (gx#import-module__0 _pre159174_))
                                 (_read-module-body159232_
                                  (let ((_$e159224_
                                         (find (lambda (_e159179159181_)
                                                 (let* ((_g159183159193_
                                                         _e159179159181_)
                                                        (_else159185159201_
                                                         (lambda () '#f))
                                                        (_K159187159205_
                                                         (lambda () '#t)))
                                                   (if (##structure-direct-instance-of?
                                                        _g159183159193_
                                                        'gx#module-export::t)
                                                       (let* ((_e159188159208_
                                                               (##unchecked-structure-ref
                                                                _g159183159193_
                                                                '1
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e159189159211_
                                                               (##unchecked-structure-ref
                                                                _g159183159193_
                                                                '2
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e159190159214_
                                                               (##unchecked-structure-ref
                                                                _g159183159193_
                                                                '3
                                                                gx#module-export::t
                                                                '#f)))
                                                         (if (##eq? _e159190159214_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)
                     (let ((_e159191159217_
                            (##unchecked-structure-ref
                             _g159183159193_
                             '4
                             gx#module-export::t
                             '#f)))
                       (if ((lambda (_g159219159221_)
                              (eq? _g159219159221_ 'read-module-body))
                            _e159191159217_)
                           (_K159187159205_)
                           (_else159185159201_)))
                     (_else159185159201_)))
               (_else159185159201_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (##unchecked-structure-ref
                                                _prelude159178_
                                                '9
                                                gx#module-context::t
                                                '#f))))
                                    (if _$e159224_
                                        ((lambda (_xport159227_)
                                           (let ((_proc159230_
                                                  (with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _xport159227_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _proc159230_)
                                                 _proc159230_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _path159084_
                                                  _pre159174_
                                                  _proc159230_))))
                                         _$e159224_)
                                        _default-read-module-body159086_)))
                                 (_path-id159234_
                                  (gx#core-module-path->namespace
                                   _path159084_))
                                 (_pkg-id159236_
                                  (if _pkg159176_
                                      (string-append
                                       _pkg159176_
                                       '"/"
                                       _path-id159234_)
                                      _path-id159234_))
                                 (_module-id159238_
                                  (string->symbol _pkg-id159236_))
                                 (_module-ns159243_
                                  (let ((_$e159240_ _ns159175_))
                                    (if _$e159240_ _$e159240_ _pkg-id159236_)))
                                 (_body159246_
                                  (call-with-parameters
                                   (lambda ()
                                     (_read-module-body159232_ _inp159168_))
                                   gx#current-module-reader-path
                                   _path159084_
                                   gx#current-module-reader-args
                                   _args159172_)))
                            (values _prelude159178_
                                    _module-id159238_
                                    _module-ns159243_
                                    _body159246_)))))))
                 (_string-e159088_
                  (lambda (_obj159165_ _what159166_)
                    (if (string? _obj159165_)
                        _obj159165_
                        (if (symbol? _obj159165_)
                            (symbol->string _obj159165_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _what159166_)
                             _path159084_
                             _obj159165_)))))
                 (_read-lang-args159089_
                  (lambda (_inp159120_ _args159121_)
                    (let* ((_args159122159130_ _args159121_)
                           (_else159124159138_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _path159084_)))
                           (_K159126159153_
                            (lambda (_args159141_ _prelude159142_)
                              (let* ((_pkg159144_
                                      (pgetq 'package: _args159141_))
                                     (_pkg159146_
                                      (if _pkg159144_
                                          (_string-e159088_
                                           _pkg159144_
                                           '"package")
                                          '#f))
                                     (_ns159148_
                                      (pgetq 'namespace: _args159141_))
                                     (_ns159150_
                                      (if _ns159148_
                                          (_string-e159088_
                                           _ns159148_
                                           '"namespace")
                                          '#f)))
                                (_read-body159087_
                                 _inp159120_
                                 _prelude159142_
                                 _ns159150_
                                 _pkg159146_
                                 _args159141_)))))
                      (if (##pair? _args159122159130_)
                          (let ((_hd159127159156_ (##car _args159122159130_))
                                (_tl159128159158_ (##cdr _args159122159130_)))
                            (let* ((_prelude159161_ _hd159127159156_)
                                   (_args159163_ _tl159128159158_))
                              (_K159126159153_ _args159163_ _prelude159161_)))
                          (_else159124159138_)))))
                 (_read-lang159090_
                  (lambda (_inp159095_)
                    (let* ((_head159097_ (read-line _inp159095_))
                           (_$e159099_ (string-index _head159097_ '#\space)))
                      (if _$e159099_
                          ((lambda (_ix159102_)
                             (let ((_lang159104_
                                    (substring _head159097_ '0 _ix159102_)))
                               (if (equal? _lang159104_ '"#lang")
                                   (let* ((_rest159106_
                                           (substring
                                            _head159097_
                                            (fx+ _ix159102_ '1)
                                            (string-length _head159097_)))
                                          (_args159117_
                                           (with-catch
                                            (lambda (_g159107159109_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _path159084_
                                               _g159107159109_))
                                            (lambda ()
                                              (call-with-input-string
                                               _rest159106_
                                               (lambda (_g159112159114_)
                                                 (read-all
                                                  _g159112159114_
                                                  read)))))))
                                     (_read-lang-args159089_
                                      _inp159095_
                                      _args159117_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _path159084_))))
                           _$e159099_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _path159084_)))))
                 (_read-e159091_
                  (lambda (_inp159093_)
                    (if (eq? (peek-char _inp159093_) '#\#)
                        (_read-lang159090_ _inp159093_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _path159084_)))))
          (gx#call-with-input-source-file _path159084_ _read-e159091_))))
    (define gx#core-read-module-package
      (lambda (_path159038_ _pre159039_ _ns159040_)
        (letrec ((_string-e159042_
                  (lambda (_e159082_)
                    (if (symbol? _e159082_)
                        (symbol->string _e159082_)
                        (if (string? _e159082_)
                            _e159082_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _e159082_))))))
          (let _lp159044_ ((_dir159046_ (path-directory _path159038_))
                           (_pkg-path159047_ '()))
            (let ((_gerbil.pkg159049_ (path-expand '"gerbil.pkg" _dir159046_)))
              (if (file-exists? _gerbil.pkg159049_)
                  (let ((_plist159051_
                         (gx#core-library-package-plist__% _dir159046_ '#t)))
                    (if (null? _plist159051_)
                        (let ((_pkg159053_
                               (if (not (null? _pkg-path159047_))
                                   (string-join _pkg-path159047_ '"/")
                                   '#f)))
                          (values _pre159039_ _ns159040_ _pkg159053_))
                        (if (list? _plist159051_)
                            (let* ((_root159055_
                                    (pgetq 'package: _plist159051_))
                                   (_pkg159059_
                                    (let ((_pkg-path159057_
                                           (if _root159055_
                                               (cons (_string-e159042_
                                                      _root159055_)
                                                     _pkg-path159047_)
                                               _pkg-path159047_)))
                                      (if (not (null? _pkg-path159057_))
                                          (string-join _pkg-path159057_ '"/")
                                          '#f)))
                                   (_ns159066_
                                    (let ((_ns159064_
                                           (let ((_$e159061_ _ns159040_))
                                             (if _$e159061_
                                                 _$e159061_
                                                 (pgetq 'namespace:
                                                        _plist159051_)))))
                                      (if _ns159064_
                                          (_string-e159042_ _ns159064_)
                                          '#f)))
                                   (_pre159071_
                                    (let ((_$e159068_ _pre159039_))
                                      (if _$e159068_
                                          _$e159068_
                                          (pgetq 'prelude: _plist159051_)))))
                              (values _pre159071_ _ns159066_ _pkg159059_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _plist159051_))))
                  (let ((_dir*159074_
                         (path-strip-trailing-directory-separator
                          _dir159046_)))
                    (if (or (string-empty? _dir*159074_)
                            (equal? _dir159046_ _dir*159074_))
                        (values _pre159039_ _ns159040_ '#f)
                        (let ((_xpath159079_
                               (path-strip-directory _dir*159074_))
                              (_xdir159080_ (path-directory _dir*159074_)))
                          (_lp159044_
                           _xdir159080_
                           (cons _xpath159079_ _pkg-path159047_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_path159036_)
        (path-strip-extension (path-strip-directory _path159036_))))
    (define gx#core-module-path->id
      (lambda (_path159034_)
        (string->symbol (gx#core-module-path->namespace _path159034_))))
    (define gx#core-resolve-module-path__%
      (lambda (_stx-path159013_ _rel159014_)
        (let* ((_path159016_ (gx#stx-e _stx-path159013_))
               (_path159018_
                (if (string-empty? (path-extension _path159016_))
                    (string-append _path159016_ '".ss")
                    _path159016_)))
          (gx#core-resolve-path__%
           _path159018_
           (let ((_$e159021_ (gx#stx-source _stx-path159013_)))
             (if _$e159021_ _$e159021_ _rel159014_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_stx-path159027_)
        (let ((_rel159029_ '#f))
          (gx#core-resolve-module-path__% _stx-path159027_ _rel159029_))))
    (define gx#core-resolve-module-path
      (lambda _g164664_
        (let ((_g164663_ (##length _g164664_)))
          (cond ((##fx= _g164663_ 1)
                 (apply (lambda (_stx-path159027_)
                          (gx#core-resolve-module-path__0 _stx-path159027_))
                        _g164664_))
                ((##fx= _g164663_ 2)
                 (apply (lambda (_stx-path159031_ _rel159032_)
                          (gx#core-resolve-module-path__%
                           _stx-path159031_
                           _rel159032_))
                        _g164664_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g164664_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_libpath158899_)
        (let* ((_spath158901_ (symbol->string (gx#stx-e _libpath158899_)))
               (_spath158903_
                (substring _spath158901_ '1 (string-length _spath158901_)))
               (_ext158905_ (path-extension _spath158903_))
               (_ssi158907_
                (if (string-empty? _ext158905_)
                    (string-append _spath158903_ '".ssi")
                    (string-append
                     (path-strip-extension _spath158903_)
                     '".ssi")))
               (_srcs158911_
                (if (string-empty? _ext158905_)
                    (map (lambda (_ext158909_)
                           (string-append _spath158903_ _ext158909_))
                         '(".ss" ".sld" ".scm"))
                    (cons _spath158903_ '()))))
          (let _lp158914_ ((_rest158916_
                            (gx#current-expander-module-library-path)))
            (let* ((_rest158917158926_ _rest158916_)
                   (_E158920158930_
                    (lambda ()
                      (error '"No clause matching" _rest158917158926_))))
              (let ((_K158922159000_
                     (lambda (_rest158941_ _dir158942_)
                       (letrec ((_resolve158944_
                                 (lambda (_ssi158956_ _srcs158957_)
                                   (let ((_compiled-path158959_
                                          (path-expand
                                           _ssi158956_
                                           _dir158942_)))
                                     (if (file-exists? _compiled-path158959_)
                                         (path-normalize _compiled-path158959_)
                                         (let _lpr158961_ ((_rest-src158963_
                                                            _srcs158957_))
                                           (let* ((_rest-src158964158972_
                                                   _rest-src158963_)
                                                  (_else158966158980_
                                                   (lambda ()
                                                     (_lp158914_
                                                      _rest158941_)))
                                                  (_K158968158988_
                                                   (lambda (_rest-src158983_
                                                            _src158984_)
                                                     (let ((_src-path158986_
                                                            (path-expand
                                                             _src158984_
                                                             _dir158942_)))
                                                       (if (file-exists?
                                                            _src-path158986_)
                                                           (path-normalize
                                                            _src-path158986_)
                                                           (_lpr158961_
                                                            _rest-src158983_))))))
                                             (if (##pair? _rest-src158964158972_)
                                                 (let ((_hd158969158991_
                                                        (##car _rest-src158964158972_))
                                                       (_tl158970158993_
                                                        (##cdr _rest-src158964158972_)))
                                                   (let* ((_src158996_
                                                           _hd158969158991_)
                                                          (_rest-src158998_
                                                           _tl158970158993_))
                                                     (_K158968158988_
                                                      _rest-src158998_
                                                      _src158996_)))
                                                 (_else158966158980_)))))))))
                         (let ((_$e158946_
                                (gx#core-library-package-path-prefix
                                 _dir158942_)))
                           (if _$e158946_
                               ((lambda (_prefix158949_)
                                  (if (string-prefix?
                                       _prefix158949_
                                       _spath158903_)
                                      (let ((_ssi158953_
                                             (substring
                                              _ssi158907_
                                              (string-length _prefix158949_)
                                              (string-length _ssi158907_)))
                                            (_srcs158954_
                                             (map (lambda (_src158951_)
                                                    (substring
                                                     _src158951_
                                                     (string-length
                                                      _prefix158949_)
                                                     (string-length
                                                      _src158951_)))
                                                  _srcs158911_)))
                                        (_resolve158944_
                                         _ssi158953_
                                         _srcs158954_))
                                      (_lp158914_ _rest158941_)))
                                _$e158946_)
                               (_resolve158944_ _ssi158907_ _srcs158911_))))))
                    (_K158921158935_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"Cannot find library module"
                        _libpath158899_))))
                (let ((_try-match158919158938_
                       (lambda ()
                         (if (##null? _rest158917158926_)
                             (_K158921158935_)
                             (_E158920158930_)))))
                  (if (##pair? _rest158917158926_)
                      (let ((_tl158924159005_ (##cdr _rest158917158926_))
                            (_hd158923159003_ (##car _rest158917158926_)))
                        (let ((_dir159008_ _hd158923159003_)
                              (_rest159010_ _tl158924159005_))
                          (_K158922159000_ _rest159010_ _dir159008_)))
                      (_try-match158919158938_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_modpath158872_)
        (letrec ((_resolve158874_
                  (lambda (_path158891_ _base158892_)
                    (let ((_$e158894_ (string-rindex _base158892_ '#\/)))
                      (if _$e158894_
                          ((lambda (_idx158897_)
                             (gx#core-resolve-library-module-path
                              (string->symbol
                               (string-append
                                '":"
                                (substring _base158892_ '0 _idx158897_)
                                '"/"
                                _path158891_))))
                           _$e158894_)
                          (gx#core-resolve-library-module-path
                           (string->symbol
                            (string-append '":" _path158891_))))))))
          (let ((_spath158876_ (symbol->string (gx#stx-e _modpath158872_)))
                (_mod158877_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _mod158877_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"Cannot resolve relative module path; not in module context"
                 _modpath158872_))
            (let ((_mpath158879_
                   (symbol->string
                    (##structure-ref
                     _mod158877_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _lp158881_ ((_spath158883_ _spath158876_)
                               (_mpath158884_ _mpath158879_))
                (if (string-prefix? '"../" _spath158883_)
                    (let ((_$e158886_ (string-rindex _mpath158884_ '#\/)))
                      (if _$e158886_
                          ((lambda (_idx158889_)
                             (_lp158881_
                              (substring
                               _spath158883_
                               '3
                               (string-length _spath158883_))
                              (substring _mpath158884_ '0 _idx158889_)))
                           _$e158886_)
                          (gx#raise-syntax-error
                           '#f
                           '"Cannot resolve relative module path; illegal traversal"
                           _modpath158872_)))
                    (if (string-prefix? '"./" _spath158883_)
                        (_lp158881_
                         (substring
                          _spath158883_
                          '2
                          (string-length _spath158883_))
                         _mpath158884_)
                        (_resolve158874_ _spath158883_ _mpath158884_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_dir158865_)
        (let ((_$e158867_
               (pgetq 'package:
                      (gx#core-library-package-plist__0 _dir158865_))))
          (if _$e158867_
              ((lambda (_pkg158870_)
                 (string-append (symbol->string _pkg158870_) '"/"))
               _$e158867_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_dir158837_ _exists?158838_)
        (let* ((_cache158840_ (gx#core-library-package-cache))
               (_$e158842_ (hash-get _cache158840_ _dir158837_)))
          (if _$e158842_
              (values _$e158842_)
              (let* ((_gerbil.pkg158845_
                      (path-expand '"gerbil.pkg" _dir158837_))
                     (_plist158852_
                      (if (or _exists?158838_
                              (file-exists? _gerbil.pkg158845_))
                          (let ((_e158850_
                                 (gx#call-with-input-source-file
                                  _gerbil.pkg158845_
                                  read)))
                            (if (eof-object? _e158850_)
                                '()
                                (if (list? _e158850_)
                                    _e158850_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _gerbil.pkg158845_
                                     _e158850_))))
                          '())))
                (table-set! _cache158840_ _dir158837_ _plist158852_)
                _plist158852_)))))
    (define gx#core-library-package-plist__0
      (lambda (_dir158858_)
        (let ((_exists?158860_ '#f))
          (gx#core-library-package-plist__% _dir158858_ _exists?158860_))))
    (define gx#core-library-package-plist
      (lambda _g164666_
        (let ((_g164665_ (##length _g164666_)))
          (cond ((##fx= _g164665_ 1)
                 (apply (lambda (_dir158858_)
                          (gx#core-library-package-plist__0 _dir158858_))
                        _g164666_))
                ((##fx= _g164665_ 2)
                 (apply (lambda (_dir158862_ _exists?158863_)
                          (gx#core-library-package-plist__%
                           _dir158862_
                           _exists?158863_))
                        _g164666_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g164666_))))))
    (define gx#core-library-package-cache
      (lambda ()
        (let ((_$e158831_ (gx#current-expander-module-library-package-cache)))
          (if _$e158831_
              (values _$e158831_)
              (let ((_cache158834_ (make-hash-table)))
                (gx#current-expander-module-library-package-cache
                 _cache158834_)
                _cache158834_)))))
    (define gx#core-library-module-path?
      (lambda (_stx158828_) (gx#core-special-module-path? _stx158828_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_stx158826_) (gx#core-special-module-path? _stx158826_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_stx158821_ _char158822_)
        (if (gx#identifier? _stx158821_)
            (if (interned-symbol? (gx#stx-e _stx158821_))
                (let ((_str158824_ (symbol->string (gx#stx-e _stx158821_))))
                  (if (fx> (string-length _str158824_) '1)
                      (eq? (string-ref _str158824_ '0) _char158822_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_stx158815_)
        (gx#core-bound-identifier?__%
         _stx158815_
         (lambda (_g158816158818_)
           (gx#expander-binding?__% _g158816158818_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_stx158809_)
        (gx#core-bound-identifier?__%
         _stx158809_
         (lambda (_g158810158812_)
           (gx#expander-binding?__% _g158810158812_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_stx158796_)
        (letrec ((_module-prelude?158798_
                  (lambda (_e158804_)
                    (let ((_$e158806_
                           (##structure-instance-of?
                            _e158804_
                            'gx#module-context::t)))
                      (if _$e158806_
                          _$e158806_
                          (##structure-instance-of?
                           _e158804_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _stx158796_
           (lambda (_g158799158801_)
             (gx#expander-binding?__%
              _g158799158801_
              _module-prelude?158798_))))))
    (define gx#core-bind-import!__%
      (lambda (_in158726_ _ctx158727_ _force-weak?158728_)
        (let* ((_in158729158738_ _in158726_)
               (_E158731158742_
                (lambda () (error '"No clause matching" _in158729158738_)))
               (_K158732158755_
                (lambda (_weak?158745_ _phi158746_ _key158747_ _source158748_)
                  (gx#core-bind!__%
                   _key158747_
                   (let ((_e158750_
                          (gx#core-resolve-module-export _source158748_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref
                       _e158750_
                       '1
                       gx#binding::t
                       '#f)
                      _key158747_
                      _phi158746_
                      _e158750_
                      (##unchecked-structure-ref
                       _source158748_
                       '1
                       gx#module-export::t
                       '#f)
                      (let ((_$e158752_ _force-weak?158728_))
                        (if _$e158752_ _$e158752_ _weak?158745_))))
                   gx#core-context-rebind?
                   _phi158746_
                   _ctx158727_))))
          (if (##structure-direct-instance-of?
               _in158729158738_
               'gx#module-import::t)
              (let* ((_e158733158758_
                      (##unchecked-structure-ref
                       _in158729158738_
                       '1
                       gx#module-import::t
                       '#f))
                     (_source158761_ _e158733158758_)
                     (_e158734158763_
                      (##unchecked-structure-ref
                       _in158729158738_
                       '2
                       gx#module-import::t
                       '#f))
                     (_key158766_ _e158734158763_)
                     (_e158735158768_
                      (##unchecked-structure-ref
                       _in158729158738_
                       '3
                       gx#module-import::t
                       '#f))
                     (_phi158771_ _e158735158768_)
                     (_e158736158773_
                      (##unchecked-structure-ref
                       _in158729158738_
                       '4
                       gx#module-import::t
                       '#f))
                     (_weak?158776_ _e158736158773_))
                (_K158732158755_
                 _weak?158776_
                 _phi158771_
                 _key158766_
                 _source158761_))
              (_E158731158742_)))))
    (define gx#core-bind-import!__0
      (lambda (_in158781_)
        (let* ((_ctx158783_ (gx#current-expander-context))
               (_force-weak?158785_ '#f))
          (gx#core-bind-import!__%
           _in158781_
           _ctx158783_
           _force-weak?158785_))))
    (define gx#core-bind-import!__1
      (lambda (_in158787_ _ctx158788_)
        (let ((_force-weak?158790_ '#f))
          (gx#core-bind-import!__%
           _in158787_
           _ctx158788_
           _force-weak?158790_))))
    (define gx#core-bind-import!
      (lambda _g164668_
        (let ((_g164667_ (##length _g164668_)))
          (cond ((##fx= _g164667_ 1)
                 (apply (lambda (_in158781_)
                          (gx#core-bind-import!__0 _in158781_))
                        _g164668_))
                ((##fx= _g164667_ 2)
                 (apply (lambda (_in158787_ _ctx158788_)
                          (gx#core-bind-import!__1 _in158787_ _ctx158788_))
                        _g164668_))
                ((##fx= _g164667_ 3)
                 (apply (lambda (_in158792_ _ctx158793_ _force-weak?158794_)
                          (gx#core-bind-import!__%
                           _in158792_
                           _ctx158793_
                           _force-weak?158794_))
                        _g164668_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g164668_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_in158712_ _ctx158713_)
        (gx#core-bind-import!__% _in158712_ _ctx158713_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_in158718_)
        (let ((_ctx158720_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _in158718_ _ctx158720_))))
    (define gx#core-bind-weak-import!
      (lambda _g164670_
        (let ((_g164669_ (##length _g164670_)))
          (cond ((##fx= _g164669_ 1)
                 (apply (lambda (_in158718_)
                          (gx#core-bind-weak-import!__0 _in158718_))
                        _g164670_))
                ((##fx= _g164669_ 2)
                 (apply (lambda (_in158722_ _ctx158723_)
                          (gx#core-bind-weak-import!__%
                           _in158722_
                           _ctx158723_))
                        _g164670_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g164670_))))))
    (define gx#core-resolve-module-export
      (lambda (_out158603_)
        (letrec ((_subst158605_
                  (lambda (_key158651_)
                    (let* ((_key158652158660_ _key158651_)
                           (_else158654158668_ (lambda () _key158651_))
                           (_K158656158699_
                            (lambda (_mark158671_ _id158672_)
                              (let* ((_mark158673158679_ _mark158671_)
                                     (_E158675158683_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark158673158679_)))
                                     (_K158676158691_
                                      (lambda (_subst158686_)
                                        (let ((_$e158688_
                                               (if _subst158686_
                                                   (hash-get
                                                    _subst158686_
                                                    _id158672_)
                                                   '#f)))
                                          (if _$e158688_
                                              _$e158688_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _key158651_))))))
                                (if (##structure-instance-of?
                                     _mark158673158679_
                                     'gx#expander-mark::t)
                                    (let* ((_e158677158694_
                                            (##unchecked-structure-ref
                                             _mark158673158679_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst158697_ _e158677158694_))
                                      (_K158676158691_ _subst158697_))
                                    (_E158675158683_))))))
                      (if (##pair? _key158652158660_)
                          (let ((_hd158657158702_ (##car _key158652158660_))
                                (_tl158658158704_ (##cdr _key158652158660_)))
                            (let* ((_id158707_ _hd158657158702_)
                                   (_mark158709_ _tl158658158704_))
                              (_K158656158699_ _mark158709_ _id158707_)))
                          (_else158654158668_))))))
          (let* ((_out158606158616_ _out158603_)
                 (_E158608158620_
                  (lambda () (error '"No clause matching" _out158606158616_)))
                 (_K158609158627_
                  (lambda (_phi158623_ _key158624_ _ctx158625_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _ctx158625_ _phi158623_)
                     (_subst158605_ _key158624_)))))
            (if (##structure-direct-instance-of?
                 _out158606158616_
                 'gx#module-export::t)
                (let* ((_e158610158630_
                        (##unchecked-structure-ref
                         _out158606158616_
                         '1
                         gx#module-export::t
                         '#f))
                       (_ctx158633_ _e158610158630_)
                       (_e158611158635_
                        (##unchecked-structure-ref
                         _out158606158616_
                         '2
                         gx#module-export::t
                         '#f))
                       (_key158638_ _e158611158635_)
                       (_e158612158640_
                        (##unchecked-structure-ref
                         _out158606158616_
                         '3
                         gx#module-export::t
                         '#f))
                       (_phi158643_ _e158612158640_)
                       (_e158613158645_
                        (##unchecked-structure-ref
                         _out158606158616_
                         '4
                         gx#module-export::t
                         '#f))
                       (_e158614158648_
                        (##unchecked-structure-ref
                         _out158606158616_
                         '5
                         gx#module-export::t
                         '#f)))
                  (_K158609158627_ _phi158643_ _key158638_ _ctx158633_))
                (_E158608158620_))))))
    (define gx#core-module-export->import__%
      (lambda (_out158528_ _rename158529_ _dphi158530_)
        (let* ((_out158531158541_ _out158528_)
               (_E158533158545_
                (lambda () (error '"No clause matching" _out158531158541_)))
               (_K158534158557_
                (lambda (_weak?158548_
                         _name158549_
                         _phi158550_
                         _key158551_
                         _ctx158552_)
                  (##structure
                   gx#module-import::t
                   _out158528_
                   (let ((_$e158554_ _rename158529_))
                     (if _$e158554_ _$e158554_ _name158549_))
                   (fx+ _phi158550_ _dphi158530_)
                   _weak?158548_))))
          (if (##structure-direct-instance-of?
               _out158531158541_
               'gx#module-export::t)
              (let* ((_e158535158560_
                      (##unchecked-structure-ref
                       _out158531158541_
                       '1
                       gx#module-export::t
                       '#f))
                     (_ctx158563_ _e158535158560_)
                     (_e158536158565_
                      (##unchecked-structure-ref
                       _out158531158541_
                       '2
                       gx#module-export::t
                       '#f))
                     (_key158568_ _e158536158565_)
                     (_e158537158570_
                      (##unchecked-structure-ref
                       _out158531158541_
                       '3
                       gx#module-export::t
                       '#f))
                     (_phi158573_ _e158537158570_)
                     (_e158538158575_
                      (##unchecked-structure-ref
                       _out158531158541_
                       '4
                       gx#module-export::t
                       '#f))
                     (_name158578_ _e158538158575_)
                     (_e158539158580_
                      (##unchecked-structure-ref
                       _out158531158541_
                       '5
                       gx#module-export::t
                       '#f))
                     (_weak?158583_ _e158539158580_))
                (_K158534158557_
                 _weak?158583_
                 _name158578_
                 _phi158573_
                 _key158568_
                 _ctx158563_))
              (_E158533158545_)))))
    (define gx#core-module-export->import__0
      (lambda (_out158588_)
        (let* ((_rename158590_ '#f) (_dphi158592_ '0))
          (gx#core-module-export->import__%
           _out158588_
           _rename158590_
           _dphi158592_))))
    (define gx#core-module-export->import__1
      (lambda (_out158594_ _rename158595_)
        (let ((_dphi158597_ '0))
          (gx#core-module-export->import__%
           _out158594_
           _rename158595_
           _dphi158597_))))
    (define gx#core-module-export->import
      (lambda _g164672_
        (let ((_g164671_ (##length _g164672_)))
          (cond ((##fx= _g164671_ 1)
                 (apply (lambda (_out158588_)
                          (gx#core-module-export->import__0 _out158588_))
                        _g164672_))
                ((##fx= _g164671_ 2)
                 (apply (lambda (_out158594_ _rename158595_)
                          (gx#core-module-export->import__1
                           _out158594_
                           _rename158595_))
                        _g164672_))
                ((##fx= _g164671_ 3)
                 (apply (lambda (_out158599_ _rename158600_ _dphi158601_)
                          (gx#core-module-export->import__%
                           _out158599_
                           _rename158600_
                           _dphi158601_))
                        _g164672_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g164672_))))))
    (define gx#core-expand-module%
      (lambda (_stx158456_)
        (letrec ((_make-context158458_
                  (lambda (_id158509_)
                    (let* ((_super158511_ (gx#current-expander-context))
                           (_bind-id158513_ (gx#stx-e _id158509_))
                           (_mod-id158515_
                            (if (##structure-instance-of?
                                 _super158511_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##structure-ref
                                  _super158511_
                                  '1
                                  gx#expander-context::t
                                  '#f)
                                 '"$"
                                 _bind-id158513_)
                                _bind-id158513_))
                           (_ns158517_ (symbol->string _mod-id158515_))
                           (_path158524_
                            (if (##structure-instance-of?
                                 _super158511_
                                 'gx#module-context::t)
                                (let ((_path158519_
                                       (##unchecked-structure-ref
                                        _super158511_
                                        '7
                                        gx#module-context::t
                                        '#f)))
                                  (if (or (pair? _path158519_)
                                          (null? _path158519_))
                                      (cons _bind-id158513_ _path158519_)
                                      (if (not _path158519_)
                                          _bind-id158513_
                                          (cons _bind-id158513_
                                                (cons _path158519_ '())))))
                                _bind-id158513_)))
                      (let ((__obj164648
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
                         __obj164648
                         _mod-id158515_
                         _super158511_
                         _ns158517_
                         _path158524_)
                        __obj164648)))))
          (let* ((_e158459158469_ _stx158456_)
                 (_E158461158473_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e158459158469_)))
                 (_E158460158505_
                  (lambda ()
                    (if (gx#stx-pair? _e158459158469_)
                        (let ((_e158462158477_ (gx#syntax-e _e158459158469_)))
                          (let ((_hd158463158480_ (##car _e158462158477_))
                                (_tl158464158482_ (##cdr _e158462158477_)))
                            (if (gx#stx-pair? _tl158464158482_)
                                (let ((_e158465158485_
                                       (gx#syntax-e _tl158464158482_)))
                                  (let ((_hd158466158488_
                                         (##car _e158465158485_))
                                        (_tl158467158490_
                                         (##cdr _e158465158485_)))
                                    (let* ((_id158493_ _hd158466158488_)
                                           (_body158495_ _tl158467158490_))
                                      (if (and (gx#identifier? _id158493_)
                                               (gx#stx-list? _body158495_))
                                          (let* ((_ctx158497_
                                                  (_make-context158458_
                                                   _id158493_))
                                                 (_body158499_
                                                  (gx#core-expand-module-begin
                                                   _body158495_
                                                   _ctx158497_))
                                                 (_body158501_
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body158499_)
                                                   (gx#stx-source
                                                    _stx158456_))))
                                            (##unchecked-structure-set!
                                             _ctx158497_
                                             (make-promise
                                              (lambda ()
                                                (gx#eval-syntax*
                                                 _body158501_)))
                                             '10
                                             gx#module-context::t
                                             '#f)
                                            (##unchecked-structure-set!
                                             _ctx158497_
                                             _body158501_
                                             '11
                                             gx#module-context::t
                                             '#f)
                                            (gx#core-bind-syntax!__0
                                             _id158493_
                                             _ctx158497_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-list
                                              '%#module
                                              (gx#core-quote-syntax__0
                                               _id158493_)
                                              _body158501_)
                                             (gx#stx-source _stx158456_)))
                                          (_E158461158473_)))))
                                (_E158461158473_))))
                        (_E158461158473_)))))
            (_E158460158505_)))))
    (define gx#core-expand-module-begin
      (lambda (_body158422_ _ctx158423_)
        (call-with-parameters
         (lambda ()
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_stx158426_
                   (gx#core-expand-head (cons '%%begin-module _body158422_)))
                  (_e158427158434_ _stx158426_)
                  (_E158429158438_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _stx158426_)))
                  (_E158428158452_
                   (lambda ()
                     (if (gx#stx-pair? _e158427158434_)
                         (let ((_e158430158442_ (gx#syntax-e _e158427158434_)))
                           (let ((_hd158431158445_ (##car _e158430158442_))
                                 (_tl158432158447_ (##cdr _e158430158442_)))
                             (if (and (gx#identifier? _hd158431158445_)
                                      (gx#core-identifier=?
                                       _hd158431158445_
                                       '%#begin-module))
                                 (let ((_body158450_ _tl158432158447_))
                                   (if '#t
                                       (if (gx#sealed-syntax? _stx158426_)
                                           _body158450_
                                           (gx#core-expand-module-body
                                            _body158450_))
                                       (_E158429158438_)))
                                 (_E158429158438_))))
                         (_E158429158438_)))))
             (_E158428158452_)))
         gx#current-expander-context
         _ctx158423_
         gx#current-expander-phi
         '0)))
    (define gx#core-expand-module-body
      (lambda (_body158218_)
        (letrec ((_expand-special158220_
                  (lambda (_hd158349_ _K158350_ _rest158351_ _r158352_)
                    (let* ((_e158353158370_ _hd158349_)
                           (_E158365158374_
                            (lambda ()
                              (_K158350_
                               _rest158351_
                               (cons (gx#core-expand-top _hd158349_)
                                     _r158352_))))
                           (_E158355158386_
                            (lambda ()
                              (if (gx#stx-pair? _e158353158370_)
                                  (let ((_e158366158378_
                                         (gx#syntax-e _e158353158370_)))
                                    (let ((_hd158367158381_
                                           (##car _e158366158378_))
                                          (_tl158368158383_
                                           (##cdr _e158366158378_)))
                                      (if (and (gx#identifier?
                                                _hd158367158381_)
                                               (gx#core-identifier=?
                                                _hd158367158381_
                                                '%#export))
                                          (if '#t
                                              (_K158350_
                                               _rest158351_
                                               (cons _hd158349_ _r158352_))
                                              (_E158365158374_))
                                          (_E158365158374_))))
                                  (_E158365158374_))))
                           (_E158354158418_
                            (lambda ()
                              (if (gx#stx-pair? _e158353158370_)
                                  (let ((_e158356158390_
                                         (gx#syntax-e _e158353158370_)))
                                    (let ((_hd158357158393_
                                           (##car _e158356158390_))
                                          (_tl158358158395_
                                           (##cdr _e158356158390_)))
                                      (if (and (gx#identifier?
                                                _hd158357158393_)
                                               (gx#core-identifier=?
                                                _hd158357158393_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl158358158395_)
                                              (let ((_e158359158398_
                                                     (gx#syntax-e
                                                      _tl158358158395_)))
                                                (let ((_hd158360158401_
                                                       (##car _e158359158398_))
                                                      (_tl158361158403_
                                                       (##cdr _e158359158398_)))
                                                  (let ((_hd-bind158406_
                                                         _hd158360158401_))
                                                    (if (gx#stx-pair?
                                                         _tl158361158403_)
                                                        (let ((_e158362158408_
                                                               (gx#syntax-e
                                                                _tl158361158403_)))
                                                          (let ((_hd158363158411_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e158362158408_))
                        (_tl158364158413_ (##cdr _e158362158408_)))
                    (let ((_expr158416_ _hd158363158411_))
                      (if (gx#stx-null? _tl158364158413_)
                          (if (gx#core-bind-values? _hd-bind158406_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind158406_)
                                (_K158350_
                                 _rest158351_
                                 (cons _hd158349_ _r158352_)))
                              (_E158355158386_))
                          (_E158355158386_)))))
                (_E158355158386_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E158355158386_))
                                          (_E158355158386_))))
                                  (_E158355158386_)))))
                      (_E158354158418_))))
                 (_expand-body158221_
                  (lambda (_rbody158223_)
                    (let _lp158225_ ((_rest158227_ _rbody158223_)
                                     (_body158228_ '()))
                      (let* ((_rest158229158237_ _rest158227_)
                             (_else158231158245_ (lambda () _body158228_))
                             (_K158233158337_
                              (lambda (_rest158248_ _hd158249_)
                                (let* ((_e158250158271_ _hd158249_)
                                       (_E158266158275_
                                        (lambda ()
                                          (_lp158225_
                                           _rest158248_
                                           (cons (gx#core-expand-expression
                                                  _hd158249_)
                                                 _body158228_))))
                                       (_E158262158289_
                                        (lambda ()
                                          (if (gx#stx-pair? _e158250158271_)
                                              (let ((_e158267158279_
                                                     (gx#syntax-e
                                                      _e158250158271_)))
                                                (let ((_hd158268158282_
                                                       (##car _e158267158279_))
                                                      (_tl158269158284_
                                                       (##cdr _e158267158279_)))
                                                  (let ((_form158287_
                                                         _hd158268158282_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _form158287_
                                                         gx#special-form-binding?)
                                                        (_lp158225_
                                                         _rest158248_
                                                         (cons _hd158249_
                                                               _body158228_))
                                                        (_E158266158275_)))))
                                              (_E158266158275_))))
                                       (_E158252158301_
                                        (lambda ()
                                          (if (gx#stx-pair? _e158250158271_)
                                              (let ((_e158263158293_
                                                     (gx#syntax-e
                                                      _e158250158271_)))
                                                (let ((_hd158264158296_
                                                       (##car _e158263158293_))
                                                      (_tl158265158298_
                                                       (##cdr _e158263158293_)))
                                                  (if (and (gx#identifier?
                                                            _hd158264158296_)
                                                           (gx#core-identifier=?
                                                            _hd158264158296_
                                                            '%#export))
                                                      (if '#t
                                                          (_lp158225_
                                                           _rest158248_
                                                           (cons (gx#core-expand-export%__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd158249_)
                         _body158228_))
                  (_E158262158289_))
              (_E158262158289_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E158262158289_))))
                                       (_E158251158333_
                                        (lambda ()
                                          (if (gx#stx-pair? _e158250158271_)
                                              (let ((_e158253158305_
                                                     (gx#syntax-e
                                                      _e158250158271_)))
                                                (let ((_hd158254158308_
                                                       (##car _e158253158305_))
                                                      (_tl158255158310_
                                                       (##cdr _e158253158305_)))
                                                  (if (and (gx#identifier?
                                                            _hd158254158308_)
                                                           (gx#core-identifier=?
                                                            _hd158254158308_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl158255158310_)
                                                          (let ((_e158256158313_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl158255158310_)))
                    (let ((_hd158257158316_ (##car _e158256158313_))
                          (_tl158258158318_ (##cdr _e158256158313_)))
                      (let ((_hd-bind158321_ _hd158257158316_))
                        (if (gx#stx-pair? _tl158258158318_)
                            (let ((_e158259158323_
                                   (gx#syntax-e _tl158258158318_)))
                              (let ((_hd158260158326_ (##car _e158259158323_))
                                    (_tl158261158328_ (##cdr _e158259158323_)))
                                (let ((_expr158331_ _hd158260158326_))
                                  (if (gx#stx-null? _tl158261158328_)
                                      (if '#t
                                          (_lp158225_
                                           _rest158248_
                                           (cons (gx#core-quote-syntax__1
                                                  (gx#core-list
                                                   '%#define-values
                                                   (gx#core-quote-bind-values
                                                    _hd-bind158321_)
                                                   (gx#core-expand-expression
                                                    _expr158331_))
                                                  (gx#stx-source _hd158249_))
                                                 _body158228_))
                                          (_E158252158301_))
                                      (_E158252158301_)))))
                            (_E158252158301_)))))
                  (_E158252158301_))
              (_E158252158301_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E158252158301_)))))
                                  (_E158251158333_)))))
                        (if (##pair? _rest158229158237_)
                            (let ((_hd158234158340_ (##car _rest158229158237_))
                                  (_tl158235158342_
                                   (##cdr _rest158229158237_)))
                              (let* ((_hd158345_ _hd158234158340_)
                                     (_rest158347_ _tl158235158342_))
                                (_K158233158337_ _rest158347_ _hd158345_)))
                            (_else158231158245_)))))))
          (_expand-body158221_
           (gx#core-expand-block__%
            (cons '%#begin-module _body158218_)
            _expand-special158220_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_stx158061_
               _expanded?158062_
               _method158063_
               _current-phi158064_
               _expand1158065_)
        (letrec ((_K158067_
                  (lambda (_rest158185_ _r158186_)
                    (let* ((_e158187158194_ _rest158185_)
                           (_E158189158198_ (lambda () _r158186_))
                           (_E158188158214_
                            (lambda ()
                              (if (gx#stx-pair? _e158187158194_)
                                  (let ((_e158190158202_
                                         (gx#syntax-e _e158187158194_)))
                                    (let ((_hd158191158205_
                                           (##car _e158190158202_))
                                          (_tl158192158207_
                                           (##cdr _e158190158202_)))
                                      (let* ((_hd158210_ _hd158191158205_)
                                             (_rest158212_ _tl158192158207_))
                                        (if '#t
                                            (_step158068_
                                             _hd158210_
                                             _rest158212_
                                             _r158186_)
                                            (_E158189158198_)))))
                                  (_E158189158198_)))))
                      (_E158188158214_))))
                 (_step158068_
                  (lambda (_hd158099_ _rest158100_ _r158101_)
                    (let* ((_e158102158120_ _hd158099_)
                           (_E158115158124_
                            (lambda ()
                              (if (_expanded?158062_ (gx#stx-e _hd158099_))
                                  (_K158067_
                                   _rest158100_
                                   (cons (gx#stx-e _hd158099_) _r158101_))
                                  (_expand1158065_
                                   _hd158099_
                                   _K158067_
                                   _rest158100_
                                   _r158101_))))
                           (_E158111158140_
                            (lambda ()
                              (if (gx#stx-pair? _e158102158120_)
                                  (let ((_e158116158128_
                                         (gx#syntax-e _e158102158120_)))
                                    (let ((_hd158117158131_
                                           (##car _e158116158128_))
                                          (_tl158118158133_
                                           (##cdr _e158116158128_)))
                                      (let* ((_macro158136_ _hd158117158131_)
                                             (_body158138_ _tl158118158133_))
                                        (if (gx#core-bound-identifier?__%
                                             _macro158136_
                                             gx#syntax-binding?)
                                            (_K158067_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _macro158136_)
                                                    _hd158099_
                                                    _method158063_)
                                                   _rest158100_)
                                             _r158101_)
                                            (_E158115158124_)))))
                                  (_E158115158124_))))
                           (_E158104158154_
                            (lambda ()
                              (if (gx#stx-pair? _e158102158120_)
                                  (let ((_e158112158144_
                                         (gx#syntax-e _e158102158120_)))
                                    (let ((_hd158113158147_
                                           (##car _e158112158144_))
                                          (_tl158114158149_
                                           (##cdr _e158112158144_)))
                                      (if (eq? (gx#stx-e _hd158113158147_)
                                               'begin:)
                                          (let ((_body158152_
                                                 _tl158114158149_))
                                            (if '#t
                                                (_K158067_
                                                 (gx#stx-foldr
                                                  cons
                                                  _rest158100_
                                                  _body158152_)
                                                 _r158101_)
                                                (_E158111158140_)))
                                          (_E158111158140_))))
                                  (_E158111158140_))))
                           (_E158103158181_
                            (lambda ()
                              (if (gx#stx-pair? _e158102158120_)
                                  (let ((_e158105158158_
                                         (gx#syntax-e _e158102158120_)))
                                    (let ((_hd158106158161_
                                           (##car _e158105158158_))
                                          (_tl158107158163_
                                           (##cdr _e158105158158_)))
                                      (if (eq? (gx#stx-e _hd158106158161_)
                                               'phi:)
                                          (if (gx#stx-pair? _tl158107158163_)
                                              (let ((_e158108158166_
                                                     (gx#syntax-e
                                                      _tl158107158163_)))
                                                (let ((_hd158109158169_
                                                       (##car _e158108158166_))
                                                      (_tl158110158171_
                                                       (##cdr _e158108158166_)))
                                                  (let* ((_dphi158174_
                                                          _hd158109158169_)
                                                         (_body158176_
                                                          _tl158110158171_))
                                                    (if (gx#stx-fixnum?
                                                         _dphi158174_)
                                                        (let ((_rbody158179_
                                                               (call-with-parameters
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_K158067_ _body158176_ '()))
                        _current-phi158064_
                        (fx+ (gx#stx-e _dphi158174_) (_current-phi158064_)))))
                  (_K158067_
                   _rest158100_
                   (foldr1 cons _r158101_ _rbody158179_)))
                (_E158104158154_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E158104158154_))
                                          (_E158104158154_))))
                                  (_E158104158154_)))))
                      (_E158103158181_)))))
          (let* ((_e158069158076_ _stx158061_)
                 (_E158071158080_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e158069158076_)))
                 (_E158070158095_
                  (lambda ()
                    (if (gx#stx-pair? _e158069158076_)
                        (let ((_e158072158084_ (gx#syntax-e _e158069158076_)))
                          (let ((_hd158073158087_ (##car _e158072158084_))
                                (_tl158074158089_ (##cdr _e158072158084_)))
                            (let ((_body158092_ _tl158074158089_))
                              (if '#t
                                  (if (_current-phi158064_)
                                      (_K158067_ _body158092_ '())
                                      (call-with-parameters
                                       (lambda () (_K158067_ _body158092_ '()))
                                       _current-phi158064_
                                       (gx#current-expander-phi)))
                                  (_E158071158080_)))))
                        (_E158071158080_)))))
            (_E158070158095_)))))
    (define gx#core-expand-import%__%
      (lambda (_stx157728_ _internal-expand?157729_)
        (letrec ((_expand1157731_
                  (lambda (_hd158041_ _K158042_ _rest158043_ _r158044_)
                    (if (gx#core-bound-module? _hd158041_)
                        (_import1157732_
                         (gx#syntax-local-e__0 _hd158041_)
                         _K158042_
                         _rest158043_
                         _r158044_)
                        (if (gx#core-library-module-path? _hd158041_)
                            (_import1157732_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _hd158041_))
                             _K158042_
                             _rest158043_
                             _r158044_)
                            (if (gx#core-library-relative-module-path?
                                 _hd158041_)
                                (_import1157732_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _hd158041_))
                                 _K158042_
                                 _rest158043_
                                 _r158044_)
                                (let ((_e158046_ (gx#stx-e _hd158041_)))
                                  (if (pair? _e158046_)
                                      (let ((_$e158048_
                                             (gx#stx-e (car _e158046_))))
                                        (if (eq? 'spec: _$e158048_)
                                            (_import-spec157735_
                                             _hd158041_
                                             _K158042_
                                             _rest158043_
                                             _r158044_)
                                            (if (eq? 'in: _$e158048_)
                                                (_import-submodule157733_
                                                 _hd158041_
                                                 _K158042_
                                                 _rest158043_
                                                 _r158044_)
                                                (if (eq? 'runtime: _$e158048_)
                                                    (_import-runtime157734_
                                                     _hd158041_
                                                     _K158042_
                                                     _rest158043_
                                                     _r158044_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _stx157728_
                                                     _hd158041_)))))
                                      (if (string? _e158046_)
                                          (_import1157732_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _hd158041_
                                             (gx#stx-source _stx157728_)))
                                           _K158042_
                                           _rest158043_
                                           _r158044_)
                                          (if (##structure-instance-of?
                                               _e158046_
                                               'gx#module-context::t)
                                              (_K158042_
                                               _rest158043_
                                               (cons _e158046_ _r158044_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _stx157728_
                                               _hd158041_))))))))))
                 (_import1157732_
                  (lambda (_ctx158030_ _K158031_ _rest158032_ _r158033_)
                    (let ((_dphi158035_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_K158031_
                       _rest158032_
                       (cons (##structure
                              gx#import-set::t
                              _ctx158030_
                              _dphi158035_
                              (map (lambda (_g158036158038_)
                                     (gx#core-module-export->import__%
                                      _g158036158038_
                                      '#f
                                      _dphi158035_))
                                   (##unchecked-structure-ref
                                    _ctx158030_
                                    '9
                                    gx#module-context::t
                                    '#f)))
                             _r158033_)))))
                 (_import-submodule157733_
                  (lambda (_hd157997_ _K157998_ _rest157999_ _r158000_)
                    (let* ((_e158001158008_ _hd157997_)
                           (_E158003158012_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e158001158008_)))
                           (_E158002158026_
                            (lambda ()
                              (if (gx#stx-pair? _e158001158008_)
                                  (let ((_e158004158016_
                                         (gx#syntax-e _e158001158008_)))
                                    (let ((_hd158005158019_
                                           (##car _e158004158016_))
                                          (_tl158006158021_
                                           (##cdr _e158004158016_)))
                                      (let ((_spath158024_ _tl158006158021_))
                                        (if '#t
                                            (_import1157732_
                                             (_import-spec-source157736_
                                              _spath158024_)
                                             _K157998_
                                             _rest157999_
                                             _r158000_)
                                            (_E158003158012_)))))
                                  (_E158003158012_)))))
                      (_E158002158026_))))
                 (_import-runtime157734_
                  (lambda (_hd157964_ _K157965_ _rest157966_ _r157967_)
                    (let* ((_e157968157975_ _hd157964_)
                           (_E157970157979_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e157968157975_)))
                           (_E157969157993_
                            (lambda ()
                              (if (gx#stx-pair? _e157968157975_)
                                  (let ((_e157971157983_
                                         (gx#syntax-e _e157968157975_)))
                                    (let ((_hd157972157986_
                                           (##car _e157971157983_))
                                          (_tl157973157988_
                                           (##cdr _e157971157983_)))
                                      (let ((_spath157991_ _tl157973157988_))
                                        (if '#t
                                            (_K157965_
                                             _rest157966_
                                             (cons (_import-spec-source157736_
                                                    _spath157991_)
                                                   _r157967_))
                                            (_E157970157979_)))))
                                  (_E157970157979_)))))
                      (_E157969157993_))))
                 (_import-spec157735_
                  (lambda (_hd157803_ _K157804_ _rest157805_ _r157806_)
                    (let* ((_e157807157824_ _hd157803_)
                           (_E157816157828_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e157807157824_)))
                           (_E157809157938_
                            (lambda ()
                              (if (gx#stx-pair? _e157807157824_)
                                  (let ((_e157817157832_
                                         (gx#syntax-e _e157807157824_)))
                                    (let ((_hd157818157835_
                                           (##car _e157817157832_))
                                          (_tl157819157837_
                                           (##cdr _e157817157832_)))
                                      (if (gx#stx-pair? _tl157819157837_)
                                          (let ((_e157820157840_
                                                 (gx#syntax-e
                                                  _tl157819157837_)))
                                            (let ((_hd157821157843_
                                                   (##car _e157820157840_))
                                                  (_tl157822157845_
                                                   (##cdr _e157820157840_)))
                                              (let* ((_path157848_
                                                      _hd157821157843_)
                                                     (_specs157850_
                                                      _tl157822157845_))
                                                (if '#t
                                                    (let ((_src-ctx157852_
                                                           (_import-spec-source157736_
                                                            _path157848_))
                                                          (_exports157853_
                                                           (make-hash-table))
                                                          (_specs157854_
                                                           (gx#syntax->list
                                                            _specs157850_)))
                                                      (for-each
                                                       (lambda (_out157856_)
                                                         (table-set!
                                                          _exports157853_
                                                          (cons (##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _out157856_
                         '3
                         gx#module-export::t
                         '#f)
                        (##unchecked-structure-ref
                         _out157856_
                         '4
                         gx#module-export::t
                         '#f))
                  _out157856_))
               (##unchecked-structure-ref
                _src-ctx157852_
                '9
                gx#module-context::t
                '#f))
              (_K157804_
               _rest157805_
               (foldl1 (lambda (_spec157858_ _r157859_)
                         (let* ((_e157860157876_ _spec157858_)
                                (_E157862157880_
                                 (lambda ()
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid syntax-case clause"
                                    _e157860157876_)))
                                (_E157861157934_
                                 (lambda ()
                                   (if (gx#stx-pair? _e157860157876_)
                                       (let ((_e157863157884_
                                              (gx#syntax-e _e157860157876_)))
                                         (let ((_hd157864157887_
                                                (##car _e157863157884_))
                                               (_tl157865157889_
                                                (##cdr _e157863157884_)))
                                           (let ((_phi157892_
                                                  _hd157864157887_))
                                             (if (gx#stx-pair?
                                                  _tl157865157889_)
                                                 (let ((_e157866157894_
                                                        (gx#syntax-e
                                                         _tl157865157889_)))
                                                   (let ((_hd157867157897_
                                                          (##car _e157866157894_))
                                                         (_tl157868157899_
                                                          (##cdr _e157866157894_)))
                                                     (let ((_name157902_
                                                            _hd157867157897_))
                                                       (if (gx#stx-pair?
                                                            _tl157868157899_)
                                                           (let ((_e157869157904_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl157868157899_)))
                     (let ((_hd157870157907_ (##car _e157869157904_))
                           (_tl157871157909_ (##cdr _e157869157904_)))
                       (let ((_src-phi157912_ _hd157870157907_))
                         (if (gx#stx-pair? _tl157871157909_)
                             (let ((_e157872157914_
                                    (gx#syntax-e _tl157871157909_)))
                               (let ((_hd157873157917_ (##car _e157872157914_))
                                     (_tl157874157919_
                                      (##cdr _e157872157914_)))
                                 (let ((_src-name157922_ _hd157873157917_))
                                   (if (gx#stx-null? _tl157874157919_)
                                       (if (and (gx#stx-fixnum?
                                                 _src-phi157912_)
                                                (gx#identifier?
                                                 _src-name157922_)
                                                (gx#stx-fixnum? _phi157892_)
                                                (gx#identifier? _name157902_))
                                           (let ((_src-phi157924_
                                                  (gx#stx-e _src-phi157912_))
                                                 (_src-name157925_
                                                  (gx#core-identifier-key
                                                   _src-name157922_))
                                                 (_phi157926_
                                                  (gx#stx-e _phi157892_))
                                                 (_name157927_
                                                  (gx#core-identifier-key
                                                   _name157902_)))
                                             (let ((_$e157929_
                                                    (hash-get
                                                     _exports157853_
                                                     (cons _src-phi157924_
                                                           _src-name157925_))))
                                               (if _$e157929_
                                                   ((lambda (_out157932_)
                                                      (cons (gx#core-module-export->import__%
                                                             _out157932_
                                                             _name157927_
                                                             (fx- _phi157926_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _src-phi157924_))
                    _r157859_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _$e157929_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; no matching export"
                                                    _stx157728_
                                                    _hd157803_))))
                                           (_E157862157880_))
                                       (_E157862157880_)))))
                             (_E157862157880_)))))
                   (_E157862157880_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E157862157880_)))))
                                       (_E157862157880_)))))
                           (_E157861157934_)))
                       _r157806_
                       _specs157854_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E157816157828_)))))
                                          (_E157816157828_))))
                                  (_E157816157828_))))
                           (_E157808157960_
                            (lambda ()
                              (if (gx#stx-pair? _e157807157824_)
                                  (let ((_e157810157942_
                                         (gx#syntax-e _e157807157824_)))
                                    (let ((_hd157811157945_
                                           (##car _e157810157942_))
                                          (_tl157812157947_
                                           (##cdr _e157810157942_)))
                                      (if (gx#stx-pair? _tl157812157947_)
                                          (let ((_e157813157950_
                                                 (gx#syntax-e
                                                  _tl157812157947_)))
                                            (let ((_hd157814157953_
                                                   (##car _e157813157950_))
                                                  (_tl157815157955_
                                                   (##cdr _e157813157950_)))
                                              (let ((_path157958_
                                                     _hd157814157953_))
                                                (if (gx#stx-null?
                                                     _tl157815157955_)
                                                    (if '#t
                                                        (_K157804_
                                                         _rest157805_
                                                         (cons (_import-spec-source157736_
                                                                _path157958_)
                                                               _r157806_))
                                                        (_E157809157938_))
                                                    (_E157809157938_)))))
                                          (_E157809157938_))))
                                  (_E157809157938_)))))
                      (_E157808157960_))))
                 (_import-spec-source157736_
                  (lambda (_spath157801_)
                    (gx#core-import-nested-module _spath157801_ _stx157728_)))
                 (_import!157737_
                  (lambda (_rbody157750_)
                    (letrec* ((_current-ctx157752_
                               (gx#current-expander-context))
                              (_deps157753_ (make-hash-table-eq))
                              (_bind!157754_
                               (lambda (_hd157799_)
                                 (gx#core-bind-import!__1
                                  _hd157799_
                                  _current-ctx157752_))))
                      (let _lp157756_ ((_rest157758_ _rbody157750_)
                                       (_body157759_ '()))
                        (let* ((_rest157760157768_ _rest157758_)
                               (_else157762157778_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _current-ctx157752_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _current-ctx157752_
                                       (foldl1 cons
                                               (##unchecked-structure-ref
                                                _current-ctx157752_
                                                '8
                                                gx#module-context::t
                                                '#f)
                                               _body157759_)
                                       '8
                                       gx#module-context::t
                                       '#f)
                                      '#!void)
                                  (hash-for-each
                                   (lambda (_ctx157776_ _g164673_)
                                     (gx#eval-module _ctx157776_))
                                   _deps157753_)
                                  _body157759_))
                               (_K157764157787_
                                (lambda (_rest157781_ _hd157782_)
                                  (if (##structure-direct-instance-of?
                                       _hd157782_
                                       'gx#module-import::t)
                                      (begin
                                        (_bind!157754_ _hd157782_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _hd157782_
                                                   '3
                                                   gx#module-import::t
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _hd157782_
                                                            '1
                                                            gx#module-import::t
                                                            '#f)
                                                           '3
                                                           gx#module-export::t
                                                           '#f)))
                                            (table-set!
                                             _deps157753_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _hd157782_
                                               '1
                                               gx#module-import::t
                                               '#f)
                                              '1
                                              gx#module-export::t
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _hd157782_
                                           'gx#import-set::t)
                                          (begin
                                            (for-each
                                             _bind!157754_
                                             (##unchecked-structure-ref
                                              _hd157782_
                                              '3
                                              gx#import-set::t
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _hd157782_
                                                  '2
                                                  gx#import-set::t
                                                  '#f))
                                                (table-set!
                                                 _deps157753_
                                                 (##unchecked-structure-ref
                                                  _hd157782_
                                                  '1
                                                  gx#import-set::t
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_$e157784_
                                                 (##structure-instance-of?
                                                  _hd157782_
                                                  'gx#module-context::t)))
                                            (if _$e157784_
                                                _$e157784_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _stx157728_
                                                 _hd157782_)))))
                                  (_lp157756_
                                   _rest157781_
                                   (cons _hd157782_ _body157759_)))))
                          (if (##pair? _rest157760157768_)
                              (let ((_hd157765157790_
                                     (##car _rest157760157768_))
                                    (_tl157766157792_
                                     (##cdr _rest157760157768_)))
                                (let* ((_hd157795_ _hd157765157790_)
                                       (_rest157797_ _tl157766157792_))
                                  (_K157764157787_ _rest157797_ _hd157795_)))
                              (_else157762157778_)))))))
                 (_expanded-import?157738_
                  (lambda (_e157742_)
                    (let ((_$e157744_
                           (##structure-direct-instance-of?
                            _e157742_
                            'gx#import-set::t)))
                      (if _$e157744_
                          _$e157744_
                          (let ((_$e157747_
                                 (##structure-direct-instance-of?
                                  _e157742_
                                  'gx#module-import::t)))
                            (if _$e157747_
                                _$e157747_
                                (##structure-instance-of?
                                 _e157742_
                                 'gx#module-context::t))))))))
          (let ((_rbody157740_
                 (gx#core-expand-import/export
                  _stx157728_
                  _expanded-import?157738_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _expand1157731_)))
            (if _internal-expand?157729_
                (reverse _rbody157740_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_import!157737_ _rbody157740_))
                 (gx#stx-source _stx157728_)))))))
    (define gx#core-expand-import%__0
      (lambda (_stx158054_)
        (let ((_internal-expand?158056_ '#f))
          (gx#core-expand-import%__% _stx158054_ _internal-expand?158056_))))
    (define gx#core-expand-import%
      (lambda _g164675_
        (let ((_g164674_ (##length _g164675_)))
          (cond ((##fx= _g164674_ 1)
                 (apply (lambda (_stx158054_)
                          (gx#core-expand-import%__0 _stx158054_))
                        _g164675_))
                ((##fx= _g164674_ 2)
                 (apply (lambda (_stx158058_ _internal-expand?158059_)
                          (gx#core-expand-import%__%
                           _stx158058_
                           _internal-expand?158059_))
                        _g164675_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g164675_))))))
    (define gx#core-import-nested-module
      (lambda (_spath157655_ _where157656_)
        (let* ((_e157657157664_ _spath157655_)
               (_E157659157668_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e157657157664_)))
               (_E157658157723_
                (lambda ()
                  (if (gx#stx-pair? _e157657157664_)
                      (let ((_e157660157672_ (gx#syntax-e _e157657157664_)))
                        (let ((_hd157661157675_ (##car _e157660157672_))
                              (_tl157662157677_ (##cdr _e157660157672_)))
                          (let* ((_origin157680_ _hd157661157675_)
                                 (_sub157682_ _tl157662157677_))
                            (if '#t
                                (let ((_origin-ctx157684_
                                       (if (gx#stx-false? _origin157680_)
                                           (gx#current-expander-context)
                                           (gx#import-module__0
                                            _origin157680_))))
                                  (let _lp157686_ ((_rest157688_ _sub157682_)
                                                   (_ctx157689_
                                                    _origin-ctx157684_))
                                    (let* ((_e157690157697_ _rest157688_)
                                           (_E157692157701_
                                            (lambda () _ctx157689_))
                                           (_E157691157719_
                                            (lambda ()
                                              (if (gx#stx-pair?
                                                   _e157690157697_)
                                                  (let ((_e157693157705_
                                                         (gx#syntax-e
                                                          _e157690157697_)))
                                                    (let ((_hd157694157708_
                                                           (##car _e157693157705_))
                                                          (_tl157695157710_
                                                           (##cdr _e157693157705_)))
                                                      (let* ((_id157713_
                                                              _hd157694157708_)
                                                             (_rest157715_
                                                              _tl157695157710_))
                                                        (if '#t
                                                            (let ((_bind157717_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#resolve-identifier__%
                            _id157713_
                            '0
                            _ctx157689_)))
                      (if (and (##structure-direct-instance-of?
                                _bind157717_
                                'gx#syntax-binding::t)
                               (##structure-instance-of?
                                (##unchecked-structure-ref
                                 _bind157717_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                'gx#module-context::t))
                          '#!void
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; not bound as module"
                           _where157656_
                           _spath157655_
                           _id157713_))
                      (_lp157686_
                       _rest157715_
                       (##unchecked-structure-ref
                        _bind157717_
                        '4
                        gx#syntax-binding::t
                        '#f)))
                    (_E157692157701_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E157692157701_)))))
                                      (_E157691157719_))))
                                (_E157659157668_)))))
                      (_E157659157668_)))))
          (_E157658157723_))))
    (define gx#core-expand-import-source
      (lambda (_hd157653_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _hd157653_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_stx157161_ _internal-expand?157162_)
        (letrec* ((_make-export__164604164605_
                   (lambda (_bind157601_ _phi157602_ _ctx157603_ _name157604_)
                     (let* ((_key157606_
                             (##unchecked-structure-ref
                              _bind157601_
                              '2
                              gx#binding::t
                              '#f))
                            (_export-key157608_
                             (if _name157604_
                                 (gx#core-identifier-key _name157604_)
                                 _key157606_)))
                       (##structure
                        gx#module-export::t
                        _ctx157603_
                        _key157606_
                        _phi157602_
                        _export-key157608_
                        (let ((_$e157611_
                               (##structure-instance-of?
                                _bind157601_
                                'gx#extern-binding::t)))
                          (if _$e157611_
                              _$e157611_
                              (##structure-direct-instance-of?
                               _bind157601_
                               'gx#import-binding::t)))))))
                  (_make-export__0__164606164609_
                   (lambda (_bind157617_)
                     (let* ((_phi157619_ (gx#current-export-expander-phi))
                            (_ctx157621_ (gx#current-expander-context))
                            (_name157623_ '#f))
                       (_make-export__164604164605_
                        _bind157617_
                        _phi157619_
                        _ctx157621_
                        _name157623_))))
                  (_make-export__1__164607164610_
                   (lambda (_bind157625_ _phi157626_)
                     (let* ((_ctx157628_ (gx#current-expander-context))
                            (_name157630_ '#f))
                       (_make-export__164604164605_
                        _bind157625_
                        _phi157626_
                        _ctx157628_
                        _name157630_))))
                  (_make-export__2__164608164611_
                   (lambda (_bind157632_ _phi157633_ _ctx157634_)
                     (let ((_name157636_ '#f))
                       (_make-export__164604164605_
                        _bind157632_
                        _phi157633_
                        _ctx157634_
                        _name157636_))))
                  (_make-export157164_
                   (lambda _g164677_
                     (let ((_g164676_ (##length _g164677_)))
                       (cond ((##fx= _g164676_ 1)
                              (apply (lambda (_bind157617_)
                                       (_make-export__0__164606164609_
                                        _bind157617_))
                                     _g164677_))
                             ((##fx= _g164676_ 2)
                              (apply (lambda (_bind157625_ _phi157626_)
                                       (_make-export__1__164607164610_
                                        _bind157625_
                                        _phi157626_))
                                     _g164677_))
                             ((##fx= _g164676_ 3)
                              (apply (lambda (_bind157632_
                                              _phi157633_
                                              _ctx157634_)
                                       (_make-export__2__164608164611_
                                        _bind157632_
                                        _phi157633_
                                        _ctx157634_))
                                     _g164677_))
                             ((##fx= _g164676_ 4)
                              (apply (lambda (_bind157638_
                                              _phi157639_
                                              _ctx157640_
                                              _name157641_)
                                       (_make-export__164604164605_
                                        _bind157638_
                                        _phi157639_
                                        _ctx157640_
                                        _name157641_))
                                     _g164677_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g164677_))))))
                  (_expand1157165_
                   (lambda (_hd157314_ _K157315_ _rest157316_ _r157317_)
                     (let* ((_e157318157350_ _hd157314_)
                            (_E157345157354_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _stx157161_
                                _hd157314_)))
                            (_E157335157433_
                             (lambda ()
                               (if (gx#stx-pair? _e157318157350_)
                                   (let ((_e157346157358_
                                          (gx#syntax-e _e157318157350_)))
                                     (let ((_hd157347157361_
                                            (##car _e157346157358_))
                                           (_tl157348157363_
                                            (##cdr _e157346157358_)))
                                       (if (eq? (gx#stx-e _hd157347157361_)
                                                'import:)
                                           (let ((_in157366_ _tl157348157363_))
                                             (if (gx#stx-list? _in157366_)
                                                 (let _lp157368_ ((_in-rest157370_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _in157366_)
                          (_r157371_ _r157317_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_e157372157379_
                                                           _in-rest157370_)
                                                          (_E157374157383_
                                                           (lambda ()
                                                             (_K157315_
                                                              _rest157316_
                                                              _r157371_)))
                                                          (_E157373157429_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _e157372157379_)
                         (let ((_e157375157387_ (gx#syntax-e _e157372157379_)))
                           (let ((_hd157376157390_ (##car _e157375157387_))
                                 (_tl157377157392_ (##cdr _e157375157387_)))
                             (let* ((_hd157395_ _hd157376157390_)
                                    (_in-rest157397_ _tl157377157392_))
                               (if '#t
                                   (let ((_src157427_
                                          (if (gx#core-bound-module?
                                               _hd157395_)
                                              (gx#syntax-local-e__0 _hd157395_)
                                              (if (gx#core-library-module-path?
                                                   _hd157395_)
                                                  (gx#import-module__0
                                                   (gx#core-resolve-library-module-path
                                                    _hd157395_))
                                                  (if (gx#core-library-relative-module-path?
                                                       _hd157395_)
                                                      (gx#import-module__0
                                                       (gx#core-resolve-library-relative-module-path
                                                        _hd157395_))
                                                      (if (gx#stx-string?
                                                           _hd157395_)
                                                          (gx#import-module__0
                                                           (gx#core-resolve-module-path__%
                                                            _hd157395_
                                                            (gx#stx-source
                                                             _stx157161_)))
                                                          (let* ((_e157398157405_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd157395_)
                         (_E157400157409_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; illegal re-export"
                             _stx157161_
                             _hd157395_)))
                         (_E157399157423_
                          (lambda ()
                            (if (gx#stx-pair? _e157398157405_)
                                (let ((_e157401157413_
                                       (gx#syntax-e _e157398157405_)))
                                  (let ((_hd157402157416_
                                         (##car _e157401157413_))
                                        (_tl157403157418_
                                         (##cdr _e157401157413_)))
                                    (if (eq? (gx#stx-e _hd157402157416_) 'in:)
                                        (let ((_spath157421_ _tl157403157418_))
                                          (if '#t
                                              (gx#core-import-nested-module
                                               _spath157421_
                                               _stx157161_)
                                              (_E157400157409_)))
                                        (_E157400157409_))))
                                (_E157400157409_)))))
                    (_E157399157423_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_lp157368_
                                      _in-rest157397_
                                      (_export-imports157166_
                                       _src157427_
                                       _r157371_)))
                                   (_E157374157383_)))))
                         (_E157374157383_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E157373157429_)))
                                                 (_E157345157354_)))
                                           (_E157345157354_))))
                                   (_E157345157354_))))
                            (_E157322157472_
                             (lambda ()
                               (if (gx#stx-pair? _e157318157350_)
                                   (let ((_e157336157437_
                                          (gx#syntax-e _e157318157350_)))
                                     (let ((_hd157337157440_
                                            (##car _e157336157437_))
                                           (_tl157338157442_
                                            (##cdr _e157336157437_)))
                                       (if (eq? (gx#stx-e _hd157337157440_)
                                                'rename:)
                                           (if (gx#stx-pair? _tl157338157442_)
                                               (let ((_e157339157445_
                                                      (gx#syntax-e
                                                       _tl157338157442_)))
                                                 (let ((_hd157340157448_
                                                        (##car _e157339157445_))
                                                       (_tl157341157450_
                                                        (##cdr _e157339157445_)))
                                                   (let ((_id157453_
                                                          _hd157340157448_))
                                                     (if (gx#stx-pair?
                                                          _tl157341157450_)
                                                         (let ((_e157342157455_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl157341157450_)))
                   (let ((_hd157343157458_ (##car _e157342157455_))
                         (_tl157344157460_ (##cdr _e157342157455_)))
                     (let ((_name157463_ _hd157343157458_))
                       (if (gx#stx-null? _tl157344157460_)
                           (if '#t
                               (let* ((_phi157465_
                                       (gx#current-export-expander-phi))
                                      (_$e157467_
                                       (gx#core-resolve-identifier__1
                                        _id157453_
                                        _phi157465_)))
                                 (if _$e157467_
                                     ((lambda (_bind157470_)
                                        (_K157315_
                                         _rest157316_
                                         (cons (_make-export__164604164605_
                                                _bind157470_
                                                _phi157465_
                                                (gx#current-expander-context)
                                                _name157463_)
                                               _r157317_)))
                                      _$e157467_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Reference to unbound identifier"
                                      _stx157161_
                                      _hd157314_
                                      _id157453_)))
                               (_E157335157433_))
                           (_E157335157433_)))))
                 (_E157335157433_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E157335157433_))
                                           (_E157335157433_))))
                                   (_E157335157433_))))
                            (_E157321157521_
                             (lambda ()
                               (if (gx#stx-pair? _e157318157350_)
                                   (let ((_e157323157476_
                                          (gx#syntax-e _e157318157350_)))
                                     (let ((_hd157324157479_
                                            (##car _e157323157476_))
                                           (_tl157325157481_
                                            (##cdr _e157323157476_)))
                                       (if (eq? (gx#stx-e _hd157324157479_)
                                                'spec:)
                                           (if (gx#stx-pair? _tl157325157481_)
                                               (let ((_e157326157484_
                                                      (gx#syntax-e
                                                       _tl157325157481_)))
                                                 (let ((_hd157327157487_
                                                        (##car _e157326157484_))
                                                       (_tl157328157489_
                                                        (##cdr _e157326157484_)))
                                                   (let ((_phi157492_
                                                          _hd157327157487_))
                                                     (if (gx#stx-pair?
                                                          _tl157328157489_)
                                                         (let ((_e157329157494_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl157328157489_)))
                   (let ((_hd157330157497_ (##car _e157329157494_))
                         (_tl157331157499_ (##cdr _e157329157494_)))
                     (let ((_id157502_ _hd157330157497_))
                       (if (gx#stx-pair? _tl157331157499_)
                           (let ((_e157332157504_
                                  (gx#syntax-e _tl157331157499_)))
                             (let ((_hd157333157507_ (##car _e157332157504_))
                                   (_tl157334157509_ (##cdr _e157332157504_)))
                               (let ((_name157512_ _hd157333157507_))
                                 (if (gx#stx-null? _tl157334157509_)
                                     (if (and (gx#stx-fixnum? _phi157492_)
                                              (gx#identifier? _id157502_)
                                              (gx#identifier? _name157512_))
                                         (let* ((_phi157514_
                                                 (gx#stx-e _phi157492_))
                                                (_$e157516_
                                                 (gx#core-resolve-identifier__1
                                                  _id157502_
                                                  _phi157514_)))
                                           (if _$e157516_
                                               ((lambda (_bind157519_)
                                                  (_K157315_
                                                   _rest157316_
                                                   (cons (_make-export__164604164605_
                                                          _bind157519_
                                                          _phi157514_
                                                          (gx#current-expander-context)
                                                          _name157512_)
                                                         _r157317_)))
                                                _$e157516_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _stx157161_
                                                _hd157314_
                                                _id157502_)))
                                         (_E157322157472_))
                                     (_E157322157472_)))))
                           (_E157322157472_)))))
                 (_E157322157472_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E157322157472_))
                                           (_E157322157472_))))
                                   (_E157322157472_))))
                            (_E157320157532_
                             (lambda ()
                               (let ((_id157525_ _e157318157350_))
                                 (if (gx#identifier? _id157525_)
                                     (let ((_$e157527_
                                            (gx#core-resolve-identifier__1
                                             _id157525_
                                             (gx#current-export-expander-phi))))
                                       (if _$e157527_
                                           ((lambda (_bind157530_)
                                              (_K157315_
                                               _rest157316_
                                               (cons (_make-export__0__164606164609_
                                                      _bind157530_)
                                                     _r157317_)))
                                            _$e157527_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _stx157161_
                                            _hd157314_)))
                                     (_E157321157521_)))))
                            (_E157319157596_
                             (lambda ()
                               (if (eq? (gx#stx-e _e157318157350_) '#t)
                                   (if '#t
                                       (let* ((_current-ctx157536_
                                               (gx#current-expander-context))
                                              (_current-phi157538_
                                               (gx#current-export-expander-phi))
                                              (_phi-ctx157540_
                                               (gx#core-context-shift
                                                _current-ctx157536_
                                                _current-phi157538_))
                                              (_phi-bind157542_
                                               (hash->list
                                                (##unchecked-structure-ref
                                                 _phi-ctx157540_
                                                 '2
                                                 gx#expander-context::t
                                                 '#f))))
                                         (let _lp157545_ ((_bind-rest157547_
                                                           _phi-bind157542_)
                                                          (_set157548_ '()))
                                           (let* ((_bind-rest157549157559_
                                                   _bind-rest157547_)
                                                  (_else157551157567_
                                                   (lambda ()
                                                     (_K157315_
                                                      _rest157316_
                                                      (cons (##structure
                                                             gx#export-set::t
                                                             '#f
                                                             _current-phi157538_
                                                             _set157548_)
                                                            _r157317_))))
                                                  (_K157553157577_
                                                   (lambda (_bind-rest157570_
                                                            _bind157571_
                                                            _key157572_)
                                                     (if (or (##structure-direct-instance-of?
                                                              _bind157571_
                                                              'gx#import-binding::t)
                                                             (gx#private-feature-binding?
                                                              _bind157571_))
                                                         (_lp157545_
                                                          _bind-rest157570_
                                                          _set157548_)
                                                         (_lp157545_
                                                          _bind-rest157570_
                                                          (cons (_make-export__2__164608164611_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind157571_
                         _current-phi157538_
                         _current-ctx157536_)
                        _set157548_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _bind-rest157549157559_)
                                                 (let ((_hd157554157580_
                                                        (##car _bind-rest157549157559_))
                                                       (_tl157555157582_
                                                        (##cdr _bind-rest157549157559_)))
                                                   (if (##pair? _hd157554157580_)
                                                       (let ((_hd157556157585_
                                                              (##car _hd157554157580_))
                                                             (_tl157557157587_
                                                              (##cdr _hd157554157580_)))
                                                         (let* ((_key157590_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd157556157585_)
                        (_bind157592_ _tl157557157587_)
                        (_bind-rest157594_ _tl157555157582_))
                   (_K157553157577_
                    _bind-rest157594_
                    _bind157592_
                    _key157590_)))
               (_else157551157567_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_else157551157567_)))))
                                       (_E157320157532_))
                                   (_E157320157532_)))))
                       (_E157319157596_))))
                  (_export-imports157166_
                   (lambda (_src157190_ _r157191_)
                     (letrec* ((_current-ctx157193_
                                (gx#current-expander-context))
                               (_current-phi157194_
                                (gx#current-export-expander-phi))
                               (_import->export157195_
                                (lambda (_in157276_)
                                  (let* ((_in157277157285_ _in157276_)
                                         (_E157279157289_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _in157277157285_)))
                                         (_K157280157296_
                                          (lambda (_phi157292_
                                                   _key157293_
                                                   _out157294_)
                                            (##structure
                                             gx#module-export::t
                                             _current-ctx157193_
                                             _key157293_
                                             _phi157292_
                                             _key157293_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _in157277157285_
                                         'gx#module-import::t)
                                        (let* ((_e157281157299_
                                                (##unchecked-structure-ref
                                                 _in157277157285_
                                                 '1
                                                 gx#module-import::t
                                                 '#f))
                                               (_out157302_ _e157281157299_)
                                               (_e157282157304_
                                                (##unchecked-structure-ref
                                                 _in157277157285_
                                                 '2
                                                 gx#module-import::t
                                                 '#f))
                                               (_key157307_ _e157282157304_)
                                               (_e157283157309_
                                                (##unchecked-structure-ref
                                                 _in157277157285_
                                                 '3
                                                 gx#module-import::t
                                                 '#f))
                                               (_phi157312_ _e157283157309_))
                                          (_K157280157296_
                                           _phi157312_
                                           _key157307_
                                           _out157302_))
                                        (_E157279157289_)))))
                               (_fold-e157196_
                                (lambda (_in157198_ _r157199_)
                                  (let* ((_in157200157214_ _in157198_)
                                         (_else157203157222_
                                          (lambda () _r157199_)))
                                    (let ((_K157209157258_
                                           (lambda (_phi157254_
                                                    _key157255_
                                                    _out157256_)
                                             (if (and (fx= _phi157254_
                                                           _current-phi157194_)
                                                      (eq? _src157190_
                                                           (##unchecked-structure-ref
                                                            _out157256_
                                                            '1
                                                            gx#module-export::t
                                                            '#f)))
                                                 (cons (_import->export157195_
                                                        _in157198_)
                                                       _r157199_)
                                                 _r157199_)))
                                          (_K157205157233_
                                           (lambda (_imports157226_
                                                    _phi157227_
                                                    _ctx157228_)
                                             (if (and (fx= _phi157227_
                                                           _current-phi157194_)
                                                      (eq? _src157190_
                                                           _ctx157228_))
                                                 (foldl1 (lambda (_in157230_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r157231_)
                   (cons (_import->export157195_ _in157230_) _r157231_))
                 _r157199_
                 _imports157226_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _r157199_))))
                                      (let ((_try-match157202157251_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _in157200157214_
                                                    'gx#import-set::t)
                                                   (let* ((_e157206157236_
                                                           (##unchecked-structure-ref
                                                            _in157200157214_
                                                            '1
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e157207157241_
                                                           (##unchecked-structure-ref
                                                            _in157200157214_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e157208157246_
                                                           (##unchecked-structure-ref
                                                            _in157200157214_
                                                            '3
                                                            gx#import-set::t
                                                            '#f)))
                                                     (let ((_ctx157239_
                                                            _e157206157236_)
                                                           (_phi157244_
                                                            _e157207157241_)
                                                           (_imports157249_
                                                            _e157208157246_))
                                                       (_K157205157233_
                                                        _imports157249_
                                                        _phi157244_
                                                        _ctx157239_)))
                                                   (_else157203157222_)))))
                                        (if (##structure-direct-instance-of?
                                             _in157200157214_
                                             'gx#module-import::t)
                                            (let* ((_e157210157261_
                                                    (##unchecked-structure-ref
                                                     _in157200157214_
                                                     '1
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e157211157266_
                                                    (##unchecked-structure-ref
                                                     _in157200157214_
                                                     '2
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e157212157271_
                                                    (##unchecked-structure-ref
                                                     _in157200157214_
                                                     '3
                                                     gx#module-import::t
                                                     '#f)))
                                              (let ((_out157264_
                                                     _e157210157261_)
                                                    (_key157269_
                                                     _e157211157266_)
                                                    (_phi157274_
                                                     _e157212157271_))
                                                (_K157209157258_
                                                 _phi157274_
                                                 _key157269_
                                                 _out157264_)))
                                            (_try-match157202157251_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _src157190_
                              _current-phi157194_
                              (foldl1 _fold-e157196_
                                      '()
                                      (##unchecked-structure-ref
                                       _current-ctx157193_
                                       '8
                                       gx#module-context::t
                                       '#f)))
                             _r157191_))))
                  (_export!157167_
                   (lambda (_rbody157180_)
                     (letrec* ((_current-ctx157182_
                                (gx#current-expander-context))
                               (_fold-e157183_
                                (lambda (_out157187_ _r157188_)
                                  (if (##structure-direct-instance-of?
                                       _out157187_
                                       'gx#module-export::t)
                                      (cons _out157187_ _r157188_)
                                      (if (##structure-direct-instance-of?
                                           _out157187_
                                           'gx#export-set::t)
                                          (foldl1 cons
                                                  _r157188_
                                                  (##unchecked-structure-ref
                                                   _out157187_
                                                   '3
                                                   gx#export-set::t
                                                   '#f))
                                          _r157188_)))))
                       (let ((_body157185_ (reverse _rbody157180_)))
                         (##unchecked-structure-set!
                          _current-ctx157182_
                          (foldl1 _fold-e157183_
                                  (##unchecked-structure-ref
                                   _current-ctx157182_
                                   '9
                                   gx#module-context::t
                                   '#f)
                                  _body157185_)
                          '9
                          gx#module-context::t
                          '#f)
                         _body157185_))))
                  (_expanded-export?157168_
                   (lambda (_e157175_)
                     (let ((_$e157177_
                            (##structure-direct-instance-of?
                             _e157175_
                             'gx#module-export::t)))
                       (if _$e157177_
                           _$e157177_
                           (##structure-direct-instance-of?
                            _e157175_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _internal-expand?157162_)
              (let ((_rbody157173_
                     (gx#core-expand-import/export
                      _stx157161_
                      _expanded-export?157168_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _expand1157165_)))
                (if _internal-expand?157162_
                    (reverse _rbody157173_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons '%#export (_export!157167_ _rbody157173_))
                     (gx#stx-source _stx157161_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _stx157161_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _stx157161_))))))
    (define gx#core-expand-export%__0
      (lambda (_stx157646_)
        (let ((_internal-expand?157648_ '#f))
          (gx#core-expand-export%__% _stx157646_ _internal-expand?157648_))))
    (define gx#core-expand-export%
      (lambda _g164679_
        (let ((_g164678_ (##length _g164679_)))
          (cond ((##fx= _g164678_ 1)
                 (apply (lambda (_stx157646_)
                          (gx#core-expand-export%__0 _stx157646_))
                        _g164679_))
                ((##fx= _g164678_ 2)
                 (apply (lambda (_stx157650_ _internal-expand?157651_)
                          (gx#core-expand-export%__%
                           _stx157650_
                           _internal-expand?157651_))
                        _g164679_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g164679_))))))
    (define gx#core-expand-export-source
      (lambda (_hd157158_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _hd157158_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_stx157128_)
        (let* ((_e157129157136_ _stx157128_)
               (_E157131157140_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e157129157136_)))
               (_E157130157154_
                (lambda ()
                  (if (gx#stx-pair? _e157129157136_)
                      (let ((_e157132157144_ (gx#syntax-e _e157129157136_)))
                        (let ((_hd157133157147_ (##car _e157132157144_))
                              (_tl157134157149_ (##cdr _e157132157144_)))
                          (let ((_body157152_ _tl157134157149_))
                            (if (gx#identifier-list? _body157152_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _body157152_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _body157152_))
                                   (gx#stx-source _stx157128_)))
                                (_E157131157140_)))))
                      (_E157131157140_)))))
          (_E157130157154_))))
    (define gx#core-bind-feature!__%
      (lambda (_id157094_ _private?157095_ _phi157096_ _ctx157097_)
        (gx#core-bind-syntax!__%
         _id157094_
         ((if _private?157095_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _id157094_))
         _private?157095_
         _phi157096_
         _ctx157097_)))
    (define gx#core-bind-feature!__0
      (lambda (_id157102_)
        (let* ((_private?157104_ '#f)
               (_phi157106_ (gx#current-expander-phi))
               (_ctx157108_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id157102_
           _private?157104_
           _phi157106_
           _ctx157108_))))
    (define gx#core-bind-feature!__1
      (lambda (_id157110_ _private?157111_)
        (let* ((_phi157113_ (gx#current-expander-phi))
               (_ctx157115_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id157110_
           _private?157111_
           _phi157113_
           _ctx157115_))))
    (define gx#core-bind-feature!__2
      (lambda (_id157117_ _private?157118_ _phi157119_)
        (let ((_ctx157121_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id157117_
           _private?157118_
           _phi157119_
           _ctx157121_))))
    (define gx#core-bind-feature!
      (lambda _g164681_
        (let ((_g164680_ (##length _g164681_)))
          (cond ((##fx= _g164680_ 1)
                 (apply (lambda (_id157102_)
                          (gx#core-bind-feature!__0 _id157102_))
                        _g164681_))
                ((##fx= _g164680_ 2)
                 (apply (lambda (_id157110_ _private?157111_)
                          (gx#core-bind-feature!__1
                           _id157110_
                           _private?157111_))
                        _g164681_))
                ((##fx= _g164680_ 3)
                 (apply (lambda (_id157117_ _private?157118_ _phi157119_)
                          (gx#core-bind-feature!__2
                           _id157117_
                           _private?157118_
                           _phi157119_))
                        _g164681_))
                ((##fx= _g164680_ 4)
                 (apply (lambda (_id157123_
                                 _private?157124_
                                 _phi157125_
                                 _ctx157126_)
                          (gx#core-bind-feature!__%
                           _id157123_
                           _private?157124_
                           _phi157125_
                           _ctx157126_))
                        _g164681_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g164681_))))))))
