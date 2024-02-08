(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1707415536)
  (begin
    (declare (not safe))
    (define gx#module-import::t
      (make-struct-type*
       'gx#module-import::t
       'module-import
       '#f
       '(source name phi weak?)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))
       '#f))
    (define gx#module-import? (make-struct-predicate gx#module-import::t))
    (define gx#make-module-import
      (lambda _$args155595_
        (apply make-struct-instance gx#module-import::t _$args155595_)))
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
      (make-struct-type*
       'gx#module-export::t
       'module-export
       '#f
       '(context key phi name weak?)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))
       '#f))
    (define gx#module-export? (make-struct-predicate gx#module-export::t))
    (define gx#make-module-export
      (lambda _$args155592_
        (apply make-struct-instance gx#module-export::t _$args155592_)))
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
      (make-struct-type*
       'gx#import-set::t
       'import-set
       '#f
       '(source phi imports)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))
       '#f))
    (define gx#import-set? (make-struct-predicate gx#import-set::t))
    (define gx#make-import-set
      (lambda _$args155589_
        (apply make-struct-instance gx#import-set::t _$args155589_)))
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
      (make-struct-type*
       'gx#export-set::t
       'export-set
       '#f
       '(source phi exports)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))
       '#f))
    (define gx#export-set? (make-struct-predicate gx#export-set::t))
    (define gx#make-export-set
      (lambda _$args155586_
        (apply make-struct-instance gx#export-set::t _$args155586_)))
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
      (make-class-type*
       'gx#import-expander::t
       'import-expander
       (list gx#user-expander::t)
       '()
       '()
       ':init!))
    (define gx#import-expander? (make-class-predicate gx#import-expander::t))
    (define gx#make-import-expander
      (lambda _$args155583_
        (apply make-class-instance gx#import-expander::t _$args155583_)))
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
      (make-class-type*
       'gx#export-expander::t
       'export-expander
       (list gx#user-expander::t)
       '()
       '()
       ':init!))
    (define gx#export-expander? (make-class-predicate gx#export-expander::t))
    (define gx#make-export-expander
      (lambda _$args155580_
        (apply make-class-instance gx#export-expander::t _$args155580_)))
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
      (make-class-type*
       'gx#import-export-expander::t
       'import-export-expander
       (list gx#import-expander::t gx#export-expander::t)
       '()
       '()
       ':init!))
    (define gx#import-export-expander?
      (make-class-predicate gx#import-export-expander::t))
    (define gx#make-import-export-expander
      (lambda _$args155577_
        (apply make-class-instance
               gx#import-export-expander::t
               _$args155577_)))
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
      (lambda (_path155574_ _fun155575_)
        (call-with-input-file
         (cons 'path: (cons _path155574_ gx#source-file-settings))
         _fun155575_)))
    (define gx#module-context:::init!
      (lambda (_self155568_ _id155569_ _super155570_ _ns155571_ _path155572_)
        (if (##fx< '11 (##structure-length _self155568_))
            (begin
              (##unchecked-structure-set!
               _self155568_
               _id155569_
               '1
               (##structure-type _self155568_)
               '#f)
              (##unchecked-structure-set!
               _self155568_
               (make-table 'test: eq?)
               '2
               (##structure-type _self155568_)
               '#f)
              (##unchecked-structure-set!
               _self155568_
               _super155570_
               '3
               (##structure-type _self155568_)
               '#f)
              (##unchecked-structure-set!
               _self155568_
               '#f
               '4
               (##structure-type _self155568_)
               '#f)
              (##unchecked-structure-set!
               _self155568_
               '#f
               '5
               (##structure-type _self155568_)
               '#f)
              (##unchecked-structure-set!
               _self155568_
               _ns155571_
               '6
               (##structure-type _self155568_)
               '#f)
              (##unchecked-structure-set!
               _self155568_
               _path155572_
               '7
               (##structure-type _self155568_)
               '#f)
              (##unchecked-structure-set!
               _self155568_
               '()
               '8
               (##structure-type _self155568_)
               '#f)
              (##unchecked-structure-set!
               _self155568_
               '()
               '9
               (##structure-type _self155568_)
               '#f)
              (##unchecked-structure-set!
               _self155568_
               '#f
               '10
               (##structure-type _self155568_)
               '#f)
              (##unchecked-structure-set!
               _self155568_
               '#f
               '11
               (##structure-type _self155568_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self155568_
                   '11
                   (##vector-length _self155568_)))))
    (bind-method! gx#module-context::t ':init! gx#module-context:::init! '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_self155412_ _ctx155413_ _root155414_)
        (let ((_super155422_
               (let ((_$e155416_ _root155414_))
                 (if _$e155416_
                     _$e155416_
                     (let ((_$e155419_ (gx#core-context-root__0)))
                       (if _$e155419_
                           _$e155419_
                           (let ((__obj159831
                                  (make-object* gx#root-context::t '3)))
                             (let ((__constructor159832
                                    (find-method gx#root-context::t ':init!)))
                               (if __constructor159832
                                   (__constructor159832 __obj159831)
                                   (error '"missing constructor method implementation"
                                          'class:
                                          gx#root-context::t
                                          'method:
                                          ':init!)))
                             __obj159831)))))))
          (if _ctx155413_
              (let ((_id155425_
                     (##structure-ref
                      _ctx155413_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_path155426_
                     (##structure-ref _ctx155413_ '7 gx#module-context::t '#f))
                    (_in155427_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _ctx155413_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_e155428_
                     (make-promise (lambda () (gx#eval-module _ctx155413_)))))
                (if (##fx< '8 (##structure-length _self155412_))
                    (begin
                      (##unchecked-structure-set!
                       _self155412_
                       _id155425_
                       '1
                       (##structure-type _self155412_)
                       '#f)
                      (##unchecked-structure-set!
                       _self155412_
                       (make-table 'test: eq? 'size: (length _in155427_))
                       '2
                       (##structure-type _self155412_)
                       '#f)
                      (##unchecked-structure-set!
                       _self155412_
                       _super155422_
                       '3
                       (##structure-type _self155412_)
                       '#f)
                      (##unchecked-structure-set!
                       _self155412_
                       '#f
                       '4
                       (##structure-type _self155412_)
                       '#f)
                      (##unchecked-structure-set!
                       _self155412_
                       '#f
                       '5
                       (##structure-type _self155412_)
                       '#f)
                      (##unchecked-structure-set!
                       _self155412_
                       _path155426_
                       '6
                       (##structure-type _self155412_)
                       '#f)
                      (##unchecked-structure-set!
                       _self155412_
                       _in155427_
                       '7
                       (##structure-type _self155412_)
                       '#f)
                      (##unchecked-structure-set!
                       _self155412_
                       _e155428_
                       '8
                       (##structure-type _self155412_)
                       '#f))
                    (error '"struct-instance-init!: too many arguments for struct"
                           _self155412_
                           '8
                           (##vector-length _self155412_)))
                (for-each
                 (lambda (_g155429155431_)
                   (gx#core-bind-weak-import!__% _g155429155431_ _self155412_))
                 _in155427_))
              (if (##fx< '8 (##structure-length _self155412_))
                  (begin
                    (##unchecked-structure-set!
                     _self155412_
                     '#f
                     '1
                     (##structure-type _self155412_)
                     '#f)
                    (##unchecked-structure-set!
                     _self155412_
                     (make-table 'test: eq?)
                     '2
                     (##structure-type _self155412_)
                     '#f)
                    (##unchecked-structure-set!
                     _self155412_
                     _super155422_
                     '3
                     (##structure-type _self155412_)
                     '#f)
                    (##unchecked-structure-set!
                     _self155412_
                     '#f
                     '4
                     (##structure-type _self155412_)
                     '#f)
                    (##unchecked-structure-set!
                     _self155412_
                     '#f
                     '5
                     (##structure-type _self155412_)
                     '#f)
                    (##unchecked-structure-set!
                     _self155412_
                     '#f
                     '6
                     (##structure-type _self155412_)
                     '#f)
                    (##unchecked-structure-set!
                     _self155412_
                     '()
                     '7
                     (##structure-type _self155412_)
                     '#f)
                    (##unchecked-structure-set!
                     _self155412_
                     '#f
                     '8
                     (##structure-type _self155412_)
                     '#f))
                  (error '"struct-instance-init!: too many arguments for struct"
                         _self155412_
                         '8
                         (##vector-length _self155412_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_self155437_ _ctx155438_)
        (let ((_root155440_ '#f))
          (gx#prelude-context:::init!__%
           _self155437_
           _ctx155438_
           _root155440_))))
    (define gx#prelude-context:::init!
      (lambda _g159838_
        (let ((_g159837_ (##length _g159838_)))
          (cond ((##fx= _g159837_ 2)
                 (apply (lambda (_self155437_ _ctx155438_)
                          (gx#prelude-context:::init!__0
                           _self155437_
                           _ctx155438_))
                        _g159838_))
                ((##fx= _g159837_ 3)
                 (apply (lambda (_self155442_ _ctx155443_ _root155444_)
                          (gx#prelude-context:::init!__%
                           _self155442_
                           _ctx155443_
                           _root155444_))
                        _g159838_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g159838_))))))
    (bind-method! gx#prelude-context::t ':init! gx#prelude-context:::init! '#f)
    (define gx#import-export-expander-init!
      (lambda (_self155286_ _e155287_)
        (if (##fx< '3 (##structure-length _self155286_))
            (begin
              (##unchecked-structure-set!
               _self155286_
               _e155287_
               '1
               (##structure-type _self155286_)
               '#f)
              (##unchecked-structure-set!
               _self155286_
               (gx#current-expander-context)
               '2
               (##structure-type _self155286_)
               '#f)
              (##unchecked-structure-set!
               _self155286_
               (fx- (gx#current-expander-phi) '1)
               '3
               (##structure-type _self155286_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self155286_
                   '3
                   (##vector-length _self155286_)))))
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
      (lambda (_g154912154915_ _g154913154917_)
        (gx#core-apply-user-expander__%
         _g154912154915_
         _g154913154917_
         'apply-import-expander)))
    (bind-method!
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_g154783154786_ _g154784154788_)
        (gx#core-apply-user-expander__%
         _g154783154786_
         _g154784154788_
         'apply-export-expander)))
    (bind-method!
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_ctx154654_)
        (let* ((_path154656_
                (##structure-ref _ctx154654_ '7 gx#module-context::t '#f))
               (_path154658_
                (if (pair? _path154656_) (last _path154656_) _path154656_)))
          (if (string? _path154658_) _path154658_ '#f))))
    (define gx#import-module__%
      (lambda (_path154630_ _reload?154631_ _eval?154632_)
        (let ((_ctx154634_
               ((gx#current-expander-module-import)
                _path154630_
                _reload?154631_)))
          (if (and _ctx154634_ _eval?154632_)
              (gx#eval-module _ctx154634_)
              '#!void)
          _ctx154634_)))
    (define gx#import-module__0
      (lambda (_path154639_)
        (let* ((_reload?154641_ '#f) (_eval?154643_ '#f))
          (gx#import-module__% _path154639_ _reload?154641_ _eval?154643_))))
    (define gx#import-module__1
      (lambda (_path154645_ _reload?154646_)
        (let ((_eval?154648_ '#f))
          (gx#import-module__% _path154645_ _reload?154646_ _eval?154648_))))
    (define gx#import-module
      (lambda _g159840_
        (let ((_g159839_ (##length _g159840_)))
          (cond ((##fx= _g159839_ 1)
                 (apply (lambda (_path154639_)
                          (gx#import-module__0 _path154639_))
                        _g159840_))
                ((##fx= _g159839_ 2)
                 (apply (lambda (_path154645_ _reload?154646_)
                          (gx#import-module__1 _path154645_ _reload?154646_))
                        _g159840_))
                ((##fx= _g159839_ 3)
                 (apply (lambda (_path154650_ _reload?154651_ _eval?154652_)
                          (gx#import-module__%
                           _path154650_
                           _reload?154651_
                           _eval?154652_))
                        _g159840_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g159840_))))))
    (define gx#eval-module
      (lambda (_mod154627_) ((gx#current-expander-module-eval) _mod154627_)))
    (define gx#core-eval-module
      (lambda (_obj154612_)
        (letrec ((_force-e154614_
                  (lambda (_getf154623_ _e154624_)
                    (call-with-parameters
                     (lambda () (force (_getf154623_ _e154624_)))
                     gx#current-expander-context
                     _e154624_
                     gx#current-expander-phi
                     '0))))
          (let _recur154616_ ((_e154618_ _obj154612_))
            (if (##structure-instance-of? _e154618_ 'gx#module-context::t)
                (begin
                  (let ((_$e154620_ (gx#core-context-prelude__% _e154618_)))
                    (if _$e154620_ (_recur154616_ _$e154620_) '#!void))
                  (_force-e154614_ gx#module-context-e _e154618_))
                (if (##structure-instance-of? _e154618_ 'gx#prelude-context::t)
                    (_force-e154614_ gx#prelude-context-e _e154618_)
                    (if (gx#stx-string? _e154618_)
                        (_recur154616_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _e154618_)))
                        (if (gx#core-library-module-path? _e154618_)
                            (_recur154616_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _e154618_)))
                            (error '"Cannot eval module" _obj154612_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_ctx154595_)
        (let _lp154597_ ((_e154599_ _ctx154595_))
          (if (or (##structure-instance-of? _e154599_ 'gx#module-context::t)
                  (##structure-instance-of? _e154599_ 'gx#local-context::t))
              (_lp154597_
               (##unchecked-structure-ref _e154599_ '3 gx#phi-context::t '#f))
              (if (##structure-instance-of? _e154599_ 'gx#prelude-context::t)
                  _e154599_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_ctx154608_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _ctx154608_))))
    (define gx#core-context-prelude
      (lambda _g159842_
        (let ((_g159841_ (##length _g159842_)))
          (cond ((##fx= _g159841_ 0)
                 (apply (lambda () (gx#core-context-prelude__0)) _g159842_))
                ((##fx= _g159841_ 1)
                 (apply (lambda (_ctx154610_)
                          (gx#core-context-prelude__% _ctx154610_))
                        _g159842_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g159842_))))))
    (define gx#core-module->prelude-context
      (lambda (_ctx154585_)
        (let* ((_ht154587_ (gx#current-expander-module-registry))
               (_$e154589_ (table-ref _ht154587_ _ctx154585_ '#f)))
          (if _$e154589_
              (values _$e154589_)
              (let ((_pre154592_
                     (let ((__obj159833
                            (make-object* gx#prelude-context::t '9)))
                       (gx#prelude-context:::init! __obj159833 _ctx154585_)
                       __obj159833)))
                (table-set! _ht154587_ _ctx154585_ _pre154592_)
                _pre154592_)))))
    (define gx#core-import-module__%
      (lambda (_rpath154466_ _reload?154467_)
        (letrec ((_import-source154469_
                  (lambda (_path154554_)
                    (if (member _path154554_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _path154554_)
                        '#!void)
                    (call-with-parameters
                     (lambda ()
                       (let ((_g159843_ (gx#core-read-module _path154554_)))
                         (begin
                           (let ((_g159844_
                                  (if (##values? _g159843_)
                                      (##vector-length _g159843_)
                                      1)))
                             (if (not (##fx= _g159844_ 4))
                                 (error "Context expects 4 values" _g159844_)))
                           (let ((_pre154557_ (##vector-ref _g159843_ 0))
                                 (_id154558_ (##vector-ref _g159843_ 1))
                                 (_ns154559_ (##vector-ref _g159843_ 2))
                                 (_body154560_ (##vector-ref _g159843_ 3)))
                             (let* ((_prelude154565_
                                     (if (##structure-instance-of?
                                          _pre154557_
                                          'gx#prelude-context::t)
                                         _pre154557_
                                         (if (##structure-instance-of?
                                              _pre154557_
                                              'gx#module-context::t)
                                             (gx#core-module->prelude-context
                                              _pre154557_)
                                             (if (string? _pre154557_)
                                                 (gx#core-module->prelude-context
                                                  (gx#core-import-module__0
                                                   _pre154557_))
                                                 (if (not _pre154557_)
                                                     (let ((_$e154562_
                                                            (gx#current-expander-module-prelude)))
                                                       (if _$e154562_
                                                           _$e154562_
                                                           (let ((__obj159834
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (make-object* gx#prelude-context::t '9)))
                     (gx#prelude-context:::init! __obj159834 '#f)
                     __obj159834)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error '"Cannot import module; unknown prelude"
                                                            _rpath154466_
                                                            _pre154557_))))))
                                    (_ctx154567_
                                     (let ((__obj159835
                                            (make-object*
                                             gx#module-context::t
                                             '12)))
                                       (gx#module-context:::init!
                                        __obj159835
                                        _id154558_
                                        _prelude154565_
                                        _ns154559_
                                        _path154554_)
                                       __obj159835))
                                    (_body154569_
                                     (gx#core-expand-module-begin
                                      _body154560_
                                      _ctx154567_))
                                    (_body154571_
                                     (gx#core-quote-syntax__%
                                      (gx#core-cons '%#begin _body154569_)
                                      _path154554_
                                      _ctx154567_
                                      '())))
                               (##unchecked-structure-set!
                                _ctx154567_
                                (make-promise
                                 (lambda () (gx#eval-syntax* _body154571_)))
                                '10
                                gx#module-context::t
                                '#f)
                               (##unchecked-structure-set!
                                _ctx154567_
                                _body154571_
                                '11
                                gx#module-context::t
                                '#f)
                               (table-set!
                                (gx#current-expander-module-registry)
                                _path154554_
                                _ctx154567_)
                               (table-set!
                                (gx#current-expander-module-registry)
                                _id154558_
                                _ctx154567_)
                               _ctx154567_)))))
                     gx#current-expander-context
                     (gx#core-context-root__0)
                     gx#current-expander-marks
                     '()
                     gx#current-expander-phi
                     '0
                     gx#current-expander-path
                     (cons _path154554_ (gx#current-expander-path))
                     gx#current-import-expander-phi
                     '#f
                     gx#current-export-expander-phi
                     '#f)))
                 (_import-submodule154470_
                  (lambda (_rpath154482_)
                    (let* ((_rpath154483154490_ _rpath154482_)
                           (_E154485154494_
                            (lambda ()
                              (error '"No clause matching"
                                     _rpath154483154490_)))
                           (_K154486154542_
                            (lambda (_refs154497_ _origin154498_)
                              (let ((_ctx154500_
                                     (if _origin154498_
                                         (gx#core-import-module__%
                                          _origin154498_
                                          _reload?154467_)
                                         (gx#current-expander-context))))
                                (let _lp154502_ ((_rest154504_ _refs154497_)
                                                 (_ctx154505_ _ctx154500_))
                                  (let* ((_rest154506154514_ _rest154504_)
                                         (_else154508154522_
                                          (lambda () _ctx154505_))
                                         (_K154510154530_
                                          (lambda (_rest154525_ _id154526_)
                                            (let ((_bind154528_
                                                   (gx#resolve-identifier__%
                                                    _id154526_
                                                    '0
                                                    _ctx154505_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _bind154528_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _bind154528_
                                                         '4
                                                         gx#syntax-binding::t
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_lp154502_
                                                   _rest154525_
                                                   (##unchecked-structure-ref
                                                    _bind154528_
                                                    '4
                                                    gx#syntax-binding::t
                                                    '#f))
                                                  (error '"Cannot import submodule; not bound as a module"
                                                         _rpath154482_
                                                         _id154526_
                                                         _bind154528_))))))
                                    (if (##pair? _rest154506154514_)
                                        (let ((_hd154511154533_
                                               (##car _rest154506154514_))
                                              (_tl154512154535_
                                               (##cdr _rest154506154514_)))
                                          (let* ((_id154538_ _hd154511154533_)
                                                 (_rest154540_
                                                  _tl154512154535_))
                                            (_K154510154530_
                                             _rest154540_
                                             _id154538_)))
                                        (_else154508154522_))))))))
                      (if (##pair? _rpath154483154490_)
                          (let ((_hd154487154545_ (##car _rpath154483154490_))
                                (_tl154488154547_ (##cdr _rpath154483154490_)))
                            (let* ((_origin154550_ _hd154487154545_)
                                   (_refs154552_ _tl154488154547_))
                              (_K154486154542_ _refs154552_ _origin154550_)))
                          (_E154485154494_))))))
          (let ((_$e154472_
                 (if (not _reload?154467_)
                     (table-ref
                      (gx#current-expander-module-registry)
                      _rpath154466_
                      '#f)
                     '#f)))
            (if _$e154472_
                (values _$e154472_)
                (if (list? _rpath154466_)
                    (_import-submodule154470_ _rpath154466_)
                    (if (gx#core-library-module-path? _rpath154466_)
                        (let ((_ctx154475_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _rpath154466_)
                                _reload?154467_)))
                          (table-set!
                           (gx#current-expander-module-registry)
                           _rpath154466_
                           _ctx154475_)
                          _ctx154475_)
                        (let* ((_npath154477_ (path-normalize _rpath154466_))
                               (_$e154479_
                                (if (not _reload?154467_)
                                    (table-ref
                                     (gx#current-expander-module-registry)
                                     _npath154477_
                                     '#f)
                                    '#f)))
                          (if _$e154479_
                              (values _$e154479_)
                              (_import-source154469_ _npath154477_))))))))))
    (define gx#core-import-module__0
      (lambda (_rpath154578_)
        (let ((_reload?154580_ '#f))
          (gx#core-import-module__% _rpath154578_ _reload?154580_))))
    (define gx#core-import-module
      (lambda _g159846_
        (let ((_g159845_ (##length _g159846_)))
          (cond ((##fx= _g159845_ 1)
                 (apply (lambda (_rpath154578_)
                          (gx#core-import-module__0 _rpath154578_))
                        _g159846_))
                ((##fx= _g159845_ 2)
                 (apply (lambda (_rpath154582_ _reload?154583_)
                          (gx#core-import-module__%
                           _rpath154582_
                           _reload?154583_))
                        _g159846_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g159846_))))))
    (define gx#core-read-module
      (lambda (_path154455_)
        (with-catch
         (lambda (_exn154457_)
           (if (and (datum-parsing-exception? _exn154457_)
                    (eq? (datum-parsing-exception-filepos _exn154457_) '0))
               (gx#core-read-module/lang _path154455_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _path154455_
                (call-with-parameters
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_g154459154461_)
                      (display-exception _exn154457_ _g154459154461_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _path154455_)))))
    (define gx#core-read-module/sexp
      (lambda (_path154318_)
        (let _lp154320_ ((_body154322_ (read-syntax-from-file _path154318_))
                         (_pre154323_ '#f)
                         (_ns154324_ '#f)
                         (_pkg154325_ '#f))
          (let* ((_e154326154350_ _body154322_)
                 (_E154342154372_
                  (lambda ()
                    (let ((_g159847_
                           (if _pkg154325_
                               (values _pre154323_ _ns154324_ _pkg154325_)
                               (gx#core-read-module-package
                                _path154318_
                                _pre154323_
                                _ns154324_))))
                      (begin
                        (let ((_g159848_
                               (if (##values? _g159847_)
                                   (##vector-length _g159847_)
                                   1)))
                          (if (not (##fx= _g159848_ 3))
                              (error "Context expects 3 values" _g159848_)))
                        (let ((_pre154354_ (##vector-ref _g159847_ 0))
                              (_ns154355_ (##vector-ref _g159847_ 1))
                              (_pkg154356_ (##vector-ref _g159847_ 2)))
                          (let* ((_prelude154358_
                                  (if (gx#core-bound-module-prelude?
                                       _pre154354_)
                                      (gx#syntax-local-e__0 _pre154354_)
                                      (if (gx#core-library-module-path?
                                           _pre154354_)
                                          (gx#core-resolve-library-module-path
                                           _pre154354_)
                                          (if (gx#stx-string? _pre154354_)
                                              (gx#core-resolve-module-path__%
                                               _pre154354_
                                               _path154318_)
                                              (gx#stx-e _pre154354_)))))
                                 (_path-id154360_
                                  (gx#core-module-path->namespace
                                   _path154318_))
                                 (_pkg-id154362_
                                  (if _pkg154356_
                                      (string-append
                                       _pkg154356_
                                       '"/"
                                       _path-id154360_)
                                      _path-id154360_))
                                 (_module-id154364_
                                  (string->symbol _pkg-id154362_))
                                 (_module-ns154369_
                                  (if (eq? _ns154355_ '#!void)
                                      '#f
                                      (let ((_$e154366_ _ns154355_))
                                        (if _$e154366_
                                            _$e154366_
                                            _pkg-id154362_)))))
                            (values _prelude154358_
                                    _module-id154364_
                                    _module-ns154369_
                                    _body154322_)))))))
                 (_E154335154401_
                  (lambda ()
                    (if (gx#stx-pair? _e154326154350_)
                        (let ((_e154343154376_ (gx#syntax-e _e154326154350_)))
                          (let ((_hd154344154379_ (##car _e154343154376_))
                                (_tl154345154381_ (##cdr _e154343154376_)))
                            (if (eq? (gx#stx-e _hd154344154379_) 'package:)
                                (if (gx#stx-pair? _tl154345154381_)
                                    (let ((_e154346154384_
                                           (gx#syntax-e _tl154345154381_)))
                                      (let ((_hd154347154387_
                                             (##car _e154346154384_))
                                            (_tl154348154389_
                                             (##cdr _e154346154384_)))
                                        (let* ((_pkg154392_ _hd154347154387_)
                                               (_rest154394_ _tl154348154389_))
                                          (if '#t
                                              (let ((_pkg154399_
                                                     (if (gx#identifier?
                                                          _pkg154392_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _pkg154392_))
                                                         (if (or (gx#stx-string?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _pkg154392_)
                         (gx#stx-false? _pkg154392_))
                     (gx#stx-e _pkg154392_)
                     (gx#raise-syntax-error
                      'import
                      '"Bad syntax; Illegal package name"
                      _pkg154392_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp154320_
                                                 _rest154394_
                                                 _pre154323_
                                                 _ns154324_
                                                 _pkg154399_))
                                              (_E154342154372_)))))
                                    (_E154342154372_))
                                (_E154342154372_))))
                        (_E154342154372_))))
                 (_E154328154427_
                  (lambda ()
                    (if (gx#stx-pair? _e154326154350_)
                        (let ((_e154336154405_ (gx#syntax-e _e154326154350_)))
                          (let ((_hd154337154408_ (##car _e154336154405_))
                                (_tl154338154410_ (##cdr _e154336154405_)))
                            (if (eq? (gx#stx-e _hd154337154408_) 'namespace:)
                                (if (gx#stx-pair? _tl154338154410_)
                                    (let ((_e154339154413_
                                           (gx#syntax-e _tl154338154410_)))
                                      (let ((_hd154340154416_
                                             (##car _e154339154413_))
                                            (_tl154341154418_
                                             (##cdr _e154339154413_)))
                                        (let* ((_ns154421_ _hd154340154416_)
                                               (_rest154423_ _tl154341154418_))
                                          (if '#t
                                              (let ((_ns154425_
                                                     (if (gx#identifier?
                                                          _ns154421_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _ns154421_))
                                                         (if (gx#stx-string?
                                                              _ns154421_)
                                                             (gx#stx-e
                                                              _ns154421_)
                                                             (if (gx#stx-false?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _ns154421_)
                         '#!void
                         (gx#raise-syntax-error
                          'import
                          '"Bad syntax; illegal namespace"
                          _ns154421_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp154320_
                                                 _rest154423_
                                                 _pre154323_
                                                 _ns154425_
                                                 _pkg154325_))
                                              (_E154335154401_)))))
                                    (_E154335154401_))
                                (_E154335154401_))))
                        (_E154335154401_))))
                 (_E154327154451_
                  (lambda ()
                    (if (gx#stx-pair? _e154326154350_)
                        (let ((_e154329154431_ (gx#syntax-e _e154326154350_)))
                          (let ((_hd154330154434_ (##car _e154329154431_))
                                (_tl154331154436_ (##cdr _e154329154431_)))
                            (if (eq? (gx#stx-e _hd154330154434_) 'prelude:)
                                (if (gx#stx-pair? _tl154331154436_)
                                    (let ((_e154332154439_
                                           (gx#syntax-e _tl154331154436_)))
                                      (let ((_hd154333154442_
                                             (##car _e154332154439_))
                                            (_tl154334154444_
                                             (##cdr _e154332154439_)))
                                        (let* ((_prelude154447_
                                                _hd154333154442_)
                                               (_rest154449_ _tl154334154444_))
                                          (if '#t
                                              (_lp154320_
                                               _rest154449_
                                               _prelude154447_
                                               _ns154324_
                                               _pkg154325_)
                                              (_E154328154427_)))))
                                    (_E154328154427_))
                                (_E154328154427_))))
                        (_E154328154427_)))))
            (_E154327154451_)))))
    (define gx#core-read-module/lang
      (lambda (_path154145_)
        (letrec ((_default-read-module-body154147_
                  (lambda (_inp154310_)
                    (let _lp154312_ ((_body154314_ '()))
                      (let ((_next154316_ (read-syntax _inp154310_)))
                        (if (eof-object? _next154316_)
                            (reverse _body154314_)
                            (_lp154312_ (cons _next154316_ _body154314_)))))))
                 (_read-body154148_
                  (lambda (_inp154229_
                           _pre154230_
                           _ns154231_
                           _pkg154232_
                           _args154233_)
                    (let ((_g159849_
                           (if _pkg154232_
                               (values _pre154230_ _ns154231_ _pkg154232_)
                               (gx#core-read-module-package
                                _path154145_
                                _pre154230_
                                _ns154231_))))
                      (begin
                        (let ((_g159850_
                               (if (##values? _g159849_)
                                   (##vector-length _g159849_)
                                   1)))
                          (if (not (##fx= _g159850_ 3))
                              (error "Context expects 3 values" _g159850_)))
                        (let ((_pre154235_ (##vector-ref _g159849_ 0))
                              (_ns154236_ (##vector-ref _g159849_ 1))
                              (_pkg154237_ (##vector-ref _g159849_ 2)))
                          (let* ((_prelude154239_
                                  (gx#import-module__0 _pre154235_))
                                 (_read-module-body154293_
                                  (let ((_$e154285_
                                         (find (lambda (_e154240154242_)
                                                 (let* ((_g154244154254_
                                                         _e154240154242_)
                                                        (_else154246154262_
                                                         (lambda () '#f))
                                                        (_K154248154266_
                                                         (lambda () '#t)))
                                                   (if (##structure-direct-instance-of?
                                                        _g154244154254_
                                                        'gx#module-export::t)
                                                       (let* ((_e154249154269_
                                                               (##unchecked-structure-ref
                                                                _g154244154254_
                                                                '1
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e154250154272_
                                                               (##unchecked-structure-ref
                                                                _g154244154254_
                                                                '2
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e154251154275_
                                                               (##unchecked-structure-ref
                                                                _g154244154254_
                                                                '3
                                                                gx#module-export::t
                                                                '#f)))
                                                         (if (##eq? _e154251154275_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)
                     (let ((_e154252154278_
                            (##unchecked-structure-ref
                             _g154244154254_
                             '4
                             gx#module-export::t
                             '#f)))
                       (if ((lambda (_g154280154282_)
                              (eq? _g154280154282_ 'read-module-body))
                            _e154252154278_)
                           (_K154248154266_)
                           (_else154246154262_)))
                     (_else154246154262_)))
               (_else154246154262_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (##unchecked-structure-ref
                                                _prelude154239_
                                                '9
                                                gx#module-context::t
                                                '#f))))
                                    (if _$e154285_
                                        ((lambda (_xport154288_)
                                           (let ((_proc154291_
                                                  (with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _xport154288_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _proc154291_)
                                                 _proc154291_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _path154145_
                                                  _pre154235_
                                                  _proc154291_))))
                                         _$e154285_)
                                        _default-read-module-body154147_)))
                                 (_path-id154295_
                                  (gx#core-module-path->namespace
                                   _path154145_))
                                 (_pkg-id154297_
                                  (if _pkg154237_
                                      (string-append
                                       _pkg154237_
                                       '"/"
                                       _path-id154295_)
                                      _path-id154295_))
                                 (_module-id154299_
                                  (string->symbol _pkg-id154297_))
                                 (_module-ns154304_
                                  (let ((_$e154301_ _ns154236_))
                                    (if _$e154301_ _$e154301_ _pkg-id154297_)))
                                 (_body154307_
                                  (call-with-parameters
                                   (lambda ()
                                     (_read-module-body154293_ _inp154229_))
                                   gx#current-module-reader-path
                                   _path154145_
                                   gx#current-module-reader-args
                                   _args154233_)))
                            (values _prelude154239_
                                    _module-id154299_
                                    _module-ns154304_
                                    _body154307_)))))))
                 (_string-e154149_
                  (lambda (_obj154226_ _what154227_)
                    (if (string? _obj154226_)
                        _obj154226_
                        (if (symbol? _obj154226_)
                            (symbol->string _obj154226_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _what154227_)
                             _path154145_
                             _obj154226_)))))
                 (_read-lang-args154150_
                  (lambda (_inp154181_ _args154182_)
                    (let* ((_args154183154191_ _args154182_)
                           (_else154185154199_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _path154145_)))
                           (_K154187154214_
                            (lambda (_args154202_ _prelude154203_)
                              (let* ((_pkg154205_
                                      (pgetq 'package: _args154202_))
                                     (_pkg154207_
                                      (if _pkg154205_
                                          (_string-e154149_
                                           _pkg154205_
                                           '"package")
                                          '#f))
                                     (_ns154209_
                                      (pgetq 'namespace: _args154202_))
                                     (_ns154211_
                                      (if _ns154209_
                                          (_string-e154149_
                                           _ns154209_
                                           '"namespace")
                                          '#f)))
                                (_read-body154148_
                                 _inp154181_
                                 _prelude154203_
                                 _ns154211_
                                 _pkg154207_
                                 _args154202_)))))
                      (if (##pair? _args154183154191_)
                          (let ((_hd154188154217_ (##car _args154183154191_))
                                (_tl154189154219_ (##cdr _args154183154191_)))
                            (let* ((_prelude154222_ _hd154188154217_)
                                   (_args154224_ _tl154189154219_))
                              (_K154187154214_ _args154224_ _prelude154222_)))
                          (_else154185154199_)))))
                 (_read-lang154151_
                  (lambda (_inp154156_)
                    (let* ((_head154158_ (read-line _inp154156_))
                           (_$e154160_ (string-index _head154158_ '#\space)))
                      (if _$e154160_
                          ((lambda (_ix154163_)
                             (let ((_lang154165_
                                    (substring _head154158_ '0 _ix154163_)))
                               (if (equal? _lang154165_ '"#lang")
                                   (let* ((_rest154167_
                                           (substring
                                            _head154158_
                                            (fx+ _ix154163_ '1)
                                            (string-length _head154158_)))
                                          (_args154178_
                                           (with-catch
                                            (lambda (_g154168154170_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _path154145_
                                               _g154168154170_))
                                            (lambda ()
                                              (call-with-input-string
                                               _rest154167_
                                               (lambda (_g154173154175_)
                                                 (read-all
                                                  _g154173154175_
                                                  read)))))))
                                     (_read-lang-args154150_
                                      _inp154156_
                                      _args154178_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _path154145_))))
                           _$e154160_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _path154145_)))))
                 (_read-e154152_
                  (lambda (_inp154154_)
                    (if (eq? (peek-char _inp154154_) '#\#)
                        (_read-lang154151_ _inp154154_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _path154145_)))))
          (gx#call-with-input-source-file _path154145_ _read-e154152_))))
    (define gx#core-read-module-package
      (lambda (_path154099_ _pre154100_ _ns154101_)
        (letrec ((_string-e154103_
                  (lambda (_e154143_)
                    (if (symbol? _e154143_)
                        (symbol->string _e154143_)
                        (if (string? _e154143_)
                            _e154143_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _e154143_))))))
          (let _lp154105_ ((_dir154107_ (path-directory _path154099_))
                           (_pkg-path154108_ '()))
            (let ((_gerbil.pkg154110_ (path-expand '"gerbil.pkg" _dir154107_)))
              (if (file-exists? _gerbil.pkg154110_)
                  (let ((_plist154112_
                         (gx#core-library-package-plist__% _dir154107_ '#t)))
                    (if (null? _plist154112_)
                        (let ((_pkg154114_
                               (if (not (null? _pkg-path154108_))
                                   (string-join _pkg-path154108_ '"/")
                                   '#f)))
                          (values _pre154100_ _ns154101_ _pkg154114_))
                        (if (list? _plist154112_)
                            (let* ((_root154116_
                                    (pgetq 'package: _plist154112_))
                                   (_pkg154120_
                                    (let ((_pkg-path154118_
                                           (if _root154116_
                                               (cons (_string-e154103_
                                                      _root154116_)
                                                     _pkg-path154108_)
                                               _pkg-path154108_)))
                                      (if (not (null? _pkg-path154118_))
                                          (string-join _pkg-path154118_ '"/")
                                          '#f)))
                                   (_ns154127_
                                    (let ((_ns154125_
                                           (let ((_$e154122_ _ns154101_))
                                             (if _$e154122_
                                                 _$e154122_
                                                 (pgetq 'namespace:
                                                        _plist154112_)))))
                                      (if _ns154125_
                                          (_string-e154103_ _ns154125_)
                                          '#f)))
                                   (_pre154132_
                                    (let ((_$e154129_ _pre154100_))
                                      (if _$e154129_
                                          _$e154129_
                                          (pgetq 'prelude: _plist154112_)))))
                              (values _pre154132_ _ns154127_ _pkg154120_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _plist154112_))))
                  (let ((_dir*154135_
                         (path-strip-trailing-directory-separator
                          _dir154107_)))
                    (if (or (string-empty? _dir*154135_)
                            (equal? _dir154107_ _dir*154135_))
                        (values _pre154100_ _ns154101_ '#f)
                        (let ((_xpath154140_
                               (path-strip-directory _dir*154135_))
                              (_xdir154141_ (path-directory _dir*154135_)))
                          (_lp154105_
                           _xdir154141_
                           (cons _xpath154140_ _pkg-path154108_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_path154097_)
        (path-strip-extension (path-strip-directory _path154097_))))
    (define gx#core-module-path->id
      (lambda (_path154095_)
        (string->symbol (gx#core-module-path->namespace _path154095_))))
    (define gx#core-resolve-module-path__%
      (lambda (_stx-path154074_ _rel154075_)
        (let* ((_path154077_ (gx#stx-e _stx-path154074_))
               (_path154079_
                (if (string-empty? (path-extension _path154077_))
                    (string-append _path154077_ '".ss")
                    _path154077_)))
          (gx#core-resolve-path__%
           _path154079_
           (let ((_$e154082_ (gx#stx-source _stx-path154074_)))
             (if _$e154082_ _$e154082_ _rel154075_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_stx-path154088_)
        (let ((_rel154090_ '#f))
          (gx#core-resolve-module-path__% _stx-path154088_ _rel154090_))))
    (define gx#core-resolve-module-path
      (lambda _g159852_
        (let ((_g159851_ (##length _g159852_)))
          (cond ((##fx= _g159851_ 1)
                 (apply (lambda (_stx-path154088_)
                          (gx#core-resolve-module-path__0 _stx-path154088_))
                        _g159852_))
                ((##fx= _g159851_ 2)
                 (apply (lambda (_stx-path154092_ _rel154093_)
                          (gx#core-resolve-module-path__%
                           _stx-path154092_
                           _rel154093_))
                        _g159852_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g159852_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_libpath153960_)
        (let* ((_spath153962_ (symbol->string (gx#stx-e _libpath153960_)))
               (_spath153964_
                (substring _spath153962_ '1 (string-length _spath153962_)))
               (_ext153966_ (path-extension _spath153964_))
               (_ssi153968_
                (if (string-empty? _ext153966_)
                    (string-append _spath153964_ '".ssi")
                    (string-append
                     (path-strip-extension _spath153964_)
                     '".ssi")))
               (_srcs153972_
                (if (string-empty? _ext153966_)
                    (map (lambda (_ext153970_)
                           (string-append _spath153964_ _ext153970_))
                         '(".ss" ".sld" ".scm"))
                    (cons _spath153964_ '()))))
          (let _lp153975_ ((_rest153977_
                            (gx#current-expander-module-library-path)))
            (let* ((_rest153978153987_ _rest153977_)
                   (_E153981153991_
                    (lambda ()
                      (error '"No clause matching" _rest153978153987_))))
              (let ((_K153983154061_
                     (lambda (_rest154002_ _dir154003_)
                       (letrec ((_resolve154005_
                                 (lambda (_ssi154017_ _srcs154018_)
                                   (let ((_compiled-path154020_
                                          (path-expand
                                           _ssi154017_
                                           _dir154003_)))
                                     (if (file-exists? _compiled-path154020_)
                                         (path-normalize _compiled-path154020_)
                                         (let _lpr154022_ ((_rest-src154024_
                                                            _srcs154018_))
                                           (let* ((_rest-src154025154033_
                                                   _rest-src154024_)
                                                  (_else154027154041_
                                                   (lambda ()
                                                     (_lp153975_
                                                      _rest154002_)))
                                                  (_K154029154049_
                                                   (lambda (_rest-src154044_
                                                            _src154045_)
                                                     (let ((_src-path154047_
                                                            (path-expand
                                                             _src154045_
                                                             _dir154003_)))
                                                       (if (file-exists?
                                                            _src-path154047_)
                                                           (path-normalize
                                                            _src-path154047_)
                                                           (_lpr154022_
                                                            _rest-src154044_))))))
                                             (if (##pair? _rest-src154025154033_)
                                                 (let ((_hd154030154052_
                                                        (##car _rest-src154025154033_))
                                                       (_tl154031154054_
                                                        (##cdr _rest-src154025154033_)))
                                                   (let* ((_src154057_
                                                           _hd154030154052_)
                                                          (_rest-src154059_
                                                           _tl154031154054_))
                                                     (_K154029154049_
                                                      _rest-src154059_
                                                      _src154057_)))
                                                 (_else154027154041_)))))))))
                         (let ((_$e154007_
                                (gx#core-library-package-path-prefix
                                 _dir154003_)))
                           (if _$e154007_
                               ((lambda (_prefix154010_)
                                  (if (string-prefix?
                                       _prefix154010_
                                       _spath153964_)
                                      (let ((_ssi154014_
                                             (substring
                                              _ssi153968_
                                              (string-length _prefix154010_)
                                              (string-length _ssi153968_)))
                                            (_srcs154015_
                                             (map (lambda (_src154012_)
                                                    (substring
                                                     _src154012_
                                                     (string-length
                                                      _prefix154010_)
                                                     (string-length
                                                      _src154012_)))
                                                  _srcs153972_)))
                                        (_resolve154005_
                                         _ssi154014_
                                         _srcs154015_))
                                      (_lp153975_ _rest154002_)))
                                _$e154007_)
                               (_resolve154005_ _ssi153968_ _srcs153972_))))))
                    (_K153982153996_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"Cannot find library module"
                        _libpath153960_))))
                (let ((_try-match153980153999_
                       (lambda ()
                         (if (##null? _rest153978153987_)
                             (_K153982153996_)
                             (_E153981153991_)))))
                  (if (##pair? _rest153978153987_)
                      (let ((_tl153985154066_ (##cdr _rest153978153987_))
                            (_hd153984154064_ (##car _rest153978153987_)))
                        (let ((_dir154069_ _hd153984154064_)
                              (_rest154071_ _tl153985154066_))
                          (_K153983154061_ _rest154071_ _dir154069_)))
                      (_try-match153980153999_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_modpath153933_)
        (letrec ((_resolve153935_
                  (lambda (_path153952_ _base153953_)
                    (let ((_$e153955_ (string-rindex _base153953_ '#\/)))
                      (if _$e153955_
                          ((lambda (_idx153958_)
                             (gx#core-resolve-library-module-path
                              (string->symbol
                               (string-append
                                '":"
                                (substring _base153953_ '0 _idx153958_)
                                '"/"
                                _path153952_))))
                           _$e153955_)
                          (gx#core-resolve-library-module-path
                           (string->symbol
                            (string-append '":" _path153952_))))))))
          (let ((_spath153937_ (symbol->string (gx#stx-e _modpath153933_)))
                (_mod153938_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _mod153938_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"Cannot resolve relative module path; not in module context"
                 _modpath153933_))
            (let ((_mpath153940_
                   (symbol->string
                    (##structure-ref
                     _mod153938_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _lp153942_ ((_spath153944_ _spath153937_)
                               (_mpath153945_ _mpath153940_))
                (if (string-prefix? '"../" _spath153944_)
                    (let ((_$e153947_ (string-rindex _mpath153945_ '#\/)))
                      (if _$e153947_
                          ((lambda (_idx153950_)
                             (_lp153942_
                              (substring
                               _spath153944_
                               '3
                               (string-length _spath153944_))
                              (substring _mpath153945_ '0 _idx153950_)))
                           _$e153947_)
                          (gx#raise-syntax-error
                           '#f
                           '"Cannot resolve relative module path; illegal traversal"
                           _modpath153933_)))
                    (if (string-prefix? '"./" _spath153944_)
                        (_lp153942_
                         (substring
                          _spath153944_
                          '2
                          (string-length _spath153944_))
                         _mpath153945_)
                        (_resolve153935_ _spath153944_ _mpath153945_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_dir153926_)
        (let ((_$e153928_
               (pgetq 'package:
                      (gx#core-library-package-plist__0 _dir153926_))))
          (if _$e153928_
              ((lambda (_pkg153931_)
                 (string-append (symbol->string _pkg153931_) '"/"))
               _$e153928_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_dir153898_ _exists?153899_)
        (let* ((_cache153901_ (gx#core-library-package-cache))
               (_$e153903_ (table-ref _cache153901_ _dir153898_ '#f)))
          (if _$e153903_
              (values _$e153903_)
              (let* ((_gerbil.pkg153906_
                      (path-expand '"gerbil.pkg" _dir153898_))
                     (_plist153913_
                      (if (or _exists?153899_
                              (file-exists? _gerbil.pkg153906_))
                          (let ((_e153911_
                                 (gx#call-with-input-source-file
                                  _gerbil.pkg153906_
                                  read)))
                            (if (eof-object? _e153911_)
                                '()
                                (if (list? _e153911_)
                                    _e153911_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _gerbil.pkg153906_
                                     _e153911_))))
                          '())))
                (table-set! _cache153901_ _dir153898_ _plist153913_)
                _plist153913_)))))
    (define gx#core-library-package-plist__0
      (lambda (_dir153919_)
        (let ((_exists?153921_ '#f))
          (gx#core-library-package-plist__% _dir153919_ _exists?153921_))))
    (define gx#core-library-package-plist
      (lambda _g159854_
        (let ((_g159853_ (##length _g159854_)))
          (cond ((##fx= _g159853_ 1)
                 (apply (lambda (_dir153919_)
                          (gx#core-library-package-plist__0 _dir153919_))
                        _g159854_))
                ((##fx= _g159853_ 2)
                 (apply (lambda (_dir153923_ _exists?153924_)
                          (gx#core-library-package-plist__%
                           _dir153923_
                           _exists?153924_))
                        _g159854_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g159854_))))))
    (define gx#core-library-package-cache
      (lambda ()
        (let ((_$e153892_ (gx#current-expander-module-library-package-cache)))
          (if _$e153892_
              (values _$e153892_)
              (let ((_cache153895_ (make-table)))
                (gx#current-expander-module-library-package-cache
                 _cache153895_)
                _cache153895_)))))
    (define gx#core-library-module-path?
      (lambda (_stx153889_) (gx#core-special-module-path? _stx153889_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_stx153887_) (gx#core-special-module-path? _stx153887_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_stx153882_ _char153883_)
        (if (gx#identifier? _stx153882_)
            (if (interned-symbol? (gx#stx-e _stx153882_))
                (let ((_str153885_ (symbol->string (gx#stx-e _stx153882_))))
                  (if (fx> (string-length _str153885_) '1)
                      (eq? (string-ref _str153885_ '0) _char153883_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_stx153876_)
        (gx#core-bound-identifier?__%
         _stx153876_
         (lambda (_g153877153879_)
           (gx#expander-binding?__% _g153877153879_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_stx153870_)
        (gx#core-bound-identifier?__%
         _stx153870_
         (lambda (_g153871153873_)
           (gx#expander-binding?__% _g153871153873_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_stx153857_)
        (letrec ((_module-prelude?153859_
                  (lambda (_e153865_)
                    (let ((_$e153867_
                           (##structure-instance-of?
                            _e153865_
                            'gx#module-context::t)))
                      (if _$e153867_
                          _$e153867_
                          (##structure-instance-of?
                           _e153865_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _stx153857_
           (lambda (_g153860153862_)
             (gx#expander-binding?__%
              _g153860153862_
              _module-prelude?153859_))))))
    (define gx#core-bind-import!__%
      (lambda (_in153787_ _ctx153788_ _force-weak?153789_)
        (let* ((_in153790153799_ _in153787_)
               (_E153792153803_
                (lambda () (error '"No clause matching" _in153790153799_)))
               (_K153793153816_
                (lambda (_weak?153806_ _phi153807_ _key153808_ _source153809_)
                  (gx#core-bind!__%
                   _key153808_
                   (let ((_e153811_
                          (gx#core-resolve-module-export _source153809_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref
                       _e153811_
                       '1
                       gx#binding::t
                       '#f)
                      _key153808_
                      _phi153807_
                      _e153811_
                      (##unchecked-structure-ref
                       _source153809_
                       '1
                       gx#module-export::t
                       '#f)
                      (let ((_$e153813_ _force-weak?153789_))
                        (if _$e153813_ _$e153813_ _weak?153806_))))
                   gx#core-context-rebind?
                   _phi153807_
                   _ctx153788_))))
          (if (##structure-direct-instance-of?
               _in153790153799_
               'gx#module-import::t)
              (let* ((_e153794153819_
                      (##unchecked-structure-ref
                       _in153790153799_
                       '1
                       gx#module-import::t
                       '#f))
                     (_source153822_ _e153794153819_)
                     (_e153795153824_
                      (##unchecked-structure-ref
                       _in153790153799_
                       '2
                       gx#module-import::t
                       '#f))
                     (_key153827_ _e153795153824_)
                     (_e153796153829_
                      (##unchecked-structure-ref
                       _in153790153799_
                       '3
                       gx#module-import::t
                       '#f))
                     (_phi153832_ _e153796153829_)
                     (_e153797153834_
                      (##unchecked-structure-ref
                       _in153790153799_
                       '4
                       gx#module-import::t
                       '#f))
                     (_weak?153837_ _e153797153834_))
                (_K153793153816_
                 _weak?153837_
                 _phi153832_
                 _key153827_
                 _source153822_))
              (_E153792153803_)))))
    (define gx#core-bind-import!__0
      (lambda (_in153842_)
        (let* ((_ctx153844_ (gx#current-expander-context))
               (_force-weak?153846_ '#f))
          (gx#core-bind-import!__%
           _in153842_
           _ctx153844_
           _force-weak?153846_))))
    (define gx#core-bind-import!__1
      (lambda (_in153848_ _ctx153849_)
        (let ((_force-weak?153851_ '#f))
          (gx#core-bind-import!__%
           _in153848_
           _ctx153849_
           _force-weak?153851_))))
    (define gx#core-bind-import!
      (lambda _g159856_
        (let ((_g159855_ (##length _g159856_)))
          (cond ((##fx= _g159855_ 1)
                 (apply (lambda (_in153842_)
                          (gx#core-bind-import!__0 _in153842_))
                        _g159856_))
                ((##fx= _g159855_ 2)
                 (apply (lambda (_in153848_ _ctx153849_)
                          (gx#core-bind-import!__1 _in153848_ _ctx153849_))
                        _g159856_))
                ((##fx= _g159855_ 3)
                 (apply (lambda (_in153853_ _ctx153854_ _force-weak?153855_)
                          (gx#core-bind-import!__%
                           _in153853_
                           _ctx153854_
                           _force-weak?153855_))
                        _g159856_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g159856_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_in153773_ _ctx153774_)
        (gx#core-bind-import!__% _in153773_ _ctx153774_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_in153779_)
        (let ((_ctx153781_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _in153779_ _ctx153781_))))
    (define gx#core-bind-weak-import!
      (lambda _g159858_
        (let ((_g159857_ (##length _g159858_)))
          (cond ((##fx= _g159857_ 1)
                 (apply (lambda (_in153779_)
                          (gx#core-bind-weak-import!__0 _in153779_))
                        _g159858_))
                ((##fx= _g159857_ 2)
                 (apply (lambda (_in153783_ _ctx153784_)
                          (gx#core-bind-weak-import!__%
                           _in153783_
                           _ctx153784_))
                        _g159858_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g159858_))))))
    (define gx#core-resolve-module-export
      (lambda (_out153664_)
        (letrec ((_subst153666_
                  (lambda (_key153712_)
                    (let* ((_key153713153721_ _key153712_)
                           (_else153715153729_ (lambda () _key153712_))
                           (_K153717153760_
                            (lambda (_mark153732_ _id153733_)
                              (let* ((_mark153734153740_ _mark153732_)
                                     (_E153736153744_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark153734153740_)))
                                     (_K153737153752_
                                      (lambda (_subst153747_)
                                        (let ((_$e153749_
                                               (if _subst153747_
                                                   (table-ref
                                                    _subst153747_
                                                    _id153733_
                                                    '#f)
                                                   '#f)))
                                          (if _$e153749_
                                              _$e153749_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _key153712_))))))
                                (if (##structure-instance-of?
                                     _mark153734153740_
                                     'gx#expander-mark::t)
                                    (let* ((_e153738153755_
                                            (##unchecked-structure-ref
                                             _mark153734153740_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst153758_ _e153738153755_))
                                      (_K153737153752_ _subst153758_))
                                    (_E153736153744_))))))
                      (if (##pair? _key153713153721_)
                          (let ((_hd153718153763_ (##car _key153713153721_))
                                (_tl153719153765_ (##cdr _key153713153721_)))
                            (let* ((_id153768_ _hd153718153763_)
                                   (_mark153770_ _tl153719153765_))
                              (_K153717153760_ _mark153770_ _id153768_)))
                          (_else153715153729_))))))
          (let* ((_out153667153677_ _out153664_)
                 (_E153669153681_
                  (lambda () (error '"No clause matching" _out153667153677_)))
                 (_K153670153688_
                  (lambda (_phi153684_ _key153685_ _ctx153686_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _ctx153686_ _phi153684_)
                     (_subst153666_ _key153685_)))))
            (if (##structure-direct-instance-of?
                 _out153667153677_
                 'gx#module-export::t)
                (let* ((_e153671153691_
                        (##unchecked-structure-ref
                         _out153667153677_
                         '1
                         gx#module-export::t
                         '#f))
                       (_ctx153694_ _e153671153691_)
                       (_e153672153696_
                        (##unchecked-structure-ref
                         _out153667153677_
                         '2
                         gx#module-export::t
                         '#f))
                       (_key153699_ _e153672153696_)
                       (_e153673153701_
                        (##unchecked-structure-ref
                         _out153667153677_
                         '3
                         gx#module-export::t
                         '#f))
                       (_phi153704_ _e153673153701_)
                       (_e153674153706_
                        (##unchecked-structure-ref
                         _out153667153677_
                         '4
                         gx#module-export::t
                         '#f))
                       (_e153675153709_
                        (##unchecked-structure-ref
                         _out153667153677_
                         '5
                         gx#module-export::t
                         '#f)))
                  (_K153670153688_ _phi153704_ _key153699_ _ctx153694_))
                (_E153669153681_))))))
    (define gx#core-module-export->import__%
      (lambda (_out153589_ _rename153590_ _dphi153591_)
        (let* ((_out153592153602_ _out153589_)
               (_E153594153606_
                (lambda () (error '"No clause matching" _out153592153602_)))
               (_K153595153618_
                (lambda (_weak?153609_
                         _name153610_
                         _phi153611_
                         _key153612_
                         _ctx153613_)
                  (##structure
                   gx#module-import::t
                   _out153589_
                   (let ((_$e153615_ _rename153590_))
                     (if _$e153615_ _$e153615_ _name153610_))
                   (fx+ _phi153611_ _dphi153591_)
                   _weak?153609_))))
          (if (##structure-direct-instance-of?
               _out153592153602_
               'gx#module-export::t)
              (let* ((_e153596153621_
                      (##unchecked-structure-ref
                       _out153592153602_
                       '1
                       gx#module-export::t
                       '#f))
                     (_ctx153624_ _e153596153621_)
                     (_e153597153626_
                      (##unchecked-structure-ref
                       _out153592153602_
                       '2
                       gx#module-export::t
                       '#f))
                     (_key153629_ _e153597153626_)
                     (_e153598153631_
                      (##unchecked-structure-ref
                       _out153592153602_
                       '3
                       gx#module-export::t
                       '#f))
                     (_phi153634_ _e153598153631_)
                     (_e153599153636_
                      (##unchecked-structure-ref
                       _out153592153602_
                       '4
                       gx#module-export::t
                       '#f))
                     (_name153639_ _e153599153636_)
                     (_e153600153641_
                      (##unchecked-structure-ref
                       _out153592153602_
                       '5
                       gx#module-export::t
                       '#f))
                     (_weak?153644_ _e153600153641_))
                (_K153595153618_
                 _weak?153644_
                 _name153639_
                 _phi153634_
                 _key153629_
                 _ctx153624_))
              (_E153594153606_)))))
    (define gx#core-module-export->import__0
      (lambda (_out153649_)
        (let* ((_rename153651_ '#f) (_dphi153653_ '0))
          (gx#core-module-export->import__%
           _out153649_
           _rename153651_
           _dphi153653_))))
    (define gx#core-module-export->import__1
      (lambda (_out153655_ _rename153656_)
        (let ((_dphi153658_ '0))
          (gx#core-module-export->import__%
           _out153655_
           _rename153656_
           _dphi153658_))))
    (define gx#core-module-export->import
      (lambda _g159860_
        (let ((_g159859_ (##length _g159860_)))
          (cond ((##fx= _g159859_ 1)
                 (apply (lambda (_out153649_)
                          (gx#core-module-export->import__0 _out153649_))
                        _g159860_))
                ((##fx= _g159859_ 2)
                 (apply (lambda (_out153655_ _rename153656_)
                          (gx#core-module-export->import__1
                           _out153655_
                           _rename153656_))
                        _g159860_))
                ((##fx= _g159859_ 3)
                 (apply (lambda (_out153660_ _rename153661_ _dphi153662_)
                          (gx#core-module-export->import__%
                           _out153660_
                           _rename153661_
                           _dphi153662_))
                        _g159860_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g159860_))))))
    (define gx#core-expand-module%
      (lambda (_stx153517_)
        (letrec ((_make-context153519_
                  (lambda (_id153570_)
                    (let* ((_super153572_ (gx#current-expander-context))
                           (_bind-id153574_ (gx#stx-e _id153570_))
                           (_mod-id153576_
                            (if (##structure-instance-of?
                                 _super153572_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##structure-ref
                                  _super153572_
                                  '1
                                  gx#expander-context::t
                                  '#f)
                                 '"$"
                                 _bind-id153574_)
                                _bind-id153574_))
                           (_ns153578_ (symbol->string _mod-id153576_))
                           (_path153585_
                            (if (##structure-instance-of?
                                 _super153572_
                                 'gx#module-context::t)
                                (let ((_path153580_
                                       (##unchecked-structure-ref
                                        _super153572_
                                        '7
                                        gx#module-context::t
                                        '#f)))
                                  (if (or (pair? _path153580_)
                                          (null? _path153580_))
                                      (cons _bind-id153574_ _path153580_)
                                      (if (not _path153580_)
                                          _bind-id153574_
                                          (cons _bind-id153574_
                                                (cons _path153580_ '())))))
                                _bind-id153574_)))
                      (let ((__obj159836
                             (make-object* gx#module-context::t '12)))
                        (gx#module-context:::init!
                         __obj159836
                         _mod-id153576_
                         _super153572_
                         _ns153578_
                         _path153585_)
                        __obj159836)))))
          (let* ((_e153520153530_ _stx153517_)
                 (_E153522153534_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e153520153530_)))
                 (_E153521153566_
                  (lambda ()
                    (if (gx#stx-pair? _e153520153530_)
                        (let ((_e153523153538_ (gx#syntax-e _e153520153530_)))
                          (let ((_hd153524153541_ (##car _e153523153538_))
                                (_tl153525153543_ (##cdr _e153523153538_)))
                            (if (gx#stx-pair? _tl153525153543_)
                                (let ((_e153526153546_
                                       (gx#syntax-e _tl153525153543_)))
                                  (let ((_hd153527153549_
                                         (##car _e153526153546_))
                                        (_tl153528153551_
                                         (##cdr _e153526153546_)))
                                    (let* ((_id153554_ _hd153527153549_)
                                           (_body153556_ _tl153528153551_))
                                      (if (and (gx#identifier? _id153554_)
                                               (gx#stx-list? _body153556_))
                                          (let* ((_ctx153558_
                                                  (_make-context153519_
                                                   _id153554_))
                                                 (_body153560_
                                                  (gx#core-expand-module-begin
                                                   _body153556_
                                                   _ctx153558_))
                                                 (_body153562_
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body153560_)
                                                   (gx#stx-source
                                                    _stx153517_))))
                                            (##unchecked-structure-set!
                                             _ctx153558_
                                             (make-promise
                                              (lambda ()
                                                (gx#eval-syntax*
                                                 _body153562_)))
                                             '10
                                             gx#module-context::t
                                             '#f)
                                            (##unchecked-structure-set!
                                             _ctx153558_
                                             _body153562_
                                             '11
                                             gx#module-context::t
                                             '#f)
                                            (gx#core-bind-syntax!__0
                                             _id153554_
                                             _ctx153558_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-list
                                              '%#module
                                              (gx#core-quote-syntax__0
                                               _id153554_)
                                              _body153562_)
                                             (gx#stx-source _stx153517_)))
                                          (_E153522153534_)))))
                                (_E153522153534_))))
                        (_E153522153534_)))))
            (_E153521153566_)))))
    (define gx#core-expand-module-begin
      (lambda (_body153483_ _ctx153484_)
        (call-with-parameters
         (lambda ()
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_stx153487_
                   (gx#core-expand-head (cons '%%begin-module _body153483_)))
                  (_e153488153495_ _stx153487_)
                  (_E153490153499_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _stx153487_)))
                  (_E153489153513_
                   (lambda ()
                     (if (gx#stx-pair? _e153488153495_)
                         (let ((_e153491153503_ (gx#syntax-e _e153488153495_)))
                           (let ((_hd153492153506_ (##car _e153491153503_))
                                 (_tl153493153508_ (##cdr _e153491153503_)))
                             (if (and (gx#identifier? _hd153492153506_)
                                      (gx#core-identifier=?
                                       _hd153492153506_
                                       '%#begin-module))
                                 (let ((_body153511_ _tl153493153508_))
                                   (if '#t
                                       (if (gx#sealed-syntax? _stx153487_)
                                           _body153511_
                                           (gx#core-expand-module-body
                                            _body153511_))
                                       (_E153490153499_)))
                                 (_E153490153499_))))
                         (_E153490153499_)))))
             (_E153489153513_)))
         gx#current-expander-context
         _ctx153484_
         gx#current-expander-phi
         '0)))
    (define gx#core-expand-module-body
      (lambda (_body153279_)
        (letrec ((_expand-special153281_
                  (lambda (_hd153410_ _K153411_ _rest153412_ _r153413_)
                    (let* ((_e153414153431_ _hd153410_)
                           (_E153426153435_
                            (lambda ()
                              (_K153411_
                               _rest153412_
                               (cons (gx#core-expand-top _hd153410_)
                                     _r153413_))))
                           (_E153416153447_
                            (lambda ()
                              (if (gx#stx-pair? _e153414153431_)
                                  (let ((_e153427153439_
                                         (gx#syntax-e _e153414153431_)))
                                    (let ((_hd153428153442_
                                           (##car _e153427153439_))
                                          (_tl153429153444_
                                           (##cdr _e153427153439_)))
                                      (if (and (gx#identifier?
                                                _hd153428153442_)
                                               (gx#core-identifier=?
                                                _hd153428153442_
                                                '%#export))
                                          (if '#t
                                              (_K153411_
                                               _rest153412_
                                               (cons _hd153410_ _r153413_))
                                              (_E153426153435_))
                                          (_E153426153435_))))
                                  (_E153426153435_))))
                           (_E153415153479_
                            (lambda ()
                              (if (gx#stx-pair? _e153414153431_)
                                  (let ((_e153417153451_
                                         (gx#syntax-e _e153414153431_)))
                                    (let ((_hd153418153454_
                                           (##car _e153417153451_))
                                          (_tl153419153456_
                                           (##cdr _e153417153451_)))
                                      (if (and (gx#identifier?
                                                _hd153418153454_)
                                               (gx#core-identifier=?
                                                _hd153418153454_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl153419153456_)
                                              (let ((_e153420153459_
                                                     (gx#syntax-e
                                                      _tl153419153456_)))
                                                (let ((_hd153421153462_
                                                       (##car _e153420153459_))
                                                      (_tl153422153464_
                                                       (##cdr _e153420153459_)))
                                                  (let ((_hd-bind153467_
                                                         _hd153421153462_))
                                                    (if (gx#stx-pair?
                                                         _tl153422153464_)
                                                        (let ((_e153423153469_
                                                               (gx#syntax-e
                                                                _tl153422153464_)))
                                                          (let ((_hd153424153472_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e153423153469_))
                        (_tl153425153474_ (##cdr _e153423153469_)))
                    (let ((_expr153477_ _hd153424153472_))
                      (if (gx#stx-null? _tl153425153474_)
                          (if (gx#core-bind-values? _hd-bind153467_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind153467_)
                                (_K153411_
                                 _rest153412_
                                 (cons _hd153410_ _r153413_)))
                              (_E153416153447_))
                          (_E153416153447_)))))
                (_E153416153447_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E153416153447_))
                                          (_E153416153447_))))
                                  (_E153416153447_)))))
                      (_E153415153479_))))
                 (_expand-body153282_
                  (lambda (_rbody153284_)
                    (let _lp153286_ ((_rest153288_ _rbody153284_)
                                     (_body153289_ '()))
                      (let* ((_rest153290153298_ _rest153288_)
                             (_else153292153306_ (lambda () _body153289_))
                             (_K153294153398_
                              (lambda (_rest153309_ _hd153310_)
                                (let* ((_e153311153332_ _hd153310_)
                                       (_E153327153336_
                                        (lambda ()
                                          (_lp153286_
                                           _rest153309_
                                           (cons (gx#core-expand-expression
                                                  _hd153310_)
                                                 _body153289_))))
                                       (_E153323153350_
                                        (lambda ()
                                          (if (gx#stx-pair? _e153311153332_)
                                              (let ((_e153328153340_
                                                     (gx#syntax-e
                                                      _e153311153332_)))
                                                (let ((_hd153329153343_
                                                       (##car _e153328153340_))
                                                      (_tl153330153345_
                                                       (##cdr _e153328153340_)))
                                                  (let ((_form153348_
                                                         _hd153329153343_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _form153348_
                                                         gx#special-form-binding?)
                                                        (_lp153286_
                                                         _rest153309_
                                                         (cons _hd153310_
                                                               _body153289_))
                                                        (_E153327153336_)))))
                                              (_E153327153336_))))
                                       (_E153313153362_
                                        (lambda ()
                                          (if (gx#stx-pair? _e153311153332_)
                                              (let ((_e153324153354_
                                                     (gx#syntax-e
                                                      _e153311153332_)))
                                                (let ((_hd153325153357_
                                                       (##car _e153324153354_))
                                                      (_tl153326153359_
                                                       (##cdr _e153324153354_)))
                                                  (if (and (gx#identifier?
                                                            _hd153325153357_)
                                                           (gx#core-identifier=?
                                                            _hd153325153357_
                                                            '%#export))
                                                      (if '#t
                                                          (_lp153286_
                                                           _rest153309_
                                                           (cons (gx#core-expand-export%__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd153310_)
                         _body153289_))
                  (_E153323153350_))
              (_E153323153350_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E153323153350_))))
                                       (_E153312153394_
                                        (lambda ()
                                          (if (gx#stx-pair? _e153311153332_)
                                              (let ((_e153314153366_
                                                     (gx#syntax-e
                                                      _e153311153332_)))
                                                (let ((_hd153315153369_
                                                       (##car _e153314153366_))
                                                      (_tl153316153371_
                                                       (##cdr _e153314153366_)))
                                                  (if (and (gx#identifier?
                                                            _hd153315153369_)
                                                           (gx#core-identifier=?
                                                            _hd153315153369_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl153316153371_)
                                                          (let ((_e153317153374_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl153316153371_)))
                    (let ((_hd153318153377_ (##car _e153317153374_))
                          (_tl153319153379_ (##cdr _e153317153374_)))
                      (let ((_hd-bind153382_ _hd153318153377_))
                        (if (gx#stx-pair? _tl153319153379_)
                            (let ((_e153320153384_
                                   (gx#syntax-e _tl153319153379_)))
                              (let ((_hd153321153387_ (##car _e153320153384_))
                                    (_tl153322153389_ (##cdr _e153320153384_)))
                                (let ((_expr153392_ _hd153321153387_))
                                  (if (gx#stx-null? _tl153322153389_)
                                      (if '#t
                                          (_lp153286_
                                           _rest153309_
                                           (cons (gx#core-quote-syntax__1
                                                  (gx#core-list
                                                   '%#define-values
                                                   (gx#core-quote-bind-values
                                                    _hd-bind153382_)
                                                   (gx#core-expand-expression
                                                    _expr153392_))
                                                  (gx#stx-source _hd153310_))
                                                 _body153289_))
                                          (_E153313153362_))
                                      (_E153313153362_)))))
                            (_E153313153362_)))))
                  (_E153313153362_))
              (_E153313153362_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E153313153362_)))))
                                  (_E153312153394_)))))
                        (if (##pair? _rest153290153298_)
                            (let ((_hd153295153401_ (##car _rest153290153298_))
                                  (_tl153296153403_
                                   (##cdr _rest153290153298_)))
                              (let* ((_hd153406_ _hd153295153401_)
                                     (_rest153408_ _tl153296153403_))
                                (_K153294153398_ _rest153408_ _hd153406_)))
                            (_else153292153306_)))))))
          (_expand-body153282_
           (gx#core-expand-block__%
            (cons '%#begin-module _body153279_)
            _expand-special153281_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_stx153122_
               _expanded?153123_
               _method153124_
               _current-phi153125_
               _expand1153126_)
        (letrec ((_K153128_
                  (lambda (_rest153246_ _r153247_)
                    (let* ((_e153248153255_ _rest153246_)
                           (_E153250153259_ (lambda () _r153247_))
                           (_E153249153275_
                            (lambda ()
                              (if (gx#stx-pair? _e153248153255_)
                                  (let ((_e153251153263_
                                         (gx#syntax-e _e153248153255_)))
                                    (let ((_hd153252153266_
                                           (##car _e153251153263_))
                                          (_tl153253153268_
                                           (##cdr _e153251153263_)))
                                      (let* ((_hd153271_ _hd153252153266_)
                                             (_rest153273_ _tl153253153268_))
                                        (if '#t
                                            (_step153129_
                                             _hd153271_
                                             _rest153273_
                                             _r153247_)
                                            (_E153250153259_)))))
                                  (_E153250153259_)))))
                      (_E153249153275_))))
                 (_step153129_
                  (lambda (_hd153160_ _rest153161_ _r153162_)
                    (let* ((_e153163153181_ _hd153160_)
                           (_E153176153185_
                            (lambda ()
                              (if (_expanded?153123_ (gx#stx-e _hd153160_))
                                  (_K153128_
                                   _rest153161_
                                   (cons (gx#stx-e _hd153160_) _r153162_))
                                  (_expand1153126_
                                   _hd153160_
                                   _K153128_
                                   _rest153161_
                                   _r153162_))))
                           (_E153172153201_
                            (lambda ()
                              (if (gx#stx-pair? _e153163153181_)
                                  (let ((_e153177153189_
                                         (gx#syntax-e _e153163153181_)))
                                    (let ((_hd153178153192_
                                           (##car _e153177153189_))
                                          (_tl153179153194_
                                           (##cdr _e153177153189_)))
                                      (let* ((_macro153197_ _hd153178153192_)
                                             (_body153199_ _tl153179153194_))
                                        (if (gx#core-bound-identifier?__%
                                             _macro153197_
                                             gx#syntax-binding?)
                                            (_K153128_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _macro153197_)
                                                    _hd153160_
                                                    _method153124_)
                                                   _rest153161_)
                                             _r153162_)
                                            (_E153176153185_)))))
                                  (_E153176153185_))))
                           (_E153165153215_
                            (lambda ()
                              (if (gx#stx-pair? _e153163153181_)
                                  (let ((_e153173153205_
                                         (gx#syntax-e _e153163153181_)))
                                    (let ((_hd153174153208_
                                           (##car _e153173153205_))
                                          (_tl153175153210_
                                           (##cdr _e153173153205_)))
                                      (if (eq? (gx#stx-e _hd153174153208_)
                                               'begin:)
                                          (let ((_body153213_
                                                 _tl153175153210_))
                                            (if '#t
                                                (_K153128_
                                                 (gx#stx-foldr
                                                  cons
                                                  _rest153161_
                                                  _body153213_)
                                                 _r153162_)
                                                (_E153172153201_)))
                                          (_E153172153201_))))
                                  (_E153172153201_))))
                           (_E153164153242_
                            (lambda ()
                              (if (gx#stx-pair? _e153163153181_)
                                  (let ((_e153166153219_
                                         (gx#syntax-e _e153163153181_)))
                                    (let ((_hd153167153222_
                                           (##car _e153166153219_))
                                          (_tl153168153224_
                                           (##cdr _e153166153219_)))
                                      (if (eq? (gx#stx-e _hd153167153222_)
                                               'phi:)
                                          (if (gx#stx-pair? _tl153168153224_)
                                              (let ((_e153169153227_
                                                     (gx#syntax-e
                                                      _tl153168153224_)))
                                                (let ((_hd153170153230_
                                                       (##car _e153169153227_))
                                                      (_tl153171153232_
                                                       (##cdr _e153169153227_)))
                                                  (let* ((_dphi153235_
                                                          _hd153170153230_)
                                                         (_body153237_
                                                          _tl153171153232_))
                                                    (if (gx#stx-fixnum?
                                                         _dphi153235_)
                                                        (let ((_rbody153240_
                                                               (call-with-parameters
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_K153128_ _body153237_ '()))
                        _current-phi153125_
                        (fx+ (gx#stx-e _dphi153235_) (_current-phi153125_)))))
                  (_K153128_
                   _rest153161_
                   (foldr1 cons _r153162_ _rbody153240_)))
                (_E153165153215_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E153165153215_))
                                          (_E153165153215_))))
                                  (_E153165153215_)))))
                      (_E153164153242_)))))
          (let* ((_e153130153137_ _stx153122_)
                 (_E153132153141_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e153130153137_)))
                 (_E153131153156_
                  (lambda ()
                    (if (gx#stx-pair? _e153130153137_)
                        (let ((_e153133153145_ (gx#syntax-e _e153130153137_)))
                          (let ((_hd153134153148_ (##car _e153133153145_))
                                (_tl153135153150_ (##cdr _e153133153145_)))
                            (let ((_body153153_ _tl153135153150_))
                              (if '#t
                                  (if (_current-phi153125_)
                                      (_K153128_ _body153153_ '())
                                      (call-with-parameters
                                       (lambda () (_K153128_ _body153153_ '()))
                                       _current-phi153125_
                                       (gx#current-expander-phi)))
                                  (_E153132153141_)))))
                        (_E153132153141_)))))
            (_E153131153156_)))))
    (define gx#core-expand-import%__%
      (lambda (_stx152789_ _internal-expand?152790_)
        (letrec ((_expand1152792_
                  (lambda (_hd153102_ _K153103_ _rest153104_ _r153105_)
                    (if (gx#core-bound-module? _hd153102_)
                        (_import1152793_
                         (gx#syntax-local-e__0 _hd153102_)
                         _K153103_
                         _rest153104_
                         _r153105_)
                        (if (gx#core-library-module-path? _hd153102_)
                            (_import1152793_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _hd153102_))
                             _K153103_
                             _rest153104_
                             _r153105_)
                            (if (gx#core-library-relative-module-path?
                                 _hd153102_)
                                (_import1152793_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _hd153102_))
                                 _K153103_
                                 _rest153104_
                                 _r153105_)
                                (let ((_e153107_ (gx#stx-e _hd153102_)))
                                  (if (pair? _e153107_)
                                      (let ((_$e153109_
                                             (gx#stx-e (car _e153107_))))
                                        (if (eq? 'spec: _$e153109_)
                                            (_import-spec152796_
                                             _hd153102_
                                             _K153103_
                                             _rest153104_
                                             _r153105_)
                                            (if (eq? 'in: _$e153109_)
                                                (_import-submodule152794_
                                                 _hd153102_
                                                 _K153103_
                                                 _rest153104_
                                                 _r153105_)
                                                (if (eq? 'runtime: _$e153109_)
                                                    (_import-runtime152795_
                                                     _hd153102_
                                                     _K153103_
                                                     _rest153104_
                                                     _r153105_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _stx152789_
                                                     _hd153102_)))))
                                      (if (string? _e153107_)
                                          (_import1152793_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _hd153102_
                                             (gx#stx-source _stx152789_)))
                                           _K153103_
                                           _rest153104_
                                           _r153105_)
                                          (if (##structure-instance-of?
                                               _e153107_
                                               'gx#module-context::t)
                                              (_K153103_
                                               _rest153104_
                                               (cons _e153107_ _r153105_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _stx152789_
                                               _hd153102_))))))))))
                 (_import1152793_
                  (lambda (_ctx153091_ _K153092_ _rest153093_ _r153094_)
                    (let ((_dphi153096_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_K153092_
                       _rest153093_
                       (cons (##structure
                              gx#import-set::t
                              _ctx153091_
                              _dphi153096_
                              (map (lambda (_g153097153099_)
                                     (gx#core-module-export->import__%
                                      _g153097153099_
                                      '#f
                                      _dphi153096_))
                                   (##unchecked-structure-ref
                                    _ctx153091_
                                    '9
                                    gx#module-context::t
                                    '#f)))
                             _r153094_)))))
                 (_import-submodule152794_
                  (lambda (_hd153058_ _K153059_ _rest153060_ _r153061_)
                    (let* ((_e153062153069_ _hd153058_)
                           (_E153064153073_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e153062153069_)))
                           (_E153063153087_
                            (lambda ()
                              (if (gx#stx-pair? _e153062153069_)
                                  (let ((_e153065153077_
                                         (gx#syntax-e _e153062153069_)))
                                    (let ((_hd153066153080_
                                           (##car _e153065153077_))
                                          (_tl153067153082_
                                           (##cdr _e153065153077_)))
                                      (let ((_spath153085_ _tl153067153082_))
                                        (if '#t
                                            (_import1152793_
                                             (_import-spec-source152797_
                                              _spath153085_)
                                             _K153059_
                                             _rest153060_
                                             _r153061_)
                                            (_E153064153073_)))))
                                  (_E153064153073_)))))
                      (_E153063153087_))))
                 (_import-runtime152795_
                  (lambda (_hd153025_ _K153026_ _rest153027_ _r153028_)
                    (let* ((_e153029153036_ _hd153025_)
                           (_E153031153040_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e153029153036_)))
                           (_E153030153054_
                            (lambda ()
                              (if (gx#stx-pair? _e153029153036_)
                                  (let ((_e153032153044_
                                         (gx#syntax-e _e153029153036_)))
                                    (let ((_hd153033153047_
                                           (##car _e153032153044_))
                                          (_tl153034153049_
                                           (##cdr _e153032153044_)))
                                      (let ((_spath153052_ _tl153034153049_))
                                        (if '#t
                                            (_K153026_
                                             _rest153027_
                                             (cons (_import-spec-source152797_
                                                    _spath153052_)
                                                   _r153028_))
                                            (_E153031153040_)))))
                                  (_E153031153040_)))))
                      (_E153030153054_))))
                 (_import-spec152796_
                  (lambda (_hd152864_ _K152865_ _rest152866_ _r152867_)
                    (let* ((_e152868152885_ _hd152864_)
                           (_E152877152889_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e152868152885_)))
                           (_E152870152999_
                            (lambda ()
                              (if (gx#stx-pair? _e152868152885_)
                                  (let ((_e152878152893_
                                         (gx#syntax-e _e152868152885_)))
                                    (let ((_hd152879152896_
                                           (##car _e152878152893_))
                                          (_tl152880152898_
                                           (##cdr _e152878152893_)))
                                      (if (gx#stx-pair? _tl152880152898_)
                                          (let ((_e152881152901_
                                                 (gx#syntax-e
                                                  _tl152880152898_)))
                                            (let ((_hd152882152904_
                                                   (##car _e152881152901_))
                                                  (_tl152883152906_
                                                   (##cdr _e152881152901_)))
                                              (let* ((_path152909_
                                                      _hd152882152904_)
                                                     (_specs152911_
                                                      _tl152883152906_))
                                                (if '#t
                                                    (let ((_src-ctx152913_
                                                           (_import-spec-source152797_
                                                            _path152909_))
                                                          (_exports152914_
                                                           (make-table))
                                                          (_specs152915_
                                                           (gx#syntax->list
                                                            _specs152911_)))
                                                      (for-each
                                                       (lambda (_out152917_)
                                                         (table-set!
                                                          _exports152914_
                                                          (cons (##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _out152917_
                         '3
                         gx#module-export::t
                         '#f)
                        (##unchecked-structure-ref
                         _out152917_
                         '4
                         gx#module-export::t
                         '#f))
                  _out152917_))
               (##unchecked-structure-ref
                _src-ctx152913_
                '9
                gx#module-context::t
                '#f))
              (_K152865_
               _rest152866_
               (foldl1 (lambda (_spec152919_ _r152920_)
                         (let* ((_e152921152937_ _spec152919_)
                                (_E152923152941_
                                 (lambda ()
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid syntax-case clause"
                                    _e152921152937_)))
                                (_E152922152995_
                                 (lambda ()
                                   (if (gx#stx-pair? _e152921152937_)
                                       (let ((_e152924152945_
                                              (gx#syntax-e _e152921152937_)))
                                         (let ((_hd152925152948_
                                                (##car _e152924152945_))
                                               (_tl152926152950_
                                                (##cdr _e152924152945_)))
                                           (let ((_phi152953_
                                                  _hd152925152948_))
                                             (if (gx#stx-pair?
                                                  _tl152926152950_)
                                                 (let ((_e152927152955_
                                                        (gx#syntax-e
                                                         _tl152926152950_)))
                                                   (let ((_hd152928152958_
                                                          (##car _e152927152955_))
                                                         (_tl152929152960_
                                                          (##cdr _e152927152955_)))
                                                     (let ((_name152963_
                                                            _hd152928152958_))
                                                       (if (gx#stx-pair?
                                                            _tl152929152960_)
                                                           (let ((_e152930152965_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl152929152960_)))
                     (let ((_hd152931152968_ (##car _e152930152965_))
                           (_tl152932152970_ (##cdr _e152930152965_)))
                       (let ((_src-phi152973_ _hd152931152968_))
                         (if (gx#stx-pair? _tl152932152970_)
                             (let ((_e152933152975_
                                    (gx#syntax-e _tl152932152970_)))
                               (let ((_hd152934152978_ (##car _e152933152975_))
                                     (_tl152935152980_
                                      (##cdr _e152933152975_)))
                                 (let ((_src-name152983_ _hd152934152978_))
                                   (if (gx#stx-null? _tl152935152980_)
                                       (if (and (gx#stx-fixnum?
                                                 _src-phi152973_)
                                                (gx#identifier?
                                                 _src-name152983_)
                                                (gx#stx-fixnum? _phi152953_)
                                                (gx#identifier? _name152963_))
                                           (let ((_src-phi152985_
                                                  (gx#stx-e _src-phi152973_))
                                                 (_src-name152986_
                                                  (gx#core-identifier-key
                                                   _src-name152983_))
                                                 (_phi152987_
                                                  (gx#stx-e _phi152953_))
                                                 (_name152988_
                                                  (gx#core-identifier-key
                                                   _name152963_)))
                                             (let ((_$e152990_
                                                    (table-ref
                                                     _exports152914_
                                                     (cons _src-phi152985_
                                                           _src-name152986_)
                                                     '#f)))
                                               (if _$e152990_
                                                   ((lambda (_out152993_)
                                                      (cons (gx#core-module-export->import__%
                                                             _out152993_
                                                             _name152988_
                                                             (fx- _phi152987_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _src-phi152985_))
                    _r152920_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _$e152990_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; no matching export"
                                                    _stx152789_
                                                    _hd152864_))))
                                           (_E152923152941_))
                                       (_E152923152941_)))))
                             (_E152923152941_)))))
                   (_E152923152941_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E152923152941_)))))
                                       (_E152923152941_)))))
                           (_E152922152995_)))
                       _r152867_
                       _specs152915_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E152877152889_)))))
                                          (_E152877152889_))))
                                  (_E152877152889_))))
                           (_E152869153021_
                            (lambda ()
                              (if (gx#stx-pair? _e152868152885_)
                                  (let ((_e152871153003_
                                         (gx#syntax-e _e152868152885_)))
                                    (let ((_hd152872153006_
                                           (##car _e152871153003_))
                                          (_tl152873153008_
                                           (##cdr _e152871153003_)))
                                      (if (gx#stx-pair? _tl152873153008_)
                                          (let ((_e152874153011_
                                                 (gx#syntax-e
                                                  _tl152873153008_)))
                                            (let ((_hd152875153014_
                                                   (##car _e152874153011_))
                                                  (_tl152876153016_
                                                   (##cdr _e152874153011_)))
                                              (let ((_path153019_
                                                     _hd152875153014_))
                                                (if (gx#stx-null?
                                                     _tl152876153016_)
                                                    (if '#t
                                                        (_K152865_
                                                         _rest152866_
                                                         (cons (_import-spec-source152797_
                                                                _path153019_)
                                                               _r152867_))
                                                        (_E152870152999_))
                                                    (_E152870152999_)))))
                                          (_E152870152999_))))
                                  (_E152870152999_)))))
                      (_E152869153021_))))
                 (_import-spec-source152797_
                  (lambda (_spath152862_)
                    (gx#core-import-nested-module _spath152862_ _stx152789_)))
                 (_import!152798_
                  (lambda (_rbody152811_)
                    (letrec* ((_current-ctx152813_
                               (gx#current-expander-context))
                              (_deps152814_ (make-table 'test: eq?))
                              (_bind!152815_
                               (lambda (_hd152860_)
                                 (gx#core-bind-import!__1
                                  _hd152860_
                                  _current-ctx152813_))))
                      (let _lp152817_ ((_rest152819_ _rbody152811_)
                                       (_body152820_ '()))
                        (let* ((_rest152821152829_ _rest152819_)
                               (_else152823152839_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _current-ctx152813_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _current-ctx152813_
                                       (foldl1 cons
                                               (##unchecked-structure-ref
                                                _current-ctx152813_
                                                '8
                                                gx#module-context::t
                                                '#f)
                                               _body152820_)
                                       '8
                                       gx#module-context::t
                                       '#f)
                                      '#!void)
                                  (table-for-each
                                   (lambda (_ctx152837_ _g159861_)
                                     (gx#eval-module _ctx152837_))
                                   _deps152814_)
                                  _body152820_))
                               (_K152825152848_
                                (lambda (_rest152842_ _hd152843_)
                                  (if (##structure-direct-instance-of?
                                       _hd152843_
                                       'gx#module-import::t)
                                      (begin
                                        (_bind!152815_ _hd152843_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _hd152843_
                                                   '3
                                                   gx#module-import::t
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _hd152843_
                                                            '1
                                                            gx#module-import::t
                                                            '#f)
                                                           '3
                                                           gx#module-export::t
                                                           '#f)))
                                            (table-set!
                                             _deps152814_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _hd152843_
                                               '1
                                               gx#module-import::t
                                               '#f)
                                              '1
                                              gx#module-export::t
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _hd152843_
                                           'gx#import-set::t)
                                          (begin
                                            (for-each
                                             _bind!152815_
                                             (##unchecked-structure-ref
                                              _hd152843_
                                              '3
                                              gx#import-set::t
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _hd152843_
                                                  '2
                                                  gx#import-set::t
                                                  '#f))
                                                (table-set!
                                                 _deps152814_
                                                 (##unchecked-structure-ref
                                                  _hd152843_
                                                  '1
                                                  gx#import-set::t
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_$e152845_
                                                 (##structure-instance-of?
                                                  _hd152843_
                                                  'gx#module-context::t)))
                                            (if _$e152845_
                                                _$e152845_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _stx152789_
                                                 _hd152843_)))))
                                  (_lp152817_
                                   _rest152842_
                                   (cons _hd152843_ _body152820_)))))
                          (if (##pair? _rest152821152829_)
                              (let ((_hd152826152851_
                                     (##car _rest152821152829_))
                                    (_tl152827152853_
                                     (##cdr _rest152821152829_)))
                                (let* ((_hd152856_ _hd152826152851_)
                                       (_rest152858_ _tl152827152853_))
                                  (_K152825152848_ _rest152858_ _hd152856_)))
                              (_else152823152839_)))))))
                 (_expanded-import?152799_
                  (lambda (_e152803_)
                    (let ((_$e152805_
                           (##structure-direct-instance-of?
                            _e152803_
                            'gx#import-set::t)))
                      (if _$e152805_
                          _$e152805_
                          (let ((_$e152808_
                                 (##structure-direct-instance-of?
                                  _e152803_
                                  'gx#module-import::t)))
                            (if _$e152808_
                                _$e152808_
                                (##structure-instance-of?
                                 _e152803_
                                 'gx#module-context::t))))))))
          (let ((_rbody152801_
                 (gx#core-expand-import/export
                  _stx152789_
                  _expanded-import?152799_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _expand1152792_)))
            (if _internal-expand?152790_
                (reverse _rbody152801_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_import!152798_ _rbody152801_))
                 (gx#stx-source _stx152789_)))))))
    (define gx#core-expand-import%__0
      (lambda (_stx153115_)
        (let ((_internal-expand?153117_ '#f))
          (gx#core-expand-import%__% _stx153115_ _internal-expand?153117_))))
    (define gx#core-expand-import%
      (lambda _g159863_
        (let ((_g159862_ (##length _g159863_)))
          (cond ((##fx= _g159862_ 1)
                 (apply (lambda (_stx153115_)
                          (gx#core-expand-import%__0 _stx153115_))
                        _g159863_))
                ((##fx= _g159862_ 2)
                 (apply (lambda (_stx153119_ _internal-expand?153120_)
                          (gx#core-expand-import%__%
                           _stx153119_
                           _internal-expand?153120_))
                        _g159863_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g159863_))))))
    (define gx#core-import-nested-module
      (lambda (_spath152716_ _where152717_)
        (let* ((_e152718152725_ _spath152716_)
               (_E152720152729_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152718152725_)))
               (_E152719152784_
                (lambda ()
                  (if (gx#stx-pair? _e152718152725_)
                      (let ((_e152721152733_ (gx#syntax-e _e152718152725_)))
                        (let ((_hd152722152736_ (##car _e152721152733_))
                              (_tl152723152738_ (##cdr _e152721152733_)))
                          (let* ((_origin152741_ _hd152722152736_)
                                 (_sub152743_ _tl152723152738_))
                            (if '#t
                                (let ((_origin-ctx152745_
                                       (if (gx#stx-false? _origin152741_)
                                           (gx#current-expander-context)
                                           (gx#import-module__0
                                            _origin152741_))))
                                  (let _lp152747_ ((_rest152749_ _sub152743_)
                                                   (_ctx152750_
                                                    _origin-ctx152745_))
                                    (let* ((_e152751152758_ _rest152749_)
                                           (_E152753152762_
                                            (lambda () _ctx152750_))
                                           (_E152752152780_
                                            (lambda ()
                                              (if (gx#stx-pair?
                                                   _e152751152758_)
                                                  (let ((_e152754152766_
                                                         (gx#syntax-e
                                                          _e152751152758_)))
                                                    (let ((_hd152755152769_
                                                           (##car _e152754152766_))
                                                          (_tl152756152771_
                                                           (##cdr _e152754152766_)))
                                                      (let* ((_id152774_
                                                              _hd152755152769_)
                                                             (_rest152776_
                                                              _tl152756152771_))
                                                        (if '#t
                                                            (let ((_bind152778_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#resolve-identifier__%
                            _id152774_
                            '0
                            _ctx152750_)))
                      (if (and (##structure-direct-instance-of?
                                _bind152778_
                                'gx#syntax-binding::t)
                               (##structure-instance-of?
                                (##unchecked-structure-ref
                                 _bind152778_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                'gx#module-context::t))
                          '#!void
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; not bound as module"
                           _where152717_
                           _spath152716_
                           _id152774_))
                      (_lp152747_
                       _rest152776_
                       (##unchecked-structure-ref
                        _bind152778_
                        '4
                        gx#syntax-binding::t
                        '#f)))
                    (_E152753152762_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E152753152762_)))))
                                      (_E152752152780_))))
                                (_E152720152729_)))))
                      (_E152720152729_)))))
          (_E152719152784_))))
    (define gx#core-expand-import-source
      (lambda (_hd152714_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _hd152714_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_stx152222_ _internal-expand?152223_)
        (letrec* ((_make-export__159792159793_
                   (lambda (_bind152662_ _phi152663_ _ctx152664_ _name152665_)
                     (let* ((_key152667_
                             (##unchecked-structure-ref
                              _bind152662_
                              '2
                              gx#binding::t
                              '#f))
                            (_export-key152669_
                             (if _name152665_
                                 (gx#core-identifier-key _name152665_)
                                 _key152667_)))
                       (##structure
                        gx#module-export::t
                        _ctx152664_
                        _key152667_
                        _phi152663_
                        _export-key152669_
                        (let ((_$e152672_
                               (##structure-instance-of?
                                _bind152662_
                                'gx#extern-binding::t)))
                          (if _$e152672_
                              _$e152672_
                              (##structure-direct-instance-of?
                               _bind152662_
                               'gx#import-binding::t)))))))
                  (_make-export__0__159794159797_
                   (lambda (_bind152678_)
                     (let* ((_phi152680_ (gx#current-export-expander-phi))
                            (_ctx152682_ (gx#current-expander-context))
                            (_name152684_ '#f))
                       (_make-export__159792159793_
                        _bind152678_
                        _phi152680_
                        _ctx152682_
                        _name152684_))))
                  (_make-export__1__159795159798_
                   (lambda (_bind152686_ _phi152687_)
                     (let* ((_ctx152689_ (gx#current-expander-context))
                            (_name152691_ '#f))
                       (_make-export__159792159793_
                        _bind152686_
                        _phi152687_
                        _ctx152689_
                        _name152691_))))
                  (_make-export__2__159796159799_
                   (lambda (_bind152693_ _phi152694_ _ctx152695_)
                     (let ((_name152697_ '#f))
                       (_make-export__159792159793_
                        _bind152693_
                        _phi152694_
                        _ctx152695_
                        _name152697_))))
                  (_make-export152225_
                   (lambda _g159865_
                     (let ((_g159864_ (##length _g159865_)))
                       (cond ((##fx= _g159864_ 1)
                              (apply (lambda (_bind152678_)
                                       (_make-export__0__159794159797_
                                        _bind152678_))
                                     _g159865_))
                             ((##fx= _g159864_ 2)
                              (apply (lambda (_bind152686_ _phi152687_)
                                       (_make-export__1__159795159798_
                                        _bind152686_
                                        _phi152687_))
                                     _g159865_))
                             ((##fx= _g159864_ 3)
                              (apply (lambda (_bind152693_
                                              _phi152694_
                                              _ctx152695_)
                                       (_make-export__2__159796159799_
                                        _bind152693_
                                        _phi152694_
                                        _ctx152695_))
                                     _g159865_))
                             ((##fx= _g159864_ 4)
                              (apply (lambda (_bind152699_
                                              _phi152700_
                                              _ctx152701_
                                              _name152702_)
                                       (_make-export__159792159793_
                                        _bind152699_
                                        _phi152700_
                                        _ctx152701_
                                        _name152702_))
                                     _g159865_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g159865_))))))
                  (_expand1152226_
                   (lambda (_hd152375_ _K152376_ _rest152377_ _r152378_)
                     (let* ((_e152379152411_ _hd152375_)
                            (_E152406152415_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _stx152222_
                                _hd152375_)))
                            (_E152396152494_
                             (lambda ()
                               (if (gx#stx-pair? _e152379152411_)
                                   (let ((_e152407152419_
                                          (gx#syntax-e _e152379152411_)))
                                     (let ((_hd152408152422_
                                            (##car _e152407152419_))
                                           (_tl152409152424_
                                            (##cdr _e152407152419_)))
                                       (if (eq? (gx#stx-e _hd152408152422_)
                                                'import:)
                                           (let ((_in152427_ _tl152409152424_))
                                             (if (gx#stx-list? _in152427_)
                                                 (let _lp152429_ ((_in-rest152431_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _in152427_)
                          (_r152432_ _r152378_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_e152433152440_
                                                           _in-rest152431_)
                                                          (_E152435152444_
                                                           (lambda ()
                                                             (_K152376_
                                                              _rest152377_
                                                              _r152432_)))
                                                          (_E152434152490_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _e152433152440_)
                         (let ((_e152436152448_ (gx#syntax-e _e152433152440_)))
                           (let ((_hd152437152451_ (##car _e152436152448_))
                                 (_tl152438152453_ (##cdr _e152436152448_)))
                             (let* ((_hd152456_ _hd152437152451_)
                                    (_in-rest152458_ _tl152438152453_))
                               (if '#t
                                   (let ((_src152488_
                                          (if (gx#core-bound-module?
                                               _hd152456_)
                                              (gx#syntax-local-e__0 _hd152456_)
                                              (if (gx#core-library-module-path?
                                                   _hd152456_)
                                                  (gx#import-module__0
                                                   (gx#core-resolve-library-module-path
                                                    _hd152456_))
                                                  (if (gx#core-library-relative-module-path?
                                                       _hd152456_)
                                                      (gx#import-module__0
                                                       (gx#core-resolve-library-relative-module-path
                                                        _hd152456_))
                                                      (if (gx#stx-string?
                                                           _hd152456_)
                                                          (gx#import-module__0
                                                           (gx#core-resolve-module-path__%
                                                            _hd152456_
                                                            (gx#stx-source
                                                             _stx152222_)))
                                                          (let* ((_e152459152466_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd152456_)
                         (_E152461152470_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; illegal re-export"
                             _stx152222_
                             _hd152456_)))
                         (_E152460152484_
                          (lambda ()
                            (if (gx#stx-pair? _e152459152466_)
                                (let ((_e152462152474_
                                       (gx#syntax-e _e152459152466_)))
                                  (let ((_hd152463152477_
                                         (##car _e152462152474_))
                                        (_tl152464152479_
                                         (##cdr _e152462152474_)))
                                    (if (eq? (gx#stx-e _hd152463152477_) 'in:)
                                        (let ((_spath152482_ _tl152464152479_))
                                          (if '#t
                                              (gx#core-import-nested-module
                                               _spath152482_
                                               _stx152222_)
                                              (_E152461152470_)))
                                        (_E152461152470_))))
                                (_E152461152470_)))))
                    (_E152460152484_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_lp152429_
                                      _in-rest152458_
                                      (_export-imports152227_
                                       _src152488_
                                       _r152432_)))
                                   (_E152435152444_)))))
                         (_E152435152444_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E152434152490_)))
                                                 (_E152406152415_)))
                                           (_E152406152415_))))
                                   (_E152406152415_))))
                            (_E152383152533_
                             (lambda ()
                               (if (gx#stx-pair? _e152379152411_)
                                   (let ((_e152397152498_
                                          (gx#syntax-e _e152379152411_)))
                                     (let ((_hd152398152501_
                                            (##car _e152397152498_))
                                           (_tl152399152503_
                                            (##cdr _e152397152498_)))
                                       (if (eq? (gx#stx-e _hd152398152501_)
                                                'rename:)
                                           (if (gx#stx-pair? _tl152399152503_)
                                               (let ((_e152400152506_
                                                      (gx#syntax-e
                                                       _tl152399152503_)))
                                                 (let ((_hd152401152509_
                                                        (##car _e152400152506_))
                                                       (_tl152402152511_
                                                        (##cdr _e152400152506_)))
                                                   (let ((_id152514_
                                                          _hd152401152509_))
                                                     (if (gx#stx-pair?
                                                          _tl152402152511_)
                                                         (let ((_e152403152516_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl152402152511_)))
                   (let ((_hd152404152519_ (##car _e152403152516_))
                         (_tl152405152521_ (##cdr _e152403152516_)))
                     (let ((_name152524_ _hd152404152519_))
                       (if (gx#stx-null? _tl152405152521_)
                           (if '#t
                               (let* ((_phi152526_
                                       (gx#current-export-expander-phi))
                                      (_$e152528_
                                       (gx#core-resolve-identifier__1
                                        _id152514_
                                        _phi152526_)))
                                 (if _$e152528_
                                     ((lambda (_bind152531_)
                                        (_K152376_
                                         _rest152377_
                                         (cons (_make-export__159792159793_
                                                _bind152531_
                                                _phi152526_
                                                (gx#current-expander-context)
                                                _name152524_)
                                               _r152378_)))
                                      _$e152528_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Reference to unbound identifier"
                                      _stx152222_
                                      _hd152375_
                                      _id152514_)))
                               (_E152396152494_))
                           (_E152396152494_)))))
                 (_E152396152494_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E152396152494_))
                                           (_E152396152494_))))
                                   (_E152396152494_))))
                            (_E152382152582_
                             (lambda ()
                               (if (gx#stx-pair? _e152379152411_)
                                   (let ((_e152384152537_
                                          (gx#syntax-e _e152379152411_)))
                                     (let ((_hd152385152540_
                                            (##car _e152384152537_))
                                           (_tl152386152542_
                                            (##cdr _e152384152537_)))
                                       (if (eq? (gx#stx-e _hd152385152540_)
                                                'spec:)
                                           (if (gx#stx-pair? _tl152386152542_)
                                               (let ((_e152387152545_
                                                      (gx#syntax-e
                                                       _tl152386152542_)))
                                                 (let ((_hd152388152548_
                                                        (##car _e152387152545_))
                                                       (_tl152389152550_
                                                        (##cdr _e152387152545_)))
                                                   (let ((_phi152553_
                                                          _hd152388152548_))
                                                     (if (gx#stx-pair?
                                                          _tl152389152550_)
                                                         (let ((_e152390152555_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl152389152550_)))
                   (let ((_hd152391152558_ (##car _e152390152555_))
                         (_tl152392152560_ (##cdr _e152390152555_)))
                     (let ((_id152563_ _hd152391152558_))
                       (if (gx#stx-pair? _tl152392152560_)
                           (let ((_e152393152565_
                                  (gx#syntax-e _tl152392152560_)))
                             (let ((_hd152394152568_ (##car _e152393152565_))
                                   (_tl152395152570_ (##cdr _e152393152565_)))
                               (let ((_name152573_ _hd152394152568_))
                                 (if (gx#stx-null? _tl152395152570_)
                                     (if (and (gx#stx-fixnum? _phi152553_)
                                              (gx#identifier? _id152563_)
                                              (gx#identifier? _name152573_))
                                         (let* ((_phi152575_
                                                 (gx#stx-e _phi152553_))
                                                (_$e152577_
                                                 (gx#core-resolve-identifier__1
                                                  _id152563_
                                                  _phi152575_)))
                                           (if _$e152577_
                                               ((lambda (_bind152580_)
                                                  (_K152376_
                                                   _rest152377_
                                                   (cons (_make-export__159792159793_
                                                          _bind152580_
                                                          _phi152575_
                                                          (gx#current-expander-context)
                                                          _name152573_)
                                                         _r152378_)))
                                                _$e152577_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _stx152222_
                                                _hd152375_
                                                _id152563_)))
                                         (_E152383152533_))
                                     (_E152383152533_)))))
                           (_E152383152533_)))))
                 (_E152383152533_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E152383152533_))
                                           (_E152383152533_))))
                                   (_E152383152533_))))
                            (_E152381152593_
                             (lambda ()
                               (let ((_id152586_ _e152379152411_))
                                 (if (gx#identifier? _id152586_)
                                     (let ((_$e152588_
                                            (gx#core-resolve-identifier__1
                                             _id152586_
                                             (gx#current-export-expander-phi))))
                                       (if _$e152588_
                                           ((lambda (_bind152591_)
                                              (_K152376_
                                               _rest152377_
                                               (cons (_make-export__0__159794159797_
                                                      _bind152591_)
                                                     _r152378_)))
                                            _$e152588_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _stx152222_
                                            _hd152375_)))
                                     (_E152382152582_)))))
                            (_E152380152657_
                             (lambda ()
                               (if (eq? (gx#stx-e _e152379152411_) '#t)
                                   (if '#t
                                       (let* ((_current-ctx152597_
                                               (gx#current-expander-context))
                                              (_current-phi152599_
                                               (gx#current-export-expander-phi))
                                              (_phi-ctx152601_
                                               (gx#core-context-shift
                                                _current-ctx152597_
                                                _current-phi152599_))
                                              (_phi-bind152603_
                                               (table->list
                                                (##unchecked-structure-ref
                                                 _phi-ctx152601_
                                                 '2
                                                 gx#expander-context::t
                                                 '#f))))
                                         (let _lp152606_ ((_bind-rest152608_
                                                           _phi-bind152603_)
                                                          (_set152609_ '()))
                                           (let* ((_bind-rest152610152620_
                                                   _bind-rest152608_)
                                                  (_else152612152628_
                                                   (lambda ()
                                                     (_K152376_
                                                      _rest152377_
                                                      (cons (##structure
                                                             gx#export-set::t
                                                             '#f
                                                             _current-phi152599_
                                                             _set152609_)
                                                            _r152378_))))
                                                  (_K152614152638_
                                                   (lambda (_bind-rest152631_
                                                            _bind152632_
                                                            _key152633_)
                                                     (if (or (##structure-direct-instance-of?
                                                              _bind152632_
                                                              'gx#import-binding::t)
                                                             (gx#private-feature-binding?
                                                              _bind152632_))
                                                         (_lp152606_
                                                          _bind-rest152631_
                                                          _set152609_)
                                                         (_lp152606_
                                                          _bind-rest152631_
                                                          (cons (_make-export__2__159796159799_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind152632_
                         _current-phi152599_
                         _current-ctx152597_)
                        _set152609_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _bind-rest152610152620_)
                                                 (let ((_hd152615152641_
                                                        (##car _bind-rest152610152620_))
                                                       (_tl152616152643_
                                                        (##cdr _bind-rest152610152620_)))
                                                   (if (##pair? _hd152615152641_)
                                                       (let ((_hd152617152646_
                                                              (##car _hd152615152641_))
                                                             (_tl152618152648_
                                                              (##cdr _hd152615152641_)))
                                                         (let* ((_key152651_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd152617152646_)
                        (_bind152653_ _tl152618152648_)
                        (_bind-rest152655_ _tl152616152643_))
                   (_K152614152638_
                    _bind-rest152655_
                    _bind152653_
                    _key152651_)))
               (_else152612152628_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_else152612152628_)))))
                                       (_E152381152593_))
                                   (_E152381152593_)))))
                       (_E152380152657_))))
                  (_export-imports152227_
                   (lambda (_src152251_ _r152252_)
                     (letrec* ((_current-ctx152254_
                                (gx#current-expander-context))
                               (_current-phi152255_
                                (gx#current-export-expander-phi))
                               (_import->export152256_
                                (lambda (_in152337_)
                                  (let* ((_in152338152346_ _in152337_)
                                         (_E152340152350_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _in152338152346_)))
                                         (_K152341152357_
                                          (lambda (_phi152353_
                                                   _key152354_
                                                   _out152355_)
                                            (##structure
                                             gx#module-export::t
                                             _current-ctx152254_
                                             _key152354_
                                             _phi152353_
                                             _key152354_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _in152338152346_
                                         'gx#module-import::t)
                                        (let* ((_e152342152360_
                                                (##unchecked-structure-ref
                                                 _in152338152346_
                                                 '1
                                                 gx#module-import::t
                                                 '#f))
                                               (_out152363_ _e152342152360_)
                                               (_e152343152365_
                                                (##unchecked-structure-ref
                                                 _in152338152346_
                                                 '2
                                                 gx#module-import::t
                                                 '#f))
                                               (_key152368_ _e152343152365_)
                                               (_e152344152370_
                                                (##unchecked-structure-ref
                                                 _in152338152346_
                                                 '3
                                                 gx#module-import::t
                                                 '#f))
                                               (_phi152373_ _e152344152370_))
                                          (_K152341152357_
                                           _phi152373_
                                           _key152368_
                                           _out152363_))
                                        (_E152340152350_)))))
                               (_fold-e152257_
                                (lambda (_in152259_ _r152260_)
                                  (let* ((_in152261152275_ _in152259_)
                                         (_else152264152283_
                                          (lambda () _r152260_)))
                                    (let ((_K152270152319_
                                           (lambda (_phi152315_
                                                    _key152316_
                                                    _out152317_)
                                             (if (and (fx= _phi152315_
                                                           _current-phi152255_)
                                                      (eq? _src152251_
                                                           (##unchecked-structure-ref
                                                            _out152317_
                                                            '1
                                                            gx#module-export::t
                                                            '#f)))
                                                 (cons (_import->export152256_
                                                        _in152259_)
                                                       _r152260_)
                                                 _r152260_)))
                                          (_K152266152294_
                                           (lambda (_imports152287_
                                                    _phi152288_
                                                    _ctx152289_)
                                             (if (and (fx= _phi152288_
                                                           _current-phi152255_)
                                                      (eq? _src152251_
                                                           _ctx152289_))
                                                 (foldl1 (lambda (_in152291_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r152292_)
                   (cons (_import->export152256_ _in152291_) _r152292_))
                 _r152260_
                 _imports152287_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _r152260_))))
                                      (let ((_try-match152263152312_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _in152261152275_
                                                    'gx#import-set::t)
                                                   (let* ((_e152267152297_
                                                           (##unchecked-structure-ref
                                                            _in152261152275_
                                                            '1
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e152268152302_
                                                           (##unchecked-structure-ref
                                                            _in152261152275_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e152269152307_
                                                           (##unchecked-structure-ref
                                                            _in152261152275_
                                                            '3
                                                            gx#import-set::t
                                                            '#f)))
                                                     (let ((_ctx152300_
                                                            _e152267152297_)
                                                           (_phi152305_
                                                            _e152268152302_)
                                                           (_imports152310_
                                                            _e152269152307_))
                                                       (_K152266152294_
                                                        _imports152310_
                                                        _phi152305_
                                                        _ctx152300_)))
                                                   (_else152264152283_)))))
                                        (if (##structure-direct-instance-of?
                                             _in152261152275_
                                             'gx#module-import::t)
                                            (let* ((_e152271152322_
                                                    (##unchecked-structure-ref
                                                     _in152261152275_
                                                     '1
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e152272152327_
                                                    (##unchecked-structure-ref
                                                     _in152261152275_
                                                     '2
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e152273152332_
                                                    (##unchecked-structure-ref
                                                     _in152261152275_
                                                     '3
                                                     gx#module-import::t
                                                     '#f)))
                                              (let ((_out152325_
                                                     _e152271152322_)
                                                    (_key152330_
                                                     _e152272152327_)
                                                    (_phi152335_
                                                     _e152273152332_))
                                                (_K152270152319_
                                                 _phi152335_
                                                 _key152330_
                                                 _out152325_)))
                                            (_try-match152263152312_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _src152251_
                              _current-phi152255_
                              (foldl1 _fold-e152257_
                                      '()
                                      (##unchecked-structure-ref
                                       _current-ctx152254_
                                       '8
                                       gx#module-context::t
                                       '#f)))
                             _r152252_))))
                  (_export!152228_
                   (lambda (_rbody152241_)
                     (letrec* ((_current-ctx152243_
                                (gx#current-expander-context))
                               (_fold-e152244_
                                (lambda (_out152248_ _r152249_)
                                  (if (##structure-direct-instance-of?
                                       _out152248_
                                       'gx#module-export::t)
                                      (cons _out152248_ _r152249_)
                                      (if (##structure-direct-instance-of?
                                           _out152248_
                                           'gx#export-set::t)
                                          (foldl1 cons
                                                  _r152249_
                                                  (##unchecked-structure-ref
                                                   _out152248_
                                                   '3
                                                   gx#export-set::t
                                                   '#f))
                                          _r152249_)))))
                       (let ((_body152246_ (reverse _rbody152241_)))
                         (##unchecked-structure-set!
                          _current-ctx152243_
                          (foldl1 _fold-e152244_
                                  (##unchecked-structure-ref
                                   _current-ctx152243_
                                   '9
                                   gx#module-context::t
                                   '#f)
                                  _body152246_)
                          '9
                          gx#module-context::t
                          '#f)
                         _body152246_))))
                  (_expanded-export?152229_
                   (lambda (_e152236_)
                     (let ((_$e152238_
                            (##structure-direct-instance-of?
                             _e152236_
                             'gx#module-export::t)))
                       (if _$e152238_
                           _$e152238_
                           (##structure-direct-instance-of?
                            _e152236_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _internal-expand?152223_)
              (let ((_rbody152234_
                     (gx#core-expand-import/export
                      _stx152222_
                      _expanded-export?152229_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _expand1152226_)))
                (if _internal-expand?152223_
                    (reverse _rbody152234_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons '%#export (_export!152228_ _rbody152234_))
                     (gx#stx-source _stx152222_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _stx152222_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _stx152222_))))))
    (define gx#core-expand-export%__0
      (lambda (_stx152707_)
        (let ((_internal-expand?152709_ '#f))
          (gx#core-expand-export%__% _stx152707_ _internal-expand?152709_))))
    (define gx#core-expand-export%
      (lambda _g159867_
        (let ((_g159866_ (##length _g159867_)))
          (cond ((##fx= _g159866_ 1)
                 (apply (lambda (_stx152707_)
                          (gx#core-expand-export%__0 _stx152707_))
                        _g159867_))
                ((##fx= _g159866_ 2)
                 (apply (lambda (_stx152711_ _internal-expand?152712_)
                          (gx#core-expand-export%__%
                           _stx152711_
                           _internal-expand?152712_))
                        _g159867_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g159867_))))))
    (define gx#core-expand-export-source
      (lambda (_hd152219_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _hd152219_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_stx152189_)
        (let* ((_e152190152197_ _stx152189_)
               (_E152192152201_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152190152197_)))
               (_E152191152215_
                (lambda ()
                  (if (gx#stx-pair? _e152190152197_)
                      (let ((_e152193152205_ (gx#syntax-e _e152190152197_)))
                        (let ((_hd152194152208_ (##car _e152193152205_))
                              (_tl152195152210_ (##cdr _e152193152205_)))
                          (let ((_body152213_ _tl152195152210_))
                            (if (gx#identifier-list? _body152213_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _body152213_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _body152213_))
                                   (gx#stx-source _stx152189_)))
                                (_E152192152201_)))))
                      (_E152192152201_)))))
          (_E152191152215_))))
    (define gx#core-bind-feature!__%
      (lambda (_id152155_ _private?152156_ _phi152157_ _ctx152158_)
        (gx#core-bind-syntax!__%
         _id152155_
         ((if _private?152156_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _id152155_))
         _private?152156_
         _phi152157_
         _ctx152158_)))
    (define gx#core-bind-feature!__0
      (lambda (_id152163_)
        (let* ((_private?152165_ '#f)
               (_phi152167_ (gx#current-expander-phi))
               (_ctx152169_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id152163_
           _private?152165_
           _phi152167_
           _ctx152169_))))
    (define gx#core-bind-feature!__1
      (lambda (_id152171_ _private?152172_)
        (let* ((_phi152174_ (gx#current-expander-phi))
               (_ctx152176_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id152171_
           _private?152172_
           _phi152174_
           _ctx152176_))))
    (define gx#core-bind-feature!__2
      (lambda (_id152178_ _private?152179_ _phi152180_)
        (let ((_ctx152182_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id152178_
           _private?152179_
           _phi152180_
           _ctx152182_))))
    (define gx#core-bind-feature!
      (lambda _g159869_
        (let ((_g159868_ (##length _g159869_)))
          (cond ((##fx= _g159868_ 1)
                 (apply (lambda (_id152163_)
                          (gx#core-bind-feature!__0 _id152163_))
                        _g159869_))
                ((##fx= _g159868_ 2)
                 (apply (lambda (_id152171_ _private?152172_)
                          (gx#core-bind-feature!__1
                           _id152171_
                           _private?152172_))
                        _g159869_))
                ((##fx= _g159868_ 3)
                 (apply (lambda (_id152178_ _private?152179_ _phi152180_)
                          (gx#core-bind-feature!__2
                           _id152178_
                           _private?152179_
                           _phi152180_))
                        _g159869_))
                ((##fx= _g159868_ 4)
                 (apply (lambda (_id152184_
                                 _private?152185_
                                 _phi152186_
                                 _ctx152187_)
                          (gx#core-bind-feature!__%
                           _id152184_
                           _private?152185_
                           _phi152186_
                           _ctx152187_))
                        _g159869_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g159869_))))))))
