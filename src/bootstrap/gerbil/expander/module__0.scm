(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1707772766)
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
      (lambda _$args162621_
        (apply make-instance gx#module-import::t _$args162621_)))
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
      (lambda _$args162618_
        (apply make-instance gx#module-export::t _$args162618_)))
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
      (lambda _$args162615_
        (apply make-instance gx#import-set::t _$args162615_)))
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
      (lambda _$args162612_
        (apply make-instance gx#export-set::t _$args162612_)))
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
      (lambda _$args162609_
        (apply make-instance gx#import-expander::t _$args162609_)))
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
      (lambda _$args162606_
        (apply make-instance gx#export-expander::t _$args162606_)))
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
      (lambda _$args162603_
        (apply make-instance gx#import-export-expander::t _$args162603_)))
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
      (lambda (_path162600_ _fun162601_)
        (call-with-input-file
         (cons 'path: (cons _path162600_ gx#source-file-settings))
         _fun162601_)))
    (define gx#module-context:::init!
      (lambda (_self162594_ _id162595_ _super162596_ _ns162597_ _path162598_)
        (if (##fx< '11 (##structure-length _self162594_))
            (begin
              (##unchecked-structure-set!
               _self162594_
               _id162595_
               '1
               (##structure-type _self162594_)
               '#f)
              (##unchecked-structure-set!
               _self162594_
               (make-table 'test: eq?)
               '2
               (##structure-type _self162594_)
               '#f)
              (##unchecked-structure-set!
               _self162594_
               _super162596_
               '3
               (##structure-type _self162594_)
               '#f)
              (##unchecked-structure-set!
               _self162594_
               '#f
               '4
               (##structure-type _self162594_)
               '#f)
              (##unchecked-structure-set!
               _self162594_
               '#f
               '5
               (##structure-type _self162594_)
               '#f)
              (##unchecked-structure-set!
               _self162594_
               _ns162597_
               '6
               (##structure-type _self162594_)
               '#f)
              (##unchecked-structure-set!
               _self162594_
               _path162598_
               '7
               (##structure-type _self162594_)
               '#f)
              (##unchecked-structure-set!
               _self162594_
               '()
               '8
               (##structure-type _self162594_)
               '#f)
              (##unchecked-structure-set!
               _self162594_
               '()
               '9
               (##structure-type _self162594_)
               '#f)
              (##unchecked-structure-set!
               _self162594_
               '#f
               '10
               (##structure-type _self162594_)
               '#f)
              (##unchecked-structure-set!
               _self162594_
               '#f
               '11
               (##structure-type _self162594_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self162594_
                   '11
                   (##vector-length _self162594_)))))
    (bind-method! gx#module-context::t ':init! gx#module-context:::init! '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_self162438_ _ctx162439_ _root162440_)
        (let ((_super162448_
               (let ((_$e162442_ _root162440_))
                 (if _$e162442_
                     _$e162442_
                     (let ((_$e162445_ (gx#core-context-root__0)))
                       (if _$e162445_
                           _$e162445_
                           (let ((__obj167231
                                  (##structure gx#root-context::t '#f '#f)))
                             (let ((__constructor167232
                                    (direct-method-ref
                                     gx#root-context::t
                                     ':init!)))
                               (if __constructor167232
                                   (__constructor167232 __obj167231)
                                   (error '"missing constructor method implementation"
                                          'class:
                                          gx#root-context::t
                                          'method:
                                          ':init!)))
                             __obj167231)))))))
          (if _ctx162439_
              (let ((_id162451_
                     (##structure-ref
                      _ctx162439_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_path162452_
                     (##structure-ref _ctx162439_ '7 gx#module-context::t '#f))
                    (_in162453_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _ctx162439_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_e162454_
                     (make-promise (lambda () (gx#eval-module _ctx162439_)))))
                (if (##fx< '8 (##structure-length _self162438_))
                    (begin
                      (##unchecked-structure-set!
                       _self162438_
                       _id162451_
                       '1
                       (##structure-type _self162438_)
                       '#f)
                      (##unchecked-structure-set!
                       _self162438_
                       (make-table 'test: eq? 'size: (length _in162453_))
                       '2
                       (##structure-type _self162438_)
                       '#f)
                      (##unchecked-structure-set!
                       _self162438_
                       _super162448_
                       '3
                       (##structure-type _self162438_)
                       '#f)
                      (##unchecked-structure-set!
                       _self162438_
                       '#f
                       '4
                       (##structure-type _self162438_)
                       '#f)
                      (##unchecked-structure-set!
                       _self162438_
                       '#f
                       '5
                       (##structure-type _self162438_)
                       '#f)
                      (##unchecked-structure-set!
                       _self162438_
                       _path162452_
                       '6
                       (##structure-type _self162438_)
                       '#f)
                      (##unchecked-structure-set!
                       _self162438_
                       _in162453_
                       '7
                       (##structure-type _self162438_)
                       '#f)
                      (##unchecked-structure-set!
                       _self162438_
                       _e162454_
                       '8
                       (##structure-type _self162438_)
                       '#f))
                    (error '"struct-instance-init!: too many arguments for struct"
                           _self162438_
                           '8
                           (##vector-length _self162438_)))
                (for-each
                 (lambda (_g162455162457_)
                   (gx#core-bind-weak-import!__% _g162455162457_ _self162438_))
                 _in162453_))
              (if (##fx< '8 (##structure-length _self162438_))
                  (begin
                    (##unchecked-structure-set!
                     _self162438_
                     '#f
                     '1
                     (##structure-type _self162438_)
                     '#f)
                    (##unchecked-structure-set!
                     _self162438_
                     (make-table 'test: eq?)
                     '2
                     (##structure-type _self162438_)
                     '#f)
                    (##unchecked-structure-set!
                     _self162438_
                     _super162448_
                     '3
                     (##structure-type _self162438_)
                     '#f)
                    (##unchecked-structure-set!
                     _self162438_
                     '#f
                     '4
                     (##structure-type _self162438_)
                     '#f)
                    (##unchecked-structure-set!
                     _self162438_
                     '#f
                     '5
                     (##structure-type _self162438_)
                     '#f)
                    (##unchecked-structure-set!
                     _self162438_
                     '#f
                     '6
                     (##structure-type _self162438_)
                     '#f)
                    (##unchecked-structure-set!
                     _self162438_
                     '()
                     '7
                     (##structure-type _self162438_)
                     '#f)
                    (##unchecked-structure-set!
                     _self162438_
                     '#f
                     '8
                     (##structure-type _self162438_)
                     '#f))
                  (error '"struct-instance-init!: too many arguments for struct"
                         _self162438_
                         '8
                         (##vector-length _self162438_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_self162463_ _ctx162464_)
        (let ((_root162466_ '#f))
          (gx#prelude-context:::init!__%
           _self162463_
           _ctx162464_
           _root162466_))))
    (define gx#prelude-context:::init!
      (lambda _g167238_
        (let ((_g167237_ (##length _g167238_)))
          (cond ((##fx= _g167237_ 2)
                 (apply (lambda (_self162463_ _ctx162464_)
                          (gx#prelude-context:::init!__0
                           _self162463_
                           _ctx162464_))
                        _g167238_))
                ((##fx= _g167237_ 3)
                 (apply (lambda (_self162468_ _ctx162469_ _root162470_)
                          (gx#prelude-context:::init!__%
                           _self162468_
                           _ctx162469_
                           _root162470_))
                        _g167238_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g167238_))))))
    (bind-method! gx#prelude-context::t ':init! gx#prelude-context:::init! '#f)
    (define gx#import-export-expander-init!
      (lambda (_self162312_ _e162313_)
        (if (##fx< '3 (##structure-length _self162312_))
            (begin
              (##unchecked-structure-set!
               _self162312_
               _e162313_
               '1
               (##structure-type _self162312_)
               '#f)
              (##unchecked-structure-set!
               _self162312_
               (gx#current-expander-context)
               '2
               (##structure-type _self162312_)
               '#f)
              (##unchecked-structure-set!
               _self162312_
               (fx- (gx#current-expander-phi) '1)
               '3
               (##structure-type _self162312_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self162312_
                   '3
                   (##vector-length _self162312_)))))
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
      (lambda (_g161938161941_ _g161939161943_)
        (gx#core-apply-user-expander__%
         _g161938161941_
         _g161939161943_
         'apply-import-expander)))
    (bind-method!
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_g161809161812_ _g161810161814_)
        (gx#core-apply-user-expander__%
         _g161809161812_
         _g161810161814_
         'apply-export-expander)))
    (bind-method!
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_ctx161680_)
        (let* ((_path161682_
                (##structure-ref _ctx161680_ '7 gx#module-context::t '#f))
               (_path161684_
                (if (pair? _path161682_) (last _path161682_) _path161682_)))
          (if (string? _path161684_) _path161684_ '#f))))
    (define gx#import-module__%
      (lambda (_path161656_ _reload?161657_ _eval?161658_)
        (let ((_ctx161660_
               ((gx#current-expander-module-import)
                _path161656_
                _reload?161657_)))
          (if (and _ctx161660_ _eval?161658_)
              (gx#eval-module _ctx161660_)
              '#!void)
          _ctx161660_)))
    (define gx#import-module__0
      (lambda (_path161665_)
        (let* ((_reload?161667_ '#f) (_eval?161669_ '#f))
          (gx#import-module__% _path161665_ _reload?161667_ _eval?161669_))))
    (define gx#import-module__1
      (lambda (_path161671_ _reload?161672_)
        (let ((_eval?161674_ '#f))
          (gx#import-module__% _path161671_ _reload?161672_ _eval?161674_))))
    (define gx#import-module
      (lambda _g167240_
        (let ((_g167239_ (##length _g167240_)))
          (cond ((##fx= _g167239_ 1)
                 (apply (lambda (_path161665_)
                          (gx#import-module__0 _path161665_))
                        _g167240_))
                ((##fx= _g167239_ 2)
                 (apply (lambda (_path161671_ _reload?161672_)
                          (gx#import-module__1 _path161671_ _reload?161672_))
                        _g167240_))
                ((##fx= _g167239_ 3)
                 (apply (lambda (_path161676_ _reload?161677_ _eval?161678_)
                          (gx#import-module__%
                           _path161676_
                           _reload?161677_
                           _eval?161678_))
                        _g167240_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g167240_))))))
    (define gx#eval-module
      (lambda (_mod161653_) ((gx#current-expander-module-eval) _mod161653_)))
    (define gx#core-eval-module
      (lambda (_obj161638_)
        (letrec ((_force-e161640_
                  (lambda (_getf161649_ _e161650_)
                    (call-with-parameters
                     (lambda () (force (_getf161649_ _e161650_)))
                     gx#current-expander-context
                     _e161650_
                     gx#current-expander-phi
                     '0))))
          (let _recur161642_ ((_e161644_ _obj161638_))
            (if (##structure-instance-of? _e161644_ 'gx#module-context::t)
                (begin
                  (let ((_$e161646_ (gx#core-context-prelude__% _e161644_)))
                    (if _$e161646_ (_recur161642_ _$e161646_) '#!void))
                  (_force-e161640_ gx#module-context-e _e161644_))
                (if (##structure-instance-of? _e161644_ 'gx#prelude-context::t)
                    (_force-e161640_ gx#prelude-context-e _e161644_)
                    (if (gx#stx-string? _e161644_)
                        (_recur161642_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _e161644_)))
                        (if (gx#core-library-module-path? _e161644_)
                            (_recur161642_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _e161644_)))
                            (error '"Cannot eval module" _obj161638_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_ctx161621_)
        (let _lp161623_ ((_e161625_ _ctx161621_))
          (if (or (##structure-instance-of? _e161625_ 'gx#module-context::t)
                  (##structure-instance-of? _e161625_ 'gx#local-context::t))
              (_lp161623_
               (##unchecked-structure-ref _e161625_ '3 gx#phi-context::t '#f))
              (if (##structure-instance-of? _e161625_ 'gx#prelude-context::t)
                  _e161625_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_ctx161634_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _ctx161634_))))
    (define gx#core-context-prelude
      (lambda _g167242_
        (let ((_g167241_ (##length _g167242_)))
          (cond ((##fx= _g167241_ 0)
                 (apply (lambda () (gx#core-context-prelude__0)) _g167242_))
                ((##fx= _g167241_ 1)
                 (apply (lambda (_ctx161636_)
                          (gx#core-context-prelude__% _ctx161636_))
                        _g167242_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g167242_))))))
    (define gx#core-module->prelude-context
      (lambda (_ctx161611_)
        (let* ((_ht161613_ (gx#current-expander-module-registry))
               (_$e161615_ (table-ref _ht161613_ _ctx161611_ '#f)))
          (if _$e161615_
              (values _$e161615_)
              (let ((_pre161618_
                     (let ((__obj167233
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
                       (gx#prelude-context:::init! __obj167233 _ctx161611_)
                       __obj167233)))
                (table-set! _ht161613_ _ctx161611_ _pre161618_)
                _pre161618_)))))
    (define gx#core-import-module__%
      (lambda (_rpath161492_ _reload?161493_)
        (letrec ((_import-source161495_
                  (lambda (_path161580_)
                    (if (member _path161580_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _path161580_)
                        '#!void)
                    (call-with-parameters
                     (lambda ()
                       (let ((_g167243_ (gx#core-read-module _path161580_)))
                         (begin
                           (let ((_g167244_
                                  (if (##values? _g167243_)
                                      (##vector-length _g167243_)
                                      1)))
                             (if (not (##fx= _g167244_ 4))
                                 (error "Context expects 4 values" _g167244_)))
                           (let ((_pre161583_ (##vector-ref _g167243_ 0))
                                 (_id161584_ (##vector-ref _g167243_ 1))
                                 (_ns161585_ (##vector-ref _g167243_ 2))
                                 (_body161586_ (##vector-ref _g167243_ 3)))
                             (let* ((_prelude161591_
                                     (if (##structure-instance-of?
                                          _pre161583_
                                          'gx#prelude-context::t)
                                         _pre161583_
                                         (if (##structure-instance-of?
                                              _pre161583_
                                              'gx#module-context::t)
                                             (gx#core-module->prelude-context
                                              _pre161583_)
                                             (if (string? _pre161583_)
                                                 (gx#core-module->prelude-context
                                                  (gx#core-import-module__0
                                                   _pre161583_))
                                                 (if (not _pre161583_)
                                                     (let ((_$e161588_
                                                            (gx#current-expander-module-prelude)))
                                                       (if _$e161588_
                                                           _$e161588_
                                                           (let ((__obj167234
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
                     (gx#prelude-context:::init! __obj167234 '#f)
                     __obj167234)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error '"Cannot import module; unknown prelude"
                                                            _rpath161492_
                                                            _pre161583_))))))
                                    (_ctx161593_
                                     (let ((__obj167235
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
                                        __obj167235
                                        _id161584_
                                        _prelude161591_
                                        _ns161585_
                                        _path161580_)
                                       __obj167235))
                                    (_body161595_
                                     (gx#core-expand-module-begin
                                      _body161586_
                                      _ctx161593_))
                                    (_body161597_
                                     (gx#core-quote-syntax__%
                                      (gx#core-cons '%#begin _body161595_)
                                      _path161580_
                                      _ctx161593_
                                      '())))
                               (##unchecked-structure-set!
                                _ctx161593_
                                (make-promise
                                 (lambda () (gx#eval-syntax* _body161597_)))
                                '10
                                gx#module-context::t
                                '#f)
                               (##unchecked-structure-set!
                                _ctx161593_
                                _body161597_
                                '11
                                gx#module-context::t
                                '#f)
                               (table-set!
                                (gx#current-expander-module-registry)
                                _path161580_
                                _ctx161593_)
                               (table-set!
                                (gx#current-expander-module-registry)
                                _id161584_
                                _ctx161593_)
                               _ctx161593_)))))
                     gx#current-expander-context
                     (gx#core-context-root__0)
                     gx#current-expander-marks
                     '()
                     gx#current-expander-phi
                     '0
                     gx#current-expander-path
                     (cons _path161580_ (gx#current-expander-path))
                     gx#current-import-expander-phi
                     '#f
                     gx#current-export-expander-phi
                     '#f)))
                 (_import-submodule161496_
                  (lambda (_rpath161508_)
                    (let* ((_rpath161509161516_ _rpath161508_)
                           (_E161511161520_
                            (lambda ()
                              (error '"No clause matching"
                                     _rpath161509161516_)))
                           (_K161512161568_
                            (lambda (_refs161523_ _origin161524_)
                              (let ((_ctx161526_
                                     (if _origin161524_
                                         (gx#core-import-module__%
                                          _origin161524_
                                          _reload?161493_)
                                         (gx#current-expander-context))))
                                (let _lp161528_ ((_rest161530_ _refs161523_)
                                                 (_ctx161531_ _ctx161526_))
                                  (let* ((_rest161532161540_ _rest161530_)
                                         (_else161534161548_
                                          (lambda () _ctx161531_))
                                         (_K161536161556_
                                          (lambda (_rest161551_ _id161552_)
                                            (let ((_bind161554_
                                                   (gx#resolve-identifier__%
                                                    _id161552_
                                                    '0
                                                    _ctx161531_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _bind161554_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _bind161554_
                                                         '4
                                                         gx#syntax-binding::t
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_lp161528_
                                                   _rest161551_
                                                   (##unchecked-structure-ref
                                                    _bind161554_
                                                    '4
                                                    gx#syntax-binding::t
                                                    '#f))
                                                  (error '"Cannot import submodule; not bound as a module"
                                                         _rpath161508_
                                                         _id161552_
                                                         _bind161554_))))))
                                    (if (##pair? _rest161532161540_)
                                        (let ((_hd161537161559_
                                               (##car _rest161532161540_))
                                              (_tl161538161561_
                                               (##cdr _rest161532161540_)))
                                          (let* ((_id161564_ _hd161537161559_)
                                                 (_rest161566_
                                                  _tl161538161561_))
                                            (_K161536161556_
                                             _rest161566_
                                             _id161564_)))
                                        (_else161534161548_))))))))
                      (if (##pair? _rpath161509161516_)
                          (let ((_hd161513161571_ (##car _rpath161509161516_))
                                (_tl161514161573_ (##cdr _rpath161509161516_)))
                            (let* ((_origin161576_ _hd161513161571_)
                                   (_refs161578_ _tl161514161573_))
                              (_K161512161568_ _refs161578_ _origin161576_)))
                          (_E161511161520_))))))
          (let ((_$e161498_
                 (if (not _reload?161493_)
                     (table-ref
                      (gx#current-expander-module-registry)
                      _rpath161492_
                      '#f)
                     '#f)))
            (if _$e161498_
                (values _$e161498_)
                (if (list? _rpath161492_)
                    (_import-submodule161496_ _rpath161492_)
                    (if (gx#core-library-module-path? _rpath161492_)
                        (let ((_ctx161501_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _rpath161492_)
                                _reload?161493_)))
                          (table-set!
                           (gx#current-expander-module-registry)
                           _rpath161492_
                           _ctx161501_)
                          _ctx161501_)
                        (let* ((_npath161503_ (path-normalize _rpath161492_))
                               (_$e161505_
                                (if (not _reload?161493_)
                                    (table-ref
                                     (gx#current-expander-module-registry)
                                     _npath161503_
                                     '#f)
                                    '#f)))
                          (if _$e161505_
                              (values _$e161505_)
                              (_import-source161495_ _npath161503_))))))))))
    (define gx#core-import-module__0
      (lambda (_rpath161604_)
        (let ((_reload?161606_ '#f))
          (gx#core-import-module__% _rpath161604_ _reload?161606_))))
    (define gx#core-import-module
      (lambda _g167246_
        (let ((_g167245_ (##length _g167246_)))
          (cond ((##fx= _g167245_ 1)
                 (apply (lambda (_rpath161604_)
                          (gx#core-import-module__0 _rpath161604_))
                        _g167246_))
                ((##fx= _g167245_ 2)
                 (apply (lambda (_rpath161608_ _reload?161609_)
                          (gx#core-import-module__%
                           _rpath161608_
                           _reload?161609_))
                        _g167246_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g167246_))))))
    (define gx#core-read-module
      (lambda (_path161481_)
        (with-catch
         (lambda (_exn161483_)
           (if (and (datum-parsing-exception? _exn161483_)
                    (eq? (datum-parsing-exception-filepos _exn161483_) '0))
               (gx#core-read-module/lang _path161481_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _path161481_
                (call-with-parameters
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_g161485161487_)
                      (display-exception _exn161483_ _g161485161487_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _path161481_)))))
    (define gx#core-read-module/sexp
      (lambda (_path161344_)
        (let _lp161346_ ((_body161348_ (read-syntax-from-file _path161344_))
                         (_pre161349_ '#f)
                         (_ns161350_ '#f)
                         (_pkg161351_ '#f))
          (let* ((_e161352161376_ _body161348_)
                 (_E161368161398_
                  (lambda ()
                    (let ((_g167247_
                           (if _pkg161351_
                               (values _pre161349_ _ns161350_ _pkg161351_)
                               (gx#core-read-module-package
                                _path161344_
                                _pre161349_
                                _ns161350_))))
                      (begin
                        (let ((_g167248_
                               (if (##values? _g167247_)
                                   (##vector-length _g167247_)
                                   1)))
                          (if (not (##fx= _g167248_ 3))
                              (error "Context expects 3 values" _g167248_)))
                        (let ((_pre161380_ (##vector-ref _g167247_ 0))
                              (_ns161381_ (##vector-ref _g167247_ 1))
                              (_pkg161382_ (##vector-ref _g167247_ 2)))
                          (let* ((_prelude161384_
                                  (if (gx#core-bound-module-prelude?
                                       _pre161380_)
                                      (gx#syntax-local-e__0 _pre161380_)
                                      (if (gx#core-library-module-path?
                                           _pre161380_)
                                          (gx#core-resolve-library-module-path
                                           _pre161380_)
                                          (if (gx#stx-string? _pre161380_)
                                              (gx#core-resolve-module-path__%
                                               _pre161380_
                                               _path161344_)
                                              (gx#stx-e _pre161380_)))))
                                 (_path-id161386_
                                  (gx#core-module-path->namespace
                                   _path161344_))
                                 (_pkg-id161388_
                                  (if _pkg161382_
                                      (string-append
                                       _pkg161382_
                                       '"/"
                                       _path-id161386_)
                                      _path-id161386_))
                                 (_module-id161390_
                                  (string->symbol _pkg-id161388_))
                                 (_module-ns161395_
                                  (if (eq? _ns161381_ '#!void)
                                      '#f
                                      (let ((_$e161392_ _ns161381_))
                                        (if _$e161392_
                                            _$e161392_
                                            _pkg-id161388_)))))
                            (values _prelude161384_
                                    _module-id161390_
                                    _module-ns161395_
                                    _body161348_)))))))
                 (_E161361161427_
                  (lambda ()
                    (if (gx#stx-pair? _e161352161376_)
                        (let ((_e161369161402_ (gx#syntax-e _e161352161376_)))
                          (let ((_hd161370161405_ (##car _e161369161402_))
                                (_tl161371161407_ (##cdr _e161369161402_)))
                            (if (eq? (gx#stx-e _hd161370161405_) 'package:)
                                (if (gx#stx-pair? _tl161371161407_)
                                    (let ((_e161372161410_
                                           (gx#syntax-e _tl161371161407_)))
                                      (let ((_hd161373161413_
                                             (##car _e161372161410_))
                                            (_tl161374161415_
                                             (##cdr _e161372161410_)))
                                        (let* ((_pkg161418_ _hd161373161413_)
                                               (_rest161420_ _tl161374161415_))
                                          (if '#t
                                              (let ((_pkg161425_
                                                     (if (gx#identifier?
                                                          _pkg161418_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _pkg161418_))
                                                         (if (or (gx#stx-string?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _pkg161418_)
                         (gx#stx-false? _pkg161418_))
                     (gx#stx-e _pkg161418_)
                     (gx#raise-syntax-error
                      'import
                      '"Bad syntax; Illegal package name"
                      _pkg161418_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp161346_
                                                 _rest161420_
                                                 _pre161349_
                                                 _ns161350_
                                                 _pkg161425_))
                                              (_E161368161398_)))))
                                    (_E161368161398_))
                                (_E161368161398_))))
                        (_E161368161398_))))
                 (_E161354161453_
                  (lambda ()
                    (if (gx#stx-pair? _e161352161376_)
                        (let ((_e161362161431_ (gx#syntax-e _e161352161376_)))
                          (let ((_hd161363161434_ (##car _e161362161431_))
                                (_tl161364161436_ (##cdr _e161362161431_)))
                            (if (eq? (gx#stx-e _hd161363161434_) 'namespace:)
                                (if (gx#stx-pair? _tl161364161436_)
                                    (let ((_e161365161439_
                                           (gx#syntax-e _tl161364161436_)))
                                      (let ((_hd161366161442_
                                             (##car _e161365161439_))
                                            (_tl161367161444_
                                             (##cdr _e161365161439_)))
                                        (let* ((_ns161447_ _hd161366161442_)
                                               (_rest161449_ _tl161367161444_))
                                          (if '#t
                                              (let ((_ns161451_
                                                     (if (gx#identifier?
                                                          _ns161447_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _ns161447_))
                                                         (if (gx#stx-string?
                                                              _ns161447_)
                                                             (gx#stx-e
                                                              _ns161447_)
                                                             (if (gx#stx-false?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _ns161447_)
                         '#!void
                         (gx#raise-syntax-error
                          'import
                          '"Bad syntax; illegal namespace"
                          _ns161447_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp161346_
                                                 _rest161449_
                                                 _pre161349_
                                                 _ns161451_
                                                 _pkg161351_))
                                              (_E161361161427_)))))
                                    (_E161361161427_))
                                (_E161361161427_))))
                        (_E161361161427_))))
                 (_E161353161477_
                  (lambda ()
                    (if (gx#stx-pair? _e161352161376_)
                        (let ((_e161355161457_ (gx#syntax-e _e161352161376_)))
                          (let ((_hd161356161460_ (##car _e161355161457_))
                                (_tl161357161462_ (##cdr _e161355161457_)))
                            (if (eq? (gx#stx-e _hd161356161460_) 'prelude:)
                                (if (gx#stx-pair? _tl161357161462_)
                                    (let ((_e161358161465_
                                           (gx#syntax-e _tl161357161462_)))
                                      (let ((_hd161359161468_
                                             (##car _e161358161465_))
                                            (_tl161360161470_
                                             (##cdr _e161358161465_)))
                                        (let* ((_prelude161473_
                                                _hd161359161468_)
                                               (_rest161475_ _tl161360161470_))
                                          (if '#t
                                              (_lp161346_
                                               _rest161475_
                                               _prelude161473_
                                               _ns161350_
                                               _pkg161351_)
                                              (_E161354161453_)))))
                                    (_E161354161453_))
                                (_E161354161453_))))
                        (_E161354161453_)))))
            (_E161353161477_)))))
    (define gx#core-read-module/lang
      (lambda (_path161171_)
        (letrec ((_default-read-module-body161173_
                  (lambda (_inp161336_)
                    (let _lp161338_ ((_body161340_ '()))
                      (let ((_next161342_ (read-syntax _inp161336_)))
                        (if (eof-object? _next161342_)
                            (reverse _body161340_)
                            (_lp161338_ (cons _next161342_ _body161340_)))))))
                 (_read-body161174_
                  (lambda (_inp161255_
                           _pre161256_
                           _ns161257_
                           _pkg161258_
                           _args161259_)
                    (let ((_g167249_
                           (if _pkg161258_
                               (values _pre161256_ _ns161257_ _pkg161258_)
                               (gx#core-read-module-package
                                _path161171_
                                _pre161256_
                                _ns161257_))))
                      (begin
                        (let ((_g167250_
                               (if (##values? _g167249_)
                                   (##vector-length _g167249_)
                                   1)))
                          (if (not (##fx= _g167250_ 3))
                              (error "Context expects 3 values" _g167250_)))
                        (let ((_pre161261_ (##vector-ref _g167249_ 0))
                              (_ns161262_ (##vector-ref _g167249_ 1))
                              (_pkg161263_ (##vector-ref _g167249_ 2)))
                          (let* ((_prelude161265_
                                  (gx#import-module__0 _pre161261_))
                                 (_read-module-body161319_
                                  (let ((_$e161311_
                                         (find (lambda (_e161266161268_)
                                                 (let* ((_g161270161280_
                                                         _e161266161268_)
                                                        (_else161272161288_
                                                         (lambda () '#f))
                                                        (_K161274161292_
                                                         (lambda () '#t)))
                                                   (if (##structure-direct-instance-of?
                                                        _g161270161280_
                                                        'gx#module-export::t)
                                                       (let* ((_e161275161295_
                                                               (##unchecked-structure-ref
                                                                _g161270161280_
                                                                '1
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e161276161298_
                                                               (##unchecked-structure-ref
                                                                _g161270161280_
                                                                '2
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e161277161301_
                                                               (##unchecked-structure-ref
                                                                _g161270161280_
                                                                '3
                                                                gx#module-export::t
                                                                '#f)))
                                                         (if (##eq? _e161277161301_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)
                     (let ((_e161278161304_
                            (##unchecked-structure-ref
                             _g161270161280_
                             '4
                             gx#module-export::t
                             '#f)))
                       (if ((lambda (_g161306161308_)
                              (eq? _g161306161308_ 'read-module-body))
                            _e161278161304_)
                           (_K161274161292_)
                           (_else161272161288_)))
                     (_else161272161288_)))
               (_else161272161288_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (##unchecked-structure-ref
                                                _prelude161265_
                                                '9
                                                gx#module-context::t
                                                '#f))))
                                    (if _$e161311_
                                        ((lambda (_xport161314_)
                                           (let ((_proc161317_
                                                  (with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _xport161314_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _proc161317_)
                                                 _proc161317_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _path161171_
                                                  _pre161261_
                                                  _proc161317_))))
                                         _$e161311_)
                                        _default-read-module-body161173_)))
                                 (_path-id161321_
                                  (gx#core-module-path->namespace
                                   _path161171_))
                                 (_pkg-id161323_
                                  (if _pkg161263_
                                      (string-append
                                       _pkg161263_
                                       '"/"
                                       _path-id161321_)
                                      _path-id161321_))
                                 (_module-id161325_
                                  (string->symbol _pkg-id161323_))
                                 (_module-ns161330_
                                  (let ((_$e161327_ _ns161262_))
                                    (if _$e161327_ _$e161327_ _pkg-id161323_)))
                                 (_body161333_
                                  (call-with-parameters
                                   (lambda ()
                                     (_read-module-body161319_ _inp161255_))
                                   gx#current-module-reader-path
                                   _path161171_
                                   gx#current-module-reader-args
                                   _args161259_)))
                            (values _prelude161265_
                                    _module-id161325_
                                    _module-ns161330_
                                    _body161333_)))))))
                 (_string-e161175_
                  (lambda (_obj161252_ _what161253_)
                    (if (string? _obj161252_)
                        _obj161252_
                        (if (symbol? _obj161252_)
                            (symbol->string _obj161252_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _what161253_)
                             _path161171_
                             _obj161252_)))))
                 (_read-lang-args161176_
                  (lambda (_inp161207_ _args161208_)
                    (let* ((_args161209161217_ _args161208_)
                           (_else161211161225_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _path161171_)))
                           (_K161213161240_
                            (lambda (_args161228_ _prelude161229_)
                              (let* ((_pkg161231_
                                      (pgetq 'package: _args161228_))
                                     (_pkg161233_
                                      (if _pkg161231_
                                          (_string-e161175_
                                           _pkg161231_
                                           '"package")
                                          '#f))
                                     (_ns161235_
                                      (pgetq 'namespace: _args161228_))
                                     (_ns161237_
                                      (if _ns161235_
                                          (_string-e161175_
                                           _ns161235_
                                           '"namespace")
                                          '#f)))
                                (_read-body161174_
                                 _inp161207_
                                 _prelude161229_
                                 _ns161237_
                                 _pkg161233_
                                 _args161228_)))))
                      (if (##pair? _args161209161217_)
                          (let ((_hd161214161243_ (##car _args161209161217_))
                                (_tl161215161245_ (##cdr _args161209161217_)))
                            (let* ((_prelude161248_ _hd161214161243_)
                                   (_args161250_ _tl161215161245_))
                              (_K161213161240_ _args161250_ _prelude161248_)))
                          (_else161211161225_)))))
                 (_read-lang161177_
                  (lambda (_inp161182_)
                    (let* ((_head161184_ (read-line _inp161182_))
                           (_$e161186_ (string-index _head161184_ '#\space)))
                      (if _$e161186_
                          ((lambda (_ix161189_)
                             (let ((_lang161191_
                                    (substring _head161184_ '0 _ix161189_)))
                               (if (equal? _lang161191_ '"#lang")
                                   (let* ((_rest161193_
                                           (substring
                                            _head161184_
                                            (fx+ _ix161189_ '1)
                                            (string-length _head161184_)))
                                          (_args161204_
                                           (with-catch
                                            (lambda (_g161194161196_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _path161171_
                                               _g161194161196_))
                                            (lambda ()
                                              (call-with-input-string
                                               _rest161193_
                                               (lambda (_g161199161201_)
                                                 (read-all
                                                  _g161199161201_
                                                  read)))))))
                                     (_read-lang-args161176_
                                      _inp161182_
                                      _args161204_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _path161171_))))
                           _$e161186_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _path161171_)))))
                 (_read-e161178_
                  (lambda (_inp161180_)
                    (if (eq? (peek-char _inp161180_) '#\#)
                        (_read-lang161177_ _inp161180_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _path161171_)))))
          (gx#call-with-input-source-file _path161171_ _read-e161178_))))
    (define gx#core-read-module-package
      (lambda (_path161125_ _pre161126_ _ns161127_)
        (letrec ((_string-e161129_
                  (lambda (_e161169_)
                    (if (symbol? _e161169_)
                        (symbol->string _e161169_)
                        (if (string? _e161169_)
                            _e161169_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _e161169_))))))
          (let _lp161131_ ((_dir161133_ (path-directory _path161125_))
                           (_pkg-path161134_ '()))
            (let ((_gerbil.pkg161136_ (path-expand '"gerbil.pkg" _dir161133_)))
              (if (file-exists? _gerbil.pkg161136_)
                  (let ((_plist161138_
                         (gx#core-library-package-plist__% _dir161133_ '#t)))
                    (if (null? _plist161138_)
                        (let ((_pkg161140_
                               (if (not (null? _pkg-path161134_))
                                   (string-join _pkg-path161134_ '"/")
                                   '#f)))
                          (values _pre161126_ _ns161127_ _pkg161140_))
                        (if (list? _plist161138_)
                            (let* ((_root161142_
                                    (pgetq 'package: _plist161138_))
                                   (_pkg161146_
                                    (let ((_pkg-path161144_
                                           (if _root161142_
                                               (cons (_string-e161129_
                                                      _root161142_)
                                                     _pkg-path161134_)
                                               _pkg-path161134_)))
                                      (if (not (null? _pkg-path161144_))
                                          (string-join _pkg-path161144_ '"/")
                                          '#f)))
                                   (_ns161153_
                                    (let ((_ns161151_
                                           (let ((_$e161148_ _ns161127_))
                                             (if _$e161148_
                                                 _$e161148_
                                                 (pgetq 'namespace:
                                                        _plist161138_)))))
                                      (if _ns161151_
                                          (_string-e161129_ _ns161151_)
                                          '#f)))
                                   (_pre161158_
                                    (let ((_$e161155_ _pre161126_))
                                      (if _$e161155_
                                          _$e161155_
                                          (pgetq 'prelude: _plist161138_)))))
                              (values _pre161158_ _ns161153_ _pkg161146_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _plist161138_))))
                  (let ((_dir*161161_
                         (path-strip-trailing-directory-separator
                          _dir161133_)))
                    (if (or (string-empty? _dir*161161_)
                            (equal? _dir161133_ _dir*161161_))
                        (values _pre161126_ _ns161127_ '#f)
                        (let ((_xpath161166_
                               (path-strip-directory _dir*161161_))
                              (_xdir161167_ (path-directory _dir*161161_)))
                          (_lp161131_
                           _xdir161167_
                           (cons _xpath161166_ _pkg-path161134_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_path161123_)
        (path-strip-extension (path-strip-directory _path161123_))))
    (define gx#core-module-path->id
      (lambda (_path161121_)
        (string->symbol (gx#core-module-path->namespace _path161121_))))
    (define gx#core-resolve-module-path__%
      (lambda (_stx-path161100_ _rel161101_)
        (let* ((_path161103_ (gx#stx-e _stx-path161100_))
               (_path161105_
                (if (string-empty? (path-extension _path161103_))
                    (string-append _path161103_ '".ss")
                    _path161103_)))
          (gx#core-resolve-path__%
           _path161105_
           (let ((_$e161108_ (gx#stx-source _stx-path161100_)))
             (if _$e161108_ _$e161108_ _rel161101_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_stx-path161114_)
        (let ((_rel161116_ '#f))
          (gx#core-resolve-module-path__% _stx-path161114_ _rel161116_))))
    (define gx#core-resolve-module-path
      (lambda _g167252_
        (let ((_g167251_ (##length _g167252_)))
          (cond ((##fx= _g167251_ 1)
                 (apply (lambda (_stx-path161114_)
                          (gx#core-resolve-module-path__0 _stx-path161114_))
                        _g167252_))
                ((##fx= _g167251_ 2)
                 (apply (lambda (_stx-path161118_ _rel161119_)
                          (gx#core-resolve-module-path__%
                           _stx-path161118_
                           _rel161119_))
                        _g167252_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g167252_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_libpath160986_)
        (let* ((_spath160988_ (symbol->string (gx#stx-e _libpath160986_)))
               (_spath160990_
                (substring _spath160988_ '1 (string-length _spath160988_)))
               (_ext160992_ (path-extension _spath160990_))
               (_ssi160994_
                (if (string-empty? _ext160992_)
                    (string-append _spath160990_ '".ssi")
                    (string-append
                     (path-strip-extension _spath160990_)
                     '".ssi")))
               (_srcs160998_
                (if (string-empty? _ext160992_)
                    (map (lambda (_ext160996_)
                           (string-append _spath160990_ _ext160996_))
                         '(".ss" ".sld" ".scm"))
                    (cons _spath160990_ '()))))
          (let _lp161001_ ((_rest161003_
                            (gx#current-expander-module-library-path)))
            (let* ((_rest161004161013_ _rest161003_)
                   (_E161007161017_
                    (lambda ()
                      (error '"No clause matching" _rest161004161013_))))
              (let ((_K161009161087_
                     (lambda (_rest161028_ _dir161029_)
                       (letrec ((_resolve161031_
                                 (lambda (_ssi161043_ _srcs161044_)
                                   (let ((_compiled-path161046_
                                          (path-expand
                                           _ssi161043_
                                           _dir161029_)))
                                     (if (file-exists? _compiled-path161046_)
                                         (path-normalize _compiled-path161046_)
                                         (let _lpr161048_ ((_rest-src161050_
                                                            _srcs161044_))
                                           (let* ((_rest-src161051161059_
                                                   _rest-src161050_)
                                                  (_else161053161067_
                                                   (lambda ()
                                                     (_lp161001_
                                                      _rest161028_)))
                                                  (_K161055161075_
                                                   (lambda (_rest-src161070_
                                                            _src161071_)
                                                     (let ((_src-path161073_
                                                            (path-expand
                                                             _src161071_
                                                             _dir161029_)))
                                                       (if (file-exists?
                                                            _src-path161073_)
                                                           (path-normalize
                                                            _src-path161073_)
                                                           (_lpr161048_
                                                            _rest-src161070_))))))
                                             (if (##pair? _rest-src161051161059_)
                                                 (let ((_hd161056161078_
                                                        (##car _rest-src161051161059_))
                                                       (_tl161057161080_
                                                        (##cdr _rest-src161051161059_)))
                                                   (let* ((_src161083_
                                                           _hd161056161078_)
                                                          (_rest-src161085_
                                                           _tl161057161080_))
                                                     (_K161055161075_
                                                      _rest-src161085_
                                                      _src161083_)))
                                                 (_else161053161067_)))))))))
                         (let ((_$e161033_
                                (gx#core-library-package-path-prefix
                                 _dir161029_)))
                           (if _$e161033_
                               ((lambda (_prefix161036_)
                                  (if (string-prefix?
                                       _prefix161036_
                                       _spath160990_)
                                      (let ((_ssi161040_
                                             (substring
                                              _ssi160994_
                                              (string-length _prefix161036_)
                                              (string-length _ssi160994_)))
                                            (_srcs161041_
                                             (map (lambda (_src161038_)
                                                    (substring
                                                     _src161038_
                                                     (string-length
                                                      _prefix161036_)
                                                     (string-length
                                                      _src161038_)))
                                                  _srcs160998_)))
                                        (_resolve161031_
                                         _ssi161040_
                                         _srcs161041_))
                                      (_lp161001_ _rest161028_)))
                                _$e161033_)
                               (_resolve161031_ _ssi160994_ _srcs160998_))))))
                    (_K161008161022_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"Cannot find library module"
                        _libpath160986_))))
                (let ((_try-match161006161025_
                       (lambda ()
                         (if (##null? _rest161004161013_)
                             (_K161008161022_)
                             (_E161007161017_)))))
                  (if (##pair? _rest161004161013_)
                      (let ((_tl161011161092_ (##cdr _rest161004161013_))
                            (_hd161010161090_ (##car _rest161004161013_)))
                        (let ((_dir161095_ _hd161010161090_)
                              (_rest161097_ _tl161011161092_))
                          (_K161009161087_ _rest161097_ _dir161095_)))
                      (_try-match161006161025_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_modpath160959_)
        (letrec ((_resolve160961_
                  (lambda (_path160978_ _base160979_)
                    (let ((_$e160981_ (string-rindex _base160979_ '#\/)))
                      (if _$e160981_
                          ((lambda (_idx160984_)
                             (gx#core-resolve-library-module-path
                              (string->symbol
                               (string-append
                                '":"
                                (substring _base160979_ '0 _idx160984_)
                                '"/"
                                _path160978_))))
                           _$e160981_)
                          (gx#core-resolve-library-module-path
                           (string->symbol
                            (string-append '":" _path160978_))))))))
          (let ((_spath160963_ (symbol->string (gx#stx-e _modpath160959_)))
                (_mod160964_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _mod160964_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"Cannot resolve relative module path; not in module context"
                 _modpath160959_))
            (let ((_mpath160966_
                   (symbol->string
                    (##structure-ref
                     _mod160964_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _lp160968_ ((_spath160970_ _spath160963_)
                               (_mpath160971_ _mpath160966_))
                (if (string-prefix? '"../" _spath160970_)
                    (let ((_$e160973_ (string-rindex _mpath160971_ '#\/)))
                      (if _$e160973_
                          ((lambda (_idx160976_)
                             (_lp160968_
                              (substring
                               _spath160970_
                               '3
                               (string-length _spath160970_))
                              (substring _mpath160971_ '0 _idx160976_)))
                           _$e160973_)
                          (gx#raise-syntax-error
                           '#f
                           '"Cannot resolve relative module path; illegal traversal"
                           _modpath160959_)))
                    (if (string-prefix? '"./" _spath160970_)
                        (_lp160968_
                         (substring
                          _spath160970_
                          '2
                          (string-length _spath160970_))
                         _mpath160971_)
                        (_resolve160961_ _spath160970_ _mpath160971_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_dir160952_)
        (let ((_$e160954_
               (pgetq 'package:
                      (gx#core-library-package-plist__0 _dir160952_))))
          (if _$e160954_
              ((lambda (_pkg160957_)
                 (string-append (symbol->string _pkg160957_) '"/"))
               _$e160954_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_dir160924_ _exists?160925_)
        (let* ((_cache160927_ (gx#core-library-package-cache))
               (_$e160929_ (table-ref _cache160927_ _dir160924_ '#f)))
          (if _$e160929_
              (values _$e160929_)
              (let* ((_gerbil.pkg160932_
                      (path-expand '"gerbil.pkg" _dir160924_))
                     (_plist160939_
                      (if (or _exists?160925_
                              (file-exists? _gerbil.pkg160932_))
                          (let ((_e160937_
                                 (gx#call-with-input-source-file
                                  _gerbil.pkg160932_
                                  read)))
                            (if (eof-object? _e160937_)
                                '()
                                (if (list? _e160937_)
                                    _e160937_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _gerbil.pkg160932_
                                     _e160937_))))
                          '())))
                (table-set! _cache160927_ _dir160924_ _plist160939_)
                _plist160939_)))))
    (define gx#core-library-package-plist__0
      (lambda (_dir160945_)
        (let ((_exists?160947_ '#f))
          (gx#core-library-package-plist__% _dir160945_ _exists?160947_))))
    (define gx#core-library-package-plist
      (lambda _g167254_
        (let ((_g167253_ (##length _g167254_)))
          (cond ((##fx= _g167253_ 1)
                 (apply (lambda (_dir160945_)
                          (gx#core-library-package-plist__0 _dir160945_))
                        _g167254_))
                ((##fx= _g167253_ 2)
                 (apply (lambda (_dir160949_ _exists?160950_)
                          (gx#core-library-package-plist__%
                           _dir160949_
                           _exists?160950_))
                        _g167254_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g167254_))))))
    (define gx#core-library-package-cache
      (lambda ()
        (let ((_$e160918_ (gx#current-expander-module-library-package-cache)))
          (if _$e160918_
              (values _$e160918_)
              (let ((_cache160921_ (make-table)))
                (gx#current-expander-module-library-package-cache
                 _cache160921_)
                _cache160921_)))))
    (define gx#core-library-module-path?
      (lambda (_stx160915_) (gx#core-special-module-path? _stx160915_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_stx160913_) (gx#core-special-module-path? _stx160913_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_stx160908_ _char160909_)
        (if (gx#identifier? _stx160908_)
            (if (interned-symbol? (gx#stx-e _stx160908_))
                (let ((_str160911_ (symbol->string (gx#stx-e _stx160908_))))
                  (if (fx> (string-length _str160911_) '1)
                      (eq? (string-ref _str160911_ '0) _char160909_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_stx160902_)
        (gx#core-bound-identifier?__%
         _stx160902_
         (lambda (_g160903160905_)
           (gx#expander-binding?__% _g160903160905_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_stx160896_)
        (gx#core-bound-identifier?__%
         _stx160896_
         (lambda (_g160897160899_)
           (gx#expander-binding?__% _g160897160899_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_stx160883_)
        (letrec ((_module-prelude?160885_
                  (lambda (_e160891_)
                    (let ((_$e160893_
                           (##structure-instance-of?
                            _e160891_
                            'gx#module-context::t)))
                      (if _$e160893_
                          _$e160893_
                          (##structure-instance-of?
                           _e160891_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _stx160883_
           (lambda (_g160886160888_)
             (gx#expander-binding?__%
              _g160886160888_
              _module-prelude?160885_))))))
    (define gx#core-bind-import!__%
      (lambda (_in160813_ _ctx160814_ _force-weak?160815_)
        (let* ((_in160816160825_ _in160813_)
               (_E160818160829_
                (lambda () (error '"No clause matching" _in160816160825_)))
               (_K160819160842_
                (lambda (_weak?160832_ _phi160833_ _key160834_ _source160835_)
                  (gx#core-bind!__%
                   _key160834_
                   (let ((_e160837_
                          (gx#core-resolve-module-export _source160835_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref
                       _e160837_
                       '1
                       gx#binding::t
                       '#f)
                      _key160834_
                      _phi160833_
                      _e160837_
                      (##unchecked-structure-ref
                       _source160835_
                       '1
                       gx#module-export::t
                       '#f)
                      (let ((_$e160839_ _force-weak?160815_))
                        (if _$e160839_ _$e160839_ _weak?160832_))))
                   gx#core-context-rebind?
                   _phi160833_
                   _ctx160814_))))
          (if (##structure-direct-instance-of?
               _in160816160825_
               'gx#module-import::t)
              (let* ((_e160820160845_
                      (##unchecked-structure-ref
                       _in160816160825_
                       '1
                       gx#module-import::t
                       '#f))
                     (_source160848_ _e160820160845_)
                     (_e160821160850_
                      (##unchecked-structure-ref
                       _in160816160825_
                       '2
                       gx#module-import::t
                       '#f))
                     (_key160853_ _e160821160850_)
                     (_e160822160855_
                      (##unchecked-structure-ref
                       _in160816160825_
                       '3
                       gx#module-import::t
                       '#f))
                     (_phi160858_ _e160822160855_)
                     (_e160823160860_
                      (##unchecked-structure-ref
                       _in160816160825_
                       '4
                       gx#module-import::t
                       '#f))
                     (_weak?160863_ _e160823160860_))
                (_K160819160842_
                 _weak?160863_
                 _phi160858_
                 _key160853_
                 _source160848_))
              (_E160818160829_)))))
    (define gx#core-bind-import!__0
      (lambda (_in160868_)
        (let* ((_ctx160870_ (gx#current-expander-context))
               (_force-weak?160872_ '#f))
          (gx#core-bind-import!__%
           _in160868_
           _ctx160870_
           _force-weak?160872_))))
    (define gx#core-bind-import!__1
      (lambda (_in160874_ _ctx160875_)
        (let ((_force-weak?160877_ '#f))
          (gx#core-bind-import!__%
           _in160874_
           _ctx160875_
           _force-weak?160877_))))
    (define gx#core-bind-import!
      (lambda _g167256_
        (let ((_g167255_ (##length _g167256_)))
          (cond ((##fx= _g167255_ 1)
                 (apply (lambda (_in160868_)
                          (gx#core-bind-import!__0 _in160868_))
                        _g167256_))
                ((##fx= _g167255_ 2)
                 (apply (lambda (_in160874_ _ctx160875_)
                          (gx#core-bind-import!__1 _in160874_ _ctx160875_))
                        _g167256_))
                ((##fx= _g167255_ 3)
                 (apply (lambda (_in160879_ _ctx160880_ _force-weak?160881_)
                          (gx#core-bind-import!__%
                           _in160879_
                           _ctx160880_
                           _force-weak?160881_))
                        _g167256_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g167256_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_in160799_ _ctx160800_)
        (gx#core-bind-import!__% _in160799_ _ctx160800_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_in160805_)
        (let ((_ctx160807_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _in160805_ _ctx160807_))))
    (define gx#core-bind-weak-import!
      (lambda _g167258_
        (let ((_g167257_ (##length _g167258_)))
          (cond ((##fx= _g167257_ 1)
                 (apply (lambda (_in160805_)
                          (gx#core-bind-weak-import!__0 _in160805_))
                        _g167258_))
                ((##fx= _g167257_ 2)
                 (apply (lambda (_in160809_ _ctx160810_)
                          (gx#core-bind-weak-import!__%
                           _in160809_
                           _ctx160810_))
                        _g167258_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g167258_))))))
    (define gx#core-resolve-module-export
      (lambda (_out160690_)
        (letrec ((_subst160692_
                  (lambda (_key160738_)
                    (let* ((_key160739160747_ _key160738_)
                           (_else160741160755_ (lambda () _key160738_))
                           (_K160743160786_
                            (lambda (_mark160758_ _id160759_)
                              (let* ((_mark160760160766_ _mark160758_)
                                     (_E160762160770_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark160760160766_)))
                                     (_K160763160778_
                                      (lambda (_subst160773_)
                                        (let ((_$e160775_
                                               (if _subst160773_
                                                   (table-ref
                                                    _subst160773_
                                                    _id160759_
                                                    '#f)
                                                   '#f)))
                                          (if _$e160775_
                                              _$e160775_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _key160738_))))))
                                (if (##structure-instance-of?
                                     _mark160760160766_
                                     'gx#expander-mark::t)
                                    (let* ((_e160764160781_
                                            (##unchecked-structure-ref
                                             _mark160760160766_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst160784_ _e160764160781_))
                                      (_K160763160778_ _subst160784_))
                                    (_E160762160770_))))))
                      (if (##pair? _key160739160747_)
                          (let ((_hd160744160789_ (##car _key160739160747_))
                                (_tl160745160791_ (##cdr _key160739160747_)))
                            (let* ((_id160794_ _hd160744160789_)
                                   (_mark160796_ _tl160745160791_))
                              (_K160743160786_ _mark160796_ _id160794_)))
                          (_else160741160755_))))))
          (let* ((_out160693160703_ _out160690_)
                 (_E160695160707_
                  (lambda () (error '"No clause matching" _out160693160703_)))
                 (_K160696160714_
                  (lambda (_phi160710_ _key160711_ _ctx160712_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _ctx160712_ _phi160710_)
                     (_subst160692_ _key160711_)))))
            (if (##structure-direct-instance-of?
                 _out160693160703_
                 'gx#module-export::t)
                (let* ((_e160697160717_
                        (##unchecked-structure-ref
                         _out160693160703_
                         '1
                         gx#module-export::t
                         '#f))
                       (_ctx160720_ _e160697160717_)
                       (_e160698160722_
                        (##unchecked-structure-ref
                         _out160693160703_
                         '2
                         gx#module-export::t
                         '#f))
                       (_key160725_ _e160698160722_)
                       (_e160699160727_
                        (##unchecked-structure-ref
                         _out160693160703_
                         '3
                         gx#module-export::t
                         '#f))
                       (_phi160730_ _e160699160727_)
                       (_e160700160732_
                        (##unchecked-structure-ref
                         _out160693160703_
                         '4
                         gx#module-export::t
                         '#f))
                       (_e160701160735_
                        (##unchecked-structure-ref
                         _out160693160703_
                         '5
                         gx#module-export::t
                         '#f)))
                  (_K160696160714_ _phi160730_ _key160725_ _ctx160720_))
                (_E160695160707_))))))
    (define gx#core-module-export->import__%
      (lambda (_out160615_ _rename160616_ _dphi160617_)
        (let* ((_out160618160628_ _out160615_)
               (_E160620160632_
                (lambda () (error '"No clause matching" _out160618160628_)))
               (_K160621160644_
                (lambda (_weak?160635_
                         _name160636_
                         _phi160637_
                         _key160638_
                         _ctx160639_)
                  (##structure
                   gx#module-import::t
                   _out160615_
                   (let ((_$e160641_ _rename160616_))
                     (if _$e160641_ _$e160641_ _name160636_))
                   (fx+ _phi160637_ _dphi160617_)
                   _weak?160635_))))
          (if (##structure-direct-instance-of?
               _out160618160628_
               'gx#module-export::t)
              (let* ((_e160622160647_
                      (##unchecked-structure-ref
                       _out160618160628_
                       '1
                       gx#module-export::t
                       '#f))
                     (_ctx160650_ _e160622160647_)
                     (_e160623160652_
                      (##unchecked-structure-ref
                       _out160618160628_
                       '2
                       gx#module-export::t
                       '#f))
                     (_key160655_ _e160623160652_)
                     (_e160624160657_
                      (##unchecked-structure-ref
                       _out160618160628_
                       '3
                       gx#module-export::t
                       '#f))
                     (_phi160660_ _e160624160657_)
                     (_e160625160662_
                      (##unchecked-structure-ref
                       _out160618160628_
                       '4
                       gx#module-export::t
                       '#f))
                     (_name160665_ _e160625160662_)
                     (_e160626160667_
                      (##unchecked-structure-ref
                       _out160618160628_
                       '5
                       gx#module-export::t
                       '#f))
                     (_weak?160670_ _e160626160667_))
                (_K160621160644_
                 _weak?160670_
                 _name160665_
                 _phi160660_
                 _key160655_
                 _ctx160650_))
              (_E160620160632_)))))
    (define gx#core-module-export->import__0
      (lambda (_out160675_)
        (let* ((_rename160677_ '#f) (_dphi160679_ '0))
          (gx#core-module-export->import__%
           _out160675_
           _rename160677_
           _dphi160679_))))
    (define gx#core-module-export->import__1
      (lambda (_out160681_ _rename160682_)
        (let ((_dphi160684_ '0))
          (gx#core-module-export->import__%
           _out160681_
           _rename160682_
           _dphi160684_))))
    (define gx#core-module-export->import
      (lambda _g167260_
        (let ((_g167259_ (##length _g167260_)))
          (cond ((##fx= _g167259_ 1)
                 (apply (lambda (_out160675_)
                          (gx#core-module-export->import__0 _out160675_))
                        _g167260_))
                ((##fx= _g167259_ 2)
                 (apply (lambda (_out160681_ _rename160682_)
                          (gx#core-module-export->import__1
                           _out160681_
                           _rename160682_))
                        _g167260_))
                ((##fx= _g167259_ 3)
                 (apply (lambda (_out160686_ _rename160687_ _dphi160688_)
                          (gx#core-module-export->import__%
                           _out160686_
                           _rename160687_
                           _dphi160688_))
                        _g167260_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g167260_))))))
    (define gx#core-expand-module%
      (lambda (_stx160543_)
        (letrec ((_make-context160545_
                  (lambda (_id160596_)
                    (let* ((_super160598_ (gx#current-expander-context))
                           (_bind-id160600_ (gx#stx-e _id160596_))
                           (_mod-id160602_
                            (if (##structure-instance-of?
                                 _super160598_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##structure-ref
                                  _super160598_
                                  '1
                                  gx#expander-context::t
                                  '#f)
                                 '"$"
                                 _bind-id160600_)
                                _bind-id160600_))
                           (_ns160604_ (symbol->string _mod-id160602_))
                           (_path160611_
                            (if (##structure-instance-of?
                                 _super160598_
                                 'gx#module-context::t)
                                (let ((_path160606_
                                       (##unchecked-structure-ref
                                        _super160598_
                                        '7
                                        gx#module-context::t
                                        '#f)))
                                  (if (or (pair? _path160606_)
                                          (null? _path160606_))
                                      (cons _bind-id160600_ _path160606_)
                                      (if (not _path160606_)
                                          _bind-id160600_
                                          (cons _bind-id160600_
                                                (cons _path160606_ '())))))
                                _bind-id160600_)))
                      (let ((__obj167236
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
                         __obj167236
                         _mod-id160602_
                         _super160598_
                         _ns160604_
                         _path160611_)
                        __obj167236)))))
          (let* ((_e160546160556_ _stx160543_)
                 (_E160548160560_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e160546160556_)))
                 (_E160547160592_
                  (lambda ()
                    (if (gx#stx-pair? _e160546160556_)
                        (let ((_e160549160564_ (gx#syntax-e _e160546160556_)))
                          (let ((_hd160550160567_ (##car _e160549160564_))
                                (_tl160551160569_ (##cdr _e160549160564_)))
                            (if (gx#stx-pair? _tl160551160569_)
                                (let ((_e160552160572_
                                       (gx#syntax-e _tl160551160569_)))
                                  (let ((_hd160553160575_
                                         (##car _e160552160572_))
                                        (_tl160554160577_
                                         (##cdr _e160552160572_)))
                                    (let* ((_id160580_ _hd160553160575_)
                                           (_body160582_ _tl160554160577_))
                                      (if (and (gx#identifier? _id160580_)
                                               (gx#stx-list? _body160582_))
                                          (let* ((_ctx160584_
                                                  (_make-context160545_
                                                   _id160580_))
                                                 (_body160586_
                                                  (gx#core-expand-module-begin
                                                   _body160582_
                                                   _ctx160584_))
                                                 (_body160588_
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body160586_)
                                                   (gx#stx-source
                                                    _stx160543_))))
                                            (##unchecked-structure-set!
                                             _ctx160584_
                                             (make-promise
                                              (lambda ()
                                                (gx#eval-syntax*
                                                 _body160588_)))
                                             '10
                                             gx#module-context::t
                                             '#f)
                                            (##unchecked-structure-set!
                                             _ctx160584_
                                             _body160588_
                                             '11
                                             gx#module-context::t
                                             '#f)
                                            (gx#core-bind-syntax!__0
                                             _id160580_
                                             _ctx160584_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-list
                                              '%#module
                                              (gx#core-quote-syntax__0
                                               _id160580_)
                                              _body160588_)
                                             (gx#stx-source _stx160543_)))
                                          (_E160548160560_)))))
                                (_E160548160560_))))
                        (_E160548160560_)))))
            (_E160547160592_)))))
    (define gx#core-expand-module-begin
      (lambda (_body160509_ _ctx160510_)
        (call-with-parameters
         (lambda ()
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_stx160513_
                   (gx#core-expand-head (cons '%%begin-module _body160509_)))
                  (_e160514160521_ _stx160513_)
                  (_E160516160525_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _stx160513_)))
                  (_E160515160539_
                   (lambda ()
                     (if (gx#stx-pair? _e160514160521_)
                         (let ((_e160517160529_ (gx#syntax-e _e160514160521_)))
                           (let ((_hd160518160532_ (##car _e160517160529_))
                                 (_tl160519160534_ (##cdr _e160517160529_)))
                             (if (and (gx#identifier? _hd160518160532_)
                                      (gx#core-identifier=?
                                       _hd160518160532_
                                       '%#begin-module))
                                 (let ((_body160537_ _tl160519160534_))
                                   (if '#t
                                       (if (gx#sealed-syntax? _stx160513_)
                                           _body160537_
                                           (gx#core-expand-module-body
                                            _body160537_))
                                       (_E160516160525_)))
                                 (_E160516160525_))))
                         (_E160516160525_)))))
             (_E160515160539_)))
         gx#current-expander-context
         _ctx160510_
         gx#current-expander-phi
         '0)))
    (define gx#core-expand-module-body
      (lambda (_body160305_)
        (letrec ((_expand-special160307_
                  (lambda (_hd160436_ _K160437_ _rest160438_ _r160439_)
                    (let* ((_e160440160457_ _hd160436_)
                           (_E160452160461_
                            (lambda ()
                              (_K160437_
                               _rest160438_
                               (cons (gx#core-expand-top _hd160436_)
                                     _r160439_))))
                           (_E160442160473_
                            (lambda ()
                              (if (gx#stx-pair? _e160440160457_)
                                  (let ((_e160453160465_
                                         (gx#syntax-e _e160440160457_)))
                                    (let ((_hd160454160468_
                                           (##car _e160453160465_))
                                          (_tl160455160470_
                                           (##cdr _e160453160465_)))
                                      (if (and (gx#identifier?
                                                _hd160454160468_)
                                               (gx#core-identifier=?
                                                _hd160454160468_
                                                '%#export))
                                          (if '#t
                                              (_K160437_
                                               _rest160438_
                                               (cons _hd160436_ _r160439_))
                                              (_E160452160461_))
                                          (_E160452160461_))))
                                  (_E160452160461_))))
                           (_E160441160505_
                            (lambda ()
                              (if (gx#stx-pair? _e160440160457_)
                                  (let ((_e160443160477_
                                         (gx#syntax-e _e160440160457_)))
                                    (let ((_hd160444160480_
                                           (##car _e160443160477_))
                                          (_tl160445160482_
                                           (##cdr _e160443160477_)))
                                      (if (and (gx#identifier?
                                                _hd160444160480_)
                                               (gx#core-identifier=?
                                                _hd160444160480_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl160445160482_)
                                              (let ((_e160446160485_
                                                     (gx#syntax-e
                                                      _tl160445160482_)))
                                                (let ((_hd160447160488_
                                                       (##car _e160446160485_))
                                                      (_tl160448160490_
                                                       (##cdr _e160446160485_)))
                                                  (let ((_hd-bind160493_
                                                         _hd160447160488_))
                                                    (if (gx#stx-pair?
                                                         _tl160448160490_)
                                                        (let ((_e160449160495_
                                                               (gx#syntax-e
                                                                _tl160448160490_)))
                                                          (let ((_hd160450160498_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e160449160495_))
                        (_tl160451160500_ (##cdr _e160449160495_)))
                    (let ((_expr160503_ _hd160450160498_))
                      (if (gx#stx-null? _tl160451160500_)
                          (if (gx#core-bind-values? _hd-bind160493_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind160493_)
                                (_K160437_
                                 _rest160438_
                                 (cons _hd160436_ _r160439_)))
                              (_E160442160473_))
                          (_E160442160473_)))))
                (_E160442160473_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E160442160473_))
                                          (_E160442160473_))))
                                  (_E160442160473_)))))
                      (_E160441160505_))))
                 (_expand-body160308_
                  (lambda (_rbody160310_)
                    (let _lp160312_ ((_rest160314_ _rbody160310_)
                                     (_body160315_ '()))
                      (let* ((_rest160316160324_ _rest160314_)
                             (_else160318160332_ (lambda () _body160315_))
                             (_K160320160424_
                              (lambda (_rest160335_ _hd160336_)
                                (let* ((_e160337160358_ _hd160336_)
                                       (_E160353160362_
                                        (lambda ()
                                          (_lp160312_
                                           _rest160335_
                                           (cons (gx#core-expand-expression
                                                  _hd160336_)
                                                 _body160315_))))
                                       (_E160349160376_
                                        (lambda ()
                                          (if (gx#stx-pair? _e160337160358_)
                                              (let ((_e160354160366_
                                                     (gx#syntax-e
                                                      _e160337160358_)))
                                                (let ((_hd160355160369_
                                                       (##car _e160354160366_))
                                                      (_tl160356160371_
                                                       (##cdr _e160354160366_)))
                                                  (let ((_form160374_
                                                         _hd160355160369_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _form160374_
                                                         gx#special-form-binding?)
                                                        (_lp160312_
                                                         _rest160335_
                                                         (cons _hd160336_
                                                               _body160315_))
                                                        (_E160353160362_)))))
                                              (_E160353160362_))))
                                       (_E160339160388_
                                        (lambda ()
                                          (if (gx#stx-pair? _e160337160358_)
                                              (let ((_e160350160380_
                                                     (gx#syntax-e
                                                      _e160337160358_)))
                                                (let ((_hd160351160383_
                                                       (##car _e160350160380_))
                                                      (_tl160352160385_
                                                       (##cdr _e160350160380_)))
                                                  (if (and (gx#identifier?
                                                            _hd160351160383_)
                                                           (gx#core-identifier=?
                                                            _hd160351160383_
                                                            '%#export))
                                                      (if '#t
                                                          (_lp160312_
                                                           _rest160335_
                                                           (cons (gx#core-expand-export%__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd160336_)
                         _body160315_))
                  (_E160349160376_))
              (_E160349160376_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E160349160376_))))
                                       (_E160338160420_
                                        (lambda ()
                                          (if (gx#stx-pair? _e160337160358_)
                                              (let ((_e160340160392_
                                                     (gx#syntax-e
                                                      _e160337160358_)))
                                                (let ((_hd160341160395_
                                                       (##car _e160340160392_))
                                                      (_tl160342160397_
                                                       (##cdr _e160340160392_)))
                                                  (if (and (gx#identifier?
                                                            _hd160341160395_)
                                                           (gx#core-identifier=?
                                                            _hd160341160395_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl160342160397_)
                                                          (let ((_e160343160400_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl160342160397_)))
                    (let ((_hd160344160403_ (##car _e160343160400_))
                          (_tl160345160405_ (##cdr _e160343160400_)))
                      (let ((_hd-bind160408_ _hd160344160403_))
                        (if (gx#stx-pair? _tl160345160405_)
                            (let ((_e160346160410_
                                   (gx#syntax-e _tl160345160405_)))
                              (let ((_hd160347160413_ (##car _e160346160410_))
                                    (_tl160348160415_ (##cdr _e160346160410_)))
                                (let ((_expr160418_ _hd160347160413_))
                                  (if (gx#stx-null? _tl160348160415_)
                                      (if '#t
                                          (_lp160312_
                                           _rest160335_
                                           (cons (gx#core-quote-syntax__1
                                                  (gx#core-list
                                                   '%#define-values
                                                   (gx#core-quote-bind-values
                                                    _hd-bind160408_)
                                                   (gx#core-expand-expression
                                                    _expr160418_))
                                                  (gx#stx-source _hd160336_))
                                                 _body160315_))
                                          (_E160339160388_))
                                      (_E160339160388_)))))
                            (_E160339160388_)))))
                  (_E160339160388_))
              (_E160339160388_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E160339160388_)))))
                                  (_E160338160420_)))))
                        (if (##pair? _rest160316160324_)
                            (let ((_hd160321160427_ (##car _rest160316160324_))
                                  (_tl160322160429_
                                   (##cdr _rest160316160324_)))
                              (let* ((_hd160432_ _hd160321160427_)
                                     (_rest160434_ _tl160322160429_))
                                (_K160320160424_ _rest160434_ _hd160432_)))
                            (_else160318160332_)))))))
          (_expand-body160308_
           (gx#core-expand-block__%
            (cons '%#begin-module _body160305_)
            _expand-special160307_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_stx160148_
               _expanded?160149_
               _method160150_
               _current-phi160151_
               _expand1160152_)
        (letrec ((_K160154_
                  (lambda (_rest160272_ _r160273_)
                    (let* ((_e160274160281_ _rest160272_)
                           (_E160276160285_ (lambda () _r160273_))
                           (_E160275160301_
                            (lambda ()
                              (if (gx#stx-pair? _e160274160281_)
                                  (let ((_e160277160289_
                                         (gx#syntax-e _e160274160281_)))
                                    (let ((_hd160278160292_
                                           (##car _e160277160289_))
                                          (_tl160279160294_
                                           (##cdr _e160277160289_)))
                                      (let* ((_hd160297_ _hd160278160292_)
                                             (_rest160299_ _tl160279160294_))
                                        (if '#t
                                            (_step160155_
                                             _hd160297_
                                             _rest160299_
                                             _r160273_)
                                            (_E160276160285_)))))
                                  (_E160276160285_)))))
                      (_E160275160301_))))
                 (_step160155_
                  (lambda (_hd160186_ _rest160187_ _r160188_)
                    (let* ((_e160189160207_ _hd160186_)
                           (_E160202160211_
                            (lambda ()
                              (if (_expanded?160149_ (gx#stx-e _hd160186_))
                                  (_K160154_
                                   _rest160187_
                                   (cons (gx#stx-e _hd160186_) _r160188_))
                                  (_expand1160152_
                                   _hd160186_
                                   _K160154_
                                   _rest160187_
                                   _r160188_))))
                           (_E160198160227_
                            (lambda ()
                              (if (gx#stx-pair? _e160189160207_)
                                  (let ((_e160203160215_
                                         (gx#syntax-e _e160189160207_)))
                                    (let ((_hd160204160218_
                                           (##car _e160203160215_))
                                          (_tl160205160220_
                                           (##cdr _e160203160215_)))
                                      (let* ((_macro160223_ _hd160204160218_)
                                             (_body160225_ _tl160205160220_))
                                        (if (gx#core-bound-identifier?__%
                                             _macro160223_
                                             gx#syntax-binding?)
                                            (_K160154_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _macro160223_)
                                                    _hd160186_
                                                    _method160150_)
                                                   _rest160187_)
                                             _r160188_)
                                            (_E160202160211_)))))
                                  (_E160202160211_))))
                           (_E160191160241_
                            (lambda ()
                              (if (gx#stx-pair? _e160189160207_)
                                  (let ((_e160199160231_
                                         (gx#syntax-e _e160189160207_)))
                                    (let ((_hd160200160234_
                                           (##car _e160199160231_))
                                          (_tl160201160236_
                                           (##cdr _e160199160231_)))
                                      (if (eq? (gx#stx-e _hd160200160234_)
                                               'begin:)
                                          (let ((_body160239_
                                                 _tl160201160236_))
                                            (if '#t
                                                (_K160154_
                                                 (gx#stx-foldr
                                                  cons
                                                  _rest160187_
                                                  _body160239_)
                                                 _r160188_)
                                                (_E160198160227_)))
                                          (_E160198160227_))))
                                  (_E160198160227_))))
                           (_E160190160268_
                            (lambda ()
                              (if (gx#stx-pair? _e160189160207_)
                                  (let ((_e160192160245_
                                         (gx#syntax-e _e160189160207_)))
                                    (let ((_hd160193160248_
                                           (##car _e160192160245_))
                                          (_tl160194160250_
                                           (##cdr _e160192160245_)))
                                      (if (eq? (gx#stx-e _hd160193160248_)
                                               'phi:)
                                          (if (gx#stx-pair? _tl160194160250_)
                                              (let ((_e160195160253_
                                                     (gx#syntax-e
                                                      _tl160194160250_)))
                                                (let ((_hd160196160256_
                                                       (##car _e160195160253_))
                                                      (_tl160197160258_
                                                       (##cdr _e160195160253_)))
                                                  (let* ((_dphi160261_
                                                          _hd160196160256_)
                                                         (_body160263_
                                                          _tl160197160258_))
                                                    (if (gx#stx-fixnum?
                                                         _dphi160261_)
                                                        (let ((_rbody160266_
                                                               (call-with-parameters
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_K160154_ _body160263_ '()))
                        _current-phi160151_
                        (fx+ (gx#stx-e _dphi160261_) (_current-phi160151_)))))
                  (_K160154_
                   _rest160187_
                   (foldr1 cons _r160188_ _rbody160266_)))
                (_E160191160241_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E160191160241_))
                                          (_E160191160241_))))
                                  (_E160191160241_)))))
                      (_E160190160268_)))))
          (let* ((_e160156160163_ _stx160148_)
                 (_E160158160167_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e160156160163_)))
                 (_E160157160182_
                  (lambda ()
                    (if (gx#stx-pair? _e160156160163_)
                        (let ((_e160159160171_ (gx#syntax-e _e160156160163_)))
                          (let ((_hd160160160174_ (##car _e160159160171_))
                                (_tl160161160176_ (##cdr _e160159160171_)))
                            (let ((_body160179_ _tl160161160176_))
                              (if '#t
                                  (if (_current-phi160151_)
                                      (_K160154_ _body160179_ '())
                                      (call-with-parameters
                                       (lambda () (_K160154_ _body160179_ '()))
                                       _current-phi160151_
                                       (gx#current-expander-phi)))
                                  (_E160158160167_)))))
                        (_E160158160167_)))))
            (_E160157160182_)))))
    (define gx#core-expand-import%__%
      (lambda (_stx159815_ _internal-expand?159816_)
        (letrec ((_expand1159818_
                  (lambda (_hd160128_ _K160129_ _rest160130_ _r160131_)
                    (if (gx#core-bound-module? _hd160128_)
                        (_import1159819_
                         (gx#syntax-local-e__0 _hd160128_)
                         _K160129_
                         _rest160130_
                         _r160131_)
                        (if (gx#core-library-module-path? _hd160128_)
                            (_import1159819_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _hd160128_))
                             _K160129_
                             _rest160130_
                             _r160131_)
                            (if (gx#core-library-relative-module-path?
                                 _hd160128_)
                                (_import1159819_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _hd160128_))
                                 _K160129_
                                 _rest160130_
                                 _r160131_)
                                (let ((_e160133_ (gx#stx-e _hd160128_)))
                                  (if (pair? _e160133_)
                                      (let ((_$e160135_
                                             (gx#stx-e (car _e160133_))))
                                        (if (eq? 'spec: _$e160135_)
                                            (_import-spec159822_
                                             _hd160128_
                                             _K160129_
                                             _rest160130_
                                             _r160131_)
                                            (if (eq? 'in: _$e160135_)
                                                (_import-submodule159820_
                                                 _hd160128_
                                                 _K160129_
                                                 _rest160130_
                                                 _r160131_)
                                                (if (eq? 'runtime: _$e160135_)
                                                    (_import-runtime159821_
                                                     _hd160128_
                                                     _K160129_
                                                     _rest160130_
                                                     _r160131_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _stx159815_
                                                     _hd160128_)))))
                                      (if (string? _e160133_)
                                          (_import1159819_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _hd160128_
                                             (gx#stx-source _stx159815_)))
                                           _K160129_
                                           _rest160130_
                                           _r160131_)
                                          (if (##structure-instance-of?
                                               _e160133_
                                               'gx#module-context::t)
                                              (_K160129_
                                               _rest160130_
                                               (cons _e160133_ _r160131_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _stx159815_
                                               _hd160128_))))))))))
                 (_import1159819_
                  (lambda (_ctx160117_ _K160118_ _rest160119_ _r160120_)
                    (let ((_dphi160122_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_K160118_
                       _rest160119_
                       (cons (##structure
                              gx#import-set::t
                              _ctx160117_
                              _dphi160122_
                              (map (lambda (_g160123160125_)
                                     (gx#core-module-export->import__%
                                      _g160123160125_
                                      '#f
                                      _dphi160122_))
                                   (##unchecked-structure-ref
                                    _ctx160117_
                                    '9
                                    gx#module-context::t
                                    '#f)))
                             _r160120_)))))
                 (_import-submodule159820_
                  (lambda (_hd160084_ _K160085_ _rest160086_ _r160087_)
                    (let* ((_e160088160095_ _hd160084_)
                           (_E160090160099_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e160088160095_)))
                           (_E160089160113_
                            (lambda ()
                              (if (gx#stx-pair? _e160088160095_)
                                  (let ((_e160091160103_
                                         (gx#syntax-e _e160088160095_)))
                                    (let ((_hd160092160106_
                                           (##car _e160091160103_))
                                          (_tl160093160108_
                                           (##cdr _e160091160103_)))
                                      (let ((_spath160111_ _tl160093160108_))
                                        (if '#t
                                            (_import1159819_
                                             (_import-spec-source159823_
                                              _spath160111_)
                                             _K160085_
                                             _rest160086_
                                             _r160087_)
                                            (_E160090160099_)))))
                                  (_E160090160099_)))))
                      (_E160089160113_))))
                 (_import-runtime159821_
                  (lambda (_hd160051_ _K160052_ _rest160053_ _r160054_)
                    (let* ((_e160055160062_ _hd160051_)
                           (_E160057160066_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e160055160062_)))
                           (_E160056160080_
                            (lambda ()
                              (if (gx#stx-pair? _e160055160062_)
                                  (let ((_e160058160070_
                                         (gx#syntax-e _e160055160062_)))
                                    (let ((_hd160059160073_
                                           (##car _e160058160070_))
                                          (_tl160060160075_
                                           (##cdr _e160058160070_)))
                                      (let ((_spath160078_ _tl160060160075_))
                                        (if '#t
                                            (_K160052_
                                             _rest160053_
                                             (cons (_import-spec-source159823_
                                                    _spath160078_)
                                                   _r160054_))
                                            (_E160057160066_)))))
                                  (_E160057160066_)))))
                      (_E160056160080_))))
                 (_import-spec159822_
                  (lambda (_hd159890_ _K159891_ _rest159892_ _r159893_)
                    (let* ((_e159894159911_ _hd159890_)
                           (_E159903159915_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e159894159911_)))
                           (_E159896160025_
                            (lambda ()
                              (if (gx#stx-pair? _e159894159911_)
                                  (let ((_e159904159919_
                                         (gx#syntax-e _e159894159911_)))
                                    (let ((_hd159905159922_
                                           (##car _e159904159919_))
                                          (_tl159906159924_
                                           (##cdr _e159904159919_)))
                                      (if (gx#stx-pair? _tl159906159924_)
                                          (let ((_e159907159927_
                                                 (gx#syntax-e
                                                  _tl159906159924_)))
                                            (let ((_hd159908159930_
                                                   (##car _e159907159927_))
                                                  (_tl159909159932_
                                                   (##cdr _e159907159927_)))
                                              (let* ((_path159935_
                                                      _hd159908159930_)
                                                     (_specs159937_
                                                      _tl159909159932_))
                                                (if '#t
                                                    (let ((_src-ctx159939_
                                                           (_import-spec-source159823_
                                                            _path159935_))
                                                          (_exports159940_
                                                           (make-table))
                                                          (_specs159941_
                                                           (gx#syntax->list
                                                            _specs159937_)))
                                                      (for-each
                                                       (lambda (_out159943_)
                                                         (table-set!
                                                          _exports159940_
                                                          (cons (##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _out159943_
                         '3
                         gx#module-export::t
                         '#f)
                        (##unchecked-structure-ref
                         _out159943_
                         '4
                         gx#module-export::t
                         '#f))
                  _out159943_))
               (##unchecked-structure-ref
                _src-ctx159939_
                '9
                gx#module-context::t
                '#f))
              (_K159891_
               _rest159892_
               (foldl1 (lambda (_spec159945_ _r159946_)
                         (let* ((_e159947159963_ _spec159945_)
                                (_E159949159967_
                                 (lambda ()
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid syntax-case clause"
                                    _e159947159963_)))
                                (_E159948160021_
                                 (lambda ()
                                   (if (gx#stx-pair? _e159947159963_)
                                       (let ((_e159950159971_
                                              (gx#syntax-e _e159947159963_)))
                                         (let ((_hd159951159974_
                                                (##car _e159950159971_))
                                               (_tl159952159976_
                                                (##cdr _e159950159971_)))
                                           (let ((_phi159979_
                                                  _hd159951159974_))
                                             (if (gx#stx-pair?
                                                  _tl159952159976_)
                                                 (let ((_e159953159981_
                                                        (gx#syntax-e
                                                         _tl159952159976_)))
                                                   (let ((_hd159954159984_
                                                          (##car _e159953159981_))
                                                         (_tl159955159986_
                                                          (##cdr _e159953159981_)))
                                                     (let ((_name159989_
                                                            _hd159954159984_))
                                                       (if (gx#stx-pair?
                                                            _tl159955159986_)
                                                           (let ((_e159956159991_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl159955159986_)))
                     (let ((_hd159957159994_ (##car _e159956159991_))
                           (_tl159958159996_ (##cdr _e159956159991_)))
                       (let ((_src-phi159999_ _hd159957159994_))
                         (if (gx#stx-pair? _tl159958159996_)
                             (let ((_e159959160001_
                                    (gx#syntax-e _tl159958159996_)))
                               (let ((_hd159960160004_ (##car _e159959160001_))
                                     (_tl159961160006_
                                      (##cdr _e159959160001_)))
                                 (let ((_src-name160009_ _hd159960160004_))
                                   (if (gx#stx-null? _tl159961160006_)
                                       (if (and (gx#stx-fixnum?
                                                 _src-phi159999_)
                                                (gx#identifier?
                                                 _src-name160009_)
                                                (gx#stx-fixnum? _phi159979_)
                                                (gx#identifier? _name159989_))
                                           (let ((_src-phi160011_
                                                  (gx#stx-e _src-phi159999_))
                                                 (_src-name160012_
                                                  (gx#core-identifier-key
                                                   _src-name160009_))
                                                 (_phi160013_
                                                  (gx#stx-e _phi159979_))
                                                 (_name160014_
                                                  (gx#core-identifier-key
                                                   _name159989_)))
                                             (let ((_$e160016_
                                                    (table-ref
                                                     _exports159940_
                                                     (cons _src-phi160011_
                                                           _src-name160012_)
                                                     '#f)))
                                               (if _$e160016_
                                                   ((lambda (_out160019_)
                                                      (cons (gx#core-module-export->import__%
                                                             _out160019_
                                                             _name160014_
                                                             (fx- _phi160013_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _src-phi160011_))
                    _r159946_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _$e160016_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; no matching export"
                                                    _stx159815_
                                                    _hd159890_))))
                                           (_E159949159967_))
                                       (_E159949159967_)))))
                             (_E159949159967_)))))
                   (_E159949159967_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E159949159967_)))))
                                       (_E159949159967_)))))
                           (_E159948160021_)))
                       _r159893_
                       _specs159941_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E159903159915_)))))
                                          (_E159903159915_))))
                                  (_E159903159915_))))
                           (_E159895160047_
                            (lambda ()
                              (if (gx#stx-pair? _e159894159911_)
                                  (let ((_e159897160029_
                                         (gx#syntax-e _e159894159911_)))
                                    (let ((_hd159898160032_
                                           (##car _e159897160029_))
                                          (_tl159899160034_
                                           (##cdr _e159897160029_)))
                                      (if (gx#stx-pair? _tl159899160034_)
                                          (let ((_e159900160037_
                                                 (gx#syntax-e
                                                  _tl159899160034_)))
                                            (let ((_hd159901160040_
                                                   (##car _e159900160037_))
                                                  (_tl159902160042_
                                                   (##cdr _e159900160037_)))
                                              (let ((_path160045_
                                                     _hd159901160040_))
                                                (if (gx#stx-null?
                                                     _tl159902160042_)
                                                    (if '#t
                                                        (_K159891_
                                                         _rest159892_
                                                         (cons (_import-spec-source159823_
                                                                _path160045_)
                                                               _r159893_))
                                                        (_E159896160025_))
                                                    (_E159896160025_)))))
                                          (_E159896160025_))))
                                  (_E159896160025_)))))
                      (_E159895160047_))))
                 (_import-spec-source159823_
                  (lambda (_spath159888_)
                    (gx#core-import-nested-module _spath159888_ _stx159815_)))
                 (_import!159824_
                  (lambda (_rbody159837_)
                    (letrec* ((_current-ctx159839_
                               (gx#current-expander-context))
                              (_deps159840_ (make-table 'test: eq?))
                              (_bind!159841_
                               (lambda (_hd159886_)
                                 (gx#core-bind-import!__1
                                  _hd159886_
                                  _current-ctx159839_))))
                      (let _lp159843_ ((_rest159845_ _rbody159837_)
                                       (_body159846_ '()))
                        (let* ((_rest159847159855_ _rest159845_)
                               (_else159849159865_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _current-ctx159839_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _current-ctx159839_
                                       (foldl1 cons
                                               (##unchecked-structure-ref
                                                _current-ctx159839_
                                                '8
                                                gx#module-context::t
                                                '#f)
                                               _body159846_)
                                       '8
                                       gx#module-context::t
                                       '#f)
                                      '#!void)
                                  (table-for-each
                                   (lambda (_ctx159863_ _g167261_)
                                     (gx#eval-module _ctx159863_))
                                   _deps159840_)
                                  _body159846_))
                               (_K159851159874_
                                (lambda (_rest159868_ _hd159869_)
                                  (if (##structure-direct-instance-of?
                                       _hd159869_
                                       'gx#module-import::t)
                                      (begin
                                        (_bind!159841_ _hd159869_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _hd159869_
                                                   '3
                                                   gx#module-import::t
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _hd159869_
                                                            '1
                                                            gx#module-import::t
                                                            '#f)
                                                           '3
                                                           gx#module-export::t
                                                           '#f)))
                                            (table-set!
                                             _deps159840_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _hd159869_
                                               '1
                                               gx#module-import::t
                                               '#f)
                                              '1
                                              gx#module-export::t
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _hd159869_
                                           'gx#import-set::t)
                                          (begin
                                            (for-each
                                             _bind!159841_
                                             (##unchecked-structure-ref
                                              _hd159869_
                                              '3
                                              gx#import-set::t
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _hd159869_
                                                  '2
                                                  gx#import-set::t
                                                  '#f))
                                                (table-set!
                                                 _deps159840_
                                                 (##unchecked-structure-ref
                                                  _hd159869_
                                                  '1
                                                  gx#import-set::t
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_$e159871_
                                                 (##structure-instance-of?
                                                  _hd159869_
                                                  'gx#module-context::t)))
                                            (if _$e159871_
                                                _$e159871_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _stx159815_
                                                 _hd159869_)))))
                                  (_lp159843_
                                   _rest159868_
                                   (cons _hd159869_ _body159846_)))))
                          (if (##pair? _rest159847159855_)
                              (let ((_hd159852159877_
                                     (##car _rest159847159855_))
                                    (_tl159853159879_
                                     (##cdr _rest159847159855_)))
                                (let* ((_hd159882_ _hd159852159877_)
                                       (_rest159884_ _tl159853159879_))
                                  (_K159851159874_ _rest159884_ _hd159882_)))
                              (_else159849159865_)))))))
                 (_expanded-import?159825_
                  (lambda (_e159829_)
                    (let ((_$e159831_
                           (##structure-direct-instance-of?
                            _e159829_
                            'gx#import-set::t)))
                      (if _$e159831_
                          _$e159831_
                          (let ((_$e159834_
                                 (##structure-direct-instance-of?
                                  _e159829_
                                  'gx#module-import::t)))
                            (if _$e159834_
                                _$e159834_
                                (##structure-instance-of?
                                 _e159829_
                                 'gx#module-context::t))))))))
          (let ((_rbody159827_
                 (gx#core-expand-import/export
                  _stx159815_
                  _expanded-import?159825_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _expand1159818_)))
            (if _internal-expand?159816_
                (reverse _rbody159827_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_import!159824_ _rbody159827_))
                 (gx#stx-source _stx159815_)))))))
    (define gx#core-expand-import%__0
      (lambda (_stx160141_)
        (let ((_internal-expand?160143_ '#f))
          (gx#core-expand-import%__% _stx160141_ _internal-expand?160143_))))
    (define gx#core-expand-import%
      (lambda _g167263_
        (let ((_g167262_ (##length _g167263_)))
          (cond ((##fx= _g167262_ 1)
                 (apply (lambda (_stx160141_)
                          (gx#core-expand-import%__0 _stx160141_))
                        _g167263_))
                ((##fx= _g167262_ 2)
                 (apply (lambda (_stx160145_ _internal-expand?160146_)
                          (gx#core-expand-import%__%
                           _stx160145_
                           _internal-expand?160146_))
                        _g167263_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g167263_))))))
    (define gx#core-import-nested-module
      (lambda (_spath159742_ _where159743_)
        (let* ((_e159744159751_ _spath159742_)
               (_E159746159755_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e159744159751_)))
               (_E159745159810_
                (lambda ()
                  (if (gx#stx-pair? _e159744159751_)
                      (let ((_e159747159759_ (gx#syntax-e _e159744159751_)))
                        (let ((_hd159748159762_ (##car _e159747159759_))
                              (_tl159749159764_ (##cdr _e159747159759_)))
                          (let* ((_origin159767_ _hd159748159762_)
                                 (_sub159769_ _tl159749159764_))
                            (if '#t
                                (let ((_origin-ctx159771_
                                       (if (gx#stx-false? _origin159767_)
                                           (gx#current-expander-context)
                                           (gx#import-module__0
                                            _origin159767_))))
                                  (let _lp159773_ ((_rest159775_ _sub159769_)
                                                   (_ctx159776_
                                                    _origin-ctx159771_))
                                    (let* ((_e159777159784_ _rest159775_)
                                           (_E159779159788_
                                            (lambda () _ctx159776_))
                                           (_E159778159806_
                                            (lambda ()
                                              (if (gx#stx-pair?
                                                   _e159777159784_)
                                                  (let ((_e159780159792_
                                                         (gx#syntax-e
                                                          _e159777159784_)))
                                                    (let ((_hd159781159795_
                                                           (##car _e159780159792_))
                                                          (_tl159782159797_
                                                           (##cdr _e159780159792_)))
                                                      (let* ((_id159800_
                                                              _hd159781159795_)
                                                             (_rest159802_
                                                              _tl159782159797_))
                                                        (if '#t
                                                            (let ((_bind159804_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#resolve-identifier__%
                            _id159800_
                            '0
                            _ctx159776_)))
                      (if (and (##structure-direct-instance-of?
                                _bind159804_
                                'gx#syntax-binding::t)
                               (##structure-instance-of?
                                (##unchecked-structure-ref
                                 _bind159804_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                'gx#module-context::t))
                          '#!void
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; not bound as module"
                           _where159743_
                           _spath159742_
                           _id159800_))
                      (_lp159773_
                       _rest159802_
                       (##unchecked-structure-ref
                        _bind159804_
                        '4
                        gx#syntax-binding::t
                        '#f)))
                    (_E159779159788_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E159779159788_)))))
                                      (_E159778159806_))))
                                (_E159746159755_)))))
                      (_E159746159755_)))))
          (_E159745159810_))))
    (define gx#core-expand-import-source
      (lambda (_hd159740_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _hd159740_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_stx159248_ _internal-expand?159249_)
        (letrec* ((_make-export__167192167193_
                   (lambda (_bind159688_ _phi159689_ _ctx159690_ _name159691_)
                     (let* ((_key159693_
                             (##unchecked-structure-ref
                              _bind159688_
                              '2
                              gx#binding::t
                              '#f))
                            (_export-key159695_
                             (if _name159691_
                                 (gx#core-identifier-key _name159691_)
                                 _key159693_)))
                       (##structure
                        gx#module-export::t
                        _ctx159690_
                        _key159693_
                        _phi159689_
                        _export-key159695_
                        (let ((_$e159698_
                               (##structure-instance-of?
                                _bind159688_
                                'gx#extern-binding::t)))
                          (if _$e159698_
                              _$e159698_
                              (##structure-direct-instance-of?
                               _bind159688_
                               'gx#import-binding::t)))))))
                  (_make-export__0__167194167197_
                   (lambda (_bind159704_)
                     (let* ((_phi159706_ (gx#current-export-expander-phi))
                            (_ctx159708_ (gx#current-expander-context))
                            (_name159710_ '#f))
                       (_make-export__167192167193_
                        _bind159704_
                        _phi159706_
                        _ctx159708_
                        _name159710_))))
                  (_make-export__1__167195167198_
                   (lambda (_bind159712_ _phi159713_)
                     (let* ((_ctx159715_ (gx#current-expander-context))
                            (_name159717_ '#f))
                       (_make-export__167192167193_
                        _bind159712_
                        _phi159713_
                        _ctx159715_
                        _name159717_))))
                  (_make-export__2__167196167199_
                   (lambda (_bind159719_ _phi159720_ _ctx159721_)
                     (let ((_name159723_ '#f))
                       (_make-export__167192167193_
                        _bind159719_
                        _phi159720_
                        _ctx159721_
                        _name159723_))))
                  (_make-export159251_
                   (lambda _g167265_
                     (let ((_g167264_ (##length _g167265_)))
                       (cond ((##fx= _g167264_ 1)
                              (apply (lambda (_bind159704_)
                                       (_make-export__0__167194167197_
                                        _bind159704_))
                                     _g167265_))
                             ((##fx= _g167264_ 2)
                              (apply (lambda (_bind159712_ _phi159713_)
                                       (_make-export__1__167195167198_
                                        _bind159712_
                                        _phi159713_))
                                     _g167265_))
                             ((##fx= _g167264_ 3)
                              (apply (lambda (_bind159719_
                                              _phi159720_
                                              _ctx159721_)
                                       (_make-export__2__167196167199_
                                        _bind159719_
                                        _phi159720_
                                        _ctx159721_))
                                     _g167265_))
                             ((##fx= _g167264_ 4)
                              (apply (lambda (_bind159725_
                                              _phi159726_
                                              _ctx159727_
                                              _name159728_)
                                       (_make-export__167192167193_
                                        _bind159725_
                                        _phi159726_
                                        _ctx159727_
                                        _name159728_))
                                     _g167265_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g167265_))))))
                  (_expand1159252_
                   (lambda (_hd159401_ _K159402_ _rest159403_ _r159404_)
                     (let* ((_e159405159437_ _hd159401_)
                            (_E159432159441_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _stx159248_
                                _hd159401_)))
                            (_E159422159520_
                             (lambda ()
                               (if (gx#stx-pair? _e159405159437_)
                                   (let ((_e159433159445_
                                          (gx#syntax-e _e159405159437_)))
                                     (let ((_hd159434159448_
                                            (##car _e159433159445_))
                                           (_tl159435159450_
                                            (##cdr _e159433159445_)))
                                       (if (eq? (gx#stx-e _hd159434159448_)
                                                'import:)
                                           (let ((_in159453_ _tl159435159450_))
                                             (if (gx#stx-list? _in159453_)
                                                 (let _lp159455_ ((_in-rest159457_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _in159453_)
                          (_r159458_ _r159404_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_e159459159466_
                                                           _in-rest159457_)
                                                          (_E159461159470_
                                                           (lambda ()
                                                             (_K159402_
                                                              _rest159403_
                                                              _r159458_)))
                                                          (_E159460159516_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _e159459159466_)
                         (let ((_e159462159474_ (gx#syntax-e _e159459159466_)))
                           (let ((_hd159463159477_ (##car _e159462159474_))
                                 (_tl159464159479_ (##cdr _e159462159474_)))
                             (let* ((_hd159482_ _hd159463159477_)
                                    (_in-rest159484_ _tl159464159479_))
                               (if '#t
                                   (let ((_src159514_
                                          (if (gx#core-bound-module?
                                               _hd159482_)
                                              (gx#syntax-local-e__0 _hd159482_)
                                              (if (gx#core-library-module-path?
                                                   _hd159482_)
                                                  (gx#import-module__0
                                                   (gx#core-resolve-library-module-path
                                                    _hd159482_))
                                                  (if (gx#core-library-relative-module-path?
                                                       _hd159482_)
                                                      (gx#import-module__0
                                                       (gx#core-resolve-library-relative-module-path
                                                        _hd159482_))
                                                      (if (gx#stx-string?
                                                           _hd159482_)
                                                          (gx#import-module__0
                                                           (gx#core-resolve-module-path__%
                                                            _hd159482_
                                                            (gx#stx-source
                                                             _stx159248_)))
                                                          (let* ((_e159485159492_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd159482_)
                         (_E159487159496_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; illegal re-export"
                             _stx159248_
                             _hd159482_)))
                         (_E159486159510_
                          (lambda ()
                            (if (gx#stx-pair? _e159485159492_)
                                (let ((_e159488159500_
                                       (gx#syntax-e _e159485159492_)))
                                  (let ((_hd159489159503_
                                         (##car _e159488159500_))
                                        (_tl159490159505_
                                         (##cdr _e159488159500_)))
                                    (if (eq? (gx#stx-e _hd159489159503_) 'in:)
                                        (let ((_spath159508_ _tl159490159505_))
                                          (if '#t
                                              (gx#core-import-nested-module
                                               _spath159508_
                                               _stx159248_)
                                              (_E159487159496_)))
                                        (_E159487159496_))))
                                (_E159487159496_)))))
                    (_E159486159510_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_lp159455_
                                      _in-rest159484_
                                      (_export-imports159253_
                                       _src159514_
                                       _r159458_)))
                                   (_E159461159470_)))))
                         (_E159461159470_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E159460159516_)))
                                                 (_E159432159441_)))
                                           (_E159432159441_))))
                                   (_E159432159441_))))
                            (_E159409159559_
                             (lambda ()
                               (if (gx#stx-pair? _e159405159437_)
                                   (let ((_e159423159524_
                                          (gx#syntax-e _e159405159437_)))
                                     (let ((_hd159424159527_
                                            (##car _e159423159524_))
                                           (_tl159425159529_
                                            (##cdr _e159423159524_)))
                                       (if (eq? (gx#stx-e _hd159424159527_)
                                                'rename:)
                                           (if (gx#stx-pair? _tl159425159529_)
                                               (let ((_e159426159532_
                                                      (gx#syntax-e
                                                       _tl159425159529_)))
                                                 (let ((_hd159427159535_
                                                        (##car _e159426159532_))
                                                       (_tl159428159537_
                                                        (##cdr _e159426159532_)))
                                                   (let ((_id159540_
                                                          _hd159427159535_))
                                                     (if (gx#stx-pair?
                                                          _tl159428159537_)
                                                         (let ((_e159429159542_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl159428159537_)))
                   (let ((_hd159430159545_ (##car _e159429159542_))
                         (_tl159431159547_ (##cdr _e159429159542_)))
                     (let ((_name159550_ _hd159430159545_))
                       (if (gx#stx-null? _tl159431159547_)
                           (if '#t
                               (let* ((_phi159552_
                                       (gx#current-export-expander-phi))
                                      (_$e159554_
                                       (gx#core-resolve-identifier__1
                                        _id159540_
                                        _phi159552_)))
                                 (if _$e159554_
                                     ((lambda (_bind159557_)
                                        (_K159402_
                                         _rest159403_
                                         (cons (_make-export__167192167193_
                                                _bind159557_
                                                _phi159552_
                                                (gx#current-expander-context)
                                                _name159550_)
                                               _r159404_)))
                                      _$e159554_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Reference to unbound identifier"
                                      _stx159248_
                                      _hd159401_
                                      _id159540_)))
                               (_E159422159520_))
                           (_E159422159520_)))))
                 (_E159422159520_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E159422159520_))
                                           (_E159422159520_))))
                                   (_E159422159520_))))
                            (_E159408159608_
                             (lambda ()
                               (if (gx#stx-pair? _e159405159437_)
                                   (let ((_e159410159563_
                                          (gx#syntax-e _e159405159437_)))
                                     (let ((_hd159411159566_
                                            (##car _e159410159563_))
                                           (_tl159412159568_
                                            (##cdr _e159410159563_)))
                                       (if (eq? (gx#stx-e _hd159411159566_)
                                                'spec:)
                                           (if (gx#stx-pair? _tl159412159568_)
                                               (let ((_e159413159571_
                                                      (gx#syntax-e
                                                       _tl159412159568_)))
                                                 (let ((_hd159414159574_
                                                        (##car _e159413159571_))
                                                       (_tl159415159576_
                                                        (##cdr _e159413159571_)))
                                                   (let ((_phi159579_
                                                          _hd159414159574_))
                                                     (if (gx#stx-pair?
                                                          _tl159415159576_)
                                                         (let ((_e159416159581_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl159415159576_)))
                   (let ((_hd159417159584_ (##car _e159416159581_))
                         (_tl159418159586_ (##cdr _e159416159581_)))
                     (let ((_id159589_ _hd159417159584_))
                       (if (gx#stx-pair? _tl159418159586_)
                           (let ((_e159419159591_
                                  (gx#syntax-e _tl159418159586_)))
                             (let ((_hd159420159594_ (##car _e159419159591_))
                                   (_tl159421159596_ (##cdr _e159419159591_)))
                               (let ((_name159599_ _hd159420159594_))
                                 (if (gx#stx-null? _tl159421159596_)
                                     (if (and (gx#stx-fixnum? _phi159579_)
                                              (gx#identifier? _id159589_)
                                              (gx#identifier? _name159599_))
                                         (let* ((_phi159601_
                                                 (gx#stx-e _phi159579_))
                                                (_$e159603_
                                                 (gx#core-resolve-identifier__1
                                                  _id159589_
                                                  _phi159601_)))
                                           (if _$e159603_
                                               ((lambda (_bind159606_)
                                                  (_K159402_
                                                   _rest159403_
                                                   (cons (_make-export__167192167193_
                                                          _bind159606_
                                                          _phi159601_
                                                          (gx#current-expander-context)
                                                          _name159599_)
                                                         _r159404_)))
                                                _$e159603_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _stx159248_
                                                _hd159401_
                                                _id159589_)))
                                         (_E159409159559_))
                                     (_E159409159559_)))))
                           (_E159409159559_)))))
                 (_E159409159559_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E159409159559_))
                                           (_E159409159559_))))
                                   (_E159409159559_))))
                            (_E159407159619_
                             (lambda ()
                               (let ((_id159612_ _e159405159437_))
                                 (if (gx#identifier? _id159612_)
                                     (let ((_$e159614_
                                            (gx#core-resolve-identifier__1
                                             _id159612_
                                             (gx#current-export-expander-phi))))
                                       (if _$e159614_
                                           ((lambda (_bind159617_)
                                              (_K159402_
                                               _rest159403_
                                               (cons (_make-export__0__167194167197_
                                                      _bind159617_)
                                                     _r159404_)))
                                            _$e159614_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _stx159248_
                                            _hd159401_)))
                                     (_E159408159608_)))))
                            (_E159406159683_
                             (lambda ()
                               (if (eq? (gx#stx-e _e159405159437_) '#t)
                                   (if '#t
                                       (let* ((_current-ctx159623_
                                               (gx#current-expander-context))
                                              (_current-phi159625_
                                               (gx#current-export-expander-phi))
                                              (_phi-ctx159627_
                                               (gx#core-context-shift
                                                _current-ctx159623_
                                                _current-phi159625_))
                                              (_phi-bind159629_
                                               (table->list
                                                (##unchecked-structure-ref
                                                 _phi-ctx159627_
                                                 '2
                                                 gx#expander-context::t
                                                 '#f))))
                                         (let _lp159632_ ((_bind-rest159634_
                                                           _phi-bind159629_)
                                                          (_set159635_ '()))
                                           (let* ((_bind-rest159636159646_
                                                   _bind-rest159634_)
                                                  (_else159638159654_
                                                   (lambda ()
                                                     (_K159402_
                                                      _rest159403_
                                                      (cons (##structure
                                                             gx#export-set::t
                                                             '#f
                                                             _current-phi159625_
                                                             _set159635_)
                                                            _r159404_))))
                                                  (_K159640159664_
                                                   (lambda (_bind-rest159657_
                                                            _bind159658_
                                                            _key159659_)
                                                     (if (or (##structure-direct-instance-of?
                                                              _bind159658_
                                                              'gx#import-binding::t)
                                                             (gx#private-feature-binding?
                                                              _bind159658_))
                                                         (_lp159632_
                                                          _bind-rest159657_
                                                          _set159635_)
                                                         (_lp159632_
                                                          _bind-rest159657_
                                                          (cons (_make-export__2__167196167199_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind159658_
                         _current-phi159625_
                         _current-ctx159623_)
                        _set159635_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _bind-rest159636159646_)
                                                 (let ((_hd159641159667_
                                                        (##car _bind-rest159636159646_))
                                                       (_tl159642159669_
                                                        (##cdr _bind-rest159636159646_)))
                                                   (if (##pair? _hd159641159667_)
                                                       (let ((_hd159643159672_
                                                              (##car _hd159641159667_))
                                                             (_tl159644159674_
                                                              (##cdr _hd159641159667_)))
                                                         (let* ((_key159677_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd159643159672_)
                        (_bind159679_ _tl159644159674_)
                        (_bind-rest159681_ _tl159642159669_))
                   (_K159640159664_
                    _bind-rest159681_
                    _bind159679_
                    _key159677_)))
               (_else159638159654_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_else159638159654_)))))
                                       (_E159407159619_))
                                   (_E159407159619_)))))
                       (_E159406159683_))))
                  (_export-imports159253_
                   (lambda (_src159277_ _r159278_)
                     (letrec* ((_current-ctx159280_
                                (gx#current-expander-context))
                               (_current-phi159281_
                                (gx#current-export-expander-phi))
                               (_import->export159282_
                                (lambda (_in159363_)
                                  (let* ((_in159364159372_ _in159363_)
                                         (_E159366159376_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _in159364159372_)))
                                         (_K159367159383_
                                          (lambda (_phi159379_
                                                   _key159380_
                                                   _out159381_)
                                            (##structure
                                             gx#module-export::t
                                             _current-ctx159280_
                                             _key159380_
                                             _phi159379_
                                             _key159380_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _in159364159372_
                                         'gx#module-import::t)
                                        (let* ((_e159368159386_
                                                (##unchecked-structure-ref
                                                 _in159364159372_
                                                 '1
                                                 gx#module-import::t
                                                 '#f))
                                               (_out159389_ _e159368159386_)
                                               (_e159369159391_
                                                (##unchecked-structure-ref
                                                 _in159364159372_
                                                 '2
                                                 gx#module-import::t
                                                 '#f))
                                               (_key159394_ _e159369159391_)
                                               (_e159370159396_
                                                (##unchecked-structure-ref
                                                 _in159364159372_
                                                 '3
                                                 gx#module-import::t
                                                 '#f))
                                               (_phi159399_ _e159370159396_))
                                          (_K159367159383_
                                           _phi159399_
                                           _key159394_
                                           _out159389_))
                                        (_E159366159376_)))))
                               (_fold-e159283_
                                (lambda (_in159285_ _r159286_)
                                  (let* ((_in159287159301_ _in159285_)
                                         (_else159290159309_
                                          (lambda () _r159286_)))
                                    (let ((_K159296159345_
                                           (lambda (_phi159341_
                                                    _key159342_
                                                    _out159343_)
                                             (if (and (fx= _phi159341_
                                                           _current-phi159281_)
                                                      (eq? _src159277_
                                                           (##unchecked-structure-ref
                                                            _out159343_
                                                            '1
                                                            gx#module-export::t
                                                            '#f)))
                                                 (cons (_import->export159282_
                                                        _in159285_)
                                                       _r159286_)
                                                 _r159286_)))
                                          (_K159292159320_
                                           (lambda (_imports159313_
                                                    _phi159314_
                                                    _ctx159315_)
                                             (if (and (fx= _phi159314_
                                                           _current-phi159281_)
                                                      (eq? _src159277_
                                                           _ctx159315_))
                                                 (foldl1 (lambda (_in159317_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r159318_)
                   (cons (_import->export159282_ _in159317_) _r159318_))
                 _r159286_
                 _imports159313_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _r159286_))))
                                      (let ((_try-match159289159338_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _in159287159301_
                                                    'gx#import-set::t)
                                                   (let* ((_e159293159323_
                                                           (##unchecked-structure-ref
                                                            _in159287159301_
                                                            '1
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e159294159328_
                                                           (##unchecked-structure-ref
                                                            _in159287159301_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e159295159333_
                                                           (##unchecked-structure-ref
                                                            _in159287159301_
                                                            '3
                                                            gx#import-set::t
                                                            '#f)))
                                                     (let ((_ctx159326_
                                                            _e159293159323_)
                                                           (_phi159331_
                                                            _e159294159328_)
                                                           (_imports159336_
                                                            _e159295159333_))
                                                       (_K159292159320_
                                                        _imports159336_
                                                        _phi159331_
                                                        _ctx159326_)))
                                                   (_else159290159309_)))))
                                        (if (##structure-direct-instance-of?
                                             _in159287159301_
                                             'gx#module-import::t)
                                            (let* ((_e159297159348_
                                                    (##unchecked-structure-ref
                                                     _in159287159301_
                                                     '1
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e159298159353_
                                                    (##unchecked-structure-ref
                                                     _in159287159301_
                                                     '2
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e159299159358_
                                                    (##unchecked-structure-ref
                                                     _in159287159301_
                                                     '3
                                                     gx#module-import::t
                                                     '#f)))
                                              (let ((_out159351_
                                                     _e159297159348_)
                                                    (_key159356_
                                                     _e159298159353_)
                                                    (_phi159361_
                                                     _e159299159358_))
                                                (_K159296159345_
                                                 _phi159361_
                                                 _key159356_
                                                 _out159351_)))
                                            (_try-match159289159338_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _src159277_
                              _current-phi159281_
                              (foldl1 _fold-e159283_
                                      '()
                                      (##unchecked-structure-ref
                                       _current-ctx159280_
                                       '8
                                       gx#module-context::t
                                       '#f)))
                             _r159278_))))
                  (_export!159254_
                   (lambda (_rbody159267_)
                     (letrec* ((_current-ctx159269_
                                (gx#current-expander-context))
                               (_fold-e159270_
                                (lambda (_out159274_ _r159275_)
                                  (if (##structure-direct-instance-of?
                                       _out159274_
                                       'gx#module-export::t)
                                      (cons _out159274_ _r159275_)
                                      (if (##structure-direct-instance-of?
                                           _out159274_
                                           'gx#export-set::t)
                                          (foldl1 cons
                                                  _r159275_
                                                  (##unchecked-structure-ref
                                                   _out159274_
                                                   '3
                                                   gx#export-set::t
                                                   '#f))
                                          _r159275_)))))
                       (let ((_body159272_ (reverse _rbody159267_)))
                         (##unchecked-structure-set!
                          _current-ctx159269_
                          (foldl1 _fold-e159270_
                                  (##unchecked-structure-ref
                                   _current-ctx159269_
                                   '9
                                   gx#module-context::t
                                   '#f)
                                  _body159272_)
                          '9
                          gx#module-context::t
                          '#f)
                         _body159272_))))
                  (_expanded-export?159255_
                   (lambda (_e159262_)
                     (let ((_$e159264_
                            (##structure-direct-instance-of?
                             _e159262_
                             'gx#module-export::t)))
                       (if _$e159264_
                           _$e159264_
                           (##structure-direct-instance-of?
                            _e159262_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _internal-expand?159249_)
              (let ((_rbody159260_
                     (gx#core-expand-import/export
                      _stx159248_
                      _expanded-export?159255_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _expand1159252_)))
                (if _internal-expand?159249_
                    (reverse _rbody159260_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons '%#export (_export!159254_ _rbody159260_))
                     (gx#stx-source _stx159248_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _stx159248_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _stx159248_))))))
    (define gx#core-expand-export%__0
      (lambda (_stx159733_)
        (let ((_internal-expand?159735_ '#f))
          (gx#core-expand-export%__% _stx159733_ _internal-expand?159735_))))
    (define gx#core-expand-export%
      (lambda _g167267_
        (let ((_g167266_ (##length _g167267_)))
          (cond ((##fx= _g167266_ 1)
                 (apply (lambda (_stx159733_)
                          (gx#core-expand-export%__0 _stx159733_))
                        _g167267_))
                ((##fx= _g167266_ 2)
                 (apply (lambda (_stx159737_ _internal-expand?159738_)
                          (gx#core-expand-export%__%
                           _stx159737_
                           _internal-expand?159738_))
                        _g167267_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g167267_))))))
    (define gx#core-expand-export-source
      (lambda (_hd159245_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _hd159245_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_stx159215_)
        (let* ((_e159216159223_ _stx159215_)
               (_E159218159227_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e159216159223_)))
               (_E159217159241_
                (lambda ()
                  (if (gx#stx-pair? _e159216159223_)
                      (let ((_e159219159231_ (gx#syntax-e _e159216159223_)))
                        (let ((_hd159220159234_ (##car _e159219159231_))
                              (_tl159221159236_ (##cdr _e159219159231_)))
                          (let ((_body159239_ _tl159221159236_))
                            (if (gx#identifier-list? _body159239_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _body159239_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _body159239_))
                                   (gx#stx-source _stx159215_)))
                                (_E159218159227_)))))
                      (_E159218159227_)))))
          (_E159217159241_))))
    (define gx#core-bind-feature!__%
      (lambda (_id159181_ _private?159182_ _phi159183_ _ctx159184_)
        (gx#core-bind-syntax!__%
         _id159181_
         ((if _private?159182_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _id159181_))
         _private?159182_
         _phi159183_
         _ctx159184_)))
    (define gx#core-bind-feature!__0
      (lambda (_id159189_)
        (let* ((_private?159191_ '#f)
               (_phi159193_ (gx#current-expander-phi))
               (_ctx159195_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id159189_
           _private?159191_
           _phi159193_
           _ctx159195_))))
    (define gx#core-bind-feature!__1
      (lambda (_id159197_ _private?159198_)
        (let* ((_phi159200_ (gx#current-expander-phi))
               (_ctx159202_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id159197_
           _private?159198_
           _phi159200_
           _ctx159202_))))
    (define gx#core-bind-feature!__2
      (lambda (_id159204_ _private?159205_ _phi159206_)
        (let ((_ctx159208_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id159204_
           _private?159205_
           _phi159206_
           _ctx159208_))))
    (define gx#core-bind-feature!
      (lambda _g167269_
        (let ((_g167268_ (##length _g167269_)))
          (cond ((##fx= _g167268_ 1)
                 (apply (lambda (_id159189_)
                          (gx#core-bind-feature!__0 _id159189_))
                        _g167269_))
                ((##fx= _g167268_ 2)
                 (apply (lambda (_id159197_ _private?159198_)
                          (gx#core-bind-feature!__1
                           _id159197_
                           _private?159198_))
                        _g167269_))
                ((##fx= _g167268_ 3)
                 (apply (lambda (_id159204_ _private?159205_ _phi159206_)
                          (gx#core-bind-feature!__2
                           _id159204_
                           _private?159205_
                           _phi159206_))
                        _g167269_))
                ((##fx= _g167268_ 4)
                 (apply (lambda (_id159210_
                                 _private?159211_
                                 _phi159212_
                                 _ctx159213_)
                          (gx#core-bind-feature!__%
                           _id159210_
                           _private?159211_
                           _phi159212_
                           _ctx159213_))
                        _g167269_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g167269_))))))))
