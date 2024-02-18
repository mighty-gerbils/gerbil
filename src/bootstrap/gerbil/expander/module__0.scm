(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1708289481)
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
      (lambda _$args174821_
        (apply make-instance gx#module-import::t _$args174821_)))
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
      (lambda _$args174818_
        (apply make-instance gx#module-export::t _$args174818_)))
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
      (lambda _$args174815_
        (apply make-instance gx#import-set::t _$args174815_)))
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
      (lambda _$args174812_
        (apply make-instance gx#export-set::t _$args174812_)))
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
      (lambda _$args174809_
        (apply make-instance gx#import-expander::t _$args174809_)))
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
      (lambda _$args174806_
        (apply make-instance gx#export-expander::t _$args174806_)))
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
      (lambda _$args174803_
        (apply make-instance gx#import-export-expander::t _$args174803_)))
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
      (lambda (_path174800_ _fun174801_)
        (call-with-input-file
         (cons 'path: (cons _path174800_ gx#source-file-settings))
         _fun174801_)))
    (define gx#module-context:::init!
      (lambda (_self174794_ _id174795_ _super174796_ _ns174797_ _path174798_)
        (if (##fx< '11 (##structure-length _self174794_))
            (begin
              (##unchecked-structure-set!
               _self174794_
               _id174795_
               '1
               (##structure-type _self174794_)
               '#f)
              (##unchecked-structure-set!
               _self174794_
               (make-hash-table-eq)
               '2
               (##structure-type _self174794_)
               '#f)
              (##unchecked-structure-set!
               _self174794_
               _super174796_
               '3
               (##structure-type _self174794_)
               '#f)
              (##unchecked-structure-set!
               _self174794_
               '#f
               '4
               (##structure-type _self174794_)
               '#f)
              (##unchecked-structure-set!
               _self174794_
               '#f
               '5
               (##structure-type _self174794_)
               '#f)
              (##unchecked-structure-set!
               _self174794_
               _ns174797_
               '6
               (##structure-type _self174794_)
               '#f)
              (##unchecked-structure-set!
               _self174794_
               _path174798_
               '7
               (##structure-type _self174794_)
               '#f)
              (##unchecked-structure-set!
               _self174794_
               '()
               '8
               (##structure-type _self174794_)
               '#f)
              (##unchecked-structure-set!
               _self174794_
               '()
               '9
               (##structure-type _self174794_)
               '#f)
              (##unchecked-structure-set!
               _self174794_
               '#f
               '10
               (##structure-type _self174794_)
               '#f)
              (##unchecked-structure-set!
               _self174794_
               '#f
               '11
               (##structure-type _self174794_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self174794_
                   '11
                   (##vector-length _self174794_)))))
    (bind-method! gx#module-context::t ':init! gx#module-context:::init! '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_self174638_ _ctx174639_ _root174640_)
        (let ((_super174648_
               (let ((_$e174642_ _root174640_))
                 (if _$e174642_
                     _$e174642_
                     (let ((_$e174645_ (gx#core-context-root__0)))
                       (if _$e174645_
                           _$e174645_
                           (let ((__obj178930
                                  (##structure gx#root-context::t '#f '#f)))
                             (let ((__constructor178931
                                    (direct-method-ref
                                     gx#root-context::t
                                     __obj178930
                                     ':init!)))
                               (if __constructor178931
                                   (__constructor178931 __obj178930)
                                   (error '"missing constructor method implementation"
                                          'class:
                                          gx#root-context::t
                                          'method:
                                          ':init!)))
                             __obj178930)))))))
          (if _ctx174639_
              (let ((_id174651_
                     (##structure-ref
                      _ctx174639_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_path174652_
                     (##structure-ref _ctx174639_ '7 gx#module-context::t '#f))
                    (_in174653_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _ctx174639_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_e174654_
                     (make-promise (lambda () (gx#eval-module _ctx174639_)))))
                (if (##fx< '8 (##structure-length _self174638_))
                    (begin
                      (##unchecked-structure-set!
                       _self174638_
                       _id174651_
                       '1
                       (##structure-type _self174638_)
                       '#f)
                      (##unchecked-structure-set!
                       _self174638_
                       (make-hash-table-eq 'size: (length _in174653_))
                       '2
                       (##structure-type _self174638_)
                       '#f)
                      (##unchecked-structure-set!
                       _self174638_
                       _super174648_
                       '3
                       (##structure-type _self174638_)
                       '#f)
                      (##unchecked-structure-set!
                       _self174638_
                       '#f
                       '4
                       (##structure-type _self174638_)
                       '#f)
                      (##unchecked-structure-set!
                       _self174638_
                       '#f
                       '5
                       (##structure-type _self174638_)
                       '#f)
                      (##unchecked-structure-set!
                       _self174638_
                       _path174652_
                       '6
                       (##structure-type _self174638_)
                       '#f)
                      (##unchecked-structure-set!
                       _self174638_
                       _in174653_
                       '7
                       (##structure-type _self174638_)
                       '#f)
                      (##unchecked-structure-set!
                       _self174638_
                       _e174654_
                       '8
                       (##structure-type _self174638_)
                       '#f))
                    (error '"struct-instance-init!: too many arguments for struct"
                           _self174638_
                           '8
                           (##vector-length _self174638_)))
                (for-each
                 (lambda (_g174655174657_)
                   (gx#core-bind-weak-import!__% _g174655174657_ _self174638_))
                 _in174653_))
              (if (##fx< '8 (##structure-length _self174638_))
                  (begin
                    (##unchecked-structure-set!
                     _self174638_
                     '#f
                     '1
                     (##structure-type _self174638_)
                     '#f)
                    (##unchecked-structure-set!
                     _self174638_
                     (make-hash-table-eq)
                     '2
                     (##structure-type _self174638_)
                     '#f)
                    (##unchecked-structure-set!
                     _self174638_
                     _super174648_
                     '3
                     (##structure-type _self174638_)
                     '#f)
                    (##unchecked-structure-set!
                     _self174638_
                     '#f
                     '4
                     (##structure-type _self174638_)
                     '#f)
                    (##unchecked-structure-set!
                     _self174638_
                     '#f
                     '5
                     (##structure-type _self174638_)
                     '#f)
                    (##unchecked-structure-set!
                     _self174638_
                     '#f
                     '6
                     (##structure-type _self174638_)
                     '#f)
                    (##unchecked-structure-set!
                     _self174638_
                     '()
                     '7
                     (##structure-type _self174638_)
                     '#f)
                    (##unchecked-structure-set!
                     _self174638_
                     '#f
                     '8
                     (##structure-type _self174638_)
                     '#f))
                  (error '"struct-instance-init!: too many arguments for struct"
                         _self174638_
                         '8
                         (##vector-length _self174638_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_self174663_ _ctx174664_)
        (let ((_root174666_ '#f))
          (gx#prelude-context:::init!__%
           _self174663_
           _ctx174664_
           _root174666_))))
    (define gx#prelude-context:::init!
      (lambda _g178937_
        (let ((_g178936_ (##length _g178937_)))
          (cond ((##fx= _g178936_ 2)
                 (apply (lambda (_self174663_ _ctx174664_)
                          (gx#prelude-context:::init!__0
                           _self174663_
                           _ctx174664_))
                        _g178937_))
                ((##fx= _g178936_ 3)
                 (apply (lambda (_self174668_ _ctx174669_ _root174670_)
                          (gx#prelude-context:::init!__%
                           _self174668_
                           _ctx174669_
                           _root174670_))
                        _g178937_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g178937_))))))
    (bind-method! gx#prelude-context::t ':init! gx#prelude-context:::init! '#f)
    (define gx#import-export-expander-init!
      (lambda (_self174512_ _e174513_)
        (if (##fx< '3 (##structure-length _self174512_))
            (begin
              (##unchecked-structure-set!
               _self174512_
               _e174513_
               '1
               (##structure-type _self174512_)
               '#f)
              (##unchecked-structure-set!
               _self174512_
               (gx#current-expander-context)
               '2
               (##structure-type _self174512_)
               '#f)
              (##unchecked-structure-set!
               _self174512_
               (fx- (gx#current-expander-phi) '1)
               '3
               (##structure-type _self174512_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self174512_
                   '3
                   (##vector-length _self174512_)))))
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
      (lambda (_g174138174141_ _g174139174143_)
        (gx#core-apply-user-expander__%
         _g174138174141_
         _g174139174143_
         'apply-import-expander)))
    (bind-method!
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_g174009174012_ _g174010174014_)
        (gx#core-apply-user-expander__%
         _g174009174012_
         _g174010174014_
         'apply-export-expander)))
    (bind-method!
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_ctx173880_)
        (let* ((_path173882_
                (##structure-ref _ctx173880_ '7 gx#module-context::t '#f))
               (_path173884_
                (if (pair? _path173882_) (last _path173882_) _path173882_)))
          (if (string? _path173884_) _path173884_ '#f))))
    (define gx#import-module__%
      (lambda (_path173856_ _reload?173857_ _eval?173858_)
        (let ((_ctx173860_
               ((gx#current-expander-module-import)
                _path173856_
                _reload?173857_)))
          (if (and _ctx173860_ _eval?173858_)
              (gx#eval-module _ctx173860_)
              '#!void)
          _ctx173860_)))
    (define gx#import-module__0
      (lambda (_path173865_)
        (let* ((_reload?173867_ '#f) (_eval?173869_ '#f))
          (gx#import-module__% _path173865_ _reload?173867_ _eval?173869_))))
    (define gx#import-module__1
      (lambda (_path173871_ _reload?173872_)
        (let ((_eval?173874_ '#f))
          (gx#import-module__% _path173871_ _reload?173872_ _eval?173874_))))
    (define gx#import-module
      (lambda _g178939_
        (let ((_g178938_ (##length _g178939_)))
          (cond ((##fx= _g178938_ 1)
                 (apply (lambda (_path173865_)
                          (gx#import-module__0 _path173865_))
                        _g178939_))
                ((##fx= _g178938_ 2)
                 (apply (lambda (_path173871_ _reload?173872_)
                          (gx#import-module__1 _path173871_ _reload?173872_))
                        _g178939_))
                ((##fx= _g178938_ 3)
                 (apply (lambda (_path173876_ _reload?173877_ _eval?173878_)
                          (gx#import-module__%
                           _path173876_
                           _reload?173877_
                           _eval?173878_))
                        _g178939_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g178939_))))))
    (define gx#eval-module
      (lambda (_mod173853_) ((gx#current-expander-module-eval) _mod173853_)))
    (define gx#core-eval-module
      (lambda (_obj173838_)
        (letrec ((_force-e173840_
                  (lambda (_getf173849_ _e173850_)
                    (call-with-parameters
                     (lambda () (force (_getf173849_ _e173850_)))
                     gx#current-expander-context
                     _e173850_
                     gx#current-expander-phi
                     '0))))
          (let _recur173842_ ((_e173844_ _obj173838_))
            (if (##structure-instance-of? _e173844_ 'gx#module-context::t)
                (begin
                  (let ((_$e173846_ (gx#core-context-prelude__% _e173844_)))
                    (if _$e173846_ (_recur173842_ _$e173846_) '#!void))
                  (_force-e173840_ gx#module-context-e _e173844_))
                (if (##structure-instance-of? _e173844_ 'gx#prelude-context::t)
                    (_force-e173840_ gx#prelude-context-e _e173844_)
                    (if (gx#stx-string? _e173844_)
                        (_recur173842_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _e173844_)))
                        (if (gx#core-library-module-path? _e173844_)
                            (_recur173842_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _e173844_)))
                            (error '"Cannot eval module" _obj173838_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_ctx173821_)
        (let _lp173823_ ((_e173825_ _ctx173821_))
          (if (or (##structure-instance-of? _e173825_ 'gx#module-context::t)
                  (##structure-instance-of? _e173825_ 'gx#local-context::t))
              (_lp173823_
               (##unchecked-structure-ref _e173825_ '3 gx#phi-context::t '#f))
              (if (##structure-instance-of? _e173825_ 'gx#prelude-context::t)
                  _e173825_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_ctx173834_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _ctx173834_))))
    (define gx#core-context-prelude
      (lambda _g178941_
        (let ((_g178940_ (##length _g178941_)))
          (cond ((##fx= _g178940_ 0)
                 (apply (lambda () (gx#core-context-prelude__0)) _g178941_))
                ((##fx= _g178940_ 1)
                 (apply (lambda (_ctx173836_)
                          (gx#core-context-prelude__% _ctx173836_))
                        _g178941_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g178941_))))))
    (define gx#core-module->prelude-context
      (lambda (_ctx173811_)
        (let* ((_ht173813_ (gx#current-expander-module-registry))
               (_$e173815_ (hash-get _ht173813_ _ctx173811_)))
          (if _$e173815_
              (values _$e173815_)
              (let ((_pre173818_
                     (let ((__obj178932
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
                       (gx#prelude-context:::init! __obj178932 _ctx173811_)
                       __obj178932)))
                (hash-put! _ht173813_ _ctx173811_ _pre173818_)
                _pre173818_)))))
    (define gx#core-import-module__%
      (lambda (_rpath173692_ _reload?173693_)
        (letrec ((_import-source173695_
                  (lambda (_path173780_)
                    (if (member _path173780_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _path173780_)
                        '#!void)
                    (call-with-parameters
                     (lambda ()
                       (let ((_g178942_ (gx#core-read-module _path173780_)))
                         (begin
                           (let ((_g178943_
                                  (if (##values? _g178942_)
                                      (##vector-length _g178942_)
                                      1)))
                             (if (not (##fx= _g178943_ 4))
                                 (error "Context expects 4 values" _g178943_)))
                           (let ((_pre173783_ (##vector-ref _g178942_ 0))
                                 (_id173784_ (##vector-ref _g178942_ 1))
                                 (_ns173785_ (##vector-ref _g178942_ 2))
                                 (_body173786_ (##vector-ref _g178942_ 3)))
                             (let* ((_prelude173791_
                                     (if (##structure-instance-of?
                                          _pre173783_
                                          'gx#prelude-context::t)
                                         _pre173783_
                                         (if (##structure-instance-of?
                                              _pre173783_
                                              'gx#module-context::t)
                                             (gx#core-module->prelude-context
                                              _pre173783_)
                                             (if (string? _pre173783_)
                                                 (gx#core-module->prelude-context
                                                  (gx#core-import-module__0
                                                   _pre173783_))
                                                 (if (not _pre173783_)
                                                     (let ((_$e173788_
                                                            (gx#current-expander-module-prelude)))
                                                       (if _$e173788_
                                                           _$e173788_
                                                           (let ((__obj178933
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
                     (gx#prelude-context:::init! __obj178933 '#f)
                     __obj178933)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error '"Cannot import module; unknown prelude"
                                                            _rpath173692_
                                                            _pre173783_))))))
                                    (_ctx173793_
                                     (let ((__obj178934
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
                                        __obj178934
                                        _id173784_
                                        _prelude173791_
                                        _ns173785_
                                        _path173780_)
                                       __obj178934))
                                    (_body173795_
                                     (gx#core-expand-module-begin
                                      _body173786_
                                      _ctx173793_))
                                    (_body173797_
                                     (gx#core-quote-syntax__%
                                      (gx#core-cons '%#begin _body173795_)
                                      _path173780_
                                      _ctx173793_
                                      '())))
                               (##unchecked-structure-set!
                                _ctx173793_
                                (make-promise
                                 (lambda () (gx#eval-syntax* _body173797_)))
                                '10
                                gx#module-context::t
                                '#f)
                               (##unchecked-structure-set!
                                _ctx173793_
                                _body173797_
                                '11
                                gx#module-context::t
                                '#f)
                               (hash-put!
                                (gx#current-expander-module-registry)
                                _path173780_
                                _ctx173793_)
                               (hash-put!
                                (gx#current-expander-module-registry)
                                _id173784_
                                _ctx173793_)
                               _ctx173793_)))))
                     gx#current-expander-context
                     (gx#core-context-root__0)
                     gx#current-expander-marks
                     '()
                     gx#current-expander-phi
                     '0
                     gx#current-expander-path
                     (cons _path173780_ (gx#current-expander-path))
                     gx#current-import-expander-phi
                     '#f
                     gx#current-export-expander-phi
                     '#f)))
                 (_import-submodule173696_
                  (lambda (_rpath173708_)
                    (let* ((_rpath173709173716_ _rpath173708_)
                           (_E173711173720_
                            (lambda ()
                              (error '"No clause matching"
                                     _rpath173709173716_)))
                           (_K173712173768_
                            (lambda (_refs173723_ _origin173724_)
                              (let ((_ctx173726_
                                     (if _origin173724_
                                         (gx#core-import-module__%
                                          _origin173724_
                                          _reload?173693_)
                                         (gx#current-expander-context))))
                                (let _lp173728_ ((_rest173730_ _refs173723_)
                                                 (_ctx173731_ _ctx173726_))
                                  (let* ((_rest173732173740_ _rest173730_)
                                         (_else173734173748_
                                          (lambda () _ctx173731_))
                                         (_K173736173756_
                                          (lambda (_rest173751_ _id173752_)
                                            (let ((_bind173754_
                                                   (gx#resolve-identifier__%
                                                    _id173752_
                                                    '0
                                                    _ctx173731_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _bind173754_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _bind173754_
                                                         '4
                                                         gx#syntax-binding::t
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_lp173728_
                                                   _rest173751_
                                                   (##unchecked-structure-ref
                                                    _bind173754_
                                                    '4
                                                    gx#syntax-binding::t
                                                    '#f))
                                                  (error '"Cannot import submodule; not bound as a module"
                                                         _rpath173708_
                                                         _id173752_
                                                         _bind173754_))))))
                                    (if (##pair? _rest173732173740_)
                                        (let ((_hd173737173759_
                                               (##car _rest173732173740_))
                                              (_tl173738173761_
                                               (##cdr _rest173732173740_)))
                                          (let* ((_id173764_ _hd173737173759_)
                                                 (_rest173766_
                                                  _tl173738173761_))
                                            (_K173736173756_
                                             _rest173766_
                                             _id173764_)))
                                        (_else173734173748_))))))))
                      (if (##pair? _rpath173709173716_)
                          (let ((_hd173713173771_ (##car _rpath173709173716_))
                                (_tl173714173773_ (##cdr _rpath173709173716_)))
                            (let* ((_origin173776_ _hd173713173771_)
                                   (_refs173778_ _tl173714173773_))
                              (_K173712173768_ _refs173778_ _origin173776_)))
                          (_E173711173720_))))))
          (let ((_$e173698_
                 (if (not _reload?173693_)
                     (hash-get
                      (gx#current-expander-module-registry)
                      _rpath173692_)
                     '#f)))
            (if _$e173698_
                (values _$e173698_)
                (if (list? _rpath173692_)
                    (_import-submodule173696_ _rpath173692_)
                    (if (gx#core-library-module-path? _rpath173692_)
                        (let ((_ctx173701_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _rpath173692_)
                                _reload?173693_)))
                          (hash-put!
                           (gx#current-expander-module-registry)
                           _rpath173692_
                           _ctx173701_)
                          _ctx173701_)
                        (let* ((_npath173703_ (path-normalize _rpath173692_))
                               (_$e173705_
                                (if (not _reload?173693_)
                                    (hash-get
                                     (gx#current-expander-module-registry)
                                     _npath173703_)
                                    '#f)))
                          (if _$e173705_
                              (values _$e173705_)
                              (_import-source173695_ _npath173703_))))))))))
    (define gx#core-import-module__0
      (lambda (_rpath173804_)
        (let ((_reload?173806_ '#f))
          (gx#core-import-module__% _rpath173804_ _reload?173806_))))
    (define gx#core-import-module
      (lambda _g178945_
        (let ((_g178944_ (##length _g178945_)))
          (cond ((##fx= _g178944_ 1)
                 (apply (lambda (_rpath173804_)
                          (gx#core-import-module__0 _rpath173804_))
                        _g178945_))
                ((##fx= _g178944_ 2)
                 (apply (lambda (_rpath173808_ _reload?173809_)
                          (gx#core-import-module__%
                           _rpath173808_
                           _reload?173809_))
                        _g178945_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g178945_))))))
    (define gx#core-read-module
      (lambda (_path173681_)
        (with-catch
         (lambda (_exn173683_)
           (if (and (datum-parsing-exception? _exn173683_)
                    (eq? (datum-parsing-exception-filepos _exn173683_) '0))
               (gx#core-read-module/lang _path173681_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _path173681_
                (call-with-parameters
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_g173685173687_)
                      (display-exception _exn173683_ _g173685173687_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _path173681_)))))
    (define gx#core-read-module/sexp
      (lambda (_path173544_)
        (let _lp173546_ ((_body173548_ (read-syntax-from-file _path173544_))
                         (_pre173549_ '#f)
                         (_ns173550_ '#f)
                         (_pkg173551_ '#f))
          (let* ((_e173552173576_ _body173548_)
                 (_E173568173598_
                  (lambda ()
                    (let ((_g178946_
                           (if _pkg173551_
                               (values _pre173549_ _ns173550_ _pkg173551_)
                               (gx#core-read-module-package
                                _path173544_
                                _pre173549_
                                _ns173550_))))
                      (begin
                        (let ((_g178947_
                               (if (##values? _g178946_)
                                   (##vector-length _g178946_)
                                   1)))
                          (if (not (##fx= _g178947_ 3))
                              (error "Context expects 3 values" _g178947_)))
                        (let ((_pre173580_ (##vector-ref _g178946_ 0))
                              (_ns173581_ (##vector-ref _g178946_ 1))
                              (_pkg173582_ (##vector-ref _g178946_ 2)))
                          (let* ((_prelude173584_
                                  (if (gx#core-bound-module-prelude?
                                       _pre173580_)
                                      (gx#syntax-local-e__0 _pre173580_)
                                      (if (gx#core-library-module-path?
                                           _pre173580_)
                                          (gx#core-resolve-library-module-path
                                           _pre173580_)
                                          (if (gx#stx-string? _pre173580_)
                                              (gx#core-resolve-module-path__%
                                               _pre173580_
                                               _path173544_)
                                              (gx#stx-e _pre173580_)))))
                                 (_path-id173586_
                                  (gx#core-module-path->namespace
                                   _path173544_))
                                 (_pkg-id173588_
                                  (if _pkg173582_
                                      (string-append
                                       _pkg173582_
                                       '"/"
                                       _path-id173586_)
                                      _path-id173586_))
                                 (_module-id173590_
                                  (string->symbol _pkg-id173588_))
                                 (_module-ns173595_
                                  (if (eq? _ns173581_ '#!void)
                                      '#f
                                      (let ((_$e173592_ _ns173581_))
                                        (if _$e173592_
                                            _$e173592_
                                            _pkg-id173588_)))))
                            (values _prelude173584_
                                    _module-id173590_
                                    _module-ns173595_
                                    _body173548_)))))))
                 (_E173561173627_
                  (lambda ()
                    (if (gx#stx-pair? _e173552173576_)
                        (let ((_e173569173602_ (gx#syntax-e _e173552173576_)))
                          (let ((_hd173570173605_ (##car _e173569173602_))
                                (_tl173571173607_ (##cdr _e173569173602_)))
                            (if (eq? (gx#stx-e _hd173570173605_) 'package:)
                                (if (gx#stx-pair? _tl173571173607_)
                                    (let ((_e173572173610_
                                           (gx#syntax-e _tl173571173607_)))
                                      (let ((_hd173573173613_
                                             (##car _e173572173610_))
                                            (_tl173574173615_
                                             (##cdr _e173572173610_)))
                                        (let* ((_pkg173618_ _hd173573173613_)
                                               (_rest173620_ _tl173574173615_))
                                          (if '#t
                                              (let ((_pkg173625_
                                                     (if (gx#identifier?
                                                          _pkg173618_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _pkg173618_))
                                                         (if (or (gx#stx-string?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _pkg173618_)
                         (gx#stx-false? _pkg173618_))
                     (gx#stx-e _pkg173618_)
                     (gx#raise-syntax-error
                      'import
                      '"Bad syntax; Illegal package name"
                      _pkg173618_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp173546_
                                                 _rest173620_
                                                 _pre173549_
                                                 _ns173550_
                                                 _pkg173625_))
                                              (_E173568173598_)))))
                                    (_E173568173598_))
                                (_E173568173598_))))
                        (_E173568173598_))))
                 (_E173554173653_
                  (lambda ()
                    (if (gx#stx-pair? _e173552173576_)
                        (let ((_e173562173631_ (gx#syntax-e _e173552173576_)))
                          (let ((_hd173563173634_ (##car _e173562173631_))
                                (_tl173564173636_ (##cdr _e173562173631_)))
                            (if (eq? (gx#stx-e _hd173563173634_) 'namespace:)
                                (if (gx#stx-pair? _tl173564173636_)
                                    (let ((_e173565173639_
                                           (gx#syntax-e _tl173564173636_)))
                                      (let ((_hd173566173642_
                                             (##car _e173565173639_))
                                            (_tl173567173644_
                                             (##cdr _e173565173639_)))
                                        (let* ((_ns173647_ _hd173566173642_)
                                               (_rest173649_ _tl173567173644_))
                                          (if '#t
                                              (let ((_ns173651_
                                                     (if (gx#identifier?
                                                          _ns173647_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _ns173647_))
                                                         (if (gx#stx-string?
                                                              _ns173647_)
                                                             (gx#stx-e
                                                              _ns173647_)
                                                             (if (gx#stx-false?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _ns173647_)
                         '#!void
                         (gx#raise-syntax-error
                          'import
                          '"Bad syntax; illegal namespace"
                          _ns173647_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp173546_
                                                 _rest173649_
                                                 _pre173549_
                                                 _ns173651_
                                                 _pkg173551_))
                                              (_E173561173627_)))))
                                    (_E173561173627_))
                                (_E173561173627_))))
                        (_E173561173627_))))
                 (_E173553173677_
                  (lambda ()
                    (if (gx#stx-pair? _e173552173576_)
                        (let ((_e173555173657_ (gx#syntax-e _e173552173576_)))
                          (let ((_hd173556173660_ (##car _e173555173657_))
                                (_tl173557173662_ (##cdr _e173555173657_)))
                            (if (eq? (gx#stx-e _hd173556173660_) 'prelude:)
                                (if (gx#stx-pair? _tl173557173662_)
                                    (let ((_e173558173665_
                                           (gx#syntax-e _tl173557173662_)))
                                      (let ((_hd173559173668_
                                             (##car _e173558173665_))
                                            (_tl173560173670_
                                             (##cdr _e173558173665_)))
                                        (let* ((_prelude173673_
                                                _hd173559173668_)
                                               (_rest173675_ _tl173560173670_))
                                          (if '#t
                                              (_lp173546_
                                               _rest173675_
                                               _prelude173673_
                                               _ns173550_
                                               _pkg173551_)
                                              (_E173554173653_)))))
                                    (_E173554173653_))
                                (_E173554173653_))))
                        (_E173554173653_)))))
            (_E173553173677_)))))
    (define gx#core-read-module/lang
      (lambda (_path173371_)
        (letrec ((_default-read-module-body173373_
                  (lambda (_inp173536_)
                    (let _lp173538_ ((_body173540_ '()))
                      (let ((_next173542_ (read-syntax _inp173536_)))
                        (if (eof-object? _next173542_)
                            (reverse _body173540_)
                            (_lp173538_ (cons _next173542_ _body173540_)))))))
                 (_read-body173374_
                  (lambda (_inp173455_
                           _pre173456_
                           _ns173457_
                           _pkg173458_
                           _args173459_)
                    (let ((_g178948_
                           (if _pkg173458_
                               (values _pre173456_ _ns173457_ _pkg173458_)
                               (gx#core-read-module-package
                                _path173371_
                                _pre173456_
                                _ns173457_))))
                      (begin
                        (let ((_g178949_
                               (if (##values? _g178948_)
                                   (##vector-length _g178948_)
                                   1)))
                          (if (not (##fx= _g178949_ 3))
                              (error "Context expects 3 values" _g178949_)))
                        (let ((_pre173461_ (##vector-ref _g178948_ 0))
                              (_ns173462_ (##vector-ref _g178948_ 1))
                              (_pkg173463_ (##vector-ref _g178948_ 2)))
                          (let* ((_prelude173465_
                                  (gx#import-module__0 _pre173461_))
                                 (_read-module-body173519_
                                  (let ((_$e173511_
                                         (find (lambda (_e173466173468_)
                                                 (let* ((_g173470173480_
                                                         _e173466173468_)
                                                        (_else173472173488_
                                                         (lambda () '#f))
                                                        (_K173474173492_
                                                         (lambda () '#t)))
                                                   (if (##structure-direct-instance-of?
                                                        _g173470173480_
                                                        'gx#module-export::t)
                                                       (let* ((_e173475173495_
                                                               (##unchecked-structure-ref
                                                                _g173470173480_
                                                                '1
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e173476173498_
                                                               (##unchecked-structure-ref
                                                                _g173470173480_
                                                                '2
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e173477173501_
                                                               (##unchecked-structure-ref
                                                                _g173470173480_
                                                                '3
                                                                gx#module-export::t
                                                                '#f)))
                                                         (if (##eq? _e173477173501_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)
                     (let ((_e173478173504_
                            (##unchecked-structure-ref
                             _g173470173480_
                             '4
                             gx#module-export::t
                             '#f)))
                       (if ((lambda (_g173506173508_)
                              (eq? _g173506173508_ 'read-module-body))
                            _e173478173504_)
                           (_K173474173492_)
                           (_else173472173488_)))
                     (_else173472173488_)))
               (_else173472173488_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (##unchecked-structure-ref
                                                _prelude173465_
                                                '9
                                                gx#module-context::t
                                                '#f))))
                                    (if _$e173511_
                                        ((lambda (_xport173514_)
                                           (let ((_proc173517_
                                                  (with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _xport173514_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _proc173517_)
                                                 _proc173517_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _path173371_
                                                  _pre173461_
                                                  _proc173517_))))
                                         _$e173511_)
                                        _default-read-module-body173373_)))
                                 (_path-id173521_
                                  (gx#core-module-path->namespace
                                   _path173371_))
                                 (_pkg-id173523_
                                  (if _pkg173463_
                                      (string-append
                                       _pkg173463_
                                       '"/"
                                       _path-id173521_)
                                      _path-id173521_))
                                 (_module-id173525_
                                  (string->symbol _pkg-id173523_))
                                 (_module-ns173530_
                                  (let ((_$e173527_ _ns173462_))
                                    (if _$e173527_ _$e173527_ _pkg-id173523_)))
                                 (_body173533_
                                  (call-with-parameters
                                   (lambda ()
                                     (_read-module-body173519_ _inp173455_))
                                   gx#current-module-reader-path
                                   _path173371_
                                   gx#current-module-reader-args
                                   _args173459_)))
                            (values _prelude173465_
                                    _module-id173525_
                                    _module-ns173530_
                                    _body173533_)))))))
                 (_string-e173375_
                  (lambda (_obj173452_ _what173453_)
                    (if (string? _obj173452_)
                        _obj173452_
                        (if (symbol? _obj173452_)
                            (symbol->string _obj173452_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _what173453_)
                             _path173371_
                             _obj173452_)))))
                 (_read-lang-args173376_
                  (lambda (_inp173407_ _args173408_)
                    (let* ((_args173409173417_ _args173408_)
                           (_else173411173425_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _path173371_)))
                           (_K173413173440_
                            (lambda (_args173428_ _prelude173429_)
                              (let* ((_pkg173431_
                                      (pgetq 'package: _args173428_))
                                     (_pkg173433_
                                      (if _pkg173431_
                                          (_string-e173375_
                                           _pkg173431_
                                           '"package")
                                          '#f))
                                     (_ns173435_
                                      (pgetq 'namespace: _args173428_))
                                     (_ns173437_
                                      (if _ns173435_
                                          (_string-e173375_
                                           _ns173435_
                                           '"namespace")
                                          '#f)))
                                (_read-body173374_
                                 _inp173407_
                                 _prelude173429_
                                 _ns173437_
                                 _pkg173433_
                                 _args173428_)))))
                      (if (##pair? _args173409173417_)
                          (let ((_hd173414173443_ (##car _args173409173417_))
                                (_tl173415173445_ (##cdr _args173409173417_)))
                            (let* ((_prelude173448_ _hd173414173443_)
                                   (_args173450_ _tl173415173445_))
                              (_K173413173440_ _args173450_ _prelude173448_)))
                          (_else173411173425_)))))
                 (_read-lang173377_
                  (lambda (_inp173382_)
                    (let* ((_head173384_ (read-line _inp173382_))
                           (_$e173386_ (string-index _head173384_ '#\space)))
                      (if _$e173386_
                          ((lambda (_ix173389_)
                             (let ((_lang173391_
                                    (substring _head173384_ '0 _ix173389_)))
                               (if (equal? _lang173391_ '"#lang")
                                   (let* ((_rest173393_
                                           (substring
                                            _head173384_
                                            (fx+ _ix173389_ '1)
                                            (string-length _head173384_)))
                                          (_args173404_
                                           (with-catch
                                            (lambda (_g173394173396_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _path173371_
                                               _g173394173396_))
                                            (lambda ()
                                              (call-with-input-string
                                               _rest173393_
                                               (lambda (_g173399173401_)
                                                 (read-all
                                                  _g173399173401_
                                                  read)))))))
                                     (_read-lang-args173376_
                                      _inp173382_
                                      _args173404_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _path173371_))))
                           _$e173386_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _path173371_)))))
                 (_read-e173378_
                  (lambda (_inp173380_)
                    (if (eq? (peek-char _inp173380_) '#\#)
                        (_read-lang173377_ _inp173380_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _path173371_)))))
          (gx#call-with-input-source-file _path173371_ _read-e173378_))))
    (define gx#core-read-module-package
      (lambda (_path173325_ _pre173326_ _ns173327_)
        (letrec ((_string-e173329_
                  (lambda (_e173369_)
                    (if (symbol? _e173369_)
                        (symbol->string _e173369_)
                        (if (string? _e173369_)
                            _e173369_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _e173369_))))))
          (let _lp173331_ ((_dir173333_ (path-directory _path173325_))
                           (_pkg-path173334_ '()))
            (let ((_gerbil.pkg173336_ (path-expand '"gerbil.pkg" _dir173333_)))
              (if (file-exists? _gerbil.pkg173336_)
                  (let ((_plist173338_
                         (gx#core-library-package-plist__% _dir173333_ '#t)))
                    (if (null? _plist173338_)
                        (let ((_pkg173340_
                               (if (not (null? _pkg-path173334_))
                                   (string-join _pkg-path173334_ '"/")
                                   '#f)))
                          (values _pre173326_ _ns173327_ _pkg173340_))
                        (if (list? _plist173338_)
                            (let* ((_root173342_
                                    (pgetq 'package: _plist173338_))
                                   (_pkg173346_
                                    (let ((_pkg-path173344_
                                           (if _root173342_
                                               (cons (_string-e173329_
                                                      _root173342_)
                                                     _pkg-path173334_)
                                               _pkg-path173334_)))
                                      (if (not (null? _pkg-path173344_))
                                          (string-join _pkg-path173344_ '"/")
                                          '#f)))
                                   (_ns173353_
                                    (let ((_ns173351_
                                           (let ((_$e173348_ _ns173327_))
                                             (if _$e173348_
                                                 _$e173348_
                                                 (pgetq 'namespace:
                                                        _plist173338_)))))
                                      (if _ns173351_
                                          (_string-e173329_ _ns173351_)
                                          '#f)))
                                   (_pre173358_
                                    (let ((_$e173355_ _pre173326_))
                                      (if _$e173355_
                                          _$e173355_
                                          (pgetq 'prelude: _plist173338_)))))
                              (values _pre173358_ _ns173353_ _pkg173346_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _plist173338_))))
                  (let ((_dir*173361_
                         (path-strip-trailing-directory-separator
                          _dir173333_)))
                    (if (or (string-empty? _dir*173361_)
                            (equal? _dir173333_ _dir*173361_))
                        (values _pre173326_ _ns173327_ '#f)
                        (let ((_xpath173366_
                               (path-strip-directory _dir*173361_))
                              (_xdir173367_ (path-directory _dir*173361_)))
                          (_lp173331_
                           _xdir173367_
                           (cons _xpath173366_ _pkg-path173334_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_path173323_)
        (path-strip-extension (path-strip-directory _path173323_))))
    (define gx#core-module-path->id
      (lambda (_path173321_)
        (string->symbol (gx#core-module-path->namespace _path173321_))))
    (define gx#core-resolve-module-path__%
      (lambda (_stx-path173300_ _rel173301_)
        (let* ((_path173303_ (gx#stx-e _stx-path173300_))
               (_path173305_
                (if (string-empty? (path-extension _path173303_))
                    (string-append _path173303_ '".ss")
                    _path173303_)))
          (gx#core-resolve-path__%
           _path173305_
           (let ((_$e173308_ (gx#stx-source _stx-path173300_)))
             (if _$e173308_ _$e173308_ _rel173301_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_stx-path173314_)
        (let ((_rel173316_ '#f))
          (gx#core-resolve-module-path__% _stx-path173314_ _rel173316_))))
    (define gx#core-resolve-module-path
      (lambda _g178951_
        (let ((_g178950_ (##length _g178951_)))
          (cond ((##fx= _g178950_ 1)
                 (apply (lambda (_stx-path173314_)
                          (gx#core-resolve-module-path__0 _stx-path173314_))
                        _g178951_))
                ((##fx= _g178950_ 2)
                 (apply (lambda (_stx-path173318_ _rel173319_)
                          (gx#core-resolve-module-path__%
                           _stx-path173318_
                           _rel173319_))
                        _g178951_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g178951_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_libpath173186_)
        (let* ((_spath173188_ (symbol->string (gx#stx-e _libpath173186_)))
               (_spath173190_
                (substring _spath173188_ '1 (string-length _spath173188_)))
               (_ext173192_ (path-extension _spath173190_))
               (_ssi173194_
                (if (string-empty? _ext173192_)
                    (string-append _spath173190_ '".ssi")
                    (string-append
                     (path-strip-extension _spath173190_)
                     '".ssi")))
               (_srcs173198_
                (if (string-empty? _ext173192_)
                    (map (lambda (_ext173196_)
                           (string-append _spath173190_ _ext173196_))
                         '(".ss" ".sld" ".scm"))
                    (cons _spath173190_ '()))))
          (let _lp173201_ ((_rest173203_
                            (gx#current-expander-module-library-path)))
            (let* ((_rest173204173213_ _rest173203_)
                   (_E173207173217_
                    (lambda ()
                      (error '"No clause matching" _rest173204173213_))))
              (let ((_K173209173287_
                     (lambda (_rest173228_ _dir173229_)
                       (letrec ((_resolve173231_
                                 (lambda (_ssi173243_ _srcs173244_)
                                   (let ((_compiled-path173246_
                                          (path-expand
                                           _ssi173243_
                                           _dir173229_)))
                                     (if (file-exists? _compiled-path173246_)
                                         (path-normalize _compiled-path173246_)
                                         (let _lpr173248_ ((_rest-src173250_
                                                            _srcs173244_))
                                           (let* ((_rest-src173251173259_
                                                   _rest-src173250_)
                                                  (_else173253173267_
                                                   (lambda ()
                                                     (_lp173201_
                                                      _rest173228_)))
                                                  (_K173255173275_
                                                   (lambda (_rest-src173270_
                                                            _src173271_)
                                                     (let ((_src-path173273_
                                                            (path-expand
                                                             _src173271_
                                                             _dir173229_)))
                                                       (if (file-exists?
                                                            _src-path173273_)
                                                           (path-normalize
                                                            _src-path173273_)
                                                           (_lpr173248_
                                                            _rest-src173270_))))))
                                             (if (##pair? _rest-src173251173259_)
                                                 (let ((_hd173256173278_
                                                        (##car _rest-src173251173259_))
                                                       (_tl173257173280_
                                                        (##cdr _rest-src173251173259_)))
                                                   (let* ((_src173283_
                                                           _hd173256173278_)
                                                          (_rest-src173285_
                                                           _tl173257173280_))
                                                     (_K173255173275_
                                                      _rest-src173285_
                                                      _src173283_)))
                                                 (_else173253173267_)))))))))
                         (let ((_$e173233_
                                (gx#core-library-package-path-prefix
                                 _dir173229_)))
                           (if _$e173233_
                               ((lambda (_prefix173236_)
                                  (if (string-prefix?
                                       _prefix173236_
                                       _spath173190_)
                                      (let ((_ssi173240_
                                             (substring
                                              _ssi173194_
                                              (string-length _prefix173236_)
                                              (string-length _ssi173194_)))
                                            (_srcs173241_
                                             (map (lambda (_src173238_)
                                                    (substring
                                                     _src173238_
                                                     (string-length
                                                      _prefix173236_)
                                                     (string-length
                                                      _src173238_)))
                                                  _srcs173198_)))
                                        (_resolve173231_
                                         _ssi173240_
                                         _srcs173241_))
                                      (_lp173201_ _rest173228_)))
                                _$e173233_)
                               (_resolve173231_ _ssi173194_ _srcs173198_))))))
                    (_K173208173222_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"Cannot find library module"
                        _libpath173186_))))
                (let ((_try-match173206173225_
                       (lambda ()
                         (if (##null? _rest173204173213_)
                             (_K173208173222_)
                             (_E173207173217_)))))
                  (if (##pair? _rest173204173213_)
                      (let ((_tl173211173292_ (##cdr _rest173204173213_))
                            (_hd173210173290_ (##car _rest173204173213_)))
                        (let ((_dir173295_ _hd173210173290_)
                              (_rest173297_ _tl173211173292_))
                          (_K173209173287_ _rest173297_ _dir173295_)))
                      (_try-match173206173225_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_modpath173159_)
        (letrec ((_resolve173161_
                  (lambda (_path173178_ _base173179_)
                    (let ((_$e173181_ (string-rindex _base173179_ '#\/)))
                      (if _$e173181_
                          ((lambda (_idx173184_)
                             (gx#core-resolve-library-module-path
                              (string->symbol
                               (string-append
                                '":"
                                (substring _base173179_ '0 _idx173184_)
                                '"/"
                                _path173178_))))
                           _$e173181_)
                          (gx#core-resolve-library-module-path
                           (string->symbol
                            (string-append '":" _path173178_))))))))
          (let ((_spath173163_ (symbol->string (gx#stx-e _modpath173159_)))
                (_mod173164_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _mod173164_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"Cannot resolve relative module path; not in module context"
                 _modpath173159_))
            (let ((_mpath173166_
                   (symbol->string
                    (##structure-ref
                     _mod173164_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _lp173168_ ((_spath173170_ _spath173163_)
                               (_mpath173171_ _mpath173166_))
                (if (string-prefix? '"../" _spath173170_)
                    (let ((_$e173173_ (string-rindex _mpath173171_ '#\/)))
                      (if _$e173173_
                          ((lambda (_idx173176_)
                             (_lp173168_
                              (substring
                               _spath173170_
                               '3
                               (string-length _spath173170_))
                              (substring _mpath173171_ '0 _idx173176_)))
                           _$e173173_)
                          (gx#raise-syntax-error
                           '#f
                           '"Cannot resolve relative module path; illegal traversal"
                           _modpath173159_)))
                    (if (string-prefix? '"./" _spath173170_)
                        (_lp173168_
                         (substring
                          _spath173170_
                          '2
                          (string-length _spath173170_))
                         _mpath173171_)
                        (_resolve173161_ _spath173170_ _mpath173171_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_dir173152_)
        (let ((_$e173154_
               (pgetq 'package:
                      (gx#core-library-package-plist__0 _dir173152_))))
          (if _$e173154_
              ((lambda (_pkg173157_)
                 (string-append (symbol->string _pkg173157_) '"/"))
               _$e173154_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_dir173124_ _exists?173125_)
        (let* ((_cache173127_ (gx#core-library-package-cache))
               (_$e173129_ (hash-get _cache173127_ _dir173124_)))
          (if _$e173129_
              (values _$e173129_)
              (let* ((_gerbil.pkg173132_
                      (path-expand '"gerbil.pkg" _dir173124_))
                     (_plist173139_
                      (if (or _exists?173125_
                              (file-exists? _gerbil.pkg173132_))
                          (let ((_e173137_
                                 (gx#call-with-input-source-file
                                  _gerbil.pkg173132_
                                  read)))
                            (if (eof-object? _e173137_)
                                '()
                                (if (list? _e173137_)
                                    _e173137_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _gerbil.pkg173132_
                                     _e173137_))))
                          '())))
                (hash-put! _cache173127_ _dir173124_ _plist173139_)
                _plist173139_)))))
    (define gx#core-library-package-plist__0
      (lambda (_dir173145_)
        (let ((_exists?173147_ '#f))
          (gx#core-library-package-plist__% _dir173145_ _exists?173147_))))
    (define gx#core-library-package-plist
      (lambda _g178953_
        (let ((_g178952_ (##length _g178953_)))
          (cond ((##fx= _g178952_ 1)
                 (apply (lambda (_dir173145_)
                          (gx#core-library-package-plist__0 _dir173145_))
                        _g178953_))
                ((##fx= _g178952_ 2)
                 (apply (lambda (_dir173149_ _exists?173150_)
                          (gx#core-library-package-plist__%
                           _dir173149_
                           _exists?173150_))
                        _g178953_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g178953_))))))
    (define gx#core-library-package-cache
      (lambda ()
        (let ((_$e173118_ (gx#current-expander-module-library-package-cache)))
          (if _$e173118_
              (values _$e173118_)
              (let ((_cache173121_ (make-hash-table)))
                (gx#current-expander-module-library-package-cache
                 _cache173121_)
                _cache173121_)))))
    (define gx#core-library-module-path?
      (lambda (_stx173115_) (gx#core-special-module-path? _stx173115_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_stx173113_) (gx#core-special-module-path? _stx173113_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_stx173108_ _char173109_)
        (if (gx#identifier? _stx173108_)
            (if (interned-symbol? (gx#stx-e _stx173108_))
                (let ((_str173111_ (symbol->string (gx#stx-e _stx173108_))))
                  (if (fx> (string-length _str173111_) '1)
                      (eq? (string-ref _str173111_ '0) _char173109_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_stx173102_)
        (gx#core-bound-identifier?__%
         _stx173102_
         (lambda (_g173103173105_)
           (gx#expander-binding?__% _g173103173105_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_stx173096_)
        (gx#core-bound-identifier?__%
         _stx173096_
         (lambda (_g173097173099_)
           (gx#expander-binding?__% _g173097173099_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_stx173083_)
        (letrec ((_module-prelude?173085_
                  (lambda (_e173091_)
                    (let ((_$e173093_
                           (##structure-instance-of?
                            _e173091_
                            'gx#module-context::t)))
                      (if _$e173093_
                          _$e173093_
                          (##structure-instance-of?
                           _e173091_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _stx173083_
           (lambda (_g173086173088_)
             (gx#expander-binding?__%
              _g173086173088_
              _module-prelude?173085_))))))
    (define gx#core-bind-import!__%
      (lambda (_in173013_ _ctx173014_ _force-weak?173015_)
        (let* ((_in173016173025_ _in173013_)
               (_E173018173029_
                (lambda () (error '"No clause matching" _in173016173025_)))
               (_K173019173042_
                (lambda (_weak?173032_ _phi173033_ _key173034_ _source173035_)
                  (gx#core-bind!__%
                   _key173034_
                   (let ((_e173037_
                          (gx#core-resolve-module-export _source173035_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref
                       _e173037_
                       '1
                       gx#binding::t
                       '#f)
                      _key173034_
                      _phi173033_
                      _e173037_
                      (##unchecked-structure-ref
                       _source173035_
                       '1
                       gx#module-export::t
                       '#f)
                      (let ((_$e173039_ _force-weak?173015_))
                        (if _$e173039_ _$e173039_ _weak?173032_))))
                   gx#core-context-rebind?
                   _phi173033_
                   _ctx173014_))))
          (if (##structure-direct-instance-of?
               _in173016173025_
               'gx#module-import::t)
              (let* ((_e173020173045_
                      (##unchecked-structure-ref
                       _in173016173025_
                       '1
                       gx#module-import::t
                       '#f))
                     (_source173048_ _e173020173045_)
                     (_e173021173050_
                      (##unchecked-structure-ref
                       _in173016173025_
                       '2
                       gx#module-import::t
                       '#f))
                     (_key173053_ _e173021173050_)
                     (_e173022173055_
                      (##unchecked-structure-ref
                       _in173016173025_
                       '3
                       gx#module-import::t
                       '#f))
                     (_phi173058_ _e173022173055_)
                     (_e173023173060_
                      (##unchecked-structure-ref
                       _in173016173025_
                       '4
                       gx#module-import::t
                       '#f))
                     (_weak?173063_ _e173023173060_))
                (_K173019173042_
                 _weak?173063_
                 _phi173058_
                 _key173053_
                 _source173048_))
              (_E173018173029_)))))
    (define gx#core-bind-import!__0
      (lambda (_in173068_)
        (let* ((_ctx173070_ (gx#current-expander-context))
               (_force-weak?173072_ '#f))
          (gx#core-bind-import!__%
           _in173068_
           _ctx173070_
           _force-weak?173072_))))
    (define gx#core-bind-import!__1
      (lambda (_in173074_ _ctx173075_)
        (let ((_force-weak?173077_ '#f))
          (gx#core-bind-import!__%
           _in173074_
           _ctx173075_
           _force-weak?173077_))))
    (define gx#core-bind-import!
      (lambda _g178955_
        (let ((_g178954_ (##length _g178955_)))
          (cond ((##fx= _g178954_ 1)
                 (apply (lambda (_in173068_)
                          (gx#core-bind-import!__0 _in173068_))
                        _g178955_))
                ((##fx= _g178954_ 2)
                 (apply (lambda (_in173074_ _ctx173075_)
                          (gx#core-bind-import!__1 _in173074_ _ctx173075_))
                        _g178955_))
                ((##fx= _g178954_ 3)
                 (apply (lambda (_in173079_ _ctx173080_ _force-weak?173081_)
                          (gx#core-bind-import!__%
                           _in173079_
                           _ctx173080_
                           _force-weak?173081_))
                        _g178955_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g178955_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_in172999_ _ctx173000_)
        (gx#core-bind-import!__% _in172999_ _ctx173000_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_in173005_)
        (let ((_ctx173007_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _in173005_ _ctx173007_))))
    (define gx#core-bind-weak-import!
      (lambda _g178957_
        (let ((_g178956_ (##length _g178957_)))
          (cond ((##fx= _g178956_ 1)
                 (apply (lambda (_in173005_)
                          (gx#core-bind-weak-import!__0 _in173005_))
                        _g178957_))
                ((##fx= _g178956_ 2)
                 (apply (lambda (_in173009_ _ctx173010_)
                          (gx#core-bind-weak-import!__%
                           _in173009_
                           _ctx173010_))
                        _g178957_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g178957_))))))
    (define gx#core-resolve-module-export
      (lambda (_out172890_)
        (letrec ((_subst172892_
                  (lambda (_key172938_)
                    (let* ((_key172939172947_ _key172938_)
                           (_else172941172955_ (lambda () _key172938_))
                           (_K172943172986_
                            (lambda (_mark172958_ _id172959_)
                              (let* ((_mark172960172966_ _mark172958_)
                                     (_E172962172970_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark172960172966_)))
                                     (_K172963172978_
                                      (lambda (_subst172973_)
                                        (let ((_$e172975_
                                               (if _subst172973_
                                                   (hash-get
                                                    _subst172973_
                                                    _id172959_)
                                                   '#f)))
                                          (if _$e172975_
                                              _$e172975_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _key172938_))))))
                                (if (##structure-instance-of?
                                     _mark172960172966_
                                     'gx#expander-mark::t)
                                    (let* ((_e172964172981_
                                            (##unchecked-structure-ref
                                             _mark172960172966_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst172984_ _e172964172981_))
                                      (_K172963172978_ _subst172984_))
                                    (_E172962172970_))))))
                      (if (##pair? _key172939172947_)
                          (let ((_hd172944172989_ (##car _key172939172947_))
                                (_tl172945172991_ (##cdr _key172939172947_)))
                            (let* ((_id172994_ _hd172944172989_)
                                   (_mark172996_ _tl172945172991_))
                              (_K172943172986_ _mark172996_ _id172994_)))
                          (_else172941172955_))))))
          (let* ((_out172893172903_ _out172890_)
                 (_E172895172907_
                  (lambda () (error '"No clause matching" _out172893172903_)))
                 (_K172896172914_
                  (lambda (_phi172910_ _key172911_ _ctx172912_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _ctx172912_ _phi172910_)
                     (_subst172892_ _key172911_)))))
            (if (##structure-direct-instance-of?
                 _out172893172903_
                 'gx#module-export::t)
                (let* ((_e172897172917_
                        (##unchecked-structure-ref
                         _out172893172903_
                         '1
                         gx#module-export::t
                         '#f))
                       (_ctx172920_ _e172897172917_)
                       (_e172898172922_
                        (##unchecked-structure-ref
                         _out172893172903_
                         '2
                         gx#module-export::t
                         '#f))
                       (_key172925_ _e172898172922_)
                       (_e172899172927_
                        (##unchecked-structure-ref
                         _out172893172903_
                         '3
                         gx#module-export::t
                         '#f))
                       (_phi172930_ _e172899172927_)
                       (_e172900172932_
                        (##unchecked-structure-ref
                         _out172893172903_
                         '4
                         gx#module-export::t
                         '#f))
                       (_e172901172935_
                        (##unchecked-structure-ref
                         _out172893172903_
                         '5
                         gx#module-export::t
                         '#f)))
                  (_K172896172914_ _phi172930_ _key172925_ _ctx172920_))
                (_E172895172907_))))))
    (define gx#core-module-export->import__%
      (lambda (_out172815_ _rename172816_ _dphi172817_)
        (let* ((_out172818172828_ _out172815_)
               (_E172820172832_
                (lambda () (error '"No clause matching" _out172818172828_)))
               (_K172821172844_
                (lambda (_weak?172835_
                         _name172836_
                         _phi172837_
                         _key172838_
                         _ctx172839_)
                  (##structure
                   gx#module-import::t
                   _out172815_
                   (let ((_$e172841_ _rename172816_))
                     (if _$e172841_ _$e172841_ _name172836_))
                   (fx+ _phi172837_ _dphi172817_)
                   _weak?172835_))))
          (if (##structure-direct-instance-of?
               _out172818172828_
               'gx#module-export::t)
              (let* ((_e172822172847_
                      (##unchecked-structure-ref
                       _out172818172828_
                       '1
                       gx#module-export::t
                       '#f))
                     (_ctx172850_ _e172822172847_)
                     (_e172823172852_
                      (##unchecked-structure-ref
                       _out172818172828_
                       '2
                       gx#module-export::t
                       '#f))
                     (_key172855_ _e172823172852_)
                     (_e172824172857_
                      (##unchecked-structure-ref
                       _out172818172828_
                       '3
                       gx#module-export::t
                       '#f))
                     (_phi172860_ _e172824172857_)
                     (_e172825172862_
                      (##unchecked-structure-ref
                       _out172818172828_
                       '4
                       gx#module-export::t
                       '#f))
                     (_name172865_ _e172825172862_)
                     (_e172826172867_
                      (##unchecked-structure-ref
                       _out172818172828_
                       '5
                       gx#module-export::t
                       '#f))
                     (_weak?172870_ _e172826172867_))
                (_K172821172844_
                 _weak?172870_
                 _name172865_
                 _phi172860_
                 _key172855_
                 _ctx172850_))
              (_E172820172832_)))))
    (define gx#core-module-export->import__0
      (lambda (_out172875_)
        (let* ((_rename172877_ '#f) (_dphi172879_ '0))
          (gx#core-module-export->import__%
           _out172875_
           _rename172877_
           _dphi172879_))))
    (define gx#core-module-export->import__1
      (lambda (_out172881_ _rename172882_)
        (let ((_dphi172884_ '0))
          (gx#core-module-export->import__%
           _out172881_
           _rename172882_
           _dphi172884_))))
    (define gx#core-module-export->import
      (lambda _g178959_
        (let ((_g178958_ (##length _g178959_)))
          (cond ((##fx= _g178958_ 1)
                 (apply (lambda (_out172875_)
                          (gx#core-module-export->import__0 _out172875_))
                        _g178959_))
                ((##fx= _g178958_ 2)
                 (apply (lambda (_out172881_ _rename172882_)
                          (gx#core-module-export->import__1
                           _out172881_
                           _rename172882_))
                        _g178959_))
                ((##fx= _g178958_ 3)
                 (apply (lambda (_out172886_ _rename172887_ _dphi172888_)
                          (gx#core-module-export->import__%
                           _out172886_
                           _rename172887_
                           _dphi172888_))
                        _g178959_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g178959_))))))
    (define gx#core-expand-module%
      (lambda (_stx172743_)
        (letrec ((_make-context172745_
                  (lambda (_id172796_)
                    (let* ((_super172798_ (gx#current-expander-context))
                           (_bind-id172800_ (gx#stx-e _id172796_))
                           (_mod-id172802_
                            (if (##structure-instance-of?
                                 _super172798_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##structure-ref
                                  _super172798_
                                  '1
                                  gx#expander-context::t
                                  '#f)
                                 '"$"
                                 _bind-id172800_)
                                _bind-id172800_))
                           (_ns172804_ (symbol->string _mod-id172802_))
                           (_path172811_
                            (if (##structure-instance-of?
                                 _super172798_
                                 'gx#module-context::t)
                                (let ((_path172806_
                                       (##unchecked-structure-ref
                                        _super172798_
                                        '7
                                        gx#module-context::t
                                        '#f)))
                                  (if (or (pair? _path172806_)
                                          (null? _path172806_))
                                      (cons _bind-id172800_ _path172806_)
                                      (if (not _path172806_)
                                          _bind-id172800_
                                          (cons _bind-id172800_
                                                (cons _path172806_ '())))))
                                _bind-id172800_)))
                      (let ((__obj178935
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
                         __obj178935
                         _mod-id172802_
                         _super172798_
                         _ns172804_
                         _path172811_)
                        __obj178935)))))
          (let* ((_e172746172756_ _stx172743_)
                 (_E172748172760_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e172746172756_)))
                 (_E172747172792_
                  (lambda ()
                    (if (gx#stx-pair? _e172746172756_)
                        (let ((_e172749172764_ (gx#syntax-e _e172746172756_)))
                          (let ((_hd172750172767_ (##car _e172749172764_))
                                (_tl172751172769_ (##cdr _e172749172764_)))
                            (if (gx#stx-pair? _tl172751172769_)
                                (let ((_e172752172772_
                                       (gx#syntax-e _tl172751172769_)))
                                  (let ((_hd172753172775_
                                         (##car _e172752172772_))
                                        (_tl172754172777_
                                         (##cdr _e172752172772_)))
                                    (let* ((_id172780_ _hd172753172775_)
                                           (_body172782_ _tl172754172777_))
                                      (if (and (gx#identifier? _id172780_)
                                               (gx#stx-list? _body172782_))
                                          (let* ((_ctx172784_
                                                  (_make-context172745_
                                                   _id172780_))
                                                 (_body172786_
                                                  (gx#core-expand-module-begin
                                                   _body172782_
                                                   _ctx172784_))
                                                 (_body172788_
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body172786_)
                                                   (gx#stx-source
                                                    _stx172743_))))
                                            (##unchecked-structure-set!
                                             _ctx172784_
                                             (make-promise
                                              (lambda ()
                                                (gx#eval-syntax*
                                                 _body172788_)))
                                             '10
                                             gx#module-context::t
                                             '#f)
                                            (##unchecked-structure-set!
                                             _ctx172784_
                                             _body172788_
                                             '11
                                             gx#module-context::t
                                             '#f)
                                            (gx#core-bind-syntax!__0
                                             _id172780_
                                             _ctx172784_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-list
                                              '%#module
                                              (gx#core-quote-syntax__0
                                               _id172780_)
                                              _body172788_)
                                             (gx#stx-source _stx172743_)))
                                          (_E172748172760_)))))
                                (_E172748172760_))))
                        (_E172748172760_)))))
            (_E172747172792_)))))
    (define gx#core-expand-module-begin
      (lambda (_body172709_ _ctx172710_)
        (call-with-parameters
         (lambda ()
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_stx172713_
                   (gx#core-expand-head (cons '%%begin-module _body172709_)))
                  (_e172714172721_ _stx172713_)
                  (_E172716172725_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _stx172713_)))
                  (_E172715172739_
                   (lambda ()
                     (if (gx#stx-pair? _e172714172721_)
                         (let ((_e172717172729_ (gx#syntax-e _e172714172721_)))
                           (let ((_hd172718172732_ (##car _e172717172729_))
                                 (_tl172719172734_ (##cdr _e172717172729_)))
                             (if (and (gx#identifier? _hd172718172732_)
                                      (gx#core-identifier=?
                                       _hd172718172732_
                                       '%#begin-module))
                                 (let ((_body172737_ _tl172719172734_))
                                   (if '#t
                                       (if (gx#sealed-syntax? _stx172713_)
                                           _body172737_
                                           (gx#core-expand-module-body
                                            _body172737_))
                                       (_E172716172725_)))
                                 (_E172716172725_))))
                         (_E172716172725_)))))
             (_E172715172739_)))
         gx#current-expander-context
         _ctx172710_
         gx#current-expander-phi
         '0)))
    (define gx#core-expand-module-body
      (lambda (_body172505_)
        (letrec ((_expand-special172507_
                  (lambda (_hd172636_ _K172637_ _rest172638_ _r172639_)
                    (let* ((_e172640172657_ _hd172636_)
                           (_E172652172661_
                            (lambda ()
                              (_K172637_
                               _rest172638_
                               (cons (gx#core-expand-top _hd172636_)
                                     _r172639_))))
                           (_E172642172673_
                            (lambda ()
                              (if (gx#stx-pair? _e172640172657_)
                                  (let ((_e172653172665_
                                         (gx#syntax-e _e172640172657_)))
                                    (let ((_hd172654172668_
                                           (##car _e172653172665_))
                                          (_tl172655172670_
                                           (##cdr _e172653172665_)))
                                      (if (and (gx#identifier?
                                                _hd172654172668_)
                                               (gx#core-identifier=?
                                                _hd172654172668_
                                                '%#export))
                                          (if '#t
                                              (_K172637_
                                               _rest172638_
                                               (cons _hd172636_ _r172639_))
                                              (_E172652172661_))
                                          (_E172652172661_))))
                                  (_E172652172661_))))
                           (_E172641172705_
                            (lambda ()
                              (if (gx#stx-pair? _e172640172657_)
                                  (let ((_e172643172677_
                                         (gx#syntax-e _e172640172657_)))
                                    (let ((_hd172644172680_
                                           (##car _e172643172677_))
                                          (_tl172645172682_
                                           (##cdr _e172643172677_)))
                                      (if (and (gx#identifier?
                                                _hd172644172680_)
                                               (gx#core-identifier=?
                                                _hd172644172680_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl172645172682_)
                                              (let ((_e172646172685_
                                                     (gx#syntax-e
                                                      _tl172645172682_)))
                                                (let ((_hd172647172688_
                                                       (##car _e172646172685_))
                                                      (_tl172648172690_
                                                       (##cdr _e172646172685_)))
                                                  (let ((_hd-bind172693_
                                                         _hd172647172688_))
                                                    (if (gx#stx-pair?
                                                         _tl172648172690_)
                                                        (let ((_e172649172695_
                                                               (gx#syntax-e
                                                                _tl172648172690_)))
                                                          (let ((_hd172650172698_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e172649172695_))
                        (_tl172651172700_ (##cdr _e172649172695_)))
                    (let ((_expr172703_ _hd172650172698_))
                      (if (gx#stx-null? _tl172651172700_)
                          (if (gx#core-bind-values? _hd-bind172693_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind172693_)
                                (_K172637_
                                 _rest172638_
                                 (cons _hd172636_ _r172639_)))
                              (_E172642172673_))
                          (_E172642172673_)))))
                (_E172642172673_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E172642172673_))
                                          (_E172642172673_))))
                                  (_E172642172673_)))))
                      (_E172641172705_))))
                 (_expand-body172508_
                  (lambda (_rbody172510_)
                    (let _lp172512_ ((_rest172514_ _rbody172510_)
                                     (_body172515_ '()))
                      (let* ((_rest172516172524_ _rest172514_)
                             (_else172518172532_ (lambda () _body172515_))
                             (_K172520172624_
                              (lambda (_rest172535_ _hd172536_)
                                (let* ((_e172537172558_ _hd172536_)
                                       (_E172553172562_
                                        (lambda ()
                                          (_lp172512_
                                           _rest172535_
                                           (cons (gx#core-expand-expression
                                                  _hd172536_)
                                                 _body172515_))))
                                       (_E172549172576_
                                        (lambda ()
                                          (if (gx#stx-pair? _e172537172558_)
                                              (let ((_e172554172566_
                                                     (gx#syntax-e
                                                      _e172537172558_)))
                                                (let ((_hd172555172569_
                                                       (##car _e172554172566_))
                                                      (_tl172556172571_
                                                       (##cdr _e172554172566_)))
                                                  (let ((_form172574_
                                                         _hd172555172569_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _form172574_
                                                         gx#special-form-binding?)
                                                        (_lp172512_
                                                         _rest172535_
                                                         (cons _hd172536_
                                                               _body172515_))
                                                        (_E172553172562_)))))
                                              (_E172553172562_))))
                                       (_E172539172588_
                                        (lambda ()
                                          (if (gx#stx-pair? _e172537172558_)
                                              (let ((_e172550172580_
                                                     (gx#syntax-e
                                                      _e172537172558_)))
                                                (let ((_hd172551172583_
                                                       (##car _e172550172580_))
                                                      (_tl172552172585_
                                                       (##cdr _e172550172580_)))
                                                  (if (and (gx#identifier?
                                                            _hd172551172583_)
                                                           (gx#core-identifier=?
                                                            _hd172551172583_
                                                            '%#export))
                                                      (if '#t
                                                          (_lp172512_
                                                           _rest172535_
                                                           (cons (gx#core-expand-export%__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd172536_)
                         _body172515_))
                  (_E172549172576_))
              (_E172549172576_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E172549172576_))))
                                       (_E172538172620_
                                        (lambda ()
                                          (if (gx#stx-pair? _e172537172558_)
                                              (let ((_e172540172592_
                                                     (gx#syntax-e
                                                      _e172537172558_)))
                                                (let ((_hd172541172595_
                                                       (##car _e172540172592_))
                                                      (_tl172542172597_
                                                       (##cdr _e172540172592_)))
                                                  (if (and (gx#identifier?
                                                            _hd172541172595_)
                                                           (gx#core-identifier=?
                                                            _hd172541172595_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl172542172597_)
                                                          (let ((_e172543172600_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl172542172597_)))
                    (let ((_hd172544172603_ (##car _e172543172600_))
                          (_tl172545172605_ (##cdr _e172543172600_)))
                      (let ((_hd-bind172608_ _hd172544172603_))
                        (if (gx#stx-pair? _tl172545172605_)
                            (let ((_e172546172610_
                                   (gx#syntax-e _tl172545172605_)))
                              (let ((_hd172547172613_ (##car _e172546172610_))
                                    (_tl172548172615_ (##cdr _e172546172610_)))
                                (let ((_expr172618_ _hd172547172613_))
                                  (if (gx#stx-null? _tl172548172615_)
                                      (if '#t
                                          (_lp172512_
                                           _rest172535_
                                           (cons (gx#core-quote-syntax__1
                                                  (gx#core-list
                                                   '%#define-values
                                                   (gx#core-quote-bind-values
                                                    _hd-bind172608_)
                                                   (gx#core-expand-expression
                                                    _expr172618_))
                                                  (gx#stx-source _hd172536_))
                                                 _body172515_))
                                          (_E172539172588_))
                                      (_E172539172588_)))))
                            (_E172539172588_)))))
                  (_E172539172588_))
              (_E172539172588_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E172539172588_)))))
                                  (_E172538172620_)))))
                        (if (##pair? _rest172516172524_)
                            (let ((_hd172521172627_ (##car _rest172516172524_))
                                  (_tl172522172629_
                                   (##cdr _rest172516172524_)))
                              (let* ((_hd172632_ _hd172521172627_)
                                     (_rest172634_ _tl172522172629_))
                                (_K172520172624_ _rest172634_ _hd172632_)))
                            (_else172518172532_)))))))
          (_expand-body172508_
           (gx#core-expand-block__%
            (cons '%#begin-module _body172505_)
            _expand-special172507_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_stx172348_
               _expanded?172349_
               _method172350_
               _current-phi172351_
               _expand1172352_)
        (letrec ((_K172354_
                  (lambda (_rest172472_ _r172473_)
                    (let* ((_e172474172481_ _rest172472_)
                           (_E172476172485_ (lambda () _r172473_))
                           (_E172475172501_
                            (lambda ()
                              (if (gx#stx-pair? _e172474172481_)
                                  (let ((_e172477172489_
                                         (gx#syntax-e _e172474172481_)))
                                    (let ((_hd172478172492_
                                           (##car _e172477172489_))
                                          (_tl172479172494_
                                           (##cdr _e172477172489_)))
                                      (let* ((_hd172497_ _hd172478172492_)
                                             (_rest172499_ _tl172479172494_))
                                        (if '#t
                                            (_step172355_
                                             _hd172497_
                                             _rest172499_
                                             _r172473_)
                                            (_E172476172485_)))))
                                  (_E172476172485_)))))
                      (_E172475172501_))))
                 (_step172355_
                  (lambda (_hd172386_ _rest172387_ _r172388_)
                    (let* ((_e172389172407_ _hd172386_)
                           (_E172402172411_
                            (lambda ()
                              (if (_expanded?172349_ (gx#stx-e _hd172386_))
                                  (_K172354_
                                   _rest172387_
                                   (cons (gx#stx-e _hd172386_) _r172388_))
                                  (_expand1172352_
                                   _hd172386_
                                   _K172354_
                                   _rest172387_
                                   _r172388_))))
                           (_E172398172427_
                            (lambda ()
                              (if (gx#stx-pair? _e172389172407_)
                                  (let ((_e172403172415_
                                         (gx#syntax-e _e172389172407_)))
                                    (let ((_hd172404172418_
                                           (##car _e172403172415_))
                                          (_tl172405172420_
                                           (##cdr _e172403172415_)))
                                      (let* ((_macro172423_ _hd172404172418_)
                                             (_body172425_ _tl172405172420_))
                                        (if (gx#core-bound-identifier?__%
                                             _macro172423_
                                             gx#syntax-binding?)
                                            (_K172354_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _macro172423_)
                                                    _hd172386_
                                                    _method172350_)
                                                   _rest172387_)
                                             _r172388_)
                                            (_E172402172411_)))))
                                  (_E172402172411_))))
                           (_E172391172441_
                            (lambda ()
                              (if (gx#stx-pair? _e172389172407_)
                                  (let ((_e172399172431_
                                         (gx#syntax-e _e172389172407_)))
                                    (let ((_hd172400172434_
                                           (##car _e172399172431_))
                                          (_tl172401172436_
                                           (##cdr _e172399172431_)))
                                      (if (eq? (gx#stx-e _hd172400172434_)
                                               'begin:)
                                          (let ((_body172439_
                                                 _tl172401172436_))
                                            (if '#t
                                                (_K172354_
                                                 (gx#stx-foldr
                                                  cons
                                                  _rest172387_
                                                  _body172439_)
                                                 _r172388_)
                                                (_E172398172427_)))
                                          (_E172398172427_))))
                                  (_E172398172427_))))
                           (_E172390172468_
                            (lambda ()
                              (if (gx#stx-pair? _e172389172407_)
                                  (let ((_e172392172445_
                                         (gx#syntax-e _e172389172407_)))
                                    (let ((_hd172393172448_
                                           (##car _e172392172445_))
                                          (_tl172394172450_
                                           (##cdr _e172392172445_)))
                                      (if (eq? (gx#stx-e _hd172393172448_)
                                               'phi:)
                                          (if (gx#stx-pair? _tl172394172450_)
                                              (let ((_e172395172453_
                                                     (gx#syntax-e
                                                      _tl172394172450_)))
                                                (let ((_hd172396172456_
                                                       (##car _e172395172453_))
                                                      (_tl172397172458_
                                                       (##cdr _e172395172453_)))
                                                  (let* ((_dphi172461_
                                                          _hd172396172456_)
                                                         (_body172463_
                                                          _tl172397172458_))
                                                    (if (gx#stx-fixnum?
                                                         _dphi172461_)
                                                        (let ((_rbody172466_
                                                               (call-with-parameters
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_K172354_ _body172463_ '()))
                        _current-phi172351_
                        (fx+ (gx#stx-e _dphi172461_) (_current-phi172351_)))))
                  (_K172354_
                   _rest172387_
                   (foldr1 cons _r172388_ _rbody172466_)))
                (_E172391172441_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E172391172441_))
                                          (_E172391172441_))))
                                  (_E172391172441_)))))
                      (_E172390172468_)))))
          (let* ((_e172356172363_ _stx172348_)
                 (_E172358172367_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e172356172363_)))
                 (_E172357172382_
                  (lambda ()
                    (if (gx#stx-pair? _e172356172363_)
                        (let ((_e172359172371_ (gx#syntax-e _e172356172363_)))
                          (let ((_hd172360172374_ (##car _e172359172371_))
                                (_tl172361172376_ (##cdr _e172359172371_)))
                            (let ((_body172379_ _tl172361172376_))
                              (if '#t
                                  (if (_current-phi172351_)
                                      (_K172354_ _body172379_ '())
                                      (call-with-parameters
                                       (lambda () (_K172354_ _body172379_ '()))
                                       _current-phi172351_
                                       (gx#current-expander-phi)))
                                  (_E172358172367_)))))
                        (_E172358172367_)))))
            (_E172357172382_)))))
    (define gx#core-expand-import%__%
      (lambda (_stx172015_ _internal-expand?172016_)
        (letrec ((_expand1172018_
                  (lambda (_hd172328_ _K172329_ _rest172330_ _r172331_)
                    (if (gx#core-bound-module? _hd172328_)
                        (_import1172019_
                         (gx#syntax-local-e__0 _hd172328_)
                         _K172329_
                         _rest172330_
                         _r172331_)
                        (if (gx#core-library-module-path? _hd172328_)
                            (_import1172019_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _hd172328_))
                             _K172329_
                             _rest172330_
                             _r172331_)
                            (if (gx#core-library-relative-module-path?
                                 _hd172328_)
                                (_import1172019_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _hd172328_))
                                 _K172329_
                                 _rest172330_
                                 _r172331_)
                                (let ((_e172333_ (gx#stx-e _hd172328_)))
                                  (if (pair? _e172333_)
                                      (let ((_$e172335_
                                             (gx#stx-e (car _e172333_))))
                                        (if (eq? 'spec: _$e172335_)
                                            (_import-spec172022_
                                             _hd172328_
                                             _K172329_
                                             _rest172330_
                                             _r172331_)
                                            (if (eq? 'in: _$e172335_)
                                                (_import-submodule172020_
                                                 _hd172328_
                                                 _K172329_
                                                 _rest172330_
                                                 _r172331_)
                                                (if (eq? 'runtime: _$e172335_)
                                                    (_import-runtime172021_
                                                     _hd172328_
                                                     _K172329_
                                                     _rest172330_
                                                     _r172331_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _stx172015_
                                                     _hd172328_)))))
                                      (if (string? _e172333_)
                                          (_import1172019_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _hd172328_
                                             (gx#stx-source _stx172015_)))
                                           _K172329_
                                           _rest172330_
                                           _r172331_)
                                          (if (##structure-instance-of?
                                               _e172333_
                                               'gx#module-context::t)
                                              (_K172329_
                                               _rest172330_
                                               (cons _e172333_ _r172331_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _stx172015_
                                               _hd172328_))))))))))
                 (_import1172019_
                  (lambda (_ctx172317_ _K172318_ _rest172319_ _r172320_)
                    (let ((_dphi172322_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_K172318_
                       _rest172319_
                       (cons (##structure
                              gx#import-set::t
                              _ctx172317_
                              _dphi172322_
                              (map (lambda (_g172323172325_)
                                     (gx#core-module-export->import__%
                                      _g172323172325_
                                      '#f
                                      _dphi172322_))
                                   (##unchecked-structure-ref
                                    _ctx172317_
                                    '9
                                    gx#module-context::t
                                    '#f)))
                             _r172320_)))))
                 (_import-submodule172020_
                  (lambda (_hd172284_ _K172285_ _rest172286_ _r172287_)
                    (let* ((_e172288172295_ _hd172284_)
                           (_E172290172299_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e172288172295_)))
                           (_E172289172313_
                            (lambda ()
                              (if (gx#stx-pair? _e172288172295_)
                                  (let ((_e172291172303_
                                         (gx#syntax-e _e172288172295_)))
                                    (let ((_hd172292172306_
                                           (##car _e172291172303_))
                                          (_tl172293172308_
                                           (##cdr _e172291172303_)))
                                      (let ((_spath172311_ _tl172293172308_))
                                        (if '#t
                                            (_import1172019_
                                             (_import-spec-source172023_
                                              _spath172311_)
                                             _K172285_
                                             _rest172286_
                                             _r172287_)
                                            (_E172290172299_)))))
                                  (_E172290172299_)))))
                      (_E172289172313_))))
                 (_import-runtime172021_
                  (lambda (_hd172251_ _K172252_ _rest172253_ _r172254_)
                    (let* ((_e172255172262_ _hd172251_)
                           (_E172257172266_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e172255172262_)))
                           (_E172256172280_
                            (lambda ()
                              (if (gx#stx-pair? _e172255172262_)
                                  (let ((_e172258172270_
                                         (gx#syntax-e _e172255172262_)))
                                    (let ((_hd172259172273_
                                           (##car _e172258172270_))
                                          (_tl172260172275_
                                           (##cdr _e172258172270_)))
                                      (let ((_spath172278_ _tl172260172275_))
                                        (if '#t
                                            (_K172252_
                                             _rest172253_
                                             (cons (_import-spec-source172023_
                                                    _spath172278_)
                                                   _r172254_))
                                            (_E172257172266_)))))
                                  (_E172257172266_)))))
                      (_E172256172280_))))
                 (_import-spec172022_
                  (lambda (_hd172090_ _K172091_ _rest172092_ _r172093_)
                    (let* ((_e172094172111_ _hd172090_)
                           (_E172103172115_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e172094172111_)))
                           (_E172096172225_
                            (lambda ()
                              (if (gx#stx-pair? _e172094172111_)
                                  (let ((_e172104172119_
                                         (gx#syntax-e _e172094172111_)))
                                    (let ((_hd172105172122_
                                           (##car _e172104172119_))
                                          (_tl172106172124_
                                           (##cdr _e172104172119_)))
                                      (if (gx#stx-pair? _tl172106172124_)
                                          (let ((_e172107172127_
                                                 (gx#syntax-e
                                                  _tl172106172124_)))
                                            (let ((_hd172108172130_
                                                   (##car _e172107172127_))
                                                  (_tl172109172132_
                                                   (##cdr _e172107172127_)))
                                              (let* ((_path172135_
                                                      _hd172108172130_)
                                                     (_specs172137_
                                                      _tl172109172132_))
                                                (if '#t
                                                    (let ((_src-ctx172139_
                                                           (_import-spec-source172023_
                                                            _path172135_))
                                                          (_exports172140_
                                                           (make-hash-table))
                                                          (_specs172141_
                                                           (gx#syntax->list
                                                            _specs172137_)))
                                                      (for-each
                                                       (lambda (_out172143_)
                                                         (hash-put!
                                                          _exports172140_
                                                          (cons (##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _out172143_
                         '3
                         gx#module-export::t
                         '#f)
                        (##unchecked-structure-ref
                         _out172143_
                         '4
                         gx#module-export::t
                         '#f))
                  _out172143_))
               (##unchecked-structure-ref
                _src-ctx172139_
                '9
                gx#module-context::t
                '#f))
              (_K172091_
               _rest172092_
               (foldl1 (lambda (_spec172145_ _r172146_)
                         (let* ((_e172147172163_ _spec172145_)
                                (_E172149172167_
                                 (lambda ()
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid syntax-case clause"
                                    _e172147172163_)))
                                (_E172148172221_
                                 (lambda ()
                                   (if (gx#stx-pair? _e172147172163_)
                                       (let ((_e172150172171_
                                              (gx#syntax-e _e172147172163_)))
                                         (let ((_hd172151172174_
                                                (##car _e172150172171_))
                                               (_tl172152172176_
                                                (##cdr _e172150172171_)))
                                           (let ((_phi172179_
                                                  _hd172151172174_))
                                             (if (gx#stx-pair?
                                                  _tl172152172176_)
                                                 (let ((_e172153172181_
                                                        (gx#syntax-e
                                                         _tl172152172176_)))
                                                   (let ((_hd172154172184_
                                                          (##car _e172153172181_))
                                                         (_tl172155172186_
                                                          (##cdr _e172153172181_)))
                                                     (let ((_name172189_
                                                            _hd172154172184_))
                                                       (if (gx#stx-pair?
                                                            _tl172155172186_)
                                                           (let ((_e172156172191_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl172155172186_)))
                     (let ((_hd172157172194_ (##car _e172156172191_))
                           (_tl172158172196_ (##cdr _e172156172191_)))
                       (let ((_src-phi172199_ _hd172157172194_))
                         (if (gx#stx-pair? _tl172158172196_)
                             (let ((_e172159172201_
                                    (gx#syntax-e _tl172158172196_)))
                               (let ((_hd172160172204_ (##car _e172159172201_))
                                     (_tl172161172206_
                                      (##cdr _e172159172201_)))
                                 (let ((_src-name172209_ _hd172160172204_))
                                   (if (gx#stx-null? _tl172161172206_)
                                       (if (and (gx#stx-fixnum?
                                                 _src-phi172199_)
                                                (gx#identifier?
                                                 _src-name172209_)
                                                (gx#stx-fixnum? _phi172179_)
                                                (gx#identifier? _name172189_))
                                           (let ((_src-phi172211_
                                                  (gx#stx-e _src-phi172199_))
                                                 (_src-name172212_
                                                  (gx#core-identifier-key
                                                   _src-name172209_))
                                                 (_phi172213_
                                                  (gx#stx-e _phi172179_))
                                                 (_name172214_
                                                  (gx#core-identifier-key
                                                   _name172189_)))
                                             (let ((_$e172216_
                                                    (hash-get
                                                     _exports172140_
                                                     (cons _src-phi172211_
                                                           _src-name172212_))))
                                               (if _$e172216_
                                                   ((lambda (_out172219_)
                                                      (cons (gx#core-module-export->import__%
                                                             _out172219_
                                                             _name172214_
                                                             (fx- _phi172213_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _src-phi172211_))
                    _r172146_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _$e172216_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; no matching export"
                                                    _stx172015_
                                                    _hd172090_))))
                                           (_E172149172167_))
                                       (_E172149172167_)))))
                             (_E172149172167_)))))
                   (_E172149172167_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E172149172167_)))))
                                       (_E172149172167_)))))
                           (_E172148172221_)))
                       _r172093_
                       _specs172141_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E172103172115_)))))
                                          (_E172103172115_))))
                                  (_E172103172115_))))
                           (_E172095172247_
                            (lambda ()
                              (if (gx#stx-pair? _e172094172111_)
                                  (let ((_e172097172229_
                                         (gx#syntax-e _e172094172111_)))
                                    (let ((_hd172098172232_
                                           (##car _e172097172229_))
                                          (_tl172099172234_
                                           (##cdr _e172097172229_)))
                                      (if (gx#stx-pair? _tl172099172234_)
                                          (let ((_e172100172237_
                                                 (gx#syntax-e
                                                  _tl172099172234_)))
                                            (let ((_hd172101172240_
                                                   (##car _e172100172237_))
                                                  (_tl172102172242_
                                                   (##cdr _e172100172237_)))
                                              (let ((_path172245_
                                                     _hd172101172240_))
                                                (if (gx#stx-null?
                                                     _tl172102172242_)
                                                    (if '#t
                                                        (_K172091_
                                                         _rest172092_
                                                         (cons (_import-spec-source172023_
                                                                _path172245_)
                                                               _r172093_))
                                                        (_E172096172225_))
                                                    (_E172096172225_)))))
                                          (_E172096172225_))))
                                  (_E172096172225_)))))
                      (_E172095172247_))))
                 (_import-spec-source172023_
                  (lambda (_spath172088_)
                    (gx#core-import-nested-module _spath172088_ _stx172015_)))
                 (_import!172024_
                  (lambda (_rbody172037_)
                    (letrec* ((_current-ctx172039_
                               (gx#current-expander-context))
                              (_deps172040_ (make-hash-table-eq))
                              (_bind!172041_
                               (lambda (_hd172086_)
                                 (gx#core-bind-import!__1
                                  _hd172086_
                                  _current-ctx172039_))))
                      (let _lp172043_ ((_rest172045_ _rbody172037_)
                                       (_body172046_ '()))
                        (let* ((_rest172047172055_ _rest172045_)
                               (_else172049172065_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _current-ctx172039_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _current-ctx172039_
                                       (foldl1 cons
                                               (##unchecked-structure-ref
                                                _current-ctx172039_
                                                '8
                                                gx#module-context::t
                                                '#f)
                                               _body172046_)
                                       '8
                                       gx#module-context::t
                                       '#f)
                                      '#!void)
                                  (hash-for-each
                                   (lambda (_ctx172063_ _g178960_)
                                     (gx#eval-module _ctx172063_))
                                   _deps172040_)
                                  _body172046_))
                               (_K172051172074_
                                (lambda (_rest172068_ _hd172069_)
                                  (if (##structure-direct-instance-of?
                                       _hd172069_
                                       'gx#module-import::t)
                                      (begin
                                        (_bind!172041_ _hd172069_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _hd172069_
                                                   '3
                                                   gx#module-import::t
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _hd172069_
                                                            '1
                                                            gx#module-import::t
                                                            '#f)
                                                           '3
                                                           gx#module-export::t
                                                           '#f)))
                                            (hash-put!
                                             _deps172040_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _hd172069_
                                               '1
                                               gx#module-import::t
                                               '#f)
                                              '1
                                              gx#module-export::t
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _hd172069_
                                           'gx#import-set::t)
                                          (begin
                                            (for-each
                                             _bind!172041_
                                             (##unchecked-structure-ref
                                              _hd172069_
                                              '3
                                              gx#import-set::t
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _hd172069_
                                                  '2
                                                  gx#import-set::t
                                                  '#f))
                                                (hash-put!
                                                 _deps172040_
                                                 (##unchecked-structure-ref
                                                  _hd172069_
                                                  '1
                                                  gx#import-set::t
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_$e172071_
                                                 (##structure-instance-of?
                                                  _hd172069_
                                                  'gx#module-context::t)))
                                            (if _$e172071_
                                                _$e172071_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _stx172015_
                                                 _hd172069_)))))
                                  (_lp172043_
                                   _rest172068_
                                   (cons _hd172069_ _body172046_)))))
                          (if (##pair? _rest172047172055_)
                              (let ((_hd172052172077_
                                     (##car _rest172047172055_))
                                    (_tl172053172079_
                                     (##cdr _rest172047172055_)))
                                (let* ((_hd172082_ _hd172052172077_)
                                       (_rest172084_ _tl172053172079_))
                                  (_K172051172074_ _rest172084_ _hd172082_)))
                              (_else172049172065_)))))))
                 (_expanded-import?172025_
                  (lambda (_e172029_)
                    (let ((_$e172031_
                           (##structure-direct-instance-of?
                            _e172029_
                            'gx#import-set::t)))
                      (if _$e172031_
                          _$e172031_
                          (let ((_$e172034_
                                 (##structure-direct-instance-of?
                                  _e172029_
                                  'gx#module-import::t)))
                            (if _$e172034_
                                _$e172034_
                                (##structure-instance-of?
                                 _e172029_
                                 'gx#module-context::t))))))))
          (let ((_rbody172027_
                 (gx#core-expand-import/export
                  _stx172015_
                  _expanded-import?172025_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _expand1172018_)))
            (if _internal-expand?172016_
                (reverse _rbody172027_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_import!172024_ _rbody172027_))
                 (gx#stx-source _stx172015_)))))))
    (define gx#core-expand-import%__0
      (lambda (_stx172341_)
        (let ((_internal-expand?172343_ '#f))
          (gx#core-expand-import%__% _stx172341_ _internal-expand?172343_))))
    (define gx#core-expand-import%
      (lambda _g178962_
        (let ((_g178961_ (##length _g178962_)))
          (cond ((##fx= _g178961_ 1)
                 (apply (lambda (_stx172341_)
                          (gx#core-expand-import%__0 _stx172341_))
                        _g178962_))
                ((##fx= _g178961_ 2)
                 (apply (lambda (_stx172345_ _internal-expand?172346_)
                          (gx#core-expand-import%__%
                           _stx172345_
                           _internal-expand?172346_))
                        _g178962_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g178962_))))))
    (define gx#core-import-nested-module
      (lambda (_spath171942_ _where171943_)
        (let* ((_e171944171951_ _spath171942_)
               (_E171946171955_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e171944171951_)))
               (_E171945172010_
                (lambda ()
                  (if (gx#stx-pair? _e171944171951_)
                      (let ((_e171947171959_ (gx#syntax-e _e171944171951_)))
                        (let ((_hd171948171962_ (##car _e171947171959_))
                              (_tl171949171964_ (##cdr _e171947171959_)))
                          (let* ((_origin171967_ _hd171948171962_)
                                 (_sub171969_ _tl171949171964_))
                            (if '#t
                                (let ((_origin-ctx171971_
                                       (if (gx#stx-false? _origin171967_)
                                           (gx#current-expander-context)
                                           (gx#import-module__0
                                            _origin171967_))))
                                  (let _lp171973_ ((_rest171975_ _sub171969_)
                                                   (_ctx171976_
                                                    _origin-ctx171971_))
                                    (let* ((_e171977171984_ _rest171975_)
                                           (_E171979171988_
                                            (lambda () _ctx171976_))
                                           (_E171978172006_
                                            (lambda ()
                                              (if (gx#stx-pair?
                                                   _e171977171984_)
                                                  (let ((_e171980171992_
                                                         (gx#syntax-e
                                                          _e171977171984_)))
                                                    (let ((_hd171981171995_
                                                           (##car _e171980171992_))
                                                          (_tl171982171997_
                                                           (##cdr _e171980171992_)))
                                                      (let* ((_id172000_
                                                              _hd171981171995_)
                                                             (_rest172002_
                                                              _tl171982171997_))
                                                        (if '#t
                                                            (let ((_bind172004_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#resolve-identifier__%
                            _id172000_
                            '0
                            _ctx171976_)))
                      (if (and (##structure-direct-instance-of?
                                _bind172004_
                                'gx#syntax-binding::t)
                               (##structure-instance-of?
                                (##unchecked-structure-ref
                                 _bind172004_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                'gx#module-context::t))
                          '#!void
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; not bound as module"
                           _where171943_
                           _spath171942_
                           _id172000_))
                      (_lp171973_
                       _rest172002_
                       (##unchecked-structure-ref
                        _bind172004_
                        '4
                        gx#syntax-binding::t
                        '#f)))
                    (_E171979171988_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E171979171988_)))))
                                      (_E171978172006_))))
                                (_E171946171955_)))))
                      (_E171946171955_)))))
          (_E171945172010_))))
    (define gx#core-expand-import-source
      (lambda (_hd171940_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _hd171940_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_stx171448_ _internal-expand?171449_)
        (letrec* ((_make-export__178891178892_
                   (lambda (_bind171888_ _phi171889_ _ctx171890_ _name171891_)
                     (let* ((_key171893_
                             (##unchecked-structure-ref
                              _bind171888_
                              '2
                              gx#binding::t
                              '#f))
                            (_export-key171895_
                             (if _name171891_
                                 (gx#core-identifier-key _name171891_)
                                 _key171893_)))
                       (##structure
                        gx#module-export::t
                        _ctx171890_
                        _key171893_
                        _phi171889_
                        _export-key171895_
                        (let ((_$e171898_
                               (##structure-instance-of?
                                _bind171888_
                                'gx#extern-binding::t)))
                          (if _$e171898_
                              _$e171898_
                              (##structure-direct-instance-of?
                               _bind171888_
                               'gx#import-binding::t)))))))
                  (_make-export__0__178893178896_
                   (lambda (_bind171904_)
                     (let* ((_phi171906_ (gx#current-export-expander-phi))
                            (_ctx171908_ (gx#current-expander-context))
                            (_name171910_ '#f))
                       (_make-export__178891178892_
                        _bind171904_
                        _phi171906_
                        _ctx171908_
                        _name171910_))))
                  (_make-export__1__178894178897_
                   (lambda (_bind171912_ _phi171913_)
                     (let* ((_ctx171915_ (gx#current-expander-context))
                            (_name171917_ '#f))
                       (_make-export__178891178892_
                        _bind171912_
                        _phi171913_
                        _ctx171915_
                        _name171917_))))
                  (_make-export__2__178895178898_
                   (lambda (_bind171919_ _phi171920_ _ctx171921_)
                     (let ((_name171923_ '#f))
                       (_make-export__178891178892_
                        _bind171919_
                        _phi171920_
                        _ctx171921_
                        _name171923_))))
                  (_make-export171451_
                   (lambda _g178964_
                     (let ((_g178963_ (##length _g178964_)))
                       (cond ((##fx= _g178963_ 1)
                              (apply (lambda (_bind171904_)
                                       (_make-export__0__178893178896_
                                        _bind171904_))
                                     _g178964_))
                             ((##fx= _g178963_ 2)
                              (apply (lambda (_bind171912_ _phi171913_)
                                       (_make-export__1__178894178897_
                                        _bind171912_
                                        _phi171913_))
                                     _g178964_))
                             ((##fx= _g178963_ 3)
                              (apply (lambda (_bind171919_
                                              _phi171920_
                                              _ctx171921_)
                                       (_make-export__2__178895178898_
                                        _bind171919_
                                        _phi171920_
                                        _ctx171921_))
                                     _g178964_))
                             ((##fx= _g178963_ 4)
                              (apply (lambda (_bind171925_
                                              _phi171926_
                                              _ctx171927_
                                              _name171928_)
                                       (_make-export__178891178892_
                                        _bind171925_
                                        _phi171926_
                                        _ctx171927_
                                        _name171928_))
                                     _g178964_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g178964_))))))
                  (_expand1171452_
                   (lambda (_hd171601_ _K171602_ _rest171603_ _r171604_)
                     (let* ((_e171605171637_ _hd171601_)
                            (_E171632171641_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _stx171448_
                                _hd171601_)))
                            (_E171622171720_
                             (lambda ()
                               (if (gx#stx-pair? _e171605171637_)
                                   (let ((_e171633171645_
                                          (gx#syntax-e _e171605171637_)))
                                     (let ((_hd171634171648_
                                            (##car _e171633171645_))
                                           (_tl171635171650_
                                            (##cdr _e171633171645_)))
                                       (if (eq? (gx#stx-e _hd171634171648_)
                                                'import:)
                                           (let ((_in171653_ _tl171635171650_))
                                             (if (gx#stx-list? _in171653_)
                                                 (let _lp171655_ ((_in-rest171657_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _in171653_)
                          (_r171658_ _r171604_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_e171659171666_
                                                           _in-rest171657_)
                                                          (_E171661171670_
                                                           (lambda ()
                                                             (_K171602_
                                                              _rest171603_
                                                              _r171658_)))
                                                          (_E171660171716_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _e171659171666_)
                         (let ((_e171662171674_ (gx#syntax-e _e171659171666_)))
                           (let ((_hd171663171677_ (##car _e171662171674_))
                                 (_tl171664171679_ (##cdr _e171662171674_)))
                             (let* ((_hd171682_ _hd171663171677_)
                                    (_in-rest171684_ _tl171664171679_))
                               (if '#t
                                   (let ((_src171714_
                                          (if (gx#core-bound-module?
                                               _hd171682_)
                                              (gx#syntax-local-e__0 _hd171682_)
                                              (if (gx#core-library-module-path?
                                                   _hd171682_)
                                                  (gx#import-module__0
                                                   (gx#core-resolve-library-module-path
                                                    _hd171682_))
                                                  (if (gx#core-library-relative-module-path?
                                                       _hd171682_)
                                                      (gx#import-module__0
                                                       (gx#core-resolve-library-relative-module-path
                                                        _hd171682_))
                                                      (if (gx#stx-string?
                                                           _hd171682_)
                                                          (gx#import-module__0
                                                           (gx#core-resolve-module-path__%
                                                            _hd171682_
                                                            (gx#stx-source
                                                             _stx171448_)))
                                                          (let* ((_e171685171692_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd171682_)
                         (_E171687171696_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; illegal re-export"
                             _stx171448_
                             _hd171682_)))
                         (_E171686171710_
                          (lambda ()
                            (if (gx#stx-pair? _e171685171692_)
                                (let ((_e171688171700_
                                       (gx#syntax-e _e171685171692_)))
                                  (let ((_hd171689171703_
                                         (##car _e171688171700_))
                                        (_tl171690171705_
                                         (##cdr _e171688171700_)))
                                    (if (eq? (gx#stx-e _hd171689171703_) 'in:)
                                        (let ((_spath171708_ _tl171690171705_))
                                          (if '#t
                                              (gx#core-import-nested-module
                                               _spath171708_
                                               _stx171448_)
                                              (_E171687171696_)))
                                        (_E171687171696_))))
                                (_E171687171696_)))))
                    (_E171686171710_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_lp171655_
                                      _in-rest171684_
                                      (_export-imports171453_
                                       _src171714_
                                       _r171658_)))
                                   (_E171661171670_)))))
                         (_E171661171670_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E171660171716_)))
                                                 (_E171632171641_)))
                                           (_E171632171641_))))
                                   (_E171632171641_))))
                            (_E171609171759_
                             (lambda ()
                               (if (gx#stx-pair? _e171605171637_)
                                   (let ((_e171623171724_
                                          (gx#syntax-e _e171605171637_)))
                                     (let ((_hd171624171727_
                                            (##car _e171623171724_))
                                           (_tl171625171729_
                                            (##cdr _e171623171724_)))
                                       (if (eq? (gx#stx-e _hd171624171727_)
                                                'rename:)
                                           (if (gx#stx-pair? _tl171625171729_)
                                               (let ((_e171626171732_
                                                      (gx#syntax-e
                                                       _tl171625171729_)))
                                                 (let ((_hd171627171735_
                                                        (##car _e171626171732_))
                                                       (_tl171628171737_
                                                        (##cdr _e171626171732_)))
                                                   (let ((_id171740_
                                                          _hd171627171735_))
                                                     (if (gx#stx-pair?
                                                          _tl171628171737_)
                                                         (let ((_e171629171742_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl171628171737_)))
                   (let ((_hd171630171745_ (##car _e171629171742_))
                         (_tl171631171747_ (##cdr _e171629171742_)))
                     (let ((_name171750_ _hd171630171745_))
                       (if (gx#stx-null? _tl171631171747_)
                           (if '#t
                               (let* ((_phi171752_
                                       (gx#current-export-expander-phi))
                                      (_$e171754_
                                       (gx#core-resolve-identifier__1
                                        _id171740_
                                        _phi171752_)))
                                 (if _$e171754_
                                     ((lambda (_bind171757_)
                                        (_K171602_
                                         _rest171603_
                                         (cons (_make-export__178891178892_
                                                _bind171757_
                                                _phi171752_
                                                (gx#current-expander-context)
                                                _name171750_)
                                               _r171604_)))
                                      _$e171754_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Reference to unbound identifier"
                                      _stx171448_
                                      _hd171601_
                                      _id171740_)))
                               (_E171622171720_))
                           (_E171622171720_)))))
                 (_E171622171720_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E171622171720_))
                                           (_E171622171720_))))
                                   (_E171622171720_))))
                            (_E171608171808_
                             (lambda ()
                               (if (gx#stx-pair? _e171605171637_)
                                   (let ((_e171610171763_
                                          (gx#syntax-e _e171605171637_)))
                                     (let ((_hd171611171766_
                                            (##car _e171610171763_))
                                           (_tl171612171768_
                                            (##cdr _e171610171763_)))
                                       (if (eq? (gx#stx-e _hd171611171766_)
                                                'spec:)
                                           (if (gx#stx-pair? _tl171612171768_)
                                               (let ((_e171613171771_
                                                      (gx#syntax-e
                                                       _tl171612171768_)))
                                                 (let ((_hd171614171774_
                                                        (##car _e171613171771_))
                                                       (_tl171615171776_
                                                        (##cdr _e171613171771_)))
                                                   (let ((_phi171779_
                                                          _hd171614171774_))
                                                     (if (gx#stx-pair?
                                                          _tl171615171776_)
                                                         (let ((_e171616171781_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl171615171776_)))
                   (let ((_hd171617171784_ (##car _e171616171781_))
                         (_tl171618171786_ (##cdr _e171616171781_)))
                     (let ((_id171789_ _hd171617171784_))
                       (if (gx#stx-pair? _tl171618171786_)
                           (let ((_e171619171791_
                                  (gx#syntax-e _tl171618171786_)))
                             (let ((_hd171620171794_ (##car _e171619171791_))
                                   (_tl171621171796_ (##cdr _e171619171791_)))
                               (let ((_name171799_ _hd171620171794_))
                                 (if (gx#stx-null? _tl171621171796_)
                                     (if (and (gx#stx-fixnum? _phi171779_)
                                              (gx#identifier? _id171789_)
                                              (gx#identifier? _name171799_))
                                         (let* ((_phi171801_
                                                 (gx#stx-e _phi171779_))
                                                (_$e171803_
                                                 (gx#core-resolve-identifier__1
                                                  _id171789_
                                                  _phi171801_)))
                                           (if _$e171803_
                                               ((lambda (_bind171806_)
                                                  (_K171602_
                                                   _rest171603_
                                                   (cons (_make-export__178891178892_
                                                          _bind171806_
                                                          _phi171801_
                                                          (gx#current-expander-context)
                                                          _name171799_)
                                                         _r171604_)))
                                                _$e171803_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _stx171448_
                                                _hd171601_
                                                _id171789_)))
                                         (_E171609171759_))
                                     (_E171609171759_)))))
                           (_E171609171759_)))))
                 (_E171609171759_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E171609171759_))
                                           (_E171609171759_))))
                                   (_E171609171759_))))
                            (_E171607171819_
                             (lambda ()
                               (let ((_id171812_ _e171605171637_))
                                 (if (gx#identifier? _id171812_)
                                     (let ((_$e171814_
                                            (gx#core-resolve-identifier__1
                                             _id171812_
                                             (gx#current-export-expander-phi))))
                                       (if _$e171814_
                                           ((lambda (_bind171817_)
                                              (_K171602_
                                               _rest171603_
                                               (cons (_make-export__0__178893178896_
                                                      _bind171817_)
                                                     _r171604_)))
                                            _$e171814_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _stx171448_
                                            _hd171601_)))
                                     (_E171608171808_)))))
                            (_E171606171883_
                             (lambda ()
                               (if (eq? (gx#stx-e _e171605171637_) '#t)
                                   (if '#t
                                       (let* ((_current-ctx171823_
                                               (gx#current-expander-context))
                                              (_current-phi171825_
                                               (gx#current-export-expander-phi))
                                              (_phi-ctx171827_
                                               (gx#core-context-shift
                                                _current-ctx171823_
                                                _current-phi171825_))
                                              (_phi-bind171829_
                                               (hash->list
                                                (##unchecked-structure-ref
                                                 _phi-ctx171827_
                                                 '2
                                                 gx#expander-context::t
                                                 '#f))))
                                         (let _lp171832_ ((_bind-rest171834_
                                                           _phi-bind171829_)
                                                          (_set171835_ '()))
                                           (let* ((_bind-rest171836171846_
                                                   _bind-rest171834_)
                                                  (_else171838171854_
                                                   (lambda ()
                                                     (_K171602_
                                                      _rest171603_
                                                      (cons (##structure
                                                             gx#export-set::t
                                                             '#f
                                                             _current-phi171825_
                                                             _set171835_)
                                                            _r171604_))))
                                                  (_K171840171864_
                                                   (lambda (_bind-rest171857_
                                                            _bind171858_
                                                            _key171859_)
                                                     (if (or (##structure-direct-instance-of?
                                                              _bind171858_
                                                              'gx#import-binding::t)
                                                             (gx#private-feature-binding?
                                                              _bind171858_))
                                                         (_lp171832_
                                                          _bind-rest171857_
                                                          _set171835_)
                                                         (_lp171832_
                                                          _bind-rest171857_
                                                          (cons (_make-export__2__178895178898_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind171858_
                         _current-phi171825_
                         _current-ctx171823_)
                        _set171835_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _bind-rest171836171846_)
                                                 (let ((_hd171841171867_
                                                        (##car _bind-rest171836171846_))
                                                       (_tl171842171869_
                                                        (##cdr _bind-rest171836171846_)))
                                                   (if (##pair? _hd171841171867_)
                                                       (let ((_hd171843171872_
                                                              (##car _hd171841171867_))
                                                             (_tl171844171874_
                                                              (##cdr _hd171841171867_)))
                                                         (let* ((_key171877_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd171843171872_)
                        (_bind171879_ _tl171844171874_)
                        (_bind-rest171881_ _tl171842171869_))
                   (_K171840171864_
                    _bind-rest171881_
                    _bind171879_
                    _key171877_)))
               (_else171838171854_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_else171838171854_)))))
                                       (_E171607171819_))
                                   (_E171607171819_)))))
                       (_E171606171883_))))
                  (_export-imports171453_
                   (lambda (_src171477_ _r171478_)
                     (letrec* ((_current-ctx171480_
                                (gx#current-expander-context))
                               (_current-phi171481_
                                (gx#current-export-expander-phi))
                               (_import->export171482_
                                (lambda (_in171563_)
                                  (let* ((_in171564171572_ _in171563_)
                                         (_E171566171576_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _in171564171572_)))
                                         (_K171567171583_
                                          (lambda (_phi171579_
                                                   _key171580_
                                                   _out171581_)
                                            (##structure
                                             gx#module-export::t
                                             _current-ctx171480_
                                             _key171580_
                                             _phi171579_
                                             _key171580_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _in171564171572_
                                         'gx#module-import::t)
                                        (let* ((_e171568171586_
                                                (##unchecked-structure-ref
                                                 _in171564171572_
                                                 '1
                                                 gx#module-import::t
                                                 '#f))
                                               (_out171589_ _e171568171586_)
                                               (_e171569171591_
                                                (##unchecked-structure-ref
                                                 _in171564171572_
                                                 '2
                                                 gx#module-import::t
                                                 '#f))
                                               (_key171594_ _e171569171591_)
                                               (_e171570171596_
                                                (##unchecked-structure-ref
                                                 _in171564171572_
                                                 '3
                                                 gx#module-import::t
                                                 '#f))
                                               (_phi171599_ _e171570171596_))
                                          (_K171567171583_
                                           _phi171599_
                                           _key171594_
                                           _out171589_))
                                        (_E171566171576_)))))
                               (_fold-e171483_
                                (lambda (_in171485_ _r171486_)
                                  (let* ((_in171487171501_ _in171485_)
                                         (_else171490171509_
                                          (lambda () _r171486_)))
                                    (let ((_K171496171545_
                                           (lambda (_phi171541_
                                                    _key171542_
                                                    _out171543_)
                                             (if (and (fx= _phi171541_
                                                           _current-phi171481_)
                                                      (eq? _src171477_
                                                           (##unchecked-structure-ref
                                                            _out171543_
                                                            '1
                                                            gx#module-export::t
                                                            '#f)))
                                                 (cons (_import->export171482_
                                                        _in171485_)
                                                       _r171486_)
                                                 _r171486_)))
                                          (_K171492171520_
                                           (lambda (_imports171513_
                                                    _phi171514_
                                                    _ctx171515_)
                                             (if (and (fx= _phi171514_
                                                           _current-phi171481_)
                                                      (eq? _src171477_
                                                           _ctx171515_))
                                                 (foldl1 (lambda (_in171517_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r171518_)
                   (cons (_import->export171482_ _in171517_) _r171518_))
                 _r171486_
                 _imports171513_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _r171486_))))
                                      (let ((_try-match171489171538_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _in171487171501_
                                                    'gx#import-set::t)
                                                   (let* ((_e171493171523_
                                                           (##unchecked-structure-ref
                                                            _in171487171501_
                                                            '1
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e171494171528_
                                                           (##unchecked-structure-ref
                                                            _in171487171501_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e171495171533_
                                                           (##unchecked-structure-ref
                                                            _in171487171501_
                                                            '3
                                                            gx#import-set::t
                                                            '#f)))
                                                     (let ((_ctx171526_
                                                            _e171493171523_)
                                                           (_phi171531_
                                                            _e171494171528_)
                                                           (_imports171536_
                                                            _e171495171533_))
                                                       (_K171492171520_
                                                        _imports171536_
                                                        _phi171531_
                                                        _ctx171526_)))
                                                   (_else171490171509_)))))
                                        (if (##structure-direct-instance-of?
                                             _in171487171501_
                                             'gx#module-import::t)
                                            (let* ((_e171497171548_
                                                    (##unchecked-structure-ref
                                                     _in171487171501_
                                                     '1
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e171498171553_
                                                    (##unchecked-structure-ref
                                                     _in171487171501_
                                                     '2
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e171499171558_
                                                    (##unchecked-structure-ref
                                                     _in171487171501_
                                                     '3
                                                     gx#module-import::t
                                                     '#f)))
                                              (let ((_out171551_
                                                     _e171497171548_)
                                                    (_key171556_
                                                     _e171498171553_)
                                                    (_phi171561_
                                                     _e171499171558_))
                                                (_K171496171545_
                                                 _phi171561_
                                                 _key171556_
                                                 _out171551_)))
                                            (_try-match171489171538_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _src171477_
                              _current-phi171481_
                              (foldl1 _fold-e171483_
                                      '()
                                      (##unchecked-structure-ref
                                       _current-ctx171480_
                                       '8
                                       gx#module-context::t
                                       '#f)))
                             _r171478_))))
                  (_export!171454_
                   (lambda (_rbody171467_)
                     (letrec* ((_current-ctx171469_
                                (gx#current-expander-context))
                               (_fold-e171470_
                                (lambda (_out171474_ _r171475_)
                                  (if (##structure-direct-instance-of?
                                       _out171474_
                                       'gx#module-export::t)
                                      (cons _out171474_ _r171475_)
                                      (if (##structure-direct-instance-of?
                                           _out171474_
                                           'gx#export-set::t)
                                          (foldl1 cons
                                                  _r171475_
                                                  (##unchecked-structure-ref
                                                   _out171474_
                                                   '3
                                                   gx#export-set::t
                                                   '#f))
                                          _r171475_)))))
                       (let ((_body171472_ (reverse _rbody171467_)))
                         (##unchecked-structure-set!
                          _current-ctx171469_
                          (foldl1 _fold-e171470_
                                  (##unchecked-structure-ref
                                   _current-ctx171469_
                                   '9
                                   gx#module-context::t
                                   '#f)
                                  _body171472_)
                          '9
                          gx#module-context::t
                          '#f)
                         _body171472_))))
                  (_expanded-export?171455_
                   (lambda (_e171462_)
                     (let ((_$e171464_
                            (##structure-direct-instance-of?
                             _e171462_
                             'gx#module-export::t)))
                       (if _$e171464_
                           _$e171464_
                           (##structure-direct-instance-of?
                            _e171462_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _internal-expand?171449_)
              (let ((_rbody171460_
                     (gx#core-expand-import/export
                      _stx171448_
                      _expanded-export?171455_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _expand1171452_)))
                (if _internal-expand?171449_
                    (reverse _rbody171460_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons '%#export (_export!171454_ _rbody171460_))
                     (gx#stx-source _stx171448_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _stx171448_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _stx171448_))))))
    (define gx#core-expand-export%__0
      (lambda (_stx171933_)
        (let ((_internal-expand?171935_ '#f))
          (gx#core-expand-export%__% _stx171933_ _internal-expand?171935_))))
    (define gx#core-expand-export%
      (lambda _g178966_
        (let ((_g178965_ (##length _g178966_)))
          (cond ((##fx= _g178965_ 1)
                 (apply (lambda (_stx171933_)
                          (gx#core-expand-export%__0 _stx171933_))
                        _g178966_))
                ((##fx= _g178965_ 2)
                 (apply (lambda (_stx171937_ _internal-expand?171938_)
                          (gx#core-expand-export%__%
                           _stx171937_
                           _internal-expand?171938_))
                        _g178966_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g178966_))))))
    (define gx#core-expand-export-source
      (lambda (_hd171445_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _hd171445_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_stx171415_)
        (let* ((_e171416171423_ _stx171415_)
               (_E171418171427_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e171416171423_)))
               (_E171417171441_
                (lambda ()
                  (if (gx#stx-pair? _e171416171423_)
                      (let ((_e171419171431_ (gx#syntax-e _e171416171423_)))
                        (let ((_hd171420171434_ (##car _e171419171431_))
                              (_tl171421171436_ (##cdr _e171419171431_)))
                          (let ((_body171439_ _tl171421171436_))
                            (if (gx#identifier-list? _body171439_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _body171439_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _body171439_))
                                   (gx#stx-source _stx171415_)))
                                (_E171418171427_)))))
                      (_E171418171427_)))))
          (_E171417171441_))))
    (define gx#core-bind-feature!__%
      (lambda (_id171381_ _private?171382_ _phi171383_ _ctx171384_)
        (gx#core-bind-syntax!__%
         _id171381_
         ((if _private?171382_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _id171381_))
         _private?171382_
         _phi171383_
         _ctx171384_)))
    (define gx#core-bind-feature!__0
      (lambda (_id171389_)
        (let* ((_private?171391_ '#f)
               (_phi171393_ (gx#current-expander-phi))
               (_ctx171395_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id171389_
           _private?171391_
           _phi171393_
           _ctx171395_))))
    (define gx#core-bind-feature!__1
      (lambda (_id171397_ _private?171398_)
        (let* ((_phi171400_ (gx#current-expander-phi))
               (_ctx171402_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id171397_
           _private?171398_
           _phi171400_
           _ctx171402_))))
    (define gx#core-bind-feature!__2
      (lambda (_id171404_ _private?171405_ _phi171406_)
        (let ((_ctx171408_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id171404_
           _private?171405_
           _phi171406_
           _ctx171408_))))
    (define gx#core-bind-feature!
      (lambda _g178968_
        (let ((_g178967_ (##length _g178968_)))
          (cond ((##fx= _g178967_ 1)
                 (apply (lambda (_id171389_)
                          (gx#core-bind-feature!__0 _id171389_))
                        _g178968_))
                ((##fx= _g178967_ 2)
                 (apply (lambda (_id171397_ _private?171398_)
                          (gx#core-bind-feature!__1
                           _id171397_
                           _private?171398_))
                        _g178968_))
                ((##fx= _g178967_ 3)
                 (apply (lambda (_id171404_ _private?171405_ _phi171406_)
                          (gx#core-bind-feature!__2
                           _id171404_
                           _private?171405_
                           _phi171406_))
                        _g178968_))
                ((##fx= _g178967_ 4)
                 (apply (lambda (_id171410_
                                 _private?171411_
                                 _phi171412_
                                 _ctx171413_)
                          (gx#core-bind-feature!__%
                           _id171410_
                           _private?171411_
                           _phi171412_
                           _ctx171413_))
                        _g178968_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g178968_))))))))
