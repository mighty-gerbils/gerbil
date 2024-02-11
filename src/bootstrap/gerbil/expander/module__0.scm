(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1707620171)
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
      (lambda _$args160962_
        (apply make-struct-instance gx#module-import::t _$args160962_)))
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
      (lambda _$args160959_
        (apply make-struct-instance gx#module-export::t _$args160959_)))
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
      (lambda _$args160956_
        (apply make-struct-instance gx#import-set::t _$args160956_)))
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
      (lambda _$args160953_
        (apply make-struct-instance gx#export-set::t _$args160953_)))
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
      (lambda _$args160950_
        (apply make-class-instance gx#import-expander::t _$args160950_)))
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
      (lambda _$args160947_
        (apply make-class-instance gx#export-expander::t _$args160947_)))
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
      (lambda _$args160944_
        (apply make-class-instance
               gx#import-export-expander::t
               _$args160944_)))
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
      (lambda (_path160941_ _fun160942_)
        (call-with-input-file
         (cons 'path: (cons _path160941_ gx#source-file-settings))
         _fun160942_)))
    (define gx#module-context:::init!
      (lambda (_self160935_ _id160936_ _super160937_ _ns160938_ _path160939_)
        (if (##fx< '11 (##structure-length _self160935_))
            (begin
              (##unchecked-structure-set!
               _self160935_
               _id160936_
               '1
               (##structure-type _self160935_)
               '#f)
              (##unchecked-structure-set!
               _self160935_
               (make-table 'test: eq?)
               '2
               (##structure-type _self160935_)
               '#f)
              (##unchecked-structure-set!
               _self160935_
               _super160937_
               '3
               (##structure-type _self160935_)
               '#f)
              (##unchecked-structure-set!
               _self160935_
               '#f
               '4
               (##structure-type _self160935_)
               '#f)
              (##unchecked-structure-set!
               _self160935_
               '#f
               '5
               (##structure-type _self160935_)
               '#f)
              (##unchecked-structure-set!
               _self160935_
               _ns160938_
               '6
               (##structure-type _self160935_)
               '#f)
              (##unchecked-structure-set!
               _self160935_
               _path160939_
               '7
               (##structure-type _self160935_)
               '#f)
              (##unchecked-structure-set!
               _self160935_
               '()
               '8
               (##structure-type _self160935_)
               '#f)
              (##unchecked-structure-set!
               _self160935_
               '()
               '9
               (##structure-type _self160935_)
               '#f)
              (##unchecked-structure-set!
               _self160935_
               '#f
               '10
               (##structure-type _self160935_)
               '#f)
              (##unchecked-structure-set!
               _self160935_
               '#f
               '11
               (##structure-type _self160935_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self160935_
                   '11
                   (##vector-length _self160935_)))))
    (bind-method! gx#module-context::t ':init! gx#module-context:::init! '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_self160779_ _ctx160780_ _root160781_)
        (let ((_super160789_
               (let ((_$e160783_ _root160781_))
                 (if _$e160783_
                     _$e160783_
                     (let ((_$e160786_ (gx#core-context-root__0)))
                       (if _$e160786_
                           _$e160786_
                           (let ((__obj165472
                                  (##structure gx#root-context::t '#f '#f)))
                             (let ((__constructor165473
                                    (direct-method-ref
                                     gx#root-context::t
                                     ':init!)))
                               (if __constructor165473
                                   (__constructor165473 __obj165472)
                                   (error '"missing constructor method implementation"
                                          'class:
                                          gx#root-context::t
                                          'method:
                                          ':init!)))
                             __obj165472)))))))
          (if _ctx160780_
              (let ((_id160792_
                     (##structure-ref
                      _ctx160780_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_path160793_
                     (##structure-ref _ctx160780_ '7 gx#module-context::t '#f))
                    (_in160794_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _ctx160780_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_e160795_
                     (make-promise (lambda () (gx#eval-module _ctx160780_)))))
                (if (##fx< '8 (##structure-length _self160779_))
                    (begin
                      (##unchecked-structure-set!
                       _self160779_
                       _id160792_
                       '1
                       (##structure-type _self160779_)
                       '#f)
                      (##unchecked-structure-set!
                       _self160779_
                       (make-table 'test: eq? 'size: (length _in160794_))
                       '2
                       (##structure-type _self160779_)
                       '#f)
                      (##unchecked-structure-set!
                       _self160779_
                       _super160789_
                       '3
                       (##structure-type _self160779_)
                       '#f)
                      (##unchecked-structure-set!
                       _self160779_
                       '#f
                       '4
                       (##structure-type _self160779_)
                       '#f)
                      (##unchecked-structure-set!
                       _self160779_
                       '#f
                       '5
                       (##structure-type _self160779_)
                       '#f)
                      (##unchecked-structure-set!
                       _self160779_
                       _path160793_
                       '6
                       (##structure-type _self160779_)
                       '#f)
                      (##unchecked-structure-set!
                       _self160779_
                       _in160794_
                       '7
                       (##structure-type _self160779_)
                       '#f)
                      (##unchecked-structure-set!
                       _self160779_
                       _e160795_
                       '8
                       (##structure-type _self160779_)
                       '#f))
                    (error '"struct-instance-init!: too many arguments for struct"
                           _self160779_
                           '8
                           (##vector-length _self160779_)))
                (for-each
                 (lambda (_g160796160798_)
                   (gx#core-bind-weak-import!__% _g160796160798_ _self160779_))
                 _in160794_))
              (if (##fx< '8 (##structure-length _self160779_))
                  (begin
                    (##unchecked-structure-set!
                     _self160779_
                     '#f
                     '1
                     (##structure-type _self160779_)
                     '#f)
                    (##unchecked-structure-set!
                     _self160779_
                     (make-table 'test: eq?)
                     '2
                     (##structure-type _self160779_)
                     '#f)
                    (##unchecked-structure-set!
                     _self160779_
                     _super160789_
                     '3
                     (##structure-type _self160779_)
                     '#f)
                    (##unchecked-structure-set!
                     _self160779_
                     '#f
                     '4
                     (##structure-type _self160779_)
                     '#f)
                    (##unchecked-structure-set!
                     _self160779_
                     '#f
                     '5
                     (##structure-type _self160779_)
                     '#f)
                    (##unchecked-structure-set!
                     _self160779_
                     '#f
                     '6
                     (##structure-type _self160779_)
                     '#f)
                    (##unchecked-structure-set!
                     _self160779_
                     '()
                     '7
                     (##structure-type _self160779_)
                     '#f)
                    (##unchecked-structure-set!
                     _self160779_
                     '#f
                     '8
                     (##structure-type _self160779_)
                     '#f))
                  (error '"struct-instance-init!: too many arguments for struct"
                         _self160779_
                         '8
                         (##vector-length _self160779_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_self160804_ _ctx160805_)
        (let ((_root160807_ '#f))
          (gx#prelude-context:::init!__%
           _self160804_
           _ctx160805_
           _root160807_))))
    (define gx#prelude-context:::init!
      (lambda _g165479_
        (let ((_g165478_ (##length _g165479_)))
          (cond ((##fx= _g165478_ 2)
                 (apply (lambda (_self160804_ _ctx160805_)
                          (gx#prelude-context:::init!__0
                           _self160804_
                           _ctx160805_))
                        _g165479_))
                ((##fx= _g165478_ 3)
                 (apply (lambda (_self160809_ _ctx160810_ _root160811_)
                          (gx#prelude-context:::init!__%
                           _self160809_
                           _ctx160810_
                           _root160811_))
                        _g165479_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g165479_))))))
    (bind-method! gx#prelude-context::t ':init! gx#prelude-context:::init! '#f)
    (define gx#import-export-expander-init!
      (lambda (_self160653_ _e160654_)
        (if (##fx< '3 (##structure-length _self160653_))
            (begin
              (##unchecked-structure-set!
               _self160653_
               _e160654_
               '1
               (##structure-type _self160653_)
               '#f)
              (##unchecked-structure-set!
               _self160653_
               (gx#current-expander-context)
               '2
               (##structure-type _self160653_)
               '#f)
              (##unchecked-structure-set!
               _self160653_
               (fx- (gx#current-expander-phi) '1)
               '3
               (##structure-type _self160653_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self160653_
                   '3
                   (##vector-length _self160653_)))))
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
      (lambda (_g160279160282_ _g160280160284_)
        (gx#core-apply-user-expander__%
         _g160279160282_
         _g160280160284_
         'apply-import-expander)))
    (bind-method!
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_g160150160153_ _g160151160155_)
        (gx#core-apply-user-expander__%
         _g160150160153_
         _g160151160155_
         'apply-export-expander)))
    (bind-method!
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_ctx160021_)
        (let* ((_path160023_
                (##structure-ref _ctx160021_ '7 gx#module-context::t '#f))
               (_path160025_
                (if (pair? _path160023_) (last _path160023_) _path160023_)))
          (if (string? _path160025_) _path160025_ '#f))))
    (define gx#import-module__%
      (lambda (_path159997_ _reload?159998_ _eval?159999_)
        (let ((_ctx160001_
               ((gx#current-expander-module-import)
                _path159997_
                _reload?159998_)))
          (if (and _ctx160001_ _eval?159999_)
              (gx#eval-module _ctx160001_)
              '#!void)
          _ctx160001_)))
    (define gx#import-module__0
      (lambda (_path160006_)
        (let* ((_reload?160008_ '#f) (_eval?160010_ '#f))
          (gx#import-module__% _path160006_ _reload?160008_ _eval?160010_))))
    (define gx#import-module__1
      (lambda (_path160012_ _reload?160013_)
        (let ((_eval?160015_ '#f))
          (gx#import-module__% _path160012_ _reload?160013_ _eval?160015_))))
    (define gx#import-module
      (lambda _g165481_
        (let ((_g165480_ (##length _g165481_)))
          (cond ((##fx= _g165480_ 1)
                 (apply (lambda (_path160006_)
                          (gx#import-module__0 _path160006_))
                        _g165481_))
                ((##fx= _g165480_ 2)
                 (apply (lambda (_path160012_ _reload?160013_)
                          (gx#import-module__1 _path160012_ _reload?160013_))
                        _g165481_))
                ((##fx= _g165480_ 3)
                 (apply (lambda (_path160017_ _reload?160018_ _eval?160019_)
                          (gx#import-module__%
                           _path160017_
                           _reload?160018_
                           _eval?160019_))
                        _g165481_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g165481_))))))
    (define gx#eval-module
      (lambda (_mod159994_) ((gx#current-expander-module-eval) _mod159994_)))
    (define gx#core-eval-module
      (lambda (_obj159979_)
        (letrec ((_force-e159981_
                  (lambda (_getf159990_ _e159991_)
                    (call-with-parameters
                     (lambda () (force (_getf159990_ _e159991_)))
                     gx#current-expander-context
                     _e159991_
                     gx#current-expander-phi
                     '0))))
          (let _recur159983_ ((_e159985_ _obj159979_))
            (if (##structure-instance-of? _e159985_ 'gx#module-context::t)
                (begin
                  (let ((_$e159987_ (gx#core-context-prelude__% _e159985_)))
                    (if _$e159987_ (_recur159983_ _$e159987_) '#!void))
                  (_force-e159981_ gx#module-context-e _e159985_))
                (if (##structure-instance-of? _e159985_ 'gx#prelude-context::t)
                    (_force-e159981_ gx#prelude-context-e _e159985_)
                    (if (gx#stx-string? _e159985_)
                        (_recur159983_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _e159985_)))
                        (if (gx#core-library-module-path? _e159985_)
                            (_recur159983_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _e159985_)))
                            (error '"Cannot eval module" _obj159979_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_ctx159962_)
        (let _lp159964_ ((_e159966_ _ctx159962_))
          (if (or (##structure-instance-of? _e159966_ 'gx#module-context::t)
                  (##structure-instance-of? _e159966_ 'gx#local-context::t))
              (_lp159964_
               (##unchecked-structure-ref _e159966_ '3 gx#phi-context::t '#f))
              (if (##structure-instance-of? _e159966_ 'gx#prelude-context::t)
                  _e159966_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_ctx159975_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _ctx159975_))))
    (define gx#core-context-prelude
      (lambda _g165483_
        (let ((_g165482_ (##length _g165483_)))
          (cond ((##fx= _g165482_ 0)
                 (apply (lambda () (gx#core-context-prelude__0)) _g165483_))
                ((##fx= _g165482_ 1)
                 (apply (lambda (_ctx159977_)
                          (gx#core-context-prelude__% _ctx159977_))
                        _g165483_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g165483_))))))
    (define gx#core-module->prelude-context
      (lambda (_ctx159952_)
        (let* ((_ht159954_ (gx#current-expander-module-registry))
               (_$e159956_ (table-ref _ht159954_ _ctx159952_ '#f)))
          (if _$e159956_
              (values _$e159956_)
              (let ((_pre159959_
                     (let ((__obj165474
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
                       (gx#prelude-context:::init! __obj165474 _ctx159952_)
                       __obj165474)))
                (table-set! _ht159954_ _ctx159952_ _pre159959_)
                _pre159959_)))))
    (define gx#core-import-module__%
      (lambda (_rpath159833_ _reload?159834_)
        (letrec ((_import-source159836_
                  (lambda (_path159921_)
                    (if (member _path159921_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _path159921_)
                        '#!void)
                    (call-with-parameters
                     (lambda ()
                       (let ((_g165484_ (gx#core-read-module _path159921_)))
                         (begin
                           (let ((_g165485_
                                  (if (##values? _g165484_)
                                      (##vector-length _g165484_)
                                      1)))
                             (if (not (##fx= _g165485_ 4))
                                 (error "Context expects 4 values" _g165485_)))
                           (let ((_pre159924_ (##vector-ref _g165484_ 0))
                                 (_id159925_ (##vector-ref _g165484_ 1))
                                 (_ns159926_ (##vector-ref _g165484_ 2))
                                 (_body159927_ (##vector-ref _g165484_ 3)))
                             (let* ((_prelude159932_
                                     (if (##structure-instance-of?
                                          _pre159924_
                                          'gx#prelude-context::t)
                                         _pre159924_
                                         (if (##structure-instance-of?
                                              _pre159924_
                                              'gx#module-context::t)
                                             (gx#core-module->prelude-context
                                              _pre159924_)
                                             (if (string? _pre159924_)
                                                 (gx#core-module->prelude-context
                                                  (gx#core-import-module__0
                                                   _pre159924_))
                                                 (if (not _pre159924_)
                                                     (let ((_$e159929_
                                                            (gx#current-expander-module-prelude)))
                                                       (if _$e159929_
                                                           _$e159929_
                                                           (let ((__obj165475
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
                     (gx#prelude-context:::init! __obj165475 '#f)
                     __obj165475)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error '"Cannot import module; unknown prelude"
                                                            _rpath159833_
                                                            _pre159924_))))))
                                    (_ctx159934_
                                     (let ((__obj165476
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
                                        __obj165476
                                        _id159925_
                                        _prelude159932_
                                        _ns159926_
                                        _path159921_)
                                       __obj165476))
                                    (_body159936_
                                     (gx#core-expand-module-begin
                                      _body159927_
                                      _ctx159934_))
                                    (_body159938_
                                     (gx#core-quote-syntax__%
                                      (gx#core-cons '%#begin _body159936_)
                                      _path159921_
                                      _ctx159934_
                                      '())))
                               (##unchecked-structure-set!
                                _ctx159934_
                                (make-promise
                                 (lambda () (gx#eval-syntax* _body159938_)))
                                '10
                                gx#module-context::t
                                '#f)
                               (##unchecked-structure-set!
                                _ctx159934_
                                _body159938_
                                '11
                                gx#module-context::t
                                '#f)
                               (table-set!
                                (gx#current-expander-module-registry)
                                _path159921_
                                _ctx159934_)
                               (table-set!
                                (gx#current-expander-module-registry)
                                _id159925_
                                _ctx159934_)
                               _ctx159934_)))))
                     gx#current-expander-context
                     (gx#core-context-root__0)
                     gx#current-expander-marks
                     '()
                     gx#current-expander-phi
                     '0
                     gx#current-expander-path
                     (cons _path159921_ (gx#current-expander-path))
                     gx#current-import-expander-phi
                     '#f
                     gx#current-export-expander-phi
                     '#f)))
                 (_import-submodule159837_
                  (lambda (_rpath159849_)
                    (let* ((_rpath159850159857_ _rpath159849_)
                           (_E159852159861_
                            (lambda ()
                              (error '"No clause matching"
                                     _rpath159850159857_)))
                           (_K159853159909_
                            (lambda (_refs159864_ _origin159865_)
                              (let ((_ctx159867_
                                     (if _origin159865_
                                         (gx#core-import-module__%
                                          _origin159865_
                                          _reload?159834_)
                                         (gx#current-expander-context))))
                                (let _lp159869_ ((_rest159871_ _refs159864_)
                                                 (_ctx159872_ _ctx159867_))
                                  (let* ((_rest159873159881_ _rest159871_)
                                         (_else159875159889_
                                          (lambda () _ctx159872_))
                                         (_K159877159897_
                                          (lambda (_rest159892_ _id159893_)
                                            (let ((_bind159895_
                                                   (gx#resolve-identifier__%
                                                    _id159893_
                                                    '0
                                                    _ctx159872_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _bind159895_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _bind159895_
                                                         '4
                                                         gx#syntax-binding::t
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_lp159869_
                                                   _rest159892_
                                                   (##unchecked-structure-ref
                                                    _bind159895_
                                                    '4
                                                    gx#syntax-binding::t
                                                    '#f))
                                                  (error '"Cannot import submodule; not bound as a module"
                                                         _rpath159849_
                                                         _id159893_
                                                         _bind159895_))))))
                                    (if (##pair? _rest159873159881_)
                                        (let ((_hd159878159900_
                                               (##car _rest159873159881_))
                                              (_tl159879159902_
                                               (##cdr _rest159873159881_)))
                                          (let* ((_id159905_ _hd159878159900_)
                                                 (_rest159907_
                                                  _tl159879159902_))
                                            (_K159877159897_
                                             _rest159907_
                                             _id159905_)))
                                        (_else159875159889_))))))))
                      (if (##pair? _rpath159850159857_)
                          (let ((_hd159854159912_ (##car _rpath159850159857_))
                                (_tl159855159914_ (##cdr _rpath159850159857_)))
                            (let* ((_origin159917_ _hd159854159912_)
                                   (_refs159919_ _tl159855159914_))
                              (_K159853159909_ _refs159919_ _origin159917_)))
                          (_E159852159861_))))))
          (let ((_$e159839_
                 (if (not _reload?159834_)
                     (table-ref
                      (gx#current-expander-module-registry)
                      _rpath159833_
                      '#f)
                     '#f)))
            (if _$e159839_
                (values _$e159839_)
                (if (list? _rpath159833_)
                    (_import-submodule159837_ _rpath159833_)
                    (if (gx#core-library-module-path? _rpath159833_)
                        (let ((_ctx159842_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _rpath159833_)
                                _reload?159834_)))
                          (table-set!
                           (gx#current-expander-module-registry)
                           _rpath159833_
                           _ctx159842_)
                          _ctx159842_)
                        (let* ((_npath159844_ (path-normalize _rpath159833_))
                               (_$e159846_
                                (if (not _reload?159834_)
                                    (table-ref
                                     (gx#current-expander-module-registry)
                                     _npath159844_
                                     '#f)
                                    '#f)))
                          (if _$e159846_
                              (values _$e159846_)
                              (_import-source159836_ _npath159844_))))))))))
    (define gx#core-import-module__0
      (lambda (_rpath159945_)
        (let ((_reload?159947_ '#f))
          (gx#core-import-module__% _rpath159945_ _reload?159947_))))
    (define gx#core-import-module
      (lambda _g165487_
        (let ((_g165486_ (##length _g165487_)))
          (cond ((##fx= _g165486_ 1)
                 (apply (lambda (_rpath159945_)
                          (gx#core-import-module__0 _rpath159945_))
                        _g165487_))
                ((##fx= _g165486_ 2)
                 (apply (lambda (_rpath159949_ _reload?159950_)
                          (gx#core-import-module__%
                           _rpath159949_
                           _reload?159950_))
                        _g165487_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g165487_))))))
    (define gx#core-read-module
      (lambda (_path159822_)
        (with-catch
         (lambda (_exn159824_)
           (if (and (datum-parsing-exception? _exn159824_)
                    (eq? (datum-parsing-exception-filepos _exn159824_) '0))
               (gx#core-read-module/lang _path159822_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _path159822_
                (call-with-parameters
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_g159826159828_)
                      (display-exception _exn159824_ _g159826159828_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _path159822_)))))
    (define gx#core-read-module/sexp
      (lambda (_path159685_)
        (let _lp159687_ ((_body159689_ (read-syntax-from-file _path159685_))
                         (_pre159690_ '#f)
                         (_ns159691_ '#f)
                         (_pkg159692_ '#f))
          (let* ((_e159693159717_ _body159689_)
                 (_E159709159739_
                  (lambda ()
                    (let ((_g165488_
                           (if _pkg159692_
                               (values _pre159690_ _ns159691_ _pkg159692_)
                               (gx#core-read-module-package
                                _path159685_
                                _pre159690_
                                _ns159691_))))
                      (begin
                        (let ((_g165489_
                               (if (##values? _g165488_)
                                   (##vector-length _g165488_)
                                   1)))
                          (if (not (##fx= _g165489_ 3))
                              (error "Context expects 3 values" _g165489_)))
                        (let ((_pre159721_ (##vector-ref _g165488_ 0))
                              (_ns159722_ (##vector-ref _g165488_ 1))
                              (_pkg159723_ (##vector-ref _g165488_ 2)))
                          (let* ((_prelude159725_
                                  (if (gx#core-bound-module-prelude?
                                       _pre159721_)
                                      (gx#syntax-local-e__0 _pre159721_)
                                      (if (gx#core-library-module-path?
                                           _pre159721_)
                                          (gx#core-resolve-library-module-path
                                           _pre159721_)
                                          (if (gx#stx-string? _pre159721_)
                                              (gx#core-resolve-module-path__%
                                               _pre159721_
                                               _path159685_)
                                              (gx#stx-e _pre159721_)))))
                                 (_path-id159727_
                                  (gx#core-module-path->namespace
                                   _path159685_))
                                 (_pkg-id159729_
                                  (if _pkg159723_
                                      (string-append
                                       _pkg159723_
                                       '"/"
                                       _path-id159727_)
                                      _path-id159727_))
                                 (_module-id159731_
                                  (string->symbol _pkg-id159729_))
                                 (_module-ns159736_
                                  (if (eq? _ns159722_ '#!void)
                                      '#f
                                      (let ((_$e159733_ _ns159722_))
                                        (if _$e159733_
                                            _$e159733_
                                            _pkg-id159729_)))))
                            (values _prelude159725_
                                    _module-id159731_
                                    _module-ns159736_
                                    _body159689_)))))))
                 (_E159702159768_
                  (lambda ()
                    (if (gx#stx-pair? _e159693159717_)
                        (let ((_e159710159743_ (gx#syntax-e _e159693159717_)))
                          (let ((_hd159711159746_ (##car _e159710159743_))
                                (_tl159712159748_ (##cdr _e159710159743_)))
                            (if (eq? (gx#stx-e _hd159711159746_) 'package:)
                                (if (gx#stx-pair? _tl159712159748_)
                                    (let ((_e159713159751_
                                           (gx#syntax-e _tl159712159748_)))
                                      (let ((_hd159714159754_
                                             (##car _e159713159751_))
                                            (_tl159715159756_
                                             (##cdr _e159713159751_)))
                                        (let* ((_pkg159759_ _hd159714159754_)
                                               (_rest159761_ _tl159715159756_))
                                          (if '#t
                                              (let ((_pkg159766_
                                                     (if (gx#identifier?
                                                          _pkg159759_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _pkg159759_))
                                                         (if (or (gx#stx-string?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _pkg159759_)
                         (gx#stx-false? _pkg159759_))
                     (gx#stx-e _pkg159759_)
                     (gx#raise-syntax-error
                      'import
                      '"Bad syntax; Illegal package name"
                      _pkg159759_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp159687_
                                                 _rest159761_
                                                 _pre159690_
                                                 _ns159691_
                                                 _pkg159766_))
                                              (_E159709159739_)))))
                                    (_E159709159739_))
                                (_E159709159739_))))
                        (_E159709159739_))))
                 (_E159695159794_
                  (lambda ()
                    (if (gx#stx-pair? _e159693159717_)
                        (let ((_e159703159772_ (gx#syntax-e _e159693159717_)))
                          (let ((_hd159704159775_ (##car _e159703159772_))
                                (_tl159705159777_ (##cdr _e159703159772_)))
                            (if (eq? (gx#stx-e _hd159704159775_) 'namespace:)
                                (if (gx#stx-pair? _tl159705159777_)
                                    (let ((_e159706159780_
                                           (gx#syntax-e _tl159705159777_)))
                                      (let ((_hd159707159783_
                                             (##car _e159706159780_))
                                            (_tl159708159785_
                                             (##cdr _e159706159780_)))
                                        (let* ((_ns159788_ _hd159707159783_)
                                               (_rest159790_ _tl159708159785_))
                                          (if '#t
                                              (let ((_ns159792_
                                                     (if (gx#identifier?
                                                          _ns159788_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _ns159788_))
                                                         (if (gx#stx-string?
                                                              _ns159788_)
                                                             (gx#stx-e
                                                              _ns159788_)
                                                             (if (gx#stx-false?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _ns159788_)
                         '#!void
                         (gx#raise-syntax-error
                          'import
                          '"Bad syntax; illegal namespace"
                          _ns159788_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp159687_
                                                 _rest159790_
                                                 _pre159690_
                                                 _ns159792_
                                                 _pkg159692_))
                                              (_E159702159768_)))))
                                    (_E159702159768_))
                                (_E159702159768_))))
                        (_E159702159768_))))
                 (_E159694159818_
                  (lambda ()
                    (if (gx#stx-pair? _e159693159717_)
                        (let ((_e159696159798_ (gx#syntax-e _e159693159717_)))
                          (let ((_hd159697159801_ (##car _e159696159798_))
                                (_tl159698159803_ (##cdr _e159696159798_)))
                            (if (eq? (gx#stx-e _hd159697159801_) 'prelude:)
                                (if (gx#stx-pair? _tl159698159803_)
                                    (let ((_e159699159806_
                                           (gx#syntax-e _tl159698159803_)))
                                      (let ((_hd159700159809_
                                             (##car _e159699159806_))
                                            (_tl159701159811_
                                             (##cdr _e159699159806_)))
                                        (let* ((_prelude159814_
                                                _hd159700159809_)
                                               (_rest159816_ _tl159701159811_))
                                          (if '#t
                                              (_lp159687_
                                               _rest159816_
                                               _prelude159814_
                                               _ns159691_
                                               _pkg159692_)
                                              (_E159695159794_)))))
                                    (_E159695159794_))
                                (_E159695159794_))))
                        (_E159695159794_)))))
            (_E159694159818_)))))
    (define gx#core-read-module/lang
      (lambda (_path159512_)
        (letrec ((_default-read-module-body159514_
                  (lambda (_inp159677_)
                    (let _lp159679_ ((_body159681_ '()))
                      (let ((_next159683_ (read-syntax _inp159677_)))
                        (if (eof-object? _next159683_)
                            (reverse _body159681_)
                            (_lp159679_ (cons _next159683_ _body159681_)))))))
                 (_read-body159515_
                  (lambda (_inp159596_
                           _pre159597_
                           _ns159598_
                           _pkg159599_
                           _args159600_)
                    (let ((_g165490_
                           (if _pkg159599_
                               (values _pre159597_ _ns159598_ _pkg159599_)
                               (gx#core-read-module-package
                                _path159512_
                                _pre159597_
                                _ns159598_))))
                      (begin
                        (let ((_g165491_
                               (if (##values? _g165490_)
                                   (##vector-length _g165490_)
                                   1)))
                          (if (not (##fx= _g165491_ 3))
                              (error "Context expects 3 values" _g165491_)))
                        (let ((_pre159602_ (##vector-ref _g165490_ 0))
                              (_ns159603_ (##vector-ref _g165490_ 1))
                              (_pkg159604_ (##vector-ref _g165490_ 2)))
                          (let* ((_prelude159606_
                                  (gx#import-module__0 _pre159602_))
                                 (_read-module-body159660_
                                  (let ((_$e159652_
                                         (find (lambda (_e159607159609_)
                                                 (let* ((_g159611159621_
                                                         _e159607159609_)
                                                        (_else159613159629_
                                                         (lambda () '#f))
                                                        (_K159615159633_
                                                         (lambda () '#t)))
                                                   (if (##structure-direct-instance-of?
                                                        _g159611159621_
                                                        'gx#module-export::t)
                                                       (let* ((_e159616159636_
                                                               (##unchecked-structure-ref
                                                                _g159611159621_
                                                                '1
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e159617159639_
                                                               (##unchecked-structure-ref
                                                                _g159611159621_
                                                                '2
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e159618159642_
                                                               (##unchecked-structure-ref
                                                                _g159611159621_
                                                                '3
                                                                gx#module-export::t
                                                                '#f)))
                                                         (if (##eq? _e159618159642_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)
                     (let ((_e159619159645_
                            (##unchecked-structure-ref
                             _g159611159621_
                             '4
                             gx#module-export::t
                             '#f)))
                       (if ((lambda (_g159647159649_)
                              (eq? _g159647159649_ 'read-module-body))
                            _e159619159645_)
                           (_K159615159633_)
                           (_else159613159629_)))
                     (_else159613159629_)))
               (_else159613159629_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (##unchecked-structure-ref
                                                _prelude159606_
                                                '9
                                                gx#module-context::t
                                                '#f))))
                                    (if _$e159652_
                                        ((lambda (_xport159655_)
                                           (let ((_proc159658_
                                                  (with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _xport159655_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _proc159658_)
                                                 _proc159658_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _path159512_
                                                  _pre159602_
                                                  _proc159658_))))
                                         _$e159652_)
                                        _default-read-module-body159514_)))
                                 (_path-id159662_
                                  (gx#core-module-path->namespace
                                   _path159512_))
                                 (_pkg-id159664_
                                  (if _pkg159604_
                                      (string-append
                                       _pkg159604_
                                       '"/"
                                       _path-id159662_)
                                      _path-id159662_))
                                 (_module-id159666_
                                  (string->symbol _pkg-id159664_))
                                 (_module-ns159671_
                                  (let ((_$e159668_ _ns159603_))
                                    (if _$e159668_ _$e159668_ _pkg-id159664_)))
                                 (_body159674_
                                  (call-with-parameters
                                   (lambda ()
                                     (_read-module-body159660_ _inp159596_))
                                   gx#current-module-reader-path
                                   _path159512_
                                   gx#current-module-reader-args
                                   _args159600_)))
                            (values _prelude159606_
                                    _module-id159666_
                                    _module-ns159671_
                                    _body159674_)))))))
                 (_string-e159516_
                  (lambda (_obj159593_ _what159594_)
                    (if (string? _obj159593_)
                        _obj159593_
                        (if (symbol? _obj159593_)
                            (symbol->string _obj159593_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _what159594_)
                             _path159512_
                             _obj159593_)))))
                 (_read-lang-args159517_
                  (lambda (_inp159548_ _args159549_)
                    (let* ((_args159550159558_ _args159549_)
                           (_else159552159566_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _path159512_)))
                           (_K159554159581_
                            (lambda (_args159569_ _prelude159570_)
                              (let* ((_pkg159572_
                                      (pgetq 'package: _args159569_))
                                     (_pkg159574_
                                      (if _pkg159572_
                                          (_string-e159516_
                                           _pkg159572_
                                           '"package")
                                          '#f))
                                     (_ns159576_
                                      (pgetq 'namespace: _args159569_))
                                     (_ns159578_
                                      (if _ns159576_
                                          (_string-e159516_
                                           _ns159576_
                                           '"namespace")
                                          '#f)))
                                (_read-body159515_
                                 _inp159548_
                                 _prelude159570_
                                 _ns159578_
                                 _pkg159574_
                                 _args159569_)))))
                      (if (##pair? _args159550159558_)
                          (let ((_hd159555159584_ (##car _args159550159558_))
                                (_tl159556159586_ (##cdr _args159550159558_)))
                            (let* ((_prelude159589_ _hd159555159584_)
                                   (_args159591_ _tl159556159586_))
                              (_K159554159581_ _args159591_ _prelude159589_)))
                          (_else159552159566_)))))
                 (_read-lang159518_
                  (lambda (_inp159523_)
                    (let* ((_head159525_ (read-line _inp159523_))
                           (_$e159527_ (string-index _head159525_ '#\space)))
                      (if _$e159527_
                          ((lambda (_ix159530_)
                             (let ((_lang159532_
                                    (substring _head159525_ '0 _ix159530_)))
                               (if (equal? _lang159532_ '"#lang")
                                   (let* ((_rest159534_
                                           (substring
                                            _head159525_
                                            (fx+ _ix159530_ '1)
                                            (string-length _head159525_)))
                                          (_args159545_
                                           (with-catch
                                            (lambda (_g159535159537_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _path159512_
                                               _g159535159537_))
                                            (lambda ()
                                              (call-with-input-string
                                               _rest159534_
                                               (lambda (_g159540159542_)
                                                 (read-all
                                                  _g159540159542_
                                                  read)))))))
                                     (_read-lang-args159517_
                                      _inp159523_
                                      _args159545_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _path159512_))))
                           _$e159527_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _path159512_)))))
                 (_read-e159519_
                  (lambda (_inp159521_)
                    (if (eq? (peek-char _inp159521_) '#\#)
                        (_read-lang159518_ _inp159521_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _path159512_)))))
          (gx#call-with-input-source-file _path159512_ _read-e159519_))))
    (define gx#core-read-module-package
      (lambda (_path159466_ _pre159467_ _ns159468_)
        (letrec ((_string-e159470_
                  (lambda (_e159510_)
                    (if (symbol? _e159510_)
                        (symbol->string _e159510_)
                        (if (string? _e159510_)
                            _e159510_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _e159510_))))))
          (let _lp159472_ ((_dir159474_ (path-directory _path159466_))
                           (_pkg-path159475_ '()))
            (let ((_gerbil.pkg159477_ (path-expand '"gerbil.pkg" _dir159474_)))
              (if (file-exists? _gerbil.pkg159477_)
                  (let ((_plist159479_
                         (gx#core-library-package-plist__% _dir159474_ '#t)))
                    (if (null? _plist159479_)
                        (let ((_pkg159481_
                               (if (not (null? _pkg-path159475_))
                                   (string-join _pkg-path159475_ '"/")
                                   '#f)))
                          (values _pre159467_ _ns159468_ _pkg159481_))
                        (if (list? _plist159479_)
                            (let* ((_root159483_
                                    (pgetq 'package: _plist159479_))
                                   (_pkg159487_
                                    (let ((_pkg-path159485_
                                           (if _root159483_
                                               (cons (_string-e159470_
                                                      _root159483_)
                                                     _pkg-path159475_)
                                               _pkg-path159475_)))
                                      (if (not (null? _pkg-path159485_))
                                          (string-join _pkg-path159485_ '"/")
                                          '#f)))
                                   (_ns159494_
                                    (let ((_ns159492_
                                           (let ((_$e159489_ _ns159468_))
                                             (if _$e159489_
                                                 _$e159489_
                                                 (pgetq 'namespace:
                                                        _plist159479_)))))
                                      (if _ns159492_
                                          (_string-e159470_ _ns159492_)
                                          '#f)))
                                   (_pre159499_
                                    (let ((_$e159496_ _pre159467_))
                                      (if _$e159496_
                                          _$e159496_
                                          (pgetq 'prelude: _plist159479_)))))
                              (values _pre159499_ _ns159494_ _pkg159487_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _plist159479_))))
                  (let ((_dir*159502_
                         (path-strip-trailing-directory-separator
                          _dir159474_)))
                    (if (or (string-empty? _dir*159502_)
                            (equal? _dir159474_ _dir*159502_))
                        (values _pre159467_ _ns159468_ '#f)
                        (let ((_xpath159507_
                               (path-strip-directory _dir*159502_))
                              (_xdir159508_ (path-directory _dir*159502_)))
                          (_lp159472_
                           _xdir159508_
                           (cons _xpath159507_ _pkg-path159475_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_path159464_)
        (path-strip-extension (path-strip-directory _path159464_))))
    (define gx#core-module-path->id
      (lambda (_path159462_)
        (string->symbol (gx#core-module-path->namespace _path159462_))))
    (define gx#core-resolve-module-path__%
      (lambda (_stx-path159441_ _rel159442_)
        (let* ((_path159444_ (gx#stx-e _stx-path159441_))
               (_path159446_
                (if (string-empty? (path-extension _path159444_))
                    (string-append _path159444_ '".ss")
                    _path159444_)))
          (gx#core-resolve-path__%
           _path159446_
           (let ((_$e159449_ (gx#stx-source _stx-path159441_)))
             (if _$e159449_ _$e159449_ _rel159442_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_stx-path159455_)
        (let ((_rel159457_ '#f))
          (gx#core-resolve-module-path__% _stx-path159455_ _rel159457_))))
    (define gx#core-resolve-module-path
      (lambda _g165493_
        (let ((_g165492_ (##length _g165493_)))
          (cond ((##fx= _g165492_ 1)
                 (apply (lambda (_stx-path159455_)
                          (gx#core-resolve-module-path__0 _stx-path159455_))
                        _g165493_))
                ((##fx= _g165492_ 2)
                 (apply (lambda (_stx-path159459_ _rel159460_)
                          (gx#core-resolve-module-path__%
                           _stx-path159459_
                           _rel159460_))
                        _g165493_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g165493_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_libpath159327_)
        (let* ((_spath159329_ (symbol->string (gx#stx-e _libpath159327_)))
               (_spath159331_
                (substring _spath159329_ '1 (string-length _spath159329_)))
               (_ext159333_ (path-extension _spath159331_))
               (_ssi159335_
                (if (string-empty? _ext159333_)
                    (string-append _spath159331_ '".ssi")
                    (string-append
                     (path-strip-extension _spath159331_)
                     '".ssi")))
               (_srcs159339_
                (if (string-empty? _ext159333_)
                    (map (lambda (_ext159337_)
                           (string-append _spath159331_ _ext159337_))
                         '(".ss" ".sld" ".scm"))
                    (cons _spath159331_ '()))))
          (let _lp159342_ ((_rest159344_
                            (gx#current-expander-module-library-path)))
            (let* ((_rest159345159354_ _rest159344_)
                   (_E159348159358_
                    (lambda ()
                      (error '"No clause matching" _rest159345159354_))))
              (let ((_K159350159428_
                     (lambda (_rest159369_ _dir159370_)
                       (letrec ((_resolve159372_
                                 (lambda (_ssi159384_ _srcs159385_)
                                   (let ((_compiled-path159387_
                                          (path-expand
                                           _ssi159384_
                                           _dir159370_)))
                                     (if (file-exists? _compiled-path159387_)
                                         (path-normalize _compiled-path159387_)
                                         (let _lpr159389_ ((_rest-src159391_
                                                            _srcs159385_))
                                           (let* ((_rest-src159392159400_
                                                   _rest-src159391_)
                                                  (_else159394159408_
                                                   (lambda ()
                                                     (_lp159342_
                                                      _rest159369_)))
                                                  (_K159396159416_
                                                   (lambda (_rest-src159411_
                                                            _src159412_)
                                                     (let ((_src-path159414_
                                                            (path-expand
                                                             _src159412_
                                                             _dir159370_)))
                                                       (if (file-exists?
                                                            _src-path159414_)
                                                           (path-normalize
                                                            _src-path159414_)
                                                           (_lpr159389_
                                                            _rest-src159411_))))))
                                             (if (##pair? _rest-src159392159400_)
                                                 (let ((_hd159397159419_
                                                        (##car _rest-src159392159400_))
                                                       (_tl159398159421_
                                                        (##cdr _rest-src159392159400_)))
                                                   (let* ((_src159424_
                                                           _hd159397159419_)
                                                          (_rest-src159426_
                                                           _tl159398159421_))
                                                     (_K159396159416_
                                                      _rest-src159426_
                                                      _src159424_)))
                                                 (_else159394159408_)))))))))
                         (let ((_$e159374_
                                (gx#core-library-package-path-prefix
                                 _dir159370_)))
                           (if _$e159374_
                               ((lambda (_prefix159377_)
                                  (if (string-prefix?
                                       _prefix159377_
                                       _spath159331_)
                                      (let ((_ssi159381_
                                             (substring
                                              _ssi159335_
                                              (string-length _prefix159377_)
                                              (string-length _ssi159335_)))
                                            (_srcs159382_
                                             (map (lambda (_src159379_)
                                                    (substring
                                                     _src159379_
                                                     (string-length
                                                      _prefix159377_)
                                                     (string-length
                                                      _src159379_)))
                                                  _srcs159339_)))
                                        (_resolve159372_
                                         _ssi159381_
                                         _srcs159382_))
                                      (_lp159342_ _rest159369_)))
                                _$e159374_)
                               (_resolve159372_ _ssi159335_ _srcs159339_))))))
                    (_K159349159363_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"Cannot find library module"
                        _libpath159327_))))
                (let ((_try-match159347159366_
                       (lambda ()
                         (if (##null? _rest159345159354_)
                             (_K159349159363_)
                             (_E159348159358_)))))
                  (if (##pair? _rest159345159354_)
                      (let ((_tl159352159433_ (##cdr _rest159345159354_))
                            (_hd159351159431_ (##car _rest159345159354_)))
                        (let ((_dir159436_ _hd159351159431_)
                              (_rest159438_ _tl159352159433_))
                          (_K159350159428_ _rest159438_ _dir159436_)))
                      (_try-match159347159366_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_modpath159300_)
        (letrec ((_resolve159302_
                  (lambda (_path159319_ _base159320_)
                    (let ((_$e159322_ (string-rindex _base159320_ '#\/)))
                      (if _$e159322_
                          ((lambda (_idx159325_)
                             (gx#core-resolve-library-module-path
                              (string->symbol
                               (string-append
                                '":"
                                (substring _base159320_ '0 _idx159325_)
                                '"/"
                                _path159319_))))
                           _$e159322_)
                          (gx#core-resolve-library-module-path
                           (string->symbol
                            (string-append '":" _path159319_))))))))
          (let ((_spath159304_ (symbol->string (gx#stx-e _modpath159300_)))
                (_mod159305_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _mod159305_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"Cannot resolve relative module path; not in module context"
                 _modpath159300_))
            (let ((_mpath159307_
                   (symbol->string
                    (##structure-ref
                     _mod159305_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _lp159309_ ((_spath159311_ _spath159304_)
                               (_mpath159312_ _mpath159307_))
                (if (string-prefix? '"../" _spath159311_)
                    (let ((_$e159314_ (string-rindex _mpath159312_ '#\/)))
                      (if _$e159314_
                          ((lambda (_idx159317_)
                             (_lp159309_
                              (substring
                               _spath159311_
                               '3
                               (string-length _spath159311_))
                              (substring _mpath159312_ '0 _idx159317_)))
                           _$e159314_)
                          (gx#raise-syntax-error
                           '#f
                           '"Cannot resolve relative module path; illegal traversal"
                           _modpath159300_)))
                    (if (string-prefix? '"./" _spath159311_)
                        (_lp159309_
                         (substring
                          _spath159311_
                          '2
                          (string-length _spath159311_))
                         _mpath159312_)
                        (_resolve159302_ _spath159311_ _mpath159312_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_dir159293_)
        (let ((_$e159295_
               (pgetq 'package:
                      (gx#core-library-package-plist__0 _dir159293_))))
          (if _$e159295_
              ((lambda (_pkg159298_)
                 (string-append (symbol->string _pkg159298_) '"/"))
               _$e159295_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_dir159265_ _exists?159266_)
        (let* ((_cache159268_ (gx#core-library-package-cache))
               (_$e159270_ (table-ref _cache159268_ _dir159265_ '#f)))
          (if _$e159270_
              (values _$e159270_)
              (let* ((_gerbil.pkg159273_
                      (path-expand '"gerbil.pkg" _dir159265_))
                     (_plist159280_
                      (if (or _exists?159266_
                              (file-exists? _gerbil.pkg159273_))
                          (let ((_e159278_
                                 (gx#call-with-input-source-file
                                  _gerbil.pkg159273_
                                  read)))
                            (if (eof-object? _e159278_)
                                '()
                                (if (list? _e159278_)
                                    _e159278_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _gerbil.pkg159273_
                                     _e159278_))))
                          '())))
                (table-set! _cache159268_ _dir159265_ _plist159280_)
                _plist159280_)))))
    (define gx#core-library-package-plist__0
      (lambda (_dir159286_)
        (let ((_exists?159288_ '#f))
          (gx#core-library-package-plist__% _dir159286_ _exists?159288_))))
    (define gx#core-library-package-plist
      (lambda _g165495_
        (let ((_g165494_ (##length _g165495_)))
          (cond ((##fx= _g165494_ 1)
                 (apply (lambda (_dir159286_)
                          (gx#core-library-package-plist__0 _dir159286_))
                        _g165495_))
                ((##fx= _g165494_ 2)
                 (apply (lambda (_dir159290_ _exists?159291_)
                          (gx#core-library-package-plist__%
                           _dir159290_
                           _exists?159291_))
                        _g165495_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g165495_))))))
    (define gx#core-library-package-cache
      (lambda ()
        (let ((_$e159259_ (gx#current-expander-module-library-package-cache)))
          (if _$e159259_
              (values _$e159259_)
              (let ((_cache159262_ (make-table)))
                (gx#current-expander-module-library-package-cache
                 _cache159262_)
                _cache159262_)))))
    (define gx#core-library-module-path?
      (lambda (_stx159256_) (gx#core-special-module-path? _stx159256_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_stx159254_) (gx#core-special-module-path? _stx159254_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_stx159249_ _char159250_)
        (if (gx#identifier? _stx159249_)
            (if (interned-symbol? (gx#stx-e _stx159249_))
                (let ((_str159252_ (symbol->string (gx#stx-e _stx159249_))))
                  (if (fx> (string-length _str159252_) '1)
                      (eq? (string-ref _str159252_ '0) _char159250_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_stx159243_)
        (gx#core-bound-identifier?__%
         _stx159243_
         (lambda (_g159244159246_)
           (gx#expander-binding?__% _g159244159246_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_stx159237_)
        (gx#core-bound-identifier?__%
         _stx159237_
         (lambda (_g159238159240_)
           (gx#expander-binding?__% _g159238159240_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_stx159224_)
        (letrec ((_module-prelude?159226_
                  (lambda (_e159232_)
                    (let ((_$e159234_
                           (##structure-instance-of?
                            _e159232_
                            'gx#module-context::t)))
                      (if _$e159234_
                          _$e159234_
                          (##structure-instance-of?
                           _e159232_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _stx159224_
           (lambda (_g159227159229_)
             (gx#expander-binding?__%
              _g159227159229_
              _module-prelude?159226_))))))
    (define gx#core-bind-import!__%
      (lambda (_in159154_ _ctx159155_ _force-weak?159156_)
        (let* ((_in159157159166_ _in159154_)
               (_E159159159170_
                (lambda () (error '"No clause matching" _in159157159166_)))
               (_K159160159183_
                (lambda (_weak?159173_ _phi159174_ _key159175_ _source159176_)
                  (gx#core-bind!__%
                   _key159175_
                   (let ((_e159178_
                          (gx#core-resolve-module-export _source159176_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref
                       _e159178_
                       '1
                       gx#binding::t
                       '#f)
                      _key159175_
                      _phi159174_
                      _e159178_
                      (##unchecked-structure-ref
                       _source159176_
                       '1
                       gx#module-export::t
                       '#f)
                      (let ((_$e159180_ _force-weak?159156_))
                        (if _$e159180_ _$e159180_ _weak?159173_))))
                   gx#core-context-rebind?
                   _phi159174_
                   _ctx159155_))))
          (if (##structure-direct-instance-of?
               _in159157159166_
               'gx#module-import::t)
              (let* ((_e159161159186_
                      (##unchecked-structure-ref
                       _in159157159166_
                       '1
                       gx#module-import::t
                       '#f))
                     (_source159189_ _e159161159186_)
                     (_e159162159191_
                      (##unchecked-structure-ref
                       _in159157159166_
                       '2
                       gx#module-import::t
                       '#f))
                     (_key159194_ _e159162159191_)
                     (_e159163159196_
                      (##unchecked-structure-ref
                       _in159157159166_
                       '3
                       gx#module-import::t
                       '#f))
                     (_phi159199_ _e159163159196_)
                     (_e159164159201_
                      (##unchecked-structure-ref
                       _in159157159166_
                       '4
                       gx#module-import::t
                       '#f))
                     (_weak?159204_ _e159164159201_))
                (_K159160159183_
                 _weak?159204_
                 _phi159199_
                 _key159194_
                 _source159189_))
              (_E159159159170_)))))
    (define gx#core-bind-import!__0
      (lambda (_in159209_)
        (let* ((_ctx159211_ (gx#current-expander-context))
               (_force-weak?159213_ '#f))
          (gx#core-bind-import!__%
           _in159209_
           _ctx159211_
           _force-weak?159213_))))
    (define gx#core-bind-import!__1
      (lambda (_in159215_ _ctx159216_)
        (let ((_force-weak?159218_ '#f))
          (gx#core-bind-import!__%
           _in159215_
           _ctx159216_
           _force-weak?159218_))))
    (define gx#core-bind-import!
      (lambda _g165497_
        (let ((_g165496_ (##length _g165497_)))
          (cond ((##fx= _g165496_ 1)
                 (apply (lambda (_in159209_)
                          (gx#core-bind-import!__0 _in159209_))
                        _g165497_))
                ((##fx= _g165496_ 2)
                 (apply (lambda (_in159215_ _ctx159216_)
                          (gx#core-bind-import!__1 _in159215_ _ctx159216_))
                        _g165497_))
                ((##fx= _g165496_ 3)
                 (apply (lambda (_in159220_ _ctx159221_ _force-weak?159222_)
                          (gx#core-bind-import!__%
                           _in159220_
                           _ctx159221_
                           _force-weak?159222_))
                        _g165497_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g165497_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_in159140_ _ctx159141_)
        (gx#core-bind-import!__% _in159140_ _ctx159141_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_in159146_)
        (let ((_ctx159148_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _in159146_ _ctx159148_))))
    (define gx#core-bind-weak-import!
      (lambda _g165499_
        (let ((_g165498_ (##length _g165499_)))
          (cond ((##fx= _g165498_ 1)
                 (apply (lambda (_in159146_)
                          (gx#core-bind-weak-import!__0 _in159146_))
                        _g165499_))
                ((##fx= _g165498_ 2)
                 (apply (lambda (_in159150_ _ctx159151_)
                          (gx#core-bind-weak-import!__%
                           _in159150_
                           _ctx159151_))
                        _g165499_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g165499_))))))
    (define gx#core-resolve-module-export
      (lambda (_out159031_)
        (letrec ((_subst159033_
                  (lambda (_key159079_)
                    (let* ((_key159080159088_ _key159079_)
                           (_else159082159096_ (lambda () _key159079_))
                           (_K159084159127_
                            (lambda (_mark159099_ _id159100_)
                              (let* ((_mark159101159107_ _mark159099_)
                                     (_E159103159111_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark159101159107_)))
                                     (_K159104159119_
                                      (lambda (_subst159114_)
                                        (let ((_$e159116_
                                               (if _subst159114_
                                                   (table-ref
                                                    _subst159114_
                                                    _id159100_
                                                    '#f)
                                                   '#f)))
                                          (if _$e159116_
                                              _$e159116_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _key159079_))))))
                                (if (##structure-instance-of?
                                     _mark159101159107_
                                     'gx#expander-mark::t)
                                    (let* ((_e159105159122_
                                            (##unchecked-structure-ref
                                             _mark159101159107_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst159125_ _e159105159122_))
                                      (_K159104159119_ _subst159125_))
                                    (_E159103159111_))))))
                      (if (##pair? _key159080159088_)
                          (let ((_hd159085159130_ (##car _key159080159088_))
                                (_tl159086159132_ (##cdr _key159080159088_)))
                            (let* ((_id159135_ _hd159085159130_)
                                   (_mark159137_ _tl159086159132_))
                              (_K159084159127_ _mark159137_ _id159135_)))
                          (_else159082159096_))))))
          (let* ((_out159034159044_ _out159031_)
                 (_E159036159048_
                  (lambda () (error '"No clause matching" _out159034159044_)))
                 (_K159037159055_
                  (lambda (_phi159051_ _key159052_ _ctx159053_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _ctx159053_ _phi159051_)
                     (_subst159033_ _key159052_)))))
            (if (##structure-direct-instance-of?
                 _out159034159044_
                 'gx#module-export::t)
                (let* ((_e159038159058_
                        (##unchecked-structure-ref
                         _out159034159044_
                         '1
                         gx#module-export::t
                         '#f))
                       (_ctx159061_ _e159038159058_)
                       (_e159039159063_
                        (##unchecked-structure-ref
                         _out159034159044_
                         '2
                         gx#module-export::t
                         '#f))
                       (_key159066_ _e159039159063_)
                       (_e159040159068_
                        (##unchecked-structure-ref
                         _out159034159044_
                         '3
                         gx#module-export::t
                         '#f))
                       (_phi159071_ _e159040159068_)
                       (_e159041159073_
                        (##unchecked-structure-ref
                         _out159034159044_
                         '4
                         gx#module-export::t
                         '#f))
                       (_e159042159076_
                        (##unchecked-structure-ref
                         _out159034159044_
                         '5
                         gx#module-export::t
                         '#f)))
                  (_K159037159055_ _phi159071_ _key159066_ _ctx159061_))
                (_E159036159048_))))))
    (define gx#core-module-export->import__%
      (lambda (_out158956_ _rename158957_ _dphi158958_)
        (let* ((_out158959158969_ _out158956_)
               (_E158961158973_
                (lambda () (error '"No clause matching" _out158959158969_)))
               (_K158962158985_
                (lambda (_weak?158976_
                         _name158977_
                         _phi158978_
                         _key158979_
                         _ctx158980_)
                  (##structure
                   gx#module-import::t
                   _out158956_
                   (let ((_$e158982_ _rename158957_))
                     (if _$e158982_ _$e158982_ _name158977_))
                   (fx+ _phi158978_ _dphi158958_)
                   _weak?158976_))))
          (if (##structure-direct-instance-of?
               _out158959158969_
               'gx#module-export::t)
              (let* ((_e158963158988_
                      (##unchecked-structure-ref
                       _out158959158969_
                       '1
                       gx#module-export::t
                       '#f))
                     (_ctx158991_ _e158963158988_)
                     (_e158964158993_
                      (##unchecked-structure-ref
                       _out158959158969_
                       '2
                       gx#module-export::t
                       '#f))
                     (_key158996_ _e158964158993_)
                     (_e158965158998_
                      (##unchecked-structure-ref
                       _out158959158969_
                       '3
                       gx#module-export::t
                       '#f))
                     (_phi159001_ _e158965158998_)
                     (_e158966159003_
                      (##unchecked-structure-ref
                       _out158959158969_
                       '4
                       gx#module-export::t
                       '#f))
                     (_name159006_ _e158966159003_)
                     (_e158967159008_
                      (##unchecked-structure-ref
                       _out158959158969_
                       '5
                       gx#module-export::t
                       '#f))
                     (_weak?159011_ _e158967159008_))
                (_K158962158985_
                 _weak?159011_
                 _name159006_
                 _phi159001_
                 _key158996_
                 _ctx158991_))
              (_E158961158973_)))))
    (define gx#core-module-export->import__0
      (lambda (_out159016_)
        (let* ((_rename159018_ '#f) (_dphi159020_ '0))
          (gx#core-module-export->import__%
           _out159016_
           _rename159018_
           _dphi159020_))))
    (define gx#core-module-export->import__1
      (lambda (_out159022_ _rename159023_)
        (let ((_dphi159025_ '0))
          (gx#core-module-export->import__%
           _out159022_
           _rename159023_
           _dphi159025_))))
    (define gx#core-module-export->import
      (lambda _g165501_
        (let ((_g165500_ (##length _g165501_)))
          (cond ((##fx= _g165500_ 1)
                 (apply (lambda (_out159016_)
                          (gx#core-module-export->import__0 _out159016_))
                        _g165501_))
                ((##fx= _g165500_ 2)
                 (apply (lambda (_out159022_ _rename159023_)
                          (gx#core-module-export->import__1
                           _out159022_
                           _rename159023_))
                        _g165501_))
                ((##fx= _g165500_ 3)
                 (apply (lambda (_out159027_ _rename159028_ _dphi159029_)
                          (gx#core-module-export->import__%
                           _out159027_
                           _rename159028_
                           _dphi159029_))
                        _g165501_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g165501_))))))
    (define gx#core-expand-module%
      (lambda (_stx158884_)
        (letrec ((_make-context158886_
                  (lambda (_id158937_)
                    (let* ((_super158939_ (gx#current-expander-context))
                           (_bind-id158941_ (gx#stx-e _id158937_))
                           (_mod-id158943_
                            (if (##structure-instance-of?
                                 _super158939_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##structure-ref
                                  _super158939_
                                  '1
                                  gx#expander-context::t
                                  '#f)
                                 '"$"
                                 _bind-id158941_)
                                _bind-id158941_))
                           (_ns158945_ (symbol->string _mod-id158943_))
                           (_path158952_
                            (if (##structure-instance-of?
                                 _super158939_
                                 'gx#module-context::t)
                                (let ((_path158947_
                                       (##unchecked-structure-ref
                                        _super158939_
                                        '7
                                        gx#module-context::t
                                        '#f)))
                                  (if (or (pair? _path158947_)
                                          (null? _path158947_))
                                      (cons _bind-id158941_ _path158947_)
                                      (if (not _path158947_)
                                          _bind-id158941_
                                          (cons _bind-id158941_
                                                (cons _path158947_ '())))))
                                _bind-id158941_)))
                      (let ((__obj165477
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
                         __obj165477
                         _mod-id158943_
                         _super158939_
                         _ns158945_
                         _path158952_)
                        __obj165477)))))
          (let* ((_e158887158897_ _stx158884_)
                 (_E158889158901_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e158887158897_)))
                 (_E158888158933_
                  (lambda ()
                    (if (gx#stx-pair? _e158887158897_)
                        (let ((_e158890158905_ (gx#syntax-e _e158887158897_)))
                          (let ((_hd158891158908_ (##car _e158890158905_))
                                (_tl158892158910_ (##cdr _e158890158905_)))
                            (if (gx#stx-pair? _tl158892158910_)
                                (let ((_e158893158913_
                                       (gx#syntax-e _tl158892158910_)))
                                  (let ((_hd158894158916_
                                         (##car _e158893158913_))
                                        (_tl158895158918_
                                         (##cdr _e158893158913_)))
                                    (let* ((_id158921_ _hd158894158916_)
                                           (_body158923_ _tl158895158918_))
                                      (if (and (gx#identifier? _id158921_)
                                               (gx#stx-list? _body158923_))
                                          (let* ((_ctx158925_
                                                  (_make-context158886_
                                                   _id158921_))
                                                 (_body158927_
                                                  (gx#core-expand-module-begin
                                                   _body158923_
                                                   _ctx158925_))
                                                 (_body158929_
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body158927_)
                                                   (gx#stx-source
                                                    _stx158884_))))
                                            (##unchecked-structure-set!
                                             _ctx158925_
                                             (make-promise
                                              (lambda ()
                                                (gx#eval-syntax*
                                                 _body158929_)))
                                             '10
                                             gx#module-context::t
                                             '#f)
                                            (##unchecked-structure-set!
                                             _ctx158925_
                                             _body158929_
                                             '11
                                             gx#module-context::t
                                             '#f)
                                            (gx#core-bind-syntax!__0
                                             _id158921_
                                             _ctx158925_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-list
                                              '%#module
                                              (gx#core-quote-syntax__0
                                               _id158921_)
                                              _body158929_)
                                             (gx#stx-source _stx158884_)))
                                          (_E158889158901_)))))
                                (_E158889158901_))))
                        (_E158889158901_)))))
            (_E158888158933_)))))
    (define gx#core-expand-module-begin
      (lambda (_body158850_ _ctx158851_)
        (call-with-parameters
         (lambda ()
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_stx158854_
                   (gx#core-expand-head (cons '%%begin-module _body158850_)))
                  (_e158855158862_ _stx158854_)
                  (_E158857158866_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _stx158854_)))
                  (_E158856158880_
                   (lambda ()
                     (if (gx#stx-pair? _e158855158862_)
                         (let ((_e158858158870_ (gx#syntax-e _e158855158862_)))
                           (let ((_hd158859158873_ (##car _e158858158870_))
                                 (_tl158860158875_ (##cdr _e158858158870_)))
                             (if (and (gx#identifier? _hd158859158873_)
                                      (gx#core-identifier=?
                                       _hd158859158873_
                                       '%#begin-module))
                                 (let ((_body158878_ _tl158860158875_))
                                   (if '#t
                                       (if (gx#sealed-syntax? _stx158854_)
                                           _body158878_
                                           (gx#core-expand-module-body
                                            _body158878_))
                                       (_E158857158866_)))
                                 (_E158857158866_))))
                         (_E158857158866_)))))
             (_E158856158880_)))
         gx#current-expander-context
         _ctx158851_
         gx#current-expander-phi
         '0)))
    (define gx#core-expand-module-body
      (lambda (_body158646_)
        (letrec ((_expand-special158648_
                  (lambda (_hd158777_ _K158778_ _rest158779_ _r158780_)
                    (let* ((_e158781158798_ _hd158777_)
                           (_E158793158802_
                            (lambda ()
                              (_K158778_
                               _rest158779_
                               (cons (gx#core-expand-top _hd158777_)
                                     _r158780_))))
                           (_E158783158814_
                            (lambda ()
                              (if (gx#stx-pair? _e158781158798_)
                                  (let ((_e158794158806_
                                         (gx#syntax-e _e158781158798_)))
                                    (let ((_hd158795158809_
                                           (##car _e158794158806_))
                                          (_tl158796158811_
                                           (##cdr _e158794158806_)))
                                      (if (and (gx#identifier?
                                                _hd158795158809_)
                                               (gx#core-identifier=?
                                                _hd158795158809_
                                                '%#export))
                                          (if '#t
                                              (_K158778_
                                               _rest158779_
                                               (cons _hd158777_ _r158780_))
                                              (_E158793158802_))
                                          (_E158793158802_))))
                                  (_E158793158802_))))
                           (_E158782158846_
                            (lambda ()
                              (if (gx#stx-pair? _e158781158798_)
                                  (let ((_e158784158818_
                                         (gx#syntax-e _e158781158798_)))
                                    (let ((_hd158785158821_
                                           (##car _e158784158818_))
                                          (_tl158786158823_
                                           (##cdr _e158784158818_)))
                                      (if (and (gx#identifier?
                                                _hd158785158821_)
                                               (gx#core-identifier=?
                                                _hd158785158821_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl158786158823_)
                                              (let ((_e158787158826_
                                                     (gx#syntax-e
                                                      _tl158786158823_)))
                                                (let ((_hd158788158829_
                                                       (##car _e158787158826_))
                                                      (_tl158789158831_
                                                       (##cdr _e158787158826_)))
                                                  (let ((_hd-bind158834_
                                                         _hd158788158829_))
                                                    (if (gx#stx-pair?
                                                         _tl158789158831_)
                                                        (let ((_e158790158836_
                                                               (gx#syntax-e
                                                                _tl158789158831_)))
                                                          (let ((_hd158791158839_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e158790158836_))
                        (_tl158792158841_ (##cdr _e158790158836_)))
                    (let ((_expr158844_ _hd158791158839_))
                      (if (gx#stx-null? _tl158792158841_)
                          (if (gx#core-bind-values? _hd-bind158834_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind158834_)
                                (_K158778_
                                 _rest158779_
                                 (cons _hd158777_ _r158780_)))
                              (_E158783158814_))
                          (_E158783158814_)))))
                (_E158783158814_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E158783158814_))
                                          (_E158783158814_))))
                                  (_E158783158814_)))))
                      (_E158782158846_))))
                 (_expand-body158649_
                  (lambda (_rbody158651_)
                    (let _lp158653_ ((_rest158655_ _rbody158651_)
                                     (_body158656_ '()))
                      (let* ((_rest158657158665_ _rest158655_)
                             (_else158659158673_ (lambda () _body158656_))
                             (_K158661158765_
                              (lambda (_rest158676_ _hd158677_)
                                (let* ((_e158678158699_ _hd158677_)
                                       (_E158694158703_
                                        (lambda ()
                                          (_lp158653_
                                           _rest158676_
                                           (cons (gx#core-expand-expression
                                                  _hd158677_)
                                                 _body158656_))))
                                       (_E158690158717_
                                        (lambda ()
                                          (if (gx#stx-pair? _e158678158699_)
                                              (let ((_e158695158707_
                                                     (gx#syntax-e
                                                      _e158678158699_)))
                                                (let ((_hd158696158710_
                                                       (##car _e158695158707_))
                                                      (_tl158697158712_
                                                       (##cdr _e158695158707_)))
                                                  (let ((_form158715_
                                                         _hd158696158710_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _form158715_
                                                         gx#special-form-binding?)
                                                        (_lp158653_
                                                         _rest158676_
                                                         (cons _hd158677_
                                                               _body158656_))
                                                        (_E158694158703_)))))
                                              (_E158694158703_))))
                                       (_E158680158729_
                                        (lambda ()
                                          (if (gx#stx-pair? _e158678158699_)
                                              (let ((_e158691158721_
                                                     (gx#syntax-e
                                                      _e158678158699_)))
                                                (let ((_hd158692158724_
                                                       (##car _e158691158721_))
                                                      (_tl158693158726_
                                                       (##cdr _e158691158721_)))
                                                  (if (and (gx#identifier?
                                                            _hd158692158724_)
                                                           (gx#core-identifier=?
                                                            _hd158692158724_
                                                            '%#export))
                                                      (if '#t
                                                          (_lp158653_
                                                           _rest158676_
                                                           (cons (gx#core-expand-export%__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd158677_)
                         _body158656_))
                  (_E158690158717_))
              (_E158690158717_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E158690158717_))))
                                       (_E158679158761_
                                        (lambda ()
                                          (if (gx#stx-pair? _e158678158699_)
                                              (let ((_e158681158733_
                                                     (gx#syntax-e
                                                      _e158678158699_)))
                                                (let ((_hd158682158736_
                                                       (##car _e158681158733_))
                                                      (_tl158683158738_
                                                       (##cdr _e158681158733_)))
                                                  (if (and (gx#identifier?
                                                            _hd158682158736_)
                                                           (gx#core-identifier=?
                                                            _hd158682158736_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl158683158738_)
                                                          (let ((_e158684158741_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl158683158738_)))
                    (let ((_hd158685158744_ (##car _e158684158741_))
                          (_tl158686158746_ (##cdr _e158684158741_)))
                      (let ((_hd-bind158749_ _hd158685158744_))
                        (if (gx#stx-pair? _tl158686158746_)
                            (let ((_e158687158751_
                                   (gx#syntax-e _tl158686158746_)))
                              (let ((_hd158688158754_ (##car _e158687158751_))
                                    (_tl158689158756_ (##cdr _e158687158751_)))
                                (let ((_expr158759_ _hd158688158754_))
                                  (if (gx#stx-null? _tl158689158756_)
                                      (if '#t
                                          (_lp158653_
                                           _rest158676_
                                           (cons (gx#core-quote-syntax__1
                                                  (gx#core-list
                                                   '%#define-values
                                                   (gx#core-quote-bind-values
                                                    _hd-bind158749_)
                                                   (gx#core-expand-expression
                                                    _expr158759_))
                                                  (gx#stx-source _hd158677_))
                                                 _body158656_))
                                          (_E158680158729_))
                                      (_E158680158729_)))))
                            (_E158680158729_)))))
                  (_E158680158729_))
              (_E158680158729_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E158680158729_)))))
                                  (_E158679158761_)))))
                        (if (##pair? _rest158657158665_)
                            (let ((_hd158662158768_ (##car _rest158657158665_))
                                  (_tl158663158770_
                                   (##cdr _rest158657158665_)))
                              (let* ((_hd158773_ _hd158662158768_)
                                     (_rest158775_ _tl158663158770_))
                                (_K158661158765_ _rest158775_ _hd158773_)))
                            (_else158659158673_)))))))
          (_expand-body158649_
           (gx#core-expand-block__%
            (cons '%#begin-module _body158646_)
            _expand-special158648_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_stx158489_
               _expanded?158490_
               _method158491_
               _current-phi158492_
               _expand1158493_)
        (letrec ((_K158495_
                  (lambda (_rest158613_ _r158614_)
                    (let* ((_e158615158622_ _rest158613_)
                           (_E158617158626_ (lambda () _r158614_))
                           (_E158616158642_
                            (lambda ()
                              (if (gx#stx-pair? _e158615158622_)
                                  (let ((_e158618158630_
                                         (gx#syntax-e _e158615158622_)))
                                    (let ((_hd158619158633_
                                           (##car _e158618158630_))
                                          (_tl158620158635_
                                           (##cdr _e158618158630_)))
                                      (let* ((_hd158638_ _hd158619158633_)
                                             (_rest158640_ _tl158620158635_))
                                        (if '#t
                                            (_step158496_
                                             _hd158638_
                                             _rest158640_
                                             _r158614_)
                                            (_E158617158626_)))))
                                  (_E158617158626_)))))
                      (_E158616158642_))))
                 (_step158496_
                  (lambda (_hd158527_ _rest158528_ _r158529_)
                    (let* ((_e158530158548_ _hd158527_)
                           (_E158543158552_
                            (lambda ()
                              (if (_expanded?158490_ (gx#stx-e _hd158527_))
                                  (_K158495_
                                   _rest158528_
                                   (cons (gx#stx-e _hd158527_) _r158529_))
                                  (_expand1158493_
                                   _hd158527_
                                   _K158495_
                                   _rest158528_
                                   _r158529_))))
                           (_E158539158568_
                            (lambda ()
                              (if (gx#stx-pair? _e158530158548_)
                                  (let ((_e158544158556_
                                         (gx#syntax-e _e158530158548_)))
                                    (let ((_hd158545158559_
                                           (##car _e158544158556_))
                                          (_tl158546158561_
                                           (##cdr _e158544158556_)))
                                      (let* ((_macro158564_ _hd158545158559_)
                                             (_body158566_ _tl158546158561_))
                                        (if (gx#core-bound-identifier?__%
                                             _macro158564_
                                             gx#syntax-binding?)
                                            (_K158495_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _macro158564_)
                                                    _hd158527_
                                                    _method158491_)
                                                   _rest158528_)
                                             _r158529_)
                                            (_E158543158552_)))))
                                  (_E158543158552_))))
                           (_E158532158582_
                            (lambda ()
                              (if (gx#stx-pair? _e158530158548_)
                                  (let ((_e158540158572_
                                         (gx#syntax-e _e158530158548_)))
                                    (let ((_hd158541158575_
                                           (##car _e158540158572_))
                                          (_tl158542158577_
                                           (##cdr _e158540158572_)))
                                      (if (eq? (gx#stx-e _hd158541158575_)
                                               'begin:)
                                          (let ((_body158580_
                                                 _tl158542158577_))
                                            (if '#t
                                                (_K158495_
                                                 (gx#stx-foldr
                                                  cons
                                                  _rest158528_
                                                  _body158580_)
                                                 _r158529_)
                                                (_E158539158568_)))
                                          (_E158539158568_))))
                                  (_E158539158568_))))
                           (_E158531158609_
                            (lambda ()
                              (if (gx#stx-pair? _e158530158548_)
                                  (let ((_e158533158586_
                                         (gx#syntax-e _e158530158548_)))
                                    (let ((_hd158534158589_
                                           (##car _e158533158586_))
                                          (_tl158535158591_
                                           (##cdr _e158533158586_)))
                                      (if (eq? (gx#stx-e _hd158534158589_)
                                               'phi:)
                                          (if (gx#stx-pair? _tl158535158591_)
                                              (let ((_e158536158594_
                                                     (gx#syntax-e
                                                      _tl158535158591_)))
                                                (let ((_hd158537158597_
                                                       (##car _e158536158594_))
                                                      (_tl158538158599_
                                                       (##cdr _e158536158594_)))
                                                  (let* ((_dphi158602_
                                                          _hd158537158597_)
                                                         (_body158604_
                                                          _tl158538158599_))
                                                    (if (gx#stx-fixnum?
                                                         _dphi158602_)
                                                        (let ((_rbody158607_
                                                               (call-with-parameters
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_K158495_ _body158604_ '()))
                        _current-phi158492_
                        (fx+ (gx#stx-e _dphi158602_) (_current-phi158492_)))))
                  (_K158495_
                   _rest158528_
                   (foldr1 cons _r158529_ _rbody158607_)))
                (_E158532158582_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E158532158582_))
                                          (_E158532158582_))))
                                  (_E158532158582_)))))
                      (_E158531158609_)))))
          (let* ((_e158497158504_ _stx158489_)
                 (_E158499158508_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e158497158504_)))
                 (_E158498158523_
                  (lambda ()
                    (if (gx#stx-pair? _e158497158504_)
                        (let ((_e158500158512_ (gx#syntax-e _e158497158504_)))
                          (let ((_hd158501158515_ (##car _e158500158512_))
                                (_tl158502158517_ (##cdr _e158500158512_)))
                            (let ((_body158520_ _tl158502158517_))
                              (if '#t
                                  (if (_current-phi158492_)
                                      (_K158495_ _body158520_ '())
                                      (call-with-parameters
                                       (lambda () (_K158495_ _body158520_ '()))
                                       _current-phi158492_
                                       (gx#current-expander-phi)))
                                  (_E158499158508_)))))
                        (_E158499158508_)))))
            (_E158498158523_)))))
    (define gx#core-expand-import%__%
      (lambda (_stx158156_ _internal-expand?158157_)
        (letrec ((_expand1158159_
                  (lambda (_hd158469_ _K158470_ _rest158471_ _r158472_)
                    (if (gx#core-bound-module? _hd158469_)
                        (_import1158160_
                         (gx#syntax-local-e__0 _hd158469_)
                         _K158470_
                         _rest158471_
                         _r158472_)
                        (if (gx#core-library-module-path? _hd158469_)
                            (_import1158160_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _hd158469_))
                             _K158470_
                             _rest158471_
                             _r158472_)
                            (if (gx#core-library-relative-module-path?
                                 _hd158469_)
                                (_import1158160_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _hd158469_))
                                 _K158470_
                                 _rest158471_
                                 _r158472_)
                                (let ((_e158474_ (gx#stx-e _hd158469_)))
                                  (if (pair? _e158474_)
                                      (let ((_$e158476_
                                             (gx#stx-e (car _e158474_))))
                                        (if (eq? 'spec: _$e158476_)
                                            (_import-spec158163_
                                             _hd158469_
                                             _K158470_
                                             _rest158471_
                                             _r158472_)
                                            (if (eq? 'in: _$e158476_)
                                                (_import-submodule158161_
                                                 _hd158469_
                                                 _K158470_
                                                 _rest158471_
                                                 _r158472_)
                                                (if (eq? 'runtime: _$e158476_)
                                                    (_import-runtime158162_
                                                     _hd158469_
                                                     _K158470_
                                                     _rest158471_
                                                     _r158472_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _stx158156_
                                                     _hd158469_)))))
                                      (if (string? _e158474_)
                                          (_import1158160_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _hd158469_
                                             (gx#stx-source _stx158156_)))
                                           _K158470_
                                           _rest158471_
                                           _r158472_)
                                          (if (##structure-instance-of?
                                               _e158474_
                                               'gx#module-context::t)
                                              (_K158470_
                                               _rest158471_
                                               (cons _e158474_ _r158472_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _stx158156_
                                               _hd158469_))))))))))
                 (_import1158160_
                  (lambda (_ctx158458_ _K158459_ _rest158460_ _r158461_)
                    (let ((_dphi158463_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_K158459_
                       _rest158460_
                       (cons (##structure
                              gx#import-set::t
                              _ctx158458_
                              _dphi158463_
                              (map (lambda (_g158464158466_)
                                     (gx#core-module-export->import__%
                                      _g158464158466_
                                      '#f
                                      _dphi158463_))
                                   (##unchecked-structure-ref
                                    _ctx158458_
                                    '9
                                    gx#module-context::t
                                    '#f)))
                             _r158461_)))))
                 (_import-submodule158161_
                  (lambda (_hd158425_ _K158426_ _rest158427_ _r158428_)
                    (let* ((_e158429158436_ _hd158425_)
                           (_E158431158440_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e158429158436_)))
                           (_E158430158454_
                            (lambda ()
                              (if (gx#stx-pair? _e158429158436_)
                                  (let ((_e158432158444_
                                         (gx#syntax-e _e158429158436_)))
                                    (let ((_hd158433158447_
                                           (##car _e158432158444_))
                                          (_tl158434158449_
                                           (##cdr _e158432158444_)))
                                      (let ((_spath158452_ _tl158434158449_))
                                        (if '#t
                                            (_import1158160_
                                             (_import-spec-source158164_
                                              _spath158452_)
                                             _K158426_
                                             _rest158427_
                                             _r158428_)
                                            (_E158431158440_)))))
                                  (_E158431158440_)))))
                      (_E158430158454_))))
                 (_import-runtime158162_
                  (lambda (_hd158392_ _K158393_ _rest158394_ _r158395_)
                    (let* ((_e158396158403_ _hd158392_)
                           (_E158398158407_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e158396158403_)))
                           (_E158397158421_
                            (lambda ()
                              (if (gx#stx-pair? _e158396158403_)
                                  (let ((_e158399158411_
                                         (gx#syntax-e _e158396158403_)))
                                    (let ((_hd158400158414_
                                           (##car _e158399158411_))
                                          (_tl158401158416_
                                           (##cdr _e158399158411_)))
                                      (let ((_spath158419_ _tl158401158416_))
                                        (if '#t
                                            (_K158393_
                                             _rest158394_
                                             (cons (_import-spec-source158164_
                                                    _spath158419_)
                                                   _r158395_))
                                            (_E158398158407_)))))
                                  (_E158398158407_)))))
                      (_E158397158421_))))
                 (_import-spec158163_
                  (lambda (_hd158231_ _K158232_ _rest158233_ _r158234_)
                    (let* ((_e158235158252_ _hd158231_)
                           (_E158244158256_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e158235158252_)))
                           (_E158237158366_
                            (lambda ()
                              (if (gx#stx-pair? _e158235158252_)
                                  (let ((_e158245158260_
                                         (gx#syntax-e _e158235158252_)))
                                    (let ((_hd158246158263_
                                           (##car _e158245158260_))
                                          (_tl158247158265_
                                           (##cdr _e158245158260_)))
                                      (if (gx#stx-pair? _tl158247158265_)
                                          (let ((_e158248158268_
                                                 (gx#syntax-e
                                                  _tl158247158265_)))
                                            (let ((_hd158249158271_
                                                   (##car _e158248158268_))
                                                  (_tl158250158273_
                                                   (##cdr _e158248158268_)))
                                              (let* ((_path158276_
                                                      _hd158249158271_)
                                                     (_specs158278_
                                                      _tl158250158273_))
                                                (if '#t
                                                    (let ((_src-ctx158280_
                                                           (_import-spec-source158164_
                                                            _path158276_))
                                                          (_exports158281_
                                                           (make-table))
                                                          (_specs158282_
                                                           (gx#syntax->list
                                                            _specs158278_)))
                                                      (for-each
                                                       (lambda (_out158284_)
                                                         (table-set!
                                                          _exports158281_
                                                          (cons (##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _out158284_
                         '3
                         gx#module-export::t
                         '#f)
                        (##unchecked-structure-ref
                         _out158284_
                         '4
                         gx#module-export::t
                         '#f))
                  _out158284_))
               (##unchecked-structure-ref
                _src-ctx158280_
                '9
                gx#module-context::t
                '#f))
              (_K158232_
               _rest158233_
               (foldl1 (lambda (_spec158286_ _r158287_)
                         (let* ((_e158288158304_ _spec158286_)
                                (_E158290158308_
                                 (lambda ()
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid syntax-case clause"
                                    _e158288158304_)))
                                (_E158289158362_
                                 (lambda ()
                                   (if (gx#stx-pair? _e158288158304_)
                                       (let ((_e158291158312_
                                              (gx#syntax-e _e158288158304_)))
                                         (let ((_hd158292158315_
                                                (##car _e158291158312_))
                                               (_tl158293158317_
                                                (##cdr _e158291158312_)))
                                           (let ((_phi158320_
                                                  _hd158292158315_))
                                             (if (gx#stx-pair?
                                                  _tl158293158317_)
                                                 (let ((_e158294158322_
                                                        (gx#syntax-e
                                                         _tl158293158317_)))
                                                   (let ((_hd158295158325_
                                                          (##car _e158294158322_))
                                                         (_tl158296158327_
                                                          (##cdr _e158294158322_)))
                                                     (let ((_name158330_
                                                            _hd158295158325_))
                                                       (if (gx#stx-pair?
                                                            _tl158296158327_)
                                                           (let ((_e158297158332_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl158296158327_)))
                     (let ((_hd158298158335_ (##car _e158297158332_))
                           (_tl158299158337_ (##cdr _e158297158332_)))
                       (let ((_src-phi158340_ _hd158298158335_))
                         (if (gx#stx-pair? _tl158299158337_)
                             (let ((_e158300158342_
                                    (gx#syntax-e _tl158299158337_)))
                               (let ((_hd158301158345_ (##car _e158300158342_))
                                     (_tl158302158347_
                                      (##cdr _e158300158342_)))
                                 (let ((_src-name158350_ _hd158301158345_))
                                   (if (gx#stx-null? _tl158302158347_)
                                       (if (and (gx#stx-fixnum?
                                                 _src-phi158340_)
                                                (gx#identifier?
                                                 _src-name158350_)
                                                (gx#stx-fixnum? _phi158320_)
                                                (gx#identifier? _name158330_))
                                           (let ((_src-phi158352_
                                                  (gx#stx-e _src-phi158340_))
                                                 (_src-name158353_
                                                  (gx#core-identifier-key
                                                   _src-name158350_))
                                                 (_phi158354_
                                                  (gx#stx-e _phi158320_))
                                                 (_name158355_
                                                  (gx#core-identifier-key
                                                   _name158330_)))
                                             (let ((_$e158357_
                                                    (table-ref
                                                     _exports158281_
                                                     (cons _src-phi158352_
                                                           _src-name158353_)
                                                     '#f)))
                                               (if _$e158357_
                                                   ((lambda (_out158360_)
                                                      (cons (gx#core-module-export->import__%
                                                             _out158360_
                                                             _name158355_
                                                             (fx- _phi158354_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _src-phi158352_))
                    _r158287_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _$e158357_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; no matching export"
                                                    _stx158156_
                                                    _hd158231_))))
                                           (_E158290158308_))
                                       (_E158290158308_)))))
                             (_E158290158308_)))))
                   (_E158290158308_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E158290158308_)))))
                                       (_E158290158308_)))))
                           (_E158289158362_)))
                       _r158234_
                       _specs158282_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E158244158256_)))))
                                          (_E158244158256_))))
                                  (_E158244158256_))))
                           (_E158236158388_
                            (lambda ()
                              (if (gx#stx-pair? _e158235158252_)
                                  (let ((_e158238158370_
                                         (gx#syntax-e _e158235158252_)))
                                    (let ((_hd158239158373_
                                           (##car _e158238158370_))
                                          (_tl158240158375_
                                           (##cdr _e158238158370_)))
                                      (if (gx#stx-pair? _tl158240158375_)
                                          (let ((_e158241158378_
                                                 (gx#syntax-e
                                                  _tl158240158375_)))
                                            (let ((_hd158242158381_
                                                   (##car _e158241158378_))
                                                  (_tl158243158383_
                                                   (##cdr _e158241158378_)))
                                              (let ((_path158386_
                                                     _hd158242158381_))
                                                (if (gx#stx-null?
                                                     _tl158243158383_)
                                                    (if '#t
                                                        (_K158232_
                                                         _rest158233_
                                                         (cons (_import-spec-source158164_
                                                                _path158386_)
                                                               _r158234_))
                                                        (_E158237158366_))
                                                    (_E158237158366_)))))
                                          (_E158237158366_))))
                                  (_E158237158366_)))))
                      (_E158236158388_))))
                 (_import-spec-source158164_
                  (lambda (_spath158229_)
                    (gx#core-import-nested-module _spath158229_ _stx158156_)))
                 (_import!158165_
                  (lambda (_rbody158178_)
                    (letrec* ((_current-ctx158180_
                               (gx#current-expander-context))
                              (_deps158181_ (make-table 'test: eq?))
                              (_bind!158182_
                               (lambda (_hd158227_)
                                 (gx#core-bind-import!__1
                                  _hd158227_
                                  _current-ctx158180_))))
                      (let _lp158184_ ((_rest158186_ _rbody158178_)
                                       (_body158187_ '()))
                        (let* ((_rest158188158196_ _rest158186_)
                               (_else158190158206_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _current-ctx158180_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _current-ctx158180_
                                       (foldl1 cons
                                               (##unchecked-structure-ref
                                                _current-ctx158180_
                                                '8
                                                gx#module-context::t
                                                '#f)
                                               _body158187_)
                                       '8
                                       gx#module-context::t
                                       '#f)
                                      '#!void)
                                  (table-for-each
                                   (lambda (_ctx158204_ _g165502_)
                                     (gx#eval-module _ctx158204_))
                                   _deps158181_)
                                  _body158187_))
                               (_K158192158215_
                                (lambda (_rest158209_ _hd158210_)
                                  (if (##structure-direct-instance-of?
                                       _hd158210_
                                       'gx#module-import::t)
                                      (begin
                                        (_bind!158182_ _hd158210_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _hd158210_
                                                   '3
                                                   gx#module-import::t
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _hd158210_
                                                            '1
                                                            gx#module-import::t
                                                            '#f)
                                                           '3
                                                           gx#module-export::t
                                                           '#f)))
                                            (table-set!
                                             _deps158181_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _hd158210_
                                               '1
                                               gx#module-import::t
                                               '#f)
                                              '1
                                              gx#module-export::t
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _hd158210_
                                           'gx#import-set::t)
                                          (begin
                                            (for-each
                                             _bind!158182_
                                             (##unchecked-structure-ref
                                              _hd158210_
                                              '3
                                              gx#import-set::t
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _hd158210_
                                                  '2
                                                  gx#import-set::t
                                                  '#f))
                                                (table-set!
                                                 _deps158181_
                                                 (##unchecked-structure-ref
                                                  _hd158210_
                                                  '1
                                                  gx#import-set::t
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_$e158212_
                                                 (##structure-instance-of?
                                                  _hd158210_
                                                  'gx#module-context::t)))
                                            (if _$e158212_
                                                _$e158212_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _stx158156_
                                                 _hd158210_)))))
                                  (_lp158184_
                                   _rest158209_
                                   (cons _hd158210_ _body158187_)))))
                          (if (##pair? _rest158188158196_)
                              (let ((_hd158193158218_
                                     (##car _rest158188158196_))
                                    (_tl158194158220_
                                     (##cdr _rest158188158196_)))
                                (let* ((_hd158223_ _hd158193158218_)
                                       (_rest158225_ _tl158194158220_))
                                  (_K158192158215_ _rest158225_ _hd158223_)))
                              (_else158190158206_)))))))
                 (_expanded-import?158166_
                  (lambda (_e158170_)
                    (let ((_$e158172_
                           (##structure-direct-instance-of?
                            _e158170_
                            'gx#import-set::t)))
                      (if _$e158172_
                          _$e158172_
                          (let ((_$e158175_
                                 (##structure-direct-instance-of?
                                  _e158170_
                                  'gx#module-import::t)))
                            (if _$e158175_
                                _$e158175_
                                (##structure-instance-of?
                                 _e158170_
                                 'gx#module-context::t))))))))
          (let ((_rbody158168_
                 (gx#core-expand-import/export
                  _stx158156_
                  _expanded-import?158166_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _expand1158159_)))
            (if _internal-expand?158157_
                (reverse _rbody158168_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_import!158165_ _rbody158168_))
                 (gx#stx-source _stx158156_)))))))
    (define gx#core-expand-import%__0
      (lambda (_stx158482_)
        (let ((_internal-expand?158484_ '#f))
          (gx#core-expand-import%__% _stx158482_ _internal-expand?158484_))))
    (define gx#core-expand-import%
      (lambda _g165504_
        (let ((_g165503_ (##length _g165504_)))
          (cond ((##fx= _g165503_ 1)
                 (apply (lambda (_stx158482_)
                          (gx#core-expand-import%__0 _stx158482_))
                        _g165504_))
                ((##fx= _g165503_ 2)
                 (apply (lambda (_stx158486_ _internal-expand?158487_)
                          (gx#core-expand-import%__%
                           _stx158486_
                           _internal-expand?158487_))
                        _g165504_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g165504_))))))
    (define gx#core-import-nested-module
      (lambda (_spath158083_ _where158084_)
        (let* ((_e158085158092_ _spath158083_)
               (_E158087158096_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e158085158092_)))
               (_E158086158151_
                (lambda ()
                  (if (gx#stx-pair? _e158085158092_)
                      (let ((_e158088158100_ (gx#syntax-e _e158085158092_)))
                        (let ((_hd158089158103_ (##car _e158088158100_))
                              (_tl158090158105_ (##cdr _e158088158100_)))
                          (let* ((_origin158108_ _hd158089158103_)
                                 (_sub158110_ _tl158090158105_))
                            (if '#t
                                (let ((_origin-ctx158112_
                                       (if (gx#stx-false? _origin158108_)
                                           (gx#current-expander-context)
                                           (gx#import-module__0
                                            _origin158108_))))
                                  (let _lp158114_ ((_rest158116_ _sub158110_)
                                                   (_ctx158117_
                                                    _origin-ctx158112_))
                                    (let* ((_e158118158125_ _rest158116_)
                                           (_E158120158129_
                                            (lambda () _ctx158117_))
                                           (_E158119158147_
                                            (lambda ()
                                              (if (gx#stx-pair?
                                                   _e158118158125_)
                                                  (let ((_e158121158133_
                                                         (gx#syntax-e
                                                          _e158118158125_)))
                                                    (let ((_hd158122158136_
                                                           (##car _e158121158133_))
                                                          (_tl158123158138_
                                                           (##cdr _e158121158133_)))
                                                      (let* ((_id158141_
                                                              _hd158122158136_)
                                                             (_rest158143_
                                                              _tl158123158138_))
                                                        (if '#t
                                                            (let ((_bind158145_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#resolve-identifier__%
                            _id158141_
                            '0
                            _ctx158117_)))
                      (if (and (##structure-direct-instance-of?
                                _bind158145_
                                'gx#syntax-binding::t)
                               (##structure-instance-of?
                                (##unchecked-structure-ref
                                 _bind158145_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                'gx#module-context::t))
                          '#!void
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; not bound as module"
                           _where158084_
                           _spath158083_
                           _id158141_))
                      (_lp158114_
                       _rest158143_
                       (##unchecked-structure-ref
                        _bind158145_
                        '4
                        gx#syntax-binding::t
                        '#f)))
                    (_E158120158129_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E158120158129_)))))
                                      (_E158119158147_))))
                                (_E158087158096_)))))
                      (_E158087158096_)))))
          (_E158086158151_))))
    (define gx#core-expand-import-source
      (lambda (_hd158081_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _hd158081_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_stx157589_ _internal-expand?157590_)
        (letrec* ((_make-export__165433165434_
                   (lambda (_bind158029_ _phi158030_ _ctx158031_ _name158032_)
                     (let* ((_key158034_
                             (##unchecked-structure-ref
                              _bind158029_
                              '2
                              gx#binding::t
                              '#f))
                            (_export-key158036_
                             (if _name158032_
                                 (gx#core-identifier-key _name158032_)
                                 _key158034_)))
                       (##structure
                        gx#module-export::t
                        _ctx158031_
                        _key158034_
                        _phi158030_
                        _export-key158036_
                        (let ((_$e158039_
                               (##structure-instance-of?
                                _bind158029_
                                'gx#extern-binding::t)))
                          (if _$e158039_
                              _$e158039_
                              (##structure-direct-instance-of?
                               _bind158029_
                               'gx#import-binding::t)))))))
                  (_make-export__0__165435165438_
                   (lambda (_bind158045_)
                     (let* ((_phi158047_ (gx#current-export-expander-phi))
                            (_ctx158049_ (gx#current-expander-context))
                            (_name158051_ '#f))
                       (_make-export__165433165434_
                        _bind158045_
                        _phi158047_
                        _ctx158049_
                        _name158051_))))
                  (_make-export__1__165436165439_
                   (lambda (_bind158053_ _phi158054_)
                     (let* ((_ctx158056_ (gx#current-expander-context))
                            (_name158058_ '#f))
                       (_make-export__165433165434_
                        _bind158053_
                        _phi158054_
                        _ctx158056_
                        _name158058_))))
                  (_make-export__2__165437165440_
                   (lambda (_bind158060_ _phi158061_ _ctx158062_)
                     (let ((_name158064_ '#f))
                       (_make-export__165433165434_
                        _bind158060_
                        _phi158061_
                        _ctx158062_
                        _name158064_))))
                  (_make-export157592_
                   (lambda _g165506_
                     (let ((_g165505_ (##length _g165506_)))
                       (cond ((##fx= _g165505_ 1)
                              (apply (lambda (_bind158045_)
                                       (_make-export__0__165435165438_
                                        _bind158045_))
                                     _g165506_))
                             ((##fx= _g165505_ 2)
                              (apply (lambda (_bind158053_ _phi158054_)
                                       (_make-export__1__165436165439_
                                        _bind158053_
                                        _phi158054_))
                                     _g165506_))
                             ((##fx= _g165505_ 3)
                              (apply (lambda (_bind158060_
                                              _phi158061_
                                              _ctx158062_)
                                       (_make-export__2__165437165440_
                                        _bind158060_
                                        _phi158061_
                                        _ctx158062_))
                                     _g165506_))
                             ((##fx= _g165505_ 4)
                              (apply (lambda (_bind158066_
                                              _phi158067_
                                              _ctx158068_
                                              _name158069_)
                                       (_make-export__165433165434_
                                        _bind158066_
                                        _phi158067_
                                        _ctx158068_
                                        _name158069_))
                                     _g165506_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g165506_))))))
                  (_expand1157593_
                   (lambda (_hd157742_ _K157743_ _rest157744_ _r157745_)
                     (let* ((_e157746157778_ _hd157742_)
                            (_E157773157782_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _stx157589_
                                _hd157742_)))
                            (_E157763157861_
                             (lambda ()
                               (if (gx#stx-pair? _e157746157778_)
                                   (let ((_e157774157786_
                                          (gx#syntax-e _e157746157778_)))
                                     (let ((_hd157775157789_
                                            (##car _e157774157786_))
                                           (_tl157776157791_
                                            (##cdr _e157774157786_)))
                                       (if (eq? (gx#stx-e _hd157775157789_)
                                                'import:)
                                           (let ((_in157794_ _tl157776157791_))
                                             (if (gx#stx-list? _in157794_)
                                                 (let _lp157796_ ((_in-rest157798_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _in157794_)
                          (_r157799_ _r157745_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_e157800157807_
                                                           _in-rest157798_)
                                                          (_E157802157811_
                                                           (lambda ()
                                                             (_K157743_
                                                              _rest157744_
                                                              _r157799_)))
                                                          (_E157801157857_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _e157800157807_)
                         (let ((_e157803157815_ (gx#syntax-e _e157800157807_)))
                           (let ((_hd157804157818_ (##car _e157803157815_))
                                 (_tl157805157820_ (##cdr _e157803157815_)))
                             (let* ((_hd157823_ _hd157804157818_)
                                    (_in-rest157825_ _tl157805157820_))
                               (if '#t
                                   (let ((_src157855_
                                          (if (gx#core-bound-module?
                                               _hd157823_)
                                              (gx#syntax-local-e__0 _hd157823_)
                                              (if (gx#core-library-module-path?
                                                   _hd157823_)
                                                  (gx#import-module__0
                                                   (gx#core-resolve-library-module-path
                                                    _hd157823_))
                                                  (if (gx#core-library-relative-module-path?
                                                       _hd157823_)
                                                      (gx#import-module__0
                                                       (gx#core-resolve-library-relative-module-path
                                                        _hd157823_))
                                                      (if (gx#stx-string?
                                                           _hd157823_)
                                                          (gx#import-module__0
                                                           (gx#core-resolve-module-path__%
                                                            _hd157823_
                                                            (gx#stx-source
                                                             _stx157589_)))
                                                          (let* ((_e157826157833_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd157823_)
                         (_E157828157837_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; illegal re-export"
                             _stx157589_
                             _hd157823_)))
                         (_E157827157851_
                          (lambda ()
                            (if (gx#stx-pair? _e157826157833_)
                                (let ((_e157829157841_
                                       (gx#syntax-e _e157826157833_)))
                                  (let ((_hd157830157844_
                                         (##car _e157829157841_))
                                        (_tl157831157846_
                                         (##cdr _e157829157841_)))
                                    (if (eq? (gx#stx-e _hd157830157844_) 'in:)
                                        (let ((_spath157849_ _tl157831157846_))
                                          (if '#t
                                              (gx#core-import-nested-module
                                               _spath157849_
                                               _stx157589_)
                                              (_E157828157837_)))
                                        (_E157828157837_))))
                                (_E157828157837_)))))
                    (_E157827157851_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_lp157796_
                                      _in-rest157825_
                                      (_export-imports157594_
                                       _src157855_
                                       _r157799_)))
                                   (_E157802157811_)))))
                         (_E157802157811_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E157801157857_)))
                                                 (_E157773157782_)))
                                           (_E157773157782_))))
                                   (_E157773157782_))))
                            (_E157750157900_
                             (lambda ()
                               (if (gx#stx-pair? _e157746157778_)
                                   (let ((_e157764157865_
                                          (gx#syntax-e _e157746157778_)))
                                     (let ((_hd157765157868_
                                            (##car _e157764157865_))
                                           (_tl157766157870_
                                            (##cdr _e157764157865_)))
                                       (if (eq? (gx#stx-e _hd157765157868_)
                                                'rename:)
                                           (if (gx#stx-pair? _tl157766157870_)
                                               (let ((_e157767157873_
                                                      (gx#syntax-e
                                                       _tl157766157870_)))
                                                 (let ((_hd157768157876_
                                                        (##car _e157767157873_))
                                                       (_tl157769157878_
                                                        (##cdr _e157767157873_)))
                                                   (let ((_id157881_
                                                          _hd157768157876_))
                                                     (if (gx#stx-pair?
                                                          _tl157769157878_)
                                                         (let ((_e157770157883_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl157769157878_)))
                   (let ((_hd157771157886_ (##car _e157770157883_))
                         (_tl157772157888_ (##cdr _e157770157883_)))
                     (let ((_name157891_ _hd157771157886_))
                       (if (gx#stx-null? _tl157772157888_)
                           (if '#t
                               (let* ((_phi157893_
                                       (gx#current-export-expander-phi))
                                      (_$e157895_
                                       (gx#core-resolve-identifier__1
                                        _id157881_
                                        _phi157893_)))
                                 (if _$e157895_
                                     ((lambda (_bind157898_)
                                        (_K157743_
                                         _rest157744_
                                         (cons (_make-export__165433165434_
                                                _bind157898_
                                                _phi157893_
                                                (gx#current-expander-context)
                                                _name157891_)
                                               _r157745_)))
                                      _$e157895_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Reference to unbound identifier"
                                      _stx157589_
                                      _hd157742_
                                      _id157881_)))
                               (_E157763157861_))
                           (_E157763157861_)))))
                 (_E157763157861_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E157763157861_))
                                           (_E157763157861_))))
                                   (_E157763157861_))))
                            (_E157749157949_
                             (lambda ()
                               (if (gx#stx-pair? _e157746157778_)
                                   (let ((_e157751157904_
                                          (gx#syntax-e _e157746157778_)))
                                     (let ((_hd157752157907_
                                            (##car _e157751157904_))
                                           (_tl157753157909_
                                            (##cdr _e157751157904_)))
                                       (if (eq? (gx#stx-e _hd157752157907_)
                                                'spec:)
                                           (if (gx#stx-pair? _tl157753157909_)
                                               (let ((_e157754157912_
                                                      (gx#syntax-e
                                                       _tl157753157909_)))
                                                 (let ((_hd157755157915_
                                                        (##car _e157754157912_))
                                                       (_tl157756157917_
                                                        (##cdr _e157754157912_)))
                                                   (let ((_phi157920_
                                                          _hd157755157915_))
                                                     (if (gx#stx-pair?
                                                          _tl157756157917_)
                                                         (let ((_e157757157922_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl157756157917_)))
                   (let ((_hd157758157925_ (##car _e157757157922_))
                         (_tl157759157927_ (##cdr _e157757157922_)))
                     (let ((_id157930_ _hd157758157925_))
                       (if (gx#stx-pair? _tl157759157927_)
                           (let ((_e157760157932_
                                  (gx#syntax-e _tl157759157927_)))
                             (let ((_hd157761157935_ (##car _e157760157932_))
                                   (_tl157762157937_ (##cdr _e157760157932_)))
                               (let ((_name157940_ _hd157761157935_))
                                 (if (gx#stx-null? _tl157762157937_)
                                     (if (and (gx#stx-fixnum? _phi157920_)
                                              (gx#identifier? _id157930_)
                                              (gx#identifier? _name157940_))
                                         (let* ((_phi157942_
                                                 (gx#stx-e _phi157920_))
                                                (_$e157944_
                                                 (gx#core-resolve-identifier__1
                                                  _id157930_
                                                  _phi157942_)))
                                           (if _$e157944_
                                               ((lambda (_bind157947_)
                                                  (_K157743_
                                                   _rest157744_
                                                   (cons (_make-export__165433165434_
                                                          _bind157947_
                                                          _phi157942_
                                                          (gx#current-expander-context)
                                                          _name157940_)
                                                         _r157745_)))
                                                _$e157944_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _stx157589_
                                                _hd157742_
                                                _id157930_)))
                                         (_E157750157900_))
                                     (_E157750157900_)))))
                           (_E157750157900_)))))
                 (_E157750157900_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E157750157900_))
                                           (_E157750157900_))))
                                   (_E157750157900_))))
                            (_E157748157960_
                             (lambda ()
                               (let ((_id157953_ _e157746157778_))
                                 (if (gx#identifier? _id157953_)
                                     (let ((_$e157955_
                                            (gx#core-resolve-identifier__1
                                             _id157953_
                                             (gx#current-export-expander-phi))))
                                       (if _$e157955_
                                           ((lambda (_bind157958_)
                                              (_K157743_
                                               _rest157744_
                                               (cons (_make-export__0__165435165438_
                                                      _bind157958_)
                                                     _r157745_)))
                                            _$e157955_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _stx157589_
                                            _hd157742_)))
                                     (_E157749157949_)))))
                            (_E157747158024_
                             (lambda ()
                               (if (eq? (gx#stx-e _e157746157778_) '#t)
                                   (if '#t
                                       (let* ((_current-ctx157964_
                                               (gx#current-expander-context))
                                              (_current-phi157966_
                                               (gx#current-export-expander-phi))
                                              (_phi-ctx157968_
                                               (gx#core-context-shift
                                                _current-ctx157964_
                                                _current-phi157966_))
                                              (_phi-bind157970_
                                               (table->list
                                                (##unchecked-structure-ref
                                                 _phi-ctx157968_
                                                 '2
                                                 gx#expander-context::t
                                                 '#f))))
                                         (let _lp157973_ ((_bind-rest157975_
                                                           _phi-bind157970_)
                                                          (_set157976_ '()))
                                           (let* ((_bind-rest157977157987_
                                                   _bind-rest157975_)
                                                  (_else157979157995_
                                                   (lambda ()
                                                     (_K157743_
                                                      _rest157744_
                                                      (cons (##structure
                                                             gx#export-set::t
                                                             '#f
                                                             _current-phi157966_
                                                             _set157976_)
                                                            _r157745_))))
                                                  (_K157981158005_
                                                   (lambda (_bind-rest157998_
                                                            _bind157999_
                                                            _key158000_)
                                                     (if (or (##structure-direct-instance-of?
                                                              _bind157999_
                                                              'gx#import-binding::t)
                                                             (gx#private-feature-binding?
                                                              _bind157999_))
                                                         (_lp157973_
                                                          _bind-rest157998_
                                                          _set157976_)
                                                         (_lp157973_
                                                          _bind-rest157998_
                                                          (cons (_make-export__2__165437165440_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind157999_
                         _current-phi157966_
                         _current-ctx157964_)
                        _set157976_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _bind-rest157977157987_)
                                                 (let ((_hd157982158008_
                                                        (##car _bind-rest157977157987_))
                                                       (_tl157983158010_
                                                        (##cdr _bind-rest157977157987_)))
                                                   (if (##pair? _hd157982158008_)
                                                       (let ((_hd157984158013_
                                                              (##car _hd157982158008_))
                                                             (_tl157985158015_
                                                              (##cdr _hd157982158008_)))
                                                         (let* ((_key158018_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd157984158013_)
                        (_bind158020_ _tl157985158015_)
                        (_bind-rest158022_ _tl157983158010_))
                   (_K157981158005_
                    _bind-rest158022_
                    _bind158020_
                    _key158018_)))
               (_else157979157995_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_else157979157995_)))))
                                       (_E157748157960_))
                                   (_E157748157960_)))))
                       (_E157747158024_))))
                  (_export-imports157594_
                   (lambda (_src157618_ _r157619_)
                     (letrec* ((_current-ctx157621_
                                (gx#current-expander-context))
                               (_current-phi157622_
                                (gx#current-export-expander-phi))
                               (_import->export157623_
                                (lambda (_in157704_)
                                  (let* ((_in157705157713_ _in157704_)
                                         (_E157707157717_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _in157705157713_)))
                                         (_K157708157724_
                                          (lambda (_phi157720_
                                                   _key157721_
                                                   _out157722_)
                                            (##structure
                                             gx#module-export::t
                                             _current-ctx157621_
                                             _key157721_
                                             _phi157720_
                                             _key157721_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _in157705157713_
                                         'gx#module-import::t)
                                        (let* ((_e157709157727_
                                                (##unchecked-structure-ref
                                                 _in157705157713_
                                                 '1
                                                 gx#module-import::t
                                                 '#f))
                                               (_out157730_ _e157709157727_)
                                               (_e157710157732_
                                                (##unchecked-structure-ref
                                                 _in157705157713_
                                                 '2
                                                 gx#module-import::t
                                                 '#f))
                                               (_key157735_ _e157710157732_)
                                               (_e157711157737_
                                                (##unchecked-structure-ref
                                                 _in157705157713_
                                                 '3
                                                 gx#module-import::t
                                                 '#f))
                                               (_phi157740_ _e157711157737_))
                                          (_K157708157724_
                                           _phi157740_
                                           _key157735_
                                           _out157730_))
                                        (_E157707157717_)))))
                               (_fold-e157624_
                                (lambda (_in157626_ _r157627_)
                                  (let* ((_in157628157642_ _in157626_)
                                         (_else157631157650_
                                          (lambda () _r157627_)))
                                    (let ((_K157637157686_
                                           (lambda (_phi157682_
                                                    _key157683_
                                                    _out157684_)
                                             (if (and (fx= _phi157682_
                                                           _current-phi157622_)
                                                      (eq? _src157618_
                                                           (##unchecked-structure-ref
                                                            _out157684_
                                                            '1
                                                            gx#module-export::t
                                                            '#f)))
                                                 (cons (_import->export157623_
                                                        _in157626_)
                                                       _r157627_)
                                                 _r157627_)))
                                          (_K157633157661_
                                           (lambda (_imports157654_
                                                    _phi157655_
                                                    _ctx157656_)
                                             (if (and (fx= _phi157655_
                                                           _current-phi157622_)
                                                      (eq? _src157618_
                                                           _ctx157656_))
                                                 (foldl1 (lambda (_in157658_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r157659_)
                   (cons (_import->export157623_ _in157658_) _r157659_))
                 _r157627_
                 _imports157654_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _r157627_))))
                                      (let ((_try-match157630157679_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _in157628157642_
                                                    'gx#import-set::t)
                                                   (let* ((_e157634157664_
                                                           (##unchecked-structure-ref
                                                            _in157628157642_
                                                            '1
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e157635157669_
                                                           (##unchecked-structure-ref
                                                            _in157628157642_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e157636157674_
                                                           (##unchecked-structure-ref
                                                            _in157628157642_
                                                            '3
                                                            gx#import-set::t
                                                            '#f)))
                                                     (let ((_ctx157667_
                                                            _e157634157664_)
                                                           (_phi157672_
                                                            _e157635157669_)
                                                           (_imports157677_
                                                            _e157636157674_))
                                                       (_K157633157661_
                                                        _imports157677_
                                                        _phi157672_
                                                        _ctx157667_)))
                                                   (_else157631157650_)))))
                                        (if (##structure-direct-instance-of?
                                             _in157628157642_
                                             'gx#module-import::t)
                                            (let* ((_e157638157689_
                                                    (##unchecked-structure-ref
                                                     _in157628157642_
                                                     '1
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e157639157694_
                                                    (##unchecked-structure-ref
                                                     _in157628157642_
                                                     '2
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e157640157699_
                                                    (##unchecked-structure-ref
                                                     _in157628157642_
                                                     '3
                                                     gx#module-import::t
                                                     '#f)))
                                              (let ((_out157692_
                                                     _e157638157689_)
                                                    (_key157697_
                                                     _e157639157694_)
                                                    (_phi157702_
                                                     _e157640157699_))
                                                (_K157637157686_
                                                 _phi157702_
                                                 _key157697_
                                                 _out157692_)))
                                            (_try-match157630157679_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _src157618_
                              _current-phi157622_
                              (foldl1 _fold-e157624_
                                      '()
                                      (##unchecked-structure-ref
                                       _current-ctx157621_
                                       '8
                                       gx#module-context::t
                                       '#f)))
                             _r157619_))))
                  (_export!157595_
                   (lambda (_rbody157608_)
                     (letrec* ((_current-ctx157610_
                                (gx#current-expander-context))
                               (_fold-e157611_
                                (lambda (_out157615_ _r157616_)
                                  (if (##structure-direct-instance-of?
                                       _out157615_
                                       'gx#module-export::t)
                                      (cons _out157615_ _r157616_)
                                      (if (##structure-direct-instance-of?
                                           _out157615_
                                           'gx#export-set::t)
                                          (foldl1 cons
                                                  _r157616_
                                                  (##unchecked-structure-ref
                                                   _out157615_
                                                   '3
                                                   gx#export-set::t
                                                   '#f))
                                          _r157616_)))))
                       (let ((_body157613_ (reverse _rbody157608_)))
                         (##unchecked-structure-set!
                          _current-ctx157610_
                          (foldl1 _fold-e157611_
                                  (##unchecked-structure-ref
                                   _current-ctx157610_
                                   '9
                                   gx#module-context::t
                                   '#f)
                                  _body157613_)
                          '9
                          gx#module-context::t
                          '#f)
                         _body157613_))))
                  (_expanded-export?157596_
                   (lambda (_e157603_)
                     (let ((_$e157605_
                            (##structure-direct-instance-of?
                             _e157603_
                             'gx#module-export::t)))
                       (if _$e157605_
                           _$e157605_
                           (##structure-direct-instance-of?
                            _e157603_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _internal-expand?157590_)
              (let ((_rbody157601_
                     (gx#core-expand-import/export
                      _stx157589_
                      _expanded-export?157596_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _expand1157593_)))
                (if _internal-expand?157590_
                    (reverse _rbody157601_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons '%#export (_export!157595_ _rbody157601_))
                     (gx#stx-source _stx157589_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _stx157589_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _stx157589_))))))
    (define gx#core-expand-export%__0
      (lambda (_stx158074_)
        (let ((_internal-expand?158076_ '#f))
          (gx#core-expand-export%__% _stx158074_ _internal-expand?158076_))))
    (define gx#core-expand-export%
      (lambda _g165508_
        (let ((_g165507_ (##length _g165508_)))
          (cond ((##fx= _g165507_ 1)
                 (apply (lambda (_stx158074_)
                          (gx#core-expand-export%__0 _stx158074_))
                        _g165508_))
                ((##fx= _g165507_ 2)
                 (apply (lambda (_stx158078_ _internal-expand?158079_)
                          (gx#core-expand-export%__%
                           _stx158078_
                           _internal-expand?158079_))
                        _g165508_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g165508_))))))
    (define gx#core-expand-export-source
      (lambda (_hd157586_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _hd157586_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_stx157556_)
        (let* ((_e157557157564_ _stx157556_)
               (_E157559157568_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e157557157564_)))
               (_E157558157582_
                (lambda ()
                  (if (gx#stx-pair? _e157557157564_)
                      (let ((_e157560157572_ (gx#syntax-e _e157557157564_)))
                        (let ((_hd157561157575_ (##car _e157560157572_))
                              (_tl157562157577_ (##cdr _e157560157572_)))
                          (let ((_body157580_ _tl157562157577_))
                            (if (gx#identifier-list? _body157580_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _body157580_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _body157580_))
                                   (gx#stx-source _stx157556_)))
                                (_E157559157568_)))))
                      (_E157559157568_)))))
          (_E157558157582_))))
    (define gx#core-bind-feature!__%
      (lambda (_id157522_ _private?157523_ _phi157524_ _ctx157525_)
        (gx#core-bind-syntax!__%
         _id157522_
         ((if _private?157523_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _id157522_))
         _private?157523_
         _phi157524_
         _ctx157525_)))
    (define gx#core-bind-feature!__0
      (lambda (_id157530_)
        (let* ((_private?157532_ '#f)
               (_phi157534_ (gx#current-expander-phi))
               (_ctx157536_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id157530_
           _private?157532_
           _phi157534_
           _ctx157536_))))
    (define gx#core-bind-feature!__1
      (lambda (_id157538_ _private?157539_)
        (let* ((_phi157541_ (gx#current-expander-phi))
               (_ctx157543_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id157538_
           _private?157539_
           _phi157541_
           _ctx157543_))))
    (define gx#core-bind-feature!__2
      (lambda (_id157545_ _private?157546_ _phi157547_)
        (let ((_ctx157549_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id157545_
           _private?157546_
           _phi157547_
           _ctx157549_))))
    (define gx#core-bind-feature!
      (lambda _g165510_
        (let ((_g165509_ (##length _g165510_)))
          (cond ((##fx= _g165509_ 1)
                 (apply (lambda (_id157530_)
                          (gx#core-bind-feature!__0 _id157530_))
                        _g165510_))
                ((##fx= _g165509_ 2)
                 (apply (lambda (_id157538_ _private?157539_)
                          (gx#core-bind-feature!__1
                           _id157538_
                           _private?157539_))
                        _g165510_))
                ((##fx= _g165509_ 3)
                 (apply (lambda (_id157545_ _private?157546_ _phi157547_)
                          (gx#core-bind-feature!__2
                           _id157545_
                           _private?157546_
                           _phi157547_))
                        _g165510_))
                ((##fx= _g165509_ 4)
                 (apply (lambda (_id157551_
                                 _private?157552_
                                 _phi157553_
                                 _ctx157554_)
                          (gx#core-bind-feature!__%
                           _id157551_
                           _private?157552_
                           _phi157553_
                           _ctx157554_))
                        _g165510_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g165510_))))))))
