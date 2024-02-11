(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1707647933)
  (begin
    (declare (not safe))
    (define gx#module-import::t
      (make-class-type
       'gx#module-import::t
       'module-import
       (list)
       '(source name phi weak?)
       (cons (cons 'final: '#t) '())
       '#f))
    (define gx#module-import? (make-class-predicate gx#module-import::t))
    (define gx#make-module-import
      (lambda _$args160686_
        (apply make-class-instance gx#module-import::t _$args160686_)))
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
       (cons (cons 'final: '#t) '())
       '#f))
    (define gx#module-export? (make-class-predicate gx#module-export::t))
    (define gx#make-module-export
      (lambda _$args160683_
        (apply make-class-instance gx#module-export::t _$args160683_)))
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
       (cons (cons 'final: '#t) '())
       '#f))
    (define gx#import-set? (make-class-predicate gx#import-set::t))
    (define gx#make-import-set
      (lambda _$args160680_
        (apply make-class-instance gx#import-set::t _$args160680_)))
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
       (cons (cons 'final: '#t) '())
       '#f))
    (define gx#export-set? (make-class-predicate gx#export-set::t))
    (define gx#make-export-set
      (lambda _$args160677_
        (apply make-class-instance gx#export-set::t _$args160677_)))
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
      (lambda _$args160674_
        (apply make-class-instance gx#import-expander::t _$args160674_)))
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
      (lambda _$args160671_
        (apply make-class-instance gx#export-expander::t _$args160671_)))
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
      (lambda _$args160668_
        (apply make-class-instance
               gx#import-export-expander::t
               _$args160668_)))
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
      (lambda (_path160665_ _fun160666_)
        (call-with-input-file
         (cons 'path: (cons _path160665_ gx#source-file-settings))
         _fun160666_)))
    (define gx#module-context:::init!
      (lambda (_self160659_ _id160660_ _super160661_ _ns160662_ _path160663_)
        (if (##fx< '11 (##structure-length _self160659_))
            (begin
              (##unchecked-structure-set!
               _self160659_
               _id160660_
               '1
               (##structure-type _self160659_)
               '#f)
              (##unchecked-structure-set!
               _self160659_
               (make-table 'test: eq?)
               '2
               (##structure-type _self160659_)
               '#f)
              (##unchecked-structure-set!
               _self160659_
               _super160661_
               '3
               (##structure-type _self160659_)
               '#f)
              (##unchecked-structure-set!
               _self160659_
               '#f
               '4
               (##structure-type _self160659_)
               '#f)
              (##unchecked-structure-set!
               _self160659_
               '#f
               '5
               (##structure-type _self160659_)
               '#f)
              (##unchecked-structure-set!
               _self160659_
               _ns160662_
               '6
               (##structure-type _self160659_)
               '#f)
              (##unchecked-structure-set!
               _self160659_
               _path160663_
               '7
               (##structure-type _self160659_)
               '#f)
              (##unchecked-structure-set!
               _self160659_
               '()
               '8
               (##structure-type _self160659_)
               '#f)
              (##unchecked-structure-set!
               _self160659_
               '()
               '9
               (##structure-type _self160659_)
               '#f)
              (##unchecked-structure-set!
               _self160659_
               '#f
               '10
               (##structure-type _self160659_)
               '#f)
              (##unchecked-structure-set!
               _self160659_
               '#f
               '11
               (##structure-type _self160659_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self160659_
                   '11
                   (##vector-length _self160659_)))))
    (bind-method! gx#module-context::t ':init! gx#module-context:::init! '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_self160503_ _ctx160504_ _root160505_)
        (let ((_super160513_
               (let ((_$e160507_ _root160505_))
                 (if _$e160507_
                     _$e160507_
                     (let ((_$e160510_ (gx#core-context-root__0)))
                       (if _$e160510_
                           _$e160510_
                           (let ((__obj165196
                                  (##structure gx#root-context::t '#f '#f)))
                             (let ((__constructor165197
                                    (direct-method-ref
                                     gx#root-context::t
                                     ':init!)))
                               (if __constructor165197
                                   (__constructor165197 __obj165196)
                                   (error '"missing constructor method implementation"
                                          'class:
                                          gx#root-context::t
                                          'method:
                                          ':init!)))
                             __obj165196)))))))
          (if _ctx160504_
              (let ((_id160516_
                     (let ((__obj165198 _ctx160504_))
                       (if (##structure-direct-instance-of?
                            __obj165198
                            'gx#expander-context::t)
                           (##unchecked-structure-ref
                            __obj165198
                            '1
                            gx#expander-context::t
                            '#f)
                           (class-slot-ref
                            gx#expander-context::t
                            __obj165198
                            'id))))
                    (_path160517_
                     (let ((__obj165199 _ctx160504_))
                       (if (##structure-direct-instance-of?
                            __obj165199
                            'gx#module-context::t)
                           (##unchecked-structure-ref
                            __obj165199
                            '7
                            gx#module-context::t
                            '#f)
                           (class-slot-ref
                            gx#module-context::t
                            __obj165199
                            'path))))
                    (_in160518_
                     (map gx#core-module-export->import
                          (let ((__obj165200 _ctx160504_))
                            (if (##structure-direct-instance-of?
                                 __obj165200
                                 'gx#module-context::t)
                                (##unchecked-structure-ref
                                 __obj165200
                                 '9
                                 gx#module-context::t
                                 '#f)
                                (class-slot-ref
                                 gx#module-context::t
                                 __obj165200
                                 'export)))))
                    (_e160519_
                     (make-promise (lambda () (gx#eval-module _ctx160504_)))))
                (if (##fx< '8 (##structure-length _self160503_))
                    (begin
                      (##unchecked-structure-set!
                       _self160503_
                       _id160516_
                       '1
                       (##structure-type _self160503_)
                       '#f)
                      (##unchecked-structure-set!
                       _self160503_
                       (make-table 'test: eq? 'size: (length _in160518_))
                       '2
                       (##structure-type _self160503_)
                       '#f)
                      (##unchecked-structure-set!
                       _self160503_
                       _super160513_
                       '3
                       (##structure-type _self160503_)
                       '#f)
                      (##unchecked-structure-set!
                       _self160503_
                       '#f
                       '4
                       (##structure-type _self160503_)
                       '#f)
                      (##unchecked-structure-set!
                       _self160503_
                       '#f
                       '5
                       (##structure-type _self160503_)
                       '#f)
                      (##unchecked-structure-set!
                       _self160503_
                       _path160517_
                       '6
                       (##structure-type _self160503_)
                       '#f)
                      (##unchecked-structure-set!
                       _self160503_
                       _in160518_
                       '7
                       (##structure-type _self160503_)
                       '#f)
                      (##unchecked-structure-set!
                       _self160503_
                       _e160519_
                       '8
                       (##structure-type _self160503_)
                       '#f))
                    (error '"struct-instance-init!: too many arguments for struct"
                           _self160503_
                           '8
                           (##vector-length _self160503_)))
                (for-each
                 (lambda (_g160520160522_)
                   (gx#core-bind-weak-import!__% _g160520160522_ _self160503_))
                 _in160518_))
              (if (##fx< '8 (##structure-length _self160503_))
                  (begin
                    (##unchecked-structure-set!
                     _self160503_
                     '#f
                     '1
                     (##structure-type _self160503_)
                     '#f)
                    (##unchecked-structure-set!
                     _self160503_
                     (make-table 'test: eq?)
                     '2
                     (##structure-type _self160503_)
                     '#f)
                    (##unchecked-structure-set!
                     _self160503_
                     _super160513_
                     '3
                     (##structure-type _self160503_)
                     '#f)
                    (##unchecked-structure-set!
                     _self160503_
                     '#f
                     '4
                     (##structure-type _self160503_)
                     '#f)
                    (##unchecked-structure-set!
                     _self160503_
                     '#f
                     '5
                     (##structure-type _self160503_)
                     '#f)
                    (##unchecked-structure-set!
                     _self160503_
                     '#f
                     '6
                     (##structure-type _self160503_)
                     '#f)
                    (##unchecked-structure-set!
                     _self160503_
                     '()
                     '7
                     (##structure-type _self160503_)
                     '#f)
                    (##unchecked-structure-set!
                     _self160503_
                     '#f
                     '8
                     (##structure-type _self160503_)
                     '#f))
                  (error '"struct-instance-init!: too many arguments for struct"
                         _self160503_
                         '8
                         (##vector-length _self160503_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_self160528_ _ctx160529_)
        (let ((_root160531_ '#f))
          (gx#prelude-context:::init!__%
           _self160528_
           _ctx160529_
           _root160531_))))
    (define gx#prelude-context:::init!
      (lambda _g165217_
        (let ((_g165216_ (##length _g165217_)))
          (cond ((##fx= _g165216_ 2)
                 (apply (lambda (_self160528_ _ctx160529_)
                          (gx#prelude-context:::init!__0
                           _self160528_
                           _ctx160529_))
                        _g165217_))
                ((##fx= _g165216_ 3)
                 (apply (lambda (_self160533_ _ctx160534_ _root160535_)
                          (gx#prelude-context:::init!__%
                           _self160533_
                           _ctx160534_
                           _root160535_))
                        _g165217_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g165217_))))))
    (bind-method! gx#prelude-context::t ':init! gx#prelude-context:::init! '#f)
    (define gx#import-export-expander-init!
      (lambda (_self160377_ _e160378_)
        (if (##fx< '3 (##structure-length _self160377_))
            (begin
              (##unchecked-structure-set!
               _self160377_
               _e160378_
               '1
               (##structure-type _self160377_)
               '#f)
              (##unchecked-structure-set!
               _self160377_
               (gx#current-expander-context)
               '2
               (##structure-type _self160377_)
               '#f)
              (##unchecked-structure-set!
               _self160377_
               (fx- (gx#current-expander-phi) '1)
               '3
               (##structure-type _self160377_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self160377_
                   '3
                   (##vector-length _self160377_)))))
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
      (lambda (_g160003160006_ _g160004160008_)
        (gx#core-apply-user-expander__%
         _g160003160006_
         _g160004160008_
         'apply-import-expander)))
    (bind-method!
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_g159874159877_ _g159875159879_)
        (gx#core-apply-user-expander__%
         _g159874159877_
         _g159875159879_
         'apply-export-expander)))
    (bind-method!
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_ctx159745_)
        (let* ((_path159747_
                (let ((__obj165201 _ctx159745_))
                  (if (##structure-direct-instance-of?
                       __obj165201
                       'gx#module-context::t)
                      (##unchecked-structure-ref
                       __obj165201
                       '7
                       gx#module-context::t
                       '#f)
                      (class-slot-ref
                       gx#module-context::t
                       __obj165201
                       'path))))
               (_path159749_
                (if (pair? _path159747_) (last _path159747_) _path159747_)))
          (if (string? _path159749_) _path159749_ '#f))))
    (define gx#import-module__%
      (lambda (_path159721_ _reload?159722_ _eval?159723_)
        (let ((_ctx159725_
               ((gx#current-expander-module-import)
                _path159721_
                _reload?159722_)))
          (if (and _ctx159725_ _eval?159723_)
              (gx#eval-module _ctx159725_)
              '#!void)
          _ctx159725_)))
    (define gx#import-module__0
      (lambda (_path159730_)
        (let* ((_reload?159732_ '#f) (_eval?159734_ '#f))
          (gx#import-module__% _path159730_ _reload?159732_ _eval?159734_))))
    (define gx#import-module__1
      (lambda (_path159736_ _reload?159737_)
        (let ((_eval?159739_ '#f))
          (gx#import-module__% _path159736_ _reload?159737_ _eval?159739_))))
    (define gx#import-module
      (lambda _g165219_
        (let ((_g165218_ (##length _g165219_)))
          (cond ((##fx= _g165218_ 1)
                 (apply (lambda (_path159730_)
                          (gx#import-module__0 _path159730_))
                        _g165219_))
                ((##fx= _g165218_ 2)
                 (apply (lambda (_path159736_ _reload?159737_)
                          (gx#import-module__1 _path159736_ _reload?159737_))
                        _g165219_))
                ((##fx= _g165218_ 3)
                 (apply (lambda (_path159741_ _reload?159742_ _eval?159743_)
                          (gx#import-module__%
                           _path159741_
                           _reload?159742_
                           _eval?159743_))
                        _g165219_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g165219_))))))
    (define gx#eval-module
      (lambda (_mod159718_) ((gx#current-expander-module-eval) _mod159718_)))
    (define gx#core-eval-module
      (lambda (_obj159703_)
        (letrec ((_force-e159705_
                  (lambda (_getf159714_ _e159715_)
                    (call-with-parameters
                     (lambda () (force (_getf159714_ _e159715_)))
                     gx#current-expander-context
                     _e159715_
                     gx#current-expander-phi
                     '0))))
          (let _recur159707_ ((_e159709_ _obj159703_))
            (if (class-instance? gx#module-context::t _e159709_)
                (begin
                  (let ((_$e159711_ (gx#core-context-prelude__% _e159709_)))
                    (if _$e159711_ (_recur159707_ _$e159711_) '#!void))
                  (_force-e159705_ gx#module-context-e _e159709_))
                (if (class-instance? gx#prelude-context::t _e159709_)
                    (_force-e159705_ gx#prelude-context-e _e159709_)
                    (if (gx#stx-string? _e159709_)
                        (_recur159707_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _e159709_)))
                        (if (gx#core-library-module-path? _e159709_)
                            (_recur159707_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _e159709_)))
                            (error '"Cannot eval module" _obj159703_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_ctx159686_)
        (let _lp159688_ ((_e159690_ _ctx159686_))
          (if (or (class-instance? gx#module-context::t _e159690_)
                  (class-instance? gx#local-context::t _e159690_))
              (_lp159688_ (unchecked-slot-ref _e159690_ 'super))
              (if (class-instance? gx#prelude-context::t _e159690_)
                  _e159690_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_ctx159699_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _ctx159699_))))
    (define gx#core-context-prelude
      (lambda _g165221_
        (let ((_g165220_ (##length _g165221_)))
          (cond ((##fx= _g165220_ 0)
                 (apply (lambda () (gx#core-context-prelude__0)) _g165221_))
                ((##fx= _g165220_ 1)
                 (apply (lambda (_ctx159701_)
                          (gx#core-context-prelude__% _ctx159701_))
                        _g165221_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g165221_))))))
    (define gx#core-module->prelude-context
      (lambda (_ctx159676_)
        (let* ((_ht159678_ (gx#current-expander-module-registry))
               (_$e159680_ (table-ref _ht159678_ _ctx159676_ '#f)))
          (if _$e159680_
              (values _$e159680_)
              (let ((_pre159683_
                     (let ((__obj165202
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
                       (gx#prelude-context:::init! __obj165202 _ctx159676_)
                       __obj165202)))
                (table-set! _ht159678_ _ctx159676_ _pre159683_)
                _pre159683_)))))
    (define gx#core-import-module__%
      (lambda (_rpath159557_ _reload?159558_)
        (letrec ((_import-source159560_
                  (lambda (_path159645_)
                    (if (member _path159645_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _path159645_)
                        '#!void)
                    (call-with-parameters
                     (lambda ()
                       (let ((_g165222_ (gx#core-read-module _path159645_)))
                         (begin
                           (let ((_g165223_
                                  (if (##values? _g165222_)
                                      (##vector-length _g165222_)
                                      1)))
                             (if (not (##fx= _g165223_ 4))
                                 (error "Context expects 4 values" _g165223_)))
                           (let ((_pre159648_ (##vector-ref _g165222_ 0))
                                 (_id159649_ (##vector-ref _g165222_ 1))
                                 (_ns159650_ (##vector-ref _g165222_ 2))
                                 (_body159651_ (##vector-ref _g165222_ 3)))
                             (let* ((_prelude159656_
                                     (if (class-instance?
                                          gx#prelude-context::t
                                          _pre159648_)
                                         _pre159648_
                                         (if (class-instance?
                                              gx#module-context::t
                                              _pre159648_)
                                             (gx#core-module->prelude-context
                                              _pre159648_)
                                             (if (string? _pre159648_)
                                                 (gx#core-module->prelude-context
                                                  (gx#core-import-module__0
                                                   _pre159648_))
                                                 (if (not _pre159648_)
                                                     (let ((_$e159653_
                                                            (gx#current-expander-module-prelude)))
                                                       (if _$e159653_
                                                           _$e159653_
                                                           (let ((__obj165203
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
                     (gx#prelude-context:::init! __obj165203 '#f)
                     __obj165203)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error '"Cannot import module; unknown prelude"
                                                            _rpath159557_
                                                            _pre159648_))))))
                                    (_ctx159658_
                                     (let ((__obj165204
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
                                        __obj165204
                                        _id159649_
                                        _prelude159656_
                                        _ns159650_
                                        _path159645_)
                                       __obj165204))
                                    (_body159660_
                                     (gx#core-expand-module-begin
                                      _body159651_
                                      _ctx159658_))
                                    (_body159662_
                                     (gx#core-quote-syntax__%
                                      (gx#core-cons '%#begin _body159660_)
                                      _path159645_
                                      _ctx159658_
                                      '())))
                               (unchecked-slot-set!
                                _ctx159658_
                                'e
                                (make-promise
                                 (lambda () (gx#eval-syntax* _body159662_))))
                               (unchecked-slot-set!
                                _ctx159658_
                                'code
                                _body159662_)
                               (table-set!
                                (gx#current-expander-module-registry)
                                _path159645_
                                _ctx159658_)
                               (table-set!
                                (gx#current-expander-module-registry)
                                _id159649_
                                _ctx159658_)
                               _ctx159658_)))))
                     gx#current-expander-context
                     (gx#core-context-root__0)
                     gx#current-expander-marks
                     '()
                     gx#current-expander-phi
                     '0
                     gx#current-expander-path
                     (cons _path159645_ (gx#current-expander-path))
                     gx#current-import-expander-phi
                     '#f
                     gx#current-export-expander-phi
                     '#f)))
                 (_import-submodule159561_
                  (lambda (_rpath159573_)
                    (let* ((_rpath159574159581_ _rpath159573_)
                           (_E159576159585_
                            (lambda ()
                              (error '"No clause matching"
                                     _rpath159574159581_)))
                           (_K159577159633_
                            (lambda (_refs159588_ _origin159589_)
                              (let ((_ctx159591_
                                     (if _origin159589_
                                         (gx#core-import-module__%
                                          _origin159589_
                                          _reload?159558_)
                                         (gx#current-expander-context))))
                                (let _lp159593_ ((_rest159595_ _refs159588_)
                                                 (_ctx159596_ _ctx159591_))
                                  (let* ((_rest159597159605_ _rest159595_)
                                         (_else159599159613_
                                          (lambda () _ctx159596_))
                                         (_K159601159621_
                                          (lambda (_rest159616_ _id159617_)
                                            (let ((_bind159619_
                                                   (gx#resolve-identifier__%
                                                    _id159617_
                                                    '0
                                                    _ctx159596_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _bind159619_
                                                        'gx#syntax-binding::t)
                                                       (class-instance?
                                                        gx#module-context::t
                                                        (##unchecked-structure-ref
                                                         _bind159619_
                                                         '4
                                                         gx#syntax-binding::t
                                                         '#f)))
                                                  (_lp159593_
                                                   _rest159616_
                                                   (##unchecked-structure-ref
                                                    _bind159619_
                                                    '4
                                                    gx#syntax-binding::t
                                                    '#f))
                                                  (error '"Cannot import submodule; not bound as a module"
                                                         _rpath159573_
                                                         _id159617_
                                                         _bind159619_))))))
                                    (if (##pair? _rest159597159605_)
                                        (let ((_hd159602159624_
                                               (##car _rest159597159605_))
                                              (_tl159603159626_
                                               (##cdr _rest159597159605_)))
                                          (let* ((_id159629_ _hd159602159624_)
                                                 (_rest159631_
                                                  _tl159603159626_))
                                            (_K159601159621_
                                             _rest159631_
                                             _id159629_)))
                                        (_else159599159613_))))))))
                      (if (##pair? _rpath159574159581_)
                          (let ((_hd159578159636_ (##car _rpath159574159581_))
                                (_tl159579159638_ (##cdr _rpath159574159581_)))
                            (let* ((_origin159641_ _hd159578159636_)
                                   (_refs159643_ _tl159579159638_))
                              (_K159577159633_ _refs159643_ _origin159641_)))
                          (_E159576159585_))))))
          (let ((_$e159563_
                 (if (not _reload?159558_)
                     (table-ref
                      (gx#current-expander-module-registry)
                      _rpath159557_
                      '#f)
                     '#f)))
            (if _$e159563_
                (values _$e159563_)
                (if (list? _rpath159557_)
                    (_import-submodule159561_ _rpath159557_)
                    (if (gx#core-library-module-path? _rpath159557_)
                        (let ((_ctx159566_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _rpath159557_)
                                _reload?159558_)))
                          (table-set!
                           (gx#current-expander-module-registry)
                           _rpath159557_
                           _ctx159566_)
                          _ctx159566_)
                        (let* ((_npath159568_ (path-normalize _rpath159557_))
                               (_$e159570_
                                (if (not _reload?159558_)
                                    (table-ref
                                     (gx#current-expander-module-registry)
                                     _npath159568_
                                     '#f)
                                    '#f)))
                          (if _$e159570_
                              (values _$e159570_)
                              (_import-source159560_ _npath159568_))))))))))
    (define gx#core-import-module__0
      (lambda (_rpath159669_)
        (let ((_reload?159671_ '#f))
          (gx#core-import-module__% _rpath159669_ _reload?159671_))))
    (define gx#core-import-module
      (lambda _g165225_
        (let ((_g165224_ (##length _g165225_)))
          (cond ((##fx= _g165224_ 1)
                 (apply (lambda (_rpath159669_)
                          (gx#core-import-module__0 _rpath159669_))
                        _g165225_))
                ((##fx= _g165224_ 2)
                 (apply (lambda (_rpath159673_ _reload?159674_)
                          (gx#core-import-module__%
                           _rpath159673_
                           _reload?159674_))
                        _g165225_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g165225_))))))
    (define gx#core-read-module
      (lambda (_path159546_)
        (with-catch
         (lambda (_exn159548_)
           (if (and (datum-parsing-exception? _exn159548_)
                    (eq? (datum-parsing-exception-filepos _exn159548_) '0))
               (gx#core-read-module/lang _path159546_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _path159546_
                (call-with-parameters
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_g159550159552_)
                      (display-exception _exn159548_ _g159550159552_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _path159546_)))))
    (define gx#core-read-module/sexp
      (lambda (_path159409_)
        (let _lp159411_ ((_body159413_ (read-syntax-from-file _path159409_))
                         (_pre159414_ '#f)
                         (_ns159415_ '#f)
                         (_pkg159416_ '#f))
          (let* ((_e159417159441_ _body159413_)
                 (_E159433159463_
                  (lambda ()
                    (let ((_g165226_
                           (if _pkg159416_
                               (values _pre159414_ _ns159415_ _pkg159416_)
                               (gx#core-read-module-package
                                _path159409_
                                _pre159414_
                                _ns159415_))))
                      (begin
                        (let ((_g165227_
                               (if (##values? _g165226_)
                                   (##vector-length _g165226_)
                                   1)))
                          (if (not (##fx= _g165227_ 3))
                              (error "Context expects 3 values" _g165227_)))
                        (let ((_pre159445_ (##vector-ref _g165226_ 0))
                              (_ns159446_ (##vector-ref _g165226_ 1))
                              (_pkg159447_ (##vector-ref _g165226_ 2)))
                          (let* ((_prelude159449_
                                  (if (gx#core-bound-module-prelude?
                                       _pre159445_)
                                      (gx#syntax-local-e__0 _pre159445_)
                                      (if (gx#core-library-module-path?
                                           _pre159445_)
                                          (gx#core-resolve-library-module-path
                                           _pre159445_)
                                          (if (gx#stx-string? _pre159445_)
                                              (gx#core-resolve-module-path__%
                                               _pre159445_
                                               _path159409_)
                                              (gx#stx-e _pre159445_)))))
                                 (_path-id159451_
                                  (gx#core-module-path->namespace
                                   _path159409_))
                                 (_pkg-id159453_
                                  (if _pkg159447_
                                      (string-append
                                       _pkg159447_
                                       '"/"
                                       _path-id159451_)
                                      _path-id159451_))
                                 (_module-id159455_
                                  (string->symbol _pkg-id159453_))
                                 (_module-ns159460_
                                  (if (eq? _ns159446_ '#!void)
                                      '#f
                                      (let ((_$e159457_ _ns159446_))
                                        (if _$e159457_
                                            _$e159457_
                                            _pkg-id159453_)))))
                            (values _prelude159449_
                                    _module-id159455_
                                    _module-ns159460_
                                    _body159413_)))))))
                 (_E159426159492_
                  (lambda ()
                    (if (gx#stx-pair? _e159417159441_)
                        (let ((_e159434159467_ (gx#syntax-e _e159417159441_)))
                          (let ((_hd159435159470_ (##car _e159434159467_))
                                (_tl159436159472_ (##cdr _e159434159467_)))
                            (if (eq? (gx#stx-e _hd159435159470_) 'package:)
                                (if (gx#stx-pair? _tl159436159472_)
                                    (let ((_e159437159475_
                                           (gx#syntax-e _tl159436159472_)))
                                      (let ((_hd159438159478_
                                             (##car _e159437159475_))
                                            (_tl159439159480_
                                             (##cdr _e159437159475_)))
                                        (let* ((_pkg159483_ _hd159438159478_)
                                               (_rest159485_ _tl159439159480_))
                                          (if '#t
                                              (let ((_pkg159490_
                                                     (if (gx#identifier?
                                                          _pkg159483_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _pkg159483_))
                                                         (if (or (gx#stx-string?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _pkg159483_)
                         (gx#stx-false? _pkg159483_))
                     (gx#stx-e _pkg159483_)
                     (gx#raise-syntax-error
                      'import
                      '"Bad syntax; Illegal package name"
                      _pkg159483_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp159411_
                                                 _rest159485_
                                                 _pre159414_
                                                 _ns159415_
                                                 _pkg159490_))
                                              (_E159433159463_)))))
                                    (_E159433159463_))
                                (_E159433159463_))))
                        (_E159433159463_))))
                 (_E159419159518_
                  (lambda ()
                    (if (gx#stx-pair? _e159417159441_)
                        (let ((_e159427159496_ (gx#syntax-e _e159417159441_)))
                          (let ((_hd159428159499_ (##car _e159427159496_))
                                (_tl159429159501_ (##cdr _e159427159496_)))
                            (if (eq? (gx#stx-e _hd159428159499_) 'namespace:)
                                (if (gx#stx-pair? _tl159429159501_)
                                    (let ((_e159430159504_
                                           (gx#syntax-e _tl159429159501_)))
                                      (let ((_hd159431159507_
                                             (##car _e159430159504_))
                                            (_tl159432159509_
                                             (##cdr _e159430159504_)))
                                        (let* ((_ns159512_ _hd159431159507_)
                                               (_rest159514_ _tl159432159509_))
                                          (if '#t
                                              (let ((_ns159516_
                                                     (if (gx#identifier?
                                                          _ns159512_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _ns159512_))
                                                         (if (gx#stx-string?
                                                              _ns159512_)
                                                             (gx#stx-e
                                                              _ns159512_)
                                                             (if (gx#stx-false?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _ns159512_)
                         '#!void
                         (gx#raise-syntax-error
                          'import
                          '"Bad syntax; illegal namespace"
                          _ns159512_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp159411_
                                                 _rest159514_
                                                 _pre159414_
                                                 _ns159516_
                                                 _pkg159416_))
                                              (_E159426159492_)))))
                                    (_E159426159492_))
                                (_E159426159492_))))
                        (_E159426159492_))))
                 (_E159418159542_
                  (lambda ()
                    (if (gx#stx-pair? _e159417159441_)
                        (let ((_e159420159522_ (gx#syntax-e _e159417159441_)))
                          (let ((_hd159421159525_ (##car _e159420159522_))
                                (_tl159422159527_ (##cdr _e159420159522_)))
                            (if (eq? (gx#stx-e _hd159421159525_) 'prelude:)
                                (if (gx#stx-pair? _tl159422159527_)
                                    (let ((_e159423159530_
                                           (gx#syntax-e _tl159422159527_)))
                                      (let ((_hd159424159533_
                                             (##car _e159423159530_))
                                            (_tl159425159535_
                                             (##cdr _e159423159530_)))
                                        (let* ((_prelude159538_
                                                _hd159424159533_)
                                               (_rest159540_ _tl159425159535_))
                                          (if '#t
                                              (_lp159411_
                                               _rest159540_
                                               _prelude159538_
                                               _ns159415_
                                               _pkg159416_)
                                              (_E159419159518_)))))
                                    (_E159419159518_))
                                (_E159419159518_))))
                        (_E159419159518_)))))
            (_E159418159542_)))))
    (define gx#core-read-module/lang
      (lambda (_path159236_)
        (letrec ((_default-read-module-body159238_
                  (lambda (_inp159401_)
                    (let _lp159403_ ((_body159405_ '()))
                      (let ((_next159407_ (read-syntax _inp159401_)))
                        (if (eof-object? _next159407_)
                            (reverse _body159405_)
                            (_lp159403_ (cons _next159407_ _body159405_)))))))
                 (_read-body159239_
                  (lambda (_inp159320_
                           _pre159321_
                           _ns159322_
                           _pkg159323_
                           _args159324_)
                    (let ((_g165228_
                           (if _pkg159323_
                               (values _pre159321_ _ns159322_ _pkg159323_)
                               (gx#core-read-module-package
                                _path159236_
                                _pre159321_
                                _ns159322_))))
                      (begin
                        (let ((_g165229_
                               (if (##values? _g165228_)
                                   (##vector-length _g165228_)
                                   1)))
                          (if (not (##fx= _g165229_ 3))
                              (error "Context expects 3 values" _g165229_)))
                        (let ((_pre159326_ (##vector-ref _g165228_ 0))
                              (_ns159327_ (##vector-ref _g165228_ 1))
                              (_pkg159328_ (##vector-ref _g165228_ 2)))
                          (let* ((_prelude159330_
                                  (gx#import-module__0 _pre159326_))
                                 (_read-module-body159384_
                                  (let ((_$e159376_
                                         (find (lambda (_e159331159333_)
                                                 (let* ((_g159335159345_
                                                         _e159331159333_)
                                                        (_else159337159353_
                                                         (lambda () '#f))
                                                        (_K159339159357_
                                                         (lambda () '#t)))
                                                   (if (##structure-direct-instance-of?
                                                        _g159335159345_
                                                        'gx#module-export::t)
                                                       (let* ((_e159340159360_
                                                               (##unchecked-structure-ref
                                                                _g159335159345_
                                                                '1
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e159341159363_
                                                               (##unchecked-structure-ref
                                                                _g159335159345_
                                                                '2
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e159342159366_
                                                               (##unchecked-structure-ref
                                                                _g159335159345_
                                                                '3
                                                                gx#module-export::t
                                                                '#f)))
                                                         (if (##eq? _e159342159366_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)
                     (let ((_e159343159369_
                            (##unchecked-structure-ref
                             _g159335159345_
                             '4
                             gx#module-export::t
                             '#f)))
                       (if ((lambda (_g159371159373_)
                              (eq? _g159371159373_ 'read-module-body))
                            _e159343159369_)
                           (_K159339159357_)
                           (_else159337159353_)))
                     (_else159337159353_)))
               (_else159337159353_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (unchecked-slot-ref
                                                _prelude159330_
                                                'export))))
                                    (if _$e159376_
                                        ((lambda (_xport159379_)
                                           (let ((_proc159382_
                                                  (with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (let ((__obj165205
                                                             (gx#core-resolve-module-export
                                                              _xport159379_)))
                                                        (if (##structure-direct-instance-of?
                                                             __obj165205
                                                             'gx#binding::t)
                                                            (##unchecked-structure-ref
                                                             __obj165205
                                                             '1
                                                             gx#binding::t
                                                             '#f)
                                                            (class-slot-ref
                                                             gx#binding::t
                                                             __obj165205
                                                             'id))))))))
                                             (if (procedure? _proc159382_)
                                                 _proc159382_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _path159236_
                                                  _pre159326_
                                                  _proc159382_))))
                                         _$e159376_)
                                        _default-read-module-body159238_)))
                                 (_path-id159386_
                                  (gx#core-module-path->namespace
                                   _path159236_))
                                 (_pkg-id159388_
                                  (if _pkg159328_
                                      (string-append
                                       _pkg159328_
                                       '"/"
                                       _path-id159386_)
                                      _path-id159386_))
                                 (_module-id159390_
                                  (string->symbol _pkg-id159388_))
                                 (_module-ns159395_
                                  (let ((_$e159392_ _ns159327_))
                                    (if _$e159392_ _$e159392_ _pkg-id159388_)))
                                 (_body159398_
                                  (call-with-parameters
                                   (lambda ()
                                     (_read-module-body159384_ _inp159320_))
                                   gx#current-module-reader-path
                                   _path159236_
                                   gx#current-module-reader-args
                                   _args159324_)))
                            (values _prelude159330_
                                    _module-id159390_
                                    _module-ns159395_
                                    _body159398_)))))))
                 (_string-e159240_
                  (lambda (_obj159317_ _what159318_)
                    (if (string? _obj159317_)
                        _obj159317_
                        (if (symbol? _obj159317_)
                            (symbol->string _obj159317_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _what159318_)
                             _path159236_
                             _obj159317_)))))
                 (_read-lang-args159241_
                  (lambda (_inp159272_ _args159273_)
                    (let* ((_args159274159282_ _args159273_)
                           (_else159276159290_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _path159236_)))
                           (_K159278159305_
                            (lambda (_args159293_ _prelude159294_)
                              (let* ((_pkg159296_
                                      (pgetq 'package: _args159293_))
                                     (_pkg159298_
                                      (if _pkg159296_
                                          (_string-e159240_
                                           _pkg159296_
                                           '"package")
                                          '#f))
                                     (_ns159300_
                                      (pgetq 'namespace: _args159293_))
                                     (_ns159302_
                                      (if _ns159300_
                                          (_string-e159240_
                                           _ns159300_
                                           '"namespace")
                                          '#f)))
                                (_read-body159239_
                                 _inp159272_
                                 _prelude159294_
                                 _ns159302_
                                 _pkg159298_
                                 _args159293_)))))
                      (if (##pair? _args159274159282_)
                          (let ((_hd159279159308_ (##car _args159274159282_))
                                (_tl159280159310_ (##cdr _args159274159282_)))
                            (let* ((_prelude159313_ _hd159279159308_)
                                   (_args159315_ _tl159280159310_))
                              (_K159278159305_ _args159315_ _prelude159313_)))
                          (_else159276159290_)))))
                 (_read-lang159242_
                  (lambda (_inp159247_)
                    (let* ((_head159249_ (read-line _inp159247_))
                           (_$e159251_ (string-index _head159249_ '#\space)))
                      (if _$e159251_
                          ((lambda (_ix159254_)
                             (let ((_lang159256_
                                    (substring _head159249_ '0 _ix159254_)))
                               (if (equal? _lang159256_ '"#lang")
                                   (let* ((_rest159258_
                                           (substring
                                            _head159249_
                                            (fx+ _ix159254_ '1)
                                            (string-length _head159249_)))
                                          (_args159269_
                                           (with-catch
                                            (lambda (_g159259159261_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _path159236_
                                               _g159259159261_))
                                            (lambda ()
                                              (call-with-input-string
                                               _rest159258_
                                               (lambda (_g159264159266_)
                                                 (read-all
                                                  _g159264159266_
                                                  read)))))))
                                     (_read-lang-args159241_
                                      _inp159247_
                                      _args159269_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _path159236_))))
                           _$e159251_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _path159236_)))))
                 (_read-e159243_
                  (lambda (_inp159245_)
                    (if (eq? (peek-char _inp159245_) '#\#)
                        (_read-lang159242_ _inp159245_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _path159236_)))))
          (gx#call-with-input-source-file _path159236_ _read-e159243_))))
    (define gx#core-read-module-package
      (lambda (_path159190_ _pre159191_ _ns159192_)
        (letrec ((_string-e159194_
                  (lambda (_e159234_)
                    (if (symbol? _e159234_)
                        (symbol->string _e159234_)
                        (if (string? _e159234_)
                            _e159234_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _e159234_))))))
          (let _lp159196_ ((_dir159198_ (path-directory _path159190_))
                           (_pkg-path159199_ '()))
            (let ((_gerbil.pkg159201_ (path-expand '"gerbil.pkg" _dir159198_)))
              (if (file-exists? _gerbil.pkg159201_)
                  (let ((_plist159203_
                         (gx#core-library-package-plist__% _dir159198_ '#t)))
                    (if (null? _plist159203_)
                        (let ((_pkg159205_
                               (if (not (null? _pkg-path159199_))
                                   (string-join _pkg-path159199_ '"/")
                                   '#f)))
                          (values _pre159191_ _ns159192_ _pkg159205_))
                        (if (list? _plist159203_)
                            (let* ((_root159207_
                                    (pgetq 'package: _plist159203_))
                                   (_pkg159211_
                                    (let ((_pkg-path159209_
                                           (if _root159207_
                                               (cons (_string-e159194_
                                                      _root159207_)
                                                     _pkg-path159199_)
                                               _pkg-path159199_)))
                                      (if (not (null? _pkg-path159209_))
                                          (string-join _pkg-path159209_ '"/")
                                          '#f)))
                                   (_ns159218_
                                    (let ((_ns159216_
                                           (let ((_$e159213_ _ns159192_))
                                             (if _$e159213_
                                                 _$e159213_
                                                 (pgetq 'namespace:
                                                        _plist159203_)))))
                                      (if _ns159216_
                                          (_string-e159194_ _ns159216_)
                                          '#f)))
                                   (_pre159223_
                                    (let ((_$e159220_ _pre159191_))
                                      (if _$e159220_
                                          _$e159220_
                                          (pgetq 'prelude: _plist159203_)))))
                              (values _pre159223_ _ns159218_ _pkg159211_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _plist159203_))))
                  (let ((_dir*159226_
                         (path-strip-trailing-directory-separator
                          _dir159198_)))
                    (if (or (string-empty? _dir*159226_)
                            (equal? _dir159198_ _dir*159226_))
                        (values _pre159191_ _ns159192_ '#f)
                        (let ((_xpath159231_
                               (path-strip-directory _dir*159226_))
                              (_xdir159232_ (path-directory _dir*159226_)))
                          (_lp159196_
                           _xdir159232_
                           (cons _xpath159231_ _pkg-path159199_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_path159188_)
        (path-strip-extension (path-strip-directory _path159188_))))
    (define gx#core-module-path->id
      (lambda (_path159186_)
        (string->symbol (gx#core-module-path->namespace _path159186_))))
    (define gx#core-resolve-module-path__%
      (lambda (_stx-path159165_ _rel159166_)
        (let* ((_path159168_ (gx#stx-e _stx-path159165_))
               (_path159170_
                (if (string-empty? (path-extension _path159168_))
                    (string-append _path159168_ '".ss")
                    _path159168_)))
          (gx#core-resolve-path__%
           _path159170_
           (let ((_$e159173_ (gx#stx-source _stx-path159165_)))
             (if _$e159173_ _$e159173_ _rel159166_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_stx-path159179_)
        (let ((_rel159181_ '#f))
          (gx#core-resolve-module-path__% _stx-path159179_ _rel159181_))))
    (define gx#core-resolve-module-path
      (lambda _g165231_
        (let ((_g165230_ (##length _g165231_)))
          (cond ((##fx= _g165230_ 1)
                 (apply (lambda (_stx-path159179_)
                          (gx#core-resolve-module-path__0 _stx-path159179_))
                        _g165231_))
                ((##fx= _g165230_ 2)
                 (apply (lambda (_stx-path159183_ _rel159184_)
                          (gx#core-resolve-module-path__%
                           _stx-path159183_
                           _rel159184_))
                        _g165231_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g165231_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_libpath159051_)
        (let* ((_spath159053_ (symbol->string (gx#stx-e _libpath159051_)))
               (_spath159055_
                (substring _spath159053_ '1 (string-length _spath159053_)))
               (_ext159057_ (path-extension _spath159055_))
               (_ssi159059_
                (if (string-empty? _ext159057_)
                    (string-append _spath159055_ '".ssi")
                    (string-append
                     (path-strip-extension _spath159055_)
                     '".ssi")))
               (_srcs159063_
                (if (string-empty? _ext159057_)
                    (map (lambda (_ext159061_)
                           (string-append _spath159055_ _ext159061_))
                         '(".ss" ".sld" ".scm"))
                    (cons _spath159055_ '()))))
          (let _lp159066_ ((_rest159068_
                            (gx#current-expander-module-library-path)))
            (let* ((_rest159069159078_ _rest159068_)
                   (_E159072159082_
                    (lambda ()
                      (error '"No clause matching" _rest159069159078_))))
              (let ((_K159074159152_
                     (lambda (_rest159093_ _dir159094_)
                       (letrec ((_resolve159096_
                                 (lambda (_ssi159108_ _srcs159109_)
                                   (let ((_compiled-path159111_
                                          (path-expand
                                           _ssi159108_
                                           _dir159094_)))
                                     (if (file-exists? _compiled-path159111_)
                                         (path-normalize _compiled-path159111_)
                                         (let _lpr159113_ ((_rest-src159115_
                                                            _srcs159109_))
                                           (let* ((_rest-src159116159124_
                                                   _rest-src159115_)
                                                  (_else159118159132_
                                                   (lambda ()
                                                     (_lp159066_
                                                      _rest159093_)))
                                                  (_K159120159140_
                                                   (lambda (_rest-src159135_
                                                            _src159136_)
                                                     (let ((_src-path159138_
                                                            (path-expand
                                                             _src159136_
                                                             _dir159094_)))
                                                       (if (file-exists?
                                                            _src-path159138_)
                                                           (path-normalize
                                                            _src-path159138_)
                                                           (_lpr159113_
                                                            _rest-src159135_))))))
                                             (if (##pair? _rest-src159116159124_)
                                                 (let ((_hd159121159143_
                                                        (##car _rest-src159116159124_))
                                                       (_tl159122159145_
                                                        (##cdr _rest-src159116159124_)))
                                                   (let* ((_src159148_
                                                           _hd159121159143_)
                                                          (_rest-src159150_
                                                           _tl159122159145_))
                                                     (_K159120159140_
                                                      _rest-src159150_
                                                      _src159148_)))
                                                 (_else159118159132_)))))))))
                         (let ((_$e159098_
                                (gx#core-library-package-path-prefix
                                 _dir159094_)))
                           (if _$e159098_
                               ((lambda (_prefix159101_)
                                  (if (string-prefix?
                                       _prefix159101_
                                       _spath159055_)
                                      (let ((_ssi159105_
                                             (substring
                                              _ssi159059_
                                              (string-length _prefix159101_)
                                              (string-length _ssi159059_)))
                                            (_srcs159106_
                                             (map (lambda (_src159103_)
                                                    (substring
                                                     _src159103_
                                                     (string-length
                                                      _prefix159101_)
                                                     (string-length
                                                      _src159103_)))
                                                  _srcs159063_)))
                                        (_resolve159096_
                                         _ssi159105_
                                         _srcs159106_))
                                      (_lp159066_ _rest159093_)))
                                _$e159098_)
                               (_resolve159096_ _ssi159059_ _srcs159063_))))))
                    (_K159073159087_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"Cannot find library module"
                        _libpath159051_))))
                (let ((_try-match159071159090_
                       (lambda ()
                         (if (##null? _rest159069159078_)
                             (_K159073159087_)
                             (_E159072159082_)))))
                  (if (##pair? _rest159069159078_)
                      (let ((_tl159076159157_ (##cdr _rest159069159078_))
                            (_hd159075159155_ (##car _rest159069159078_)))
                        (let ((_dir159160_ _hd159075159155_)
                              (_rest159162_ _tl159076159157_))
                          (_K159074159152_ _rest159162_ _dir159160_)))
                      (_try-match159071159090_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_modpath159024_)
        (letrec ((_resolve159026_
                  (lambda (_path159043_ _base159044_)
                    (let ((_$e159046_ (string-rindex _base159044_ '#\/)))
                      (if _$e159046_
                          ((lambda (_idx159049_)
                             (gx#core-resolve-library-module-path
                              (string->symbol
                               (string-append
                                '":"
                                (substring _base159044_ '0 _idx159049_)
                                '"/"
                                _path159043_))))
                           _$e159046_)
                          (gx#core-resolve-library-module-path
                           (string->symbol
                            (string-append '":" _path159043_))))))))
          (let ((_spath159028_ (symbol->string (gx#stx-e _modpath159024_)))
                (_mod159029_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _mod159029_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"Cannot resolve relative module path; not in module context"
                 _modpath159024_))
            (let ((_mpath159031_
                   (symbol->string
                    (let ((__obj165206 _mod159029_))
                      (if (##structure-direct-instance-of?
                           __obj165206
                           'gx#expander-context::t)
                          (##unchecked-structure-ref
                           __obj165206
                           '1
                           gx#expander-context::t
                           '#f)
                          (class-slot-ref
                           gx#expander-context::t
                           __obj165206
                           'id))))))
              (let _lp159033_ ((_spath159035_ _spath159028_)
                               (_mpath159036_ _mpath159031_))
                (if (string-prefix? '"../" _spath159035_)
                    (let ((_$e159038_ (string-rindex _mpath159036_ '#\/)))
                      (if _$e159038_
                          ((lambda (_idx159041_)
                             (_lp159033_
                              (substring
                               _spath159035_
                               '3
                               (string-length _spath159035_))
                              (substring _mpath159036_ '0 _idx159041_)))
                           _$e159038_)
                          (gx#raise-syntax-error
                           '#f
                           '"Cannot resolve relative module path; illegal traversal"
                           _modpath159024_)))
                    (if (string-prefix? '"./" _spath159035_)
                        (_lp159033_
                         (substring
                          _spath159035_
                          '2
                          (string-length _spath159035_))
                         _mpath159036_)
                        (_resolve159026_ _spath159035_ _mpath159036_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_dir159017_)
        (let ((_$e159019_
               (pgetq 'package:
                      (gx#core-library-package-plist__0 _dir159017_))))
          (if _$e159019_
              ((lambda (_pkg159022_)
                 (string-append (symbol->string _pkg159022_) '"/"))
               _$e159019_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_dir158989_ _exists?158990_)
        (let* ((_cache158992_ (gx#core-library-package-cache))
               (_$e158994_ (table-ref _cache158992_ _dir158989_ '#f)))
          (if _$e158994_
              (values _$e158994_)
              (let* ((_gerbil.pkg158997_
                      (path-expand '"gerbil.pkg" _dir158989_))
                     (_plist159004_
                      (if (or _exists?158990_
                              (file-exists? _gerbil.pkg158997_))
                          (let ((_e159002_
                                 (gx#call-with-input-source-file
                                  _gerbil.pkg158997_
                                  read)))
                            (if (eof-object? _e159002_)
                                '()
                                (if (list? _e159002_)
                                    _e159002_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _gerbil.pkg158997_
                                     _e159002_))))
                          '())))
                (table-set! _cache158992_ _dir158989_ _plist159004_)
                _plist159004_)))))
    (define gx#core-library-package-plist__0
      (lambda (_dir159010_)
        (let ((_exists?159012_ '#f))
          (gx#core-library-package-plist__% _dir159010_ _exists?159012_))))
    (define gx#core-library-package-plist
      (lambda _g165233_
        (let ((_g165232_ (##length _g165233_)))
          (cond ((##fx= _g165232_ 1)
                 (apply (lambda (_dir159010_)
                          (gx#core-library-package-plist__0 _dir159010_))
                        _g165233_))
                ((##fx= _g165232_ 2)
                 (apply (lambda (_dir159014_ _exists?159015_)
                          (gx#core-library-package-plist__%
                           _dir159014_
                           _exists?159015_))
                        _g165233_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g165233_))))))
    (define gx#core-library-package-cache
      (lambda ()
        (let ((_$e158983_ (gx#current-expander-module-library-package-cache)))
          (if _$e158983_
              (values _$e158983_)
              (let ((_cache158986_ (make-table)))
                (gx#current-expander-module-library-package-cache
                 _cache158986_)
                _cache158986_)))))
    (define gx#core-library-module-path?
      (lambda (_stx158980_) (gx#core-special-module-path? _stx158980_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_stx158978_) (gx#core-special-module-path? _stx158978_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_stx158973_ _char158974_)
        (if (gx#identifier? _stx158973_)
            (if (interned-symbol? (gx#stx-e _stx158973_))
                (let ((_str158976_ (symbol->string (gx#stx-e _stx158973_))))
                  (if (fx> (string-length _str158976_) '1)
                      (eq? (string-ref _str158976_ '0) _char158974_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_stx158967_)
        (gx#core-bound-identifier?__%
         _stx158967_
         (lambda (_g158968158970_)
           (gx#expander-binding?__% _g158968158970_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_stx158961_)
        (gx#core-bound-identifier?__%
         _stx158961_
         (lambda (_g158962158964_)
           (gx#expander-binding?__% _g158962158964_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_stx158948_)
        (letrec ((_module-prelude?158950_
                  (lambda (_e158956_)
                    (let ((_$e158958_
                           (class-instance? gx#module-context::t _e158956_)))
                      (if _$e158958_
                          _$e158958_
                          (class-instance?
                           gx#prelude-context::t
                           _e158956_))))))
          (gx#core-bound-identifier?__%
           _stx158948_
           (lambda (_g158951158953_)
             (gx#expander-binding?__%
              _g158951158953_
              _module-prelude?158950_))))))
    (define gx#core-bind-import!__%
      (lambda (_in158878_ _ctx158879_ _force-weak?158880_)
        (let* ((_in158881158890_ _in158878_)
               (_E158883158894_
                (lambda () (error '"No clause matching" _in158881158890_)))
               (_K158884158907_
                (lambda (_weak?158897_ _phi158898_ _key158899_ _source158900_)
                  (gx#core-bind!__%
                   _key158899_
                   (let* ((_e158902_
                           (gx#core-resolve-module-export _source158900_))
                          (__obj165207
                           (##structure
                            gx#import-binding::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                     (class-instance-init!
                      __obj165207
                      (unchecked-slot-ref _e158902_ 'id)
                      _key158899_
                      _phi158898_
                      _e158902_
                      (##unchecked-structure-ref
                       _source158900_
                       '1
                       gx#module-export::t
                       '#f)
                      (let ((_$e158904_ _force-weak?158880_))
                        (if _$e158904_ _$e158904_ _weak?158897_)))
                     __obj165207)
                   gx#core-context-rebind?
                   _phi158898_
                   _ctx158879_))))
          (if (##structure-direct-instance-of?
               _in158881158890_
               'gx#module-import::t)
              (let* ((_e158885158910_
                      (##unchecked-structure-ref
                       _in158881158890_
                       '1
                       gx#module-import::t
                       '#f))
                     (_source158913_ _e158885158910_)
                     (_e158886158915_
                      (##unchecked-structure-ref
                       _in158881158890_
                       '2
                       gx#module-import::t
                       '#f))
                     (_key158918_ _e158886158915_)
                     (_e158887158920_
                      (##unchecked-structure-ref
                       _in158881158890_
                       '3
                       gx#module-import::t
                       '#f))
                     (_phi158923_ _e158887158920_)
                     (_e158888158925_
                      (##unchecked-structure-ref
                       _in158881158890_
                       '4
                       gx#module-import::t
                       '#f))
                     (_weak?158928_ _e158888158925_))
                (_K158884158907_
                 _weak?158928_
                 _phi158923_
                 _key158918_
                 _source158913_))
              (_E158883158894_)))))
    (define gx#core-bind-import!__0
      (lambda (_in158933_)
        (let* ((_ctx158935_ (gx#current-expander-context))
               (_force-weak?158937_ '#f))
          (gx#core-bind-import!__%
           _in158933_
           _ctx158935_
           _force-weak?158937_))))
    (define gx#core-bind-import!__1
      (lambda (_in158939_ _ctx158940_)
        (let ((_force-weak?158942_ '#f))
          (gx#core-bind-import!__%
           _in158939_
           _ctx158940_
           _force-weak?158942_))))
    (define gx#core-bind-import!
      (lambda _g165235_
        (let ((_g165234_ (##length _g165235_)))
          (cond ((##fx= _g165234_ 1)
                 (apply (lambda (_in158933_)
                          (gx#core-bind-import!__0 _in158933_))
                        _g165235_))
                ((##fx= _g165234_ 2)
                 (apply (lambda (_in158939_ _ctx158940_)
                          (gx#core-bind-import!__1 _in158939_ _ctx158940_))
                        _g165235_))
                ((##fx= _g165234_ 3)
                 (apply (lambda (_in158944_ _ctx158945_ _force-weak?158946_)
                          (gx#core-bind-import!__%
                           _in158944_
                           _ctx158945_
                           _force-weak?158946_))
                        _g165235_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g165235_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_in158864_ _ctx158865_)
        (gx#core-bind-import!__% _in158864_ _ctx158865_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_in158870_)
        (let ((_ctx158872_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _in158870_ _ctx158872_))))
    (define gx#core-bind-weak-import!
      (lambda _g165237_
        (let ((_g165236_ (##length _g165237_)))
          (cond ((##fx= _g165236_ 1)
                 (apply (lambda (_in158870_)
                          (gx#core-bind-weak-import!__0 _in158870_))
                        _g165237_))
                ((##fx= _g165236_ 2)
                 (apply (lambda (_in158874_ _ctx158875_)
                          (gx#core-bind-weak-import!__%
                           _in158874_
                           _ctx158875_))
                        _g165237_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g165237_))))))
    (define gx#core-resolve-module-export
      (lambda (_out158755_)
        (letrec ((_subst158757_
                  (lambda (_key158803_)
                    (let* ((_key158804158812_ _key158803_)
                           (_else158806158820_ (lambda () _key158803_))
                           (_K158808158851_
                            (lambda (_mark158823_ _id158824_)
                              (let* ((_mark158825158831_ _mark158823_)
                                     (_E158827158835_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark158825158831_)))
                                     (_K158828158843_
                                      (lambda (_subst158838_)
                                        (let ((_$e158840_
                                               (if _subst158838_
                                                   (table-ref
                                                    _subst158838_
                                                    _id158824_
                                                    '#f)
                                                   '#f)))
                                          (if _$e158840_
                                              _$e158840_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _key158803_))))))
                                (if (class-instance?
                                     gx#expander-mark::t
                                     _mark158825158831_)
                                    (let* ((_e158829158846_
                                            (unchecked-slot-ref
                                             _mark158825158831_
                                             'subst))
                                           (_subst158849_ _e158829158846_))
                                      (_K158828158843_ _subst158849_))
                                    (_E158827158835_))))))
                      (if (##pair? _key158804158812_)
                          (let ((_hd158809158854_ (##car _key158804158812_))
                                (_tl158810158856_ (##cdr _key158804158812_)))
                            (let* ((_id158859_ _hd158809158854_)
                                   (_mark158861_ _tl158810158856_))
                              (_K158808158851_ _mark158861_ _id158859_)))
                          (_else158806158820_))))))
          (let* ((_out158758158768_ _out158755_)
                 (_E158760158772_
                  (lambda () (error '"No clause matching" _out158758158768_)))
                 (_K158761158779_
                  (lambda (_phi158775_ _key158776_ _ctx158777_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _ctx158777_ _phi158775_)
                     (_subst158757_ _key158776_)))))
            (if (##structure-direct-instance-of?
                 _out158758158768_
                 'gx#module-export::t)
                (let* ((_e158762158782_
                        (##unchecked-structure-ref
                         _out158758158768_
                         '1
                         gx#module-export::t
                         '#f))
                       (_ctx158785_ _e158762158782_)
                       (_e158763158787_
                        (##unchecked-structure-ref
                         _out158758158768_
                         '2
                         gx#module-export::t
                         '#f))
                       (_key158790_ _e158763158787_)
                       (_e158764158792_
                        (##unchecked-structure-ref
                         _out158758158768_
                         '3
                         gx#module-export::t
                         '#f))
                       (_phi158795_ _e158764158792_)
                       (_e158765158797_
                        (##unchecked-structure-ref
                         _out158758158768_
                         '4
                         gx#module-export::t
                         '#f))
                       (_e158766158800_
                        (##unchecked-structure-ref
                         _out158758158768_
                         '5
                         gx#module-export::t
                         '#f)))
                  (_K158761158779_ _phi158795_ _key158790_ _ctx158785_))
                (_E158760158772_))))))
    (define gx#core-module-export->import__%
      (lambda (_out158680_ _rename158681_ _dphi158682_)
        (let* ((_out158683158693_ _out158680_)
               (_E158685158697_
                (lambda () (error '"No clause matching" _out158683158693_)))
               (_K158686158709_
                (lambda (_weak?158700_
                         _name158701_
                         _phi158702_
                         _key158703_
                         _ctx158704_)
                  (let ((__obj165208
                         (##structure gx#module-import::t '#f '#f '#f '#f)))
                    (class-instance-init!
                     __obj165208
                     _out158680_
                     (let ((_$e158706_ _rename158681_))
                       (if _$e158706_ _$e158706_ _name158701_))
                     (fx+ _phi158702_ _dphi158682_)
                     _weak?158700_)
                    __obj165208))))
          (if (##structure-direct-instance-of?
               _out158683158693_
               'gx#module-export::t)
              (let* ((_e158687158712_
                      (##unchecked-structure-ref
                       _out158683158693_
                       '1
                       gx#module-export::t
                       '#f))
                     (_ctx158715_ _e158687158712_)
                     (_e158688158717_
                      (##unchecked-structure-ref
                       _out158683158693_
                       '2
                       gx#module-export::t
                       '#f))
                     (_key158720_ _e158688158717_)
                     (_e158689158722_
                      (##unchecked-structure-ref
                       _out158683158693_
                       '3
                       gx#module-export::t
                       '#f))
                     (_phi158725_ _e158689158722_)
                     (_e158690158727_
                      (##unchecked-structure-ref
                       _out158683158693_
                       '4
                       gx#module-export::t
                       '#f))
                     (_name158730_ _e158690158727_)
                     (_e158691158732_
                      (##unchecked-structure-ref
                       _out158683158693_
                       '5
                       gx#module-export::t
                       '#f))
                     (_weak?158735_ _e158691158732_))
                (_K158686158709_
                 _weak?158735_
                 _name158730_
                 _phi158725_
                 _key158720_
                 _ctx158715_))
              (_E158685158697_)))))
    (define gx#core-module-export->import__0
      (lambda (_out158740_)
        (let* ((_rename158742_ '#f) (_dphi158744_ '0))
          (gx#core-module-export->import__%
           _out158740_
           _rename158742_
           _dphi158744_))))
    (define gx#core-module-export->import__1
      (lambda (_out158746_ _rename158747_)
        (let ((_dphi158749_ '0))
          (gx#core-module-export->import__%
           _out158746_
           _rename158747_
           _dphi158749_))))
    (define gx#core-module-export->import
      (lambda _g165239_
        (let ((_g165238_ (##length _g165239_)))
          (cond ((##fx= _g165238_ 1)
                 (apply (lambda (_out158740_)
                          (gx#core-module-export->import__0 _out158740_))
                        _g165239_))
                ((##fx= _g165238_ 2)
                 (apply (lambda (_out158746_ _rename158747_)
                          (gx#core-module-export->import__1
                           _out158746_
                           _rename158747_))
                        _g165239_))
                ((##fx= _g165238_ 3)
                 (apply (lambda (_out158751_ _rename158752_ _dphi158753_)
                          (gx#core-module-export->import__%
                           _out158751_
                           _rename158752_
                           _dphi158753_))
                        _g165239_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g165239_))))))
    (define gx#core-expand-module%
      (lambda (_stx158608_)
        (letrec ((_make-context158610_
                  (lambda (_id158661_)
                    (let* ((_super158663_ (gx#current-expander-context))
                           (_bind-id158665_ (gx#stx-e _id158661_))
                           (_mod-id158667_
                            (if (class-instance?
                                 gx#module-context::t
                                 _super158663_)
                                (make-symbol__1
                                 (let ((__obj165209 _super158663_))
                                   (if (##structure-direct-instance-of?
                                        __obj165209
                                        'gx#expander-context::t)
                                       (##unchecked-structure-ref
                                        __obj165209
                                        '1
                                        gx#expander-context::t
                                        '#f)
                                       (class-slot-ref
                                        gx#expander-context::t
                                        __obj165209
                                        'id)))
                                 '"$"
                                 _bind-id158665_)
                                _bind-id158665_))
                           (_ns158669_ (symbol->string _mod-id158667_))
                           (_path158676_
                            (if (class-instance?
                                 gx#module-context::t
                                 _super158663_)
                                (let ((_path158671_
                                       (unchecked-slot-ref
                                        _super158663_
                                        'path)))
                                  (if (or (pair? _path158671_)
                                          (null? _path158671_))
                                      (cons _bind-id158665_ _path158671_)
                                      (if (not _path158671_)
                                          _bind-id158665_
                                          (cons _bind-id158665_
                                                (cons _path158671_ '())))))
                                _bind-id158665_)))
                      (let ((__obj165210
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
                         __obj165210
                         _mod-id158667_
                         _super158663_
                         _ns158669_
                         _path158676_)
                        __obj165210)))))
          (let* ((_e158611158621_ _stx158608_)
                 (_E158613158625_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e158611158621_)))
                 (_E158612158657_
                  (lambda ()
                    (if (gx#stx-pair? _e158611158621_)
                        (let ((_e158614158629_ (gx#syntax-e _e158611158621_)))
                          (let ((_hd158615158632_ (##car _e158614158629_))
                                (_tl158616158634_ (##cdr _e158614158629_)))
                            (if (gx#stx-pair? _tl158616158634_)
                                (let ((_e158617158637_
                                       (gx#syntax-e _tl158616158634_)))
                                  (let ((_hd158618158640_
                                         (##car _e158617158637_))
                                        (_tl158619158642_
                                         (##cdr _e158617158637_)))
                                    (let* ((_id158645_ _hd158618158640_)
                                           (_body158647_ _tl158619158642_))
                                      (if (and (gx#identifier? _id158645_)
                                               (gx#stx-list? _body158647_))
                                          (let* ((_ctx158649_
                                                  (_make-context158610_
                                                   _id158645_))
                                                 (_body158651_
                                                  (gx#core-expand-module-begin
                                                   _body158647_
                                                   _ctx158649_))
                                                 (_body158653_
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body158651_)
                                                   (gx#stx-source
                                                    _stx158608_))))
                                            (unchecked-slot-set!
                                             _ctx158649_
                                             'e
                                             (make-promise
                                              (lambda ()
                                                (gx#eval-syntax*
                                                 _body158653_))))
                                            (unchecked-slot-set!
                                             _ctx158649_
                                             'code
                                             _body158653_)
                                            (gx#core-bind-syntax!__0
                                             _id158645_
                                             _ctx158649_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-list
                                              '%#module
                                              (gx#core-quote-syntax__0
                                               _id158645_)
                                              _body158653_)
                                             (gx#stx-source _stx158608_)))
                                          (_E158613158625_)))))
                                (_E158613158625_))))
                        (_E158613158625_)))))
            (_E158612158657_)))))
    (define gx#core-expand-module-begin
      (lambda (_body158574_ _ctx158575_)
        (call-with-parameters
         (lambda ()
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_stx158578_
                   (gx#core-expand-head (cons '%%begin-module _body158574_)))
                  (_e158579158586_ _stx158578_)
                  (_E158581158590_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _stx158578_)))
                  (_E158580158604_
                   (lambda ()
                     (if (gx#stx-pair? _e158579158586_)
                         (let ((_e158582158594_ (gx#syntax-e _e158579158586_)))
                           (let ((_hd158583158597_ (##car _e158582158594_))
                                 (_tl158584158599_ (##cdr _e158582158594_)))
                             (if (and (gx#identifier? _hd158583158597_)
                                      (gx#core-identifier=?
                                       _hd158583158597_
                                       '%#begin-module))
                                 (let ((_body158602_ _tl158584158599_))
                                   (if '#t
                                       (if (gx#sealed-syntax? _stx158578_)
                                           _body158602_
                                           (gx#core-expand-module-body
                                            _body158602_))
                                       (_E158581158590_)))
                                 (_E158581158590_))))
                         (_E158581158590_)))))
             (_E158580158604_)))
         gx#current-expander-context
         _ctx158575_
         gx#current-expander-phi
         '0)))
    (define gx#core-expand-module-body
      (lambda (_body158370_)
        (letrec ((_expand-special158372_
                  (lambda (_hd158501_ _K158502_ _rest158503_ _r158504_)
                    (let* ((_e158505158522_ _hd158501_)
                           (_E158517158526_
                            (lambda ()
                              (_K158502_
                               _rest158503_
                               (cons (gx#core-expand-top _hd158501_)
                                     _r158504_))))
                           (_E158507158538_
                            (lambda ()
                              (if (gx#stx-pair? _e158505158522_)
                                  (let ((_e158518158530_
                                         (gx#syntax-e _e158505158522_)))
                                    (let ((_hd158519158533_
                                           (##car _e158518158530_))
                                          (_tl158520158535_
                                           (##cdr _e158518158530_)))
                                      (if (and (gx#identifier?
                                                _hd158519158533_)
                                               (gx#core-identifier=?
                                                _hd158519158533_
                                                '%#export))
                                          (if '#t
                                              (_K158502_
                                               _rest158503_
                                               (cons _hd158501_ _r158504_))
                                              (_E158517158526_))
                                          (_E158517158526_))))
                                  (_E158517158526_))))
                           (_E158506158570_
                            (lambda ()
                              (if (gx#stx-pair? _e158505158522_)
                                  (let ((_e158508158542_
                                         (gx#syntax-e _e158505158522_)))
                                    (let ((_hd158509158545_
                                           (##car _e158508158542_))
                                          (_tl158510158547_
                                           (##cdr _e158508158542_)))
                                      (if (and (gx#identifier?
                                                _hd158509158545_)
                                               (gx#core-identifier=?
                                                _hd158509158545_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl158510158547_)
                                              (let ((_e158511158550_
                                                     (gx#syntax-e
                                                      _tl158510158547_)))
                                                (let ((_hd158512158553_
                                                       (##car _e158511158550_))
                                                      (_tl158513158555_
                                                       (##cdr _e158511158550_)))
                                                  (let ((_hd-bind158558_
                                                         _hd158512158553_))
                                                    (if (gx#stx-pair?
                                                         _tl158513158555_)
                                                        (let ((_e158514158560_
                                                               (gx#syntax-e
                                                                _tl158513158555_)))
                                                          (let ((_hd158515158563_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e158514158560_))
                        (_tl158516158565_ (##cdr _e158514158560_)))
                    (let ((_expr158568_ _hd158515158563_))
                      (if (gx#stx-null? _tl158516158565_)
                          (if (gx#core-bind-values? _hd-bind158558_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind158558_)
                                (_K158502_
                                 _rest158503_
                                 (cons _hd158501_ _r158504_)))
                              (_E158507158538_))
                          (_E158507158538_)))))
                (_E158507158538_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E158507158538_))
                                          (_E158507158538_))))
                                  (_E158507158538_)))))
                      (_E158506158570_))))
                 (_expand-body158373_
                  (lambda (_rbody158375_)
                    (let _lp158377_ ((_rest158379_ _rbody158375_)
                                     (_body158380_ '()))
                      (let* ((_rest158381158389_ _rest158379_)
                             (_else158383158397_ (lambda () _body158380_))
                             (_K158385158489_
                              (lambda (_rest158400_ _hd158401_)
                                (let* ((_e158402158423_ _hd158401_)
                                       (_E158418158427_
                                        (lambda ()
                                          (_lp158377_
                                           _rest158400_
                                           (cons (gx#core-expand-expression
                                                  _hd158401_)
                                                 _body158380_))))
                                       (_E158414158441_
                                        (lambda ()
                                          (if (gx#stx-pair? _e158402158423_)
                                              (let ((_e158419158431_
                                                     (gx#syntax-e
                                                      _e158402158423_)))
                                                (let ((_hd158420158434_
                                                       (##car _e158419158431_))
                                                      (_tl158421158436_
                                                       (##cdr _e158419158431_)))
                                                  (let ((_form158439_
                                                         _hd158420158434_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _form158439_
                                                         gx#special-form-binding?)
                                                        (_lp158377_
                                                         _rest158400_
                                                         (cons _hd158401_
                                                               _body158380_))
                                                        (_E158418158427_)))))
                                              (_E158418158427_))))
                                       (_E158404158453_
                                        (lambda ()
                                          (if (gx#stx-pair? _e158402158423_)
                                              (let ((_e158415158445_
                                                     (gx#syntax-e
                                                      _e158402158423_)))
                                                (let ((_hd158416158448_
                                                       (##car _e158415158445_))
                                                      (_tl158417158450_
                                                       (##cdr _e158415158445_)))
                                                  (if (and (gx#identifier?
                                                            _hd158416158448_)
                                                           (gx#core-identifier=?
                                                            _hd158416158448_
                                                            '%#export))
                                                      (if '#t
                                                          (_lp158377_
                                                           _rest158400_
                                                           (cons (gx#core-expand-export%__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd158401_)
                         _body158380_))
                  (_E158414158441_))
              (_E158414158441_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E158414158441_))))
                                       (_E158403158485_
                                        (lambda ()
                                          (if (gx#stx-pair? _e158402158423_)
                                              (let ((_e158405158457_
                                                     (gx#syntax-e
                                                      _e158402158423_)))
                                                (let ((_hd158406158460_
                                                       (##car _e158405158457_))
                                                      (_tl158407158462_
                                                       (##cdr _e158405158457_)))
                                                  (if (and (gx#identifier?
                                                            _hd158406158460_)
                                                           (gx#core-identifier=?
                                                            _hd158406158460_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl158407158462_)
                                                          (let ((_e158408158465_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl158407158462_)))
                    (let ((_hd158409158468_ (##car _e158408158465_))
                          (_tl158410158470_ (##cdr _e158408158465_)))
                      (let ((_hd-bind158473_ _hd158409158468_))
                        (if (gx#stx-pair? _tl158410158470_)
                            (let ((_e158411158475_
                                   (gx#syntax-e _tl158410158470_)))
                              (let ((_hd158412158478_ (##car _e158411158475_))
                                    (_tl158413158480_ (##cdr _e158411158475_)))
                                (let ((_expr158483_ _hd158412158478_))
                                  (if (gx#stx-null? _tl158413158480_)
                                      (if '#t
                                          (_lp158377_
                                           _rest158400_
                                           (cons (gx#core-quote-syntax__1
                                                  (gx#core-list
                                                   '%#define-values
                                                   (gx#core-quote-bind-values
                                                    _hd-bind158473_)
                                                   (gx#core-expand-expression
                                                    _expr158483_))
                                                  (gx#stx-source _hd158401_))
                                                 _body158380_))
                                          (_E158404158453_))
                                      (_E158404158453_)))))
                            (_E158404158453_)))))
                  (_E158404158453_))
              (_E158404158453_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E158404158453_)))))
                                  (_E158403158485_)))))
                        (if (##pair? _rest158381158389_)
                            (let ((_hd158386158492_ (##car _rest158381158389_))
                                  (_tl158387158494_
                                   (##cdr _rest158381158389_)))
                              (let* ((_hd158497_ _hd158386158492_)
                                     (_rest158499_ _tl158387158494_))
                                (_K158385158489_ _rest158499_ _hd158497_)))
                            (_else158383158397_)))))))
          (_expand-body158373_
           (gx#core-expand-block__%
            (cons '%#begin-module _body158370_)
            _expand-special158372_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_stx158213_
               _expanded?158214_
               _method158215_
               _current-phi158216_
               _expand1158217_)
        (letrec ((_K158219_
                  (lambda (_rest158337_ _r158338_)
                    (let* ((_e158339158346_ _rest158337_)
                           (_E158341158350_ (lambda () _r158338_))
                           (_E158340158366_
                            (lambda ()
                              (if (gx#stx-pair? _e158339158346_)
                                  (let ((_e158342158354_
                                         (gx#syntax-e _e158339158346_)))
                                    (let ((_hd158343158357_
                                           (##car _e158342158354_))
                                          (_tl158344158359_
                                           (##cdr _e158342158354_)))
                                      (let* ((_hd158362_ _hd158343158357_)
                                             (_rest158364_ _tl158344158359_))
                                        (if '#t
                                            (_step158220_
                                             _hd158362_
                                             _rest158364_
                                             _r158338_)
                                            (_E158341158350_)))))
                                  (_E158341158350_)))))
                      (_E158340158366_))))
                 (_step158220_
                  (lambda (_hd158251_ _rest158252_ _r158253_)
                    (let* ((_e158254158272_ _hd158251_)
                           (_E158267158276_
                            (lambda ()
                              (if (_expanded?158214_ (gx#stx-e _hd158251_))
                                  (_K158219_
                                   _rest158252_
                                   (cons (gx#stx-e _hd158251_) _r158253_))
                                  (_expand1158217_
                                   _hd158251_
                                   _K158219_
                                   _rest158252_
                                   _r158253_))))
                           (_E158263158292_
                            (lambda ()
                              (if (gx#stx-pair? _e158254158272_)
                                  (let ((_e158268158280_
                                         (gx#syntax-e _e158254158272_)))
                                    (let ((_hd158269158283_
                                           (##car _e158268158280_))
                                          (_tl158270158285_
                                           (##cdr _e158268158280_)))
                                      (let* ((_macro158288_ _hd158269158283_)
                                             (_body158290_ _tl158270158285_))
                                        (if (gx#core-bound-identifier?__%
                                             _macro158288_
                                             gx#syntax-binding?)
                                            (_K158219_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _macro158288_)
                                                    _hd158251_
                                                    _method158215_)
                                                   _rest158252_)
                                             _r158253_)
                                            (_E158267158276_)))))
                                  (_E158267158276_))))
                           (_E158256158306_
                            (lambda ()
                              (if (gx#stx-pair? _e158254158272_)
                                  (let ((_e158264158296_
                                         (gx#syntax-e _e158254158272_)))
                                    (let ((_hd158265158299_
                                           (##car _e158264158296_))
                                          (_tl158266158301_
                                           (##cdr _e158264158296_)))
                                      (if (eq? (gx#stx-e _hd158265158299_)
                                               'begin:)
                                          (let ((_body158304_
                                                 _tl158266158301_))
                                            (if '#t
                                                (_K158219_
                                                 (gx#stx-foldr
                                                  cons
                                                  _rest158252_
                                                  _body158304_)
                                                 _r158253_)
                                                (_E158263158292_)))
                                          (_E158263158292_))))
                                  (_E158263158292_))))
                           (_E158255158333_
                            (lambda ()
                              (if (gx#stx-pair? _e158254158272_)
                                  (let ((_e158257158310_
                                         (gx#syntax-e _e158254158272_)))
                                    (let ((_hd158258158313_
                                           (##car _e158257158310_))
                                          (_tl158259158315_
                                           (##cdr _e158257158310_)))
                                      (if (eq? (gx#stx-e _hd158258158313_)
                                               'phi:)
                                          (if (gx#stx-pair? _tl158259158315_)
                                              (let ((_e158260158318_
                                                     (gx#syntax-e
                                                      _tl158259158315_)))
                                                (let ((_hd158261158321_
                                                       (##car _e158260158318_))
                                                      (_tl158262158323_
                                                       (##cdr _e158260158318_)))
                                                  (let* ((_dphi158326_
                                                          _hd158261158321_)
                                                         (_body158328_
                                                          _tl158262158323_))
                                                    (if (gx#stx-fixnum?
                                                         _dphi158326_)
                                                        (let ((_rbody158331_
                                                               (call-with-parameters
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_K158219_ _body158328_ '()))
                        _current-phi158216_
                        (fx+ (gx#stx-e _dphi158326_) (_current-phi158216_)))))
                  (_K158219_
                   _rest158252_
                   (foldr1 cons _r158253_ _rbody158331_)))
                (_E158256158306_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E158256158306_))
                                          (_E158256158306_))))
                                  (_E158256158306_)))))
                      (_E158255158333_)))))
          (let* ((_e158221158228_ _stx158213_)
                 (_E158223158232_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e158221158228_)))
                 (_E158222158247_
                  (lambda ()
                    (if (gx#stx-pair? _e158221158228_)
                        (let ((_e158224158236_ (gx#syntax-e _e158221158228_)))
                          (let ((_hd158225158239_ (##car _e158224158236_))
                                (_tl158226158241_ (##cdr _e158224158236_)))
                            (let ((_body158244_ _tl158226158241_))
                              (if '#t
                                  (if (_current-phi158216_)
                                      (_K158219_ _body158244_ '())
                                      (call-with-parameters
                                       (lambda () (_K158219_ _body158244_ '()))
                                       _current-phi158216_
                                       (gx#current-expander-phi)))
                                  (_E158223158232_)))))
                        (_E158223158232_)))))
            (_E158222158247_)))))
    (define gx#core-expand-import%__%
      (lambda (_stx157880_ _internal-expand?157881_)
        (letrec ((_expand1157883_
                  (lambda (_hd158193_ _K158194_ _rest158195_ _r158196_)
                    (if (gx#core-bound-module? _hd158193_)
                        (_import1157884_
                         (gx#syntax-local-e__0 _hd158193_)
                         _K158194_
                         _rest158195_
                         _r158196_)
                        (if (gx#core-library-module-path? _hd158193_)
                            (_import1157884_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _hd158193_))
                             _K158194_
                             _rest158195_
                             _r158196_)
                            (if (gx#core-library-relative-module-path?
                                 _hd158193_)
                                (_import1157884_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _hd158193_))
                                 _K158194_
                                 _rest158195_
                                 _r158196_)
                                (let ((_e158198_ (gx#stx-e _hd158193_)))
                                  (if (pair? _e158198_)
                                      (let ((_$e158200_
                                             (gx#stx-e (car _e158198_))))
                                        (if (eq? 'spec: _$e158200_)
                                            (_import-spec157887_
                                             _hd158193_
                                             _K158194_
                                             _rest158195_
                                             _r158196_)
                                            (if (eq? 'in: _$e158200_)
                                                (_import-submodule157885_
                                                 _hd158193_
                                                 _K158194_
                                                 _rest158195_
                                                 _r158196_)
                                                (if (eq? 'runtime: _$e158200_)
                                                    (_import-runtime157886_
                                                     _hd158193_
                                                     _K158194_
                                                     _rest158195_
                                                     _r158196_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _stx157880_
                                                     _hd158193_)))))
                                      (if (string? _e158198_)
                                          (_import1157884_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _hd158193_
                                             (gx#stx-source _stx157880_)))
                                           _K158194_
                                           _rest158195_
                                           _r158196_)
                                          (if (class-instance?
                                               gx#module-context::t
                                               _e158198_)
                                              (_K158194_
                                               _rest158195_
                                               (cons _e158198_ _r158196_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _stx157880_
                                               _hd158193_))))))))))
                 (_import1157884_
                  (lambda (_ctx158182_ _K158183_ _rest158184_ _r158185_)
                    (let ((_dphi158187_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_K158183_
                       _rest158184_
                       (cons (let ((__obj165211
                                    (##structure
                                     gx#import-set::t
                                     '#f
                                     '#f
                                     '#f)))
                               (class-instance-init!
                                __obj165211
                                _ctx158182_
                                _dphi158187_
                                (map (lambda (_g158188158190_)
                                       (gx#core-module-export->import__%
                                        _g158188158190_
                                        '#f
                                        _dphi158187_))
                                     (unchecked-slot-ref _ctx158182_ 'export)))
                               __obj165211)
                             _r158185_)))))
                 (_import-submodule157885_
                  (lambda (_hd158149_ _K158150_ _rest158151_ _r158152_)
                    (let* ((_e158153158160_ _hd158149_)
                           (_E158155158164_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e158153158160_)))
                           (_E158154158178_
                            (lambda ()
                              (if (gx#stx-pair? _e158153158160_)
                                  (let ((_e158156158168_
                                         (gx#syntax-e _e158153158160_)))
                                    (let ((_hd158157158171_
                                           (##car _e158156158168_))
                                          (_tl158158158173_
                                           (##cdr _e158156158168_)))
                                      (let ((_spath158176_ _tl158158158173_))
                                        (if '#t
                                            (_import1157884_
                                             (_import-spec-source157888_
                                              _spath158176_)
                                             _K158150_
                                             _rest158151_
                                             _r158152_)
                                            (_E158155158164_)))))
                                  (_E158155158164_)))))
                      (_E158154158178_))))
                 (_import-runtime157886_
                  (lambda (_hd158116_ _K158117_ _rest158118_ _r158119_)
                    (let* ((_e158120158127_ _hd158116_)
                           (_E158122158131_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e158120158127_)))
                           (_E158121158145_
                            (lambda ()
                              (if (gx#stx-pair? _e158120158127_)
                                  (let ((_e158123158135_
                                         (gx#syntax-e _e158120158127_)))
                                    (let ((_hd158124158138_
                                           (##car _e158123158135_))
                                          (_tl158125158140_
                                           (##cdr _e158123158135_)))
                                      (let ((_spath158143_ _tl158125158140_))
                                        (if '#t
                                            (_K158117_
                                             _rest158118_
                                             (cons (_import-spec-source157888_
                                                    _spath158143_)
                                                   _r158119_))
                                            (_E158122158131_)))))
                                  (_E158122158131_)))))
                      (_E158121158145_))))
                 (_import-spec157887_
                  (lambda (_hd157955_ _K157956_ _rest157957_ _r157958_)
                    (let* ((_e157959157976_ _hd157955_)
                           (_E157968157980_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e157959157976_)))
                           (_E157961158090_
                            (lambda ()
                              (if (gx#stx-pair? _e157959157976_)
                                  (let ((_e157969157984_
                                         (gx#syntax-e _e157959157976_)))
                                    (let ((_hd157970157987_
                                           (##car _e157969157984_))
                                          (_tl157971157989_
                                           (##cdr _e157969157984_)))
                                      (if (gx#stx-pair? _tl157971157989_)
                                          (let ((_e157972157992_
                                                 (gx#syntax-e
                                                  _tl157971157989_)))
                                            (let ((_hd157973157995_
                                                   (##car _e157972157992_))
                                                  (_tl157974157997_
                                                   (##cdr _e157972157992_)))
                                              (let* ((_path158000_
                                                      _hd157973157995_)
                                                     (_specs158002_
                                                      _tl157974157997_))
                                                (if '#t
                                                    (let ((_src-ctx158004_
                                                           (_import-spec-source157888_
                                                            _path158000_))
                                                          (_exports158005_
                                                           (make-table))
                                                          (_specs158006_
                                                           (gx#syntax->list
                                                            _specs158002_)))
                                                      (for-each
                                                       (lambda (_out158008_)
                                                         (table-set!
                                                          _exports158005_
                                                          (cons (##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _out158008_
                         '3
                         gx#module-export::t
                         '#f)
                        (##unchecked-structure-ref
                         _out158008_
                         '4
                         gx#module-export::t
                         '#f))
                  _out158008_))
               (unchecked-slot-ref _src-ctx158004_ 'export))
              (_K157956_
               _rest157957_
               (foldl1 (lambda (_spec158010_ _r158011_)
                         (let* ((_e158012158028_ _spec158010_)
                                (_E158014158032_
                                 (lambda ()
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid syntax-case clause"
                                    _e158012158028_)))
                                (_E158013158086_
                                 (lambda ()
                                   (if (gx#stx-pair? _e158012158028_)
                                       (let ((_e158015158036_
                                              (gx#syntax-e _e158012158028_)))
                                         (let ((_hd158016158039_
                                                (##car _e158015158036_))
                                               (_tl158017158041_
                                                (##cdr _e158015158036_)))
                                           (let ((_phi158044_
                                                  _hd158016158039_))
                                             (if (gx#stx-pair?
                                                  _tl158017158041_)
                                                 (let ((_e158018158046_
                                                        (gx#syntax-e
                                                         _tl158017158041_)))
                                                   (let ((_hd158019158049_
                                                          (##car _e158018158046_))
                                                         (_tl158020158051_
                                                          (##cdr _e158018158046_)))
                                                     (let ((_name158054_
                                                            _hd158019158049_))
                                                       (if (gx#stx-pair?
                                                            _tl158020158051_)
                                                           (let ((_e158021158056_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl158020158051_)))
                     (let ((_hd158022158059_ (##car _e158021158056_))
                           (_tl158023158061_ (##cdr _e158021158056_)))
                       (let ((_src-phi158064_ _hd158022158059_))
                         (if (gx#stx-pair? _tl158023158061_)
                             (let ((_e158024158066_
                                    (gx#syntax-e _tl158023158061_)))
                               (let ((_hd158025158069_ (##car _e158024158066_))
                                     (_tl158026158071_
                                      (##cdr _e158024158066_)))
                                 (let ((_src-name158074_ _hd158025158069_))
                                   (if (gx#stx-null? _tl158026158071_)
                                       (if (and (gx#stx-fixnum?
                                                 _src-phi158064_)
                                                (gx#identifier?
                                                 _src-name158074_)
                                                (gx#stx-fixnum? _phi158044_)
                                                (gx#identifier? _name158054_))
                                           (let ((_src-phi158076_
                                                  (gx#stx-e _src-phi158064_))
                                                 (_src-name158077_
                                                  (gx#core-identifier-key
                                                   _src-name158074_))
                                                 (_phi158078_
                                                  (gx#stx-e _phi158044_))
                                                 (_name158079_
                                                  (gx#core-identifier-key
                                                   _name158054_)))
                                             (let ((_$e158081_
                                                    (table-ref
                                                     _exports158005_
                                                     (cons _src-phi158076_
                                                           _src-name158077_)
                                                     '#f)))
                                               (if _$e158081_
                                                   ((lambda (_out158084_)
                                                      (cons (gx#core-module-export->import__%
                                                             _out158084_
                                                             _name158079_
                                                             (fx- _phi158078_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _src-phi158076_))
                    _r158011_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _$e158081_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; no matching export"
                                                    _stx157880_
                                                    _hd157955_))))
                                           (_E158014158032_))
                                       (_E158014158032_)))))
                             (_E158014158032_)))))
                   (_E158014158032_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E158014158032_)))))
                                       (_E158014158032_)))))
                           (_E158013158086_)))
                       _r157958_
                       _specs158006_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E157968157980_)))))
                                          (_E157968157980_))))
                                  (_E157968157980_))))
                           (_E157960158112_
                            (lambda ()
                              (if (gx#stx-pair? _e157959157976_)
                                  (let ((_e157962158094_
                                         (gx#syntax-e _e157959157976_)))
                                    (let ((_hd157963158097_
                                           (##car _e157962158094_))
                                          (_tl157964158099_
                                           (##cdr _e157962158094_)))
                                      (if (gx#stx-pair? _tl157964158099_)
                                          (let ((_e157965158102_
                                                 (gx#syntax-e
                                                  _tl157964158099_)))
                                            (let ((_hd157966158105_
                                                   (##car _e157965158102_))
                                                  (_tl157967158107_
                                                   (##cdr _e157965158102_)))
                                              (let ((_path158110_
                                                     _hd157966158105_))
                                                (if (gx#stx-null?
                                                     _tl157967158107_)
                                                    (if '#t
                                                        (_K157956_
                                                         _rest157957_
                                                         (cons (_import-spec-source157888_
                                                                _path158110_)
                                                               _r157958_))
                                                        (_E157961158090_))
                                                    (_E157961158090_)))))
                                          (_E157961158090_))))
                                  (_E157961158090_)))))
                      (_E157960158112_))))
                 (_import-spec-source157888_
                  (lambda (_spath157953_)
                    (gx#core-import-nested-module _spath157953_ _stx157880_)))
                 (_import!157889_
                  (lambda (_rbody157902_)
                    (letrec* ((_current-ctx157904_
                               (gx#current-expander-context))
                              (_deps157905_ (make-table 'test: eq?))
                              (_bind!157906_
                               (lambda (_hd157951_)
                                 (gx#core-bind-import!__1
                                  _hd157951_
                                  _current-ctx157904_))))
                      (let _lp157908_ ((_rest157910_ _rbody157902_)
                                       (_body157911_ '()))
                        (let* ((_rest157912157920_ _rest157910_)
                               (_else157914157930_
                                (lambda ()
                                  (if (class-instance?
                                       gx#module-context::t
                                       _current-ctx157904_)
                                      (unchecked-slot-set!
                                       _current-ctx157904_
                                       'import
                                       (foldl1 cons
                                               (unchecked-slot-ref
                                                _current-ctx157904_
                                                'import)
                                               _body157911_))
                                      '#!void)
                                  (table-for-each
                                   (lambda (_ctx157928_ _g165240_)
                                     (gx#eval-module _ctx157928_))
                                   _deps157905_)
                                  _body157911_))
                               (_K157916157939_
                                (lambda (_rest157933_ _hd157934_)
                                  (if (##structure-direct-instance-of?
                                       _hd157934_
                                       'gx#module-import::t)
                                      (begin
                                        (_bind!157906_ _hd157934_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _hd157934_
                                                   '3
                                                   gx#module-import::t
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _hd157934_
                                                            '1
                                                            gx#module-import::t
                                                            '#f)
                                                           '3
                                                           gx#module-export::t
                                                           '#f)))
                                            (table-set!
                                             _deps157905_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _hd157934_
                                               '1
                                               gx#module-import::t
                                               '#f)
                                              '1
                                              gx#module-export::t
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _hd157934_
                                           'gx#import-set::t)
                                          (begin
                                            (for-each
                                             _bind!157906_
                                             (##unchecked-structure-ref
                                              _hd157934_
                                              '3
                                              gx#import-set::t
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _hd157934_
                                                  '2
                                                  gx#import-set::t
                                                  '#f))
                                                (table-set!
                                                 _deps157905_
                                                 (##unchecked-structure-ref
                                                  _hd157934_
                                                  '1
                                                  gx#import-set::t
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_$e157936_
                                                 (class-instance?
                                                  gx#module-context::t
                                                  _hd157934_)))
                                            (if _$e157936_
                                                _$e157936_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _stx157880_
                                                 _hd157934_)))))
                                  (_lp157908_
                                   _rest157933_
                                   (cons _hd157934_ _body157911_)))))
                          (if (##pair? _rest157912157920_)
                              (let ((_hd157917157942_
                                     (##car _rest157912157920_))
                                    (_tl157918157944_
                                     (##cdr _rest157912157920_)))
                                (let* ((_hd157947_ _hd157917157942_)
                                       (_rest157949_ _tl157918157944_))
                                  (_K157916157939_ _rest157949_ _hd157947_)))
                              (_else157914157930_)))))))
                 (_expanded-import?157890_
                  (lambda (_e157894_)
                    (let ((_$e157896_
                           (##structure-direct-instance-of?
                            _e157894_
                            'gx#import-set::t)))
                      (if _$e157896_
                          _$e157896_
                          (let ((_$e157899_
                                 (##structure-direct-instance-of?
                                  _e157894_
                                  'gx#module-import::t)))
                            (if _$e157899_
                                _$e157899_
                                (class-instance?
                                 gx#module-context::t
                                 _e157894_))))))))
          (let ((_rbody157892_
                 (gx#core-expand-import/export
                  _stx157880_
                  _expanded-import?157890_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _expand1157883_)))
            (if _internal-expand?157881_
                (reverse _rbody157892_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_import!157889_ _rbody157892_))
                 (gx#stx-source _stx157880_)))))))
    (define gx#core-expand-import%__0
      (lambda (_stx158206_)
        (let ((_internal-expand?158208_ '#f))
          (gx#core-expand-import%__% _stx158206_ _internal-expand?158208_))))
    (define gx#core-expand-import%
      (lambda _g165242_
        (let ((_g165241_ (##length _g165242_)))
          (cond ((##fx= _g165241_ 1)
                 (apply (lambda (_stx158206_)
                          (gx#core-expand-import%__0 _stx158206_))
                        _g165242_))
                ((##fx= _g165241_ 2)
                 (apply (lambda (_stx158210_ _internal-expand?158211_)
                          (gx#core-expand-import%__%
                           _stx158210_
                           _internal-expand?158211_))
                        _g165242_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g165242_))))))
    (define gx#core-import-nested-module
      (lambda (_spath157807_ _where157808_)
        (let* ((_e157809157816_ _spath157807_)
               (_E157811157820_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e157809157816_)))
               (_E157810157875_
                (lambda ()
                  (if (gx#stx-pair? _e157809157816_)
                      (let ((_e157812157824_ (gx#syntax-e _e157809157816_)))
                        (let ((_hd157813157827_ (##car _e157812157824_))
                              (_tl157814157829_ (##cdr _e157812157824_)))
                          (let* ((_origin157832_ _hd157813157827_)
                                 (_sub157834_ _tl157814157829_))
                            (if '#t
                                (let ((_origin-ctx157836_
                                       (if (gx#stx-false? _origin157832_)
                                           (gx#current-expander-context)
                                           (gx#import-module__0
                                            _origin157832_))))
                                  (let _lp157838_ ((_rest157840_ _sub157834_)
                                                   (_ctx157841_
                                                    _origin-ctx157836_))
                                    (let* ((_e157842157849_ _rest157840_)
                                           (_E157844157853_
                                            (lambda () _ctx157841_))
                                           (_E157843157871_
                                            (lambda ()
                                              (if (gx#stx-pair?
                                                   _e157842157849_)
                                                  (let ((_e157845157857_
                                                         (gx#syntax-e
                                                          _e157842157849_)))
                                                    (let ((_hd157846157860_
                                                           (##car _e157845157857_))
                                                          (_tl157847157862_
                                                           (##cdr _e157845157857_)))
                                                      (let* ((_id157865_
                                                              _hd157846157860_)
                                                             (_rest157867_
                                                              _tl157847157862_))
                                                        (if '#t
                                                            (let ((_bind157869_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#resolve-identifier__%
                            _id157865_
                            '0
                            _ctx157841_)))
                      (if (and (##structure-direct-instance-of?
                                _bind157869_
                                'gx#syntax-binding::t)
                               (class-instance?
                                gx#module-context::t
                                (##unchecked-structure-ref
                                 _bind157869_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)))
                          '#!void
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; not bound as module"
                           _where157808_
                           _spath157807_
                           _id157865_))
                      (_lp157838_
                       _rest157867_
                       (##unchecked-structure-ref
                        _bind157869_
                        '4
                        gx#syntax-binding::t
                        '#f)))
                    (_E157844157853_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E157844157853_)))))
                                      (_E157843157871_))))
                                (_E157811157820_)))))
                      (_E157811157820_)))))
          (_E157810157875_))))
    (define gx#core-expand-import-source
      (lambda (_hd157805_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _hd157805_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_stx157313_ _internal-expand?157314_)
        (letrec* ((_make-export__165157165158_
                   (lambda (_bind157753_ _phi157754_ _ctx157755_ _name157756_)
                     (let* ((_key157758_
                             (unchecked-slot-ref _bind157753_ 'key))
                            (_export-key157760_
                             (if _name157756_
                                 (gx#core-identifier-key _name157756_)
                                 _key157758_)))
                       (let ((__obj165212
                              (##structure
                               gx#module-export::t
                               '#f
                               '#f
                               '#f
                               '#f
                               '#f)))
                         (class-instance-init!
                          __obj165212
                          _ctx157755_
                          _key157758_
                          _phi157754_
                          _export-key157760_
                          (let ((_$e157763_
                                 (class-instance?
                                  gx#extern-binding::t
                                  _bind157753_)))
                            (if _$e157763_
                                _$e157763_
                                (##structure-direct-instance-of?
                                 _bind157753_
                                 'gx#import-binding::t))))
                         __obj165212))))
                  (_make-export__0__165159165162_
                   (lambda (_bind157769_)
                     (let* ((_phi157771_ (gx#current-export-expander-phi))
                            (_ctx157773_ (gx#current-expander-context))
                            (_name157775_ '#f))
                       (_make-export__165157165158_
                        _bind157769_
                        _phi157771_
                        _ctx157773_
                        _name157775_))))
                  (_make-export__1__165160165163_
                   (lambda (_bind157777_ _phi157778_)
                     (let* ((_ctx157780_ (gx#current-expander-context))
                            (_name157782_ '#f))
                       (_make-export__165157165158_
                        _bind157777_
                        _phi157778_
                        _ctx157780_
                        _name157782_))))
                  (_make-export__2__165161165164_
                   (lambda (_bind157784_ _phi157785_ _ctx157786_)
                     (let ((_name157788_ '#f))
                       (_make-export__165157165158_
                        _bind157784_
                        _phi157785_
                        _ctx157786_
                        _name157788_))))
                  (_make-export157316_
                   (lambda _g165244_
                     (let ((_g165243_ (##length _g165244_)))
                       (cond ((##fx= _g165243_ 1)
                              (apply (lambda (_bind157769_)
                                       (_make-export__0__165159165162_
                                        _bind157769_))
                                     _g165244_))
                             ((##fx= _g165243_ 2)
                              (apply (lambda (_bind157777_ _phi157778_)
                                       (_make-export__1__165160165163_
                                        _bind157777_
                                        _phi157778_))
                                     _g165244_))
                             ((##fx= _g165243_ 3)
                              (apply (lambda (_bind157784_
                                              _phi157785_
                                              _ctx157786_)
                                       (_make-export__2__165161165164_
                                        _bind157784_
                                        _phi157785_
                                        _ctx157786_))
                                     _g165244_))
                             ((##fx= _g165243_ 4)
                              (apply (lambda (_bind157790_
                                              _phi157791_
                                              _ctx157792_
                                              _name157793_)
                                       (_make-export__165157165158_
                                        _bind157790_
                                        _phi157791_
                                        _ctx157792_
                                        _name157793_))
                                     _g165244_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g165244_))))))
                  (_expand1157317_
                   (lambda (_hd157466_ _K157467_ _rest157468_ _r157469_)
                     (let* ((_e157470157502_ _hd157466_)
                            (_E157497157506_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _stx157313_
                                _hd157466_)))
                            (_E157487157585_
                             (lambda ()
                               (if (gx#stx-pair? _e157470157502_)
                                   (let ((_e157498157510_
                                          (gx#syntax-e _e157470157502_)))
                                     (let ((_hd157499157513_
                                            (##car _e157498157510_))
                                           (_tl157500157515_
                                            (##cdr _e157498157510_)))
                                       (if (eq? (gx#stx-e _hd157499157513_)
                                                'import:)
                                           (let ((_in157518_ _tl157500157515_))
                                             (if (gx#stx-list? _in157518_)
                                                 (let _lp157520_ ((_in-rest157522_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _in157518_)
                          (_r157523_ _r157469_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_e157524157531_
                                                           _in-rest157522_)
                                                          (_E157526157535_
                                                           (lambda ()
                                                             (_K157467_
                                                              _rest157468_
                                                              _r157523_)))
                                                          (_E157525157581_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _e157524157531_)
                         (let ((_e157527157539_ (gx#syntax-e _e157524157531_)))
                           (let ((_hd157528157542_ (##car _e157527157539_))
                                 (_tl157529157544_ (##cdr _e157527157539_)))
                             (let* ((_hd157547_ _hd157528157542_)
                                    (_in-rest157549_ _tl157529157544_))
                               (if '#t
                                   (let ((_src157579_
                                          (if (gx#core-bound-module?
                                               _hd157547_)
                                              (gx#syntax-local-e__0 _hd157547_)
                                              (if (gx#core-library-module-path?
                                                   _hd157547_)
                                                  (gx#import-module__0
                                                   (gx#core-resolve-library-module-path
                                                    _hd157547_))
                                                  (if (gx#core-library-relative-module-path?
                                                       _hd157547_)
                                                      (gx#import-module__0
                                                       (gx#core-resolve-library-relative-module-path
                                                        _hd157547_))
                                                      (if (gx#stx-string?
                                                           _hd157547_)
                                                          (gx#import-module__0
                                                           (gx#core-resolve-module-path__%
                                                            _hd157547_
                                                            (gx#stx-source
                                                             _stx157313_)))
                                                          (let* ((_e157550157557_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd157547_)
                         (_E157552157561_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; illegal re-export"
                             _stx157313_
                             _hd157547_)))
                         (_E157551157575_
                          (lambda ()
                            (if (gx#stx-pair? _e157550157557_)
                                (let ((_e157553157565_
                                       (gx#syntax-e _e157550157557_)))
                                  (let ((_hd157554157568_
                                         (##car _e157553157565_))
                                        (_tl157555157570_
                                         (##cdr _e157553157565_)))
                                    (if (eq? (gx#stx-e _hd157554157568_) 'in:)
                                        (let ((_spath157573_ _tl157555157570_))
                                          (if '#t
                                              (gx#core-import-nested-module
                                               _spath157573_
                                               _stx157313_)
                                              (_E157552157561_)))
                                        (_E157552157561_))))
                                (_E157552157561_)))))
                    (_E157551157575_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_lp157520_
                                      _in-rest157549_
                                      (_export-imports157318_
                                       _src157579_
                                       _r157523_)))
                                   (_E157526157535_)))))
                         (_E157526157535_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E157525157581_)))
                                                 (_E157497157506_)))
                                           (_E157497157506_))))
                                   (_E157497157506_))))
                            (_E157474157624_
                             (lambda ()
                               (if (gx#stx-pair? _e157470157502_)
                                   (let ((_e157488157589_
                                          (gx#syntax-e _e157470157502_)))
                                     (let ((_hd157489157592_
                                            (##car _e157488157589_))
                                           (_tl157490157594_
                                            (##cdr _e157488157589_)))
                                       (if (eq? (gx#stx-e _hd157489157592_)
                                                'rename:)
                                           (if (gx#stx-pair? _tl157490157594_)
                                               (let ((_e157491157597_
                                                      (gx#syntax-e
                                                       _tl157490157594_)))
                                                 (let ((_hd157492157600_
                                                        (##car _e157491157597_))
                                                       (_tl157493157602_
                                                        (##cdr _e157491157597_)))
                                                   (let ((_id157605_
                                                          _hd157492157600_))
                                                     (if (gx#stx-pair?
                                                          _tl157493157602_)
                                                         (let ((_e157494157607_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl157493157602_)))
                   (let ((_hd157495157610_ (##car _e157494157607_))
                         (_tl157496157612_ (##cdr _e157494157607_)))
                     (let ((_name157615_ _hd157495157610_))
                       (if (gx#stx-null? _tl157496157612_)
                           (if '#t
                               (let* ((_phi157617_
                                       (gx#current-export-expander-phi))
                                      (_$e157619_
                                       (gx#core-resolve-identifier__1
                                        _id157605_
                                        _phi157617_)))
                                 (if _$e157619_
                                     ((lambda (_bind157622_)
                                        (_K157467_
                                         _rest157468_
                                         (cons (_make-export__165157165158_
                                                _bind157622_
                                                _phi157617_
                                                (gx#current-expander-context)
                                                _name157615_)
                                               _r157469_)))
                                      _$e157619_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Reference to unbound identifier"
                                      _stx157313_
                                      _hd157466_
                                      _id157605_)))
                               (_E157487157585_))
                           (_E157487157585_)))))
                 (_E157487157585_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E157487157585_))
                                           (_E157487157585_))))
                                   (_E157487157585_))))
                            (_E157473157673_
                             (lambda ()
                               (if (gx#stx-pair? _e157470157502_)
                                   (let ((_e157475157628_
                                          (gx#syntax-e _e157470157502_)))
                                     (let ((_hd157476157631_
                                            (##car _e157475157628_))
                                           (_tl157477157633_
                                            (##cdr _e157475157628_)))
                                       (if (eq? (gx#stx-e _hd157476157631_)
                                                'spec:)
                                           (if (gx#stx-pair? _tl157477157633_)
                                               (let ((_e157478157636_
                                                      (gx#syntax-e
                                                       _tl157477157633_)))
                                                 (let ((_hd157479157639_
                                                        (##car _e157478157636_))
                                                       (_tl157480157641_
                                                        (##cdr _e157478157636_)))
                                                   (let ((_phi157644_
                                                          _hd157479157639_))
                                                     (if (gx#stx-pair?
                                                          _tl157480157641_)
                                                         (let ((_e157481157646_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl157480157641_)))
                   (let ((_hd157482157649_ (##car _e157481157646_))
                         (_tl157483157651_ (##cdr _e157481157646_)))
                     (let ((_id157654_ _hd157482157649_))
                       (if (gx#stx-pair? _tl157483157651_)
                           (let ((_e157484157656_
                                  (gx#syntax-e _tl157483157651_)))
                             (let ((_hd157485157659_ (##car _e157484157656_))
                                   (_tl157486157661_ (##cdr _e157484157656_)))
                               (let ((_name157664_ _hd157485157659_))
                                 (if (gx#stx-null? _tl157486157661_)
                                     (if (and (gx#stx-fixnum? _phi157644_)
                                              (gx#identifier? _id157654_)
                                              (gx#identifier? _name157664_))
                                         (let* ((_phi157666_
                                                 (gx#stx-e _phi157644_))
                                                (_$e157668_
                                                 (gx#core-resolve-identifier__1
                                                  _id157654_
                                                  _phi157666_)))
                                           (if _$e157668_
                                               ((lambda (_bind157671_)
                                                  (_K157467_
                                                   _rest157468_
                                                   (cons (_make-export__165157165158_
                                                          _bind157671_
                                                          _phi157666_
                                                          (gx#current-expander-context)
                                                          _name157664_)
                                                         _r157469_)))
                                                _$e157668_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _stx157313_
                                                _hd157466_
                                                _id157654_)))
                                         (_E157474157624_))
                                     (_E157474157624_)))))
                           (_E157474157624_)))))
                 (_E157474157624_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E157474157624_))
                                           (_E157474157624_))))
                                   (_E157474157624_))))
                            (_E157472157684_
                             (lambda ()
                               (let ((_id157677_ _e157470157502_))
                                 (if (gx#identifier? _id157677_)
                                     (let ((_$e157679_
                                            (gx#core-resolve-identifier__1
                                             _id157677_
                                             (gx#current-export-expander-phi))))
                                       (if _$e157679_
                                           ((lambda (_bind157682_)
                                              (_K157467_
                                               _rest157468_
                                               (cons (_make-export__0__165159165162_
                                                      _bind157682_)
                                                     _r157469_)))
                                            _$e157679_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _stx157313_
                                            _hd157466_)))
                                     (_E157473157673_)))))
                            (_E157471157748_
                             (lambda ()
                               (if (eq? (gx#stx-e _e157470157502_) '#t)
                                   (if '#t
                                       (let* ((_current-ctx157688_
                                               (gx#current-expander-context))
                                              (_current-phi157690_
                                               (gx#current-export-expander-phi))
                                              (_phi-ctx157692_
                                               (gx#core-context-shift
                                                _current-ctx157688_
                                                _current-phi157690_))
                                              (_phi-bind157694_
                                               (table->list
                                                (unchecked-slot-ref
                                                 _phi-ctx157692_
                                                 'table))))
                                         (let _lp157697_ ((_bind-rest157699_
                                                           _phi-bind157694_)
                                                          (_set157700_ '()))
                                           (let* ((_bind-rest157701157711_
                                                   _bind-rest157699_)
                                                  (_else157703157719_
                                                   (lambda ()
                                                     (_K157467_
                                                      _rest157468_
                                                      (cons (let ((__obj165213
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (##structure gx#export-set::t '#f '#f '#f)))
                      (class-instance-init!
                       __obj165213
                       '#f
                       _current-phi157690_
                       _set157700_)
                      __obj165213)
                    _r157469_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_K157705157729_
                                                   (lambda (_bind-rest157722_
                                                            _bind157723_
                                                            _key157724_)
                                                     (if (or (##structure-direct-instance-of?
                                                              _bind157723_
                                                              'gx#import-binding::t)
                                                             (gx#private-feature-binding?
                                                              _bind157723_))
                                                         (_lp157697_
                                                          _bind-rest157722_
                                                          _set157700_)
                                                         (_lp157697_
                                                          _bind-rest157722_
                                                          (cons (_make-export__2__165161165164_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind157723_
                         _current-phi157690_
                         _current-ctx157688_)
                        _set157700_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _bind-rest157701157711_)
                                                 (let ((_hd157706157732_
                                                        (##car _bind-rest157701157711_))
                                                       (_tl157707157734_
                                                        (##cdr _bind-rest157701157711_)))
                                                   (if (##pair? _hd157706157732_)
                                                       (let ((_hd157708157737_
                                                              (##car _hd157706157732_))
                                                             (_tl157709157739_
                                                              (##cdr _hd157706157732_)))
                                                         (let* ((_key157742_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd157708157737_)
                        (_bind157744_ _tl157709157739_)
                        (_bind-rest157746_ _tl157707157734_))
                   (_K157705157729_
                    _bind-rest157746_
                    _bind157744_
                    _key157742_)))
               (_else157703157719_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_else157703157719_)))))
                                       (_E157472157684_))
                                   (_E157472157684_)))))
                       (_E157471157748_))))
                  (_export-imports157318_
                   (lambda (_src157342_ _r157343_)
                     (letrec* ((_current-ctx157345_
                                (gx#current-expander-context))
                               (_current-phi157346_
                                (gx#current-export-expander-phi))
                               (_import->export157347_
                                (lambda (_in157428_)
                                  (let* ((_in157429157437_ _in157428_)
                                         (_E157431157441_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _in157429157437_)))
                                         (_K157432157448_
                                          (lambda (_phi157444_
                                                   _key157445_
                                                   _out157446_)
                                            (let ((__obj165214
                                                   (##structure
                                                    gx#module-export::t
                                                    '#f
                                                    '#f
                                                    '#f
                                                    '#f
                                                    '#f)))
                                              (class-instance-init!
                                               __obj165214
                                               _current-ctx157345_
                                               _key157445_
                                               _phi157444_
                                               _key157445_
                                               '#t)
                                              __obj165214))))
                                    (if (##structure-direct-instance-of?
                                         _in157429157437_
                                         'gx#module-import::t)
                                        (let* ((_e157433157451_
                                                (##unchecked-structure-ref
                                                 _in157429157437_
                                                 '1
                                                 gx#module-import::t
                                                 '#f))
                                               (_out157454_ _e157433157451_)
                                               (_e157434157456_
                                                (##unchecked-structure-ref
                                                 _in157429157437_
                                                 '2
                                                 gx#module-import::t
                                                 '#f))
                                               (_key157459_ _e157434157456_)
                                               (_e157435157461_
                                                (##unchecked-structure-ref
                                                 _in157429157437_
                                                 '3
                                                 gx#module-import::t
                                                 '#f))
                                               (_phi157464_ _e157435157461_))
                                          (_K157432157448_
                                           _phi157464_
                                           _key157459_
                                           _out157454_))
                                        (_E157431157441_)))))
                               (_fold-e157348_
                                (lambda (_in157350_ _r157351_)
                                  (let* ((_in157352157366_ _in157350_)
                                         (_else157355157374_
                                          (lambda () _r157351_)))
                                    (let ((_K157361157410_
                                           (lambda (_phi157406_
                                                    _key157407_
                                                    _out157408_)
                                             (if (and (fx= _phi157406_
                                                           _current-phi157346_)
                                                      (eq? _src157342_
                                                           (##unchecked-structure-ref
                                                            _out157408_
                                                            '1
                                                            gx#module-export::t
                                                            '#f)))
                                                 (cons (_import->export157347_
                                                        _in157350_)
                                                       _r157351_)
                                                 _r157351_)))
                                          (_K157357157385_
                                           (lambda (_imports157378_
                                                    _phi157379_
                                                    _ctx157380_)
                                             (if (and (fx= _phi157379_
                                                           _current-phi157346_)
                                                      (eq? _src157342_
                                                           _ctx157380_))
                                                 (foldl1 (lambda (_in157382_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r157383_)
                   (cons (_import->export157347_ _in157382_) _r157383_))
                 _r157351_
                 _imports157378_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _r157351_))))
                                      (let ((_try-match157354157403_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _in157352157366_
                                                    'gx#import-set::t)
                                                   (let* ((_e157358157388_
                                                           (##unchecked-structure-ref
                                                            _in157352157366_
                                                            '1
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e157359157393_
                                                           (##unchecked-structure-ref
                                                            _in157352157366_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e157360157398_
                                                           (##unchecked-structure-ref
                                                            _in157352157366_
                                                            '3
                                                            gx#import-set::t
                                                            '#f)))
                                                     (let ((_ctx157391_
                                                            _e157358157388_)
                                                           (_phi157396_
                                                            _e157359157393_)
                                                           (_imports157401_
                                                            _e157360157398_))
                                                       (_K157357157385_
                                                        _imports157401_
                                                        _phi157396_
                                                        _ctx157391_)))
                                                   (_else157355157374_)))))
                                        (if (##structure-direct-instance-of?
                                             _in157352157366_
                                             'gx#module-import::t)
                                            (let* ((_e157362157413_
                                                    (##unchecked-structure-ref
                                                     _in157352157366_
                                                     '1
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e157363157418_
                                                    (##unchecked-structure-ref
                                                     _in157352157366_
                                                     '2
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e157364157423_
                                                    (##unchecked-structure-ref
                                                     _in157352157366_
                                                     '3
                                                     gx#module-import::t
                                                     '#f)))
                                              (let ((_out157416_
                                                     _e157362157413_)
                                                    (_key157421_
                                                     _e157363157418_)
                                                    (_phi157426_
                                                     _e157364157423_))
                                                (_K157361157410_
                                                 _phi157426_
                                                 _key157421_
                                                 _out157416_)))
                                            (_try-match157354157403_))))))))
                       (cons (let ((__obj165215
                                    (##structure
                                     gx#export-set::t
                                     '#f
                                     '#f
                                     '#f)))
                               (class-instance-init!
                                __obj165215
                                _src157342_
                                _current-phi157346_
                                (foldl1 _fold-e157348_
                                        '()
                                        (unchecked-slot-ref
                                         _current-ctx157345_
                                         'import)))
                               __obj165215)
                             _r157343_))))
                  (_export!157319_
                   (lambda (_rbody157332_)
                     (letrec* ((_current-ctx157334_
                                (gx#current-expander-context))
                               (_fold-e157335_
                                (lambda (_out157339_ _r157340_)
                                  (if (##structure-direct-instance-of?
                                       _out157339_
                                       'gx#module-export::t)
                                      (cons _out157339_ _r157340_)
                                      (if (##structure-direct-instance-of?
                                           _out157339_
                                           'gx#export-set::t)
                                          (foldl1 cons
                                                  _r157340_
                                                  (##unchecked-structure-ref
                                                   _out157339_
                                                   '3
                                                   gx#export-set::t
                                                   '#f))
                                          _r157340_)))))
                       (let ((_body157337_ (reverse _rbody157332_)))
                         (unchecked-slot-set!
                          _current-ctx157334_
                          'export
                          (foldl1 _fold-e157335_
                                  (unchecked-slot-ref
                                   _current-ctx157334_
                                   'export)
                                  _body157337_))
                         _body157337_))))
                  (_expanded-export?157320_
                   (lambda (_e157327_)
                     (let ((_$e157329_
                            (##structure-direct-instance-of?
                             _e157327_
                             'gx#module-export::t)))
                       (if _$e157329_
                           _$e157329_
                           (##structure-direct-instance-of?
                            _e157327_
                            'gx#export-set::t))))))
          (if (or (class-instance?
                   gx#module-context::t
                   (gx#current-expander-context))
                  _internal-expand?157314_)
              (let ((_rbody157325_
                     (gx#core-expand-import/export
                      _stx157313_
                      _expanded-export?157320_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _expand1157317_)))
                (if _internal-expand?157314_
                    (reverse _rbody157325_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons '%#export (_export!157319_ _rbody157325_))
                     (gx#stx-source _stx157313_))))
              (if (class-instance?
                   gx#top-context::t
                   (gx#current-expander-context))
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _stx157313_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _stx157313_))))))
    (define gx#core-expand-export%__0
      (lambda (_stx157798_)
        (let ((_internal-expand?157800_ '#f))
          (gx#core-expand-export%__% _stx157798_ _internal-expand?157800_))))
    (define gx#core-expand-export%
      (lambda _g165246_
        (let ((_g165245_ (##length _g165246_)))
          (cond ((##fx= _g165245_ 1)
                 (apply (lambda (_stx157798_)
                          (gx#core-expand-export%__0 _stx157798_))
                        _g165246_))
                ((##fx= _g165245_ 2)
                 (apply (lambda (_stx157802_ _internal-expand?157803_)
                          (gx#core-expand-export%__%
                           _stx157802_
                           _internal-expand?157803_))
                        _g165246_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g165246_))))))
    (define gx#core-expand-export-source
      (lambda (_hd157310_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _hd157310_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_stx157280_)
        (let* ((_e157281157288_ _stx157280_)
               (_E157283157292_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e157281157288_)))
               (_E157282157306_
                (lambda ()
                  (if (gx#stx-pair? _e157281157288_)
                      (let ((_e157284157296_ (gx#syntax-e _e157281157288_)))
                        (let ((_hd157285157299_ (##car _e157284157296_))
                              (_tl157286157301_ (##cdr _e157284157296_)))
                          (let ((_body157304_ _tl157286157301_))
                            (if (gx#identifier-list? _body157304_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _body157304_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _body157304_))
                                   (gx#stx-source _stx157280_)))
                                (_E157283157292_)))))
                      (_E157283157292_)))))
          (_E157282157306_))))
    (define gx#core-bind-feature!__%
      (lambda (_id157246_ _private?157247_ _phi157248_ _ctx157249_)
        (gx#core-bind-syntax!__%
         _id157246_
         ((if _private?157247_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _id157246_))
         _private?157247_
         _phi157248_
         _ctx157249_)))
    (define gx#core-bind-feature!__0
      (lambda (_id157254_)
        (let* ((_private?157256_ '#f)
               (_phi157258_ (gx#current-expander-phi))
               (_ctx157260_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id157254_
           _private?157256_
           _phi157258_
           _ctx157260_))))
    (define gx#core-bind-feature!__1
      (lambda (_id157262_ _private?157263_)
        (let* ((_phi157265_ (gx#current-expander-phi))
               (_ctx157267_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id157262_
           _private?157263_
           _phi157265_
           _ctx157267_))))
    (define gx#core-bind-feature!__2
      (lambda (_id157269_ _private?157270_ _phi157271_)
        (let ((_ctx157273_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id157269_
           _private?157270_
           _phi157271_
           _ctx157273_))))
    (define gx#core-bind-feature!
      (lambda _g165248_
        (let ((_g165247_ (##length _g165248_)))
          (cond ((##fx= _g165247_ 1)
                 (apply (lambda (_id157254_)
                          (gx#core-bind-feature!__0 _id157254_))
                        _g165248_))
                ((##fx= _g165247_ 2)
                 (apply (lambda (_id157262_ _private?157263_)
                          (gx#core-bind-feature!__1
                           _id157262_
                           _private?157263_))
                        _g165248_))
                ((##fx= _g165247_ 3)
                 (apply (lambda (_id157269_ _private?157270_ _phi157271_)
                          (gx#core-bind-feature!__2
                           _id157269_
                           _private?157270_
                           _phi157271_))
                        _g165248_))
                ((##fx= _g165247_ 4)
                 (apply (lambda (_id157275_
                                 _private?157276_
                                 _phi157277_
                                 _ctx157278_)
                          (gx#core-bind-feature!__%
                           _id157275_
                           _private?157276_
                           _phi157277_
                           _ctx157278_))
                        _g165248_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g165248_))))))))
