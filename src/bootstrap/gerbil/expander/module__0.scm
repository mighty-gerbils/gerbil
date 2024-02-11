(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1707618265)
  (begin
    (declare (not safe))
    (define gx#module-import::t
      (make-struct-type
       'gx#module-import::t
       'module-import
       '#f
       '(source name phi weak?)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))
       '#f))
    (define gx#module-import? (make-struct-predicate gx#module-import::t))
    (define gx#make-module-import
      (lambda _$args160955_
        (apply make-struct-instance gx#module-import::t _$args160955_)))
    (define gx#module-import-source
      (make-struct-slot-accessor gx#module-import::t 'source))
    (define gx#module-import-name
      (make-struct-slot-accessor gx#module-import::t 'name))
    (define gx#module-import-phi
      (make-struct-slot-accessor gx#module-import::t 'phi))
    (define gx#module-import-weak?
      (make-struct-slot-accessor gx#module-import::t 'weak?))
    (define gx#module-import-source-set!
      (make-struct-slot-mutator gx#module-import::t 'source))
    (define gx#module-import-name-set!
      (make-struct-slot-mutator gx#module-import::t 'name))
    (define gx#module-import-phi-set!
      (make-struct-slot-mutator gx#module-import::t 'phi))
    (define gx#module-import-weak?-set!
      (make-struct-slot-mutator gx#module-import::t 'weak?))
    (define gx#&module-import-source
      (make-struct-slot-unchecked-accessor gx#module-import::t 'source))
    (define gx#&module-import-name
      (make-struct-slot-unchecked-accessor gx#module-import::t 'name))
    (define gx#&module-import-phi
      (make-struct-slot-unchecked-accessor gx#module-import::t 'phi))
    (define gx#&module-import-weak?
      (make-struct-slot-unchecked-accessor gx#module-import::t 'weak?))
    (define gx#&module-import-source-set!
      (make-struct-slot-unchecked-mutator gx#module-import::t 'source))
    (define gx#&module-import-name-set!
      (make-struct-slot-unchecked-mutator gx#module-import::t 'name))
    (define gx#&module-import-phi-set!
      (make-struct-slot-unchecked-mutator gx#module-import::t 'phi))
    (define gx#&module-import-weak?-set!
      (make-struct-slot-unchecked-mutator gx#module-import::t 'weak?))
    (define gx#module-export::t
      (make-struct-type
       'gx#module-export::t
       'module-export
       '#f
       '(context key phi name weak?)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))
       '#f))
    (define gx#module-export? (make-struct-predicate gx#module-export::t))
    (define gx#make-module-export
      (lambda _$args160952_
        (apply make-struct-instance gx#module-export::t _$args160952_)))
    (define gx#module-export-context
      (make-struct-slot-accessor gx#module-export::t 'context))
    (define gx#module-export-key
      (make-struct-slot-accessor gx#module-export::t 'key))
    (define gx#module-export-phi
      (make-struct-slot-accessor gx#module-export::t 'phi))
    (define gx#module-export-name
      (make-struct-slot-accessor gx#module-export::t 'name))
    (define gx#module-export-weak?
      (make-struct-slot-accessor gx#module-export::t 'weak?))
    (define gx#module-export-context-set!
      (make-struct-slot-mutator gx#module-export::t 'context))
    (define gx#module-export-key-set!
      (make-struct-slot-mutator gx#module-export::t 'key))
    (define gx#module-export-phi-set!
      (make-struct-slot-mutator gx#module-export::t 'phi))
    (define gx#module-export-name-set!
      (make-struct-slot-mutator gx#module-export::t 'name))
    (define gx#module-export-weak?-set!
      (make-struct-slot-mutator gx#module-export::t 'weak?))
    (define gx#&module-export-context
      (make-struct-slot-unchecked-accessor gx#module-export::t 'context))
    (define gx#&module-export-key
      (make-struct-slot-unchecked-accessor gx#module-export::t 'key))
    (define gx#&module-export-phi
      (make-struct-slot-unchecked-accessor gx#module-export::t 'phi))
    (define gx#&module-export-name
      (make-struct-slot-unchecked-accessor gx#module-export::t 'name))
    (define gx#&module-export-weak?
      (make-struct-slot-unchecked-accessor gx#module-export::t 'weak?))
    (define gx#&module-export-context-set!
      (make-struct-slot-unchecked-mutator gx#module-export::t 'context))
    (define gx#&module-export-key-set!
      (make-struct-slot-unchecked-mutator gx#module-export::t 'key))
    (define gx#&module-export-phi-set!
      (make-struct-slot-unchecked-mutator gx#module-export::t 'phi))
    (define gx#&module-export-name-set!
      (make-struct-slot-unchecked-mutator gx#module-export::t 'name))
    (define gx#&module-export-weak?-set!
      (make-struct-slot-unchecked-mutator gx#module-export::t 'weak?))
    (define gx#import-set::t
      (make-struct-type
       'gx#import-set::t
       'import-set
       '#f
       '(source phi imports)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))
       '#f))
    (define gx#import-set? (make-struct-predicate gx#import-set::t))
    (define gx#make-import-set
      (lambda _$args160949_
        (apply make-struct-instance gx#import-set::t _$args160949_)))
    (define gx#import-set-source
      (make-struct-slot-accessor gx#import-set::t 'source))
    (define gx#import-set-phi
      (make-struct-slot-accessor gx#import-set::t 'phi))
    (define gx#import-set-imports
      (make-struct-slot-accessor gx#import-set::t 'imports))
    (define gx#import-set-source-set!
      (make-struct-slot-mutator gx#import-set::t 'source))
    (define gx#import-set-phi-set!
      (make-struct-slot-mutator gx#import-set::t 'phi))
    (define gx#import-set-imports-set!
      (make-struct-slot-mutator gx#import-set::t 'imports))
    (define gx#&import-set-source
      (make-struct-slot-unchecked-accessor gx#import-set::t 'source))
    (define gx#&import-set-phi
      (make-struct-slot-unchecked-accessor gx#import-set::t 'phi))
    (define gx#&import-set-imports
      (make-struct-slot-unchecked-accessor gx#import-set::t 'imports))
    (define gx#&import-set-source-set!
      (make-struct-slot-unchecked-mutator gx#import-set::t 'source))
    (define gx#&import-set-phi-set!
      (make-struct-slot-unchecked-mutator gx#import-set::t 'phi))
    (define gx#&import-set-imports-set!
      (make-struct-slot-unchecked-mutator gx#import-set::t 'imports))
    (define gx#export-set::t
      (make-struct-type
       'gx#export-set::t
       'export-set
       '#f
       '(source phi exports)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))
       '#f))
    (define gx#export-set? (make-struct-predicate gx#export-set::t))
    (define gx#make-export-set
      (lambda _$args160946_
        (apply make-struct-instance gx#export-set::t _$args160946_)))
    (define gx#export-set-source
      (make-struct-slot-accessor gx#export-set::t 'source))
    (define gx#export-set-phi
      (make-struct-slot-accessor gx#export-set::t 'phi))
    (define gx#export-set-exports
      (make-struct-slot-accessor gx#export-set::t 'exports))
    (define gx#export-set-source-set!
      (make-struct-slot-mutator gx#export-set::t 'source))
    (define gx#export-set-phi-set!
      (make-struct-slot-mutator gx#export-set::t 'phi))
    (define gx#export-set-exports-set!
      (make-struct-slot-mutator gx#export-set::t 'exports))
    (define gx#&export-set-source
      (make-struct-slot-unchecked-accessor gx#export-set::t 'source))
    (define gx#&export-set-phi
      (make-struct-slot-unchecked-accessor gx#export-set::t 'phi))
    (define gx#&export-set-exports
      (make-struct-slot-unchecked-accessor gx#export-set::t 'exports))
    (define gx#&export-set-source-set!
      (make-struct-slot-unchecked-mutator gx#export-set::t 'source))
    (define gx#&export-set-phi-set!
      (make-struct-slot-unchecked-mutator gx#export-set::t 'phi))
    (define gx#&export-set-exports-set!
      (make-struct-slot-unchecked-mutator gx#export-set::t 'exports))
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
      (lambda _$args160943_
        (apply make-class-instance gx#import-expander::t _$args160943_)))
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
      (lambda _$args160940_
        (apply make-class-instance gx#export-expander::t _$args160940_)))
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
      (lambda _$args160937_
        (apply make-class-instance
               gx#import-export-expander::t
               _$args160937_)))
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
      (lambda (_path160934_ _fun160935_)
        (call-with-input-file
         (cons 'path: (cons _path160934_ gx#source-file-settings))
         _fun160935_)))
    (define gx#module-context:::init!
      (lambda (_self160928_ _id160929_ _super160930_ _ns160931_ _path160932_)
        (if (##fx< '11 (##structure-length _self160928_))
            (begin
              (##unchecked-structure-set!
               _self160928_
               _id160929_
               '1
               (##structure-type _self160928_)
               '#f)
              (##unchecked-structure-set!
               _self160928_
               (make-table 'test: eq?)
               '2
               (##structure-type _self160928_)
               '#f)
              (##unchecked-structure-set!
               _self160928_
               _super160930_
               '3
               (##structure-type _self160928_)
               '#f)
              (##unchecked-structure-set!
               _self160928_
               '#f
               '4
               (##structure-type _self160928_)
               '#f)
              (##unchecked-structure-set!
               _self160928_
               '#f
               '5
               (##structure-type _self160928_)
               '#f)
              (##unchecked-structure-set!
               _self160928_
               _ns160931_
               '6
               (##structure-type _self160928_)
               '#f)
              (##unchecked-structure-set!
               _self160928_
               _path160932_
               '7
               (##structure-type _self160928_)
               '#f)
              (##unchecked-structure-set!
               _self160928_
               '()
               '8
               (##structure-type _self160928_)
               '#f)
              (##unchecked-structure-set!
               _self160928_
               '()
               '9
               (##structure-type _self160928_)
               '#f)
              (##unchecked-structure-set!
               _self160928_
               '#f
               '10
               (##structure-type _self160928_)
               '#f)
              (##unchecked-structure-set!
               _self160928_
               '#f
               '11
               (##structure-type _self160928_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self160928_
                   '11
                   (##vector-length _self160928_)))))
    (bind-method! gx#module-context::t ':init! gx#module-context:::init! '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_self160772_ _ctx160773_ _root160774_)
        (let ((_super160782_
               (let ((_$e160776_ _root160774_))
                 (if _$e160776_
                     _$e160776_
                     (let ((_$e160779_ (gx#core-context-root__0)))
                       (if _$e160779_
                           _$e160779_
                           (let ((__obj165465
                                  (##structure gx#root-context::t '#f '#f)))
                             (let ((__constructor165466
                                    (direct-method-ref
                                     gx#root-context::t
                                     ':init!)))
                               (if __constructor165466
                                   (__constructor165466 __obj165465)
                                   (error '"missing constructor method implementation"
                                          'class:
                                          gx#root-context::t
                                          'method:
                                          ':init!)))
                             __obj165465)))))))
          (if _ctx160773_
              (let ((_id160785_
                     (##structure-ref
                      _ctx160773_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_path160786_
                     (##structure-ref _ctx160773_ '7 gx#module-context::t '#f))
                    (_in160787_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _ctx160773_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_e160788_
                     (make-promise (lambda () (gx#eval-module _ctx160773_)))))
                (if (##fx< '8 (##structure-length _self160772_))
                    (begin
                      (##unchecked-structure-set!
                       _self160772_
                       _id160785_
                       '1
                       (##structure-type _self160772_)
                       '#f)
                      (##unchecked-structure-set!
                       _self160772_
                       (make-table 'test: eq? 'size: (length _in160787_))
                       '2
                       (##structure-type _self160772_)
                       '#f)
                      (##unchecked-structure-set!
                       _self160772_
                       _super160782_
                       '3
                       (##structure-type _self160772_)
                       '#f)
                      (##unchecked-structure-set!
                       _self160772_
                       '#f
                       '4
                       (##structure-type _self160772_)
                       '#f)
                      (##unchecked-structure-set!
                       _self160772_
                       '#f
                       '5
                       (##structure-type _self160772_)
                       '#f)
                      (##unchecked-structure-set!
                       _self160772_
                       _path160786_
                       '6
                       (##structure-type _self160772_)
                       '#f)
                      (##unchecked-structure-set!
                       _self160772_
                       _in160787_
                       '7
                       (##structure-type _self160772_)
                       '#f)
                      (##unchecked-structure-set!
                       _self160772_
                       _e160788_
                       '8
                       (##structure-type _self160772_)
                       '#f))
                    (error '"struct-instance-init!: too many arguments for struct"
                           _self160772_
                           '8
                           (##vector-length _self160772_)))
                (for-each
                 (lambda (_g160789160791_)
                   (gx#core-bind-weak-import!__% _g160789160791_ _self160772_))
                 _in160787_))
              (if (##fx< '8 (##structure-length _self160772_))
                  (begin
                    (##unchecked-structure-set!
                     _self160772_
                     '#f
                     '1
                     (##structure-type _self160772_)
                     '#f)
                    (##unchecked-structure-set!
                     _self160772_
                     (make-table 'test: eq?)
                     '2
                     (##structure-type _self160772_)
                     '#f)
                    (##unchecked-structure-set!
                     _self160772_
                     _super160782_
                     '3
                     (##structure-type _self160772_)
                     '#f)
                    (##unchecked-structure-set!
                     _self160772_
                     '#f
                     '4
                     (##structure-type _self160772_)
                     '#f)
                    (##unchecked-structure-set!
                     _self160772_
                     '#f
                     '5
                     (##structure-type _self160772_)
                     '#f)
                    (##unchecked-structure-set!
                     _self160772_
                     '#f
                     '6
                     (##structure-type _self160772_)
                     '#f)
                    (##unchecked-structure-set!
                     _self160772_
                     '()
                     '7
                     (##structure-type _self160772_)
                     '#f)
                    (##unchecked-structure-set!
                     _self160772_
                     '#f
                     '8
                     (##structure-type _self160772_)
                     '#f))
                  (error '"struct-instance-init!: too many arguments for struct"
                         _self160772_
                         '8
                         (##vector-length _self160772_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_self160797_ _ctx160798_)
        (let ((_root160800_ '#f))
          (gx#prelude-context:::init!__%
           _self160797_
           _ctx160798_
           _root160800_))))
    (define gx#prelude-context:::init!
      (lambda _g165472_
        (let ((_g165471_ (##length _g165472_)))
          (cond ((##fx= _g165471_ 2)
                 (apply (lambda (_self160797_ _ctx160798_)
                          (gx#prelude-context:::init!__0
                           _self160797_
                           _ctx160798_))
                        _g165472_))
                ((##fx= _g165471_ 3)
                 (apply (lambda (_self160802_ _ctx160803_ _root160804_)
                          (gx#prelude-context:::init!__%
                           _self160802_
                           _ctx160803_
                           _root160804_))
                        _g165472_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g165472_))))))
    (bind-method! gx#prelude-context::t ':init! gx#prelude-context:::init! '#f)
    (define gx#import-export-expander-init!
      (lambda (_self160646_ _e160647_)
        (if (##fx< '3 (##structure-length _self160646_))
            (begin
              (##unchecked-structure-set!
               _self160646_
               _e160647_
               '1
               (##structure-type _self160646_)
               '#f)
              (##unchecked-structure-set!
               _self160646_
               (gx#current-expander-context)
               '2
               (##structure-type _self160646_)
               '#f)
              (##unchecked-structure-set!
               _self160646_
               (fx- (gx#current-expander-phi) '1)
               '3
               (##structure-type _self160646_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self160646_
                   '3
                   (##vector-length _self160646_)))))
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
      (lambda (_g160272160275_ _g160273160277_)
        (gx#core-apply-user-expander__%
         _g160272160275_
         _g160273160277_
         'apply-import-expander)))
    (bind-method!
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_g160143160146_ _g160144160148_)
        (gx#core-apply-user-expander__%
         _g160143160146_
         _g160144160148_
         'apply-export-expander)))
    (bind-method!
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_ctx160014_)
        (let* ((_path160016_
                (##structure-ref _ctx160014_ '7 gx#module-context::t '#f))
               (_path160018_
                (if (pair? _path160016_) (last _path160016_) _path160016_)))
          (if (string? _path160018_) _path160018_ '#f))))
    (define gx#import-module__%
      (lambda (_path159990_ _reload?159991_ _eval?159992_)
        (let ((_ctx159994_
               ((gx#current-expander-module-import)
                _path159990_
                _reload?159991_)))
          (if (and _ctx159994_ _eval?159992_)
              (gx#eval-module _ctx159994_)
              '#!void)
          _ctx159994_)))
    (define gx#import-module__0
      (lambda (_path159999_)
        (let* ((_reload?160001_ '#f) (_eval?160003_ '#f))
          (gx#import-module__% _path159999_ _reload?160001_ _eval?160003_))))
    (define gx#import-module__1
      (lambda (_path160005_ _reload?160006_)
        (let ((_eval?160008_ '#f))
          (gx#import-module__% _path160005_ _reload?160006_ _eval?160008_))))
    (define gx#import-module
      (lambda _g165474_
        (let ((_g165473_ (##length _g165474_)))
          (cond ((##fx= _g165473_ 1)
                 (apply (lambda (_path159999_)
                          (gx#import-module__0 _path159999_))
                        _g165474_))
                ((##fx= _g165473_ 2)
                 (apply (lambda (_path160005_ _reload?160006_)
                          (gx#import-module__1 _path160005_ _reload?160006_))
                        _g165474_))
                ((##fx= _g165473_ 3)
                 (apply (lambda (_path160010_ _reload?160011_ _eval?160012_)
                          (gx#import-module__%
                           _path160010_
                           _reload?160011_
                           _eval?160012_))
                        _g165474_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g165474_))))))
    (define gx#eval-module
      (lambda (_mod159987_) ((gx#current-expander-module-eval) _mod159987_)))
    (define gx#core-eval-module
      (lambda (_obj159972_)
        (letrec ((_force-e159974_
                  (lambda (_getf159983_ _e159984_)
                    (call-with-parameters
                     (lambda () (force (_getf159983_ _e159984_)))
                     gx#current-expander-context
                     _e159984_
                     gx#current-expander-phi
                     '0))))
          (let _recur159976_ ((_e159978_ _obj159972_))
            (if (##structure-instance-of? _e159978_ 'gx#module-context::t)
                (begin
                  (let ((_$e159980_ (gx#core-context-prelude__% _e159978_)))
                    (if _$e159980_ (_recur159976_ _$e159980_) '#!void))
                  (_force-e159974_ gx#module-context-e _e159978_))
                (if (##structure-instance-of? _e159978_ 'gx#prelude-context::t)
                    (_force-e159974_ gx#prelude-context-e _e159978_)
                    (if (gx#stx-string? _e159978_)
                        (_recur159976_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _e159978_)))
                        (if (gx#core-library-module-path? _e159978_)
                            (_recur159976_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _e159978_)))
                            (error '"Cannot eval module" _obj159972_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_ctx159955_)
        (let _lp159957_ ((_e159959_ _ctx159955_))
          (if (or (##structure-instance-of? _e159959_ 'gx#module-context::t)
                  (##structure-instance-of? _e159959_ 'gx#local-context::t))
              (_lp159957_
               (##unchecked-structure-ref _e159959_ '3 gx#phi-context::t '#f))
              (if (##structure-instance-of? _e159959_ 'gx#prelude-context::t)
                  _e159959_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_ctx159968_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _ctx159968_))))
    (define gx#core-context-prelude
      (lambda _g165476_
        (let ((_g165475_ (##length _g165476_)))
          (cond ((##fx= _g165475_ 0)
                 (apply (lambda () (gx#core-context-prelude__0)) _g165476_))
                ((##fx= _g165475_ 1)
                 (apply (lambda (_ctx159970_)
                          (gx#core-context-prelude__% _ctx159970_))
                        _g165476_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g165476_))))))
    (define gx#core-module->prelude-context
      (lambda (_ctx159945_)
        (let* ((_ht159947_ (gx#current-expander-module-registry))
               (_$e159949_ (table-ref _ht159947_ _ctx159945_ '#f)))
          (if _$e159949_
              (values _$e159949_)
              (let ((_pre159952_
                     (let ((__obj165467
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
                       (gx#prelude-context:::init! __obj165467 _ctx159945_)
                       __obj165467)))
                (table-set! _ht159947_ _ctx159945_ _pre159952_)
                _pre159952_)))))
    (define gx#core-import-module__%
      (lambda (_rpath159826_ _reload?159827_)
        (letrec ((_import-source159829_
                  (lambda (_path159914_)
                    (if (member _path159914_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _path159914_)
                        '#!void)
                    (call-with-parameters
                     (lambda ()
                       (let ((_g165477_ (gx#core-read-module _path159914_)))
                         (begin
                           (let ((_g165478_
                                  (if (##values? _g165477_)
                                      (##vector-length _g165477_)
                                      1)))
                             (if (not (##fx= _g165478_ 4))
                                 (error "Context expects 4 values" _g165478_)))
                           (let ((_pre159917_ (##vector-ref _g165477_ 0))
                                 (_id159918_ (##vector-ref _g165477_ 1))
                                 (_ns159919_ (##vector-ref _g165477_ 2))
                                 (_body159920_ (##vector-ref _g165477_ 3)))
                             (let* ((_prelude159925_
                                     (if (##structure-instance-of?
                                          _pre159917_
                                          'gx#prelude-context::t)
                                         _pre159917_
                                         (if (##structure-instance-of?
                                              _pre159917_
                                              'gx#module-context::t)
                                             (gx#core-module->prelude-context
                                              _pre159917_)
                                             (if (string? _pre159917_)
                                                 (gx#core-module->prelude-context
                                                  (gx#core-import-module__0
                                                   _pre159917_))
                                                 (if (not _pre159917_)
                                                     (let ((_$e159922_
                                                            (gx#current-expander-module-prelude)))
                                                       (if _$e159922_
                                                           _$e159922_
                                                           (let ((__obj165468
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
                     (gx#prelude-context:::init! __obj165468 '#f)
                     __obj165468)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error '"Cannot import module; unknown prelude"
                                                            _rpath159826_
                                                            _pre159917_))))))
                                    (_ctx159927_
                                     (let ((__obj165469
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
                                        __obj165469
                                        _id159918_
                                        _prelude159925_
                                        _ns159919_
                                        _path159914_)
                                       __obj165469))
                                    (_body159929_
                                     (gx#core-expand-module-begin
                                      _body159920_
                                      _ctx159927_))
                                    (_body159931_
                                     (gx#core-quote-syntax__%
                                      (gx#core-cons '%#begin _body159929_)
                                      _path159914_
                                      _ctx159927_
                                      '())))
                               (##unchecked-structure-set!
                                _ctx159927_
                                (make-promise
                                 (lambda () (gx#eval-syntax* _body159931_)))
                                '10
                                gx#module-context::t
                                '#f)
                               (##unchecked-structure-set!
                                _ctx159927_
                                _body159931_
                                '11
                                gx#module-context::t
                                '#f)
                               (table-set!
                                (gx#current-expander-module-registry)
                                _path159914_
                                _ctx159927_)
                               (table-set!
                                (gx#current-expander-module-registry)
                                _id159918_
                                _ctx159927_)
                               _ctx159927_)))))
                     gx#current-expander-context
                     (gx#core-context-root__0)
                     gx#current-expander-marks
                     '()
                     gx#current-expander-phi
                     '0
                     gx#current-expander-path
                     (cons _path159914_ (gx#current-expander-path))
                     gx#current-import-expander-phi
                     '#f
                     gx#current-export-expander-phi
                     '#f)))
                 (_import-submodule159830_
                  (lambda (_rpath159842_)
                    (let* ((_rpath159843159850_ _rpath159842_)
                           (_E159845159854_
                            (lambda ()
                              (error '"No clause matching"
                                     _rpath159843159850_)))
                           (_K159846159902_
                            (lambda (_refs159857_ _origin159858_)
                              (let ((_ctx159860_
                                     (if _origin159858_
                                         (gx#core-import-module__%
                                          _origin159858_
                                          _reload?159827_)
                                         (gx#current-expander-context))))
                                (let _lp159862_ ((_rest159864_ _refs159857_)
                                                 (_ctx159865_ _ctx159860_))
                                  (let* ((_rest159866159874_ _rest159864_)
                                         (_else159868159882_
                                          (lambda () _ctx159865_))
                                         (_K159870159890_
                                          (lambda (_rest159885_ _id159886_)
                                            (let ((_bind159888_
                                                   (gx#resolve-identifier__%
                                                    _id159886_
                                                    '0
                                                    _ctx159865_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _bind159888_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _bind159888_
                                                         '4
                                                         gx#syntax-binding::t
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_lp159862_
                                                   _rest159885_
                                                   (##unchecked-structure-ref
                                                    _bind159888_
                                                    '4
                                                    gx#syntax-binding::t
                                                    '#f))
                                                  (error '"Cannot import submodule; not bound as a module"
                                                         _rpath159842_
                                                         _id159886_
                                                         _bind159888_))))))
                                    (if (##pair? _rest159866159874_)
                                        (let ((_hd159871159893_
                                               (##car _rest159866159874_))
                                              (_tl159872159895_
                                               (##cdr _rest159866159874_)))
                                          (let* ((_id159898_ _hd159871159893_)
                                                 (_rest159900_
                                                  _tl159872159895_))
                                            (_K159870159890_
                                             _rest159900_
                                             _id159898_)))
                                        (_else159868159882_))))))))
                      (if (##pair? _rpath159843159850_)
                          (let ((_hd159847159905_ (##car _rpath159843159850_))
                                (_tl159848159907_ (##cdr _rpath159843159850_)))
                            (let* ((_origin159910_ _hd159847159905_)
                                   (_refs159912_ _tl159848159907_))
                              (_K159846159902_ _refs159912_ _origin159910_)))
                          (_E159845159854_))))))
          (let ((_$e159832_
                 (if (not _reload?159827_)
                     (table-ref
                      (gx#current-expander-module-registry)
                      _rpath159826_
                      '#f)
                     '#f)))
            (if _$e159832_
                (values _$e159832_)
                (if (list? _rpath159826_)
                    (_import-submodule159830_ _rpath159826_)
                    (if (gx#core-library-module-path? _rpath159826_)
                        (let ((_ctx159835_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _rpath159826_)
                                _reload?159827_)))
                          (table-set!
                           (gx#current-expander-module-registry)
                           _rpath159826_
                           _ctx159835_)
                          _ctx159835_)
                        (let* ((_npath159837_ (path-normalize _rpath159826_))
                               (_$e159839_
                                (if (not _reload?159827_)
                                    (table-ref
                                     (gx#current-expander-module-registry)
                                     _npath159837_
                                     '#f)
                                    '#f)))
                          (if _$e159839_
                              (values _$e159839_)
                              (_import-source159829_ _npath159837_))))))))))
    (define gx#core-import-module__0
      (lambda (_rpath159938_)
        (let ((_reload?159940_ '#f))
          (gx#core-import-module__% _rpath159938_ _reload?159940_))))
    (define gx#core-import-module
      (lambda _g165480_
        (let ((_g165479_ (##length _g165480_)))
          (cond ((##fx= _g165479_ 1)
                 (apply (lambda (_rpath159938_)
                          (gx#core-import-module__0 _rpath159938_))
                        _g165480_))
                ((##fx= _g165479_ 2)
                 (apply (lambda (_rpath159942_ _reload?159943_)
                          (gx#core-import-module__%
                           _rpath159942_
                           _reload?159943_))
                        _g165480_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g165480_))))))
    (define gx#core-read-module
      (lambda (_path159815_)
        (with-catch
         (lambda (_exn159817_)
           (if (and (datum-parsing-exception? _exn159817_)
                    (eq? (datum-parsing-exception-filepos _exn159817_) '0))
               (gx#core-read-module/lang _path159815_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _path159815_
                (call-with-parameters
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_g159819159821_)
                      (display-exception _exn159817_ _g159819159821_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _path159815_)))))
    (define gx#core-read-module/sexp
      (lambda (_path159678_)
        (let _lp159680_ ((_body159682_ (read-syntax-from-file _path159678_))
                         (_pre159683_ '#f)
                         (_ns159684_ '#f)
                         (_pkg159685_ '#f))
          (let* ((_e159686159710_ _body159682_)
                 (_E159702159732_
                  (lambda ()
                    (let ((_g165481_
                           (if _pkg159685_
                               (values _pre159683_ _ns159684_ _pkg159685_)
                               (gx#core-read-module-package
                                _path159678_
                                _pre159683_
                                _ns159684_))))
                      (begin
                        (let ((_g165482_
                               (if (##values? _g165481_)
                                   (##vector-length _g165481_)
                                   1)))
                          (if (not (##fx= _g165482_ 3))
                              (error "Context expects 3 values" _g165482_)))
                        (let ((_pre159714_ (##vector-ref _g165481_ 0))
                              (_ns159715_ (##vector-ref _g165481_ 1))
                              (_pkg159716_ (##vector-ref _g165481_ 2)))
                          (let* ((_prelude159718_
                                  (if (gx#core-bound-module-prelude?
                                       _pre159714_)
                                      (gx#syntax-local-e__0 _pre159714_)
                                      (if (gx#core-library-module-path?
                                           _pre159714_)
                                          (gx#core-resolve-library-module-path
                                           _pre159714_)
                                          (if (gx#stx-string? _pre159714_)
                                              (gx#core-resolve-module-path__%
                                               _pre159714_
                                               _path159678_)
                                              (gx#stx-e _pre159714_)))))
                                 (_path-id159720_
                                  (gx#core-module-path->namespace
                                   _path159678_))
                                 (_pkg-id159722_
                                  (if _pkg159716_
                                      (string-append
                                       _pkg159716_
                                       '"/"
                                       _path-id159720_)
                                      _path-id159720_))
                                 (_module-id159724_
                                  (string->symbol _pkg-id159722_))
                                 (_module-ns159729_
                                  (if (eq? _ns159715_ '#!void)
                                      '#f
                                      (let ((_$e159726_ _ns159715_))
                                        (if _$e159726_
                                            _$e159726_
                                            _pkg-id159722_)))))
                            (values _prelude159718_
                                    _module-id159724_
                                    _module-ns159729_
                                    _body159682_)))))))
                 (_E159695159761_
                  (lambda ()
                    (if (gx#stx-pair? _e159686159710_)
                        (let ((_e159703159736_ (gx#syntax-e _e159686159710_)))
                          (let ((_hd159704159739_ (##car _e159703159736_))
                                (_tl159705159741_ (##cdr _e159703159736_)))
                            (if (eq? (gx#stx-e _hd159704159739_) 'package:)
                                (if (gx#stx-pair? _tl159705159741_)
                                    (let ((_e159706159744_
                                           (gx#syntax-e _tl159705159741_)))
                                      (let ((_hd159707159747_
                                             (##car _e159706159744_))
                                            (_tl159708159749_
                                             (##cdr _e159706159744_)))
                                        (let* ((_pkg159752_ _hd159707159747_)
                                               (_rest159754_ _tl159708159749_))
                                          (if '#t
                                              (let ((_pkg159759_
                                                     (if (gx#identifier?
                                                          _pkg159752_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _pkg159752_))
                                                         (if (or (gx#stx-string?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _pkg159752_)
                         (gx#stx-false? _pkg159752_))
                     (gx#stx-e _pkg159752_)
                     (gx#raise-syntax-error
                      'import
                      '"Bad syntax; Illegal package name"
                      _pkg159752_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp159680_
                                                 _rest159754_
                                                 _pre159683_
                                                 _ns159684_
                                                 _pkg159759_))
                                              (_E159702159732_)))))
                                    (_E159702159732_))
                                (_E159702159732_))))
                        (_E159702159732_))))
                 (_E159688159787_
                  (lambda ()
                    (if (gx#stx-pair? _e159686159710_)
                        (let ((_e159696159765_ (gx#syntax-e _e159686159710_)))
                          (let ((_hd159697159768_ (##car _e159696159765_))
                                (_tl159698159770_ (##cdr _e159696159765_)))
                            (if (eq? (gx#stx-e _hd159697159768_) 'namespace:)
                                (if (gx#stx-pair? _tl159698159770_)
                                    (let ((_e159699159773_
                                           (gx#syntax-e _tl159698159770_)))
                                      (let ((_hd159700159776_
                                             (##car _e159699159773_))
                                            (_tl159701159778_
                                             (##cdr _e159699159773_)))
                                        (let* ((_ns159781_ _hd159700159776_)
                                               (_rest159783_ _tl159701159778_))
                                          (if '#t
                                              (let ((_ns159785_
                                                     (if (gx#identifier?
                                                          _ns159781_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _ns159781_))
                                                         (if (gx#stx-string?
                                                              _ns159781_)
                                                             (gx#stx-e
                                                              _ns159781_)
                                                             (if (gx#stx-false?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _ns159781_)
                         '#!void
                         (gx#raise-syntax-error
                          'import
                          '"Bad syntax; illegal namespace"
                          _ns159781_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp159680_
                                                 _rest159783_
                                                 _pre159683_
                                                 _ns159785_
                                                 _pkg159685_))
                                              (_E159695159761_)))))
                                    (_E159695159761_))
                                (_E159695159761_))))
                        (_E159695159761_))))
                 (_E159687159811_
                  (lambda ()
                    (if (gx#stx-pair? _e159686159710_)
                        (let ((_e159689159791_ (gx#syntax-e _e159686159710_)))
                          (let ((_hd159690159794_ (##car _e159689159791_))
                                (_tl159691159796_ (##cdr _e159689159791_)))
                            (if (eq? (gx#stx-e _hd159690159794_) 'prelude:)
                                (if (gx#stx-pair? _tl159691159796_)
                                    (let ((_e159692159799_
                                           (gx#syntax-e _tl159691159796_)))
                                      (let ((_hd159693159802_
                                             (##car _e159692159799_))
                                            (_tl159694159804_
                                             (##cdr _e159692159799_)))
                                        (let* ((_prelude159807_
                                                _hd159693159802_)
                                               (_rest159809_ _tl159694159804_))
                                          (if '#t
                                              (_lp159680_
                                               _rest159809_
                                               _prelude159807_
                                               _ns159684_
                                               _pkg159685_)
                                              (_E159688159787_)))))
                                    (_E159688159787_))
                                (_E159688159787_))))
                        (_E159688159787_)))))
            (_E159687159811_)))))
    (define gx#core-read-module/lang
      (lambda (_path159505_)
        (letrec ((_default-read-module-body159507_
                  (lambda (_inp159670_)
                    (let _lp159672_ ((_body159674_ '()))
                      (let ((_next159676_ (read-syntax _inp159670_)))
                        (if (eof-object? _next159676_)
                            (reverse _body159674_)
                            (_lp159672_ (cons _next159676_ _body159674_)))))))
                 (_read-body159508_
                  (lambda (_inp159589_
                           _pre159590_
                           _ns159591_
                           _pkg159592_
                           _args159593_)
                    (let ((_g165483_
                           (if _pkg159592_
                               (values _pre159590_ _ns159591_ _pkg159592_)
                               (gx#core-read-module-package
                                _path159505_
                                _pre159590_
                                _ns159591_))))
                      (begin
                        (let ((_g165484_
                               (if (##values? _g165483_)
                                   (##vector-length _g165483_)
                                   1)))
                          (if (not (##fx= _g165484_ 3))
                              (error "Context expects 3 values" _g165484_)))
                        (let ((_pre159595_ (##vector-ref _g165483_ 0))
                              (_ns159596_ (##vector-ref _g165483_ 1))
                              (_pkg159597_ (##vector-ref _g165483_ 2)))
                          (let* ((_prelude159599_
                                  (gx#import-module__0 _pre159595_))
                                 (_read-module-body159653_
                                  (let ((_$e159645_
                                         (find (lambda (_e159600159602_)
                                                 (let* ((_g159604159614_
                                                         _e159600159602_)
                                                        (_else159606159622_
                                                         (lambda () '#f))
                                                        (_K159608159626_
                                                         (lambda () '#t)))
                                                   (if (##structure-direct-instance-of?
                                                        _g159604159614_
                                                        'gx#module-export::t)
                                                       (let* ((_e159609159629_
                                                               (##unchecked-structure-ref
                                                                _g159604159614_
                                                                '1
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e159610159632_
                                                               (##unchecked-structure-ref
                                                                _g159604159614_
                                                                '2
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e159611159635_
                                                               (##unchecked-structure-ref
                                                                _g159604159614_
                                                                '3
                                                                gx#module-export::t
                                                                '#f)))
                                                         (if (##eq? _e159611159635_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)
                     (let ((_e159612159638_
                            (##unchecked-structure-ref
                             _g159604159614_
                             '4
                             gx#module-export::t
                             '#f)))
                       (if ((lambda (_g159640159642_)
                              (eq? _g159640159642_ 'read-module-body))
                            _e159612159638_)
                           (_K159608159626_)
                           (_else159606159622_)))
                     (_else159606159622_)))
               (_else159606159622_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (##unchecked-structure-ref
                                                _prelude159599_
                                                '9
                                                gx#module-context::t
                                                '#f))))
                                    (if _$e159645_
                                        ((lambda (_xport159648_)
                                           (let ((_proc159651_
                                                  (with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _xport159648_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _proc159651_)
                                                 _proc159651_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _path159505_
                                                  _pre159595_
                                                  _proc159651_))))
                                         _$e159645_)
                                        _default-read-module-body159507_)))
                                 (_path-id159655_
                                  (gx#core-module-path->namespace
                                   _path159505_))
                                 (_pkg-id159657_
                                  (if _pkg159597_
                                      (string-append
                                       _pkg159597_
                                       '"/"
                                       _path-id159655_)
                                      _path-id159655_))
                                 (_module-id159659_
                                  (string->symbol _pkg-id159657_))
                                 (_module-ns159664_
                                  (let ((_$e159661_ _ns159596_))
                                    (if _$e159661_ _$e159661_ _pkg-id159657_)))
                                 (_body159667_
                                  (call-with-parameters
                                   (lambda ()
                                     (_read-module-body159653_ _inp159589_))
                                   gx#current-module-reader-path
                                   _path159505_
                                   gx#current-module-reader-args
                                   _args159593_)))
                            (values _prelude159599_
                                    _module-id159659_
                                    _module-ns159664_
                                    _body159667_)))))))
                 (_string-e159509_
                  (lambda (_obj159586_ _what159587_)
                    (if (string? _obj159586_)
                        _obj159586_
                        (if (symbol? _obj159586_)
                            (symbol->string _obj159586_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _what159587_)
                             _path159505_
                             _obj159586_)))))
                 (_read-lang-args159510_
                  (lambda (_inp159541_ _args159542_)
                    (let* ((_args159543159551_ _args159542_)
                           (_else159545159559_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _path159505_)))
                           (_K159547159574_
                            (lambda (_args159562_ _prelude159563_)
                              (let* ((_pkg159565_
                                      (pgetq 'package: _args159562_))
                                     (_pkg159567_
                                      (if _pkg159565_
                                          (_string-e159509_
                                           _pkg159565_
                                           '"package")
                                          '#f))
                                     (_ns159569_
                                      (pgetq 'namespace: _args159562_))
                                     (_ns159571_
                                      (if _ns159569_
                                          (_string-e159509_
                                           _ns159569_
                                           '"namespace")
                                          '#f)))
                                (_read-body159508_
                                 _inp159541_
                                 _prelude159563_
                                 _ns159571_
                                 _pkg159567_
                                 _args159562_)))))
                      (if (##pair? _args159543159551_)
                          (let ((_hd159548159577_ (##car _args159543159551_))
                                (_tl159549159579_ (##cdr _args159543159551_)))
                            (let* ((_prelude159582_ _hd159548159577_)
                                   (_args159584_ _tl159549159579_))
                              (_K159547159574_ _args159584_ _prelude159582_)))
                          (_else159545159559_)))))
                 (_read-lang159511_
                  (lambda (_inp159516_)
                    (let* ((_head159518_ (read-line _inp159516_))
                           (_$e159520_ (string-index _head159518_ '#\space)))
                      (if _$e159520_
                          ((lambda (_ix159523_)
                             (let ((_lang159525_
                                    (substring _head159518_ '0 _ix159523_)))
                               (if (equal? _lang159525_ '"#lang")
                                   (let* ((_rest159527_
                                           (substring
                                            _head159518_
                                            (fx+ _ix159523_ '1)
                                            (string-length _head159518_)))
                                          (_args159538_
                                           (with-catch
                                            (lambda (_g159528159530_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _path159505_
                                               _g159528159530_))
                                            (lambda ()
                                              (call-with-input-string
                                               _rest159527_
                                               (lambda (_g159533159535_)
                                                 (read-all
                                                  _g159533159535_
                                                  read)))))))
                                     (_read-lang-args159510_
                                      _inp159516_
                                      _args159538_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _path159505_))))
                           _$e159520_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _path159505_)))))
                 (_read-e159512_
                  (lambda (_inp159514_)
                    (if (eq? (peek-char _inp159514_) '#\#)
                        (_read-lang159511_ _inp159514_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _path159505_)))))
          (gx#call-with-input-source-file _path159505_ _read-e159512_))))
    (define gx#core-read-module-package
      (lambda (_path159459_ _pre159460_ _ns159461_)
        (letrec ((_string-e159463_
                  (lambda (_e159503_)
                    (if (symbol? _e159503_)
                        (symbol->string _e159503_)
                        (if (string? _e159503_)
                            _e159503_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _e159503_))))))
          (let _lp159465_ ((_dir159467_ (path-directory _path159459_))
                           (_pkg-path159468_ '()))
            (let ((_gerbil.pkg159470_ (path-expand '"gerbil.pkg" _dir159467_)))
              (if (file-exists? _gerbil.pkg159470_)
                  (let ((_plist159472_
                         (gx#core-library-package-plist__% _dir159467_ '#t)))
                    (if (null? _plist159472_)
                        (let ((_pkg159474_
                               (if (not (null? _pkg-path159468_))
                                   (string-join _pkg-path159468_ '"/")
                                   '#f)))
                          (values _pre159460_ _ns159461_ _pkg159474_))
                        (if (list? _plist159472_)
                            (let* ((_root159476_
                                    (pgetq 'package: _plist159472_))
                                   (_pkg159480_
                                    (let ((_pkg-path159478_
                                           (if _root159476_
                                               (cons (_string-e159463_
                                                      _root159476_)
                                                     _pkg-path159468_)
                                               _pkg-path159468_)))
                                      (if (not (null? _pkg-path159478_))
                                          (string-join _pkg-path159478_ '"/")
                                          '#f)))
                                   (_ns159487_
                                    (let ((_ns159485_
                                           (let ((_$e159482_ _ns159461_))
                                             (if _$e159482_
                                                 _$e159482_
                                                 (pgetq 'namespace:
                                                        _plist159472_)))))
                                      (if _ns159485_
                                          (_string-e159463_ _ns159485_)
                                          '#f)))
                                   (_pre159492_
                                    (let ((_$e159489_ _pre159460_))
                                      (if _$e159489_
                                          _$e159489_
                                          (pgetq 'prelude: _plist159472_)))))
                              (values _pre159492_ _ns159487_ _pkg159480_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _plist159472_))))
                  (let ((_dir*159495_
                         (path-strip-trailing-directory-separator
                          _dir159467_)))
                    (if (or (string-empty? _dir*159495_)
                            (equal? _dir159467_ _dir*159495_))
                        (values _pre159460_ _ns159461_ '#f)
                        (let ((_xpath159500_
                               (path-strip-directory _dir*159495_))
                              (_xdir159501_ (path-directory _dir*159495_)))
                          (_lp159465_
                           _xdir159501_
                           (cons _xpath159500_ _pkg-path159468_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_path159457_)
        (path-strip-extension (path-strip-directory _path159457_))))
    (define gx#core-module-path->id
      (lambda (_path159455_)
        (string->symbol (gx#core-module-path->namespace _path159455_))))
    (define gx#core-resolve-module-path__%
      (lambda (_stx-path159434_ _rel159435_)
        (let* ((_path159437_ (gx#stx-e _stx-path159434_))
               (_path159439_
                (if (string-empty? (path-extension _path159437_))
                    (string-append _path159437_ '".ss")
                    _path159437_)))
          (gx#core-resolve-path__%
           _path159439_
           (let ((_$e159442_ (gx#stx-source _stx-path159434_)))
             (if _$e159442_ _$e159442_ _rel159435_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_stx-path159448_)
        (let ((_rel159450_ '#f))
          (gx#core-resolve-module-path__% _stx-path159448_ _rel159450_))))
    (define gx#core-resolve-module-path
      (lambda _g165486_
        (let ((_g165485_ (##length _g165486_)))
          (cond ((##fx= _g165485_ 1)
                 (apply (lambda (_stx-path159448_)
                          (gx#core-resolve-module-path__0 _stx-path159448_))
                        _g165486_))
                ((##fx= _g165485_ 2)
                 (apply (lambda (_stx-path159452_ _rel159453_)
                          (gx#core-resolve-module-path__%
                           _stx-path159452_
                           _rel159453_))
                        _g165486_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g165486_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_libpath159320_)
        (let* ((_spath159322_ (symbol->string (gx#stx-e _libpath159320_)))
               (_spath159324_
                (substring _spath159322_ '1 (string-length _spath159322_)))
               (_ext159326_ (path-extension _spath159324_))
               (_ssi159328_
                (if (string-empty? _ext159326_)
                    (string-append _spath159324_ '".ssi")
                    (string-append
                     (path-strip-extension _spath159324_)
                     '".ssi")))
               (_srcs159332_
                (if (string-empty? _ext159326_)
                    (map (lambda (_ext159330_)
                           (string-append _spath159324_ _ext159330_))
                         '(".ss" ".sld" ".scm"))
                    (cons _spath159324_ '()))))
          (let _lp159335_ ((_rest159337_
                            (gx#current-expander-module-library-path)))
            (let* ((_rest159338159347_ _rest159337_)
                   (_E159341159351_
                    (lambda ()
                      (error '"No clause matching" _rest159338159347_))))
              (let ((_K159343159421_
                     (lambda (_rest159362_ _dir159363_)
                       (letrec ((_resolve159365_
                                 (lambda (_ssi159377_ _srcs159378_)
                                   (let ((_compiled-path159380_
                                          (path-expand
                                           _ssi159377_
                                           _dir159363_)))
                                     (if (file-exists? _compiled-path159380_)
                                         (path-normalize _compiled-path159380_)
                                         (let _lpr159382_ ((_rest-src159384_
                                                            _srcs159378_))
                                           (let* ((_rest-src159385159393_
                                                   _rest-src159384_)
                                                  (_else159387159401_
                                                   (lambda ()
                                                     (_lp159335_
                                                      _rest159362_)))
                                                  (_K159389159409_
                                                   (lambda (_rest-src159404_
                                                            _src159405_)
                                                     (let ((_src-path159407_
                                                            (path-expand
                                                             _src159405_
                                                             _dir159363_)))
                                                       (if (file-exists?
                                                            _src-path159407_)
                                                           (path-normalize
                                                            _src-path159407_)
                                                           (_lpr159382_
                                                            _rest-src159404_))))))
                                             (if (##pair? _rest-src159385159393_)
                                                 (let ((_hd159390159412_
                                                        (##car _rest-src159385159393_))
                                                       (_tl159391159414_
                                                        (##cdr _rest-src159385159393_)))
                                                   (let* ((_src159417_
                                                           _hd159390159412_)
                                                          (_rest-src159419_
                                                           _tl159391159414_))
                                                     (_K159389159409_
                                                      _rest-src159419_
                                                      _src159417_)))
                                                 (_else159387159401_)))))))))
                         (let ((_$e159367_
                                (gx#core-library-package-path-prefix
                                 _dir159363_)))
                           (if _$e159367_
                               ((lambda (_prefix159370_)
                                  (if (string-prefix?
                                       _prefix159370_
                                       _spath159324_)
                                      (let ((_ssi159374_
                                             (substring
                                              _ssi159328_
                                              (string-length _prefix159370_)
                                              (string-length _ssi159328_)))
                                            (_srcs159375_
                                             (map (lambda (_src159372_)
                                                    (substring
                                                     _src159372_
                                                     (string-length
                                                      _prefix159370_)
                                                     (string-length
                                                      _src159372_)))
                                                  _srcs159332_)))
                                        (_resolve159365_
                                         _ssi159374_
                                         _srcs159375_))
                                      (_lp159335_ _rest159362_)))
                                _$e159367_)
                               (_resolve159365_ _ssi159328_ _srcs159332_))))))
                    (_K159342159356_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"Cannot find library module"
                        _libpath159320_))))
                (let ((_try-match159340159359_
                       (lambda ()
                         (if (##null? _rest159338159347_)
                             (_K159342159356_)
                             (_E159341159351_)))))
                  (if (##pair? _rest159338159347_)
                      (let ((_tl159345159426_ (##cdr _rest159338159347_))
                            (_hd159344159424_ (##car _rest159338159347_)))
                        (let ((_dir159429_ _hd159344159424_)
                              (_rest159431_ _tl159345159426_))
                          (_K159343159421_ _rest159431_ _dir159429_)))
                      (_try-match159340159359_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_modpath159293_)
        (letrec ((_resolve159295_
                  (lambda (_path159312_ _base159313_)
                    (let ((_$e159315_ (string-rindex _base159313_ '#\/)))
                      (if _$e159315_
                          ((lambda (_idx159318_)
                             (gx#core-resolve-library-module-path
                              (string->symbol
                               (string-append
                                '":"
                                (substring _base159313_ '0 _idx159318_)
                                '"/"
                                _path159312_))))
                           _$e159315_)
                          (gx#core-resolve-library-module-path
                           (string->symbol
                            (string-append '":" _path159312_))))))))
          (let ((_spath159297_ (symbol->string (gx#stx-e _modpath159293_)))
                (_mod159298_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _mod159298_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"Cannot resolve relative module path; not in module context"
                 _modpath159293_))
            (let ((_mpath159300_
                   (symbol->string
                    (##structure-ref
                     _mod159298_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _lp159302_ ((_spath159304_ _spath159297_)
                               (_mpath159305_ _mpath159300_))
                (if (string-prefix? '"../" _spath159304_)
                    (let ((_$e159307_ (string-rindex _mpath159305_ '#\/)))
                      (if _$e159307_
                          ((lambda (_idx159310_)
                             (_lp159302_
                              (substring
                               _spath159304_
                               '3
                               (string-length _spath159304_))
                              (substring _mpath159305_ '0 _idx159310_)))
                           _$e159307_)
                          (gx#raise-syntax-error
                           '#f
                           '"Cannot resolve relative module path; illegal traversal"
                           _modpath159293_)))
                    (if (string-prefix? '"./" _spath159304_)
                        (_lp159302_
                         (substring
                          _spath159304_
                          '2
                          (string-length _spath159304_))
                         _mpath159305_)
                        (_resolve159295_ _spath159304_ _mpath159305_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_dir159286_)
        (let ((_$e159288_
               (pgetq 'package:
                      (gx#core-library-package-plist__0 _dir159286_))))
          (if _$e159288_
              ((lambda (_pkg159291_)
                 (string-append (symbol->string _pkg159291_) '"/"))
               _$e159288_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_dir159258_ _exists?159259_)
        (let* ((_cache159261_ (gx#core-library-package-cache))
               (_$e159263_ (table-ref _cache159261_ _dir159258_ '#f)))
          (if _$e159263_
              (values _$e159263_)
              (let* ((_gerbil.pkg159266_
                      (path-expand '"gerbil.pkg" _dir159258_))
                     (_plist159273_
                      (if (or _exists?159259_
                              (file-exists? _gerbil.pkg159266_))
                          (let ((_e159271_
                                 (gx#call-with-input-source-file
                                  _gerbil.pkg159266_
                                  read)))
                            (if (eof-object? _e159271_)
                                '()
                                (if (list? _e159271_)
                                    _e159271_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _gerbil.pkg159266_
                                     _e159271_))))
                          '())))
                (table-set! _cache159261_ _dir159258_ _plist159273_)
                _plist159273_)))))
    (define gx#core-library-package-plist__0
      (lambda (_dir159279_)
        (let ((_exists?159281_ '#f))
          (gx#core-library-package-plist__% _dir159279_ _exists?159281_))))
    (define gx#core-library-package-plist
      (lambda _g165488_
        (let ((_g165487_ (##length _g165488_)))
          (cond ((##fx= _g165487_ 1)
                 (apply (lambda (_dir159279_)
                          (gx#core-library-package-plist__0 _dir159279_))
                        _g165488_))
                ((##fx= _g165487_ 2)
                 (apply (lambda (_dir159283_ _exists?159284_)
                          (gx#core-library-package-plist__%
                           _dir159283_
                           _exists?159284_))
                        _g165488_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g165488_))))))
    (define gx#core-library-package-cache
      (lambda ()
        (let ((_$e159252_ (gx#current-expander-module-library-package-cache)))
          (if _$e159252_
              (values _$e159252_)
              (let ((_cache159255_ (make-table)))
                (gx#current-expander-module-library-package-cache
                 _cache159255_)
                _cache159255_)))))
    (define gx#core-library-module-path?
      (lambda (_stx159249_) (gx#core-special-module-path? _stx159249_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_stx159247_) (gx#core-special-module-path? _stx159247_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_stx159242_ _char159243_)
        (if (gx#identifier? _stx159242_)
            (if (interned-symbol? (gx#stx-e _stx159242_))
                (let ((_str159245_ (symbol->string (gx#stx-e _stx159242_))))
                  (if (fx> (string-length _str159245_) '1)
                      (eq? (string-ref _str159245_ '0) _char159243_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_stx159236_)
        (gx#core-bound-identifier?__%
         _stx159236_
         (lambda (_g159237159239_)
           (gx#expander-binding?__% _g159237159239_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_stx159230_)
        (gx#core-bound-identifier?__%
         _stx159230_
         (lambda (_g159231159233_)
           (gx#expander-binding?__% _g159231159233_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_stx159217_)
        (letrec ((_module-prelude?159219_
                  (lambda (_e159225_)
                    (let ((_$e159227_
                           (##structure-instance-of?
                            _e159225_
                            'gx#module-context::t)))
                      (if _$e159227_
                          _$e159227_
                          (##structure-instance-of?
                           _e159225_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _stx159217_
           (lambda (_g159220159222_)
             (gx#expander-binding?__%
              _g159220159222_
              _module-prelude?159219_))))))
    (define gx#core-bind-import!__%
      (lambda (_in159147_ _ctx159148_ _force-weak?159149_)
        (let* ((_in159150159159_ _in159147_)
               (_E159152159163_
                (lambda () (error '"No clause matching" _in159150159159_)))
               (_K159153159176_
                (lambda (_weak?159166_ _phi159167_ _key159168_ _source159169_)
                  (gx#core-bind!__%
                   _key159168_
                   (let ((_e159171_
                          (gx#core-resolve-module-export _source159169_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref
                       _e159171_
                       '1
                       gx#binding::t
                       '#f)
                      _key159168_
                      _phi159167_
                      _e159171_
                      (##unchecked-structure-ref
                       _source159169_
                       '1
                       gx#module-export::t
                       '#f)
                      (let ((_$e159173_ _force-weak?159149_))
                        (if _$e159173_ _$e159173_ _weak?159166_))))
                   gx#core-context-rebind?
                   _phi159167_
                   _ctx159148_))))
          (if (##structure-direct-instance-of?
               _in159150159159_
               'gx#module-import::t)
              (let* ((_e159154159179_
                      (##unchecked-structure-ref
                       _in159150159159_
                       '1
                       gx#module-import::t
                       '#f))
                     (_source159182_ _e159154159179_)
                     (_e159155159184_
                      (##unchecked-structure-ref
                       _in159150159159_
                       '2
                       gx#module-import::t
                       '#f))
                     (_key159187_ _e159155159184_)
                     (_e159156159189_
                      (##unchecked-structure-ref
                       _in159150159159_
                       '3
                       gx#module-import::t
                       '#f))
                     (_phi159192_ _e159156159189_)
                     (_e159157159194_
                      (##unchecked-structure-ref
                       _in159150159159_
                       '4
                       gx#module-import::t
                       '#f))
                     (_weak?159197_ _e159157159194_))
                (_K159153159176_
                 _weak?159197_
                 _phi159192_
                 _key159187_
                 _source159182_))
              (_E159152159163_)))))
    (define gx#core-bind-import!__0
      (lambda (_in159202_)
        (let* ((_ctx159204_ (gx#current-expander-context))
               (_force-weak?159206_ '#f))
          (gx#core-bind-import!__%
           _in159202_
           _ctx159204_
           _force-weak?159206_))))
    (define gx#core-bind-import!__1
      (lambda (_in159208_ _ctx159209_)
        (let ((_force-weak?159211_ '#f))
          (gx#core-bind-import!__%
           _in159208_
           _ctx159209_
           _force-weak?159211_))))
    (define gx#core-bind-import!
      (lambda _g165490_
        (let ((_g165489_ (##length _g165490_)))
          (cond ((##fx= _g165489_ 1)
                 (apply (lambda (_in159202_)
                          (gx#core-bind-import!__0 _in159202_))
                        _g165490_))
                ((##fx= _g165489_ 2)
                 (apply (lambda (_in159208_ _ctx159209_)
                          (gx#core-bind-import!__1 _in159208_ _ctx159209_))
                        _g165490_))
                ((##fx= _g165489_ 3)
                 (apply (lambda (_in159213_ _ctx159214_ _force-weak?159215_)
                          (gx#core-bind-import!__%
                           _in159213_
                           _ctx159214_
                           _force-weak?159215_))
                        _g165490_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g165490_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_in159133_ _ctx159134_)
        (gx#core-bind-import!__% _in159133_ _ctx159134_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_in159139_)
        (let ((_ctx159141_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _in159139_ _ctx159141_))))
    (define gx#core-bind-weak-import!
      (lambda _g165492_
        (let ((_g165491_ (##length _g165492_)))
          (cond ((##fx= _g165491_ 1)
                 (apply (lambda (_in159139_)
                          (gx#core-bind-weak-import!__0 _in159139_))
                        _g165492_))
                ((##fx= _g165491_ 2)
                 (apply (lambda (_in159143_ _ctx159144_)
                          (gx#core-bind-weak-import!__%
                           _in159143_
                           _ctx159144_))
                        _g165492_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g165492_))))))
    (define gx#core-resolve-module-export
      (lambda (_out159024_)
        (letrec ((_subst159026_
                  (lambda (_key159072_)
                    (let* ((_key159073159081_ _key159072_)
                           (_else159075159089_ (lambda () _key159072_))
                           (_K159077159120_
                            (lambda (_mark159092_ _id159093_)
                              (let* ((_mark159094159100_ _mark159092_)
                                     (_E159096159104_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark159094159100_)))
                                     (_K159097159112_
                                      (lambda (_subst159107_)
                                        (let ((_$e159109_
                                               (if _subst159107_
                                                   (table-ref
                                                    _subst159107_
                                                    _id159093_
                                                    '#f)
                                                   '#f)))
                                          (if _$e159109_
                                              _$e159109_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _key159072_))))))
                                (if (##structure-instance-of?
                                     _mark159094159100_
                                     'gx#expander-mark::t)
                                    (let* ((_e159098159115_
                                            (##unchecked-structure-ref
                                             _mark159094159100_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst159118_ _e159098159115_))
                                      (_K159097159112_ _subst159118_))
                                    (_E159096159104_))))))
                      (if (##pair? _key159073159081_)
                          (let ((_hd159078159123_ (##car _key159073159081_))
                                (_tl159079159125_ (##cdr _key159073159081_)))
                            (let* ((_id159128_ _hd159078159123_)
                                   (_mark159130_ _tl159079159125_))
                              (_K159077159120_ _mark159130_ _id159128_)))
                          (_else159075159089_))))))
          (let* ((_out159027159037_ _out159024_)
                 (_E159029159041_
                  (lambda () (error '"No clause matching" _out159027159037_)))
                 (_K159030159048_
                  (lambda (_phi159044_ _key159045_ _ctx159046_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _ctx159046_ _phi159044_)
                     (_subst159026_ _key159045_)))))
            (if (##structure-direct-instance-of?
                 _out159027159037_
                 'gx#module-export::t)
                (let* ((_e159031159051_
                        (##unchecked-structure-ref
                         _out159027159037_
                         '1
                         gx#module-export::t
                         '#f))
                       (_ctx159054_ _e159031159051_)
                       (_e159032159056_
                        (##unchecked-structure-ref
                         _out159027159037_
                         '2
                         gx#module-export::t
                         '#f))
                       (_key159059_ _e159032159056_)
                       (_e159033159061_
                        (##unchecked-structure-ref
                         _out159027159037_
                         '3
                         gx#module-export::t
                         '#f))
                       (_phi159064_ _e159033159061_)
                       (_e159034159066_
                        (##unchecked-structure-ref
                         _out159027159037_
                         '4
                         gx#module-export::t
                         '#f))
                       (_e159035159069_
                        (##unchecked-structure-ref
                         _out159027159037_
                         '5
                         gx#module-export::t
                         '#f)))
                  (_K159030159048_ _phi159064_ _key159059_ _ctx159054_))
                (_E159029159041_))))))
    (define gx#core-module-export->import__%
      (lambda (_out158949_ _rename158950_ _dphi158951_)
        (let* ((_out158952158962_ _out158949_)
               (_E158954158966_
                (lambda () (error '"No clause matching" _out158952158962_)))
               (_K158955158978_
                (lambda (_weak?158969_
                         _name158970_
                         _phi158971_
                         _key158972_
                         _ctx158973_)
                  (##structure
                   gx#module-import::t
                   _out158949_
                   (let ((_$e158975_ _rename158950_))
                     (if _$e158975_ _$e158975_ _name158970_))
                   (fx+ _phi158971_ _dphi158951_)
                   _weak?158969_))))
          (if (##structure-direct-instance-of?
               _out158952158962_
               'gx#module-export::t)
              (let* ((_e158956158981_
                      (##unchecked-structure-ref
                       _out158952158962_
                       '1
                       gx#module-export::t
                       '#f))
                     (_ctx158984_ _e158956158981_)
                     (_e158957158986_
                      (##unchecked-structure-ref
                       _out158952158962_
                       '2
                       gx#module-export::t
                       '#f))
                     (_key158989_ _e158957158986_)
                     (_e158958158991_
                      (##unchecked-structure-ref
                       _out158952158962_
                       '3
                       gx#module-export::t
                       '#f))
                     (_phi158994_ _e158958158991_)
                     (_e158959158996_
                      (##unchecked-structure-ref
                       _out158952158962_
                       '4
                       gx#module-export::t
                       '#f))
                     (_name158999_ _e158959158996_)
                     (_e158960159001_
                      (##unchecked-structure-ref
                       _out158952158962_
                       '5
                       gx#module-export::t
                       '#f))
                     (_weak?159004_ _e158960159001_))
                (_K158955158978_
                 _weak?159004_
                 _name158999_
                 _phi158994_
                 _key158989_
                 _ctx158984_))
              (_E158954158966_)))))
    (define gx#core-module-export->import__0
      (lambda (_out159009_)
        (let* ((_rename159011_ '#f) (_dphi159013_ '0))
          (gx#core-module-export->import__%
           _out159009_
           _rename159011_
           _dphi159013_))))
    (define gx#core-module-export->import__1
      (lambda (_out159015_ _rename159016_)
        (let ((_dphi159018_ '0))
          (gx#core-module-export->import__%
           _out159015_
           _rename159016_
           _dphi159018_))))
    (define gx#core-module-export->import
      (lambda _g165494_
        (let ((_g165493_ (##length _g165494_)))
          (cond ((##fx= _g165493_ 1)
                 (apply (lambda (_out159009_)
                          (gx#core-module-export->import__0 _out159009_))
                        _g165494_))
                ((##fx= _g165493_ 2)
                 (apply (lambda (_out159015_ _rename159016_)
                          (gx#core-module-export->import__1
                           _out159015_
                           _rename159016_))
                        _g165494_))
                ((##fx= _g165493_ 3)
                 (apply (lambda (_out159020_ _rename159021_ _dphi159022_)
                          (gx#core-module-export->import__%
                           _out159020_
                           _rename159021_
                           _dphi159022_))
                        _g165494_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g165494_))))))
    (define gx#core-expand-module%
      (lambda (_stx158877_)
        (letrec ((_make-context158879_
                  (lambda (_id158930_)
                    (let* ((_super158932_ (gx#current-expander-context))
                           (_bind-id158934_ (gx#stx-e _id158930_))
                           (_mod-id158936_
                            (if (##structure-instance-of?
                                 _super158932_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##structure-ref
                                  _super158932_
                                  '1
                                  gx#expander-context::t
                                  '#f)
                                 '"$"
                                 _bind-id158934_)
                                _bind-id158934_))
                           (_ns158938_ (symbol->string _mod-id158936_))
                           (_path158945_
                            (if (##structure-instance-of?
                                 _super158932_
                                 'gx#module-context::t)
                                (let ((_path158940_
                                       (##unchecked-structure-ref
                                        _super158932_
                                        '7
                                        gx#module-context::t
                                        '#f)))
                                  (if (or (pair? _path158940_)
                                          (null? _path158940_))
                                      (cons _bind-id158934_ _path158940_)
                                      (if (not _path158940_)
                                          _bind-id158934_
                                          (cons _bind-id158934_
                                                (cons _path158940_ '())))))
                                _bind-id158934_)))
                      (let ((__obj165470
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
                         __obj165470
                         _mod-id158936_
                         _super158932_
                         _ns158938_
                         _path158945_)
                        __obj165470)))))
          (let* ((_e158880158890_ _stx158877_)
                 (_E158882158894_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e158880158890_)))
                 (_E158881158926_
                  (lambda ()
                    (if (gx#stx-pair? _e158880158890_)
                        (let ((_e158883158898_ (gx#syntax-e _e158880158890_)))
                          (let ((_hd158884158901_ (##car _e158883158898_))
                                (_tl158885158903_ (##cdr _e158883158898_)))
                            (if (gx#stx-pair? _tl158885158903_)
                                (let ((_e158886158906_
                                       (gx#syntax-e _tl158885158903_)))
                                  (let ((_hd158887158909_
                                         (##car _e158886158906_))
                                        (_tl158888158911_
                                         (##cdr _e158886158906_)))
                                    (let* ((_id158914_ _hd158887158909_)
                                           (_body158916_ _tl158888158911_))
                                      (if (and (gx#identifier? _id158914_)
                                               (gx#stx-list? _body158916_))
                                          (let* ((_ctx158918_
                                                  (_make-context158879_
                                                   _id158914_))
                                                 (_body158920_
                                                  (gx#core-expand-module-begin
                                                   _body158916_
                                                   _ctx158918_))
                                                 (_body158922_
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body158920_)
                                                   (gx#stx-source
                                                    _stx158877_))))
                                            (##unchecked-structure-set!
                                             _ctx158918_
                                             (make-promise
                                              (lambda ()
                                                (gx#eval-syntax*
                                                 _body158922_)))
                                             '10
                                             gx#module-context::t
                                             '#f)
                                            (##unchecked-structure-set!
                                             _ctx158918_
                                             _body158922_
                                             '11
                                             gx#module-context::t
                                             '#f)
                                            (gx#core-bind-syntax!__0
                                             _id158914_
                                             _ctx158918_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-list
                                              '%#module
                                              (gx#core-quote-syntax__0
                                               _id158914_)
                                              _body158922_)
                                             (gx#stx-source _stx158877_)))
                                          (_E158882158894_)))))
                                (_E158882158894_))))
                        (_E158882158894_)))))
            (_E158881158926_)))))
    (define gx#core-expand-module-begin
      (lambda (_body158843_ _ctx158844_)
        (call-with-parameters
         (lambda ()
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_stx158847_
                   (gx#core-expand-head (cons '%%begin-module _body158843_)))
                  (_e158848158855_ _stx158847_)
                  (_E158850158859_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _stx158847_)))
                  (_E158849158873_
                   (lambda ()
                     (if (gx#stx-pair? _e158848158855_)
                         (let ((_e158851158863_ (gx#syntax-e _e158848158855_)))
                           (let ((_hd158852158866_ (##car _e158851158863_))
                                 (_tl158853158868_ (##cdr _e158851158863_)))
                             (if (and (gx#identifier? _hd158852158866_)
                                      (gx#core-identifier=?
                                       _hd158852158866_
                                       '%#begin-module))
                                 (let ((_body158871_ _tl158853158868_))
                                   (if '#t
                                       (if (gx#sealed-syntax? _stx158847_)
                                           _body158871_
                                           (gx#core-expand-module-body
                                            _body158871_))
                                       (_E158850158859_)))
                                 (_E158850158859_))))
                         (_E158850158859_)))))
             (_E158849158873_)))
         gx#current-expander-context
         _ctx158844_
         gx#current-expander-phi
         '0)))
    (define gx#core-expand-module-body
      (lambda (_body158639_)
        (letrec ((_expand-special158641_
                  (lambda (_hd158770_ _K158771_ _rest158772_ _r158773_)
                    (let* ((_e158774158791_ _hd158770_)
                           (_E158786158795_
                            (lambda ()
                              (_K158771_
                               _rest158772_
                               (cons (gx#core-expand-top _hd158770_)
                                     _r158773_))))
                           (_E158776158807_
                            (lambda ()
                              (if (gx#stx-pair? _e158774158791_)
                                  (let ((_e158787158799_
                                         (gx#syntax-e _e158774158791_)))
                                    (let ((_hd158788158802_
                                           (##car _e158787158799_))
                                          (_tl158789158804_
                                           (##cdr _e158787158799_)))
                                      (if (and (gx#identifier?
                                                _hd158788158802_)
                                               (gx#core-identifier=?
                                                _hd158788158802_
                                                '%#export))
                                          (if '#t
                                              (_K158771_
                                               _rest158772_
                                               (cons _hd158770_ _r158773_))
                                              (_E158786158795_))
                                          (_E158786158795_))))
                                  (_E158786158795_))))
                           (_E158775158839_
                            (lambda ()
                              (if (gx#stx-pair? _e158774158791_)
                                  (let ((_e158777158811_
                                         (gx#syntax-e _e158774158791_)))
                                    (let ((_hd158778158814_
                                           (##car _e158777158811_))
                                          (_tl158779158816_
                                           (##cdr _e158777158811_)))
                                      (if (and (gx#identifier?
                                                _hd158778158814_)
                                               (gx#core-identifier=?
                                                _hd158778158814_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl158779158816_)
                                              (let ((_e158780158819_
                                                     (gx#syntax-e
                                                      _tl158779158816_)))
                                                (let ((_hd158781158822_
                                                       (##car _e158780158819_))
                                                      (_tl158782158824_
                                                       (##cdr _e158780158819_)))
                                                  (let ((_hd-bind158827_
                                                         _hd158781158822_))
                                                    (if (gx#stx-pair?
                                                         _tl158782158824_)
                                                        (let ((_e158783158829_
                                                               (gx#syntax-e
                                                                _tl158782158824_)))
                                                          (let ((_hd158784158832_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e158783158829_))
                        (_tl158785158834_ (##cdr _e158783158829_)))
                    (let ((_expr158837_ _hd158784158832_))
                      (if (gx#stx-null? _tl158785158834_)
                          (if (gx#core-bind-values? _hd-bind158827_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind158827_)
                                (_K158771_
                                 _rest158772_
                                 (cons _hd158770_ _r158773_)))
                              (_E158776158807_))
                          (_E158776158807_)))))
                (_E158776158807_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E158776158807_))
                                          (_E158776158807_))))
                                  (_E158776158807_)))))
                      (_E158775158839_))))
                 (_expand-body158642_
                  (lambda (_rbody158644_)
                    (let _lp158646_ ((_rest158648_ _rbody158644_)
                                     (_body158649_ '()))
                      (let* ((_rest158650158658_ _rest158648_)
                             (_else158652158666_ (lambda () _body158649_))
                             (_K158654158758_
                              (lambda (_rest158669_ _hd158670_)
                                (let* ((_e158671158692_ _hd158670_)
                                       (_E158687158696_
                                        (lambda ()
                                          (_lp158646_
                                           _rest158669_
                                           (cons (gx#core-expand-expression
                                                  _hd158670_)
                                                 _body158649_))))
                                       (_E158683158710_
                                        (lambda ()
                                          (if (gx#stx-pair? _e158671158692_)
                                              (let ((_e158688158700_
                                                     (gx#syntax-e
                                                      _e158671158692_)))
                                                (let ((_hd158689158703_
                                                       (##car _e158688158700_))
                                                      (_tl158690158705_
                                                       (##cdr _e158688158700_)))
                                                  (let ((_form158708_
                                                         _hd158689158703_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _form158708_
                                                         gx#special-form-binding?)
                                                        (_lp158646_
                                                         _rest158669_
                                                         (cons _hd158670_
                                                               _body158649_))
                                                        (_E158687158696_)))))
                                              (_E158687158696_))))
                                       (_E158673158722_
                                        (lambda ()
                                          (if (gx#stx-pair? _e158671158692_)
                                              (let ((_e158684158714_
                                                     (gx#syntax-e
                                                      _e158671158692_)))
                                                (let ((_hd158685158717_
                                                       (##car _e158684158714_))
                                                      (_tl158686158719_
                                                       (##cdr _e158684158714_)))
                                                  (if (and (gx#identifier?
                                                            _hd158685158717_)
                                                           (gx#core-identifier=?
                                                            _hd158685158717_
                                                            '%#export))
                                                      (if '#t
                                                          (_lp158646_
                                                           _rest158669_
                                                           (cons (gx#core-expand-export%__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd158670_)
                         _body158649_))
                  (_E158683158710_))
              (_E158683158710_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E158683158710_))))
                                       (_E158672158754_
                                        (lambda ()
                                          (if (gx#stx-pair? _e158671158692_)
                                              (let ((_e158674158726_
                                                     (gx#syntax-e
                                                      _e158671158692_)))
                                                (let ((_hd158675158729_
                                                       (##car _e158674158726_))
                                                      (_tl158676158731_
                                                       (##cdr _e158674158726_)))
                                                  (if (and (gx#identifier?
                                                            _hd158675158729_)
                                                           (gx#core-identifier=?
                                                            _hd158675158729_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl158676158731_)
                                                          (let ((_e158677158734_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl158676158731_)))
                    (let ((_hd158678158737_ (##car _e158677158734_))
                          (_tl158679158739_ (##cdr _e158677158734_)))
                      (let ((_hd-bind158742_ _hd158678158737_))
                        (if (gx#stx-pair? _tl158679158739_)
                            (let ((_e158680158744_
                                   (gx#syntax-e _tl158679158739_)))
                              (let ((_hd158681158747_ (##car _e158680158744_))
                                    (_tl158682158749_ (##cdr _e158680158744_)))
                                (let ((_expr158752_ _hd158681158747_))
                                  (if (gx#stx-null? _tl158682158749_)
                                      (if '#t
                                          (_lp158646_
                                           _rest158669_
                                           (cons (gx#core-quote-syntax__1
                                                  (gx#core-list
                                                   '%#define-values
                                                   (gx#core-quote-bind-values
                                                    _hd-bind158742_)
                                                   (gx#core-expand-expression
                                                    _expr158752_))
                                                  (gx#stx-source _hd158670_))
                                                 _body158649_))
                                          (_E158673158722_))
                                      (_E158673158722_)))))
                            (_E158673158722_)))))
                  (_E158673158722_))
              (_E158673158722_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E158673158722_)))))
                                  (_E158672158754_)))))
                        (if (##pair? _rest158650158658_)
                            (let ((_hd158655158761_ (##car _rest158650158658_))
                                  (_tl158656158763_
                                   (##cdr _rest158650158658_)))
                              (let* ((_hd158766_ _hd158655158761_)
                                     (_rest158768_ _tl158656158763_))
                                (_K158654158758_ _rest158768_ _hd158766_)))
                            (_else158652158666_)))))))
          (_expand-body158642_
           (gx#core-expand-block__%
            (cons '%#begin-module _body158639_)
            _expand-special158641_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_stx158482_
               _expanded?158483_
               _method158484_
               _current-phi158485_
               _expand1158486_)
        (letrec ((_K158488_
                  (lambda (_rest158606_ _r158607_)
                    (let* ((_e158608158615_ _rest158606_)
                           (_E158610158619_ (lambda () _r158607_))
                           (_E158609158635_
                            (lambda ()
                              (if (gx#stx-pair? _e158608158615_)
                                  (let ((_e158611158623_
                                         (gx#syntax-e _e158608158615_)))
                                    (let ((_hd158612158626_
                                           (##car _e158611158623_))
                                          (_tl158613158628_
                                           (##cdr _e158611158623_)))
                                      (let* ((_hd158631_ _hd158612158626_)
                                             (_rest158633_ _tl158613158628_))
                                        (if '#t
                                            (_step158489_
                                             _hd158631_
                                             _rest158633_
                                             _r158607_)
                                            (_E158610158619_)))))
                                  (_E158610158619_)))))
                      (_E158609158635_))))
                 (_step158489_
                  (lambda (_hd158520_ _rest158521_ _r158522_)
                    (let* ((_e158523158541_ _hd158520_)
                           (_E158536158545_
                            (lambda ()
                              (if (_expanded?158483_ (gx#stx-e _hd158520_))
                                  (_K158488_
                                   _rest158521_
                                   (cons (gx#stx-e _hd158520_) _r158522_))
                                  (_expand1158486_
                                   _hd158520_
                                   _K158488_
                                   _rest158521_
                                   _r158522_))))
                           (_E158532158561_
                            (lambda ()
                              (if (gx#stx-pair? _e158523158541_)
                                  (let ((_e158537158549_
                                         (gx#syntax-e _e158523158541_)))
                                    (let ((_hd158538158552_
                                           (##car _e158537158549_))
                                          (_tl158539158554_
                                           (##cdr _e158537158549_)))
                                      (let* ((_macro158557_ _hd158538158552_)
                                             (_body158559_ _tl158539158554_))
                                        (if (gx#core-bound-identifier?__%
                                             _macro158557_
                                             gx#syntax-binding?)
                                            (_K158488_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _macro158557_)
                                                    _hd158520_
                                                    _method158484_)
                                                   _rest158521_)
                                             _r158522_)
                                            (_E158536158545_)))))
                                  (_E158536158545_))))
                           (_E158525158575_
                            (lambda ()
                              (if (gx#stx-pair? _e158523158541_)
                                  (let ((_e158533158565_
                                         (gx#syntax-e _e158523158541_)))
                                    (let ((_hd158534158568_
                                           (##car _e158533158565_))
                                          (_tl158535158570_
                                           (##cdr _e158533158565_)))
                                      (if (eq? (gx#stx-e _hd158534158568_)
                                               'begin:)
                                          (let ((_body158573_
                                                 _tl158535158570_))
                                            (if '#t
                                                (_K158488_
                                                 (gx#stx-foldr
                                                  cons
                                                  _rest158521_
                                                  _body158573_)
                                                 _r158522_)
                                                (_E158532158561_)))
                                          (_E158532158561_))))
                                  (_E158532158561_))))
                           (_E158524158602_
                            (lambda ()
                              (if (gx#stx-pair? _e158523158541_)
                                  (let ((_e158526158579_
                                         (gx#syntax-e _e158523158541_)))
                                    (let ((_hd158527158582_
                                           (##car _e158526158579_))
                                          (_tl158528158584_
                                           (##cdr _e158526158579_)))
                                      (if (eq? (gx#stx-e _hd158527158582_)
                                               'phi:)
                                          (if (gx#stx-pair? _tl158528158584_)
                                              (let ((_e158529158587_
                                                     (gx#syntax-e
                                                      _tl158528158584_)))
                                                (let ((_hd158530158590_
                                                       (##car _e158529158587_))
                                                      (_tl158531158592_
                                                       (##cdr _e158529158587_)))
                                                  (let* ((_dphi158595_
                                                          _hd158530158590_)
                                                         (_body158597_
                                                          _tl158531158592_))
                                                    (if (gx#stx-fixnum?
                                                         _dphi158595_)
                                                        (let ((_rbody158600_
                                                               (call-with-parameters
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_K158488_ _body158597_ '()))
                        _current-phi158485_
                        (fx+ (gx#stx-e _dphi158595_) (_current-phi158485_)))))
                  (_K158488_
                   _rest158521_
                   (foldr1 cons _r158522_ _rbody158600_)))
                (_E158525158575_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E158525158575_))
                                          (_E158525158575_))))
                                  (_E158525158575_)))))
                      (_E158524158602_)))))
          (let* ((_e158490158497_ _stx158482_)
                 (_E158492158501_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e158490158497_)))
                 (_E158491158516_
                  (lambda ()
                    (if (gx#stx-pair? _e158490158497_)
                        (let ((_e158493158505_ (gx#syntax-e _e158490158497_)))
                          (let ((_hd158494158508_ (##car _e158493158505_))
                                (_tl158495158510_ (##cdr _e158493158505_)))
                            (let ((_body158513_ _tl158495158510_))
                              (if '#t
                                  (if (_current-phi158485_)
                                      (_K158488_ _body158513_ '())
                                      (call-with-parameters
                                       (lambda () (_K158488_ _body158513_ '()))
                                       _current-phi158485_
                                       (gx#current-expander-phi)))
                                  (_E158492158501_)))))
                        (_E158492158501_)))))
            (_E158491158516_)))))
    (define gx#core-expand-import%__%
      (lambda (_stx158149_ _internal-expand?158150_)
        (letrec ((_expand1158152_
                  (lambda (_hd158462_ _K158463_ _rest158464_ _r158465_)
                    (if (gx#core-bound-module? _hd158462_)
                        (_import1158153_
                         (gx#syntax-local-e__0 _hd158462_)
                         _K158463_
                         _rest158464_
                         _r158465_)
                        (if (gx#core-library-module-path? _hd158462_)
                            (_import1158153_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _hd158462_))
                             _K158463_
                             _rest158464_
                             _r158465_)
                            (if (gx#core-library-relative-module-path?
                                 _hd158462_)
                                (_import1158153_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _hd158462_))
                                 _K158463_
                                 _rest158464_
                                 _r158465_)
                                (let ((_e158467_ (gx#stx-e _hd158462_)))
                                  (if (pair? _e158467_)
                                      (let ((_$e158469_
                                             (gx#stx-e (car _e158467_))))
                                        (if (eq? 'spec: _$e158469_)
                                            (_import-spec158156_
                                             _hd158462_
                                             _K158463_
                                             _rest158464_
                                             _r158465_)
                                            (if (eq? 'in: _$e158469_)
                                                (_import-submodule158154_
                                                 _hd158462_
                                                 _K158463_
                                                 _rest158464_
                                                 _r158465_)
                                                (if (eq? 'runtime: _$e158469_)
                                                    (_import-runtime158155_
                                                     _hd158462_
                                                     _K158463_
                                                     _rest158464_
                                                     _r158465_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _stx158149_
                                                     _hd158462_)))))
                                      (if (string? _e158467_)
                                          (_import1158153_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _hd158462_
                                             (gx#stx-source _stx158149_)))
                                           _K158463_
                                           _rest158464_
                                           _r158465_)
                                          (if (##structure-instance-of?
                                               _e158467_
                                               'gx#module-context::t)
                                              (_K158463_
                                               _rest158464_
                                               (cons _e158467_ _r158465_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _stx158149_
                                               _hd158462_))))))))))
                 (_import1158153_
                  (lambda (_ctx158451_ _K158452_ _rest158453_ _r158454_)
                    (let ((_dphi158456_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_K158452_
                       _rest158453_
                       (cons (##structure
                              gx#import-set::t
                              _ctx158451_
                              _dphi158456_
                              (map (lambda (_g158457158459_)
                                     (gx#core-module-export->import__%
                                      _g158457158459_
                                      '#f
                                      _dphi158456_))
                                   (##unchecked-structure-ref
                                    _ctx158451_
                                    '9
                                    gx#module-context::t
                                    '#f)))
                             _r158454_)))))
                 (_import-submodule158154_
                  (lambda (_hd158418_ _K158419_ _rest158420_ _r158421_)
                    (let* ((_e158422158429_ _hd158418_)
                           (_E158424158433_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e158422158429_)))
                           (_E158423158447_
                            (lambda ()
                              (if (gx#stx-pair? _e158422158429_)
                                  (let ((_e158425158437_
                                         (gx#syntax-e _e158422158429_)))
                                    (let ((_hd158426158440_
                                           (##car _e158425158437_))
                                          (_tl158427158442_
                                           (##cdr _e158425158437_)))
                                      (let ((_spath158445_ _tl158427158442_))
                                        (if '#t
                                            (_import1158153_
                                             (_import-spec-source158157_
                                              _spath158445_)
                                             _K158419_
                                             _rest158420_
                                             _r158421_)
                                            (_E158424158433_)))))
                                  (_E158424158433_)))))
                      (_E158423158447_))))
                 (_import-runtime158155_
                  (lambda (_hd158385_ _K158386_ _rest158387_ _r158388_)
                    (let* ((_e158389158396_ _hd158385_)
                           (_E158391158400_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e158389158396_)))
                           (_E158390158414_
                            (lambda ()
                              (if (gx#stx-pair? _e158389158396_)
                                  (let ((_e158392158404_
                                         (gx#syntax-e _e158389158396_)))
                                    (let ((_hd158393158407_
                                           (##car _e158392158404_))
                                          (_tl158394158409_
                                           (##cdr _e158392158404_)))
                                      (let ((_spath158412_ _tl158394158409_))
                                        (if '#t
                                            (_K158386_
                                             _rest158387_
                                             (cons (_import-spec-source158157_
                                                    _spath158412_)
                                                   _r158388_))
                                            (_E158391158400_)))))
                                  (_E158391158400_)))))
                      (_E158390158414_))))
                 (_import-spec158156_
                  (lambda (_hd158224_ _K158225_ _rest158226_ _r158227_)
                    (let* ((_e158228158245_ _hd158224_)
                           (_E158237158249_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e158228158245_)))
                           (_E158230158359_
                            (lambda ()
                              (if (gx#stx-pair? _e158228158245_)
                                  (let ((_e158238158253_
                                         (gx#syntax-e _e158228158245_)))
                                    (let ((_hd158239158256_
                                           (##car _e158238158253_))
                                          (_tl158240158258_
                                           (##cdr _e158238158253_)))
                                      (if (gx#stx-pair? _tl158240158258_)
                                          (let ((_e158241158261_
                                                 (gx#syntax-e
                                                  _tl158240158258_)))
                                            (let ((_hd158242158264_
                                                   (##car _e158241158261_))
                                                  (_tl158243158266_
                                                   (##cdr _e158241158261_)))
                                              (let* ((_path158269_
                                                      _hd158242158264_)
                                                     (_specs158271_
                                                      _tl158243158266_))
                                                (if '#t
                                                    (let ((_src-ctx158273_
                                                           (_import-spec-source158157_
                                                            _path158269_))
                                                          (_exports158274_
                                                           (make-table))
                                                          (_specs158275_
                                                           (gx#syntax->list
                                                            _specs158271_)))
                                                      (for-each
                                                       (lambda (_out158277_)
                                                         (table-set!
                                                          _exports158274_
                                                          (cons (##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _out158277_
                         '3
                         gx#module-export::t
                         '#f)
                        (##unchecked-structure-ref
                         _out158277_
                         '4
                         gx#module-export::t
                         '#f))
                  _out158277_))
               (##unchecked-structure-ref
                _src-ctx158273_
                '9
                gx#module-context::t
                '#f))
              (_K158225_
               _rest158226_
               (foldl1 (lambda (_spec158279_ _r158280_)
                         (let* ((_e158281158297_ _spec158279_)
                                (_E158283158301_
                                 (lambda ()
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid syntax-case clause"
                                    _e158281158297_)))
                                (_E158282158355_
                                 (lambda ()
                                   (if (gx#stx-pair? _e158281158297_)
                                       (let ((_e158284158305_
                                              (gx#syntax-e _e158281158297_)))
                                         (let ((_hd158285158308_
                                                (##car _e158284158305_))
                                               (_tl158286158310_
                                                (##cdr _e158284158305_)))
                                           (let ((_phi158313_
                                                  _hd158285158308_))
                                             (if (gx#stx-pair?
                                                  _tl158286158310_)
                                                 (let ((_e158287158315_
                                                        (gx#syntax-e
                                                         _tl158286158310_)))
                                                   (let ((_hd158288158318_
                                                          (##car _e158287158315_))
                                                         (_tl158289158320_
                                                          (##cdr _e158287158315_)))
                                                     (let ((_name158323_
                                                            _hd158288158318_))
                                                       (if (gx#stx-pair?
                                                            _tl158289158320_)
                                                           (let ((_e158290158325_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl158289158320_)))
                     (let ((_hd158291158328_ (##car _e158290158325_))
                           (_tl158292158330_ (##cdr _e158290158325_)))
                       (let ((_src-phi158333_ _hd158291158328_))
                         (if (gx#stx-pair? _tl158292158330_)
                             (let ((_e158293158335_
                                    (gx#syntax-e _tl158292158330_)))
                               (let ((_hd158294158338_ (##car _e158293158335_))
                                     (_tl158295158340_
                                      (##cdr _e158293158335_)))
                                 (let ((_src-name158343_ _hd158294158338_))
                                   (if (gx#stx-null? _tl158295158340_)
                                       (if (and (gx#stx-fixnum?
                                                 _src-phi158333_)
                                                (gx#identifier?
                                                 _src-name158343_)
                                                (gx#stx-fixnum? _phi158313_)
                                                (gx#identifier? _name158323_))
                                           (let ((_src-phi158345_
                                                  (gx#stx-e _src-phi158333_))
                                                 (_src-name158346_
                                                  (gx#core-identifier-key
                                                   _src-name158343_))
                                                 (_phi158347_
                                                  (gx#stx-e _phi158313_))
                                                 (_name158348_
                                                  (gx#core-identifier-key
                                                   _name158323_)))
                                             (let ((_$e158350_
                                                    (table-ref
                                                     _exports158274_
                                                     (cons _src-phi158345_
                                                           _src-name158346_)
                                                     '#f)))
                                               (if _$e158350_
                                                   ((lambda (_out158353_)
                                                      (cons (gx#core-module-export->import__%
                                                             _out158353_
                                                             _name158348_
                                                             (fx- _phi158347_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _src-phi158345_))
                    _r158280_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _$e158350_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; no matching export"
                                                    _stx158149_
                                                    _hd158224_))))
                                           (_E158283158301_))
                                       (_E158283158301_)))))
                             (_E158283158301_)))))
                   (_E158283158301_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E158283158301_)))))
                                       (_E158283158301_)))))
                           (_E158282158355_)))
                       _r158227_
                       _specs158275_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E158237158249_)))))
                                          (_E158237158249_))))
                                  (_E158237158249_))))
                           (_E158229158381_
                            (lambda ()
                              (if (gx#stx-pair? _e158228158245_)
                                  (let ((_e158231158363_
                                         (gx#syntax-e _e158228158245_)))
                                    (let ((_hd158232158366_
                                           (##car _e158231158363_))
                                          (_tl158233158368_
                                           (##cdr _e158231158363_)))
                                      (if (gx#stx-pair? _tl158233158368_)
                                          (let ((_e158234158371_
                                                 (gx#syntax-e
                                                  _tl158233158368_)))
                                            (let ((_hd158235158374_
                                                   (##car _e158234158371_))
                                                  (_tl158236158376_
                                                   (##cdr _e158234158371_)))
                                              (let ((_path158379_
                                                     _hd158235158374_))
                                                (if (gx#stx-null?
                                                     _tl158236158376_)
                                                    (if '#t
                                                        (_K158225_
                                                         _rest158226_
                                                         (cons (_import-spec-source158157_
                                                                _path158379_)
                                                               _r158227_))
                                                        (_E158230158359_))
                                                    (_E158230158359_)))))
                                          (_E158230158359_))))
                                  (_E158230158359_)))))
                      (_E158229158381_))))
                 (_import-spec-source158157_
                  (lambda (_spath158222_)
                    (gx#core-import-nested-module _spath158222_ _stx158149_)))
                 (_import!158158_
                  (lambda (_rbody158171_)
                    (letrec* ((_current-ctx158173_
                               (gx#current-expander-context))
                              (_deps158174_ (make-table 'test: eq?))
                              (_bind!158175_
                               (lambda (_hd158220_)
                                 (gx#core-bind-import!__1
                                  _hd158220_
                                  _current-ctx158173_))))
                      (let _lp158177_ ((_rest158179_ _rbody158171_)
                                       (_body158180_ '()))
                        (let* ((_rest158181158189_ _rest158179_)
                               (_else158183158199_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _current-ctx158173_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _current-ctx158173_
                                       (foldl1 cons
                                               (##unchecked-structure-ref
                                                _current-ctx158173_
                                                '8
                                                gx#module-context::t
                                                '#f)
                                               _body158180_)
                                       '8
                                       gx#module-context::t
                                       '#f)
                                      '#!void)
                                  (table-for-each
                                   (lambda (_ctx158197_ _g165495_)
                                     (gx#eval-module _ctx158197_))
                                   _deps158174_)
                                  _body158180_))
                               (_K158185158208_
                                (lambda (_rest158202_ _hd158203_)
                                  (if (##structure-direct-instance-of?
                                       _hd158203_
                                       'gx#module-import::t)
                                      (begin
                                        (_bind!158175_ _hd158203_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _hd158203_
                                                   '3
                                                   gx#module-import::t
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _hd158203_
                                                            '1
                                                            gx#module-import::t
                                                            '#f)
                                                           '3
                                                           gx#module-export::t
                                                           '#f)))
                                            (table-set!
                                             _deps158174_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _hd158203_
                                               '1
                                               gx#module-import::t
                                               '#f)
                                              '1
                                              gx#module-export::t
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _hd158203_
                                           'gx#import-set::t)
                                          (begin
                                            (for-each
                                             _bind!158175_
                                             (##unchecked-structure-ref
                                              _hd158203_
                                              '3
                                              gx#import-set::t
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _hd158203_
                                                  '2
                                                  gx#import-set::t
                                                  '#f))
                                                (table-set!
                                                 _deps158174_
                                                 (##unchecked-structure-ref
                                                  _hd158203_
                                                  '1
                                                  gx#import-set::t
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_$e158205_
                                                 (##structure-instance-of?
                                                  _hd158203_
                                                  'gx#module-context::t)))
                                            (if _$e158205_
                                                _$e158205_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _stx158149_
                                                 _hd158203_)))))
                                  (_lp158177_
                                   _rest158202_
                                   (cons _hd158203_ _body158180_)))))
                          (if (##pair? _rest158181158189_)
                              (let ((_hd158186158211_
                                     (##car _rest158181158189_))
                                    (_tl158187158213_
                                     (##cdr _rest158181158189_)))
                                (let* ((_hd158216_ _hd158186158211_)
                                       (_rest158218_ _tl158187158213_))
                                  (_K158185158208_ _rest158218_ _hd158216_)))
                              (_else158183158199_)))))))
                 (_expanded-import?158159_
                  (lambda (_e158163_)
                    (let ((_$e158165_
                           (##structure-direct-instance-of?
                            _e158163_
                            'gx#import-set::t)))
                      (if _$e158165_
                          _$e158165_
                          (let ((_$e158168_
                                 (##structure-direct-instance-of?
                                  _e158163_
                                  'gx#module-import::t)))
                            (if _$e158168_
                                _$e158168_
                                (##structure-instance-of?
                                 _e158163_
                                 'gx#module-context::t))))))))
          (let ((_rbody158161_
                 (gx#core-expand-import/export
                  _stx158149_
                  _expanded-import?158159_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _expand1158152_)))
            (if _internal-expand?158150_
                (reverse _rbody158161_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_import!158158_ _rbody158161_))
                 (gx#stx-source _stx158149_)))))))
    (define gx#core-expand-import%__0
      (lambda (_stx158475_)
        (let ((_internal-expand?158477_ '#f))
          (gx#core-expand-import%__% _stx158475_ _internal-expand?158477_))))
    (define gx#core-expand-import%
      (lambda _g165497_
        (let ((_g165496_ (##length _g165497_)))
          (cond ((##fx= _g165496_ 1)
                 (apply (lambda (_stx158475_)
                          (gx#core-expand-import%__0 _stx158475_))
                        _g165497_))
                ((##fx= _g165496_ 2)
                 (apply (lambda (_stx158479_ _internal-expand?158480_)
                          (gx#core-expand-import%__%
                           _stx158479_
                           _internal-expand?158480_))
                        _g165497_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g165497_))))))
    (define gx#core-import-nested-module
      (lambda (_spath158076_ _where158077_)
        (let* ((_e158078158085_ _spath158076_)
               (_E158080158089_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e158078158085_)))
               (_E158079158144_
                (lambda ()
                  (if (gx#stx-pair? _e158078158085_)
                      (let ((_e158081158093_ (gx#syntax-e _e158078158085_)))
                        (let ((_hd158082158096_ (##car _e158081158093_))
                              (_tl158083158098_ (##cdr _e158081158093_)))
                          (let* ((_origin158101_ _hd158082158096_)
                                 (_sub158103_ _tl158083158098_))
                            (if '#t
                                (let ((_origin-ctx158105_
                                       (if (gx#stx-false? _origin158101_)
                                           (gx#current-expander-context)
                                           (gx#import-module__0
                                            _origin158101_))))
                                  (let _lp158107_ ((_rest158109_ _sub158103_)
                                                   (_ctx158110_
                                                    _origin-ctx158105_))
                                    (let* ((_e158111158118_ _rest158109_)
                                           (_E158113158122_
                                            (lambda () _ctx158110_))
                                           (_E158112158140_
                                            (lambda ()
                                              (if (gx#stx-pair?
                                                   _e158111158118_)
                                                  (let ((_e158114158126_
                                                         (gx#syntax-e
                                                          _e158111158118_)))
                                                    (let ((_hd158115158129_
                                                           (##car _e158114158126_))
                                                          (_tl158116158131_
                                                           (##cdr _e158114158126_)))
                                                      (let* ((_id158134_
                                                              _hd158115158129_)
                                                             (_rest158136_
                                                              _tl158116158131_))
                                                        (if '#t
                                                            (let ((_bind158138_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#resolve-identifier__%
                            _id158134_
                            '0
                            _ctx158110_)))
                      (if (and (##structure-direct-instance-of?
                                _bind158138_
                                'gx#syntax-binding::t)
                               (##structure-instance-of?
                                (##unchecked-structure-ref
                                 _bind158138_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                'gx#module-context::t))
                          '#!void
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; not bound as module"
                           _where158077_
                           _spath158076_
                           _id158134_))
                      (_lp158107_
                       _rest158136_
                       (##unchecked-structure-ref
                        _bind158138_
                        '4
                        gx#syntax-binding::t
                        '#f)))
                    (_E158113158122_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E158113158122_)))))
                                      (_E158112158140_))))
                                (_E158080158089_)))))
                      (_E158080158089_)))))
          (_E158079158144_))))
    (define gx#core-expand-import-source
      (lambda (_hd158074_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _hd158074_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_stx157582_ _internal-expand?157583_)
        (letrec* ((_make-export__165426165427_
                   (lambda (_bind158022_ _phi158023_ _ctx158024_ _name158025_)
                     (let* ((_key158027_
                             (##unchecked-structure-ref
                              _bind158022_
                              '2
                              gx#binding::t
                              '#f))
                            (_export-key158029_
                             (if _name158025_
                                 (gx#core-identifier-key _name158025_)
                                 _key158027_)))
                       (##structure
                        gx#module-export::t
                        _ctx158024_
                        _key158027_
                        _phi158023_
                        _export-key158029_
                        (let ((_$e158032_
                               (##structure-instance-of?
                                _bind158022_
                                'gx#extern-binding::t)))
                          (if _$e158032_
                              _$e158032_
                              (##structure-direct-instance-of?
                               _bind158022_
                               'gx#import-binding::t)))))))
                  (_make-export__0__165428165431_
                   (lambda (_bind158038_)
                     (let* ((_phi158040_ (gx#current-export-expander-phi))
                            (_ctx158042_ (gx#current-expander-context))
                            (_name158044_ '#f))
                       (_make-export__165426165427_
                        _bind158038_
                        _phi158040_
                        _ctx158042_
                        _name158044_))))
                  (_make-export__1__165429165432_
                   (lambda (_bind158046_ _phi158047_)
                     (let* ((_ctx158049_ (gx#current-expander-context))
                            (_name158051_ '#f))
                       (_make-export__165426165427_
                        _bind158046_
                        _phi158047_
                        _ctx158049_
                        _name158051_))))
                  (_make-export__2__165430165433_
                   (lambda (_bind158053_ _phi158054_ _ctx158055_)
                     (let ((_name158057_ '#f))
                       (_make-export__165426165427_
                        _bind158053_
                        _phi158054_
                        _ctx158055_
                        _name158057_))))
                  (_make-export157585_
                   (lambda _g165499_
                     (let ((_g165498_ (##length _g165499_)))
                       (cond ((##fx= _g165498_ 1)
                              (apply (lambda (_bind158038_)
                                       (_make-export__0__165428165431_
                                        _bind158038_))
                                     _g165499_))
                             ((##fx= _g165498_ 2)
                              (apply (lambda (_bind158046_ _phi158047_)
                                       (_make-export__1__165429165432_
                                        _bind158046_
                                        _phi158047_))
                                     _g165499_))
                             ((##fx= _g165498_ 3)
                              (apply (lambda (_bind158053_
                                              _phi158054_
                                              _ctx158055_)
                                       (_make-export__2__165430165433_
                                        _bind158053_
                                        _phi158054_
                                        _ctx158055_))
                                     _g165499_))
                             ((##fx= _g165498_ 4)
                              (apply (lambda (_bind158059_
                                              _phi158060_
                                              _ctx158061_
                                              _name158062_)
                                       (_make-export__165426165427_
                                        _bind158059_
                                        _phi158060_
                                        _ctx158061_
                                        _name158062_))
                                     _g165499_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g165499_))))))
                  (_expand1157586_
                   (lambda (_hd157735_ _K157736_ _rest157737_ _r157738_)
                     (let* ((_e157739157771_ _hd157735_)
                            (_E157766157775_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _stx157582_
                                _hd157735_)))
                            (_E157756157854_
                             (lambda ()
                               (if (gx#stx-pair? _e157739157771_)
                                   (let ((_e157767157779_
                                          (gx#syntax-e _e157739157771_)))
                                     (let ((_hd157768157782_
                                            (##car _e157767157779_))
                                           (_tl157769157784_
                                            (##cdr _e157767157779_)))
                                       (if (eq? (gx#stx-e _hd157768157782_)
                                                'import:)
                                           (let ((_in157787_ _tl157769157784_))
                                             (if (gx#stx-list? _in157787_)
                                                 (let _lp157789_ ((_in-rest157791_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _in157787_)
                          (_r157792_ _r157738_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_e157793157800_
                                                           _in-rest157791_)
                                                          (_E157795157804_
                                                           (lambda ()
                                                             (_K157736_
                                                              _rest157737_
                                                              _r157792_)))
                                                          (_E157794157850_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _e157793157800_)
                         (let ((_e157796157808_ (gx#syntax-e _e157793157800_)))
                           (let ((_hd157797157811_ (##car _e157796157808_))
                                 (_tl157798157813_ (##cdr _e157796157808_)))
                             (let* ((_hd157816_ _hd157797157811_)
                                    (_in-rest157818_ _tl157798157813_))
                               (if '#t
                                   (let ((_src157848_
                                          (if (gx#core-bound-module?
                                               _hd157816_)
                                              (gx#syntax-local-e__0 _hd157816_)
                                              (if (gx#core-library-module-path?
                                                   _hd157816_)
                                                  (gx#import-module__0
                                                   (gx#core-resolve-library-module-path
                                                    _hd157816_))
                                                  (if (gx#core-library-relative-module-path?
                                                       _hd157816_)
                                                      (gx#import-module__0
                                                       (gx#core-resolve-library-relative-module-path
                                                        _hd157816_))
                                                      (if (gx#stx-string?
                                                           _hd157816_)
                                                          (gx#import-module__0
                                                           (gx#core-resolve-module-path__%
                                                            _hd157816_
                                                            (gx#stx-source
                                                             _stx157582_)))
                                                          (let* ((_e157819157826_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd157816_)
                         (_E157821157830_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; illegal re-export"
                             _stx157582_
                             _hd157816_)))
                         (_E157820157844_
                          (lambda ()
                            (if (gx#stx-pair? _e157819157826_)
                                (let ((_e157822157834_
                                       (gx#syntax-e _e157819157826_)))
                                  (let ((_hd157823157837_
                                         (##car _e157822157834_))
                                        (_tl157824157839_
                                         (##cdr _e157822157834_)))
                                    (if (eq? (gx#stx-e _hd157823157837_) 'in:)
                                        (let ((_spath157842_ _tl157824157839_))
                                          (if '#t
                                              (gx#core-import-nested-module
                                               _spath157842_
                                               _stx157582_)
                                              (_E157821157830_)))
                                        (_E157821157830_))))
                                (_E157821157830_)))))
                    (_E157820157844_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_lp157789_
                                      _in-rest157818_
                                      (_export-imports157587_
                                       _src157848_
                                       _r157792_)))
                                   (_E157795157804_)))))
                         (_E157795157804_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E157794157850_)))
                                                 (_E157766157775_)))
                                           (_E157766157775_))))
                                   (_E157766157775_))))
                            (_E157743157893_
                             (lambda ()
                               (if (gx#stx-pair? _e157739157771_)
                                   (let ((_e157757157858_
                                          (gx#syntax-e _e157739157771_)))
                                     (let ((_hd157758157861_
                                            (##car _e157757157858_))
                                           (_tl157759157863_
                                            (##cdr _e157757157858_)))
                                       (if (eq? (gx#stx-e _hd157758157861_)
                                                'rename:)
                                           (if (gx#stx-pair? _tl157759157863_)
                                               (let ((_e157760157866_
                                                      (gx#syntax-e
                                                       _tl157759157863_)))
                                                 (let ((_hd157761157869_
                                                        (##car _e157760157866_))
                                                       (_tl157762157871_
                                                        (##cdr _e157760157866_)))
                                                   (let ((_id157874_
                                                          _hd157761157869_))
                                                     (if (gx#stx-pair?
                                                          _tl157762157871_)
                                                         (let ((_e157763157876_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl157762157871_)))
                   (let ((_hd157764157879_ (##car _e157763157876_))
                         (_tl157765157881_ (##cdr _e157763157876_)))
                     (let ((_name157884_ _hd157764157879_))
                       (if (gx#stx-null? _tl157765157881_)
                           (if '#t
                               (let* ((_phi157886_
                                       (gx#current-export-expander-phi))
                                      (_$e157888_
                                       (gx#core-resolve-identifier__1
                                        _id157874_
                                        _phi157886_)))
                                 (if _$e157888_
                                     ((lambda (_bind157891_)
                                        (_K157736_
                                         _rest157737_
                                         (cons (_make-export__165426165427_
                                                _bind157891_
                                                _phi157886_
                                                (gx#current-expander-context)
                                                _name157884_)
                                               _r157738_)))
                                      _$e157888_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Reference to unbound identifier"
                                      _stx157582_
                                      _hd157735_
                                      _id157874_)))
                               (_E157756157854_))
                           (_E157756157854_)))))
                 (_E157756157854_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E157756157854_))
                                           (_E157756157854_))))
                                   (_E157756157854_))))
                            (_E157742157942_
                             (lambda ()
                               (if (gx#stx-pair? _e157739157771_)
                                   (let ((_e157744157897_
                                          (gx#syntax-e _e157739157771_)))
                                     (let ((_hd157745157900_
                                            (##car _e157744157897_))
                                           (_tl157746157902_
                                            (##cdr _e157744157897_)))
                                       (if (eq? (gx#stx-e _hd157745157900_)
                                                'spec:)
                                           (if (gx#stx-pair? _tl157746157902_)
                                               (let ((_e157747157905_
                                                      (gx#syntax-e
                                                       _tl157746157902_)))
                                                 (let ((_hd157748157908_
                                                        (##car _e157747157905_))
                                                       (_tl157749157910_
                                                        (##cdr _e157747157905_)))
                                                   (let ((_phi157913_
                                                          _hd157748157908_))
                                                     (if (gx#stx-pair?
                                                          _tl157749157910_)
                                                         (let ((_e157750157915_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl157749157910_)))
                   (let ((_hd157751157918_ (##car _e157750157915_))
                         (_tl157752157920_ (##cdr _e157750157915_)))
                     (let ((_id157923_ _hd157751157918_))
                       (if (gx#stx-pair? _tl157752157920_)
                           (let ((_e157753157925_
                                  (gx#syntax-e _tl157752157920_)))
                             (let ((_hd157754157928_ (##car _e157753157925_))
                                   (_tl157755157930_ (##cdr _e157753157925_)))
                               (let ((_name157933_ _hd157754157928_))
                                 (if (gx#stx-null? _tl157755157930_)
                                     (if (and (gx#stx-fixnum? _phi157913_)
                                              (gx#identifier? _id157923_)
                                              (gx#identifier? _name157933_))
                                         (let* ((_phi157935_
                                                 (gx#stx-e _phi157913_))
                                                (_$e157937_
                                                 (gx#core-resolve-identifier__1
                                                  _id157923_
                                                  _phi157935_)))
                                           (if _$e157937_
                                               ((lambda (_bind157940_)
                                                  (_K157736_
                                                   _rest157737_
                                                   (cons (_make-export__165426165427_
                                                          _bind157940_
                                                          _phi157935_
                                                          (gx#current-expander-context)
                                                          _name157933_)
                                                         _r157738_)))
                                                _$e157937_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _stx157582_
                                                _hd157735_
                                                _id157923_)))
                                         (_E157743157893_))
                                     (_E157743157893_)))))
                           (_E157743157893_)))))
                 (_E157743157893_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E157743157893_))
                                           (_E157743157893_))))
                                   (_E157743157893_))))
                            (_E157741157953_
                             (lambda ()
                               (let ((_id157946_ _e157739157771_))
                                 (if (gx#identifier? _id157946_)
                                     (let ((_$e157948_
                                            (gx#core-resolve-identifier__1
                                             _id157946_
                                             (gx#current-export-expander-phi))))
                                       (if _$e157948_
                                           ((lambda (_bind157951_)
                                              (_K157736_
                                               _rest157737_
                                               (cons (_make-export__0__165428165431_
                                                      _bind157951_)
                                                     _r157738_)))
                                            _$e157948_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _stx157582_
                                            _hd157735_)))
                                     (_E157742157942_)))))
                            (_E157740158017_
                             (lambda ()
                               (if (eq? (gx#stx-e _e157739157771_) '#t)
                                   (if '#t
                                       (let* ((_current-ctx157957_
                                               (gx#current-expander-context))
                                              (_current-phi157959_
                                               (gx#current-export-expander-phi))
                                              (_phi-ctx157961_
                                               (gx#core-context-shift
                                                _current-ctx157957_
                                                _current-phi157959_))
                                              (_phi-bind157963_
                                               (table->list
                                                (##unchecked-structure-ref
                                                 _phi-ctx157961_
                                                 '2
                                                 gx#expander-context::t
                                                 '#f))))
                                         (let _lp157966_ ((_bind-rest157968_
                                                           _phi-bind157963_)
                                                          (_set157969_ '()))
                                           (let* ((_bind-rest157970157980_
                                                   _bind-rest157968_)
                                                  (_else157972157988_
                                                   (lambda ()
                                                     (_K157736_
                                                      _rest157737_
                                                      (cons (##structure
                                                             gx#export-set::t
                                                             '#f
                                                             _current-phi157959_
                                                             _set157969_)
                                                            _r157738_))))
                                                  (_K157974157998_
                                                   (lambda (_bind-rest157991_
                                                            _bind157992_
                                                            _key157993_)
                                                     (if (or (##structure-direct-instance-of?
                                                              _bind157992_
                                                              'gx#import-binding::t)
                                                             (gx#private-feature-binding?
                                                              _bind157992_))
                                                         (_lp157966_
                                                          _bind-rest157991_
                                                          _set157969_)
                                                         (_lp157966_
                                                          _bind-rest157991_
                                                          (cons (_make-export__2__165430165433_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind157992_
                         _current-phi157959_
                         _current-ctx157957_)
                        _set157969_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _bind-rest157970157980_)
                                                 (let ((_hd157975158001_
                                                        (##car _bind-rest157970157980_))
                                                       (_tl157976158003_
                                                        (##cdr _bind-rest157970157980_)))
                                                   (if (##pair? _hd157975158001_)
                                                       (let ((_hd157977158006_
                                                              (##car _hd157975158001_))
                                                             (_tl157978158008_
                                                              (##cdr _hd157975158001_)))
                                                         (let* ((_key158011_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd157977158006_)
                        (_bind158013_ _tl157978158008_)
                        (_bind-rest158015_ _tl157976158003_))
                   (_K157974157998_
                    _bind-rest158015_
                    _bind158013_
                    _key158011_)))
               (_else157972157988_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_else157972157988_)))))
                                       (_E157741157953_))
                                   (_E157741157953_)))))
                       (_E157740158017_))))
                  (_export-imports157587_
                   (lambda (_src157611_ _r157612_)
                     (letrec* ((_current-ctx157614_
                                (gx#current-expander-context))
                               (_current-phi157615_
                                (gx#current-export-expander-phi))
                               (_import->export157616_
                                (lambda (_in157697_)
                                  (let* ((_in157698157706_ _in157697_)
                                         (_E157700157710_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _in157698157706_)))
                                         (_K157701157717_
                                          (lambda (_phi157713_
                                                   _key157714_
                                                   _out157715_)
                                            (##structure
                                             gx#module-export::t
                                             _current-ctx157614_
                                             _key157714_
                                             _phi157713_
                                             _key157714_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _in157698157706_
                                         'gx#module-import::t)
                                        (let* ((_e157702157720_
                                                (##unchecked-structure-ref
                                                 _in157698157706_
                                                 '1
                                                 gx#module-import::t
                                                 '#f))
                                               (_out157723_ _e157702157720_)
                                               (_e157703157725_
                                                (##unchecked-structure-ref
                                                 _in157698157706_
                                                 '2
                                                 gx#module-import::t
                                                 '#f))
                                               (_key157728_ _e157703157725_)
                                               (_e157704157730_
                                                (##unchecked-structure-ref
                                                 _in157698157706_
                                                 '3
                                                 gx#module-import::t
                                                 '#f))
                                               (_phi157733_ _e157704157730_))
                                          (_K157701157717_
                                           _phi157733_
                                           _key157728_
                                           _out157723_))
                                        (_E157700157710_)))))
                               (_fold-e157617_
                                (lambda (_in157619_ _r157620_)
                                  (let* ((_in157621157635_ _in157619_)
                                         (_else157624157643_
                                          (lambda () _r157620_)))
                                    (let ((_K157630157679_
                                           (lambda (_phi157675_
                                                    _key157676_
                                                    _out157677_)
                                             (if (and (fx= _phi157675_
                                                           _current-phi157615_)
                                                      (eq? _src157611_
                                                           (##unchecked-structure-ref
                                                            _out157677_
                                                            '1
                                                            gx#module-export::t
                                                            '#f)))
                                                 (cons (_import->export157616_
                                                        _in157619_)
                                                       _r157620_)
                                                 _r157620_)))
                                          (_K157626157654_
                                           (lambda (_imports157647_
                                                    _phi157648_
                                                    _ctx157649_)
                                             (if (and (fx= _phi157648_
                                                           _current-phi157615_)
                                                      (eq? _src157611_
                                                           _ctx157649_))
                                                 (foldl1 (lambda (_in157651_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r157652_)
                   (cons (_import->export157616_ _in157651_) _r157652_))
                 _r157620_
                 _imports157647_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _r157620_))))
                                      (let ((_try-match157623157672_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _in157621157635_
                                                    'gx#import-set::t)
                                                   (let* ((_e157627157657_
                                                           (##unchecked-structure-ref
                                                            _in157621157635_
                                                            '1
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e157628157662_
                                                           (##unchecked-structure-ref
                                                            _in157621157635_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e157629157667_
                                                           (##unchecked-structure-ref
                                                            _in157621157635_
                                                            '3
                                                            gx#import-set::t
                                                            '#f)))
                                                     (let ((_ctx157660_
                                                            _e157627157657_)
                                                           (_phi157665_
                                                            _e157628157662_)
                                                           (_imports157670_
                                                            _e157629157667_))
                                                       (_K157626157654_
                                                        _imports157670_
                                                        _phi157665_
                                                        _ctx157660_)))
                                                   (_else157624157643_)))))
                                        (if (##structure-direct-instance-of?
                                             _in157621157635_
                                             'gx#module-import::t)
                                            (let* ((_e157631157682_
                                                    (##unchecked-structure-ref
                                                     _in157621157635_
                                                     '1
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e157632157687_
                                                    (##unchecked-structure-ref
                                                     _in157621157635_
                                                     '2
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e157633157692_
                                                    (##unchecked-structure-ref
                                                     _in157621157635_
                                                     '3
                                                     gx#module-import::t
                                                     '#f)))
                                              (let ((_out157685_
                                                     _e157631157682_)
                                                    (_key157690_
                                                     _e157632157687_)
                                                    (_phi157695_
                                                     _e157633157692_))
                                                (_K157630157679_
                                                 _phi157695_
                                                 _key157690_
                                                 _out157685_)))
                                            (_try-match157623157672_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _src157611_
                              _current-phi157615_
                              (foldl1 _fold-e157617_
                                      '()
                                      (##unchecked-structure-ref
                                       _current-ctx157614_
                                       '8
                                       gx#module-context::t
                                       '#f)))
                             _r157612_))))
                  (_export!157588_
                   (lambda (_rbody157601_)
                     (letrec* ((_current-ctx157603_
                                (gx#current-expander-context))
                               (_fold-e157604_
                                (lambda (_out157608_ _r157609_)
                                  (if (##structure-direct-instance-of?
                                       _out157608_
                                       'gx#module-export::t)
                                      (cons _out157608_ _r157609_)
                                      (if (##structure-direct-instance-of?
                                           _out157608_
                                           'gx#export-set::t)
                                          (foldl1 cons
                                                  _r157609_
                                                  (##unchecked-structure-ref
                                                   _out157608_
                                                   '3
                                                   gx#export-set::t
                                                   '#f))
                                          _r157609_)))))
                       (let ((_body157606_ (reverse _rbody157601_)))
                         (##unchecked-structure-set!
                          _current-ctx157603_
                          (foldl1 _fold-e157604_
                                  (##unchecked-structure-ref
                                   _current-ctx157603_
                                   '9
                                   gx#module-context::t
                                   '#f)
                                  _body157606_)
                          '9
                          gx#module-context::t
                          '#f)
                         _body157606_))))
                  (_expanded-export?157589_
                   (lambda (_e157596_)
                     (let ((_$e157598_
                            (##structure-direct-instance-of?
                             _e157596_
                             'gx#module-export::t)))
                       (if _$e157598_
                           _$e157598_
                           (##structure-direct-instance-of?
                            _e157596_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _internal-expand?157583_)
              (let ((_rbody157594_
                     (gx#core-expand-import/export
                      _stx157582_
                      _expanded-export?157589_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _expand1157586_)))
                (if _internal-expand?157583_
                    (reverse _rbody157594_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons '%#export (_export!157588_ _rbody157594_))
                     (gx#stx-source _stx157582_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _stx157582_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _stx157582_))))))
    (define gx#core-expand-export%__0
      (lambda (_stx158067_)
        (let ((_internal-expand?158069_ '#f))
          (gx#core-expand-export%__% _stx158067_ _internal-expand?158069_))))
    (define gx#core-expand-export%
      (lambda _g165501_
        (let ((_g165500_ (##length _g165501_)))
          (cond ((##fx= _g165500_ 1)
                 (apply (lambda (_stx158067_)
                          (gx#core-expand-export%__0 _stx158067_))
                        _g165501_))
                ((##fx= _g165500_ 2)
                 (apply (lambda (_stx158071_ _internal-expand?158072_)
                          (gx#core-expand-export%__%
                           _stx158071_
                           _internal-expand?158072_))
                        _g165501_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g165501_))))))
    (define gx#core-expand-export-source
      (lambda (_hd157579_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _hd157579_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_stx157549_)
        (let* ((_e157550157557_ _stx157549_)
               (_E157552157561_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e157550157557_)))
               (_E157551157575_
                (lambda ()
                  (if (gx#stx-pair? _e157550157557_)
                      (let ((_e157553157565_ (gx#syntax-e _e157550157557_)))
                        (let ((_hd157554157568_ (##car _e157553157565_))
                              (_tl157555157570_ (##cdr _e157553157565_)))
                          (let ((_body157573_ _tl157555157570_))
                            (if (gx#identifier-list? _body157573_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _body157573_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _body157573_))
                                   (gx#stx-source _stx157549_)))
                                (_E157552157561_)))))
                      (_E157552157561_)))))
          (_E157551157575_))))
    (define gx#core-bind-feature!__%
      (lambda (_id157515_ _private?157516_ _phi157517_ _ctx157518_)
        (gx#core-bind-syntax!__%
         _id157515_
         ((if _private?157516_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _id157515_))
         _private?157516_
         _phi157517_
         _ctx157518_)))
    (define gx#core-bind-feature!__0
      (lambda (_id157523_)
        (let* ((_private?157525_ '#f)
               (_phi157527_ (gx#current-expander-phi))
               (_ctx157529_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id157523_
           _private?157525_
           _phi157527_
           _ctx157529_))))
    (define gx#core-bind-feature!__1
      (lambda (_id157531_ _private?157532_)
        (let* ((_phi157534_ (gx#current-expander-phi))
               (_ctx157536_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id157531_
           _private?157532_
           _phi157534_
           _ctx157536_))))
    (define gx#core-bind-feature!__2
      (lambda (_id157538_ _private?157539_ _phi157540_)
        (let ((_ctx157542_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id157538_
           _private?157539_
           _phi157540_
           _ctx157542_))))
    (define gx#core-bind-feature!
      (lambda _g165503_
        (let ((_g165502_ (##length _g165503_)))
          (cond ((##fx= _g165502_ 1)
                 (apply (lambda (_id157523_)
                          (gx#core-bind-feature!__0 _id157523_))
                        _g165503_))
                ((##fx= _g165502_ 2)
                 (apply (lambda (_id157531_ _private?157532_)
                          (gx#core-bind-feature!__1
                           _id157531_
                           _private?157532_))
                        _g165503_))
                ((##fx= _g165502_ 3)
                 (apply (lambda (_id157538_ _private?157539_ _phi157540_)
                          (gx#core-bind-feature!__2
                           _id157538_
                           _private?157539_
                           _phi157540_))
                        _g165503_))
                ((##fx= _g165502_ 4)
                 (apply (lambda (_id157544_
                                 _private?157545_
                                 _phi157546_
                                 _ctx157547_)
                          (gx#core-bind-feature!__%
                           _id157544_
                           _private?157545_
                           _phi157546_
                           _ctx157547_))
                        _g165503_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g165503_))))))))
