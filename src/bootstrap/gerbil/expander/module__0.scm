(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1707831899)
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
      (lambda _$args163130_
        (apply make-instance gx#module-import::t _$args163130_)))
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
      (lambda _$args163127_
        (apply make-instance gx#module-export::t _$args163127_)))
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
      (lambda _$args163124_
        (apply make-instance gx#import-set::t _$args163124_)))
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
      (lambda _$args163121_
        (apply make-instance gx#export-set::t _$args163121_)))
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
      (lambda _$args163118_
        (apply make-instance gx#import-expander::t _$args163118_)))
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
      (lambda _$args163115_
        (apply make-instance gx#export-expander::t _$args163115_)))
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
      (lambda _$args163112_
        (apply make-instance gx#import-export-expander::t _$args163112_)))
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
      (lambda (_path163109_ _fun163110_)
        (call-with-input-file
         (cons 'path: (cons _path163109_ gx#source-file-settings))
         _fun163110_)))
    (define gx#module-context:::init!
      (lambda (_self163103_ _id163104_ _super163105_ _ns163106_ _path163107_)
        (if (##fx< '11 (##structure-length _self163103_))
            (begin
              (##unchecked-structure-set!
               _self163103_
               _id163104_
               '1
               (##structure-type _self163103_)
               '#f)
              (##unchecked-structure-set!
               _self163103_
               (make-table 'test: eq?)
               '2
               (##structure-type _self163103_)
               '#f)
              (##unchecked-structure-set!
               _self163103_
               _super163105_
               '3
               (##structure-type _self163103_)
               '#f)
              (##unchecked-structure-set!
               _self163103_
               '#f
               '4
               (##structure-type _self163103_)
               '#f)
              (##unchecked-structure-set!
               _self163103_
               '#f
               '5
               (##structure-type _self163103_)
               '#f)
              (##unchecked-structure-set!
               _self163103_
               _ns163106_
               '6
               (##structure-type _self163103_)
               '#f)
              (##unchecked-structure-set!
               _self163103_
               _path163107_
               '7
               (##structure-type _self163103_)
               '#f)
              (##unchecked-structure-set!
               _self163103_
               '()
               '8
               (##structure-type _self163103_)
               '#f)
              (##unchecked-structure-set!
               _self163103_
               '()
               '9
               (##structure-type _self163103_)
               '#f)
              (##unchecked-structure-set!
               _self163103_
               '#f
               '10
               (##structure-type _self163103_)
               '#f)
              (##unchecked-structure-set!
               _self163103_
               '#f
               '11
               (##structure-type _self163103_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self163103_
                   '11
                   (##vector-length _self163103_)))))
    (bind-method! gx#module-context::t ':init! gx#module-context:::init! '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_self162947_ _ctx162948_ _root162949_)
        (let ((_super162957_
               (let ((_$e162951_ _root162949_))
                 (if _$e162951_
                     _$e162951_
                     (let ((_$e162954_ (gx#core-context-root__0)))
                       (if _$e162954_
                           _$e162954_
                           (let ((__obj167740
                                  (##structure gx#root-context::t '#f '#f)))
                             (let ((__constructor167741
                                    (direct-method-ref
                                     gx#root-context::t
                                     __obj167740
                                     ':init!)))
                               (if __constructor167741
                                   (__constructor167741 __obj167740)
                                   (error '"missing constructor method implementation"
                                          'class:
                                          gx#root-context::t
                                          'method:
                                          ':init!)))
                             __obj167740)))))))
          (if _ctx162948_
              (let ((_id162960_
                     (##structure-ref
                      _ctx162948_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_path162961_
                     (##structure-ref _ctx162948_ '7 gx#module-context::t '#f))
                    (_in162962_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _ctx162948_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_e162963_
                     (make-promise (lambda () (gx#eval-module _ctx162948_)))))
                (if (##fx< '8 (##structure-length _self162947_))
                    (begin
                      (##unchecked-structure-set!
                       _self162947_
                       _id162960_
                       '1
                       (##structure-type _self162947_)
                       '#f)
                      (##unchecked-structure-set!
                       _self162947_
                       (make-table 'test: eq? 'size: (length _in162962_))
                       '2
                       (##structure-type _self162947_)
                       '#f)
                      (##unchecked-structure-set!
                       _self162947_
                       _super162957_
                       '3
                       (##structure-type _self162947_)
                       '#f)
                      (##unchecked-structure-set!
                       _self162947_
                       '#f
                       '4
                       (##structure-type _self162947_)
                       '#f)
                      (##unchecked-structure-set!
                       _self162947_
                       '#f
                       '5
                       (##structure-type _self162947_)
                       '#f)
                      (##unchecked-structure-set!
                       _self162947_
                       _path162961_
                       '6
                       (##structure-type _self162947_)
                       '#f)
                      (##unchecked-structure-set!
                       _self162947_
                       _in162962_
                       '7
                       (##structure-type _self162947_)
                       '#f)
                      (##unchecked-structure-set!
                       _self162947_
                       _e162963_
                       '8
                       (##structure-type _self162947_)
                       '#f))
                    (error '"struct-instance-init!: too many arguments for struct"
                           _self162947_
                           '8
                           (##vector-length _self162947_)))
                (for-each
                 (lambda (_g162964162966_)
                   (gx#core-bind-weak-import!__% _g162964162966_ _self162947_))
                 _in162962_))
              (if (##fx< '8 (##structure-length _self162947_))
                  (begin
                    (##unchecked-structure-set!
                     _self162947_
                     '#f
                     '1
                     (##structure-type _self162947_)
                     '#f)
                    (##unchecked-structure-set!
                     _self162947_
                     (make-table 'test: eq?)
                     '2
                     (##structure-type _self162947_)
                     '#f)
                    (##unchecked-structure-set!
                     _self162947_
                     _super162957_
                     '3
                     (##structure-type _self162947_)
                     '#f)
                    (##unchecked-structure-set!
                     _self162947_
                     '#f
                     '4
                     (##structure-type _self162947_)
                     '#f)
                    (##unchecked-structure-set!
                     _self162947_
                     '#f
                     '5
                     (##structure-type _self162947_)
                     '#f)
                    (##unchecked-structure-set!
                     _self162947_
                     '#f
                     '6
                     (##structure-type _self162947_)
                     '#f)
                    (##unchecked-structure-set!
                     _self162947_
                     '()
                     '7
                     (##structure-type _self162947_)
                     '#f)
                    (##unchecked-structure-set!
                     _self162947_
                     '#f
                     '8
                     (##structure-type _self162947_)
                     '#f))
                  (error '"struct-instance-init!: too many arguments for struct"
                         _self162947_
                         '8
                         (##vector-length _self162947_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_self162972_ _ctx162973_)
        (let ((_root162975_ '#f))
          (gx#prelude-context:::init!__%
           _self162972_
           _ctx162973_
           _root162975_))))
    (define gx#prelude-context:::init!
      (lambda _g167747_
        (let ((_g167746_ (##length _g167747_)))
          (cond ((##fx= _g167746_ 2)
                 (apply (lambda (_self162972_ _ctx162973_)
                          (gx#prelude-context:::init!__0
                           _self162972_
                           _ctx162973_))
                        _g167747_))
                ((##fx= _g167746_ 3)
                 (apply (lambda (_self162977_ _ctx162978_ _root162979_)
                          (gx#prelude-context:::init!__%
                           _self162977_
                           _ctx162978_
                           _root162979_))
                        _g167747_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g167747_))))))
    (bind-method! gx#prelude-context::t ':init! gx#prelude-context:::init! '#f)
    (define gx#import-export-expander-init!
      (lambda (_self162821_ _e162822_)
        (if (##fx< '3 (##structure-length _self162821_))
            (begin
              (##unchecked-structure-set!
               _self162821_
               _e162822_
               '1
               (##structure-type _self162821_)
               '#f)
              (##unchecked-structure-set!
               _self162821_
               (gx#current-expander-context)
               '2
               (##structure-type _self162821_)
               '#f)
              (##unchecked-structure-set!
               _self162821_
               (fx- (gx#current-expander-phi) '1)
               '3
               (##structure-type _self162821_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self162821_
                   '3
                   (##vector-length _self162821_)))))
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
      (lambda (_g162447162450_ _g162448162452_)
        (gx#core-apply-user-expander__%
         _g162447162450_
         _g162448162452_
         'apply-import-expander)))
    (bind-method!
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_g162318162321_ _g162319162323_)
        (gx#core-apply-user-expander__%
         _g162318162321_
         _g162319162323_
         'apply-export-expander)))
    (bind-method!
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_ctx162189_)
        (let* ((_path162191_
                (##structure-ref _ctx162189_ '7 gx#module-context::t '#f))
               (_path162193_
                (if (pair? _path162191_) (last _path162191_) _path162191_)))
          (if (string? _path162193_) _path162193_ '#f))))
    (define gx#import-module__%
      (lambda (_path162165_ _reload?162166_ _eval?162167_)
        (let ((_ctx162169_
               ((gx#current-expander-module-import)
                _path162165_
                _reload?162166_)))
          (if (and _ctx162169_ _eval?162167_)
              (gx#eval-module _ctx162169_)
              '#!void)
          _ctx162169_)))
    (define gx#import-module__0
      (lambda (_path162174_)
        (let* ((_reload?162176_ '#f) (_eval?162178_ '#f))
          (gx#import-module__% _path162174_ _reload?162176_ _eval?162178_))))
    (define gx#import-module__1
      (lambda (_path162180_ _reload?162181_)
        (let ((_eval?162183_ '#f))
          (gx#import-module__% _path162180_ _reload?162181_ _eval?162183_))))
    (define gx#import-module
      (lambda _g167749_
        (let ((_g167748_ (##length _g167749_)))
          (cond ((##fx= _g167748_ 1)
                 (apply (lambda (_path162174_)
                          (gx#import-module__0 _path162174_))
                        _g167749_))
                ((##fx= _g167748_ 2)
                 (apply (lambda (_path162180_ _reload?162181_)
                          (gx#import-module__1 _path162180_ _reload?162181_))
                        _g167749_))
                ((##fx= _g167748_ 3)
                 (apply (lambda (_path162185_ _reload?162186_ _eval?162187_)
                          (gx#import-module__%
                           _path162185_
                           _reload?162186_
                           _eval?162187_))
                        _g167749_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g167749_))))))
    (define gx#eval-module
      (lambda (_mod162162_) ((gx#current-expander-module-eval) _mod162162_)))
    (define gx#core-eval-module
      (lambda (_obj162147_)
        (letrec ((_force-e162149_
                  (lambda (_getf162158_ _e162159_)
                    (call-with-parameters
                     (lambda () (force (_getf162158_ _e162159_)))
                     gx#current-expander-context
                     _e162159_
                     gx#current-expander-phi
                     '0))))
          (let _recur162151_ ((_e162153_ _obj162147_))
            (if (##structure-instance-of? _e162153_ 'gx#module-context::t)
                (begin
                  (let ((_$e162155_ (gx#core-context-prelude__% _e162153_)))
                    (if _$e162155_ (_recur162151_ _$e162155_) '#!void))
                  (_force-e162149_ gx#module-context-e _e162153_))
                (if (##structure-instance-of? _e162153_ 'gx#prelude-context::t)
                    (_force-e162149_ gx#prelude-context-e _e162153_)
                    (if (gx#stx-string? _e162153_)
                        (_recur162151_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _e162153_)))
                        (if (gx#core-library-module-path? _e162153_)
                            (_recur162151_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _e162153_)))
                            (error '"Cannot eval module" _obj162147_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_ctx162130_)
        (let _lp162132_ ((_e162134_ _ctx162130_))
          (if (or (##structure-instance-of? _e162134_ 'gx#module-context::t)
                  (##structure-instance-of? _e162134_ 'gx#local-context::t))
              (_lp162132_
               (##unchecked-structure-ref _e162134_ '3 gx#phi-context::t '#f))
              (if (##structure-instance-of? _e162134_ 'gx#prelude-context::t)
                  _e162134_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_ctx162143_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _ctx162143_))))
    (define gx#core-context-prelude
      (lambda _g167751_
        (let ((_g167750_ (##length _g167751_)))
          (cond ((##fx= _g167750_ 0)
                 (apply (lambda () (gx#core-context-prelude__0)) _g167751_))
                ((##fx= _g167750_ 1)
                 (apply (lambda (_ctx162145_)
                          (gx#core-context-prelude__% _ctx162145_))
                        _g167751_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g167751_))))))
    (define gx#core-module->prelude-context
      (lambda (_ctx162120_)
        (let* ((_ht162122_ (gx#current-expander-module-registry))
               (_$e162124_ (table-ref _ht162122_ _ctx162120_ '#f)))
          (if _$e162124_
              (values _$e162124_)
              (let ((_pre162127_
                     (let ((__obj167742
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
                       (gx#prelude-context:::init! __obj167742 _ctx162120_)
                       __obj167742)))
                (table-set! _ht162122_ _ctx162120_ _pre162127_)
                _pre162127_)))))
    (define gx#core-import-module__%
      (lambda (_rpath162001_ _reload?162002_)
        (letrec ((_import-source162004_
                  (lambda (_path162089_)
                    (if (member _path162089_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _path162089_)
                        '#!void)
                    (call-with-parameters
                     (lambda ()
                       (let ((_g167752_ (gx#core-read-module _path162089_)))
                         (begin
                           (let ((_g167753_
                                  (if (##values? _g167752_)
                                      (##vector-length _g167752_)
                                      1)))
                             (if (not (##fx= _g167753_ 4))
                                 (error "Context expects 4 values" _g167753_)))
                           (let ((_pre162092_ (##vector-ref _g167752_ 0))
                                 (_id162093_ (##vector-ref _g167752_ 1))
                                 (_ns162094_ (##vector-ref _g167752_ 2))
                                 (_body162095_ (##vector-ref _g167752_ 3)))
                             (let* ((_prelude162100_
                                     (if (##structure-instance-of?
                                          _pre162092_
                                          'gx#prelude-context::t)
                                         _pre162092_
                                         (if (##structure-instance-of?
                                              _pre162092_
                                              'gx#module-context::t)
                                             (gx#core-module->prelude-context
                                              _pre162092_)
                                             (if (string? _pre162092_)
                                                 (gx#core-module->prelude-context
                                                  (gx#core-import-module__0
                                                   _pre162092_))
                                                 (if (not _pre162092_)
                                                     (let ((_$e162097_
                                                            (gx#current-expander-module-prelude)))
                                                       (if _$e162097_
                                                           _$e162097_
                                                           (let ((__obj167743
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
                     (gx#prelude-context:::init! __obj167743 '#f)
                     __obj167743)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error '"Cannot import module; unknown prelude"
                                                            _rpath162001_
                                                            _pre162092_))))))
                                    (_ctx162102_
                                     (let ((__obj167744
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
                                        __obj167744
                                        _id162093_
                                        _prelude162100_
                                        _ns162094_
                                        _path162089_)
                                       __obj167744))
                                    (_body162104_
                                     (gx#core-expand-module-begin
                                      _body162095_
                                      _ctx162102_))
                                    (_body162106_
                                     (gx#core-quote-syntax__%
                                      (gx#core-cons '%#begin _body162104_)
                                      _path162089_
                                      _ctx162102_
                                      '())))
                               (##unchecked-structure-set!
                                _ctx162102_
                                (make-promise
                                 (lambda () (gx#eval-syntax* _body162106_)))
                                '10
                                gx#module-context::t
                                '#f)
                               (##unchecked-structure-set!
                                _ctx162102_
                                _body162106_
                                '11
                                gx#module-context::t
                                '#f)
                               (table-set!
                                (gx#current-expander-module-registry)
                                _path162089_
                                _ctx162102_)
                               (table-set!
                                (gx#current-expander-module-registry)
                                _id162093_
                                _ctx162102_)
                               _ctx162102_)))))
                     gx#current-expander-context
                     (gx#core-context-root__0)
                     gx#current-expander-marks
                     '()
                     gx#current-expander-phi
                     '0
                     gx#current-expander-path
                     (cons _path162089_ (gx#current-expander-path))
                     gx#current-import-expander-phi
                     '#f
                     gx#current-export-expander-phi
                     '#f)))
                 (_import-submodule162005_
                  (lambda (_rpath162017_)
                    (let* ((_rpath162018162025_ _rpath162017_)
                           (_E162020162029_
                            (lambda ()
                              (error '"No clause matching"
                                     _rpath162018162025_)))
                           (_K162021162077_
                            (lambda (_refs162032_ _origin162033_)
                              (let ((_ctx162035_
                                     (if _origin162033_
                                         (gx#core-import-module__%
                                          _origin162033_
                                          _reload?162002_)
                                         (gx#current-expander-context))))
                                (let _lp162037_ ((_rest162039_ _refs162032_)
                                                 (_ctx162040_ _ctx162035_))
                                  (let* ((_rest162041162049_ _rest162039_)
                                         (_else162043162057_
                                          (lambda () _ctx162040_))
                                         (_K162045162065_
                                          (lambda (_rest162060_ _id162061_)
                                            (let ((_bind162063_
                                                   (gx#resolve-identifier__%
                                                    _id162061_
                                                    '0
                                                    _ctx162040_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _bind162063_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _bind162063_
                                                         '4
                                                         gx#syntax-binding::t
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_lp162037_
                                                   _rest162060_
                                                   (##unchecked-structure-ref
                                                    _bind162063_
                                                    '4
                                                    gx#syntax-binding::t
                                                    '#f))
                                                  (error '"Cannot import submodule; not bound as a module"
                                                         _rpath162017_
                                                         _id162061_
                                                         _bind162063_))))))
                                    (if (##pair? _rest162041162049_)
                                        (let ((_hd162046162068_
                                               (##car _rest162041162049_))
                                              (_tl162047162070_
                                               (##cdr _rest162041162049_)))
                                          (let* ((_id162073_ _hd162046162068_)
                                                 (_rest162075_
                                                  _tl162047162070_))
                                            (_K162045162065_
                                             _rest162075_
                                             _id162073_)))
                                        (_else162043162057_))))))))
                      (if (##pair? _rpath162018162025_)
                          (let ((_hd162022162080_ (##car _rpath162018162025_))
                                (_tl162023162082_ (##cdr _rpath162018162025_)))
                            (let* ((_origin162085_ _hd162022162080_)
                                   (_refs162087_ _tl162023162082_))
                              (_K162021162077_ _refs162087_ _origin162085_)))
                          (_E162020162029_))))))
          (let ((_$e162007_
                 (if (not _reload?162002_)
                     (table-ref
                      (gx#current-expander-module-registry)
                      _rpath162001_
                      '#f)
                     '#f)))
            (if _$e162007_
                (values _$e162007_)
                (if (list? _rpath162001_)
                    (_import-submodule162005_ _rpath162001_)
                    (if (gx#core-library-module-path? _rpath162001_)
                        (let ((_ctx162010_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _rpath162001_)
                                _reload?162002_)))
                          (table-set!
                           (gx#current-expander-module-registry)
                           _rpath162001_
                           _ctx162010_)
                          _ctx162010_)
                        (let* ((_npath162012_ (path-normalize _rpath162001_))
                               (_$e162014_
                                (if (not _reload?162002_)
                                    (table-ref
                                     (gx#current-expander-module-registry)
                                     _npath162012_
                                     '#f)
                                    '#f)))
                          (if _$e162014_
                              (values _$e162014_)
                              (_import-source162004_ _npath162012_))))))))))
    (define gx#core-import-module__0
      (lambda (_rpath162113_)
        (let ((_reload?162115_ '#f))
          (gx#core-import-module__% _rpath162113_ _reload?162115_))))
    (define gx#core-import-module
      (lambda _g167755_
        (let ((_g167754_ (##length _g167755_)))
          (cond ((##fx= _g167754_ 1)
                 (apply (lambda (_rpath162113_)
                          (gx#core-import-module__0 _rpath162113_))
                        _g167755_))
                ((##fx= _g167754_ 2)
                 (apply (lambda (_rpath162117_ _reload?162118_)
                          (gx#core-import-module__%
                           _rpath162117_
                           _reload?162118_))
                        _g167755_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g167755_))))))
    (define gx#core-read-module
      (lambda (_path161990_)
        (with-catch
         (lambda (_exn161992_)
           (if (and (datum-parsing-exception? _exn161992_)
                    (eq? (datum-parsing-exception-filepos _exn161992_) '0))
               (gx#core-read-module/lang _path161990_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _path161990_
                (call-with-parameters
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_g161994161996_)
                      (display-exception _exn161992_ _g161994161996_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _path161990_)))))
    (define gx#core-read-module/sexp
      (lambda (_path161853_)
        (let _lp161855_ ((_body161857_ (read-syntax-from-file _path161853_))
                         (_pre161858_ '#f)
                         (_ns161859_ '#f)
                         (_pkg161860_ '#f))
          (let* ((_e161861161885_ _body161857_)
                 (_E161877161907_
                  (lambda ()
                    (let ((_g167756_
                           (if _pkg161860_
                               (values _pre161858_ _ns161859_ _pkg161860_)
                               (gx#core-read-module-package
                                _path161853_
                                _pre161858_
                                _ns161859_))))
                      (begin
                        (let ((_g167757_
                               (if (##values? _g167756_)
                                   (##vector-length _g167756_)
                                   1)))
                          (if (not (##fx= _g167757_ 3))
                              (error "Context expects 3 values" _g167757_)))
                        (let ((_pre161889_ (##vector-ref _g167756_ 0))
                              (_ns161890_ (##vector-ref _g167756_ 1))
                              (_pkg161891_ (##vector-ref _g167756_ 2)))
                          (let* ((_prelude161893_
                                  (if (gx#core-bound-module-prelude?
                                       _pre161889_)
                                      (gx#syntax-local-e__0 _pre161889_)
                                      (if (gx#core-library-module-path?
                                           _pre161889_)
                                          (gx#core-resolve-library-module-path
                                           _pre161889_)
                                          (if (gx#stx-string? _pre161889_)
                                              (gx#core-resolve-module-path__%
                                               _pre161889_
                                               _path161853_)
                                              (gx#stx-e _pre161889_)))))
                                 (_path-id161895_
                                  (gx#core-module-path->namespace
                                   _path161853_))
                                 (_pkg-id161897_
                                  (if _pkg161891_
                                      (string-append
                                       _pkg161891_
                                       '"/"
                                       _path-id161895_)
                                      _path-id161895_))
                                 (_module-id161899_
                                  (string->symbol _pkg-id161897_))
                                 (_module-ns161904_
                                  (if (eq? _ns161890_ '#!void)
                                      '#f
                                      (let ((_$e161901_ _ns161890_))
                                        (if _$e161901_
                                            _$e161901_
                                            _pkg-id161897_)))))
                            (values _prelude161893_
                                    _module-id161899_
                                    _module-ns161904_
                                    _body161857_)))))))
                 (_E161870161936_
                  (lambda ()
                    (if (gx#stx-pair? _e161861161885_)
                        (let ((_e161878161911_ (gx#syntax-e _e161861161885_)))
                          (let ((_hd161879161914_ (##car _e161878161911_))
                                (_tl161880161916_ (##cdr _e161878161911_)))
                            (if (eq? (gx#stx-e _hd161879161914_) 'package:)
                                (if (gx#stx-pair? _tl161880161916_)
                                    (let ((_e161881161919_
                                           (gx#syntax-e _tl161880161916_)))
                                      (let ((_hd161882161922_
                                             (##car _e161881161919_))
                                            (_tl161883161924_
                                             (##cdr _e161881161919_)))
                                        (let* ((_pkg161927_ _hd161882161922_)
                                               (_rest161929_ _tl161883161924_))
                                          (if '#t
                                              (let ((_pkg161934_
                                                     (if (gx#identifier?
                                                          _pkg161927_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _pkg161927_))
                                                         (if (or (gx#stx-string?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _pkg161927_)
                         (gx#stx-false? _pkg161927_))
                     (gx#stx-e _pkg161927_)
                     (gx#raise-syntax-error
                      'import
                      '"Bad syntax; Illegal package name"
                      _pkg161927_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp161855_
                                                 _rest161929_
                                                 _pre161858_
                                                 _ns161859_
                                                 _pkg161934_))
                                              (_E161877161907_)))))
                                    (_E161877161907_))
                                (_E161877161907_))))
                        (_E161877161907_))))
                 (_E161863161962_
                  (lambda ()
                    (if (gx#stx-pair? _e161861161885_)
                        (let ((_e161871161940_ (gx#syntax-e _e161861161885_)))
                          (let ((_hd161872161943_ (##car _e161871161940_))
                                (_tl161873161945_ (##cdr _e161871161940_)))
                            (if (eq? (gx#stx-e _hd161872161943_) 'namespace:)
                                (if (gx#stx-pair? _tl161873161945_)
                                    (let ((_e161874161948_
                                           (gx#syntax-e _tl161873161945_)))
                                      (let ((_hd161875161951_
                                             (##car _e161874161948_))
                                            (_tl161876161953_
                                             (##cdr _e161874161948_)))
                                        (let* ((_ns161956_ _hd161875161951_)
                                               (_rest161958_ _tl161876161953_))
                                          (if '#t
                                              (let ((_ns161960_
                                                     (if (gx#identifier?
                                                          _ns161956_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _ns161956_))
                                                         (if (gx#stx-string?
                                                              _ns161956_)
                                                             (gx#stx-e
                                                              _ns161956_)
                                                             (if (gx#stx-false?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _ns161956_)
                         '#!void
                         (gx#raise-syntax-error
                          'import
                          '"Bad syntax; illegal namespace"
                          _ns161956_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp161855_
                                                 _rest161958_
                                                 _pre161858_
                                                 _ns161960_
                                                 _pkg161860_))
                                              (_E161870161936_)))))
                                    (_E161870161936_))
                                (_E161870161936_))))
                        (_E161870161936_))))
                 (_E161862161986_
                  (lambda ()
                    (if (gx#stx-pair? _e161861161885_)
                        (let ((_e161864161966_ (gx#syntax-e _e161861161885_)))
                          (let ((_hd161865161969_ (##car _e161864161966_))
                                (_tl161866161971_ (##cdr _e161864161966_)))
                            (if (eq? (gx#stx-e _hd161865161969_) 'prelude:)
                                (if (gx#stx-pair? _tl161866161971_)
                                    (let ((_e161867161974_
                                           (gx#syntax-e _tl161866161971_)))
                                      (let ((_hd161868161977_
                                             (##car _e161867161974_))
                                            (_tl161869161979_
                                             (##cdr _e161867161974_)))
                                        (let* ((_prelude161982_
                                                _hd161868161977_)
                                               (_rest161984_ _tl161869161979_))
                                          (if '#t
                                              (_lp161855_
                                               _rest161984_
                                               _prelude161982_
                                               _ns161859_
                                               _pkg161860_)
                                              (_E161863161962_)))))
                                    (_E161863161962_))
                                (_E161863161962_))))
                        (_E161863161962_)))))
            (_E161862161986_)))))
    (define gx#core-read-module/lang
      (lambda (_path161680_)
        (letrec ((_default-read-module-body161682_
                  (lambda (_inp161845_)
                    (let _lp161847_ ((_body161849_ '()))
                      (let ((_next161851_ (read-syntax _inp161845_)))
                        (if (eof-object? _next161851_)
                            (reverse _body161849_)
                            (_lp161847_ (cons _next161851_ _body161849_)))))))
                 (_read-body161683_
                  (lambda (_inp161764_
                           _pre161765_
                           _ns161766_
                           _pkg161767_
                           _args161768_)
                    (let ((_g167758_
                           (if _pkg161767_
                               (values _pre161765_ _ns161766_ _pkg161767_)
                               (gx#core-read-module-package
                                _path161680_
                                _pre161765_
                                _ns161766_))))
                      (begin
                        (let ((_g167759_
                               (if (##values? _g167758_)
                                   (##vector-length _g167758_)
                                   1)))
                          (if (not (##fx= _g167759_ 3))
                              (error "Context expects 3 values" _g167759_)))
                        (let ((_pre161770_ (##vector-ref _g167758_ 0))
                              (_ns161771_ (##vector-ref _g167758_ 1))
                              (_pkg161772_ (##vector-ref _g167758_ 2)))
                          (let* ((_prelude161774_
                                  (gx#import-module__0 _pre161770_))
                                 (_read-module-body161828_
                                  (let ((_$e161820_
                                         (find (lambda (_e161775161777_)
                                                 (let* ((_g161779161789_
                                                         _e161775161777_)
                                                        (_else161781161797_
                                                         (lambda () '#f))
                                                        (_K161783161801_
                                                         (lambda () '#t)))
                                                   (if (##structure-direct-instance-of?
                                                        _g161779161789_
                                                        'gx#module-export::t)
                                                       (let* ((_e161784161804_
                                                               (##unchecked-structure-ref
                                                                _g161779161789_
                                                                '1
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e161785161807_
                                                               (##unchecked-structure-ref
                                                                _g161779161789_
                                                                '2
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e161786161810_
                                                               (##unchecked-structure-ref
                                                                _g161779161789_
                                                                '3
                                                                gx#module-export::t
                                                                '#f)))
                                                         (if (##eq? _e161786161810_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)
                     (let ((_e161787161813_
                            (##unchecked-structure-ref
                             _g161779161789_
                             '4
                             gx#module-export::t
                             '#f)))
                       (if ((lambda (_g161815161817_)
                              (eq? _g161815161817_ 'read-module-body))
                            _e161787161813_)
                           (_K161783161801_)
                           (_else161781161797_)))
                     (_else161781161797_)))
               (_else161781161797_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (##unchecked-structure-ref
                                                _prelude161774_
                                                '9
                                                gx#module-context::t
                                                '#f))))
                                    (if _$e161820_
                                        ((lambda (_xport161823_)
                                           (let ((_proc161826_
                                                  (with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _xport161823_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _proc161826_)
                                                 _proc161826_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _path161680_
                                                  _pre161770_
                                                  _proc161826_))))
                                         _$e161820_)
                                        _default-read-module-body161682_)))
                                 (_path-id161830_
                                  (gx#core-module-path->namespace
                                   _path161680_))
                                 (_pkg-id161832_
                                  (if _pkg161772_
                                      (string-append
                                       _pkg161772_
                                       '"/"
                                       _path-id161830_)
                                      _path-id161830_))
                                 (_module-id161834_
                                  (string->symbol _pkg-id161832_))
                                 (_module-ns161839_
                                  (let ((_$e161836_ _ns161771_))
                                    (if _$e161836_ _$e161836_ _pkg-id161832_)))
                                 (_body161842_
                                  (call-with-parameters
                                   (lambda ()
                                     (_read-module-body161828_ _inp161764_))
                                   gx#current-module-reader-path
                                   _path161680_
                                   gx#current-module-reader-args
                                   _args161768_)))
                            (values _prelude161774_
                                    _module-id161834_
                                    _module-ns161839_
                                    _body161842_)))))))
                 (_string-e161684_
                  (lambda (_obj161761_ _what161762_)
                    (if (string? _obj161761_)
                        _obj161761_
                        (if (symbol? _obj161761_)
                            (symbol->string _obj161761_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _what161762_)
                             _path161680_
                             _obj161761_)))))
                 (_read-lang-args161685_
                  (lambda (_inp161716_ _args161717_)
                    (let* ((_args161718161726_ _args161717_)
                           (_else161720161734_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _path161680_)))
                           (_K161722161749_
                            (lambda (_args161737_ _prelude161738_)
                              (let* ((_pkg161740_
                                      (pgetq 'package: _args161737_))
                                     (_pkg161742_
                                      (if _pkg161740_
                                          (_string-e161684_
                                           _pkg161740_
                                           '"package")
                                          '#f))
                                     (_ns161744_
                                      (pgetq 'namespace: _args161737_))
                                     (_ns161746_
                                      (if _ns161744_
                                          (_string-e161684_
                                           _ns161744_
                                           '"namespace")
                                          '#f)))
                                (_read-body161683_
                                 _inp161716_
                                 _prelude161738_
                                 _ns161746_
                                 _pkg161742_
                                 _args161737_)))))
                      (if (##pair? _args161718161726_)
                          (let ((_hd161723161752_ (##car _args161718161726_))
                                (_tl161724161754_ (##cdr _args161718161726_)))
                            (let* ((_prelude161757_ _hd161723161752_)
                                   (_args161759_ _tl161724161754_))
                              (_K161722161749_ _args161759_ _prelude161757_)))
                          (_else161720161734_)))))
                 (_read-lang161686_
                  (lambda (_inp161691_)
                    (let* ((_head161693_ (read-line _inp161691_))
                           (_$e161695_ (string-index _head161693_ '#\space)))
                      (if _$e161695_
                          ((lambda (_ix161698_)
                             (let ((_lang161700_
                                    (substring _head161693_ '0 _ix161698_)))
                               (if (equal? _lang161700_ '"#lang")
                                   (let* ((_rest161702_
                                           (substring
                                            _head161693_
                                            (fx+ _ix161698_ '1)
                                            (string-length _head161693_)))
                                          (_args161713_
                                           (with-catch
                                            (lambda (_g161703161705_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _path161680_
                                               _g161703161705_))
                                            (lambda ()
                                              (call-with-input-string
                                               _rest161702_
                                               (lambda (_g161708161710_)
                                                 (read-all
                                                  _g161708161710_
                                                  read)))))))
                                     (_read-lang-args161685_
                                      _inp161691_
                                      _args161713_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _path161680_))))
                           _$e161695_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _path161680_)))))
                 (_read-e161687_
                  (lambda (_inp161689_)
                    (if (eq? (peek-char _inp161689_) '#\#)
                        (_read-lang161686_ _inp161689_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _path161680_)))))
          (gx#call-with-input-source-file _path161680_ _read-e161687_))))
    (define gx#core-read-module-package
      (lambda (_path161634_ _pre161635_ _ns161636_)
        (letrec ((_string-e161638_
                  (lambda (_e161678_)
                    (if (symbol? _e161678_)
                        (symbol->string _e161678_)
                        (if (string? _e161678_)
                            _e161678_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _e161678_))))))
          (let _lp161640_ ((_dir161642_ (path-directory _path161634_))
                           (_pkg-path161643_ '()))
            (let ((_gerbil.pkg161645_ (path-expand '"gerbil.pkg" _dir161642_)))
              (if (file-exists? _gerbil.pkg161645_)
                  (let ((_plist161647_
                         (gx#core-library-package-plist__% _dir161642_ '#t)))
                    (if (null? _plist161647_)
                        (let ((_pkg161649_
                               (if (not (null? _pkg-path161643_))
                                   (string-join _pkg-path161643_ '"/")
                                   '#f)))
                          (values _pre161635_ _ns161636_ _pkg161649_))
                        (if (list? _plist161647_)
                            (let* ((_root161651_
                                    (pgetq 'package: _plist161647_))
                                   (_pkg161655_
                                    (let ((_pkg-path161653_
                                           (if _root161651_
                                               (cons (_string-e161638_
                                                      _root161651_)
                                                     _pkg-path161643_)
                                               _pkg-path161643_)))
                                      (if (not (null? _pkg-path161653_))
                                          (string-join _pkg-path161653_ '"/")
                                          '#f)))
                                   (_ns161662_
                                    (let ((_ns161660_
                                           (let ((_$e161657_ _ns161636_))
                                             (if _$e161657_
                                                 _$e161657_
                                                 (pgetq 'namespace:
                                                        _plist161647_)))))
                                      (if _ns161660_
                                          (_string-e161638_ _ns161660_)
                                          '#f)))
                                   (_pre161667_
                                    (let ((_$e161664_ _pre161635_))
                                      (if _$e161664_
                                          _$e161664_
                                          (pgetq 'prelude: _plist161647_)))))
                              (values _pre161667_ _ns161662_ _pkg161655_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _plist161647_))))
                  (let ((_dir*161670_
                         (path-strip-trailing-directory-separator
                          _dir161642_)))
                    (if (or (string-empty? _dir*161670_)
                            (equal? _dir161642_ _dir*161670_))
                        (values _pre161635_ _ns161636_ '#f)
                        (let ((_xpath161675_
                               (path-strip-directory _dir*161670_))
                              (_xdir161676_ (path-directory _dir*161670_)))
                          (_lp161640_
                           _xdir161676_
                           (cons _xpath161675_ _pkg-path161643_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_path161632_)
        (path-strip-extension (path-strip-directory _path161632_))))
    (define gx#core-module-path->id
      (lambda (_path161630_)
        (string->symbol (gx#core-module-path->namespace _path161630_))))
    (define gx#core-resolve-module-path__%
      (lambda (_stx-path161609_ _rel161610_)
        (let* ((_path161612_ (gx#stx-e _stx-path161609_))
               (_path161614_
                (if (string-empty? (path-extension _path161612_))
                    (string-append _path161612_ '".ss")
                    _path161612_)))
          (gx#core-resolve-path__%
           _path161614_
           (let ((_$e161617_ (gx#stx-source _stx-path161609_)))
             (if _$e161617_ _$e161617_ _rel161610_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_stx-path161623_)
        (let ((_rel161625_ '#f))
          (gx#core-resolve-module-path__% _stx-path161623_ _rel161625_))))
    (define gx#core-resolve-module-path
      (lambda _g167761_
        (let ((_g167760_ (##length _g167761_)))
          (cond ((##fx= _g167760_ 1)
                 (apply (lambda (_stx-path161623_)
                          (gx#core-resolve-module-path__0 _stx-path161623_))
                        _g167761_))
                ((##fx= _g167760_ 2)
                 (apply (lambda (_stx-path161627_ _rel161628_)
                          (gx#core-resolve-module-path__%
                           _stx-path161627_
                           _rel161628_))
                        _g167761_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g167761_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_libpath161495_)
        (let* ((_spath161497_ (symbol->string (gx#stx-e _libpath161495_)))
               (_spath161499_
                (substring _spath161497_ '1 (string-length _spath161497_)))
               (_ext161501_ (path-extension _spath161499_))
               (_ssi161503_
                (if (string-empty? _ext161501_)
                    (string-append _spath161499_ '".ssi")
                    (string-append
                     (path-strip-extension _spath161499_)
                     '".ssi")))
               (_srcs161507_
                (if (string-empty? _ext161501_)
                    (map (lambda (_ext161505_)
                           (string-append _spath161499_ _ext161505_))
                         '(".ss" ".sld" ".scm"))
                    (cons _spath161499_ '()))))
          (let _lp161510_ ((_rest161512_
                            (gx#current-expander-module-library-path)))
            (let* ((_rest161513161522_ _rest161512_)
                   (_E161516161526_
                    (lambda ()
                      (error '"No clause matching" _rest161513161522_))))
              (let ((_K161518161596_
                     (lambda (_rest161537_ _dir161538_)
                       (letrec ((_resolve161540_
                                 (lambda (_ssi161552_ _srcs161553_)
                                   (let ((_compiled-path161555_
                                          (path-expand
                                           _ssi161552_
                                           _dir161538_)))
                                     (if (file-exists? _compiled-path161555_)
                                         (path-normalize _compiled-path161555_)
                                         (let _lpr161557_ ((_rest-src161559_
                                                            _srcs161553_))
                                           (let* ((_rest-src161560161568_
                                                   _rest-src161559_)
                                                  (_else161562161576_
                                                   (lambda ()
                                                     (_lp161510_
                                                      _rest161537_)))
                                                  (_K161564161584_
                                                   (lambda (_rest-src161579_
                                                            _src161580_)
                                                     (let ((_src-path161582_
                                                            (path-expand
                                                             _src161580_
                                                             _dir161538_)))
                                                       (if (file-exists?
                                                            _src-path161582_)
                                                           (path-normalize
                                                            _src-path161582_)
                                                           (_lpr161557_
                                                            _rest-src161579_))))))
                                             (if (##pair? _rest-src161560161568_)
                                                 (let ((_hd161565161587_
                                                        (##car _rest-src161560161568_))
                                                       (_tl161566161589_
                                                        (##cdr _rest-src161560161568_)))
                                                   (let* ((_src161592_
                                                           _hd161565161587_)
                                                          (_rest-src161594_
                                                           _tl161566161589_))
                                                     (_K161564161584_
                                                      _rest-src161594_
                                                      _src161592_)))
                                                 (_else161562161576_)))))))))
                         (let ((_$e161542_
                                (gx#core-library-package-path-prefix
                                 _dir161538_)))
                           (if _$e161542_
                               ((lambda (_prefix161545_)
                                  (if (string-prefix?
                                       _prefix161545_
                                       _spath161499_)
                                      (let ((_ssi161549_
                                             (substring
                                              _ssi161503_
                                              (string-length _prefix161545_)
                                              (string-length _ssi161503_)))
                                            (_srcs161550_
                                             (map (lambda (_src161547_)
                                                    (substring
                                                     _src161547_
                                                     (string-length
                                                      _prefix161545_)
                                                     (string-length
                                                      _src161547_)))
                                                  _srcs161507_)))
                                        (_resolve161540_
                                         _ssi161549_
                                         _srcs161550_))
                                      (_lp161510_ _rest161537_)))
                                _$e161542_)
                               (_resolve161540_ _ssi161503_ _srcs161507_))))))
                    (_K161517161531_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"Cannot find library module"
                        _libpath161495_))))
                (let ((_try-match161515161534_
                       (lambda ()
                         (if (##null? _rest161513161522_)
                             (_K161517161531_)
                             (_E161516161526_)))))
                  (if (##pair? _rest161513161522_)
                      (let ((_tl161520161601_ (##cdr _rest161513161522_))
                            (_hd161519161599_ (##car _rest161513161522_)))
                        (let ((_dir161604_ _hd161519161599_)
                              (_rest161606_ _tl161520161601_))
                          (_K161518161596_ _rest161606_ _dir161604_)))
                      (_try-match161515161534_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_modpath161468_)
        (letrec ((_resolve161470_
                  (lambda (_path161487_ _base161488_)
                    (let ((_$e161490_ (string-rindex _base161488_ '#\/)))
                      (if _$e161490_
                          ((lambda (_idx161493_)
                             (gx#core-resolve-library-module-path
                              (string->symbol
                               (string-append
                                '":"
                                (substring _base161488_ '0 _idx161493_)
                                '"/"
                                _path161487_))))
                           _$e161490_)
                          (gx#core-resolve-library-module-path
                           (string->symbol
                            (string-append '":" _path161487_))))))))
          (let ((_spath161472_ (symbol->string (gx#stx-e _modpath161468_)))
                (_mod161473_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _mod161473_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"Cannot resolve relative module path; not in module context"
                 _modpath161468_))
            (let ((_mpath161475_
                   (symbol->string
                    (##structure-ref
                     _mod161473_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _lp161477_ ((_spath161479_ _spath161472_)
                               (_mpath161480_ _mpath161475_))
                (if (string-prefix? '"../" _spath161479_)
                    (let ((_$e161482_ (string-rindex _mpath161480_ '#\/)))
                      (if _$e161482_
                          ((lambda (_idx161485_)
                             (_lp161477_
                              (substring
                               _spath161479_
                               '3
                               (string-length _spath161479_))
                              (substring _mpath161480_ '0 _idx161485_)))
                           _$e161482_)
                          (gx#raise-syntax-error
                           '#f
                           '"Cannot resolve relative module path; illegal traversal"
                           _modpath161468_)))
                    (if (string-prefix? '"./" _spath161479_)
                        (_lp161477_
                         (substring
                          _spath161479_
                          '2
                          (string-length _spath161479_))
                         _mpath161480_)
                        (_resolve161470_ _spath161479_ _mpath161480_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_dir161461_)
        (let ((_$e161463_
               (pgetq 'package:
                      (gx#core-library-package-plist__0 _dir161461_))))
          (if _$e161463_
              ((lambda (_pkg161466_)
                 (string-append (symbol->string _pkg161466_) '"/"))
               _$e161463_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_dir161433_ _exists?161434_)
        (let* ((_cache161436_ (gx#core-library-package-cache))
               (_$e161438_ (table-ref _cache161436_ _dir161433_ '#f)))
          (if _$e161438_
              (values _$e161438_)
              (let* ((_gerbil.pkg161441_
                      (path-expand '"gerbil.pkg" _dir161433_))
                     (_plist161448_
                      (if (or _exists?161434_
                              (file-exists? _gerbil.pkg161441_))
                          (let ((_e161446_
                                 (gx#call-with-input-source-file
                                  _gerbil.pkg161441_
                                  read)))
                            (if (eof-object? _e161446_)
                                '()
                                (if (list? _e161446_)
                                    _e161446_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _gerbil.pkg161441_
                                     _e161446_))))
                          '())))
                (table-set! _cache161436_ _dir161433_ _plist161448_)
                _plist161448_)))))
    (define gx#core-library-package-plist__0
      (lambda (_dir161454_)
        (let ((_exists?161456_ '#f))
          (gx#core-library-package-plist__% _dir161454_ _exists?161456_))))
    (define gx#core-library-package-plist
      (lambda _g167763_
        (let ((_g167762_ (##length _g167763_)))
          (cond ((##fx= _g167762_ 1)
                 (apply (lambda (_dir161454_)
                          (gx#core-library-package-plist__0 _dir161454_))
                        _g167763_))
                ((##fx= _g167762_ 2)
                 (apply (lambda (_dir161458_ _exists?161459_)
                          (gx#core-library-package-plist__%
                           _dir161458_
                           _exists?161459_))
                        _g167763_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g167763_))))))
    (define gx#core-library-package-cache
      (lambda ()
        (let ((_$e161427_ (gx#current-expander-module-library-package-cache)))
          (if _$e161427_
              (values _$e161427_)
              (let ((_cache161430_ (make-table)))
                (gx#current-expander-module-library-package-cache
                 _cache161430_)
                _cache161430_)))))
    (define gx#core-library-module-path?
      (lambda (_stx161424_) (gx#core-special-module-path? _stx161424_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_stx161422_) (gx#core-special-module-path? _stx161422_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_stx161417_ _char161418_)
        (if (gx#identifier? _stx161417_)
            (if (interned-symbol? (gx#stx-e _stx161417_))
                (let ((_str161420_ (symbol->string (gx#stx-e _stx161417_))))
                  (if (fx> (string-length _str161420_) '1)
                      (eq? (string-ref _str161420_ '0) _char161418_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_stx161411_)
        (gx#core-bound-identifier?__%
         _stx161411_
         (lambda (_g161412161414_)
           (gx#expander-binding?__% _g161412161414_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_stx161405_)
        (gx#core-bound-identifier?__%
         _stx161405_
         (lambda (_g161406161408_)
           (gx#expander-binding?__% _g161406161408_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_stx161392_)
        (letrec ((_module-prelude?161394_
                  (lambda (_e161400_)
                    (let ((_$e161402_
                           (##structure-instance-of?
                            _e161400_
                            'gx#module-context::t)))
                      (if _$e161402_
                          _$e161402_
                          (##structure-instance-of?
                           _e161400_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _stx161392_
           (lambda (_g161395161397_)
             (gx#expander-binding?__%
              _g161395161397_
              _module-prelude?161394_))))))
    (define gx#core-bind-import!__%
      (lambda (_in161322_ _ctx161323_ _force-weak?161324_)
        (let* ((_in161325161334_ _in161322_)
               (_E161327161338_
                (lambda () (error '"No clause matching" _in161325161334_)))
               (_K161328161351_
                (lambda (_weak?161341_ _phi161342_ _key161343_ _source161344_)
                  (gx#core-bind!__%
                   _key161343_
                   (let ((_e161346_
                          (gx#core-resolve-module-export _source161344_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref
                       _e161346_
                       '1
                       gx#binding::t
                       '#f)
                      _key161343_
                      _phi161342_
                      _e161346_
                      (##unchecked-structure-ref
                       _source161344_
                       '1
                       gx#module-export::t
                       '#f)
                      (let ((_$e161348_ _force-weak?161324_))
                        (if _$e161348_ _$e161348_ _weak?161341_))))
                   gx#core-context-rebind?
                   _phi161342_
                   _ctx161323_))))
          (if (##structure-direct-instance-of?
               _in161325161334_
               'gx#module-import::t)
              (let* ((_e161329161354_
                      (##unchecked-structure-ref
                       _in161325161334_
                       '1
                       gx#module-import::t
                       '#f))
                     (_source161357_ _e161329161354_)
                     (_e161330161359_
                      (##unchecked-structure-ref
                       _in161325161334_
                       '2
                       gx#module-import::t
                       '#f))
                     (_key161362_ _e161330161359_)
                     (_e161331161364_
                      (##unchecked-structure-ref
                       _in161325161334_
                       '3
                       gx#module-import::t
                       '#f))
                     (_phi161367_ _e161331161364_)
                     (_e161332161369_
                      (##unchecked-structure-ref
                       _in161325161334_
                       '4
                       gx#module-import::t
                       '#f))
                     (_weak?161372_ _e161332161369_))
                (_K161328161351_
                 _weak?161372_
                 _phi161367_
                 _key161362_
                 _source161357_))
              (_E161327161338_)))))
    (define gx#core-bind-import!__0
      (lambda (_in161377_)
        (let* ((_ctx161379_ (gx#current-expander-context))
               (_force-weak?161381_ '#f))
          (gx#core-bind-import!__%
           _in161377_
           _ctx161379_
           _force-weak?161381_))))
    (define gx#core-bind-import!__1
      (lambda (_in161383_ _ctx161384_)
        (let ((_force-weak?161386_ '#f))
          (gx#core-bind-import!__%
           _in161383_
           _ctx161384_
           _force-weak?161386_))))
    (define gx#core-bind-import!
      (lambda _g167765_
        (let ((_g167764_ (##length _g167765_)))
          (cond ((##fx= _g167764_ 1)
                 (apply (lambda (_in161377_)
                          (gx#core-bind-import!__0 _in161377_))
                        _g167765_))
                ((##fx= _g167764_ 2)
                 (apply (lambda (_in161383_ _ctx161384_)
                          (gx#core-bind-import!__1 _in161383_ _ctx161384_))
                        _g167765_))
                ((##fx= _g167764_ 3)
                 (apply (lambda (_in161388_ _ctx161389_ _force-weak?161390_)
                          (gx#core-bind-import!__%
                           _in161388_
                           _ctx161389_
                           _force-weak?161390_))
                        _g167765_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g167765_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_in161308_ _ctx161309_)
        (gx#core-bind-import!__% _in161308_ _ctx161309_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_in161314_)
        (let ((_ctx161316_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _in161314_ _ctx161316_))))
    (define gx#core-bind-weak-import!
      (lambda _g167767_
        (let ((_g167766_ (##length _g167767_)))
          (cond ((##fx= _g167766_ 1)
                 (apply (lambda (_in161314_)
                          (gx#core-bind-weak-import!__0 _in161314_))
                        _g167767_))
                ((##fx= _g167766_ 2)
                 (apply (lambda (_in161318_ _ctx161319_)
                          (gx#core-bind-weak-import!__%
                           _in161318_
                           _ctx161319_))
                        _g167767_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g167767_))))))
    (define gx#core-resolve-module-export
      (lambda (_out161199_)
        (letrec ((_subst161201_
                  (lambda (_key161247_)
                    (let* ((_key161248161256_ _key161247_)
                           (_else161250161264_ (lambda () _key161247_))
                           (_K161252161295_
                            (lambda (_mark161267_ _id161268_)
                              (let* ((_mark161269161275_ _mark161267_)
                                     (_E161271161279_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark161269161275_)))
                                     (_K161272161287_
                                      (lambda (_subst161282_)
                                        (let ((_$e161284_
                                               (if _subst161282_
                                                   (table-ref
                                                    _subst161282_
                                                    _id161268_
                                                    '#f)
                                                   '#f)))
                                          (if _$e161284_
                                              _$e161284_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _key161247_))))))
                                (if (##structure-instance-of?
                                     _mark161269161275_
                                     'gx#expander-mark::t)
                                    (let* ((_e161273161290_
                                            (##unchecked-structure-ref
                                             _mark161269161275_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst161293_ _e161273161290_))
                                      (_K161272161287_ _subst161293_))
                                    (_E161271161279_))))))
                      (if (##pair? _key161248161256_)
                          (let ((_hd161253161298_ (##car _key161248161256_))
                                (_tl161254161300_ (##cdr _key161248161256_)))
                            (let* ((_id161303_ _hd161253161298_)
                                   (_mark161305_ _tl161254161300_))
                              (_K161252161295_ _mark161305_ _id161303_)))
                          (_else161250161264_))))))
          (let* ((_out161202161212_ _out161199_)
                 (_E161204161216_
                  (lambda () (error '"No clause matching" _out161202161212_)))
                 (_K161205161223_
                  (lambda (_phi161219_ _key161220_ _ctx161221_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _ctx161221_ _phi161219_)
                     (_subst161201_ _key161220_)))))
            (if (##structure-direct-instance-of?
                 _out161202161212_
                 'gx#module-export::t)
                (let* ((_e161206161226_
                        (##unchecked-structure-ref
                         _out161202161212_
                         '1
                         gx#module-export::t
                         '#f))
                       (_ctx161229_ _e161206161226_)
                       (_e161207161231_
                        (##unchecked-structure-ref
                         _out161202161212_
                         '2
                         gx#module-export::t
                         '#f))
                       (_key161234_ _e161207161231_)
                       (_e161208161236_
                        (##unchecked-structure-ref
                         _out161202161212_
                         '3
                         gx#module-export::t
                         '#f))
                       (_phi161239_ _e161208161236_)
                       (_e161209161241_
                        (##unchecked-structure-ref
                         _out161202161212_
                         '4
                         gx#module-export::t
                         '#f))
                       (_e161210161244_
                        (##unchecked-structure-ref
                         _out161202161212_
                         '5
                         gx#module-export::t
                         '#f)))
                  (_K161205161223_ _phi161239_ _key161234_ _ctx161229_))
                (_E161204161216_))))))
    (define gx#core-module-export->import__%
      (lambda (_out161124_ _rename161125_ _dphi161126_)
        (let* ((_out161127161137_ _out161124_)
               (_E161129161141_
                (lambda () (error '"No clause matching" _out161127161137_)))
               (_K161130161153_
                (lambda (_weak?161144_
                         _name161145_
                         _phi161146_
                         _key161147_
                         _ctx161148_)
                  (##structure
                   gx#module-import::t
                   _out161124_
                   (let ((_$e161150_ _rename161125_))
                     (if _$e161150_ _$e161150_ _name161145_))
                   (fx+ _phi161146_ _dphi161126_)
                   _weak?161144_))))
          (if (##structure-direct-instance-of?
               _out161127161137_
               'gx#module-export::t)
              (let* ((_e161131161156_
                      (##unchecked-structure-ref
                       _out161127161137_
                       '1
                       gx#module-export::t
                       '#f))
                     (_ctx161159_ _e161131161156_)
                     (_e161132161161_
                      (##unchecked-structure-ref
                       _out161127161137_
                       '2
                       gx#module-export::t
                       '#f))
                     (_key161164_ _e161132161161_)
                     (_e161133161166_
                      (##unchecked-structure-ref
                       _out161127161137_
                       '3
                       gx#module-export::t
                       '#f))
                     (_phi161169_ _e161133161166_)
                     (_e161134161171_
                      (##unchecked-structure-ref
                       _out161127161137_
                       '4
                       gx#module-export::t
                       '#f))
                     (_name161174_ _e161134161171_)
                     (_e161135161176_
                      (##unchecked-structure-ref
                       _out161127161137_
                       '5
                       gx#module-export::t
                       '#f))
                     (_weak?161179_ _e161135161176_))
                (_K161130161153_
                 _weak?161179_
                 _name161174_
                 _phi161169_
                 _key161164_
                 _ctx161159_))
              (_E161129161141_)))))
    (define gx#core-module-export->import__0
      (lambda (_out161184_)
        (let* ((_rename161186_ '#f) (_dphi161188_ '0))
          (gx#core-module-export->import__%
           _out161184_
           _rename161186_
           _dphi161188_))))
    (define gx#core-module-export->import__1
      (lambda (_out161190_ _rename161191_)
        (let ((_dphi161193_ '0))
          (gx#core-module-export->import__%
           _out161190_
           _rename161191_
           _dphi161193_))))
    (define gx#core-module-export->import
      (lambda _g167769_
        (let ((_g167768_ (##length _g167769_)))
          (cond ((##fx= _g167768_ 1)
                 (apply (lambda (_out161184_)
                          (gx#core-module-export->import__0 _out161184_))
                        _g167769_))
                ((##fx= _g167768_ 2)
                 (apply (lambda (_out161190_ _rename161191_)
                          (gx#core-module-export->import__1
                           _out161190_
                           _rename161191_))
                        _g167769_))
                ((##fx= _g167768_ 3)
                 (apply (lambda (_out161195_ _rename161196_ _dphi161197_)
                          (gx#core-module-export->import__%
                           _out161195_
                           _rename161196_
                           _dphi161197_))
                        _g167769_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g167769_))))))
    (define gx#core-expand-module%
      (lambda (_stx161052_)
        (letrec ((_make-context161054_
                  (lambda (_id161105_)
                    (let* ((_super161107_ (gx#current-expander-context))
                           (_bind-id161109_ (gx#stx-e _id161105_))
                           (_mod-id161111_
                            (if (##structure-instance-of?
                                 _super161107_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##structure-ref
                                  _super161107_
                                  '1
                                  gx#expander-context::t
                                  '#f)
                                 '"$"
                                 _bind-id161109_)
                                _bind-id161109_))
                           (_ns161113_ (symbol->string _mod-id161111_))
                           (_path161120_
                            (if (##structure-instance-of?
                                 _super161107_
                                 'gx#module-context::t)
                                (let ((_path161115_
                                       (##unchecked-structure-ref
                                        _super161107_
                                        '7
                                        gx#module-context::t
                                        '#f)))
                                  (if (or (pair? _path161115_)
                                          (null? _path161115_))
                                      (cons _bind-id161109_ _path161115_)
                                      (if (not _path161115_)
                                          _bind-id161109_
                                          (cons _bind-id161109_
                                                (cons _path161115_ '())))))
                                _bind-id161109_)))
                      (let ((__obj167745
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
                         __obj167745
                         _mod-id161111_
                         _super161107_
                         _ns161113_
                         _path161120_)
                        __obj167745)))))
          (let* ((_e161055161065_ _stx161052_)
                 (_E161057161069_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e161055161065_)))
                 (_E161056161101_
                  (lambda ()
                    (if (gx#stx-pair? _e161055161065_)
                        (let ((_e161058161073_ (gx#syntax-e _e161055161065_)))
                          (let ((_hd161059161076_ (##car _e161058161073_))
                                (_tl161060161078_ (##cdr _e161058161073_)))
                            (if (gx#stx-pair? _tl161060161078_)
                                (let ((_e161061161081_
                                       (gx#syntax-e _tl161060161078_)))
                                  (let ((_hd161062161084_
                                         (##car _e161061161081_))
                                        (_tl161063161086_
                                         (##cdr _e161061161081_)))
                                    (let* ((_id161089_ _hd161062161084_)
                                           (_body161091_ _tl161063161086_))
                                      (if (and (gx#identifier? _id161089_)
                                               (gx#stx-list? _body161091_))
                                          (let* ((_ctx161093_
                                                  (_make-context161054_
                                                   _id161089_))
                                                 (_body161095_
                                                  (gx#core-expand-module-begin
                                                   _body161091_
                                                   _ctx161093_))
                                                 (_body161097_
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body161095_)
                                                   (gx#stx-source
                                                    _stx161052_))))
                                            (##unchecked-structure-set!
                                             _ctx161093_
                                             (make-promise
                                              (lambda ()
                                                (gx#eval-syntax*
                                                 _body161097_)))
                                             '10
                                             gx#module-context::t
                                             '#f)
                                            (##unchecked-structure-set!
                                             _ctx161093_
                                             _body161097_
                                             '11
                                             gx#module-context::t
                                             '#f)
                                            (gx#core-bind-syntax!__0
                                             _id161089_
                                             _ctx161093_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-list
                                              '%#module
                                              (gx#core-quote-syntax__0
                                               _id161089_)
                                              _body161097_)
                                             (gx#stx-source _stx161052_)))
                                          (_E161057161069_)))))
                                (_E161057161069_))))
                        (_E161057161069_)))))
            (_E161056161101_)))))
    (define gx#core-expand-module-begin
      (lambda (_body161018_ _ctx161019_)
        (call-with-parameters
         (lambda ()
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_stx161022_
                   (gx#core-expand-head (cons '%%begin-module _body161018_)))
                  (_e161023161030_ _stx161022_)
                  (_E161025161034_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _stx161022_)))
                  (_E161024161048_
                   (lambda ()
                     (if (gx#stx-pair? _e161023161030_)
                         (let ((_e161026161038_ (gx#syntax-e _e161023161030_)))
                           (let ((_hd161027161041_ (##car _e161026161038_))
                                 (_tl161028161043_ (##cdr _e161026161038_)))
                             (if (and (gx#identifier? _hd161027161041_)
                                      (gx#core-identifier=?
                                       _hd161027161041_
                                       '%#begin-module))
                                 (let ((_body161046_ _tl161028161043_))
                                   (if '#t
                                       (if (gx#sealed-syntax? _stx161022_)
                                           _body161046_
                                           (gx#core-expand-module-body
                                            _body161046_))
                                       (_E161025161034_)))
                                 (_E161025161034_))))
                         (_E161025161034_)))))
             (_E161024161048_)))
         gx#current-expander-context
         _ctx161019_
         gx#current-expander-phi
         '0)))
    (define gx#core-expand-module-body
      (lambda (_body160814_)
        (letrec ((_expand-special160816_
                  (lambda (_hd160945_ _K160946_ _rest160947_ _r160948_)
                    (let* ((_e160949160966_ _hd160945_)
                           (_E160961160970_
                            (lambda ()
                              (_K160946_
                               _rest160947_
                               (cons (gx#core-expand-top _hd160945_)
                                     _r160948_))))
                           (_E160951160982_
                            (lambda ()
                              (if (gx#stx-pair? _e160949160966_)
                                  (let ((_e160962160974_
                                         (gx#syntax-e _e160949160966_)))
                                    (let ((_hd160963160977_
                                           (##car _e160962160974_))
                                          (_tl160964160979_
                                           (##cdr _e160962160974_)))
                                      (if (and (gx#identifier?
                                                _hd160963160977_)
                                               (gx#core-identifier=?
                                                _hd160963160977_
                                                '%#export))
                                          (if '#t
                                              (_K160946_
                                               _rest160947_
                                               (cons _hd160945_ _r160948_))
                                              (_E160961160970_))
                                          (_E160961160970_))))
                                  (_E160961160970_))))
                           (_E160950161014_
                            (lambda ()
                              (if (gx#stx-pair? _e160949160966_)
                                  (let ((_e160952160986_
                                         (gx#syntax-e _e160949160966_)))
                                    (let ((_hd160953160989_
                                           (##car _e160952160986_))
                                          (_tl160954160991_
                                           (##cdr _e160952160986_)))
                                      (if (and (gx#identifier?
                                                _hd160953160989_)
                                               (gx#core-identifier=?
                                                _hd160953160989_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl160954160991_)
                                              (let ((_e160955160994_
                                                     (gx#syntax-e
                                                      _tl160954160991_)))
                                                (let ((_hd160956160997_
                                                       (##car _e160955160994_))
                                                      (_tl160957160999_
                                                       (##cdr _e160955160994_)))
                                                  (let ((_hd-bind161002_
                                                         _hd160956160997_))
                                                    (if (gx#stx-pair?
                                                         _tl160957160999_)
                                                        (let ((_e160958161004_
                                                               (gx#syntax-e
                                                                _tl160957160999_)))
                                                          (let ((_hd160959161007_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e160958161004_))
                        (_tl160960161009_ (##cdr _e160958161004_)))
                    (let ((_expr161012_ _hd160959161007_))
                      (if (gx#stx-null? _tl160960161009_)
                          (if (gx#core-bind-values? _hd-bind161002_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind161002_)
                                (_K160946_
                                 _rest160947_
                                 (cons _hd160945_ _r160948_)))
                              (_E160951160982_))
                          (_E160951160982_)))))
                (_E160951160982_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E160951160982_))
                                          (_E160951160982_))))
                                  (_E160951160982_)))))
                      (_E160950161014_))))
                 (_expand-body160817_
                  (lambda (_rbody160819_)
                    (let _lp160821_ ((_rest160823_ _rbody160819_)
                                     (_body160824_ '()))
                      (let* ((_rest160825160833_ _rest160823_)
                             (_else160827160841_ (lambda () _body160824_))
                             (_K160829160933_
                              (lambda (_rest160844_ _hd160845_)
                                (let* ((_e160846160867_ _hd160845_)
                                       (_E160862160871_
                                        (lambda ()
                                          (_lp160821_
                                           _rest160844_
                                           (cons (gx#core-expand-expression
                                                  _hd160845_)
                                                 _body160824_))))
                                       (_E160858160885_
                                        (lambda ()
                                          (if (gx#stx-pair? _e160846160867_)
                                              (let ((_e160863160875_
                                                     (gx#syntax-e
                                                      _e160846160867_)))
                                                (let ((_hd160864160878_
                                                       (##car _e160863160875_))
                                                      (_tl160865160880_
                                                       (##cdr _e160863160875_)))
                                                  (let ((_form160883_
                                                         _hd160864160878_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _form160883_
                                                         gx#special-form-binding?)
                                                        (_lp160821_
                                                         _rest160844_
                                                         (cons _hd160845_
                                                               _body160824_))
                                                        (_E160862160871_)))))
                                              (_E160862160871_))))
                                       (_E160848160897_
                                        (lambda ()
                                          (if (gx#stx-pair? _e160846160867_)
                                              (let ((_e160859160889_
                                                     (gx#syntax-e
                                                      _e160846160867_)))
                                                (let ((_hd160860160892_
                                                       (##car _e160859160889_))
                                                      (_tl160861160894_
                                                       (##cdr _e160859160889_)))
                                                  (if (and (gx#identifier?
                                                            _hd160860160892_)
                                                           (gx#core-identifier=?
                                                            _hd160860160892_
                                                            '%#export))
                                                      (if '#t
                                                          (_lp160821_
                                                           _rest160844_
                                                           (cons (gx#core-expand-export%__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd160845_)
                         _body160824_))
                  (_E160858160885_))
              (_E160858160885_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E160858160885_))))
                                       (_E160847160929_
                                        (lambda ()
                                          (if (gx#stx-pair? _e160846160867_)
                                              (let ((_e160849160901_
                                                     (gx#syntax-e
                                                      _e160846160867_)))
                                                (let ((_hd160850160904_
                                                       (##car _e160849160901_))
                                                      (_tl160851160906_
                                                       (##cdr _e160849160901_)))
                                                  (if (and (gx#identifier?
                                                            _hd160850160904_)
                                                           (gx#core-identifier=?
                                                            _hd160850160904_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl160851160906_)
                                                          (let ((_e160852160909_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl160851160906_)))
                    (let ((_hd160853160912_ (##car _e160852160909_))
                          (_tl160854160914_ (##cdr _e160852160909_)))
                      (let ((_hd-bind160917_ _hd160853160912_))
                        (if (gx#stx-pair? _tl160854160914_)
                            (let ((_e160855160919_
                                   (gx#syntax-e _tl160854160914_)))
                              (let ((_hd160856160922_ (##car _e160855160919_))
                                    (_tl160857160924_ (##cdr _e160855160919_)))
                                (let ((_expr160927_ _hd160856160922_))
                                  (if (gx#stx-null? _tl160857160924_)
                                      (if '#t
                                          (_lp160821_
                                           _rest160844_
                                           (cons (gx#core-quote-syntax__1
                                                  (gx#core-list
                                                   '%#define-values
                                                   (gx#core-quote-bind-values
                                                    _hd-bind160917_)
                                                   (gx#core-expand-expression
                                                    _expr160927_))
                                                  (gx#stx-source _hd160845_))
                                                 _body160824_))
                                          (_E160848160897_))
                                      (_E160848160897_)))))
                            (_E160848160897_)))))
                  (_E160848160897_))
              (_E160848160897_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E160848160897_)))))
                                  (_E160847160929_)))))
                        (if (##pair? _rest160825160833_)
                            (let ((_hd160830160936_ (##car _rest160825160833_))
                                  (_tl160831160938_
                                   (##cdr _rest160825160833_)))
                              (let* ((_hd160941_ _hd160830160936_)
                                     (_rest160943_ _tl160831160938_))
                                (_K160829160933_ _rest160943_ _hd160941_)))
                            (_else160827160841_)))))))
          (_expand-body160817_
           (gx#core-expand-block__%
            (cons '%#begin-module _body160814_)
            _expand-special160816_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_stx160657_
               _expanded?160658_
               _method160659_
               _current-phi160660_
               _expand1160661_)
        (letrec ((_K160663_
                  (lambda (_rest160781_ _r160782_)
                    (let* ((_e160783160790_ _rest160781_)
                           (_E160785160794_ (lambda () _r160782_))
                           (_E160784160810_
                            (lambda ()
                              (if (gx#stx-pair? _e160783160790_)
                                  (let ((_e160786160798_
                                         (gx#syntax-e _e160783160790_)))
                                    (let ((_hd160787160801_
                                           (##car _e160786160798_))
                                          (_tl160788160803_
                                           (##cdr _e160786160798_)))
                                      (let* ((_hd160806_ _hd160787160801_)
                                             (_rest160808_ _tl160788160803_))
                                        (if '#t
                                            (_step160664_
                                             _hd160806_
                                             _rest160808_
                                             _r160782_)
                                            (_E160785160794_)))))
                                  (_E160785160794_)))))
                      (_E160784160810_))))
                 (_step160664_
                  (lambda (_hd160695_ _rest160696_ _r160697_)
                    (let* ((_e160698160716_ _hd160695_)
                           (_E160711160720_
                            (lambda ()
                              (if (_expanded?160658_ (gx#stx-e _hd160695_))
                                  (_K160663_
                                   _rest160696_
                                   (cons (gx#stx-e _hd160695_) _r160697_))
                                  (_expand1160661_
                                   _hd160695_
                                   _K160663_
                                   _rest160696_
                                   _r160697_))))
                           (_E160707160736_
                            (lambda ()
                              (if (gx#stx-pair? _e160698160716_)
                                  (let ((_e160712160724_
                                         (gx#syntax-e _e160698160716_)))
                                    (let ((_hd160713160727_
                                           (##car _e160712160724_))
                                          (_tl160714160729_
                                           (##cdr _e160712160724_)))
                                      (let* ((_macro160732_ _hd160713160727_)
                                             (_body160734_ _tl160714160729_))
                                        (if (gx#core-bound-identifier?__%
                                             _macro160732_
                                             gx#syntax-binding?)
                                            (_K160663_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _macro160732_)
                                                    _hd160695_
                                                    _method160659_)
                                                   _rest160696_)
                                             _r160697_)
                                            (_E160711160720_)))))
                                  (_E160711160720_))))
                           (_E160700160750_
                            (lambda ()
                              (if (gx#stx-pair? _e160698160716_)
                                  (let ((_e160708160740_
                                         (gx#syntax-e _e160698160716_)))
                                    (let ((_hd160709160743_
                                           (##car _e160708160740_))
                                          (_tl160710160745_
                                           (##cdr _e160708160740_)))
                                      (if (eq? (gx#stx-e _hd160709160743_)
                                               'begin:)
                                          (let ((_body160748_
                                                 _tl160710160745_))
                                            (if '#t
                                                (_K160663_
                                                 (gx#stx-foldr
                                                  cons
                                                  _rest160696_
                                                  _body160748_)
                                                 _r160697_)
                                                (_E160707160736_)))
                                          (_E160707160736_))))
                                  (_E160707160736_))))
                           (_E160699160777_
                            (lambda ()
                              (if (gx#stx-pair? _e160698160716_)
                                  (let ((_e160701160754_
                                         (gx#syntax-e _e160698160716_)))
                                    (let ((_hd160702160757_
                                           (##car _e160701160754_))
                                          (_tl160703160759_
                                           (##cdr _e160701160754_)))
                                      (if (eq? (gx#stx-e _hd160702160757_)
                                               'phi:)
                                          (if (gx#stx-pair? _tl160703160759_)
                                              (let ((_e160704160762_
                                                     (gx#syntax-e
                                                      _tl160703160759_)))
                                                (let ((_hd160705160765_
                                                       (##car _e160704160762_))
                                                      (_tl160706160767_
                                                       (##cdr _e160704160762_)))
                                                  (let* ((_dphi160770_
                                                          _hd160705160765_)
                                                         (_body160772_
                                                          _tl160706160767_))
                                                    (if (gx#stx-fixnum?
                                                         _dphi160770_)
                                                        (let ((_rbody160775_
                                                               (call-with-parameters
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_K160663_ _body160772_ '()))
                        _current-phi160660_
                        (fx+ (gx#stx-e _dphi160770_) (_current-phi160660_)))))
                  (_K160663_
                   _rest160696_
                   (foldr1 cons _r160697_ _rbody160775_)))
                (_E160700160750_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E160700160750_))
                                          (_E160700160750_))))
                                  (_E160700160750_)))))
                      (_E160699160777_)))))
          (let* ((_e160665160672_ _stx160657_)
                 (_E160667160676_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e160665160672_)))
                 (_E160666160691_
                  (lambda ()
                    (if (gx#stx-pair? _e160665160672_)
                        (let ((_e160668160680_ (gx#syntax-e _e160665160672_)))
                          (let ((_hd160669160683_ (##car _e160668160680_))
                                (_tl160670160685_ (##cdr _e160668160680_)))
                            (let ((_body160688_ _tl160670160685_))
                              (if '#t
                                  (if (_current-phi160660_)
                                      (_K160663_ _body160688_ '())
                                      (call-with-parameters
                                       (lambda () (_K160663_ _body160688_ '()))
                                       _current-phi160660_
                                       (gx#current-expander-phi)))
                                  (_E160667160676_)))))
                        (_E160667160676_)))))
            (_E160666160691_)))))
    (define gx#core-expand-import%__%
      (lambda (_stx160324_ _internal-expand?160325_)
        (letrec ((_expand1160327_
                  (lambda (_hd160637_ _K160638_ _rest160639_ _r160640_)
                    (if (gx#core-bound-module? _hd160637_)
                        (_import1160328_
                         (gx#syntax-local-e__0 _hd160637_)
                         _K160638_
                         _rest160639_
                         _r160640_)
                        (if (gx#core-library-module-path? _hd160637_)
                            (_import1160328_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _hd160637_))
                             _K160638_
                             _rest160639_
                             _r160640_)
                            (if (gx#core-library-relative-module-path?
                                 _hd160637_)
                                (_import1160328_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _hd160637_))
                                 _K160638_
                                 _rest160639_
                                 _r160640_)
                                (let ((_e160642_ (gx#stx-e _hd160637_)))
                                  (if (pair? _e160642_)
                                      (let ((_$e160644_
                                             (gx#stx-e (car _e160642_))))
                                        (if (eq? 'spec: _$e160644_)
                                            (_import-spec160331_
                                             _hd160637_
                                             _K160638_
                                             _rest160639_
                                             _r160640_)
                                            (if (eq? 'in: _$e160644_)
                                                (_import-submodule160329_
                                                 _hd160637_
                                                 _K160638_
                                                 _rest160639_
                                                 _r160640_)
                                                (if (eq? 'runtime: _$e160644_)
                                                    (_import-runtime160330_
                                                     _hd160637_
                                                     _K160638_
                                                     _rest160639_
                                                     _r160640_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _stx160324_
                                                     _hd160637_)))))
                                      (if (string? _e160642_)
                                          (_import1160328_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _hd160637_
                                             (gx#stx-source _stx160324_)))
                                           _K160638_
                                           _rest160639_
                                           _r160640_)
                                          (if (##structure-instance-of?
                                               _e160642_
                                               'gx#module-context::t)
                                              (_K160638_
                                               _rest160639_
                                               (cons _e160642_ _r160640_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _stx160324_
                                               _hd160637_))))))))))
                 (_import1160328_
                  (lambda (_ctx160626_ _K160627_ _rest160628_ _r160629_)
                    (let ((_dphi160631_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_K160627_
                       _rest160628_
                       (cons (##structure
                              gx#import-set::t
                              _ctx160626_
                              _dphi160631_
                              (map (lambda (_g160632160634_)
                                     (gx#core-module-export->import__%
                                      _g160632160634_
                                      '#f
                                      _dphi160631_))
                                   (##unchecked-structure-ref
                                    _ctx160626_
                                    '9
                                    gx#module-context::t
                                    '#f)))
                             _r160629_)))))
                 (_import-submodule160329_
                  (lambda (_hd160593_ _K160594_ _rest160595_ _r160596_)
                    (let* ((_e160597160604_ _hd160593_)
                           (_E160599160608_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e160597160604_)))
                           (_E160598160622_
                            (lambda ()
                              (if (gx#stx-pair? _e160597160604_)
                                  (let ((_e160600160612_
                                         (gx#syntax-e _e160597160604_)))
                                    (let ((_hd160601160615_
                                           (##car _e160600160612_))
                                          (_tl160602160617_
                                           (##cdr _e160600160612_)))
                                      (let ((_spath160620_ _tl160602160617_))
                                        (if '#t
                                            (_import1160328_
                                             (_import-spec-source160332_
                                              _spath160620_)
                                             _K160594_
                                             _rest160595_
                                             _r160596_)
                                            (_E160599160608_)))))
                                  (_E160599160608_)))))
                      (_E160598160622_))))
                 (_import-runtime160330_
                  (lambda (_hd160560_ _K160561_ _rest160562_ _r160563_)
                    (let* ((_e160564160571_ _hd160560_)
                           (_E160566160575_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e160564160571_)))
                           (_E160565160589_
                            (lambda ()
                              (if (gx#stx-pair? _e160564160571_)
                                  (let ((_e160567160579_
                                         (gx#syntax-e _e160564160571_)))
                                    (let ((_hd160568160582_
                                           (##car _e160567160579_))
                                          (_tl160569160584_
                                           (##cdr _e160567160579_)))
                                      (let ((_spath160587_ _tl160569160584_))
                                        (if '#t
                                            (_K160561_
                                             _rest160562_
                                             (cons (_import-spec-source160332_
                                                    _spath160587_)
                                                   _r160563_))
                                            (_E160566160575_)))))
                                  (_E160566160575_)))))
                      (_E160565160589_))))
                 (_import-spec160331_
                  (lambda (_hd160399_ _K160400_ _rest160401_ _r160402_)
                    (let* ((_e160403160420_ _hd160399_)
                           (_E160412160424_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e160403160420_)))
                           (_E160405160534_
                            (lambda ()
                              (if (gx#stx-pair? _e160403160420_)
                                  (let ((_e160413160428_
                                         (gx#syntax-e _e160403160420_)))
                                    (let ((_hd160414160431_
                                           (##car _e160413160428_))
                                          (_tl160415160433_
                                           (##cdr _e160413160428_)))
                                      (if (gx#stx-pair? _tl160415160433_)
                                          (let ((_e160416160436_
                                                 (gx#syntax-e
                                                  _tl160415160433_)))
                                            (let ((_hd160417160439_
                                                   (##car _e160416160436_))
                                                  (_tl160418160441_
                                                   (##cdr _e160416160436_)))
                                              (let* ((_path160444_
                                                      _hd160417160439_)
                                                     (_specs160446_
                                                      _tl160418160441_))
                                                (if '#t
                                                    (let ((_src-ctx160448_
                                                           (_import-spec-source160332_
                                                            _path160444_))
                                                          (_exports160449_
                                                           (make-table))
                                                          (_specs160450_
                                                           (gx#syntax->list
                                                            _specs160446_)))
                                                      (for-each
                                                       (lambda (_out160452_)
                                                         (table-set!
                                                          _exports160449_
                                                          (cons (##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _out160452_
                         '3
                         gx#module-export::t
                         '#f)
                        (##unchecked-structure-ref
                         _out160452_
                         '4
                         gx#module-export::t
                         '#f))
                  _out160452_))
               (##unchecked-structure-ref
                _src-ctx160448_
                '9
                gx#module-context::t
                '#f))
              (_K160400_
               _rest160401_
               (foldl1 (lambda (_spec160454_ _r160455_)
                         (let* ((_e160456160472_ _spec160454_)
                                (_E160458160476_
                                 (lambda ()
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid syntax-case clause"
                                    _e160456160472_)))
                                (_E160457160530_
                                 (lambda ()
                                   (if (gx#stx-pair? _e160456160472_)
                                       (let ((_e160459160480_
                                              (gx#syntax-e _e160456160472_)))
                                         (let ((_hd160460160483_
                                                (##car _e160459160480_))
                                               (_tl160461160485_
                                                (##cdr _e160459160480_)))
                                           (let ((_phi160488_
                                                  _hd160460160483_))
                                             (if (gx#stx-pair?
                                                  _tl160461160485_)
                                                 (let ((_e160462160490_
                                                        (gx#syntax-e
                                                         _tl160461160485_)))
                                                   (let ((_hd160463160493_
                                                          (##car _e160462160490_))
                                                         (_tl160464160495_
                                                          (##cdr _e160462160490_)))
                                                     (let ((_name160498_
                                                            _hd160463160493_))
                                                       (if (gx#stx-pair?
                                                            _tl160464160495_)
                                                           (let ((_e160465160500_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl160464160495_)))
                     (let ((_hd160466160503_ (##car _e160465160500_))
                           (_tl160467160505_ (##cdr _e160465160500_)))
                       (let ((_src-phi160508_ _hd160466160503_))
                         (if (gx#stx-pair? _tl160467160505_)
                             (let ((_e160468160510_
                                    (gx#syntax-e _tl160467160505_)))
                               (let ((_hd160469160513_ (##car _e160468160510_))
                                     (_tl160470160515_
                                      (##cdr _e160468160510_)))
                                 (let ((_src-name160518_ _hd160469160513_))
                                   (if (gx#stx-null? _tl160470160515_)
                                       (if (and (gx#stx-fixnum?
                                                 _src-phi160508_)
                                                (gx#identifier?
                                                 _src-name160518_)
                                                (gx#stx-fixnum? _phi160488_)
                                                (gx#identifier? _name160498_))
                                           (let ((_src-phi160520_
                                                  (gx#stx-e _src-phi160508_))
                                                 (_src-name160521_
                                                  (gx#core-identifier-key
                                                   _src-name160518_))
                                                 (_phi160522_
                                                  (gx#stx-e _phi160488_))
                                                 (_name160523_
                                                  (gx#core-identifier-key
                                                   _name160498_)))
                                             (let ((_$e160525_
                                                    (table-ref
                                                     _exports160449_
                                                     (cons _src-phi160520_
                                                           _src-name160521_)
                                                     '#f)))
                                               (if _$e160525_
                                                   ((lambda (_out160528_)
                                                      (cons (gx#core-module-export->import__%
                                                             _out160528_
                                                             _name160523_
                                                             (fx- _phi160522_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _src-phi160520_))
                    _r160455_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _$e160525_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; no matching export"
                                                    _stx160324_
                                                    _hd160399_))))
                                           (_E160458160476_))
                                       (_E160458160476_)))))
                             (_E160458160476_)))))
                   (_E160458160476_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E160458160476_)))))
                                       (_E160458160476_)))))
                           (_E160457160530_)))
                       _r160402_
                       _specs160450_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E160412160424_)))))
                                          (_E160412160424_))))
                                  (_E160412160424_))))
                           (_E160404160556_
                            (lambda ()
                              (if (gx#stx-pair? _e160403160420_)
                                  (let ((_e160406160538_
                                         (gx#syntax-e _e160403160420_)))
                                    (let ((_hd160407160541_
                                           (##car _e160406160538_))
                                          (_tl160408160543_
                                           (##cdr _e160406160538_)))
                                      (if (gx#stx-pair? _tl160408160543_)
                                          (let ((_e160409160546_
                                                 (gx#syntax-e
                                                  _tl160408160543_)))
                                            (let ((_hd160410160549_
                                                   (##car _e160409160546_))
                                                  (_tl160411160551_
                                                   (##cdr _e160409160546_)))
                                              (let ((_path160554_
                                                     _hd160410160549_))
                                                (if (gx#stx-null?
                                                     _tl160411160551_)
                                                    (if '#t
                                                        (_K160400_
                                                         _rest160401_
                                                         (cons (_import-spec-source160332_
                                                                _path160554_)
                                                               _r160402_))
                                                        (_E160405160534_))
                                                    (_E160405160534_)))))
                                          (_E160405160534_))))
                                  (_E160405160534_)))))
                      (_E160404160556_))))
                 (_import-spec-source160332_
                  (lambda (_spath160397_)
                    (gx#core-import-nested-module _spath160397_ _stx160324_)))
                 (_import!160333_
                  (lambda (_rbody160346_)
                    (letrec* ((_current-ctx160348_
                               (gx#current-expander-context))
                              (_deps160349_ (make-table 'test: eq?))
                              (_bind!160350_
                               (lambda (_hd160395_)
                                 (gx#core-bind-import!__1
                                  _hd160395_
                                  _current-ctx160348_))))
                      (let _lp160352_ ((_rest160354_ _rbody160346_)
                                       (_body160355_ '()))
                        (let* ((_rest160356160364_ _rest160354_)
                               (_else160358160374_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _current-ctx160348_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _current-ctx160348_
                                       (foldl1 cons
                                               (##unchecked-structure-ref
                                                _current-ctx160348_
                                                '8
                                                gx#module-context::t
                                                '#f)
                                               _body160355_)
                                       '8
                                       gx#module-context::t
                                       '#f)
                                      '#!void)
                                  (table-for-each
                                   (lambda (_ctx160372_ _g167770_)
                                     (gx#eval-module _ctx160372_))
                                   _deps160349_)
                                  _body160355_))
                               (_K160360160383_
                                (lambda (_rest160377_ _hd160378_)
                                  (if (##structure-direct-instance-of?
                                       _hd160378_
                                       'gx#module-import::t)
                                      (begin
                                        (_bind!160350_ _hd160378_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _hd160378_
                                                   '3
                                                   gx#module-import::t
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _hd160378_
                                                            '1
                                                            gx#module-import::t
                                                            '#f)
                                                           '3
                                                           gx#module-export::t
                                                           '#f)))
                                            (table-set!
                                             _deps160349_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _hd160378_
                                               '1
                                               gx#module-import::t
                                               '#f)
                                              '1
                                              gx#module-export::t
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _hd160378_
                                           'gx#import-set::t)
                                          (begin
                                            (for-each
                                             _bind!160350_
                                             (##unchecked-structure-ref
                                              _hd160378_
                                              '3
                                              gx#import-set::t
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _hd160378_
                                                  '2
                                                  gx#import-set::t
                                                  '#f))
                                                (table-set!
                                                 _deps160349_
                                                 (##unchecked-structure-ref
                                                  _hd160378_
                                                  '1
                                                  gx#import-set::t
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_$e160380_
                                                 (##structure-instance-of?
                                                  _hd160378_
                                                  'gx#module-context::t)))
                                            (if _$e160380_
                                                _$e160380_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _stx160324_
                                                 _hd160378_)))))
                                  (_lp160352_
                                   _rest160377_
                                   (cons _hd160378_ _body160355_)))))
                          (if (##pair? _rest160356160364_)
                              (let ((_hd160361160386_
                                     (##car _rest160356160364_))
                                    (_tl160362160388_
                                     (##cdr _rest160356160364_)))
                                (let* ((_hd160391_ _hd160361160386_)
                                       (_rest160393_ _tl160362160388_))
                                  (_K160360160383_ _rest160393_ _hd160391_)))
                              (_else160358160374_)))))))
                 (_expanded-import?160334_
                  (lambda (_e160338_)
                    (let ((_$e160340_
                           (##structure-direct-instance-of?
                            _e160338_
                            'gx#import-set::t)))
                      (if _$e160340_
                          _$e160340_
                          (let ((_$e160343_
                                 (##structure-direct-instance-of?
                                  _e160338_
                                  'gx#module-import::t)))
                            (if _$e160343_
                                _$e160343_
                                (##structure-instance-of?
                                 _e160338_
                                 'gx#module-context::t))))))))
          (let ((_rbody160336_
                 (gx#core-expand-import/export
                  _stx160324_
                  _expanded-import?160334_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _expand1160327_)))
            (if _internal-expand?160325_
                (reverse _rbody160336_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_import!160333_ _rbody160336_))
                 (gx#stx-source _stx160324_)))))))
    (define gx#core-expand-import%__0
      (lambda (_stx160650_)
        (let ((_internal-expand?160652_ '#f))
          (gx#core-expand-import%__% _stx160650_ _internal-expand?160652_))))
    (define gx#core-expand-import%
      (lambda _g167772_
        (let ((_g167771_ (##length _g167772_)))
          (cond ((##fx= _g167771_ 1)
                 (apply (lambda (_stx160650_)
                          (gx#core-expand-import%__0 _stx160650_))
                        _g167772_))
                ((##fx= _g167771_ 2)
                 (apply (lambda (_stx160654_ _internal-expand?160655_)
                          (gx#core-expand-import%__%
                           _stx160654_
                           _internal-expand?160655_))
                        _g167772_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g167772_))))))
    (define gx#core-import-nested-module
      (lambda (_spath160251_ _where160252_)
        (let* ((_e160253160260_ _spath160251_)
               (_E160255160264_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160253160260_)))
               (_E160254160319_
                (lambda ()
                  (if (gx#stx-pair? _e160253160260_)
                      (let ((_e160256160268_ (gx#syntax-e _e160253160260_)))
                        (let ((_hd160257160271_ (##car _e160256160268_))
                              (_tl160258160273_ (##cdr _e160256160268_)))
                          (let* ((_origin160276_ _hd160257160271_)
                                 (_sub160278_ _tl160258160273_))
                            (if '#t
                                (let ((_origin-ctx160280_
                                       (if (gx#stx-false? _origin160276_)
                                           (gx#current-expander-context)
                                           (gx#import-module__0
                                            _origin160276_))))
                                  (let _lp160282_ ((_rest160284_ _sub160278_)
                                                   (_ctx160285_
                                                    _origin-ctx160280_))
                                    (let* ((_e160286160293_ _rest160284_)
                                           (_E160288160297_
                                            (lambda () _ctx160285_))
                                           (_E160287160315_
                                            (lambda ()
                                              (if (gx#stx-pair?
                                                   _e160286160293_)
                                                  (let ((_e160289160301_
                                                         (gx#syntax-e
                                                          _e160286160293_)))
                                                    (let ((_hd160290160304_
                                                           (##car _e160289160301_))
                                                          (_tl160291160306_
                                                           (##cdr _e160289160301_)))
                                                      (let* ((_id160309_
                                                              _hd160290160304_)
                                                             (_rest160311_
                                                              _tl160291160306_))
                                                        (if '#t
                                                            (let ((_bind160313_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#resolve-identifier__%
                            _id160309_
                            '0
                            _ctx160285_)))
                      (if (and (##structure-direct-instance-of?
                                _bind160313_
                                'gx#syntax-binding::t)
                               (##structure-instance-of?
                                (##unchecked-structure-ref
                                 _bind160313_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                'gx#module-context::t))
                          '#!void
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; not bound as module"
                           _where160252_
                           _spath160251_
                           _id160309_))
                      (_lp160282_
                       _rest160311_
                       (##unchecked-structure-ref
                        _bind160313_
                        '4
                        gx#syntax-binding::t
                        '#f)))
                    (_E160288160297_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E160288160297_)))))
                                      (_E160287160315_))))
                                (_E160255160264_)))))
                      (_E160255160264_)))))
          (_E160254160319_))))
    (define gx#core-expand-import-source
      (lambda (_hd160249_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _hd160249_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_stx159757_ _internal-expand?159758_)
        (letrec* ((_make-export__167701167702_
                   (lambda (_bind160197_ _phi160198_ _ctx160199_ _name160200_)
                     (let* ((_key160202_
                             (##unchecked-structure-ref
                              _bind160197_
                              '2
                              gx#binding::t
                              '#f))
                            (_export-key160204_
                             (if _name160200_
                                 (gx#core-identifier-key _name160200_)
                                 _key160202_)))
                       (##structure
                        gx#module-export::t
                        _ctx160199_
                        _key160202_
                        _phi160198_
                        _export-key160204_
                        (let ((_$e160207_
                               (##structure-instance-of?
                                _bind160197_
                                'gx#extern-binding::t)))
                          (if _$e160207_
                              _$e160207_
                              (##structure-direct-instance-of?
                               _bind160197_
                               'gx#import-binding::t)))))))
                  (_make-export__0__167703167706_
                   (lambda (_bind160213_)
                     (let* ((_phi160215_ (gx#current-export-expander-phi))
                            (_ctx160217_ (gx#current-expander-context))
                            (_name160219_ '#f))
                       (_make-export__167701167702_
                        _bind160213_
                        _phi160215_
                        _ctx160217_
                        _name160219_))))
                  (_make-export__1__167704167707_
                   (lambda (_bind160221_ _phi160222_)
                     (let* ((_ctx160224_ (gx#current-expander-context))
                            (_name160226_ '#f))
                       (_make-export__167701167702_
                        _bind160221_
                        _phi160222_
                        _ctx160224_
                        _name160226_))))
                  (_make-export__2__167705167708_
                   (lambda (_bind160228_ _phi160229_ _ctx160230_)
                     (let ((_name160232_ '#f))
                       (_make-export__167701167702_
                        _bind160228_
                        _phi160229_
                        _ctx160230_
                        _name160232_))))
                  (_make-export159760_
                   (lambda _g167774_
                     (let ((_g167773_ (##length _g167774_)))
                       (cond ((##fx= _g167773_ 1)
                              (apply (lambda (_bind160213_)
                                       (_make-export__0__167703167706_
                                        _bind160213_))
                                     _g167774_))
                             ((##fx= _g167773_ 2)
                              (apply (lambda (_bind160221_ _phi160222_)
                                       (_make-export__1__167704167707_
                                        _bind160221_
                                        _phi160222_))
                                     _g167774_))
                             ((##fx= _g167773_ 3)
                              (apply (lambda (_bind160228_
                                              _phi160229_
                                              _ctx160230_)
                                       (_make-export__2__167705167708_
                                        _bind160228_
                                        _phi160229_
                                        _ctx160230_))
                                     _g167774_))
                             ((##fx= _g167773_ 4)
                              (apply (lambda (_bind160234_
                                              _phi160235_
                                              _ctx160236_
                                              _name160237_)
                                       (_make-export__167701167702_
                                        _bind160234_
                                        _phi160235_
                                        _ctx160236_
                                        _name160237_))
                                     _g167774_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g167774_))))))
                  (_expand1159761_
                   (lambda (_hd159910_ _K159911_ _rest159912_ _r159913_)
                     (let* ((_e159914159946_ _hd159910_)
                            (_E159941159950_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _stx159757_
                                _hd159910_)))
                            (_E159931160029_
                             (lambda ()
                               (if (gx#stx-pair? _e159914159946_)
                                   (let ((_e159942159954_
                                          (gx#syntax-e _e159914159946_)))
                                     (let ((_hd159943159957_
                                            (##car _e159942159954_))
                                           (_tl159944159959_
                                            (##cdr _e159942159954_)))
                                       (if (eq? (gx#stx-e _hd159943159957_)
                                                'import:)
                                           (let ((_in159962_ _tl159944159959_))
                                             (if (gx#stx-list? _in159962_)
                                                 (let _lp159964_ ((_in-rest159966_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _in159962_)
                          (_r159967_ _r159913_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_e159968159975_
                                                           _in-rest159966_)
                                                          (_E159970159979_
                                                           (lambda ()
                                                             (_K159911_
                                                              _rest159912_
                                                              _r159967_)))
                                                          (_E159969160025_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _e159968159975_)
                         (let ((_e159971159983_ (gx#syntax-e _e159968159975_)))
                           (let ((_hd159972159986_ (##car _e159971159983_))
                                 (_tl159973159988_ (##cdr _e159971159983_)))
                             (let* ((_hd159991_ _hd159972159986_)
                                    (_in-rest159993_ _tl159973159988_))
                               (if '#t
                                   (let ((_src160023_
                                          (if (gx#core-bound-module?
                                               _hd159991_)
                                              (gx#syntax-local-e__0 _hd159991_)
                                              (if (gx#core-library-module-path?
                                                   _hd159991_)
                                                  (gx#import-module__0
                                                   (gx#core-resolve-library-module-path
                                                    _hd159991_))
                                                  (if (gx#core-library-relative-module-path?
                                                       _hd159991_)
                                                      (gx#import-module__0
                                                       (gx#core-resolve-library-relative-module-path
                                                        _hd159991_))
                                                      (if (gx#stx-string?
                                                           _hd159991_)
                                                          (gx#import-module__0
                                                           (gx#core-resolve-module-path__%
                                                            _hd159991_
                                                            (gx#stx-source
                                                             _stx159757_)))
                                                          (let* ((_e159994160001_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd159991_)
                         (_E159996160005_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; illegal re-export"
                             _stx159757_
                             _hd159991_)))
                         (_E159995160019_
                          (lambda ()
                            (if (gx#stx-pair? _e159994160001_)
                                (let ((_e159997160009_
                                       (gx#syntax-e _e159994160001_)))
                                  (let ((_hd159998160012_
                                         (##car _e159997160009_))
                                        (_tl159999160014_
                                         (##cdr _e159997160009_)))
                                    (if (eq? (gx#stx-e _hd159998160012_) 'in:)
                                        (let ((_spath160017_ _tl159999160014_))
                                          (if '#t
                                              (gx#core-import-nested-module
                                               _spath160017_
                                               _stx159757_)
                                              (_E159996160005_)))
                                        (_E159996160005_))))
                                (_E159996160005_)))))
                    (_E159995160019_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_lp159964_
                                      _in-rest159993_
                                      (_export-imports159762_
                                       _src160023_
                                       _r159967_)))
                                   (_E159970159979_)))))
                         (_E159970159979_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E159969160025_)))
                                                 (_E159941159950_)))
                                           (_E159941159950_))))
                                   (_E159941159950_))))
                            (_E159918160068_
                             (lambda ()
                               (if (gx#stx-pair? _e159914159946_)
                                   (let ((_e159932160033_
                                          (gx#syntax-e _e159914159946_)))
                                     (let ((_hd159933160036_
                                            (##car _e159932160033_))
                                           (_tl159934160038_
                                            (##cdr _e159932160033_)))
                                       (if (eq? (gx#stx-e _hd159933160036_)
                                                'rename:)
                                           (if (gx#stx-pair? _tl159934160038_)
                                               (let ((_e159935160041_
                                                      (gx#syntax-e
                                                       _tl159934160038_)))
                                                 (let ((_hd159936160044_
                                                        (##car _e159935160041_))
                                                       (_tl159937160046_
                                                        (##cdr _e159935160041_)))
                                                   (let ((_id160049_
                                                          _hd159936160044_))
                                                     (if (gx#stx-pair?
                                                          _tl159937160046_)
                                                         (let ((_e159938160051_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl159937160046_)))
                   (let ((_hd159939160054_ (##car _e159938160051_))
                         (_tl159940160056_ (##cdr _e159938160051_)))
                     (let ((_name160059_ _hd159939160054_))
                       (if (gx#stx-null? _tl159940160056_)
                           (if '#t
                               (let* ((_phi160061_
                                       (gx#current-export-expander-phi))
                                      (_$e160063_
                                       (gx#core-resolve-identifier__1
                                        _id160049_
                                        _phi160061_)))
                                 (if _$e160063_
                                     ((lambda (_bind160066_)
                                        (_K159911_
                                         _rest159912_
                                         (cons (_make-export__167701167702_
                                                _bind160066_
                                                _phi160061_
                                                (gx#current-expander-context)
                                                _name160059_)
                                               _r159913_)))
                                      _$e160063_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Reference to unbound identifier"
                                      _stx159757_
                                      _hd159910_
                                      _id160049_)))
                               (_E159931160029_))
                           (_E159931160029_)))))
                 (_E159931160029_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E159931160029_))
                                           (_E159931160029_))))
                                   (_E159931160029_))))
                            (_E159917160117_
                             (lambda ()
                               (if (gx#stx-pair? _e159914159946_)
                                   (let ((_e159919160072_
                                          (gx#syntax-e _e159914159946_)))
                                     (let ((_hd159920160075_
                                            (##car _e159919160072_))
                                           (_tl159921160077_
                                            (##cdr _e159919160072_)))
                                       (if (eq? (gx#stx-e _hd159920160075_)
                                                'spec:)
                                           (if (gx#stx-pair? _tl159921160077_)
                                               (let ((_e159922160080_
                                                      (gx#syntax-e
                                                       _tl159921160077_)))
                                                 (let ((_hd159923160083_
                                                        (##car _e159922160080_))
                                                       (_tl159924160085_
                                                        (##cdr _e159922160080_)))
                                                   (let ((_phi160088_
                                                          _hd159923160083_))
                                                     (if (gx#stx-pair?
                                                          _tl159924160085_)
                                                         (let ((_e159925160090_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl159924160085_)))
                   (let ((_hd159926160093_ (##car _e159925160090_))
                         (_tl159927160095_ (##cdr _e159925160090_)))
                     (let ((_id160098_ _hd159926160093_))
                       (if (gx#stx-pair? _tl159927160095_)
                           (let ((_e159928160100_
                                  (gx#syntax-e _tl159927160095_)))
                             (let ((_hd159929160103_ (##car _e159928160100_))
                                   (_tl159930160105_ (##cdr _e159928160100_)))
                               (let ((_name160108_ _hd159929160103_))
                                 (if (gx#stx-null? _tl159930160105_)
                                     (if (and (gx#stx-fixnum? _phi160088_)
                                              (gx#identifier? _id160098_)
                                              (gx#identifier? _name160108_))
                                         (let* ((_phi160110_
                                                 (gx#stx-e _phi160088_))
                                                (_$e160112_
                                                 (gx#core-resolve-identifier__1
                                                  _id160098_
                                                  _phi160110_)))
                                           (if _$e160112_
                                               ((lambda (_bind160115_)
                                                  (_K159911_
                                                   _rest159912_
                                                   (cons (_make-export__167701167702_
                                                          _bind160115_
                                                          _phi160110_
                                                          (gx#current-expander-context)
                                                          _name160108_)
                                                         _r159913_)))
                                                _$e160112_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _stx159757_
                                                _hd159910_
                                                _id160098_)))
                                         (_E159918160068_))
                                     (_E159918160068_)))))
                           (_E159918160068_)))))
                 (_E159918160068_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E159918160068_))
                                           (_E159918160068_))))
                                   (_E159918160068_))))
                            (_E159916160128_
                             (lambda ()
                               (let ((_id160121_ _e159914159946_))
                                 (if (gx#identifier? _id160121_)
                                     (let ((_$e160123_
                                            (gx#core-resolve-identifier__1
                                             _id160121_
                                             (gx#current-export-expander-phi))))
                                       (if _$e160123_
                                           ((lambda (_bind160126_)
                                              (_K159911_
                                               _rest159912_
                                               (cons (_make-export__0__167703167706_
                                                      _bind160126_)
                                                     _r159913_)))
                                            _$e160123_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _stx159757_
                                            _hd159910_)))
                                     (_E159917160117_)))))
                            (_E159915160192_
                             (lambda ()
                               (if (eq? (gx#stx-e _e159914159946_) '#t)
                                   (if '#t
                                       (let* ((_current-ctx160132_
                                               (gx#current-expander-context))
                                              (_current-phi160134_
                                               (gx#current-export-expander-phi))
                                              (_phi-ctx160136_
                                               (gx#core-context-shift
                                                _current-ctx160132_
                                                _current-phi160134_))
                                              (_phi-bind160138_
                                               (table->list
                                                (##unchecked-structure-ref
                                                 _phi-ctx160136_
                                                 '2
                                                 gx#expander-context::t
                                                 '#f))))
                                         (let _lp160141_ ((_bind-rest160143_
                                                           _phi-bind160138_)
                                                          (_set160144_ '()))
                                           (let* ((_bind-rest160145160155_
                                                   _bind-rest160143_)
                                                  (_else160147160163_
                                                   (lambda ()
                                                     (_K159911_
                                                      _rest159912_
                                                      (cons (##structure
                                                             gx#export-set::t
                                                             '#f
                                                             _current-phi160134_
                                                             _set160144_)
                                                            _r159913_))))
                                                  (_K160149160173_
                                                   (lambda (_bind-rest160166_
                                                            _bind160167_
                                                            _key160168_)
                                                     (if (or (##structure-direct-instance-of?
                                                              _bind160167_
                                                              'gx#import-binding::t)
                                                             (gx#private-feature-binding?
                                                              _bind160167_))
                                                         (_lp160141_
                                                          _bind-rest160166_
                                                          _set160144_)
                                                         (_lp160141_
                                                          _bind-rest160166_
                                                          (cons (_make-export__2__167705167708_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind160167_
                         _current-phi160134_
                         _current-ctx160132_)
                        _set160144_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _bind-rest160145160155_)
                                                 (let ((_hd160150160176_
                                                        (##car _bind-rest160145160155_))
                                                       (_tl160151160178_
                                                        (##cdr _bind-rest160145160155_)))
                                                   (if (##pair? _hd160150160176_)
                                                       (let ((_hd160152160181_
                                                              (##car _hd160150160176_))
                                                             (_tl160153160183_
                                                              (##cdr _hd160150160176_)))
                                                         (let* ((_key160186_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd160152160181_)
                        (_bind160188_ _tl160153160183_)
                        (_bind-rest160190_ _tl160151160178_))
                   (_K160149160173_
                    _bind-rest160190_
                    _bind160188_
                    _key160186_)))
               (_else160147160163_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_else160147160163_)))))
                                       (_E159916160128_))
                                   (_E159916160128_)))))
                       (_E159915160192_))))
                  (_export-imports159762_
                   (lambda (_src159786_ _r159787_)
                     (letrec* ((_current-ctx159789_
                                (gx#current-expander-context))
                               (_current-phi159790_
                                (gx#current-export-expander-phi))
                               (_import->export159791_
                                (lambda (_in159872_)
                                  (let* ((_in159873159881_ _in159872_)
                                         (_E159875159885_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _in159873159881_)))
                                         (_K159876159892_
                                          (lambda (_phi159888_
                                                   _key159889_
                                                   _out159890_)
                                            (##structure
                                             gx#module-export::t
                                             _current-ctx159789_
                                             _key159889_
                                             _phi159888_
                                             _key159889_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _in159873159881_
                                         'gx#module-import::t)
                                        (let* ((_e159877159895_
                                                (##unchecked-structure-ref
                                                 _in159873159881_
                                                 '1
                                                 gx#module-import::t
                                                 '#f))
                                               (_out159898_ _e159877159895_)
                                               (_e159878159900_
                                                (##unchecked-structure-ref
                                                 _in159873159881_
                                                 '2
                                                 gx#module-import::t
                                                 '#f))
                                               (_key159903_ _e159878159900_)
                                               (_e159879159905_
                                                (##unchecked-structure-ref
                                                 _in159873159881_
                                                 '3
                                                 gx#module-import::t
                                                 '#f))
                                               (_phi159908_ _e159879159905_))
                                          (_K159876159892_
                                           _phi159908_
                                           _key159903_
                                           _out159898_))
                                        (_E159875159885_)))))
                               (_fold-e159792_
                                (lambda (_in159794_ _r159795_)
                                  (let* ((_in159796159810_ _in159794_)
                                         (_else159799159818_
                                          (lambda () _r159795_)))
                                    (let ((_K159805159854_
                                           (lambda (_phi159850_
                                                    _key159851_
                                                    _out159852_)
                                             (if (and (fx= _phi159850_
                                                           _current-phi159790_)
                                                      (eq? _src159786_
                                                           (##unchecked-structure-ref
                                                            _out159852_
                                                            '1
                                                            gx#module-export::t
                                                            '#f)))
                                                 (cons (_import->export159791_
                                                        _in159794_)
                                                       _r159795_)
                                                 _r159795_)))
                                          (_K159801159829_
                                           (lambda (_imports159822_
                                                    _phi159823_
                                                    _ctx159824_)
                                             (if (and (fx= _phi159823_
                                                           _current-phi159790_)
                                                      (eq? _src159786_
                                                           _ctx159824_))
                                                 (foldl1 (lambda (_in159826_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r159827_)
                   (cons (_import->export159791_ _in159826_) _r159827_))
                 _r159795_
                 _imports159822_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _r159795_))))
                                      (let ((_try-match159798159847_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _in159796159810_
                                                    'gx#import-set::t)
                                                   (let* ((_e159802159832_
                                                           (##unchecked-structure-ref
                                                            _in159796159810_
                                                            '1
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e159803159837_
                                                           (##unchecked-structure-ref
                                                            _in159796159810_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e159804159842_
                                                           (##unchecked-structure-ref
                                                            _in159796159810_
                                                            '3
                                                            gx#import-set::t
                                                            '#f)))
                                                     (let ((_ctx159835_
                                                            _e159802159832_)
                                                           (_phi159840_
                                                            _e159803159837_)
                                                           (_imports159845_
                                                            _e159804159842_))
                                                       (_K159801159829_
                                                        _imports159845_
                                                        _phi159840_
                                                        _ctx159835_)))
                                                   (_else159799159818_)))))
                                        (if (##structure-direct-instance-of?
                                             _in159796159810_
                                             'gx#module-import::t)
                                            (let* ((_e159806159857_
                                                    (##unchecked-structure-ref
                                                     _in159796159810_
                                                     '1
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e159807159862_
                                                    (##unchecked-structure-ref
                                                     _in159796159810_
                                                     '2
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e159808159867_
                                                    (##unchecked-structure-ref
                                                     _in159796159810_
                                                     '3
                                                     gx#module-import::t
                                                     '#f)))
                                              (let ((_out159860_
                                                     _e159806159857_)
                                                    (_key159865_
                                                     _e159807159862_)
                                                    (_phi159870_
                                                     _e159808159867_))
                                                (_K159805159854_
                                                 _phi159870_
                                                 _key159865_
                                                 _out159860_)))
                                            (_try-match159798159847_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _src159786_
                              _current-phi159790_
                              (foldl1 _fold-e159792_
                                      '()
                                      (##unchecked-structure-ref
                                       _current-ctx159789_
                                       '8
                                       gx#module-context::t
                                       '#f)))
                             _r159787_))))
                  (_export!159763_
                   (lambda (_rbody159776_)
                     (letrec* ((_current-ctx159778_
                                (gx#current-expander-context))
                               (_fold-e159779_
                                (lambda (_out159783_ _r159784_)
                                  (if (##structure-direct-instance-of?
                                       _out159783_
                                       'gx#module-export::t)
                                      (cons _out159783_ _r159784_)
                                      (if (##structure-direct-instance-of?
                                           _out159783_
                                           'gx#export-set::t)
                                          (foldl1 cons
                                                  _r159784_
                                                  (##unchecked-structure-ref
                                                   _out159783_
                                                   '3
                                                   gx#export-set::t
                                                   '#f))
                                          _r159784_)))))
                       (let ((_body159781_ (reverse _rbody159776_)))
                         (##unchecked-structure-set!
                          _current-ctx159778_
                          (foldl1 _fold-e159779_
                                  (##unchecked-structure-ref
                                   _current-ctx159778_
                                   '9
                                   gx#module-context::t
                                   '#f)
                                  _body159781_)
                          '9
                          gx#module-context::t
                          '#f)
                         _body159781_))))
                  (_expanded-export?159764_
                   (lambda (_e159771_)
                     (let ((_$e159773_
                            (##structure-direct-instance-of?
                             _e159771_
                             'gx#module-export::t)))
                       (if _$e159773_
                           _$e159773_
                           (##structure-direct-instance-of?
                            _e159771_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _internal-expand?159758_)
              (let ((_rbody159769_
                     (gx#core-expand-import/export
                      _stx159757_
                      _expanded-export?159764_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _expand1159761_)))
                (if _internal-expand?159758_
                    (reverse _rbody159769_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons '%#export (_export!159763_ _rbody159769_))
                     (gx#stx-source _stx159757_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _stx159757_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _stx159757_))))))
    (define gx#core-expand-export%__0
      (lambda (_stx160242_)
        (let ((_internal-expand?160244_ '#f))
          (gx#core-expand-export%__% _stx160242_ _internal-expand?160244_))))
    (define gx#core-expand-export%
      (lambda _g167776_
        (let ((_g167775_ (##length _g167776_)))
          (cond ((##fx= _g167775_ 1)
                 (apply (lambda (_stx160242_)
                          (gx#core-expand-export%__0 _stx160242_))
                        _g167776_))
                ((##fx= _g167775_ 2)
                 (apply (lambda (_stx160246_ _internal-expand?160247_)
                          (gx#core-expand-export%__%
                           _stx160246_
                           _internal-expand?160247_))
                        _g167776_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g167776_))))))
    (define gx#core-expand-export-source
      (lambda (_hd159754_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _hd159754_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_stx159724_)
        (let* ((_e159725159732_ _stx159724_)
               (_E159727159736_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e159725159732_)))
               (_E159726159750_
                (lambda ()
                  (if (gx#stx-pair? _e159725159732_)
                      (let ((_e159728159740_ (gx#syntax-e _e159725159732_)))
                        (let ((_hd159729159743_ (##car _e159728159740_))
                              (_tl159730159745_ (##cdr _e159728159740_)))
                          (let ((_body159748_ _tl159730159745_))
                            (if (gx#identifier-list? _body159748_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _body159748_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _body159748_))
                                   (gx#stx-source _stx159724_)))
                                (_E159727159736_)))))
                      (_E159727159736_)))))
          (_E159726159750_))))
    (define gx#core-bind-feature!__%
      (lambda (_id159690_ _private?159691_ _phi159692_ _ctx159693_)
        (gx#core-bind-syntax!__%
         _id159690_
         ((if _private?159691_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _id159690_))
         _private?159691_
         _phi159692_
         _ctx159693_)))
    (define gx#core-bind-feature!__0
      (lambda (_id159698_)
        (let* ((_private?159700_ '#f)
               (_phi159702_ (gx#current-expander-phi))
               (_ctx159704_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id159698_
           _private?159700_
           _phi159702_
           _ctx159704_))))
    (define gx#core-bind-feature!__1
      (lambda (_id159706_ _private?159707_)
        (let* ((_phi159709_ (gx#current-expander-phi))
               (_ctx159711_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id159706_
           _private?159707_
           _phi159709_
           _ctx159711_))))
    (define gx#core-bind-feature!__2
      (lambda (_id159713_ _private?159714_ _phi159715_)
        (let ((_ctx159717_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id159713_
           _private?159714_
           _phi159715_
           _ctx159717_))))
    (define gx#core-bind-feature!
      (lambda _g167778_
        (let ((_g167777_ (##length _g167778_)))
          (cond ((##fx= _g167777_ 1)
                 (apply (lambda (_id159698_)
                          (gx#core-bind-feature!__0 _id159698_))
                        _g167778_))
                ((##fx= _g167777_ 2)
                 (apply (lambda (_id159706_ _private?159707_)
                          (gx#core-bind-feature!__1
                           _id159706_
                           _private?159707_))
                        _g167778_))
                ((##fx= _g167777_ 3)
                 (apply (lambda (_id159713_ _private?159714_ _phi159715_)
                          (gx#core-bind-feature!__2
                           _id159713_
                           _private?159714_
                           _phi159715_))
                        _g167778_))
                ((##fx= _g167777_ 4)
                 (apply (lambda (_id159719_
                                 _private?159720_
                                 _phi159721_
                                 _ctx159722_)
                          (gx#core-bind-feature!__%
                           _id159719_
                           _private?159720_
                           _phi159721_
                           _ctx159722_))
                        _g167778_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g167778_))))))))
