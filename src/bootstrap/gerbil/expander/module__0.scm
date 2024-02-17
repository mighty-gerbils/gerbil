(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1708168069)
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
      (lambda _$args170473_
        (apply make-instance gx#module-import::t _$args170473_)))
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
      (lambda _$args170470_
        (apply make-instance gx#module-export::t _$args170470_)))
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
      (lambda _$args170467_
        (apply make-instance gx#import-set::t _$args170467_)))
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
      (lambda _$args170464_
        (apply make-instance gx#export-set::t _$args170464_)))
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
      (lambda _$args170461_
        (apply make-instance gx#import-expander::t _$args170461_)))
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
      (lambda _$args170458_
        (apply make-instance gx#export-expander::t _$args170458_)))
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
      (lambda _$args170455_
        (apply make-instance gx#import-export-expander::t _$args170455_)))
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
      (lambda (_path170452_ _fun170453_)
        (call-with-input-file
         (cons 'path: (cons _path170452_ gx#source-file-settings))
         _fun170453_)))
    (define gx#module-context:::init!
      (lambda (_self170446_ _id170447_ _super170448_ _ns170449_ _path170450_)
        (if (##fx< '11 (##structure-length _self170446_))
            (begin
              (##unchecked-structure-set!
               _self170446_
               _id170447_
               '1
               (##structure-type _self170446_)
               '#f)
              (##unchecked-structure-set!
               _self170446_
               (make-table 'test: eq?)
               '2
               (##structure-type _self170446_)
               '#f)
              (##unchecked-structure-set!
               _self170446_
               _super170448_
               '3
               (##structure-type _self170446_)
               '#f)
              (##unchecked-structure-set!
               _self170446_
               '#f
               '4
               (##structure-type _self170446_)
               '#f)
              (##unchecked-structure-set!
               _self170446_
               '#f
               '5
               (##structure-type _self170446_)
               '#f)
              (##unchecked-structure-set!
               _self170446_
               _ns170449_
               '6
               (##structure-type _self170446_)
               '#f)
              (##unchecked-structure-set!
               _self170446_
               _path170450_
               '7
               (##structure-type _self170446_)
               '#f)
              (##unchecked-structure-set!
               _self170446_
               '()
               '8
               (##structure-type _self170446_)
               '#f)
              (##unchecked-structure-set!
               _self170446_
               '()
               '9
               (##structure-type _self170446_)
               '#f)
              (##unchecked-structure-set!
               _self170446_
               '#f
               '10
               (##structure-type _self170446_)
               '#f)
              (##unchecked-structure-set!
               _self170446_
               '#f
               '11
               (##structure-type _self170446_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self170446_
                   '11
                   (##vector-length _self170446_)))))
    (bind-method! gx#module-context::t ':init! gx#module-context:::init! '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_self170290_ _ctx170291_ _root170292_)
        (let ((_super170300_
               (let ((_$e170294_ _root170292_))
                 (if _$e170294_
                     _$e170294_
                     (let ((_$e170297_ (gx#core-context-root__0)))
                       (if _$e170297_
                           _$e170297_
                           (let ((__obj175083
                                  (##structure gx#root-context::t '#f '#f)))
                             (let ((__constructor175084
                                    (direct-method-ref
                                     gx#root-context::t
                                     __obj175083
                                     ':init!)))
                               (if __constructor175084
                                   (__constructor175084 __obj175083)
                                   (error '"missing constructor method implementation"
                                          'class:
                                          gx#root-context::t
                                          'method:
                                          ':init!)))
                             __obj175083)))))))
          (if _ctx170291_
              (let ((_id170303_
                     (##structure-ref
                      _ctx170291_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_path170304_
                     (##structure-ref _ctx170291_ '7 gx#module-context::t '#f))
                    (_in170305_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _ctx170291_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_e170306_
                     (make-promise (lambda () (gx#eval-module _ctx170291_)))))
                (if (##fx< '8 (##structure-length _self170290_))
                    (begin
                      (##unchecked-structure-set!
                       _self170290_
                       _id170303_
                       '1
                       (##structure-type _self170290_)
                       '#f)
                      (##unchecked-structure-set!
                       _self170290_
                       (make-table 'test: eq? 'size: (length _in170305_))
                       '2
                       (##structure-type _self170290_)
                       '#f)
                      (##unchecked-structure-set!
                       _self170290_
                       _super170300_
                       '3
                       (##structure-type _self170290_)
                       '#f)
                      (##unchecked-structure-set!
                       _self170290_
                       '#f
                       '4
                       (##structure-type _self170290_)
                       '#f)
                      (##unchecked-structure-set!
                       _self170290_
                       '#f
                       '5
                       (##structure-type _self170290_)
                       '#f)
                      (##unchecked-structure-set!
                       _self170290_
                       _path170304_
                       '6
                       (##structure-type _self170290_)
                       '#f)
                      (##unchecked-structure-set!
                       _self170290_
                       _in170305_
                       '7
                       (##structure-type _self170290_)
                       '#f)
                      (##unchecked-structure-set!
                       _self170290_
                       _e170306_
                       '8
                       (##structure-type _self170290_)
                       '#f))
                    (error '"struct-instance-init!: too many arguments for struct"
                           _self170290_
                           '8
                           (##vector-length _self170290_)))
                (for-each
                 (lambda (_g170307170309_)
                   (gx#core-bind-weak-import!__% _g170307170309_ _self170290_))
                 _in170305_))
              (if (##fx< '8 (##structure-length _self170290_))
                  (begin
                    (##unchecked-structure-set!
                     _self170290_
                     '#f
                     '1
                     (##structure-type _self170290_)
                     '#f)
                    (##unchecked-structure-set!
                     _self170290_
                     (make-table 'test: eq?)
                     '2
                     (##structure-type _self170290_)
                     '#f)
                    (##unchecked-structure-set!
                     _self170290_
                     _super170300_
                     '3
                     (##structure-type _self170290_)
                     '#f)
                    (##unchecked-structure-set!
                     _self170290_
                     '#f
                     '4
                     (##structure-type _self170290_)
                     '#f)
                    (##unchecked-structure-set!
                     _self170290_
                     '#f
                     '5
                     (##structure-type _self170290_)
                     '#f)
                    (##unchecked-structure-set!
                     _self170290_
                     '#f
                     '6
                     (##structure-type _self170290_)
                     '#f)
                    (##unchecked-structure-set!
                     _self170290_
                     '()
                     '7
                     (##structure-type _self170290_)
                     '#f)
                    (##unchecked-structure-set!
                     _self170290_
                     '#f
                     '8
                     (##structure-type _self170290_)
                     '#f))
                  (error '"struct-instance-init!: too many arguments for struct"
                         _self170290_
                         '8
                         (##vector-length _self170290_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_self170315_ _ctx170316_)
        (let ((_root170318_ '#f))
          (gx#prelude-context:::init!__%
           _self170315_
           _ctx170316_
           _root170318_))))
    (define gx#prelude-context:::init!
      (lambda _g175090_
        (let ((_g175089_ (##length _g175090_)))
          (cond ((##fx= _g175089_ 2)
                 (apply (lambda (_self170315_ _ctx170316_)
                          (gx#prelude-context:::init!__0
                           _self170315_
                           _ctx170316_))
                        _g175090_))
                ((##fx= _g175089_ 3)
                 (apply (lambda (_self170320_ _ctx170321_ _root170322_)
                          (gx#prelude-context:::init!__%
                           _self170320_
                           _ctx170321_
                           _root170322_))
                        _g175090_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g175090_))))))
    (bind-method! gx#prelude-context::t ':init! gx#prelude-context:::init! '#f)
    (define gx#import-export-expander-init!
      (lambda (_self170164_ _e170165_)
        (if (##fx< '3 (##structure-length _self170164_))
            (begin
              (##unchecked-structure-set!
               _self170164_
               _e170165_
               '1
               (##structure-type _self170164_)
               '#f)
              (##unchecked-structure-set!
               _self170164_
               (gx#current-expander-context)
               '2
               (##structure-type _self170164_)
               '#f)
              (##unchecked-structure-set!
               _self170164_
               (fx- (gx#current-expander-phi) '1)
               '3
               (##structure-type _self170164_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self170164_
                   '3
                   (##vector-length _self170164_)))))
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
      (lambda (_g169790169793_ _g169791169795_)
        (gx#core-apply-user-expander__%
         _g169790169793_
         _g169791169795_
         'apply-import-expander)))
    (bind-method!
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_g169661169664_ _g169662169666_)
        (gx#core-apply-user-expander__%
         _g169661169664_
         _g169662169666_
         'apply-export-expander)))
    (bind-method!
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_ctx169532_)
        (let* ((_path169534_
                (##structure-ref _ctx169532_ '7 gx#module-context::t '#f))
               (_path169536_
                (if (pair? _path169534_) (last _path169534_) _path169534_)))
          (if (string? _path169536_) _path169536_ '#f))))
    (define gx#import-module__%
      (lambda (_path169508_ _reload?169509_ _eval?169510_)
        (let ((_ctx169512_
               ((gx#current-expander-module-import)
                _path169508_
                _reload?169509_)))
          (if (and _ctx169512_ _eval?169510_)
              (gx#eval-module _ctx169512_)
              '#!void)
          _ctx169512_)))
    (define gx#import-module__0
      (lambda (_path169517_)
        (let* ((_reload?169519_ '#f) (_eval?169521_ '#f))
          (gx#import-module__% _path169517_ _reload?169519_ _eval?169521_))))
    (define gx#import-module__1
      (lambda (_path169523_ _reload?169524_)
        (let ((_eval?169526_ '#f))
          (gx#import-module__% _path169523_ _reload?169524_ _eval?169526_))))
    (define gx#import-module
      (lambda _g175092_
        (let ((_g175091_ (##length _g175092_)))
          (cond ((##fx= _g175091_ 1)
                 (apply (lambda (_path169517_)
                          (gx#import-module__0 _path169517_))
                        _g175092_))
                ((##fx= _g175091_ 2)
                 (apply (lambda (_path169523_ _reload?169524_)
                          (gx#import-module__1 _path169523_ _reload?169524_))
                        _g175092_))
                ((##fx= _g175091_ 3)
                 (apply (lambda (_path169528_ _reload?169529_ _eval?169530_)
                          (gx#import-module__%
                           _path169528_
                           _reload?169529_
                           _eval?169530_))
                        _g175092_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g175092_))))))
    (define gx#eval-module
      (lambda (_mod169505_) ((gx#current-expander-module-eval) _mod169505_)))
    (define gx#core-eval-module
      (lambda (_obj169490_)
        (letrec ((_force-e169492_
                  (lambda (_getf169501_ _e169502_)
                    (call-with-parameters
                     (lambda () (force (_getf169501_ _e169502_)))
                     gx#current-expander-context
                     _e169502_
                     gx#current-expander-phi
                     '0))))
          (let _recur169494_ ((_e169496_ _obj169490_))
            (if (##structure-instance-of? _e169496_ 'gx#module-context::t)
                (begin
                  (let ((_$e169498_ (gx#core-context-prelude__% _e169496_)))
                    (if _$e169498_ (_recur169494_ _$e169498_) '#!void))
                  (_force-e169492_ gx#module-context-e _e169496_))
                (if (##structure-instance-of? _e169496_ 'gx#prelude-context::t)
                    (_force-e169492_ gx#prelude-context-e _e169496_)
                    (if (gx#stx-string? _e169496_)
                        (_recur169494_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _e169496_)))
                        (if (gx#core-library-module-path? _e169496_)
                            (_recur169494_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _e169496_)))
                            (error '"Cannot eval module" _obj169490_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_ctx169473_)
        (let _lp169475_ ((_e169477_ _ctx169473_))
          (if (or (##structure-instance-of? _e169477_ 'gx#module-context::t)
                  (##structure-instance-of? _e169477_ 'gx#local-context::t))
              (_lp169475_
               (##unchecked-structure-ref _e169477_ '3 gx#phi-context::t '#f))
              (if (##structure-instance-of? _e169477_ 'gx#prelude-context::t)
                  _e169477_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_ctx169486_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _ctx169486_))))
    (define gx#core-context-prelude
      (lambda _g175094_
        (let ((_g175093_ (##length _g175094_)))
          (cond ((##fx= _g175093_ 0)
                 (apply (lambda () (gx#core-context-prelude__0)) _g175094_))
                ((##fx= _g175093_ 1)
                 (apply (lambda (_ctx169488_)
                          (gx#core-context-prelude__% _ctx169488_))
                        _g175094_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g175094_))))))
    (define gx#core-module->prelude-context
      (lambda (_ctx169463_)
        (let* ((_ht169465_ (gx#current-expander-module-registry))
               (_$e169467_ (table-ref _ht169465_ _ctx169463_ '#f)))
          (if _$e169467_
              (values _$e169467_)
              (let ((_pre169470_
                     (let ((__obj175085
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
                       (gx#prelude-context:::init! __obj175085 _ctx169463_)
                       __obj175085)))
                (table-set! _ht169465_ _ctx169463_ _pre169470_)
                _pre169470_)))))
    (define gx#core-import-module__%
      (lambda (_rpath169344_ _reload?169345_)
        (letrec ((_import-source169347_
                  (lambda (_path169432_)
                    (if (member _path169432_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _path169432_)
                        '#!void)
                    (call-with-parameters
                     (lambda ()
                       (let ((_g175095_ (gx#core-read-module _path169432_)))
                         (begin
                           (let ((_g175096_
                                  (if (##values? _g175095_)
                                      (##vector-length _g175095_)
                                      1)))
                             (if (not (##fx= _g175096_ 4))
                                 (error "Context expects 4 values" _g175096_)))
                           (let ((_pre169435_ (##vector-ref _g175095_ 0))
                                 (_id169436_ (##vector-ref _g175095_ 1))
                                 (_ns169437_ (##vector-ref _g175095_ 2))
                                 (_body169438_ (##vector-ref _g175095_ 3)))
                             (let* ((_prelude169443_
                                     (if (##structure-instance-of?
                                          _pre169435_
                                          'gx#prelude-context::t)
                                         _pre169435_
                                         (if (##structure-instance-of?
                                              _pre169435_
                                              'gx#module-context::t)
                                             (gx#core-module->prelude-context
                                              _pre169435_)
                                             (if (string? _pre169435_)
                                                 (gx#core-module->prelude-context
                                                  (gx#core-import-module__0
                                                   _pre169435_))
                                                 (if (not _pre169435_)
                                                     (let ((_$e169440_
                                                            (gx#current-expander-module-prelude)))
                                                       (if _$e169440_
                                                           _$e169440_
                                                           (let ((__obj175086
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
                     (gx#prelude-context:::init! __obj175086 '#f)
                     __obj175086)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error '"Cannot import module; unknown prelude"
                                                            _rpath169344_
                                                            _pre169435_))))))
                                    (_ctx169445_
                                     (let ((__obj175087
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
                                        __obj175087
                                        _id169436_
                                        _prelude169443_
                                        _ns169437_
                                        _path169432_)
                                       __obj175087))
                                    (_body169447_
                                     (gx#core-expand-module-begin
                                      _body169438_
                                      _ctx169445_))
                                    (_body169449_
                                     (gx#core-quote-syntax__%
                                      (gx#core-cons '%#begin _body169447_)
                                      _path169432_
                                      _ctx169445_
                                      '())))
                               (##unchecked-structure-set!
                                _ctx169445_
                                (make-promise
                                 (lambda () (gx#eval-syntax* _body169449_)))
                                '10
                                gx#module-context::t
                                '#f)
                               (##unchecked-structure-set!
                                _ctx169445_
                                _body169449_
                                '11
                                gx#module-context::t
                                '#f)
                               (table-set!
                                (gx#current-expander-module-registry)
                                _path169432_
                                _ctx169445_)
                               (table-set!
                                (gx#current-expander-module-registry)
                                _id169436_
                                _ctx169445_)
                               _ctx169445_)))))
                     gx#current-expander-context
                     (gx#core-context-root__0)
                     gx#current-expander-marks
                     '()
                     gx#current-expander-phi
                     '0
                     gx#current-expander-path
                     (cons _path169432_ (gx#current-expander-path))
                     gx#current-import-expander-phi
                     '#f
                     gx#current-export-expander-phi
                     '#f)))
                 (_import-submodule169348_
                  (lambda (_rpath169360_)
                    (let* ((_rpath169361169368_ _rpath169360_)
                           (_E169363169372_
                            (lambda ()
                              (error '"No clause matching"
                                     _rpath169361169368_)))
                           (_K169364169420_
                            (lambda (_refs169375_ _origin169376_)
                              (let ((_ctx169378_
                                     (if _origin169376_
                                         (gx#core-import-module__%
                                          _origin169376_
                                          _reload?169345_)
                                         (gx#current-expander-context))))
                                (let _lp169380_ ((_rest169382_ _refs169375_)
                                                 (_ctx169383_ _ctx169378_))
                                  (let* ((_rest169384169392_ _rest169382_)
                                         (_else169386169400_
                                          (lambda () _ctx169383_))
                                         (_K169388169408_
                                          (lambda (_rest169403_ _id169404_)
                                            (let ((_bind169406_
                                                   (gx#resolve-identifier__%
                                                    _id169404_
                                                    '0
                                                    _ctx169383_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _bind169406_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _bind169406_
                                                         '4
                                                         gx#syntax-binding::t
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_lp169380_
                                                   _rest169403_
                                                   (##unchecked-structure-ref
                                                    _bind169406_
                                                    '4
                                                    gx#syntax-binding::t
                                                    '#f))
                                                  (error '"Cannot import submodule; not bound as a module"
                                                         _rpath169360_
                                                         _id169404_
                                                         _bind169406_))))))
                                    (if (##pair? _rest169384169392_)
                                        (let ((_hd169389169411_
                                               (##car _rest169384169392_))
                                              (_tl169390169413_
                                               (##cdr _rest169384169392_)))
                                          (let* ((_id169416_ _hd169389169411_)
                                                 (_rest169418_
                                                  _tl169390169413_))
                                            (_K169388169408_
                                             _rest169418_
                                             _id169416_)))
                                        (_else169386169400_))))))))
                      (if (##pair? _rpath169361169368_)
                          (let ((_hd169365169423_ (##car _rpath169361169368_))
                                (_tl169366169425_ (##cdr _rpath169361169368_)))
                            (let* ((_origin169428_ _hd169365169423_)
                                   (_refs169430_ _tl169366169425_))
                              (_K169364169420_ _refs169430_ _origin169428_)))
                          (_E169363169372_))))))
          (let ((_$e169350_
                 (if (not _reload?169345_)
                     (table-ref
                      (gx#current-expander-module-registry)
                      _rpath169344_
                      '#f)
                     '#f)))
            (if _$e169350_
                (values _$e169350_)
                (if (list? _rpath169344_)
                    (_import-submodule169348_ _rpath169344_)
                    (if (gx#core-library-module-path? _rpath169344_)
                        (let ((_ctx169353_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _rpath169344_)
                                _reload?169345_)))
                          (table-set!
                           (gx#current-expander-module-registry)
                           _rpath169344_
                           _ctx169353_)
                          _ctx169353_)
                        (let* ((_npath169355_ (path-normalize _rpath169344_))
                               (_$e169357_
                                (if (not _reload?169345_)
                                    (table-ref
                                     (gx#current-expander-module-registry)
                                     _npath169355_
                                     '#f)
                                    '#f)))
                          (if _$e169357_
                              (values _$e169357_)
                              (_import-source169347_ _npath169355_))))))))))
    (define gx#core-import-module__0
      (lambda (_rpath169456_)
        (let ((_reload?169458_ '#f))
          (gx#core-import-module__% _rpath169456_ _reload?169458_))))
    (define gx#core-import-module
      (lambda _g175098_
        (let ((_g175097_ (##length _g175098_)))
          (cond ((##fx= _g175097_ 1)
                 (apply (lambda (_rpath169456_)
                          (gx#core-import-module__0 _rpath169456_))
                        _g175098_))
                ((##fx= _g175097_ 2)
                 (apply (lambda (_rpath169460_ _reload?169461_)
                          (gx#core-import-module__%
                           _rpath169460_
                           _reload?169461_))
                        _g175098_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g175098_))))))
    (define gx#core-read-module
      (lambda (_path169333_)
        (with-catch
         (lambda (_exn169335_)
           (if (and (datum-parsing-exception? _exn169335_)
                    (eq? (datum-parsing-exception-filepos _exn169335_) '0))
               (gx#core-read-module/lang _path169333_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _path169333_
                (call-with-parameters
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_g169337169339_)
                      (display-exception _exn169335_ _g169337169339_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _path169333_)))))
    (define gx#core-read-module/sexp
      (lambda (_path169196_)
        (let _lp169198_ ((_body169200_ (read-syntax-from-file _path169196_))
                         (_pre169201_ '#f)
                         (_ns169202_ '#f)
                         (_pkg169203_ '#f))
          (let* ((_e169204169228_ _body169200_)
                 (_E169220169250_
                  (lambda ()
                    (let ((_g175099_
                           (if _pkg169203_
                               (values _pre169201_ _ns169202_ _pkg169203_)
                               (gx#core-read-module-package
                                _path169196_
                                _pre169201_
                                _ns169202_))))
                      (begin
                        (let ((_g175100_
                               (if (##values? _g175099_)
                                   (##vector-length _g175099_)
                                   1)))
                          (if (not (##fx= _g175100_ 3))
                              (error "Context expects 3 values" _g175100_)))
                        (let ((_pre169232_ (##vector-ref _g175099_ 0))
                              (_ns169233_ (##vector-ref _g175099_ 1))
                              (_pkg169234_ (##vector-ref _g175099_ 2)))
                          (let* ((_prelude169236_
                                  (if (gx#core-bound-module-prelude?
                                       _pre169232_)
                                      (gx#syntax-local-e__0 _pre169232_)
                                      (if (gx#core-library-module-path?
                                           _pre169232_)
                                          (gx#core-resolve-library-module-path
                                           _pre169232_)
                                          (if (gx#stx-string? _pre169232_)
                                              (gx#core-resolve-module-path__%
                                               _pre169232_
                                               _path169196_)
                                              (gx#stx-e _pre169232_)))))
                                 (_path-id169238_
                                  (gx#core-module-path->namespace
                                   _path169196_))
                                 (_pkg-id169240_
                                  (if _pkg169234_
                                      (string-append
                                       _pkg169234_
                                       '"/"
                                       _path-id169238_)
                                      _path-id169238_))
                                 (_module-id169242_
                                  (string->symbol _pkg-id169240_))
                                 (_module-ns169247_
                                  (if (eq? _ns169233_ '#!void)
                                      '#f
                                      (let ((_$e169244_ _ns169233_))
                                        (if _$e169244_
                                            _$e169244_
                                            _pkg-id169240_)))))
                            (values _prelude169236_
                                    _module-id169242_
                                    _module-ns169247_
                                    _body169200_)))))))
                 (_E169213169279_
                  (lambda ()
                    (if (gx#stx-pair? _e169204169228_)
                        (let ((_e169221169254_ (gx#syntax-e _e169204169228_)))
                          (let ((_hd169222169257_ (##car _e169221169254_))
                                (_tl169223169259_ (##cdr _e169221169254_)))
                            (if (eq? (gx#stx-e _hd169222169257_) 'package:)
                                (if (gx#stx-pair? _tl169223169259_)
                                    (let ((_e169224169262_
                                           (gx#syntax-e _tl169223169259_)))
                                      (let ((_hd169225169265_
                                             (##car _e169224169262_))
                                            (_tl169226169267_
                                             (##cdr _e169224169262_)))
                                        (let* ((_pkg169270_ _hd169225169265_)
                                               (_rest169272_ _tl169226169267_))
                                          (if '#t
                                              (let ((_pkg169277_
                                                     (if (gx#identifier?
                                                          _pkg169270_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _pkg169270_))
                                                         (if (or (gx#stx-string?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _pkg169270_)
                         (gx#stx-false? _pkg169270_))
                     (gx#stx-e _pkg169270_)
                     (gx#raise-syntax-error
                      'import
                      '"Bad syntax; Illegal package name"
                      _pkg169270_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp169198_
                                                 _rest169272_
                                                 _pre169201_
                                                 _ns169202_
                                                 _pkg169277_))
                                              (_E169220169250_)))))
                                    (_E169220169250_))
                                (_E169220169250_))))
                        (_E169220169250_))))
                 (_E169206169305_
                  (lambda ()
                    (if (gx#stx-pair? _e169204169228_)
                        (let ((_e169214169283_ (gx#syntax-e _e169204169228_)))
                          (let ((_hd169215169286_ (##car _e169214169283_))
                                (_tl169216169288_ (##cdr _e169214169283_)))
                            (if (eq? (gx#stx-e _hd169215169286_) 'namespace:)
                                (if (gx#stx-pair? _tl169216169288_)
                                    (let ((_e169217169291_
                                           (gx#syntax-e _tl169216169288_)))
                                      (let ((_hd169218169294_
                                             (##car _e169217169291_))
                                            (_tl169219169296_
                                             (##cdr _e169217169291_)))
                                        (let* ((_ns169299_ _hd169218169294_)
                                               (_rest169301_ _tl169219169296_))
                                          (if '#t
                                              (let ((_ns169303_
                                                     (if (gx#identifier?
                                                          _ns169299_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _ns169299_))
                                                         (if (gx#stx-string?
                                                              _ns169299_)
                                                             (gx#stx-e
                                                              _ns169299_)
                                                             (if (gx#stx-false?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _ns169299_)
                         '#!void
                         (gx#raise-syntax-error
                          'import
                          '"Bad syntax; illegal namespace"
                          _ns169299_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp169198_
                                                 _rest169301_
                                                 _pre169201_
                                                 _ns169303_
                                                 _pkg169203_))
                                              (_E169213169279_)))))
                                    (_E169213169279_))
                                (_E169213169279_))))
                        (_E169213169279_))))
                 (_E169205169329_
                  (lambda ()
                    (if (gx#stx-pair? _e169204169228_)
                        (let ((_e169207169309_ (gx#syntax-e _e169204169228_)))
                          (let ((_hd169208169312_ (##car _e169207169309_))
                                (_tl169209169314_ (##cdr _e169207169309_)))
                            (if (eq? (gx#stx-e _hd169208169312_) 'prelude:)
                                (if (gx#stx-pair? _tl169209169314_)
                                    (let ((_e169210169317_
                                           (gx#syntax-e _tl169209169314_)))
                                      (let ((_hd169211169320_
                                             (##car _e169210169317_))
                                            (_tl169212169322_
                                             (##cdr _e169210169317_)))
                                        (let* ((_prelude169325_
                                                _hd169211169320_)
                                               (_rest169327_ _tl169212169322_))
                                          (if '#t
                                              (_lp169198_
                                               _rest169327_
                                               _prelude169325_
                                               _ns169202_
                                               _pkg169203_)
                                              (_E169206169305_)))))
                                    (_E169206169305_))
                                (_E169206169305_))))
                        (_E169206169305_)))))
            (_E169205169329_)))))
    (define gx#core-read-module/lang
      (lambda (_path169023_)
        (letrec ((_default-read-module-body169025_
                  (lambda (_inp169188_)
                    (let _lp169190_ ((_body169192_ '()))
                      (let ((_next169194_ (read-syntax _inp169188_)))
                        (if (eof-object? _next169194_)
                            (reverse _body169192_)
                            (_lp169190_ (cons _next169194_ _body169192_)))))))
                 (_read-body169026_
                  (lambda (_inp169107_
                           _pre169108_
                           _ns169109_
                           _pkg169110_
                           _args169111_)
                    (let ((_g175101_
                           (if _pkg169110_
                               (values _pre169108_ _ns169109_ _pkg169110_)
                               (gx#core-read-module-package
                                _path169023_
                                _pre169108_
                                _ns169109_))))
                      (begin
                        (let ((_g175102_
                               (if (##values? _g175101_)
                                   (##vector-length _g175101_)
                                   1)))
                          (if (not (##fx= _g175102_ 3))
                              (error "Context expects 3 values" _g175102_)))
                        (let ((_pre169113_ (##vector-ref _g175101_ 0))
                              (_ns169114_ (##vector-ref _g175101_ 1))
                              (_pkg169115_ (##vector-ref _g175101_ 2)))
                          (let* ((_prelude169117_
                                  (gx#import-module__0 _pre169113_))
                                 (_read-module-body169171_
                                  (let ((_$e169163_
                                         (find (lambda (_e169118169120_)
                                                 (let* ((_g169122169132_
                                                         _e169118169120_)
                                                        (_else169124169140_
                                                         (lambda () '#f))
                                                        (_K169126169144_
                                                         (lambda () '#t)))
                                                   (if (##structure-direct-instance-of?
                                                        _g169122169132_
                                                        'gx#module-export::t)
                                                       (let* ((_e169127169147_
                                                               (##unchecked-structure-ref
                                                                _g169122169132_
                                                                '1
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e169128169150_
                                                               (##unchecked-structure-ref
                                                                _g169122169132_
                                                                '2
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e169129169153_
                                                               (##unchecked-structure-ref
                                                                _g169122169132_
                                                                '3
                                                                gx#module-export::t
                                                                '#f)))
                                                         (if (##eq? _e169129169153_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)
                     (let ((_e169130169156_
                            (##unchecked-structure-ref
                             _g169122169132_
                             '4
                             gx#module-export::t
                             '#f)))
                       (if ((lambda (_g169158169160_)
                              (eq? _g169158169160_ 'read-module-body))
                            _e169130169156_)
                           (_K169126169144_)
                           (_else169124169140_)))
                     (_else169124169140_)))
               (_else169124169140_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (##unchecked-structure-ref
                                                _prelude169117_
                                                '9
                                                gx#module-context::t
                                                '#f))))
                                    (if _$e169163_
                                        ((lambda (_xport169166_)
                                           (let ((_proc169169_
                                                  (with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _xport169166_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _proc169169_)
                                                 _proc169169_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _path169023_
                                                  _pre169113_
                                                  _proc169169_))))
                                         _$e169163_)
                                        _default-read-module-body169025_)))
                                 (_path-id169173_
                                  (gx#core-module-path->namespace
                                   _path169023_))
                                 (_pkg-id169175_
                                  (if _pkg169115_
                                      (string-append
                                       _pkg169115_
                                       '"/"
                                       _path-id169173_)
                                      _path-id169173_))
                                 (_module-id169177_
                                  (string->symbol _pkg-id169175_))
                                 (_module-ns169182_
                                  (let ((_$e169179_ _ns169114_))
                                    (if _$e169179_ _$e169179_ _pkg-id169175_)))
                                 (_body169185_
                                  (call-with-parameters
                                   (lambda ()
                                     (_read-module-body169171_ _inp169107_))
                                   gx#current-module-reader-path
                                   _path169023_
                                   gx#current-module-reader-args
                                   _args169111_)))
                            (values _prelude169117_
                                    _module-id169177_
                                    _module-ns169182_
                                    _body169185_)))))))
                 (_string-e169027_
                  (lambda (_obj169104_ _what169105_)
                    (if (string? _obj169104_)
                        _obj169104_
                        (if (symbol? _obj169104_)
                            (symbol->string _obj169104_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _what169105_)
                             _path169023_
                             _obj169104_)))))
                 (_read-lang-args169028_
                  (lambda (_inp169059_ _args169060_)
                    (let* ((_args169061169069_ _args169060_)
                           (_else169063169077_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _path169023_)))
                           (_K169065169092_
                            (lambda (_args169080_ _prelude169081_)
                              (let* ((_pkg169083_
                                      (pgetq 'package: _args169080_))
                                     (_pkg169085_
                                      (if _pkg169083_
                                          (_string-e169027_
                                           _pkg169083_
                                           '"package")
                                          '#f))
                                     (_ns169087_
                                      (pgetq 'namespace: _args169080_))
                                     (_ns169089_
                                      (if _ns169087_
                                          (_string-e169027_
                                           _ns169087_
                                           '"namespace")
                                          '#f)))
                                (_read-body169026_
                                 _inp169059_
                                 _prelude169081_
                                 _ns169089_
                                 _pkg169085_
                                 _args169080_)))))
                      (if (##pair? _args169061169069_)
                          (let ((_hd169066169095_ (##car _args169061169069_))
                                (_tl169067169097_ (##cdr _args169061169069_)))
                            (let* ((_prelude169100_ _hd169066169095_)
                                   (_args169102_ _tl169067169097_))
                              (_K169065169092_ _args169102_ _prelude169100_)))
                          (_else169063169077_)))))
                 (_read-lang169029_
                  (lambda (_inp169034_)
                    (let* ((_head169036_ (read-line _inp169034_))
                           (_$e169038_ (string-index _head169036_ '#\space)))
                      (if _$e169038_
                          ((lambda (_ix169041_)
                             (let ((_lang169043_
                                    (substring _head169036_ '0 _ix169041_)))
                               (if (equal? _lang169043_ '"#lang")
                                   (let* ((_rest169045_
                                           (substring
                                            _head169036_
                                            (fx+ _ix169041_ '1)
                                            (string-length _head169036_)))
                                          (_args169056_
                                           (with-catch
                                            (lambda (_g169046169048_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _path169023_
                                               _g169046169048_))
                                            (lambda ()
                                              (call-with-input-string
                                               _rest169045_
                                               (lambda (_g169051169053_)
                                                 (read-all
                                                  _g169051169053_
                                                  read)))))))
                                     (_read-lang-args169028_
                                      _inp169034_
                                      _args169056_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _path169023_))))
                           _$e169038_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _path169023_)))))
                 (_read-e169030_
                  (lambda (_inp169032_)
                    (if (eq? (peek-char _inp169032_) '#\#)
                        (_read-lang169029_ _inp169032_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _path169023_)))))
          (gx#call-with-input-source-file _path169023_ _read-e169030_))))
    (define gx#core-read-module-package
      (lambda (_path168977_ _pre168978_ _ns168979_)
        (letrec ((_string-e168981_
                  (lambda (_e169021_)
                    (if (symbol? _e169021_)
                        (symbol->string _e169021_)
                        (if (string? _e169021_)
                            _e169021_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _e169021_))))))
          (let _lp168983_ ((_dir168985_ (path-directory _path168977_))
                           (_pkg-path168986_ '()))
            (let ((_gerbil.pkg168988_ (path-expand '"gerbil.pkg" _dir168985_)))
              (if (file-exists? _gerbil.pkg168988_)
                  (let ((_plist168990_
                         (gx#core-library-package-plist__% _dir168985_ '#t)))
                    (if (null? _plist168990_)
                        (let ((_pkg168992_
                               (if (not (null? _pkg-path168986_))
                                   (string-join _pkg-path168986_ '"/")
                                   '#f)))
                          (values _pre168978_ _ns168979_ _pkg168992_))
                        (if (list? _plist168990_)
                            (let* ((_root168994_
                                    (pgetq 'package: _plist168990_))
                                   (_pkg168998_
                                    (let ((_pkg-path168996_
                                           (if _root168994_
                                               (cons (_string-e168981_
                                                      _root168994_)
                                                     _pkg-path168986_)
                                               _pkg-path168986_)))
                                      (if (not (null? _pkg-path168996_))
                                          (string-join _pkg-path168996_ '"/")
                                          '#f)))
                                   (_ns169005_
                                    (let ((_ns169003_
                                           (let ((_$e169000_ _ns168979_))
                                             (if _$e169000_
                                                 _$e169000_
                                                 (pgetq 'namespace:
                                                        _plist168990_)))))
                                      (if _ns169003_
                                          (_string-e168981_ _ns169003_)
                                          '#f)))
                                   (_pre169010_
                                    (let ((_$e169007_ _pre168978_))
                                      (if _$e169007_
                                          _$e169007_
                                          (pgetq 'prelude: _plist168990_)))))
                              (values _pre169010_ _ns169005_ _pkg168998_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _plist168990_))))
                  (let ((_dir*169013_
                         (path-strip-trailing-directory-separator
                          _dir168985_)))
                    (if (or (string-empty? _dir*169013_)
                            (equal? _dir168985_ _dir*169013_))
                        (values _pre168978_ _ns168979_ '#f)
                        (let ((_xpath169018_
                               (path-strip-directory _dir*169013_))
                              (_xdir169019_ (path-directory _dir*169013_)))
                          (_lp168983_
                           _xdir169019_
                           (cons _xpath169018_ _pkg-path168986_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_path168975_)
        (path-strip-extension (path-strip-directory _path168975_))))
    (define gx#core-module-path->id
      (lambda (_path168973_)
        (string->symbol (gx#core-module-path->namespace _path168973_))))
    (define gx#core-resolve-module-path__%
      (lambda (_stx-path168952_ _rel168953_)
        (let* ((_path168955_ (gx#stx-e _stx-path168952_))
               (_path168957_
                (if (string-empty? (path-extension _path168955_))
                    (string-append _path168955_ '".ss")
                    _path168955_)))
          (gx#core-resolve-path__%
           _path168957_
           (let ((_$e168960_ (gx#stx-source _stx-path168952_)))
             (if _$e168960_ _$e168960_ _rel168953_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_stx-path168966_)
        (let ((_rel168968_ '#f))
          (gx#core-resolve-module-path__% _stx-path168966_ _rel168968_))))
    (define gx#core-resolve-module-path
      (lambda _g175104_
        (let ((_g175103_ (##length _g175104_)))
          (cond ((##fx= _g175103_ 1)
                 (apply (lambda (_stx-path168966_)
                          (gx#core-resolve-module-path__0 _stx-path168966_))
                        _g175104_))
                ((##fx= _g175103_ 2)
                 (apply (lambda (_stx-path168970_ _rel168971_)
                          (gx#core-resolve-module-path__%
                           _stx-path168970_
                           _rel168971_))
                        _g175104_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g175104_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_libpath168838_)
        (let* ((_spath168840_ (symbol->string (gx#stx-e _libpath168838_)))
               (_spath168842_
                (substring _spath168840_ '1 (string-length _spath168840_)))
               (_ext168844_ (path-extension _spath168842_))
               (_ssi168846_
                (if (string-empty? _ext168844_)
                    (string-append _spath168842_ '".ssi")
                    (string-append
                     (path-strip-extension _spath168842_)
                     '".ssi")))
               (_srcs168850_
                (if (string-empty? _ext168844_)
                    (map (lambda (_ext168848_)
                           (string-append _spath168842_ _ext168848_))
                         '(".ss" ".sld" ".scm"))
                    (cons _spath168842_ '()))))
          (let _lp168853_ ((_rest168855_
                            (gx#current-expander-module-library-path)))
            (let* ((_rest168856168865_ _rest168855_)
                   (_E168859168869_
                    (lambda ()
                      (error '"No clause matching" _rest168856168865_))))
              (let ((_K168861168939_
                     (lambda (_rest168880_ _dir168881_)
                       (letrec ((_resolve168883_
                                 (lambda (_ssi168895_ _srcs168896_)
                                   (let ((_compiled-path168898_
                                          (path-expand
                                           _ssi168895_
                                           _dir168881_)))
                                     (if (file-exists? _compiled-path168898_)
                                         (path-normalize _compiled-path168898_)
                                         (let _lpr168900_ ((_rest-src168902_
                                                            _srcs168896_))
                                           (let* ((_rest-src168903168911_
                                                   _rest-src168902_)
                                                  (_else168905168919_
                                                   (lambda ()
                                                     (_lp168853_
                                                      _rest168880_)))
                                                  (_K168907168927_
                                                   (lambda (_rest-src168922_
                                                            _src168923_)
                                                     (let ((_src-path168925_
                                                            (path-expand
                                                             _src168923_
                                                             _dir168881_)))
                                                       (if (file-exists?
                                                            _src-path168925_)
                                                           (path-normalize
                                                            _src-path168925_)
                                                           (_lpr168900_
                                                            _rest-src168922_))))))
                                             (if (##pair? _rest-src168903168911_)
                                                 (let ((_hd168908168930_
                                                        (##car _rest-src168903168911_))
                                                       (_tl168909168932_
                                                        (##cdr _rest-src168903168911_)))
                                                   (let* ((_src168935_
                                                           _hd168908168930_)
                                                          (_rest-src168937_
                                                           _tl168909168932_))
                                                     (_K168907168927_
                                                      _rest-src168937_
                                                      _src168935_)))
                                                 (_else168905168919_)))))))))
                         (let ((_$e168885_
                                (gx#core-library-package-path-prefix
                                 _dir168881_)))
                           (if _$e168885_
                               ((lambda (_prefix168888_)
                                  (if (string-prefix?
                                       _prefix168888_
                                       _spath168842_)
                                      (let ((_ssi168892_
                                             (substring
                                              _ssi168846_
                                              (string-length _prefix168888_)
                                              (string-length _ssi168846_)))
                                            (_srcs168893_
                                             (map (lambda (_src168890_)
                                                    (substring
                                                     _src168890_
                                                     (string-length
                                                      _prefix168888_)
                                                     (string-length
                                                      _src168890_)))
                                                  _srcs168850_)))
                                        (_resolve168883_
                                         _ssi168892_
                                         _srcs168893_))
                                      (_lp168853_ _rest168880_)))
                                _$e168885_)
                               (_resolve168883_ _ssi168846_ _srcs168850_))))))
                    (_K168860168874_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"Cannot find library module"
                        _libpath168838_))))
                (let ((_try-match168858168877_
                       (lambda ()
                         (if (##null? _rest168856168865_)
                             (_K168860168874_)
                             (_E168859168869_)))))
                  (if (##pair? _rest168856168865_)
                      (let ((_tl168863168944_ (##cdr _rest168856168865_))
                            (_hd168862168942_ (##car _rest168856168865_)))
                        (let ((_dir168947_ _hd168862168942_)
                              (_rest168949_ _tl168863168944_))
                          (_K168861168939_ _rest168949_ _dir168947_)))
                      (_try-match168858168877_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_modpath168811_)
        (letrec ((_resolve168813_
                  (lambda (_path168830_ _base168831_)
                    (let ((_$e168833_ (string-rindex _base168831_ '#\/)))
                      (if _$e168833_
                          ((lambda (_idx168836_)
                             (gx#core-resolve-library-module-path
                              (string->symbol
                               (string-append
                                '":"
                                (substring _base168831_ '0 _idx168836_)
                                '"/"
                                _path168830_))))
                           _$e168833_)
                          (gx#core-resolve-library-module-path
                           (string->symbol
                            (string-append '":" _path168830_))))))))
          (let ((_spath168815_ (symbol->string (gx#stx-e _modpath168811_)))
                (_mod168816_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _mod168816_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"Cannot resolve relative module path; not in module context"
                 _modpath168811_))
            (let ((_mpath168818_
                   (symbol->string
                    (##structure-ref
                     _mod168816_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _lp168820_ ((_spath168822_ _spath168815_)
                               (_mpath168823_ _mpath168818_))
                (if (string-prefix? '"../" _spath168822_)
                    (let ((_$e168825_ (string-rindex _mpath168823_ '#\/)))
                      (if _$e168825_
                          ((lambda (_idx168828_)
                             (_lp168820_
                              (substring
                               _spath168822_
                               '3
                               (string-length _spath168822_))
                              (substring _mpath168823_ '0 _idx168828_)))
                           _$e168825_)
                          (gx#raise-syntax-error
                           '#f
                           '"Cannot resolve relative module path; illegal traversal"
                           _modpath168811_)))
                    (if (string-prefix? '"./" _spath168822_)
                        (_lp168820_
                         (substring
                          _spath168822_
                          '2
                          (string-length _spath168822_))
                         _mpath168823_)
                        (_resolve168813_ _spath168822_ _mpath168823_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_dir168804_)
        (let ((_$e168806_
               (pgetq 'package:
                      (gx#core-library-package-plist__0 _dir168804_))))
          (if _$e168806_
              ((lambda (_pkg168809_)
                 (string-append (symbol->string _pkg168809_) '"/"))
               _$e168806_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_dir168776_ _exists?168777_)
        (let* ((_cache168779_ (gx#core-library-package-cache))
               (_$e168781_ (table-ref _cache168779_ _dir168776_ '#f)))
          (if _$e168781_
              (values _$e168781_)
              (let* ((_gerbil.pkg168784_
                      (path-expand '"gerbil.pkg" _dir168776_))
                     (_plist168791_
                      (if (or _exists?168777_
                              (file-exists? _gerbil.pkg168784_))
                          (let ((_e168789_
                                 (gx#call-with-input-source-file
                                  _gerbil.pkg168784_
                                  read)))
                            (if (eof-object? _e168789_)
                                '()
                                (if (list? _e168789_)
                                    _e168789_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _gerbil.pkg168784_
                                     _e168789_))))
                          '())))
                (table-set! _cache168779_ _dir168776_ _plist168791_)
                _plist168791_)))))
    (define gx#core-library-package-plist__0
      (lambda (_dir168797_)
        (let ((_exists?168799_ '#f))
          (gx#core-library-package-plist__% _dir168797_ _exists?168799_))))
    (define gx#core-library-package-plist
      (lambda _g175106_
        (let ((_g175105_ (##length _g175106_)))
          (cond ((##fx= _g175105_ 1)
                 (apply (lambda (_dir168797_)
                          (gx#core-library-package-plist__0 _dir168797_))
                        _g175106_))
                ((##fx= _g175105_ 2)
                 (apply (lambda (_dir168801_ _exists?168802_)
                          (gx#core-library-package-plist__%
                           _dir168801_
                           _exists?168802_))
                        _g175106_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g175106_))))))
    (define gx#core-library-package-cache
      (lambda ()
        (let ((_$e168770_ (gx#current-expander-module-library-package-cache)))
          (if _$e168770_
              (values _$e168770_)
              (let ((_cache168773_ (make-table)))
                (gx#current-expander-module-library-package-cache
                 _cache168773_)
                _cache168773_)))))
    (define gx#core-library-module-path?
      (lambda (_stx168767_) (gx#core-special-module-path? _stx168767_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_stx168765_) (gx#core-special-module-path? _stx168765_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_stx168760_ _char168761_)
        (if (gx#identifier? _stx168760_)
            (if (interned-symbol? (gx#stx-e _stx168760_))
                (let ((_str168763_ (symbol->string (gx#stx-e _stx168760_))))
                  (if (fx> (string-length _str168763_) '1)
                      (eq? (string-ref _str168763_ '0) _char168761_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_stx168754_)
        (gx#core-bound-identifier?__%
         _stx168754_
         (lambda (_g168755168757_)
           (gx#expander-binding?__% _g168755168757_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_stx168748_)
        (gx#core-bound-identifier?__%
         _stx168748_
         (lambda (_g168749168751_)
           (gx#expander-binding?__% _g168749168751_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_stx168735_)
        (letrec ((_module-prelude?168737_
                  (lambda (_e168743_)
                    (let ((_$e168745_
                           (##structure-instance-of?
                            _e168743_
                            'gx#module-context::t)))
                      (if _$e168745_
                          _$e168745_
                          (##structure-instance-of?
                           _e168743_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _stx168735_
           (lambda (_g168738168740_)
             (gx#expander-binding?__%
              _g168738168740_
              _module-prelude?168737_))))))
    (define gx#core-bind-import!__%
      (lambda (_in168665_ _ctx168666_ _force-weak?168667_)
        (let* ((_in168668168677_ _in168665_)
               (_E168670168681_
                (lambda () (error '"No clause matching" _in168668168677_)))
               (_K168671168694_
                (lambda (_weak?168684_ _phi168685_ _key168686_ _source168687_)
                  (gx#core-bind!__%
                   _key168686_
                   (let ((_e168689_
                          (gx#core-resolve-module-export _source168687_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref
                       _e168689_
                       '1
                       gx#binding::t
                       '#f)
                      _key168686_
                      _phi168685_
                      _e168689_
                      (##unchecked-structure-ref
                       _source168687_
                       '1
                       gx#module-export::t
                       '#f)
                      (let ((_$e168691_ _force-weak?168667_))
                        (if _$e168691_ _$e168691_ _weak?168684_))))
                   gx#core-context-rebind?
                   _phi168685_
                   _ctx168666_))))
          (if (##structure-direct-instance-of?
               _in168668168677_
               'gx#module-import::t)
              (let* ((_e168672168697_
                      (##unchecked-structure-ref
                       _in168668168677_
                       '1
                       gx#module-import::t
                       '#f))
                     (_source168700_ _e168672168697_)
                     (_e168673168702_
                      (##unchecked-structure-ref
                       _in168668168677_
                       '2
                       gx#module-import::t
                       '#f))
                     (_key168705_ _e168673168702_)
                     (_e168674168707_
                      (##unchecked-structure-ref
                       _in168668168677_
                       '3
                       gx#module-import::t
                       '#f))
                     (_phi168710_ _e168674168707_)
                     (_e168675168712_
                      (##unchecked-structure-ref
                       _in168668168677_
                       '4
                       gx#module-import::t
                       '#f))
                     (_weak?168715_ _e168675168712_))
                (_K168671168694_
                 _weak?168715_
                 _phi168710_
                 _key168705_
                 _source168700_))
              (_E168670168681_)))))
    (define gx#core-bind-import!__0
      (lambda (_in168720_)
        (let* ((_ctx168722_ (gx#current-expander-context))
               (_force-weak?168724_ '#f))
          (gx#core-bind-import!__%
           _in168720_
           _ctx168722_
           _force-weak?168724_))))
    (define gx#core-bind-import!__1
      (lambda (_in168726_ _ctx168727_)
        (let ((_force-weak?168729_ '#f))
          (gx#core-bind-import!__%
           _in168726_
           _ctx168727_
           _force-weak?168729_))))
    (define gx#core-bind-import!
      (lambda _g175108_
        (let ((_g175107_ (##length _g175108_)))
          (cond ((##fx= _g175107_ 1)
                 (apply (lambda (_in168720_)
                          (gx#core-bind-import!__0 _in168720_))
                        _g175108_))
                ((##fx= _g175107_ 2)
                 (apply (lambda (_in168726_ _ctx168727_)
                          (gx#core-bind-import!__1 _in168726_ _ctx168727_))
                        _g175108_))
                ((##fx= _g175107_ 3)
                 (apply (lambda (_in168731_ _ctx168732_ _force-weak?168733_)
                          (gx#core-bind-import!__%
                           _in168731_
                           _ctx168732_
                           _force-weak?168733_))
                        _g175108_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g175108_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_in168651_ _ctx168652_)
        (gx#core-bind-import!__% _in168651_ _ctx168652_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_in168657_)
        (let ((_ctx168659_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _in168657_ _ctx168659_))))
    (define gx#core-bind-weak-import!
      (lambda _g175110_
        (let ((_g175109_ (##length _g175110_)))
          (cond ((##fx= _g175109_ 1)
                 (apply (lambda (_in168657_)
                          (gx#core-bind-weak-import!__0 _in168657_))
                        _g175110_))
                ((##fx= _g175109_ 2)
                 (apply (lambda (_in168661_ _ctx168662_)
                          (gx#core-bind-weak-import!__%
                           _in168661_
                           _ctx168662_))
                        _g175110_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g175110_))))))
    (define gx#core-resolve-module-export
      (lambda (_out168542_)
        (letrec ((_subst168544_
                  (lambda (_key168590_)
                    (let* ((_key168591168599_ _key168590_)
                           (_else168593168607_ (lambda () _key168590_))
                           (_K168595168638_
                            (lambda (_mark168610_ _id168611_)
                              (let* ((_mark168612168618_ _mark168610_)
                                     (_E168614168622_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark168612168618_)))
                                     (_K168615168630_
                                      (lambda (_subst168625_)
                                        (let ((_$e168627_
                                               (if _subst168625_
                                                   (table-ref
                                                    _subst168625_
                                                    _id168611_
                                                    '#f)
                                                   '#f)))
                                          (if _$e168627_
                                              _$e168627_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _key168590_))))))
                                (if (##structure-instance-of?
                                     _mark168612168618_
                                     'gx#expander-mark::t)
                                    (let* ((_e168616168633_
                                            (##unchecked-structure-ref
                                             _mark168612168618_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst168636_ _e168616168633_))
                                      (_K168615168630_ _subst168636_))
                                    (_E168614168622_))))))
                      (if (##pair? _key168591168599_)
                          (let ((_hd168596168641_ (##car _key168591168599_))
                                (_tl168597168643_ (##cdr _key168591168599_)))
                            (let* ((_id168646_ _hd168596168641_)
                                   (_mark168648_ _tl168597168643_))
                              (_K168595168638_ _mark168648_ _id168646_)))
                          (_else168593168607_))))))
          (let* ((_out168545168555_ _out168542_)
                 (_E168547168559_
                  (lambda () (error '"No clause matching" _out168545168555_)))
                 (_K168548168566_
                  (lambda (_phi168562_ _key168563_ _ctx168564_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _ctx168564_ _phi168562_)
                     (_subst168544_ _key168563_)))))
            (if (##structure-direct-instance-of?
                 _out168545168555_
                 'gx#module-export::t)
                (let* ((_e168549168569_
                        (##unchecked-structure-ref
                         _out168545168555_
                         '1
                         gx#module-export::t
                         '#f))
                       (_ctx168572_ _e168549168569_)
                       (_e168550168574_
                        (##unchecked-structure-ref
                         _out168545168555_
                         '2
                         gx#module-export::t
                         '#f))
                       (_key168577_ _e168550168574_)
                       (_e168551168579_
                        (##unchecked-structure-ref
                         _out168545168555_
                         '3
                         gx#module-export::t
                         '#f))
                       (_phi168582_ _e168551168579_)
                       (_e168552168584_
                        (##unchecked-structure-ref
                         _out168545168555_
                         '4
                         gx#module-export::t
                         '#f))
                       (_e168553168587_
                        (##unchecked-structure-ref
                         _out168545168555_
                         '5
                         gx#module-export::t
                         '#f)))
                  (_K168548168566_ _phi168582_ _key168577_ _ctx168572_))
                (_E168547168559_))))))
    (define gx#core-module-export->import__%
      (lambda (_out168467_ _rename168468_ _dphi168469_)
        (let* ((_out168470168480_ _out168467_)
               (_E168472168484_
                (lambda () (error '"No clause matching" _out168470168480_)))
               (_K168473168496_
                (lambda (_weak?168487_
                         _name168488_
                         _phi168489_
                         _key168490_
                         _ctx168491_)
                  (##structure
                   gx#module-import::t
                   _out168467_
                   (let ((_$e168493_ _rename168468_))
                     (if _$e168493_ _$e168493_ _name168488_))
                   (fx+ _phi168489_ _dphi168469_)
                   _weak?168487_))))
          (if (##structure-direct-instance-of?
               _out168470168480_
               'gx#module-export::t)
              (let* ((_e168474168499_
                      (##unchecked-structure-ref
                       _out168470168480_
                       '1
                       gx#module-export::t
                       '#f))
                     (_ctx168502_ _e168474168499_)
                     (_e168475168504_
                      (##unchecked-structure-ref
                       _out168470168480_
                       '2
                       gx#module-export::t
                       '#f))
                     (_key168507_ _e168475168504_)
                     (_e168476168509_
                      (##unchecked-structure-ref
                       _out168470168480_
                       '3
                       gx#module-export::t
                       '#f))
                     (_phi168512_ _e168476168509_)
                     (_e168477168514_
                      (##unchecked-structure-ref
                       _out168470168480_
                       '4
                       gx#module-export::t
                       '#f))
                     (_name168517_ _e168477168514_)
                     (_e168478168519_
                      (##unchecked-structure-ref
                       _out168470168480_
                       '5
                       gx#module-export::t
                       '#f))
                     (_weak?168522_ _e168478168519_))
                (_K168473168496_
                 _weak?168522_
                 _name168517_
                 _phi168512_
                 _key168507_
                 _ctx168502_))
              (_E168472168484_)))))
    (define gx#core-module-export->import__0
      (lambda (_out168527_)
        (let* ((_rename168529_ '#f) (_dphi168531_ '0))
          (gx#core-module-export->import__%
           _out168527_
           _rename168529_
           _dphi168531_))))
    (define gx#core-module-export->import__1
      (lambda (_out168533_ _rename168534_)
        (let ((_dphi168536_ '0))
          (gx#core-module-export->import__%
           _out168533_
           _rename168534_
           _dphi168536_))))
    (define gx#core-module-export->import
      (lambda _g175112_
        (let ((_g175111_ (##length _g175112_)))
          (cond ((##fx= _g175111_ 1)
                 (apply (lambda (_out168527_)
                          (gx#core-module-export->import__0 _out168527_))
                        _g175112_))
                ((##fx= _g175111_ 2)
                 (apply (lambda (_out168533_ _rename168534_)
                          (gx#core-module-export->import__1
                           _out168533_
                           _rename168534_))
                        _g175112_))
                ((##fx= _g175111_ 3)
                 (apply (lambda (_out168538_ _rename168539_ _dphi168540_)
                          (gx#core-module-export->import__%
                           _out168538_
                           _rename168539_
                           _dphi168540_))
                        _g175112_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g175112_))))))
    (define gx#core-expand-module%
      (lambda (_stx168395_)
        (letrec ((_make-context168397_
                  (lambda (_id168448_)
                    (let* ((_super168450_ (gx#current-expander-context))
                           (_bind-id168452_ (gx#stx-e _id168448_))
                           (_mod-id168454_
                            (if (##structure-instance-of?
                                 _super168450_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##structure-ref
                                  _super168450_
                                  '1
                                  gx#expander-context::t
                                  '#f)
                                 '"$"
                                 _bind-id168452_)
                                _bind-id168452_))
                           (_ns168456_ (symbol->string _mod-id168454_))
                           (_path168463_
                            (if (##structure-instance-of?
                                 _super168450_
                                 'gx#module-context::t)
                                (let ((_path168458_
                                       (##unchecked-structure-ref
                                        _super168450_
                                        '7
                                        gx#module-context::t
                                        '#f)))
                                  (if (or (pair? _path168458_)
                                          (null? _path168458_))
                                      (cons _bind-id168452_ _path168458_)
                                      (if (not _path168458_)
                                          _bind-id168452_
                                          (cons _bind-id168452_
                                                (cons _path168458_ '())))))
                                _bind-id168452_)))
                      (let ((__obj175088
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
                         __obj175088
                         _mod-id168454_
                         _super168450_
                         _ns168456_
                         _path168463_)
                        __obj175088)))))
          (let* ((_e168398168408_ _stx168395_)
                 (_E168400168412_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e168398168408_)))
                 (_E168399168444_
                  (lambda ()
                    (if (gx#stx-pair? _e168398168408_)
                        (let ((_e168401168416_ (gx#syntax-e _e168398168408_)))
                          (let ((_hd168402168419_ (##car _e168401168416_))
                                (_tl168403168421_ (##cdr _e168401168416_)))
                            (if (gx#stx-pair? _tl168403168421_)
                                (let ((_e168404168424_
                                       (gx#syntax-e _tl168403168421_)))
                                  (let ((_hd168405168427_
                                         (##car _e168404168424_))
                                        (_tl168406168429_
                                         (##cdr _e168404168424_)))
                                    (let* ((_id168432_ _hd168405168427_)
                                           (_body168434_ _tl168406168429_))
                                      (if (and (gx#identifier? _id168432_)
                                               (gx#stx-list? _body168434_))
                                          (let* ((_ctx168436_
                                                  (_make-context168397_
                                                   _id168432_))
                                                 (_body168438_
                                                  (gx#core-expand-module-begin
                                                   _body168434_
                                                   _ctx168436_))
                                                 (_body168440_
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body168438_)
                                                   (gx#stx-source
                                                    _stx168395_))))
                                            (##unchecked-structure-set!
                                             _ctx168436_
                                             (make-promise
                                              (lambda ()
                                                (gx#eval-syntax*
                                                 _body168440_)))
                                             '10
                                             gx#module-context::t
                                             '#f)
                                            (##unchecked-structure-set!
                                             _ctx168436_
                                             _body168440_
                                             '11
                                             gx#module-context::t
                                             '#f)
                                            (gx#core-bind-syntax!__0
                                             _id168432_
                                             _ctx168436_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-list
                                              '%#module
                                              (gx#core-quote-syntax__0
                                               _id168432_)
                                              _body168440_)
                                             (gx#stx-source _stx168395_)))
                                          (_E168400168412_)))))
                                (_E168400168412_))))
                        (_E168400168412_)))))
            (_E168399168444_)))))
    (define gx#core-expand-module-begin
      (lambda (_body168361_ _ctx168362_)
        (call-with-parameters
         (lambda ()
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_stx168365_
                   (gx#core-expand-head (cons '%%begin-module _body168361_)))
                  (_e168366168373_ _stx168365_)
                  (_E168368168377_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _stx168365_)))
                  (_E168367168391_
                   (lambda ()
                     (if (gx#stx-pair? _e168366168373_)
                         (let ((_e168369168381_ (gx#syntax-e _e168366168373_)))
                           (let ((_hd168370168384_ (##car _e168369168381_))
                                 (_tl168371168386_ (##cdr _e168369168381_)))
                             (if (and (gx#identifier? _hd168370168384_)
                                      (gx#core-identifier=?
                                       _hd168370168384_
                                       '%#begin-module))
                                 (let ((_body168389_ _tl168371168386_))
                                   (if '#t
                                       (if (gx#sealed-syntax? _stx168365_)
                                           _body168389_
                                           (gx#core-expand-module-body
                                            _body168389_))
                                       (_E168368168377_)))
                                 (_E168368168377_))))
                         (_E168368168377_)))))
             (_E168367168391_)))
         gx#current-expander-context
         _ctx168362_
         gx#current-expander-phi
         '0)))
    (define gx#core-expand-module-body
      (lambda (_body168157_)
        (letrec ((_expand-special168159_
                  (lambda (_hd168288_ _K168289_ _rest168290_ _r168291_)
                    (let* ((_e168292168309_ _hd168288_)
                           (_E168304168313_
                            (lambda ()
                              (_K168289_
                               _rest168290_
                               (cons (gx#core-expand-top _hd168288_)
                                     _r168291_))))
                           (_E168294168325_
                            (lambda ()
                              (if (gx#stx-pair? _e168292168309_)
                                  (let ((_e168305168317_
                                         (gx#syntax-e _e168292168309_)))
                                    (let ((_hd168306168320_
                                           (##car _e168305168317_))
                                          (_tl168307168322_
                                           (##cdr _e168305168317_)))
                                      (if (and (gx#identifier?
                                                _hd168306168320_)
                                               (gx#core-identifier=?
                                                _hd168306168320_
                                                '%#export))
                                          (if '#t
                                              (_K168289_
                                               _rest168290_
                                               (cons _hd168288_ _r168291_))
                                              (_E168304168313_))
                                          (_E168304168313_))))
                                  (_E168304168313_))))
                           (_E168293168357_
                            (lambda ()
                              (if (gx#stx-pair? _e168292168309_)
                                  (let ((_e168295168329_
                                         (gx#syntax-e _e168292168309_)))
                                    (let ((_hd168296168332_
                                           (##car _e168295168329_))
                                          (_tl168297168334_
                                           (##cdr _e168295168329_)))
                                      (if (and (gx#identifier?
                                                _hd168296168332_)
                                               (gx#core-identifier=?
                                                _hd168296168332_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl168297168334_)
                                              (let ((_e168298168337_
                                                     (gx#syntax-e
                                                      _tl168297168334_)))
                                                (let ((_hd168299168340_
                                                       (##car _e168298168337_))
                                                      (_tl168300168342_
                                                       (##cdr _e168298168337_)))
                                                  (let ((_hd-bind168345_
                                                         _hd168299168340_))
                                                    (if (gx#stx-pair?
                                                         _tl168300168342_)
                                                        (let ((_e168301168347_
                                                               (gx#syntax-e
                                                                _tl168300168342_)))
                                                          (let ((_hd168302168350_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e168301168347_))
                        (_tl168303168352_ (##cdr _e168301168347_)))
                    (let ((_expr168355_ _hd168302168350_))
                      (if (gx#stx-null? _tl168303168352_)
                          (if (gx#core-bind-values? _hd-bind168345_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind168345_)
                                (_K168289_
                                 _rest168290_
                                 (cons _hd168288_ _r168291_)))
                              (_E168294168325_))
                          (_E168294168325_)))))
                (_E168294168325_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E168294168325_))
                                          (_E168294168325_))))
                                  (_E168294168325_)))))
                      (_E168293168357_))))
                 (_expand-body168160_
                  (lambda (_rbody168162_)
                    (let _lp168164_ ((_rest168166_ _rbody168162_)
                                     (_body168167_ '()))
                      (let* ((_rest168168168176_ _rest168166_)
                             (_else168170168184_ (lambda () _body168167_))
                             (_K168172168276_
                              (lambda (_rest168187_ _hd168188_)
                                (let* ((_e168189168210_ _hd168188_)
                                       (_E168205168214_
                                        (lambda ()
                                          (_lp168164_
                                           _rest168187_
                                           (cons (gx#core-expand-expression
                                                  _hd168188_)
                                                 _body168167_))))
                                       (_E168201168228_
                                        (lambda ()
                                          (if (gx#stx-pair? _e168189168210_)
                                              (let ((_e168206168218_
                                                     (gx#syntax-e
                                                      _e168189168210_)))
                                                (let ((_hd168207168221_
                                                       (##car _e168206168218_))
                                                      (_tl168208168223_
                                                       (##cdr _e168206168218_)))
                                                  (let ((_form168226_
                                                         _hd168207168221_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _form168226_
                                                         gx#special-form-binding?)
                                                        (_lp168164_
                                                         _rest168187_
                                                         (cons _hd168188_
                                                               _body168167_))
                                                        (_E168205168214_)))))
                                              (_E168205168214_))))
                                       (_E168191168240_
                                        (lambda ()
                                          (if (gx#stx-pair? _e168189168210_)
                                              (let ((_e168202168232_
                                                     (gx#syntax-e
                                                      _e168189168210_)))
                                                (let ((_hd168203168235_
                                                       (##car _e168202168232_))
                                                      (_tl168204168237_
                                                       (##cdr _e168202168232_)))
                                                  (if (and (gx#identifier?
                                                            _hd168203168235_)
                                                           (gx#core-identifier=?
                                                            _hd168203168235_
                                                            '%#export))
                                                      (if '#t
                                                          (_lp168164_
                                                           _rest168187_
                                                           (cons (gx#core-expand-export%__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd168188_)
                         _body168167_))
                  (_E168201168228_))
              (_E168201168228_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E168201168228_))))
                                       (_E168190168272_
                                        (lambda ()
                                          (if (gx#stx-pair? _e168189168210_)
                                              (let ((_e168192168244_
                                                     (gx#syntax-e
                                                      _e168189168210_)))
                                                (let ((_hd168193168247_
                                                       (##car _e168192168244_))
                                                      (_tl168194168249_
                                                       (##cdr _e168192168244_)))
                                                  (if (and (gx#identifier?
                                                            _hd168193168247_)
                                                           (gx#core-identifier=?
                                                            _hd168193168247_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl168194168249_)
                                                          (let ((_e168195168252_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl168194168249_)))
                    (let ((_hd168196168255_ (##car _e168195168252_))
                          (_tl168197168257_ (##cdr _e168195168252_)))
                      (let ((_hd-bind168260_ _hd168196168255_))
                        (if (gx#stx-pair? _tl168197168257_)
                            (let ((_e168198168262_
                                   (gx#syntax-e _tl168197168257_)))
                              (let ((_hd168199168265_ (##car _e168198168262_))
                                    (_tl168200168267_ (##cdr _e168198168262_)))
                                (let ((_expr168270_ _hd168199168265_))
                                  (if (gx#stx-null? _tl168200168267_)
                                      (if '#t
                                          (_lp168164_
                                           _rest168187_
                                           (cons (gx#core-quote-syntax__1
                                                  (gx#core-list
                                                   '%#define-values
                                                   (gx#core-quote-bind-values
                                                    _hd-bind168260_)
                                                   (gx#core-expand-expression
                                                    _expr168270_))
                                                  (gx#stx-source _hd168188_))
                                                 _body168167_))
                                          (_E168191168240_))
                                      (_E168191168240_)))))
                            (_E168191168240_)))))
                  (_E168191168240_))
              (_E168191168240_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E168191168240_)))))
                                  (_E168190168272_)))))
                        (if (##pair? _rest168168168176_)
                            (let ((_hd168173168279_ (##car _rest168168168176_))
                                  (_tl168174168281_
                                   (##cdr _rest168168168176_)))
                              (let* ((_hd168284_ _hd168173168279_)
                                     (_rest168286_ _tl168174168281_))
                                (_K168172168276_ _rest168286_ _hd168284_)))
                            (_else168170168184_)))))))
          (_expand-body168160_
           (gx#core-expand-block__%
            (cons '%#begin-module _body168157_)
            _expand-special168159_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_stx168000_
               _expanded?168001_
               _method168002_
               _current-phi168003_
               _expand1168004_)
        (letrec ((_K168006_
                  (lambda (_rest168124_ _r168125_)
                    (let* ((_e168126168133_ _rest168124_)
                           (_E168128168137_ (lambda () _r168125_))
                           (_E168127168153_
                            (lambda ()
                              (if (gx#stx-pair? _e168126168133_)
                                  (let ((_e168129168141_
                                         (gx#syntax-e _e168126168133_)))
                                    (let ((_hd168130168144_
                                           (##car _e168129168141_))
                                          (_tl168131168146_
                                           (##cdr _e168129168141_)))
                                      (let* ((_hd168149_ _hd168130168144_)
                                             (_rest168151_ _tl168131168146_))
                                        (if '#t
                                            (_step168007_
                                             _hd168149_
                                             _rest168151_
                                             _r168125_)
                                            (_E168128168137_)))))
                                  (_E168128168137_)))))
                      (_E168127168153_))))
                 (_step168007_
                  (lambda (_hd168038_ _rest168039_ _r168040_)
                    (let* ((_e168041168059_ _hd168038_)
                           (_E168054168063_
                            (lambda ()
                              (if (_expanded?168001_ (gx#stx-e _hd168038_))
                                  (_K168006_
                                   _rest168039_
                                   (cons (gx#stx-e _hd168038_) _r168040_))
                                  (_expand1168004_
                                   _hd168038_
                                   _K168006_
                                   _rest168039_
                                   _r168040_))))
                           (_E168050168079_
                            (lambda ()
                              (if (gx#stx-pair? _e168041168059_)
                                  (let ((_e168055168067_
                                         (gx#syntax-e _e168041168059_)))
                                    (let ((_hd168056168070_
                                           (##car _e168055168067_))
                                          (_tl168057168072_
                                           (##cdr _e168055168067_)))
                                      (let* ((_macro168075_ _hd168056168070_)
                                             (_body168077_ _tl168057168072_))
                                        (if (gx#core-bound-identifier?__%
                                             _macro168075_
                                             gx#syntax-binding?)
                                            (_K168006_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _macro168075_)
                                                    _hd168038_
                                                    _method168002_)
                                                   _rest168039_)
                                             _r168040_)
                                            (_E168054168063_)))))
                                  (_E168054168063_))))
                           (_E168043168093_
                            (lambda ()
                              (if (gx#stx-pair? _e168041168059_)
                                  (let ((_e168051168083_
                                         (gx#syntax-e _e168041168059_)))
                                    (let ((_hd168052168086_
                                           (##car _e168051168083_))
                                          (_tl168053168088_
                                           (##cdr _e168051168083_)))
                                      (if (eq? (gx#stx-e _hd168052168086_)
                                               'begin:)
                                          (let ((_body168091_
                                                 _tl168053168088_))
                                            (if '#t
                                                (_K168006_
                                                 (gx#stx-foldr
                                                  cons
                                                  _rest168039_
                                                  _body168091_)
                                                 _r168040_)
                                                (_E168050168079_)))
                                          (_E168050168079_))))
                                  (_E168050168079_))))
                           (_E168042168120_
                            (lambda ()
                              (if (gx#stx-pair? _e168041168059_)
                                  (let ((_e168044168097_
                                         (gx#syntax-e _e168041168059_)))
                                    (let ((_hd168045168100_
                                           (##car _e168044168097_))
                                          (_tl168046168102_
                                           (##cdr _e168044168097_)))
                                      (if (eq? (gx#stx-e _hd168045168100_)
                                               'phi:)
                                          (if (gx#stx-pair? _tl168046168102_)
                                              (let ((_e168047168105_
                                                     (gx#syntax-e
                                                      _tl168046168102_)))
                                                (let ((_hd168048168108_
                                                       (##car _e168047168105_))
                                                      (_tl168049168110_
                                                       (##cdr _e168047168105_)))
                                                  (let* ((_dphi168113_
                                                          _hd168048168108_)
                                                         (_body168115_
                                                          _tl168049168110_))
                                                    (if (gx#stx-fixnum?
                                                         _dphi168113_)
                                                        (let ((_rbody168118_
                                                               (call-with-parameters
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_K168006_ _body168115_ '()))
                        _current-phi168003_
                        (fx+ (gx#stx-e _dphi168113_) (_current-phi168003_)))))
                  (_K168006_
                   _rest168039_
                   (foldr1 cons _r168040_ _rbody168118_)))
                (_E168043168093_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E168043168093_))
                                          (_E168043168093_))))
                                  (_E168043168093_)))))
                      (_E168042168120_)))))
          (let* ((_e168008168015_ _stx168000_)
                 (_E168010168019_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e168008168015_)))
                 (_E168009168034_
                  (lambda ()
                    (if (gx#stx-pair? _e168008168015_)
                        (let ((_e168011168023_ (gx#syntax-e _e168008168015_)))
                          (let ((_hd168012168026_ (##car _e168011168023_))
                                (_tl168013168028_ (##cdr _e168011168023_)))
                            (let ((_body168031_ _tl168013168028_))
                              (if '#t
                                  (if (_current-phi168003_)
                                      (_K168006_ _body168031_ '())
                                      (call-with-parameters
                                       (lambda () (_K168006_ _body168031_ '()))
                                       _current-phi168003_
                                       (gx#current-expander-phi)))
                                  (_E168010168019_)))))
                        (_E168010168019_)))))
            (_E168009168034_)))))
    (define gx#core-expand-import%__%
      (lambda (_stx167667_ _internal-expand?167668_)
        (letrec ((_expand1167670_
                  (lambda (_hd167980_ _K167981_ _rest167982_ _r167983_)
                    (if (gx#core-bound-module? _hd167980_)
                        (_import1167671_
                         (gx#syntax-local-e__0 _hd167980_)
                         _K167981_
                         _rest167982_
                         _r167983_)
                        (if (gx#core-library-module-path? _hd167980_)
                            (_import1167671_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _hd167980_))
                             _K167981_
                             _rest167982_
                             _r167983_)
                            (if (gx#core-library-relative-module-path?
                                 _hd167980_)
                                (_import1167671_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _hd167980_))
                                 _K167981_
                                 _rest167982_
                                 _r167983_)
                                (let ((_e167985_ (gx#stx-e _hd167980_)))
                                  (if (pair? _e167985_)
                                      (let ((_$e167987_
                                             (gx#stx-e (car _e167985_))))
                                        (if (eq? 'spec: _$e167987_)
                                            (_import-spec167674_
                                             _hd167980_
                                             _K167981_
                                             _rest167982_
                                             _r167983_)
                                            (if (eq? 'in: _$e167987_)
                                                (_import-submodule167672_
                                                 _hd167980_
                                                 _K167981_
                                                 _rest167982_
                                                 _r167983_)
                                                (if (eq? 'runtime: _$e167987_)
                                                    (_import-runtime167673_
                                                     _hd167980_
                                                     _K167981_
                                                     _rest167982_
                                                     _r167983_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _stx167667_
                                                     _hd167980_)))))
                                      (if (string? _e167985_)
                                          (_import1167671_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _hd167980_
                                             (gx#stx-source _stx167667_)))
                                           _K167981_
                                           _rest167982_
                                           _r167983_)
                                          (if (##structure-instance-of?
                                               _e167985_
                                               'gx#module-context::t)
                                              (_K167981_
                                               _rest167982_
                                               (cons _e167985_ _r167983_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _stx167667_
                                               _hd167980_))))))))))
                 (_import1167671_
                  (lambda (_ctx167969_ _K167970_ _rest167971_ _r167972_)
                    (let ((_dphi167974_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_K167970_
                       _rest167971_
                       (cons (##structure
                              gx#import-set::t
                              _ctx167969_
                              _dphi167974_
                              (map (lambda (_g167975167977_)
                                     (gx#core-module-export->import__%
                                      _g167975167977_
                                      '#f
                                      _dphi167974_))
                                   (##unchecked-structure-ref
                                    _ctx167969_
                                    '9
                                    gx#module-context::t
                                    '#f)))
                             _r167972_)))))
                 (_import-submodule167672_
                  (lambda (_hd167936_ _K167937_ _rest167938_ _r167939_)
                    (let* ((_e167940167947_ _hd167936_)
                           (_E167942167951_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e167940167947_)))
                           (_E167941167965_
                            (lambda ()
                              (if (gx#stx-pair? _e167940167947_)
                                  (let ((_e167943167955_
                                         (gx#syntax-e _e167940167947_)))
                                    (let ((_hd167944167958_
                                           (##car _e167943167955_))
                                          (_tl167945167960_
                                           (##cdr _e167943167955_)))
                                      (let ((_spath167963_ _tl167945167960_))
                                        (if '#t
                                            (_import1167671_
                                             (_import-spec-source167675_
                                              _spath167963_)
                                             _K167937_
                                             _rest167938_
                                             _r167939_)
                                            (_E167942167951_)))))
                                  (_E167942167951_)))))
                      (_E167941167965_))))
                 (_import-runtime167673_
                  (lambda (_hd167903_ _K167904_ _rest167905_ _r167906_)
                    (let* ((_e167907167914_ _hd167903_)
                           (_E167909167918_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e167907167914_)))
                           (_E167908167932_
                            (lambda ()
                              (if (gx#stx-pair? _e167907167914_)
                                  (let ((_e167910167922_
                                         (gx#syntax-e _e167907167914_)))
                                    (let ((_hd167911167925_
                                           (##car _e167910167922_))
                                          (_tl167912167927_
                                           (##cdr _e167910167922_)))
                                      (let ((_spath167930_ _tl167912167927_))
                                        (if '#t
                                            (_K167904_
                                             _rest167905_
                                             (cons (_import-spec-source167675_
                                                    _spath167930_)
                                                   _r167906_))
                                            (_E167909167918_)))))
                                  (_E167909167918_)))))
                      (_E167908167932_))))
                 (_import-spec167674_
                  (lambda (_hd167742_ _K167743_ _rest167744_ _r167745_)
                    (let* ((_e167746167763_ _hd167742_)
                           (_E167755167767_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e167746167763_)))
                           (_E167748167877_
                            (lambda ()
                              (if (gx#stx-pair? _e167746167763_)
                                  (let ((_e167756167771_
                                         (gx#syntax-e _e167746167763_)))
                                    (let ((_hd167757167774_
                                           (##car _e167756167771_))
                                          (_tl167758167776_
                                           (##cdr _e167756167771_)))
                                      (if (gx#stx-pair? _tl167758167776_)
                                          (let ((_e167759167779_
                                                 (gx#syntax-e
                                                  _tl167758167776_)))
                                            (let ((_hd167760167782_
                                                   (##car _e167759167779_))
                                                  (_tl167761167784_
                                                   (##cdr _e167759167779_)))
                                              (let* ((_path167787_
                                                      _hd167760167782_)
                                                     (_specs167789_
                                                      _tl167761167784_))
                                                (if '#t
                                                    (let ((_src-ctx167791_
                                                           (_import-spec-source167675_
                                                            _path167787_))
                                                          (_exports167792_
                                                           (make-table))
                                                          (_specs167793_
                                                           (gx#syntax->list
                                                            _specs167789_)))
                                                      (for-each
                                                       (lambda (_out167795_)
                                                         (table-set!
                                                          _exports167792_
                                                          (cons (##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _out167795_
                         '3
                         gx#module-export::t
                         '#f)
                        (##unchecked-structure-ref
                         _out167795_
                         '4
                         gx#module-export::t
                         '#f))
                  _out167795_))
               (##unchecked-structure-ref
                _src-ctx167791_
                '9
                gx#module-context::t
                '#f))
              (_K167743_
               _rest167744_
               (foldl1 (lambda (_spec167797_ _r167798_)
                         (let* ((_e167799167815_ _spec167797_)
                                (_E167801167819_
                                 (lambda ()
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid syntax-case clause"
                                    _e167799167815_)))
                                (_E167800167873_
                                 (lambda ()
                                   (if (gx#stx-pair? _e167799167815_)
                                       (let ((_e167802167823_
                                              (gx#syntax-e _e167799167815_)))
                                         (let ((_hd167803167826_
                                                (##car _e167802167823_))
                                               (_tl167804167828_
                                                (##cdr _e167802167823_)))
                                           (let ((_phi167831_
                                                  _hd167803167826_))
                                             (if (gx#stx-pair?
                                                  _tl167804167828_)
                                                 (let ((_e167805167833_
                                                        (gx#syntax-e
                                                         _tl167804167828_)))
                                                   (let ((_hd167806167836_
                                                          (##car _e167805167833_))
                                                         (_tl167807167838_
                                                          (##cdr _e167805167833_)))
                                                     (let ((_name167841_
                                                            _hd167806167836_))
                                                       (if (gx#stx-pair?
                                                            _tl167807167838_)
                                                           (let ((_e167808167843_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl167807167838_)))
                     (let ((_hd167809167846_ (##car _e167808167843_))
                           (_tl167810167848_ (##cdr _e167808167843_)))
                       (let ((_src-phi167851_ _hd167809167846_))
                         (if (gx#stx-pair? _tl167810167848_)
                             (let ((_e167811167853_
                                    (gx#syntax-e _tl167810167848_)))
                               (let ((_hd167812167856_ (##car _e167811167853_))
                                     (_tl167813167858_
                                      (##cdr _e167811167853_)))
                                 (let ((_src-name167861_ _hd167812167856_))
                                   (if (gx#stx-null? _tl167813167858_)
                                       (if (and (gx#stx-fixnum?
                                                 _src-phi167851_)
                                                (gx#identifier?
                                                 _src-name167861_)
                                                (gx#stx-fixnum? _phi167831_)
                                                (gx#identifier? _name167841_))
                                           (let ((_src-phi167863_
                                                  (gx#stx-e _src-phi167851_))
                                                 (_src-name167864_
                                                  (gx#core-identifier-key
                                                   _src-name167861_))
                                                 (_phi167865_
                                                  (gx#stx-e _phi167831_))
                                                 (_name167866_
                                                  (gx#core-identifier-key
                                                   _name167841_)))
                                             (let ((_$e167868_
                                                    (table-ref
                                                     _exports167792_
                                                     (cons _src-phi167863_
                                                           _src-name167864_)
                                                     '#f)))
                                               (if _$e167868_
                                                   ((lambda (_out167871_)
                                                      (cons (gx#core-module-export->import__%
                                                             _out167871_
                                                             _name167866_
                                                             (fx- _phi167865_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _src-phi167863_))
                    _r167798_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _$e167868_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; no matching export"
                                                    _stx167667_
                                                    _hd167742_))))
                                           (_E167801167819_))
                                       (_E167801167819_)))))
                             (_E167801167819_)))))
                   (_E167801167819_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E167801167819_)))))
                                       (_E167801167819_)))))
                           (_E167800167873_)))
                       _r167745_
                       _specs167793_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E167755167767_)))))
                                          (_E167755167767_))))
                                  (_E167755167767_))))
                           (_E167747167899_
                            (lambda ()
                              (if (gx#stx-pair? _e167746167763_)
                                  (let ((_e167749167881_
                                         (gx#syntax-e _e167746167763_)))
                                    (let ((_hd167750167884_
                                           (##car _e167749167881_))
                                          (_tl167751167886_
                                           (##cdr _e167749167881_)))
                                      (if (gx#stx-pair? _tl167751167886_)
                                          (let ((_e167752167889_
                                                 (gx#syntax-e
                                                  _tl167751167886_)))
                                            (let ((_hd167753167892_
                                                   (##car _e167752167889_))
                                                  (_tl167754167894_
                                                   (##cdr _e167752167889_)))
                                              (let ((_path167897_
                                                     _hd167753167892_))
                                                (if (gx#stx-null?
                                                     _tl167754167894_)
                                                    (if '#t
                                                        (_K167743_
                                                         _rest167744_
                                                         (cons (_import-spec-source167675_
                                                                _path167897_)
                                                               _r167745_))
                                                        (_E167748167877_))
                                                    (_E167748167877_)))))
                                          (_E167748167877_))))
                                  (_E167748167877_)))))
                      (_E167747167899_))))
                 (_import-spec-source167675_
                  (lambda (_spath167740_)
                    (gx#core-import-nested-module _spath167740_ _stx167667_)))
                 (_import!167676_
                  (lambda (_rbody167689_)
                    (letrec* ((_current-ctx167691_
                               (gx#current-expander-context))
                              (_deps167692_ (make-table 'test: eq?))
                              (_bind!167693_
                               (lambda (_hd167738_)
                                 (gx#core-bind-import!__1
                                  _hd167738_
                                  _current-ctx167691_))))
                      (let _lp167695_ ((_rest167697_ _rbody167689_)
                                       (_body167698_ '()))
                        (let* ((_rest167699167707_ _rest167697_)
                               (_else167701167717_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _current-ctx167691_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _current-ctx167691_
                                       (foldl1 cons
                                               (##unchecked-structure-ref
                                                _current-ctx167691_
                                                '8
                                                gx#module-context::t
                                                '#f)
                                               _body167698_)
                                       '8
                                       gx#module-context::t
                                       '#f)
                                      '#!void)
                                  (table-for-each
                                   (lambda (_ctx167715_ _g175113_)
                                     (gx#eval-module _ctx167715_))
                                   _deps167692_)
                                  _body167698_))
                               (_K167703167726_
                                (lambda (_rest167720_ _hd167721_)
                                  (if (##structure-direct-instance-of?
                                       _hd167721_
                                       'gx#module-import::t)
                                      (begin
                                        (_bind!167693_ _hd167721_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _hd167721_
                                                   '3
                                                   gx#module-import::t
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _hd167721_
                                                            '1
                                                            gx#module-import::t
                                                            '#f)
                                                           '3
                                                           gx#module-export::t
                                                           '#f)))
                                            (table-set!
                                             _deps167692_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _hd167721_
                                               '1
                                               gx#module-import::t
                                               '#f)
                                              '1
                                              gx#module-export::t
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _hd167721_
                                           'gx#import-set::t)
                                          (begin
                                            (for-each
                                             _bind!167693_
                                             (##unchecked-structure-ref
                                              _hd167721_
                                              '3
                                              gx#import-set::t
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _hd167721_
                                                  '2
                                                  gx#import-set::t
                                                  '#f))
                                                (table-set!
                                                 _deps167692_
                                                 (##unchecked-structure-ref
                                                  _hd167721_
                                                  '1
                                                  gx#import-set::t
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_$e167723_
                                                 (##structure-instance-of?
                                                  _hd167721_
                                                  'gx#module-context::t)))
                                            (if _$e167723_
                                                _$e167723_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _stx167667_
                                                 _hd167721_)))))
                                  (_lp167695_
                                   _rest167720_
                                   (cons _hd167721_ _body167698_)))))
                          (if (##pair? _rest167699167707_)
                              (let ((_hd167704167729_
                                     (##car _rest167699167707_))
                                    (_tl167705167731_
                                     (##cdr _rest167699167707_)))
                                (let* ((_hd167734_ _hd167704167729_)
                                       (_rest167736_ _tl167705167731_))
                                  (_K167703167726_ _rest167736_ _hd167734_)))
                              (_else167701167717_)))))))
                 (_expanded-import?167677_
                  (lambda (_e167681_)
                    (let ((_$e167683_
                           (##structure-direct-instance-of?
                            _e167681_
                            'gx#import-set::t)))
                      (if _$e167683_
                          _$e167683_
                          (let ((_$e167686_
                                 (##structure-direct-instance-of?
                                  _e167681_
                                  'gx#module-import::t)))
                            (if _$e167686_
                                _$e167686_
                                (##structure-instance-of?
                                 _e167681_
                                 'gx#module-context::t))))))))
          (let ((_rbody167679_
                 (gx#core-expand-import/export
                  _stx167667_
                  _expanded-import?167677_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _expand1167670_)))
            (if _internal-expand?167668_
                (reverse _rbody167679_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_import!167676_ _rbody167679_))
                 (gx#stx-source _stx167667_)))))))
    (define gx#core-expand-import%__0
      (lambda (_stx167993_)
        (let ((_internal-expand?167995_ '#f))
          (gx#core-expand-import%__% _stx167993_ _internal-expand?167995_))))
    (define gx#core-expand-import%
      (lambda _g175115_
        (let ((_g175114_ (##length _g175115_)))
          (cond ((##fx= _g175114_ 1)
                 (apply (lambda (_stx167993_)
                          (gx#core-expand-import%__0 _stx167993_))
                        _g175115_))
                ((##fx= _g175114_ 2)
                 (apply (lambda (_stx167997_ _internal-expand?167998_)
                          (gx#core-expand-import%__%
                           _stx167997_
                           _internal-expand?167998_))
                        _g175115_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g175115_))))))
    (define gx#core-import-nested-module
      (lambda (_spath167594_ _where167595_)
        (let* ((_e167596167603_ _spath167594_)
               (_E167598167607_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e167596167603_)))
               (_E167597167662_
                (lambda ()
                  (if (gx#stx-pair? _e167596167603_)
                      (let ((_e167599167611_ (gx#syntax-e _e167596167603_)))
                        (let ((_hd167600167614_ (##car _e167599167611_))
                              (_tl167601167616_ (##cdr _e167599167611_)))
                          (let* ((_origin167619_ _hd167600167614_)
                                 (_sub167621_ _tl167601167616_))
                            (if '#t
                                (let ((_origin-ctx167623_
                                       (if (gx#stx-false? _origin167619_)
                                           (gx#current-expander-context)
                                           (gx#import-module__0
                                            _origin167619_))))
                                  (let _lp167625_ ((_rest167627_ _sub167621_)
                                                   (_ctx167628_
                                                    _origin-ctx167623_))
                                    (let* ((_e167629167636_ _rest167627_)
                                           (_E167631167640_
                                            (lambda () _ctx167628_))
                                           (_E167630167658_
                                            (lambda ()
                                              (if (gx#stx-pair?
                                                   _e167629167636_)
                                                  (let ((_e167632167644_
                                                         (gx#syntax-e
                                                          _e167629167636_)))
                                                    (let ((_hd167633167647_
                                                           (##car _e167632167644_))
                                                          (_tl167634167649_
                                                           (##cdr _e167632167644_)))
                                                      (let* ((_id167652_
                                                              _hd167633167647_)
                                                             (_rest167654_
                                                              _tl167634167649_))
                                                        (if '#t
                                                            (let ((_bind167656_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#resolve-identifier__%
                            _id167652_
                            '0
                            _ctx167628_)))
                      (if (and (##structure-direct-instance-of?
                                _bind167656_
                                'gx#syntax-binding::t)
                               (##structure-instance-of?
                                (##unchecked-structure-ref
                                 _bind167656_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                'gx#module-context::t))
                          '#!void
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; not bound as module"
                           _where167595_
                           _spath167594_
                           _id167652_))
                      (_lp167625_
                       _rest167654_
                       (##unchecked-structure-ref
                        _bind167656_
                        '4
                        gx#syntax-binding::t
                        '#f)))
                    (_E167631167640_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E167631167640_)))))
                                      (_E167630167658_))))
                                (_E167598167607_)))))
                      (_E167598167607_)))))
          (_E167597167662_))))
    (define gx#core-expand-import-source
      (lambda (_hd167592_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _hd167592_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_stx167100_ _internal-expand?167101_)
        (letrec* ((_make-export__175044175045_
                   (lambda (_bind167540_ _phi167541_ _ctx167542_ _name167543_)
                     (let* ((_key167545_
                             (##unchecked-structure-ref
                              _bind167540_
                              '2
                              gx#binding::t
                              '#f))
                            (_export-key167547_
                             (if _name167543_
                                 (gx#core-identifier-key _name167543_)
                                 _key167545_)))
                       (##structure
                        gx#module-export::t
                        _ctx167542_
                        _key167545_
                        _phi167541_
                        _export-key167547_
                        (let ((_$e167550_
                               (##structure-instance-of?
                                _bind167540_
                                'gx#extern-binding::t)))
                          (if _$e167550_
                              _$e167550_
                              (##structure-direct-instance-of?
                               _bind167540_
                               'gx#import-binding::t)))))))
                  (_make-export__0__175046175049_
                   (lambda (_bind167556_)
                     (let* ((_phi167558_ (gx#current-export-expander-phi))
                            (_ctx167560_ (gx#current-expander-context))
                            (_name167562_ '#f))
                       (_make-export__175044175045_
                        _bind167556_
                        _phi167558_
                        _ctx167560_
                        _name167562_))))
                  (_make-export__1__175047175050_
                   (lambda (_bind167564_ _phi167565_)
                     (let* ((_ctx167567_ (gx#current-expander-context))
                            (_name167569_ '#f))
                       (_make-export__175044175045_
                        _bind167564_
                        _phi167565_
                        _ctx167567_
                        _name167569_))))
                  (_make-export__2__175048175051_
                   (lambda (_bind167571_ _phi167572_ _ctx167573_)
                     (let ((_name167575_ '#f))
                       (_make-export__175044175045_
                        _bind167571_
                        _phi167572_
                        _ctx167573_
                        _name167575_))))
                  (_make-export167103_
                   (lambda _g175117_
                     (let ((_g175116_ (##length _g175117_)))
                       (cond ((##fx= _g175116_ 1)
                              (apply (lambda (_bind167556_)
                                       (_make-export__0__175046175049_
                                        _bind167556_))
                                     _g175117_))
                             ((##fx= _g175116_ 2)
                              (apply (lambda (_bind167564_ _phi167565_)
                                       (_make-export__1__175047175050_
                                        _bind167564_
                                        _phi167565_))
                                     _g175117_))
                             ((##fx= _g175116_ 3)
                              (apply (lambda (_bind167571_
                                              _phi167572_
                                              _ctx167573_)
                                       (_make-export__2__175048175051_
                                        _bind167571_
                                        _phi167572_
                                        _ctx167573_))
                                     _g175117_))
                             ((##fx= _g175116_ 4)
                              (apply (lambda (_bind167577_
                                              _phi167578_
                                              _ctx167579_
                                              _name167580_)
                                       (_make-export__175044175045_
                                        _bind167577_
                                        _phi167578_
                                        _ctx167579_
                                        _name167580_))
                                     _g175117_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g175117_))))))
                  (_expand1167104_
                   (lambda (_hd167253_ _K167254_ _rest167255_ _r167256_)
                     (let* ((_e167257167289_ _hd167253_)
                            (_E167284167293_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _stx167100_
                                _hd167253_)))
                            (_E167274167372_
                             (lambda ()
                               (if (gx#stx-pair? _e167257167289_)
                                   (let ((_e167285167297_
                                          (gx#syntax-e _e167257167289_)))
                                     (let ((_hd167286167300_
                                            (##car _e167285167297_))
                                           (_tl167287167302_
                                            (##cdr _e167285167297_)))
                                       (if (eq? (gx#stx-e _hd167286167300_)
                                                'import:)
                                           (let ((_in167305_ _tl167287167302_))
                                             (if (gx#stx-list? _in167305_)
                                                 (let _lp167307_ ((_in-rest167309_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _in167305_)
                          (_r167310_ _r167256_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_e167311167318_
                                                           _in-rest167309_)
                                                          (_E167313167322_
                                                           (lambda ()
                                                             (_K167254_
                                                              _rest167255_
                                                              _r167310_)))
                                                          (_E167312167368_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _e167311167318_)
                         (let ((_e167314167326_ (gx#syntax-e _e167311167318_)))
                           (let ((_hd167315167329_ (##car _e167314167326_))
                                 (_tl167316167331_ (##cdr _e167314167326_)))
                             (let* ((_hd167334_ _hd167315167329_)
                                    (_in-rest167336_ _tl167316167331_))
                               (if '#t
                                   (let ((_src167366_
                                          (if (gx#core-bound-module?
                                               _hd167334_)
                                              (gx#syntax-local-e__0 _hd167334_)
                                              (if (gx#core-library-module-path?
                                                   _hd167334_)
                                                  (gx#import-module__0
                                                   (gx#core-resolve-library-module-path
                                                    _hd167334_))
                                                  (if (gx#core-library-relative-module-path?
                                                       _hd167334_)
                                                      (gx#import-module__0
                                                       (gx#core-resolve-library-relative-module-path
                                                        _hd167334_))
                                                      (if (gx#stx-string?
                                                           _hd167334_)
                                                          (gx#import-module__0
                                                           (gx#core-resolve-module-path__%
                                                            _hd167334_
                                                            (gx#stx-source
                                                             _stx167100_)))
                                                          (let* ((_e167337167344_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd167334_)
                         (_E167339167348_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; illegal re-export"
                             _stx167100_
                             _hd167334_)))
                         (_E167338167362_
                          (lambda ()
                            (if (gx#stx-pair? _e167337167344_)
                                (let ((_e167340167352_
                                       (gx#syntax-e _e167337167344_)))
                                  (let ((_hd167341167355_
                                         (##car _e167340167352_))
                                        (_tl167342167357_
                                         (##cdr _e167340167352_)))
                                    (if (eq? (gx#stx-e _hd167341167355_) 'in:)
                                        (let ((_spath167360_ _tl167342167357_))
                                          (if '#t
                                              (gx#core-import-nested-module
                                               _spath167360_
                                               _stx167100_)
                                              (_E167339167348_)))
                                        (_E167339167348_))))
                                (_E167339167348_)))))
                    (_E167338167362_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_lp167307_
                                      _in-rest167336_
                                      (_export-imports167105_
                                       _src167366_
                                       _r167310_)))
                                   (_E167313167322_)))))
                         (_E167313167322_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E167312167368_)))
                                                 (_E167284167293_)))
                                           (_E167284167293_))))
                                   (_E167284167293_))))
                            (_E167261167411_
                             (lambda ()
                               (if (gx#stx-pair? _e167257167289_)
                                   (let ((_e167275167376_
                                          (gx#syntax-e _e167257167289_)))
                                     (let ((_hd167276167379_
                                            (##car _e167275167376_))
                                           (_tl167277167381_
                                            (##cdr _e167275167376_)))
                                       (if (eq? (gx#stx-e _hd167276167379_)
                                                'rename:)
                                           (if (gx#stx-pair? _tl167277167381_)
                                               (let ((_e167278167384_
                                                      (gx#syntax-e
                                                       _tl167277167381_)))
                                                 (let ((_hd167279167387_
                                                        (##car _e167278167384_))
                                                       (_tl167280167389_
                                                        (##cdr _e167278167384_)))
                                                   (let ((_id167392_
                                                          _hd167279167387_))
                                                     (if (gx#stx-pair?
                                                          _tl167280167389_)
                                                         (let ((_e167281167394_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl167280167389_)))
                   (let ((_hd167282167397_ (##car _e167281167394_))
                         (_tl167283167399_ (##cdr _e167281167394_)))
                     (let ((_name167402_ _hd167282167397_))
                       (if (gx#stx-null? _tl167283167399_)
                           (if '#t
                               (let* ((_phi167404_
                                       (gx#current-export-expander-phi))
                                      (_$e167406_
                                       (gx#core-resolve-identifier__1
                                        _id167392_
                                        _phi167404_)))
                                 (if _$e167406_
                                     ((lambda (_bind167409_)
                                        (_K167254_
                                         _rest167255_
                                         (cons (_make-export__175044175045_
                                                _bind167409_
                                                _phi167404_
                                                (gx#current-expander-context)
                                                _name167402_)
                                               _r167256_)))
                                      _$e167406_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Reference to unbound identifier"
                                      _stx167100_
                                      _hd167253_
                                      _id167392_)))
                               (_E167274167372_))
                           (_E167274167372_)))))
                 (_E167274167372_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E167274167372_))
                                           (_E167274167372_))))
                                   (_E167274167372_))))
                            (_E167260167460_
                             (lambda ()
                               (if (gx#stx-pair? _e167257167289_)
                                   (let ((_e167262167415_
                                          (gx#syntax-e _e167257167289_)))
                                     (let ((_hd167263167418_
                                            (##car _e167262167415_))
                                           (_tl167264167420_
                                            (##cdr _e167262167415_)))
                                       (if (eq? (gx#stx-e _hd167263167418_)
                                                'spec:)
                                           (if (gx#stx-pair? _tl167264167420_)
                                               (let ((_e167265167423_
                                                      (gx#syntax-e
                                                       _tl167264167420_)))
                                                 (let ((_hd167266167426_
                                                        (##car _e167265167423_))
                                                       (_tl167267167428_
                                                        (##cdr _e167265167423_)))
                                                   (let ((_phi167431_
                                                          _hd167266167426_))
                                                     (if (gx#stx-pair?
                                                          _tl167267167428_)
                                                         (let ((_e167268167433_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl167267167428_)))
                   (let ((_hd167269167436_ (##car _e167268167433_))
                         (_tl167270167438_ (##cdr _e167268167433_)))
                     (let ((_id167441_ _hd167269167436_))
                       (if (gx#stx-pair? _tl167270167438_)
                           (let ((_e167271167443_
                                  (gx#syntax-e _tl167270167438_)))
                             (let ((_hd167272167446_ (##car _e167271167443_))
                                   (_tl167273167448_ (##cdr _e167271167443_)))
                               (let ((_name167451_ _hd167272167446_))
                                 (if (gx#stx-null? _tl167273167448_)
                                     (if (and (gx#stx-fixnum? _phi167431_)
                                              (gx#identifier? _id167441_)
                                              (gx#identifier? _name167451_))
                                         (let* ((_phi167453_
                                                 (gx#stx-e _phi167431_))
                                                (_$e167455_
                                                 (gx#core-resolve-identifier__1
                                                  _id167441_
                                                  _phi167453_)))
                                           (if _$e167455_
                                               ((lambda (_bind167458_)
                                                  (_K167254_
                                                   _rest167255_
                                                   (cons (_make-export__175044175045_
                                                          _bind167458_
                                                          _phi167453_
                                                          (gx#current-expander-context)
                                                          _name167451_)
                                                         _r167256_)))
                                                _$e167455_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _stx167100_
                                                _hd167253_
                                                _id167441_)))
                                         (_E167261167411_))
                                     (_E167261167411_)))))
                           (_E167261167411_)))))
                 (_E167261167411_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E167261167411_))
                                           (_E167261167411_))))
                                   (_E167261167411_))))
                            (_E167259167471_
                             (lambda ()
                               (let ((_id167464_ _e167257167289_))
                                 (if (gx#identifier? _id167464_)
                                     (let ((_$e167466_
                                            (gx#core-resolve-identifier__1
                                             _id167464_
                                             (gx#current-export-expander-phi))))
                                       (if _$e167466_
                                           ((lambda (_bind167469_)
                                              (_K167254_
                                               _rest167255_
                                               (cons (_make-export__0__175046175049_
                                                      _bind167469_)
                                                     _r167256_)))
                                            _$e167466_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _stx167100_
                                            _hd167253_)))
                                     (_E167260167460_)))))
                            (_E167258167535_
                             (lambda ()
                               (if (eq? (gx#stx-e _e167257167289_) '#t)
                                   (if '#t
                                       (let* ((_current-ctx167475_
                                               (gx#current-expander-context))
                                              (_current-phi167477_
                                               (gx#current-export-expander-phi))
                                              (_phi-ctx167479_
                                               (gx#core-context-shift
                                                _current-ctx167475_
                                                _current-phi167477_))
                                              (_phi-bind167481_
                                               (table->list
                                                (##unchecked-structure-ref
                                                 _phi-ctx167479_
                                                 '2
                                                 gx#expander-context::t
                                                 '#f))))
                                         (let _lp167484_ ((_bind-rest167486_
                                                           _phi-bind167481_)
                                                          (_set167487_ '()))
                                           (let* ((_bind-rest167488167498_
                                                   _bind-rest167486_)
                                                  (_else167490167506_
                                                   (lambda ()
                                                     (_K167254_
                                                      _rest167255_
                                                      (cons (##structure
                                                             gx#export-set::t
                                                             '#f
                                                             _current-phi167477_
                                                             _set167487_)
                                                            _r167256_))))
                                                  (_K167492167516_
                                                   (lambda (_bind-rest167509_
                                                            _bind167510_
                                                            _key167511_)
                                                     (if (or (##structure-direct-instance-of?
                                                              _bind167510_
                                                              'gx#import-binding::t)
                                                             (gx#private-feature-binding?
                                                              _bind167510_))
                                                         (_lp167484_
                                                          _bind-rest167509_
                                                          _set167487_)
                                                         (_lp167484_
                                                          _bind-rest167509_
                                                          (cons (_make-export__2__175048175051_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind167510_
                         _current-phi167477_
                         _current-ctx167475_)
                        _set167487_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _bind-rest167488167498_)
                                                 (let ((_hd167493167519_
                                                        (##car _bind-rest167488167498_))
                                                       (_tl167494167521_
                                                        (##cdr _bind-rest167488167498_)))
                                                   (if (##pair? _hd167493167519_)
                                                       (let ((_hd167495167524_
                                                              (##car _hd167493167519_))
                                                             (_tl167496167526_
                                                              (##cdr _hd167493167519_)))
                                                         (let* ((_key167529_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd167495167524_)
                        (_bind167531_ _tl167496167526_)
                        (_bind-rest167533_ _tl167494167521_))
                   (_K167492167516_
                    _bind-rest167533_
                    _bind167531_
                    _key167529_)))
               (_else167490167506_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_else167490167506_)))))
                                       (_E167259167471_))
                                   (_E167259167471_)))))
                       (_E167258167535_))))
                  (_export-imports167105_
                   (lambda (_src167129_ _r167130_)
                     (letrec* ((_current-ctx167132_
                                (gx#current-expander-context))
                               (_current-phi167133_
                                (gx#current-export-expander-phi))
                               (_import->export167134_
                                (lambda (_in167215_)
                                  (let* ((_in167216167224_ _in167215_)
                                         (_E167218167228_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _in167216167224_)))
                                         (_K167219167235_
                                          (lambda (_phi167231_
                                                   _key167232_
                                                   _out167233_)
                                            (##structure
                                             gx#module-export::t
                                             _current-ctx167132_
                                             _key167232_
                                             _phi167231_
                                             _key167232_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _in167216167224_
                                         'gx#module-import::t)
                                        (let* ((_e167220167238_
                                                (##unchecked-structure-ref
                                                 _in167216167224_
                                                 '1
                                                 gx#module-import::t
                                                 '#f))
                                               (_out167241_ _e167220167238_)
                                               (_e167221167243_
                                                (##unchecked-structure-ref
                                                 _in167216167224_
                                                 '2
                                                 gx#module-import::t
                                                 '#f))
                                               (_key167246_ _e167221167243_)
                                               (_e167222167248_
                                                (##unchecked-structure-ref
                                                 _in167216167224_
                                                 '3
                                                 gx#module-import::t
                                                 '#f))
                                               (_phi167251_ _e167222167248_))
                                          (_K167219167235_
                                           _phi167251_
                                           _key167246_
                                           _out167241_))
                                        (_E167218167228_)))))
                               (_fold-e167135_
                                (lambda (_in167137_ _r167138_)
                                  (let* ((_in167139167153_ _in167137_)
                                         (_else167142167161_
                                          (lambda () _r167138_)))
                                    (let ((_K167148167197_
                                           (lambda (_phi167193_
                                                    _key167194_
                                                    _out167195_)
                                             (if (and (fx= _phi167193_
                                                           _current-phi167133_)
                                                      (eq? _src167129_
                                                           (##unchecked-structure-ref
                                                            _out167195_
                                                            '1
                                                            gx#module-export::t
                                                            '#f)))
                                                 (cons (_import->export167134_
                                                        _in167137_)
                                                       _r167138_)
                                                 _r167138_)))
                                          (_K167144167172_
                                           (lambda (_imports167165_
                                                    _phi167166_
                                                    _ctx167167_)
                                             (if (and (fx= _phi167166_
                                                           _current-phi167133_)
                                                      (eq? _src167129_
                                                           _ctx167167_))
                                                 (foldl1 (lambda (_in167169_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r167170_)
                   (cons (_import->export167134_ _in167169_) _r167170_))
                 _r167138_
                 _imports167165_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _r167138_))))
                                      (let ((_try-match167141167190_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _in167139167153_
                                                    'gx#import-set::t)
                                                   (let* ((_e167145167175_
                                                           (##unchecked-structure-ref
                                                            _in167139167153_
                                                            '1
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e167146167180_
                                                           (##unchecked-structure-ref
                                                            _in167139167153_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e167147167185_
                                                           (##unchecked-structure-ref
                                                            _in167139167153_
                                                            '3
                                                            gx#import-set::t
                                                            '#f)))
                                                     (let ((_ctx167178_
                                                            _e167145167175_)
                                                           (_phi167183_
                                                            _e167146167180_)
                                                           (_imports167188_
                                                            _e167147167185_))
                                                       (_K167144167172_
                                                        _imports167188_
                                                        _phi167183_
                                                        _ctx167178_)))
                                                   (_else167142167161_)))))
                                        (if (##structure-direct-instance-of?
                                             _in167139167153_
                                             'gx#module-import::t)
                                            (let* ((_e167149167200_
                                                    (##unchecked-structure-ref
                                                     _in167139167153_
                                                     '1
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e167150167205_
                                                    (##unchecked-structure-ref
                                                     _in167139167153_
                                                     '2
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e167151167210_
                                                    (##unchecked-structure-ref
                                                     _in167139167153_
                                                     '3
                                                     gx#module-import::t
                                                     '#f)))
                                              (let ((_out167203_
                                                     _e167149167200_)
                                                    (_key167208_
                                                     _e167150167205_)
                                                    (_phi167213_
                                                     _e167151167210_))
                                                (_K167148167197_
                                                 _phi167213_
                                                 _key167208_
                                                 _out167203_)))
                                            (_try-match167141167190_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _src167129_
                              _current-phi167133_
                              (foldl1 _fold-e167135_
                                      '()
                                      (##unchecked-structure-ref
                                       _current-ctx167132_
                                       '8
                                       gx#module-context::t
                                       '#f)))
                             _r167130_))))
                  (_export!167106_
                   (lambda (_rbody167119_)
                     (letrec* ((_current-ctx167121_
                                (gx#current-expander-context))
                               (_fold-e167122_
                                (lambda (_out167126_ _r167127_)
                                  (if (##structure-direct-instance-of?
                                       _out167126_
                                       'gx#module-export::t)
                                      (cons _out167126_ _r167127_)
                                      (if (##structure-direct-instance-of?
                                           _out167126_
                                           'gx#export-set::t)
                                          (foldl1 cons
                                                  _r167127_
                                                  (##unchecked-structure-ref
                                                   _out167126_
                                                   '3
                                                   gx#export-set::t
                                                   '#f))
                                          _r167127_)))))
                       (let ((_body167124_ (reverse _rbody167119_)))
                         (##unchecked-structure-set!
                          _current-ctx167121_
                          (foldl1 _fold-e167122_
                                  (##unchecked-structure-ref
                                   _current-ctx167121_
                                   '9
                                   gx#module-context::t
                                   '#f)
                                  _body167124_)
                          '9
                          gx#module-context::t
                          '#f)
                         _body167124_))))
                  (_expanded-export?167107_
                   (lambda (_e167114_)
                     (let ((_$e167116_
                            (##structure-direct-instance-of?
                             _e167114_
                             'gx#module-export::t)))
                       (if _$e167116_
                           _$e167116_
                           (##structure-direct-instance-of?
                            _e167114_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _internal-expand?167101_)
              (let ((_rbody167112_
                     (gx#core-expand-import/export
                      _stx167100_
                      _expanded-export?167107_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _expand1167104_)))
                (if _internal-expand?167101_
                    (reverse _rbody167112_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons '%#export (_export!167106_ _rbody167112_))
                     (gx#stx-source _stx167100_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _stx167100_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _stx167100_))))))
    (define gx#core-expand-export%__0
      (lambda (_stx167585_)
        (let ((_internal-expand?167587_ '#f))
          (gx#core-expand-export%__% _stx167585_ _internal-expand?167587_))))
    (define gx#core-expand-export%
      (lambda _g175119_
        (let ((_g175118_ (##length _g175119_)))
          (cond ((##fx= _g175118_ 1)
                 (apply (lambda (_stx167585_)
                          (gx#core-expand-export%__0 _stx167585_))
                        _g175119_))
                ((##fx= _g175118_ 2)
                 (apply (lambda (_stx167589_ _internal-expand?167590_)
                          (gx#core-expand-export%__%
                           _stx167589_
                           _internal-expand?167590_))
                        _g175119_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g175119_))))))
    (define gx#core-expand-export-source
      (lambda (_hd167097_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _hd167097_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_stx167067_)
        (let* ((_e167068167075_ _stx167067_)
               (_E167070167079_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e167068167075_)))
               (_E167069167093_
                (lambda ()
                  (if (gx#stx-pair? _e167068167075_)
                      (let ((_e167071167083_ (gx#syntax-e _e167068167075_)))
                        (let ((_hd167072167086_ (##car _e167071167083_))
                              (_tl167073167088_ (##cdr _e167071167083_)))
                          (let ((_body167091_ _tl167073167088_))
                            (if (gx#identifier-list? _body167091_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _body167091_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _body167091_))
                                   (gx#stx-source _stx167067_)))
                                (_E167070167079_)))))
                      (_E167070167079_)))))
          (_E167069167093_))))
    (define gx#core-bind-feature!__%
      (lambda (_id167033_ _private?167034_ _phi167035_ _ctx167036_)
        (gx#core-bind-syntax!__%
         _id167033_
         ((if _private?167034_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _id167033_))
         _private?167034_
         _phi167035_
         _ctx167036_)))
    (define gx#core-bind-feature!__0
      (lambda (_id167041_)
        (let* ((_private?167043_ '#f)
               (_phi167045_ (gx#current-expander-phi))
               (_ctx167047_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id167041_
           _private?167043_
           _phi167045_
           _ctx167047_))))
    (define gx#core-bind-feature!__1
      (lambda (_id167049_ _private?167050_)
        (let* ((_phi167052_ (gx#current-expander-phi))
               (_ctx167054_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id167049_
           _private?167050_
           _phi167052_
           _ctx167054_))))
    (define gx#core-bind-feature!__2
      (lambda (_id167056_ _private?167057_ _phi167058_)
        (let ((_ctx167060_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id167056_
           _private?167057_
           _phi167058_
           _ctx167060_))))
    (define gx#core-bind-feature!
      (lambda _g175121_
        (let ((_g175120_ (##length _g175121_)))
          (cond ((##fx= _g175120_ 1)
                 (apply (lambda (_id167041_)
                          (gx#core-bind-feature!__0 _id167041_))
                        _g175121_))
                ((##fx= _g175120_ 2)
                 (apply (lambda (_id167049_ _private?167050_)
                          (gx#core-bind-feature!__1
                           _id167049_
                           _private?167050_))
                        _g175121_))
                ((##fx= _g175120_ 3)
                 (apply (lambda (_id167056_ _private?167057_ _phi167058_)
                          (gx#core-bind-feature!__2
                           _id167056_
                           _private?167057_
                           _phi167058_))
                        _g175121_))
                ((##fx= _g175120_ 4)
                 (apply (lambda (_id167062_
                                 _private?167063_
                                 _phi167064_
                                 _ctx167065_)
                          (gx#core-bind-feature!__%
                           _id167062_
                           _private?167063_
                           _phi167064_
                           _ctx167065_))
                        _g175121_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g175121_))))))))
