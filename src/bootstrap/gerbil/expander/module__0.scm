(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1707844656)
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
      (lambda _$args163781_
        (apply make-instance gx#module-import::t _$args163781_)))
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
      (lambda _$args163778_
        (apply make-instance gx#module-export::t _$args163778_)))
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
      (lambda _$args163775_
        (apply make-instance gx#import-set::t _$args163775_)))
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
      (lambda _$args163772_
        (apply make-instance gx#export-set::t _$args163772_)))
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
      (lambda _$args163769_
        (apply make-instance gx#import-expander::t _$args163769_)))
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
      (lambda _$args163766_
        (apply make-instance gx#export-expander::t _$args163766_)))
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
      (lambda _$args163763_
        (apply make-instance gx#import-export-expander::t _$args163763_)))
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
      (lambda (_path163760_ _fun163761_)
        (call-with-input-file
         (cons 'path: (cons _path163760_ gx#source-file-settings))
         _fun163761_)))
    (define gx#module-context:::init!
      (lambda (_self163754_ _id163755_ _super163756_ _ns163757_ _path163758_)
        (if (##fx< '11 (##structure-length _self163754_))
            (begin
              (##unchecked-structure-set!
               _self163754_
               _id163755_
               '1
               (##structure-type _self163754_)
               '#f)
              (##unchecked-structure-set!
               _self163754_
               (make-table 'test: eq?)
               '2
               (##structure-type _self163754_)
               '#f)
              (##unchecked-structure-set!
               _self163754_
               _super163756_
               '3
               (##structure-type _self163754_)
               '#f)
              (##unchecked-structure-set!
               _self163754_
               '#f
               '4
               (##structure-type _self163754_)
               '#f)
              (##unchecked-structure-set!
               _self163754_
               '#f
               '5
               (##structure-type _self163754_)
               '#f)
              (##unchecked-structure-set!
               _self163754_
               _ns163757_
               '6
               (##structure-type _self163754_)
               '#f)
              (##unchecked-structure-set!
               _self163754_
               _path163758_
               '7
               (##structure-type _self163754_)
               '#f)
              (##unchecked-structure-set!
               _self163754_
               '()
               '8
               (##structure-type _self163754_)
               '#f)
              (##unchecked-structure-set!
               _self163754_
               '()
               '9
               (##structure-type _self163754_)
               '#f)
              (##unchecked-structure-set!
               _self163754_
               '#f
               '10
               (##structure-type _self163754_)
               '#f)
              (##unchecked-structure-set!
               _self163754_
               '#f
               '11
               (##structure-type _self163754_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self163754_
                   '11
                   (##vector-length _self163754_)))))
    (bind-method! gx#module-context::t ':init! gx#module-context:::init! '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_self163598_ _ctx163599_ _root163600_)
        (let ((_super163608_
               (let ((_$e163602_ _root163600_))
                 (if _$e163602_
                     _$e163602_
                     (let ((_$e163605_ (gx#core-context-root__0)))
                       (if _$e163605_
                           _$e163605_
                           (let ((__obj168391
                                  (##structure gx#root-context::t '#f '#f)))
                             (let ((__constructor168392
                                    (direct-method-ref
                                     gx#root-context::t
                                     __obj168391
                                     ':init!)))
                               (if __constructor168392
                                   (__constructor168392 __obj168391)
                                   (error '"missing constructor method implementation"
                                          'class:
                                          gx#root-context::t
                                          'method:
                                          ':init!)))
                             __obj168391)))))))
          (if _ctx163599_
              (let ((_id163611_
                     (##structure-ref
                      _ctx163599_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_path163612_
                     (##structure-ref _ctx163599_ '7 gx#module-context::t '#f))
                    (_in163613_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _ctx163599_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_e163614_
                     (make-promise (lambda () (gx#eval-module _ctx163599_)))))
                (if (##fx< '8 (##structure-length _self163598_))
                    (begin
                      (##unchecked-structure-set!
                       _self163598_
                       _id163611_
                       '1
                       (##structure-type _self163598_)
                       '#f)
                      (##unchecked-structure-set!
                       _self163598_
                       (make-table 'test: eq? 'size: (length _in163613_))
                       '2
                       (##structure-type _self163598_)
                       '#f)
                      (##unchecked-structure-set!
                       _self163598_
                       _super163608_
                       '3
                       (##structure-type _self163598_)
                       '#f)
                      (##unchecked-structure-set!
                       _self163598_
                       '#f
                       '4
                       (##structure-type _self163598_)
                       '#f)
                      (##unchecked-structure-set!
                       _self163598_
                       '#f
                       '5
                       (##structure-type _self163598_)
                       '#f)
                      (##unchecked-structure-set!
                       _self163598_
                       _path163612_
                       '6
                       (##structure-type _self163598_)
                       '#f)
                      (##unchecked-structure-set!
                       _self163598_
                       _in163613_
                       '7
                       (##structure-type _self163598_)
                       '#f)
                      (##unchecked-structure-set!
                       _self163598_
                       _e163614_
                       '8
                       (##structure-type _self163598_)
                       '#f))
                    (error '"struct-instance-init!: too many arguments for struct"
                           _self163598_
                           '8
                           (##vector-length _self163598_)))
                (for-each
                 (lambda (_g163615163617_)
                   (gx#core-bind-weak-import!__% _g163615163617_ _self163598_))
                 _in163613_))
              (if (##fx< '8 (##structure-length _self163598_))
                  (begin
                    (##unchecked-structure-set!
                     _self163598_
                     '#f
                     '1
                     (##structure-type _self163598_)
                     '#f)
                    (##unchecked-structure-set!
                     _self163598_
                     (make-table 'test: eq?)
                     '2
                     (##structure-type _self163598_)
                     '#f)
                    (##unchecked-structure-set!
                     _self163598_
                     _super163608_
                     '3
                     (##structure-type _self163598_)
                     '#f)
                    (##unchecked-structure-set!
                     _self163598_
                     '#f
                     '4
                     (##structure-type _self163598_)
                     '#f)
                    (##unchecked-structure-set!
                     _self163598_
                     '#f
                     '5
                     (##structure-type _self163598_)
                     '#f)
                    (##unchecked-structure-set!
                     _self163598_
                     '#f
                     '6
                     (##structure-type _self163598_)
                     '#f)
                    (##unchecked-structure-set!
                     _self163598_
                     '()
                     '7
                     (##structure-type _self163598_)
                     '#f)
                    (##unchecked-structure-set!
                     _self163598_
                     '#f
                     '8
                     (##structure-type _self163598_)
                     '#f))
                  (error '"struct-instance-init!: too many arguments for struct"
                         _self163598_
                         '8
                         (##vector-length _self163598_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_self163623_ _ctx163624_)
        (let ((_root163626_ '#f))
          (gx#prelude-context:::init!__%
           _self163623_
           _ctx163624_
           _root163626_))))
    (define gx#prelude-context:::init!
      (lambda _g168398_
        (let ((_g168397_ (##length _g168398_)))
          (cond ((##fx= _g168397_ 2)
                 (apply (lambda (_self163623_ _ctx163624_)
                          (gx#prelude-context:::init!__0
                           _self163623_
                           _ctx163624_))
                        _g168398_))
                ((##fx= _g168397_ 3)
                 (apply (lambda (_self163628_ _ctx163629_ _root163630_)
                          (gx#prelude-context:::init!__%
                           _self163628_
                           _ctx163629_
                           _root163630_))
                        _g168398_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g168398_))))))
    (bind-method! gx#prelude-context::t ':init! gx#prelude-context:::init! '#f)
    (define gx#import-export-expander-init!
      (lambda (_self163472_ _e163473_)
        (if (##fx< '3 (##structure-length _self163472_))
            (begin
              (##unchecked-structure-set!
               _self163472_
               _e163473_
               '1
               (##structure-type _self163472_)
               '#f)
              (##unchecked-structure-set!
               _self163472_
               (gx#current-expander-context)
               '2
               (##structure-type _self163472_)
               '#f)
              (##unchecked-structure-set!
               _self163472_
               (fx- (gx#current-expander-phi) '1)
               '3
               (##structure-type _self163472_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self163472_
                   '3
                   (##vector-length _self163472_)))))
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
      (lambda (_g163098163101_ _g163099163103_)
        (gx#core-apply-user-expander__%
         _g163098163101_
         _g163099163103_
         'apply-import-expander)))
    (bind-method!
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_g162969162972_ _g162970162974_)
        (gx#core-apply-user-expander__%
         _g162969162972_
         _g162970162974_
         'apply-export-expander)))
    (bind-method!
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_ctx162840_)
        (let* ((_path162842_
                (##structure-ref _ctx162840_ '7 gx#module-context::t '#f))
               (_path162844_
                (if (pair? _path162842_) (last _path162842_) _path162842_)))
          (if (string? _path162844_) _path162844_ '#f))))
    (define gx#import-module__%
      (lambda (_path162816_ _reload?162817_ _eval?162818_)
        (let ((_ctx162820_
               ((gx#current-expander-module-import)
                _path162816_
                _reload?162817_)))
          (if (and _ctx162820_ _eval?162818_)
              (gx#eval-module _ctx162820_)
              '#!void)
          _ctx162820_)))
    (define gx#import-module__0
      (lambda (_path162825_)
        (let* ((_reload?162827_ '#f) (_eval?162829_ '#f))
          (gx#import-module__% _path162825_ _reload?162827_ _eval?162829_))))
    (define gx#import-module__1
      (lambda (_path162831_ _reload?162832_)
        (let ((_eval?162834_ '#f))
          (gx#import-module__% _path162831_ _reload?162832_ _eval?162834_))))
    (define gx#import-module
      (lambda _g168400_
        (let ((_g168399_ (##length _g168400_)))
          (cond ((##fx= _g168399_ 1)
                 (apply (lambda (_path162825_)
                          (gx#import-module__0 _path162825_))
                        _g168400_))
                ((##fx= _g168399_ 2)
                 (apply (lambda (_path162831_ _reload?162832_)
                          (gx#import-module__1 _path162831_ _reload?162832_))
                        _g168400_))
                ((##fx= _g168399_ 3)
                 (apply (lambda (_path162836_ _reload?162837_ _eval?162838_)
                          (gx#import-module__%
                           _path162836_
                           _reload?162837_
                           _eval?162838_))
                        _g168400_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g168400_))))))
    (define gx#eval-module
      (lambda (_mod162813_) ((gx#current-expander-module-eval) _mod162813_)))
    (define gx#core-eval-module
      (lambda (_obj162798_)
        (letrec ((_force-e162800_
                  (lambda (_getf162809_ _e162810_)
                    (call-with-parameters
                     (lambda () (force (_getf162809_ _e162810_)))
                     gx#current-expander-context
                     _e162810_
                     gx#current-expander-phi
                     '0))))
          (let _recur162802_ ((_e162804_ _obj162798_))
            (if (##structure-instance-of? _e162804_ 'gx#module-context::t)
                (begin
                  (let ((_$e162806_ (gx#core-context-prelude__% _e162804_)))
                    (if _$e162806_ (_recur162802_ _$e162806_) '#!void))
                  (_force-e162800_ gx#module-context-e _e162804_))
                (if (##structure-instance-of? _e162804_ 'gx#prelude-context::t)
                    (_force-e162800_ gx#prelude-context-e _e162804_)
                    (if (gx#stx-string? _e162804_)
                        (_recur162802_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _e162804_)))
                        (if (gx#core-library-module-path? _e162804_)
                            (_recur162802_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _e162804_)))
                            (error '"Cannot eval module" _obj162798_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_ctx162781_)
        (let _lp162783_ ((_e162785_ _ctx162781_))
          (if (or (##structure-instance-of? _e162785_ 'gx#module-context::t)
                  (##structure-instance-of? _e162785_ 'gx#local-context::t))
              (_lp162783_
               (##unchecked-structure-ref _e162785_ '3 gx#phi-context::t '#f))
              (if (##structure-instance-of? _e162785_ 'gx#prelude-context::t)
                  _e162785_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_ctx162794_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _ctx162794_))))
    (define gx#core-context-prelude
      (lambda _g168402_
        (let ((_g168401_ (##length _g168402_)))
          (cond ((##fx= _g168401_ 0)
                 (apply (lambda () (gx#core-context-prelude__0)) _g168402_))
                ((##fx= _g168401_ 1)
                 (apply (lambda (_ctx162796_)
                          (gx#core-context-prelude__% _ctx162796_))
                        _g168402_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g168402_))))))
    (define gx#core-module->prelude-context
      (lambda (_ctx162771_)
        (let* ((_ht162773_ (gx#current-expander-module-registry))
               (_$e162775_ (table-ref _ht162773_ _ctx162771_ '#f)))
          (if _$e162775_
              (values _$e162775_)
              (let ((_pre162778_
                     (let ((__obj168393
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
                       (gx#prelude-context:::init! __obj168393 _ctx162771_)
                       __obj168393)))
                (table-set! _ht162773_ _ctx162771_ _pre162778_)
                _pre162778_)))))
    (define gx#core-import-module__%
      (lambda (_rpath162652_ _reload?162653_)
        (letrec ((_import-source162655_
                  (lambda (_path162740_)
                    (if (member _path162740_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _path162740_)
                        '#!void)
                    (call-with-parameters
                     (lambda ()
                       (let ((_g168403_ (gx#core-read-module _path162740_)))
                         (begin
                           (let ((_g168404_
                                  (if (##values? _g168403_)
                                      (##vector-length _g168403_)
                                      1)))
                             (if (not (##fx= _g168404_ 4))
                                 (error "Context expects 4 values" _g168404_)))
                           (let ((_pre162743_ (##vector-ref _g168403_ 0))
                                 (_id162744_ (##vector-ref _g168403_ 1))
                                 (_ns162745_ (##vector-ref _g168403_ 2))
                                 (_body162746_ (##vector-ref _g168403_ 3)))
                             (let* ((_prelude162751_
                                     (if (##structure-instance-of?
                                          _pre162743_
                                          'gx#prelude-context::t)
                                         _pre162743_
                                         (if (##structure-instance-of?
                                              _pre162743_
                                              'gx#module-context::t)
                                             (gx#core-module->prelude-context
                                              _pre162743_)
                                             (if (string? _pre162743_)
                                                 (gx#core-module->prelude-context
                                                  (gx#core-import-module__0
                                                   _pre162743_))
                                                 (if (not _pre162743_)
                                                     (let ((_$e162748_
                                                            (gx#current-expander-module-prelude)))
                                                       (if _$e162748_
                                                           _$e162748_
                                                           (let ((__obj168394
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
                     (gx#prelude-context:::init! __obj168394 '#f)
                     __obj168394)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error '"Cannot import module; unknown prelude"
                                                            _rpath162652_
                                                            _pre162743_))))))
                                    (_ctx162753_
                                     (let ((__obj168395
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
                                        __obj168395
                                        _id162744_
                                        _prelude162751_
                                        _ns162745_
                                        _path162740_)
                                       __obj168395))
                                    (_body162755_
                                     (gx#core-expand-module-begin
                                      _body162746_
                                      _ctx162753_))
                                    (_body162757_
                                     (gx#core-quote-syntax__%
                                      (gx#core-cons '%#begin _body162755_)
                                      _path162740_
                                      _ctx162753_
                                      '())))
                               (##unchecked-structure-set!
                                _ctx162753_
                                (make-promise
                                 (lambda () (gx#eval-syntax* _body162757_)))
                                '10
                                gx#module-context::t
                                '#f)
                               (##unchecked-structure-set!
                                _ctx162753_
                                _body162757_
                                '11
                                gx#module-context::t
                                '#f)
                               (table-set!
                                (gx#current-expander-module-registry)
                                _path162740_
                                _ctx162753_)
                               (table-set!
                                (gx#current-expander-module-registry)
                                _id162744_
                                _ctx162753_)
                               _ctx162753_)))))
                     gx#current-expander-context
                     (gx#core-context-root__0)
                     gx#current-expander-marks
                     '()
                     gx#current-expander-phi
                     '0
                     gx#current-expander-path
                     (cons _path162740_ (gx#current-expander-path))
                     gx#current-import-expander-phi
                     '#f
                     gx#current-export-expander-phi
                     '#f)))
                 (_import-submodule162656_
                  (lambda (_rpath162668_)
                    (let* ((_rpath162669162676_ _rpath162668_)
                           (_E162671162680_
                            (lambda ()
                              (error '"No clause matching"
                                     _rpath162669162676_)))
                           (_K162672162728_
                            (lambda (_refs162683_ _origin162684_)
                              (let ((_ctx162686_
                                     (if _origin162684_
                                         (gx#core-import-module__%
                                          _origin162684_
                                          _reload?162653_)
                                         (gx#current-expander-context))))
                                (let _lp162688_ ((_rest162690_ _refs162683_)
                                                 (_ctx162691_ _ctx162686_))
                                  (let* ((_rest162692162700_ _rest162690_)
                                         (_else162694162708_
                                          (lambda () _ctx162691_))
                                         (_K162696162716_
                                          (lambda (_rest162711_ _id162712_)
                                            (let ((_bind162714_
                                                   (gx#resolve-identifier__%
                                                    _id162712_
                                                    '0
                                                    _ctx162691_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _bind162714_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _bind162714_
                                                         '4
                                                         gx#syntax-binding::t
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_lp162688_
                                                   _rest162711_
                                                   (##unchecked-structure-ref
                                                    _bind162714_
                                                    '4
                                                    gx#syntax-binding::t
                                                    '#f))
                                                  (error '"Cannot import submodule; not bound as a module"
                                                         _rpath162668_
                                                         _id162712_
                                                         _bind162714_))))))
                                    (if (##pair? _rest162692162700_)
                                        (let ((_hd162697162719_
                                               (##car _rest162692162700_))
                                              (_tl162698162721_
                                               (##cdr _rest162692162700_)))
                                          (let* ((_id162724_ _hd162697162719_)
                                                 (_rest162726_
                                                  _tl162698162721_))
                                            (_K162696162716_
                                             _rest162726_
                                             _id162724_)))
                                        (_else162694162708_))))))))
                      (if (##pair? _rpath162669162676_)
                          (let ((_hd162673162731_ (##car _rpath162669162676_))
                                (_tl162674162733_ (##cdr _rpath162669162676_)))
                            (let* ((_origin162736_ _hd162673162731_)
                                   (_refs162738_ _tl162674162733_))
                              (_K162672162728_ _refs162738_ _origin162736_)))
                          (_E162671162680_))))))
          (let ((_$e162658_
                 (if (not _reload?162653_)
                     (table-ref
                      (gx#current-expander-module-registry)
                      _rpath162652_
                      '#f)
                     '#f)))
            (if _$e162658_
                (values _$e162658_)
                (if (list? _rpath162652_)
                    (_import-submodule162656_ _rpath162652_)
                    (if (gx#core-library-module-path? _rpath162652_)
                        (let ((_ctx162661_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _rpath162652_)
                                _reload?162653_)))
                          (table-set!
                           (gx#current-expander-module-registry)
                           _rpath162652_
                           _ctx162661_)
                          _ctx162661_)
                        (let* ((_npath162663_ (path-normalize _rpath162652_))
                               (_$e162665_
                                (if (not _reload?162653_)
                                    (table-ref
                                     (gx#current-expander-module-registry)
                                     _npath162663_
                                     '#f)
                                    '#f)))
                          (if _$e162665_
                              (values _$e162665_)
                              (_import-source162655_ _npath162663_))))))))))
    (define gx#core-import-module__0
      (lambda (_rpath162764_)
        (let ((_reload?162766_ '#f))
          (gx#core-import-module__% _rpath162764_ _reload?162766_))))
    (define gx#core-import-module
      (lambda _g168406_
        (let ((_g168405_ (##length _g168406_)))
          (cond ((##fx= _g168405_ 1)
                 (apply (lambda (_rpath162764_)
                          (gx#core-import-module__0 _rpath162764_))
                        _g168406_))
                ((##fx= _g168405_ 2)
                 (apply (lambda (_rpath162768_ _reload?162769_)
                          (gx#core-import-module__%
                           _rpath162768_
                           _reload?162769_))
                        _g168406_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g168406_))))))
    (define gx#core-read-module
      (lambda (_path162641_)
        (with-catch
         (lambda (_exn162643_)
           (if (and (datum-parsing-exception? _exn162643_)
                    (eq? (datum-parsing-exception-filepos _exn162643_) '0))
               (gx#core-read-module/lang _path162641_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _path162641_
                (call-with-parameters
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_g162645162647_)
                      (display-exception _exn162643_ _g162645162647_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _path162641_)))))
    (define gx#core-read-module/sexp
      (lambda (_path162504_)
        (let _lp162506_ ((_body162508_ (read-syntax-from-file _path162504_))
                         (_pre162509_ '#f)
                         (_ns162510_ '#f)
                         (_pkg162511_ '#f))
          (let* ((_e162512162536_ _body162508_)
                 (_E162528162558_
                  (lambda ()
                    (let ((_g168407_
                           (if _pkg162511_
                               (values _pre162509_ _ns162510_ _pkg162511_)
                               (gx#core-read-module-package
                                _path162504_
                                _pre162509_
                                _ns162510_))))
                      (begin
                        (let ((_g168408_
                               (if (##values? _g168407_)
                                   (##vector-length _g168407_)
                                   1)))
                          (if (not (##fx= _g168408_ 3))
                              (error "Context expects 3 values" _g168408_)))
                        (let ((_pre162540_ (##vector-ref _g168407_ 0))
                              (_ns162541_ (##vector-ref _g168407_ 1))
                              (_pkg162542_ (##vector-ref _g168407_ 2)))
                          (let* ((_prelude162544_
                                  (if (gx#core-bound-module-prelude?
                                       _pre162540_)
                                      (gx#syntax-local-e__0 _pre162540_)
                                      (if (gx#core-library-module-path?
                                           _pre162540_)
                                          (gx#core-resolve-library-module-path
                                           _pre162540_)
                                          (if (gx#stx-string? _pre162540_)
                                              (gx#core-resolve-module-path__%
                                               _pre162540_
                                               _path162504_)
                                              (gx#stx-e _pre162540_)))))
                                 (_path-id162546_
                                  (gx#core-module-path->namespace
                                   _path162504_))
                                 (_pkg-id162548_
                                  (if _pkg162542_
                                      (string-append
                                       _pkg162542_
                                       '"/"
                                       _path-id162546_)
                                      _path-id162546_))
                                 (_module-id162550_
                                  (string->symbol _pkg-id162548_))
                                 (_module-ns162555_
                                  (if (eq? _ns162541_ '#!void)
                                      '#f
                                      (let ((_$e162552_ _ns162541_))
                                        (if _$e162552_
                                            _$e162552_
                                            _pkg-id162548_)))))
                            (values _prelude162544_
                                    _module-id162550_
                                    _module-ns162555_
                                    _body162508_)))))))
                 (_E162521162587_
                  (lambda ()
                    (if (gx#stx-pair? _e162512162536_)
                        (let ((_e162529162562_ (gx#syntax-e _e162512162536_)))
                          (let ((_hd162530162565_ (##car _e162529162562_))
                                (_tl162531162567_ (##cdr _e162529162562_)))
                            (if (eq? (gx#stx-e _hd162530162565_) 'package:)
                                (if (gx#stx-pair? _tl162531162567_)
                                    (let ((_e162532162570_
                                           (gx#syntax-e _tl162531162567_)))
                                      (let ((_hd162533162573_
                                             (##car _e162532162570_))
                                            (_tl162534162575_
                                             (##cdr _e162532162570_)))
                                        (let* ((_pkg162578_ _hd162533162573_)
                                               (_rest162580_ _tl162534162575_))
                                          (if '#t
                                              (let ((_pkg162585_
                                                     (if (gx#identifier?
                                                          _pkg162578_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _pkg162578_))
                                                         (if (or (gx#stx-string?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _pkg162578_)
                         (gx#stx-false? _pkg162578_))
                     (gx#stx-e _pkg162578_)
                     (gx#raise-syntax-error
                      'import
                      '"Bad syntax; Illegal package name"
                      _pkg162578_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp162506_
                                                 _rest162580_
                                                 _pre162509_
                                                 _ns162510_
                                                 _pkg162585_))
                                              (_E162528162558_)))))
                                    (_E162528162558_))
                                (_E162528162558_))))
                        (_E162528162558_))))
                 (_E162514162613_
                  (lambda ()
                    (if (gx#stx-pair? _e162512162536_)
                        (let ((_e162522162591_ (gx#syntax-e _e162512162536_)))
                          (let ((_hd162523162594_ (##car _e162522162591_))
                                (_tl162524162596_ (##cdr _e162522162591_)))
                            (if (eq? (gx#stx-e _hd162523162594_) 'namespace:)
                                (if (gx#stx-pair? _tl162524162596_)
                                    (let ((_e162525162599_
                                           (gx#syntax-e _tl162524162596_)))
                                      (let ((_hd162526162602_
                                             (##car _e162525162599_))
                                            (_tl162527162604_
                                             (##cdr _e162525162599_)))
                                        (let* ((_ns162607_ _hd162526162602_)
                                               (_rest162609_ _tl162527162604_))
                                          (if '#t
                                              (let ((_ns162611_
                                                     (if (gx#identifier?
                                                          _ns162607_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _ns162607_))
                                                         (if (gx#stx-string?
                                                              _ns162607_)
                                                             (gx#stx-e
                                                              _ns162607_)
                                                             (if (gx#stx-false?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _ns162607_)
                         '#!void
                         (gx#raise-syntax-error
                          'import
                          '"Bad syntax; illegal namespace"
                          _ns162607_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp162506_
                                                 _rest162609_
                                                 _pre162509_
                                                 _ns162611_
                                                 _pkg162511_))
                                              (_E162521162587_)))))
                                    (_E162521162587_))
                                (_E162521162587_))))
                        (_E162521162587_))))
                 (_E162513162637_
                  (lambda ()
                    (if (gx#stx-pair? _e162512162536_)
                        (let ((_e162515162617_ (gx#syntax-e _e162512162536_)))
                          (let ((_hd162516162620_ (##car _e162515162617_))
                                (_tl162517162622_ (##cdr _e162515162617_)))
                            (if (eq? (gx#stx-e _hd162516162620_) 'prelude:)
                                (if (gx#stx-pair? _tl162517162622_)
                                    (let ((_e162518162625_
                                           (gx#syntax-e _tl162517162622_)))
                                      (let ((_hd162519162628_
                                             (##car _e162518162625_))
                                            (_tl162520162630_
                                             (##cdr _e162518162625_)))
                                        (let* ((_prelude162633_
                                                _hd162519162628_)
                                               (_rest162635_ _tl162520162630_))
                                          (if '#t
                                              (_lp162506_
                                               _rest162635_
                                               _prelude162633_
                                               _ns162510_
                                               _pkg162511_)
                                              (_E162514162613_)))))
                                    (_E162514162613_))
                                (_E162514162613_))))
                        (_E162514162613_)))))
            (_E162513162637_)))))
    (define gx#core-read-module/lang
      (lambda (_path162331_)
        (letrec ((_default-read-module-body162333_
                  (lambda (_inp162496_)
                    (let _lp162498_ ((_body162500_ '()))
                      (let ((_next162502_ (read-syntax _inp162496_)))
                        (if (eof-object? _next162502_)
                            (reverse _body162500_)
                            (_lp162498_ (cons _next162502_ _body162500_)))))))
                 (_read-body162334_
                  (lambda (_inp162415_
                           _pre162416_
                           _ns162417_
                           _pkg162418_
                           _args162419_)
                    (let ((_g168409_
                           (if _pkg162418_
                               (values _pre162416_ _ns162417_ _pkg162418_)
                               (gx#core-read-module-package
                                _path162331_
                                _pre162416_
                                _ns162417_))))
                      (begin
                        (let ((_g168410_
                               (if (##values? _g168409_)
                                   (##vector-length _g168409_)
                                   1)))
                          (if (not (##fx= _g168410_ 3))
                              (error "Context expects 3 values" _g168410_)))
                        (let ((_pre162421_ (##vector-ref _g168409_ 0))
                              (_ns162422_ (##vector-ref _g168409_ 1))
                              (_pkg162423_ (##vector-ref _g168409_ 2)))
                          (let* ((_prelude162425_
                                  (gx#import-module__0 _pre162421_))
                                 (_read-module-body162479_
                                  (let ((_$e162471_
                                         (find (lambda (_e162426162428_)
                                                 (let* ((_g162430162440_
                                                         _e162426162428_)
                                                        (_else162432162448_
                                                         (lambda () '#f))
                                                        (_K162434162452_
                                                         (lambda () '#t)))
                                                   (if (##structure-direct-instance-of?
                                                        _g162430162440_
                                                        'gx#module-export::t)
                                                       (let* ((_e162435162455_
                                                               (##unchecked-structure-ref
                                                                _g162430162440_
                                                                '1
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e162436162458_
                                                               (##unchecked-structure-ref
                                                                _g162430162440_
                                                                '2
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e162437162461_
                                                               (##unchecked-structure-ref
                                                                _g162430162440_
                                                                '3
                                                                gx#module-export::t
                                                                '#f)))
                                                         (if (##eq? _e162437162461_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)
                     (let ((_e162438162464_
                            (##unchecked-structure-ref
                             _g162430162440_
                             '4
                             gx#module-export::t
                             '#f)))
                       (if ((lambda (_g162466162468_)
                              (eq? _g162466162468_ 'read-module-body))
                            _e162438162464_)
                           (_K162434162452_)
                           (_else162432162448_)))
                     (_else162432162448_)))
               (_else162432162448_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (##unchecked-structure-ref
                                                _prelude162425_
                                                '9
                                                gx#module-context::t
                                                '#f))))
                                    (if _$e162471_
                                        ((lambda (_xport162474_)
                                           (let ((_proc162477_
                                                  (with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _xport162474_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _proc162477_)
                                                 _proc162477_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _path162331_
                                                  _pre162421_
                                                  _proc162477_))))
                                         _$e162471_)
                                        _default-read-module-body162333_)))
                                 (_path-id162481_
                                  (gx#core-module-path->namespace
                                   _path162331_))
                                 (_pkg-id162483_
                                  (if _pkg162423_
                                      (string-append
                                       _pkg162423_
                                       '"/"
                                       _path-id162481_)
                                      _path-id162481_))
                                 (_module-id162485_
                                  (string->symbol _pkg-id162483_))
                                 (_module-ns162490_
                                  (let ((_$e162487_ _ns162422_))
                                    (if _$e162487_ _$e162487_ _pkg-id162483_)))
                                 (_body162493_
                                  (call-with-parameters
                                   (lambda ()
                                     (_read-module-body162479_ _inp162415_))
                                   gx#current-module-reader-path
                                   _path162331_
                                   gx#current-module-reader-args
                                   _args162419_)))
                            (values _prelude162425_
                                    _module-id162485_
                                    _module-ns162490_
                                    _body162493_)))))))
                 (_string-e162335_
                  (lambda (_obj162412_ _what162413_)
                    (if (string? _obj162412_)
                        _obj162412_
                        (if (symbol? _obj162412_)
                            (symbol->string _obj162412_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _what162413_)
                             _path162331_
                             _obj162412_)))))
                 (_read-lang-args162336_
                  (lambda (_inp162367_ _args162368_)
                    (let* ((_args162369162377_ _args162368_)
                           (_else162371162385_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _path162331_)))
                           (_K162373162400_
                            (lambda (_args162388_ _prelude162389_)
                              (let* ((_pkg162391_
                                      (pgetq 'package: _args162388_))
                                     (_pkg162393_
                                      (if _pkg162391_
                                          (_string-e162335_
                                           _pkg162391_
                                           '"package")
                                          '#f))
                                     (_ns162395_
                                      (pgetq 'namespace: _args162388_))
                                     (_ns162397_
                                      (if _ns162395_
                                          (_string-e162335_
                                           _ns162395_
                                           '"namespace")
                                          '#f)))
                                (_read-body162334_
                                 _inp162367_
                                 _prelude162389_
                                 _ns162397_
                                 _pkg162393_
                                 _args162388_)))))
                      (if (##pair? _args162369162377_)
                          (let ((_hd162374162403_ (##car _args162369162377_))
                                (_tl162375162405_ (##cdr _args162369162377_)))
                            (let* ((_prelude162408_ _hd162374162403_)
                                   (_args162410_ _tl162375162405_))
                              (_K162373162400_ _args162410_ _prelude162408_)))
                          (_else162371162385_)))))
                 (_read-lang162337_
                  (lambda (_inp162342_)
                    (let* ((_head162344_ (read-line _inp162342_))
                           (_$e162346_ (string-index _head162344_ '#\space)))
                      (if _$e162346_
                          ((lambda (_ix162349_)
                             (let ((_lang162351_
                                    (substring _head162344_ '0 _ix162349_)))
                               (if (equal? _lang162351_ '"#lang")
                                   (let* ((_rest162353_
                                           (substring
                                            _head162344_
                                            (fx+ _ix162349_ '1)
                                            (string-length _head162344_)))
                                          (_args162364_
                                           (with-catch
                                            (lambda (_g162354162356_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _path162331_
                                               _g162354162356_))
                                            (lambda ()
                                              (call-with-input-string
                                               _rest162353_
                                               (lambda (_g162359162361_)
                                                 (read-all
                                                  _g162359162361_
                                                  read)))))))
                                     (_read-lang-args162336_
                                      _inp162342_
                                      _args162364_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _path162331_))))
                           _$e162346_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _path162331_)))))
                 (_read-e162338_
                  (lambda (_inp162340_)
                    (if (eq? (peek-char _inp162340_) '#\#)
                        (_read-lang162337_ _inp162340_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _path162331_)))))
          (gx#call-with-input-source-file _path162331_ _read-e162338_))))
    (define gx#core-read-module-package
      (lambda (_path162285_ _pre162286_ _ns162287_)
        (letrec ((_string-e162289_
                  (lambda (_e162329_)
                    (if (symbol? _e162329_)
                        (symbol->string _e162329_)
                        (if (string? _e162329_)
                            _e162329_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _e162329_))))))
          (let _lp162291_ ((_dir162293_ (path-directory _path162285_))
                           (_pkg-path162294_ '()))
            (let ((_gerbil.pkg162296_ (path-expand '"gerbil.pkg" _dir162293_)))
              (if (file-exists? _gerbil.pkg162296_)
                  (let ((_plist162298_
                         (gx#core-library-package-plist__% _dir162293_ '#t)))
                    (if (null? _plist162298_)
                        (let ((_pkg162300_
                               (if (not (null? _pkg-path162294_))
                                   (string-join _pkg-path162294_ '"/")
                                   '#f)))
                          (values _pre162286_ _ns162287_ _pkg162300_))
                        (if (list? _plist162298_)
                            (let* ((_root162302_
                                    (pgetq 'package: _plist162298_))
                                   (_pkg162306_
                                    (let ((_pkg-path162304_
                                           (if _root162302_
                                               (cons (_string-e162289_
                                                      _root162302_)
                                                     _pkg-path162294_)
                                               _pkg-path162294_)))
                                      (if (not (null? _pkg-path162304_))
                                          (string-join _pkg-path162304_ '"/")
                                          '#f)))
                                   (_ns162313_
                                    (let ((_ns162311_
                                           (let ((_$e162308_ _ns162287_))
                                             (if _$e162308_
                                                 _$e162308_
                                                 (pgetq 'namespace:
                                                        _plist162298_)))))
                                      (if _ns162311_
                                          (_string-e162289_ _ns162311_)
                                          '#f)))
                                   (_pre162318_
                                    (let ((_$e162315_ _pre162286_))
                                      (if _$e162315_
                                          _$e162315_
                                          (pgetq 'prelude: _plist162298_)))))
                              (values _pre162318_ _ns162313_ _pkg162306_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _plist162298_))))
                  (let ((_dir*162321_
                         (path-strip-trailing-directory-separator
                          _dir162293_)))
                    (if (or (string-empty? _dir*162321_)
                            (equal? _dir162293_ _dir*162321_))
                        (values _pre162286_ _ns162287_ '#f)
                        (let ((_xpath162326_
                               (path-strip-directory _dir*162321_))
                              (_xdir162327_ (path-directory _dir*162321_)))
                          (_lp162291_
                           _xdir162327_
                           (cons _xpath162326_ _pkg-path162294_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_path162283_)
        (path-strip-extension (path-strip-directory _path162283_))))
    (define gx#core-module-path->id
      (lambda (_path162281_)
        (string->symbol (gx#core-module-path->namespace _path162281_))))
    (define gx#core-resolve-module-path__%
      (lambda (_stx-path162260_ _rel162261_)
        (let* ((_path162263_ (gx#stx-e _stx-path162260_))
               (_path162265_
                (if (string-empty? (path-extension _path162263_))
                    (string-append _path162263_ '".ss")
                    _path162263_)))
          (gx#core-resolve-path__%
           _path162265_
           (let ((_$e162268_ (gx#stx-source _stx-path162260_)))
             (if _$e162268_ _$e162268_ _rel162261_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_stx-path162274_)
        (let ((_rel162276_ '#f))
          (gx#core-resolve-module-path__% _stx-path162274_ _rel162276_))))
    (define gx#core-resolve-module-path
      (lambda _g168412_
        (let ((_g168411_ (##length _g168412_)))
          (cond ((##fx= _g168411_ 1)
                 (apply (lambda (_stx-path162274_)
                          (gx#core-resolve-module-path__0 _stx-path162274_))
                        _g168412_))
                ((##fx= _g168411_ 2)
                 (apply (lambda (_stx-path162278_ _rel162279_)
                          (gx#core-resolve-module-path__%
                           _stx-path162278_
                           _rel162279_))
                        _g168412_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g168412_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_libpath162146_)
        (let* ((_spath162148_ (symbol->string (gx#stx-e _libpath162146_)))
               (_spath162150_
                (substring _spath162148_ '1 (string-length _spath162148_)))
               (_ext162152_ (path-extension _spath162150_))
               (_ssi162154_
                (if (string-empty? _ext162152_)
                    (string-append _spath162150_ '".ssi")
                    (string-append
                     (path-strip-extension _spath162150_)
                     '".ssi")))
               (_srcs162158_
                (if (string-empty? _ext162152_)
                    (map (lambda (_ext162156_)
                           (string-append _spath162150_ _ext162156_))
                         '(".ss" ".sld" ".scm"))
                    (cons _spath162150_ '()))))
          (let _lp162161_ ((_rest162163_
                            (gx#current-expander-module-library-path)))
            (let* ((_rest162164162173_ _rest162163_)
                   (_E162167162177_
                    (lambda ()
                      (error '"No clause matching" _rest162164162173_))))
              (let ((_K162169162247_
                     (lambda (_rest162188_ _dir162189_)
                       (letrec ((_resolve162191_
                                 (lambda (_ssi162203_ _srcs162204_)
                                   (let ((_compiled-path162206_
                                          (path-expand
                                           _ssi162203_
                                           _dir162189_)))
                                     (if (file-exists? _compiled-path162206_)
                                         (path-normalize _compiled-path162206_)
                                         (let _lpr162208_ ((_rest-src162210_
                                                            _srcs162204_))
                                           (let* ((_rest-src162211162219_
                                                   _rest-src162210_)
                                                  (_else162213162227_
                                                   (lambda ()
                                                     (_lp162161_
                                                      _rest162188_)))
                                                  (_K162215162235_
                                                   (lambda (_rest-src162230_
                                                            _src162231_)
                                                     (let ((_src-path162233_
                                                            (path-expand
                                                             _src162231_
                                                             _dir162189_)))
                                                       (if (file-exists?
                                                            _src-path162233_)
                                                           (path-normalize
                                                            _src-path162233_)
                                                           (_lpr162208_
                                                            _rest-src162230_))))))
                                             (if (##pair? _rest-src162211162219_)
                                                 (let ((_hd162216162238_
                                                        (##car _rest-src162211162219_))
                                                       (_tl162217162240_
                                                        (##cdr _rest-src162211162219_)))
                                                   (let* ((_src162243_
                                                           _hd162216162238_)
                                                          (_rest-src162245_
                                                           _tl162217162240_))
                                                     (_K162215162235_
                                                      _rest-src162245_
                                                      _src162243_)))
                                                 (_else162213162227_)))))))))
                         (let ((_$e162193_
                                (gx#core-library-package-path-prefix
                                 _dir162189_)))
                           (if _$e162193_
                               ((lambda (_prefix162196_)
                                  (if (string-prefix?
                                       _prefix162196_
                                       _spath162150_)
                                      (let ((_ssi162200_
                                             (substring
                                              _ssi162154_
                                              (string-length _prefix162196_)
                                              (string-length _ssi162154_)))
                                            (_srcs162201_
                                             (map (lambda (_src162198_)
                                                    (substring
                                                     _src162198_
                                                     (string-length
                                                      _prefix162196_)
                                                     (string-length
                                                      _src162198_)))
                                                  _srcs162158_)))
                                        (_resolve162191_
                                         _ssi162200_
                                         _srcs162201_))
                                      (_lp162161_ _rest162188_)))
                                _$e162193_)
                               (_resolve162191_ _ssi162154_ _srcs162158_))))))
                    (_K162168162182_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"Cannot find library module"
                        _libpath162146_))))
                (let ((_try-match162166162185_
                       (lambda ()
                         (if (##null? _rest162164162173_)
                             (_K162168162182_)
                             (_E162167162177_)))))
                  (if (##pair? _rest162164162173_)
                      (let ((_tl162171162252_ (##cdr _rest162164162173_))
                            (_hd162170162250_ (##car _rest162164162173_)))
                        (let ((_dir162255_ _hd162170162250_)
                              (_rest162257_ _tl162171162252_))
                          (_K162169162247_ _rest162257_ _dir162255_)))
                      (_try-match162166162185_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_modpath162119_)
        (letrec ((_resolve162121_
                  (lambda (_path162138_ _base162139_)
                    (let ((_$e162141_ (string-rindex _base162139_ '#\/)))
                      (if _$e162141_
                          ((lambda (_idx162144_)
                             (gx#core-resolve-library-module-path
                              (string->symbol
                               (string-append
                                '":"
                                (substring _base162139_ '0 _idx162144_)
                                '"/"
                                _path162138_))))
                           _$e162141_)
                          (gx#core-resolve-library-module-path
                           (string->symbol
                            (string-append '":" _path162138_))))))))
          (let ((_spath162123_ (symbol->string (gx#stx-e _modpath162119_)))
                (_mod162124_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _mod162124_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"Cannot resolve relative module path; not in module context"
                 _modpath162119_))
            (let ((_mpath162126_
                   (symbol->string
                    (##structure-ref
                     _mod162124_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _lp162128_ ((_spath162130_ _spath162123_)
                               (_mpath162131_ _mpath162126_))
                (if (string-prefix? '"../" _spath162130_)
                    (let ((_$e162133_ (string-rindex _mpath162131_ '#\/)))
                      (if _$e162133_
                          ((lambda (_idx162136_)
                             (_lp162128_
                              (substring
                               _spath162130_
                               '3
                               (string-length _spath162130_))
                              (substring _mpath162131_ '0 _idx162136_)))
                           _$e162133_)
                          (gx#raise-syntax-error
                           '#f
                           '"Cannot resolve relative module path; illegal traversal"
                           _modpath162119_)))
                    (if (string-prefix? '"./" _spath162130_)
                        (_lp162128_
                         (substring
                          _spath162130_
                          '2
                          (string-length _spath162130_))
                         _mpath162131_)
                        (_resolve162121_ _spath162130_ _mpath162131_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_dir162112_)
        (let ((_$e162114_
               (pgetq 'package:
                      (gx#core-library-package-plist__0 _dir162112_))))
          (if _$e162114_
              ((lambda (_pkg162117_)
                 (string-append (symbol->string _pkg162117_) '"/"))
               _$e162114_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_dir162084_ _exists?162085_)
        (let* ((_cache162087_ (gx#core-library-package-cache))
               (_$e162089_ (table-ref _cache162087_ _dir162084_ '#f)))
          (if _$e162089_
              (values _$e162089_)
              (let* ((_gerbil.pkg162092_
                      (path-expand '"gerbil.pkg" _dir162084_))
                     (_plist162099_
                      (if (or _exists?162085_
                              (file-exists? _gerbil.pkg162092_))
                          (let ((_e162097_
                                 (gx#call-with-input-source-file
                                  _gerbil.pkg162092_
                                  read)))
                            (if (eof-object? _e162097_)
                                '()
                                (if (list? _e162097_)
                                    _e162097_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _gerbil.pkg162092_
                                     _e162097_))))
                          '())))
                (table-set! _cache162087_ _dir162084_ _plist162099_)
                _plist162099_)))))
    (define gx#core-library-package-plist__0
      (lambda (_dir162105_)
        (let ((_exists?162107_ '#f))
          (gx#core-library-package-plist__% _dir162105_ _exists?162107_))))
    (define gx#core-library-package-plist
      (lambda _g168414_
        (let ((_g168413_ (##length _g168414_)))
          (cond ((##fx= _g168413_ 1)
                 (apply (lambda (_dir162105_)
                          (gx#core-library-package-plist__0 _dir162105_))
                        _g168414_))
                ((##fx= _g168413_ 2)
                 (apply (lambda (_dir162109_ _exists?162110_)
                          (gx#core-library-package-plist__%
                           _dir162109_
                           _exists?162110_))
                        _g168414_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g168414_))))))
    (define gx#core-library-package-cache
      (lambda ()
        (let ((_$e162078_ (gx#current-expander-module-library-package-cache)))
          (if _$e162078_
              (values _$e162078_)
              (let ((_cache162081_ (make-table)))
                (gx#current-expander-module-library-package-cache
                 _cache162081_)
                _cache162081_)))))
    (define gx#core-library-module-path?
      (lambda (_stx162075_) (gx#core-special-module-path? _stx162075_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_stx162073_) (gx#core-special-module-path? _stx162073_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_stx162068_ _char162069_)
        (if (gx#identifier? _stx162068_)
            (if (interned-symbol? (gx#stx-e _stx162068_))
                (let ((_str162071_ (symbol->string (gx#stx-e _stx162068_))))
                  (if (fx> (string-length _str162071_) '1)
                      (eq? (string-ref _str162071_ '0) _char162069_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_stx162062_)
        (gx#core-bound-identifier?__%
         _stx162062_
         (lambda (_g162063162065_)
           (gx#expander-binding?__% _g162063162065_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_stx162056_)
        (gx#core-bound-identifier?__%
         _stx162056_
         (lambda (_g162057162059_)
           (gx#expander-binding?__% _g162057162059_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_stx162043_)
        (letrec ((_module-prelude?162045_
                  (lambda (_e162051_)
                    (let ((_$e162053_
                           (##structure-instance-of?
                            _e162051_
                            'gx#module-context::t)))
                      (if _$e162053_
                          _$e162053_
                          (##structure-instance-of?
                           _e162051_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _stx162043_
           (lambda (_g162046162048_)
             (gx#expander-binding?__%
              _g162046162048_
              _module-prelude?162045_))))))
    (define gx#core-bind-import!__%
      (lambda (_in161973_ _ctx161974_ _force-weak?161975_)
        (let* ((_in161976161985_ _in161973_)
               (_E161978161989_
                (lambda () (error '"No clause matching" _in161976161985_)))
               (_K161979162002_
                (lambda (_weak?161992_ _phi161993_ _key161994_ _source161995_)
                  (gx#core-bind!__%
                   _key161994_
                   (let ((_e161997_
                          (gx#core-resolve-module-export _source161995_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref
                       _e161997_
                       '1
                       gx#binding::t
                       '#f)
                      _key161994_
                      _phi161993_
                      _e161997_
                      (##unchecked-structure-ref
                       _source161995_
                       '1
                       gx#module-export::t
                       '#f)
                      (let ((_$e161999_ _force-weak?161975_))
                        (if _$e161999_ _$e161999_ _weak?161992_))))
                   gx#core-context-rebind?
                   _phi161993_
                   _ctx161974_))))
          (if (##structure-direct-instance-of?
               _in161976161985_
               'gx#module-import::t)
              (let* ((_e161980162005_
                      (##unchecked-structure-ref
                       _in161976161985_
                       '1
                       gx#module-import::t
                       '#f))
                     (_source162008_ _e161980162005_)
                     (_e161981162010_
                      (##unchecked-structure-ref
                       _in161976161985_
                       '2
                       gx#module-import::t
                       '#f))
                     (_key162013_ _e161981162010_)
                     (_e161982162015_
                      (##unchecked-structure-ref
                       _in161976161985_
                       '3
                       gx#module-import::t
                       '#f))
                     (_phi162018_ _e161982162015_)
                     (_e161983162020_
                      (##unchecked-structure-ref
                       _in161976161985_
                       '4
                       gx#module-import::t
                       '#f))
                     (_weak?162023_ _e161983162020_))
                (_K161979162002_
                 _weak?162023_
                 _phi162018_
                 _key162013_
                 _source162008_))
              (_E161978161989_)))))
    (define gx#core-bind-import!__0
      (lambda (_in162028_)
        (let* ((_ctx162030_ (gx#current-expander-context))
               (_force-weak?162032_ '#f))
          (gx#core-bind-import!__%
           _in162028_
           _ctx162030_
           _force-weak?162032_))))
    (define gx#core-bind-import!__1
      (lambda (_in162034_ _ctx162035_)
        (let ((_force-weak?162037_ '#f))
          (gx#core-bind-import!__%
           _in162034_
           _ctx162035_
           _force-weak?162037_))))
    (define gx#core-bind-import!
      (lambda _g168416_
        (let ((_g168415_ (##length _g168416_)))
          (cond ((##fx= _g168415_ 1)
                 (apply (lambda (_in162028_)
                          (gx#core-bind-import!__0 _in162028_))
                        _g168416_))
                ((##fx= _g168415_ 2)
                 (apply (lambda (_in162034_ _ctx162035_)
                          (gx#core-bind-import!__1 _in162034_ _ctx162035_))
                        _g168416_))
                ((##fx= _g168415_ 3)
                 (apply (lambda (_in162039_ _ctx162040_ _force-weak?162041_)
                          (gx#core-bind-import!__%
                           _in162039_
                           _ctx162040_
                           _force-weak?162041_))
                        _g168416_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g168416_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_in161959_ _ctx161960_)
        (gx#core-bind-import!__% _in161959_ _ctx161960_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_in161965_)
        (let ((_ctx161967_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _in161965_ _ctx161967_))))
    (define gx#core-bind-weak-import!
      (lambda _g168418_
        (let ((_g168417_ (##length _g168418_)))
          (cond ((##fx= _g168417_ 1)
                 (apply (lambda (_in161965_)
                          (gx#core-bind-weak-import!__0 _in161965_))
                        _g168418_))
                ((##fx= _g168417_ 2)
                 (apply (lambda (_in161969_ _ctx161970_)
                          (gx#core-bind-weak-import!__%
                           _in161969_
                           _ctx161970_))
                        _g168418_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g168418_))))))
    (define gx#core-resolve-module-export
      (lambda (_out161850_)
        (letrec ((_subst161852_
                  (lambda (_key161898_)
                    (let* ((_key161899161907_ _key161898_)
                           (_else161901161915_ (lambda () _key161898_))
                           (_K161903161946_
                            (lambda (_mark161918_ _id161919_)
                              (let* ((_mark161920161926_ _mark161918_)
                                     (_E161922161930_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark161920161926_)))
                                     (_K161923161938_
                                      (lambda (_subst161933_)
                                        (let ((_$e161935_
                                               (if _subst161933_
                                                   (table-ref
                                                    _subst161933_
                                                    _id161919_
                                                    '#f)
                                                   '#f)))
                                          (if _$e161935_
                                              _$e161935_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _key161898_))))))
                                (if (##structure-instance-of?
                                     _mark161920161926_
                                     'gx#expander-mark::t)
                                    (let* ((_e161924161941_
                                            (##unchecked-structure-ref
                                             _mark161920161926_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst161944_ _e161924161941_))
                                      (_K161923161938_ _subst161944_))
                                    (_E161922161930_))))))
                      (if (##pair? _key161899161907_)
                          (let ((_hd161904161949_ (##car _key161899161907_))
                                (_tl161905161951_ (##cdr _key161899161907_)))
                            (let* ((_id161954_ _hd161904161949_)
                                   (_mark161956_ _tl161905161951_))
                              (_K161903161946_ _mark161956_ _id161954_)))
                          (_else161901161915_))))))
          (let* ((_out161853161863_ _out161850_)
                 (_E161855161867_
                  (lambda () (error '"No clause matching" _out161853161863_)))
                 (_K161856161874_
                  (lambda (_phi161870_ _key161871_ _ctx161872_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _ctx161872_ _phi161870_)
                     (_subst161852_ _key161871_)))))
            (if (##structure-direct-instance-of?
                 _out161853161863_
                 'gx#module-export::t)
                (let* ((_e161857161877_
                        (##unchecked-structure-ref
                         _out161853161863_
                         '1
                         gx#module-export::t
                         '#f))
                       (_ctx161880_ _e161857161877_)
                       (_e161858161882_
                        (##unchecked-structure-ref
                         _out161853161863_
                         '2
                         gx#module-export::t
                         '#f))
                       (_key161885_ _e161858161882_)
                       (_e161859161887_
                        (##unchecked-structure-ref
                         _out161853161863_
                         '3
                         gx#module-export::t
                         '#f))
                       (_phi161890_ _e161859161887_)
                       (_e161860161892_
                        (##unchecked-structure-ref
                         _out161853161863_
                         '4
                         gx#module-export::t
                         '#f))
                       (_e161861161895_
                        (##unchecked-structure-ref
                         _out161853161863_
                         '5
                         gx#module-export::t
                         '#f)))
                  (_K161856161874_ _phi161890_ _key161885_ _ctx161880_))
                (_E161855161867_))))))
    (define gx#core-module-export->import__%
      (lambda (_out161775_ _rename161776_ _dphi161777_)
        (let* ((_out161778161788_ _out161775_)
               (_E161780161792_
                (lambda () (error '"No clause matching" _out161778161788_)))
               (_K161781161804_
                (lambda (_weak?161795_
                         _name161796_
                         _phi161797_
                         _key161798_
                         _ctx161799_)
                  (##structure
                   gx#module-import::t
                   _out161775_
                   (let ((_$e161801_ _rename161776_))
                     (if _$e161801_ _$e161801_ _name161796_))
                   (fx+ _phi161797_ _dphi161777_)
                   _weak?161795_))))
          (if (##structure-direct-instance-of?
               _out161778161788_
               'gx#module-export::t)
              (let* ((_e161782161807_
                      (##unchecked-structure-ref
                       _out161778161788_
                       '1
                       gx#module-export::t
                       '#f))
                     (_ctx161810_ _e161782161807_)
                     (_e161783161812_
                      (##unchecked-structure-ref
                       _out161778161788_
                       '2
                       gx#module-export::t
                       '#f))
                     (_key161815_ _e161783161812_)
                     (_e161784161817_
                      (##unchecked-structure-ref
                       _out161778161788_
                       '3
                       gx#module-export::t
                       '#f))
                     (_phi161820_ _e161784161817_)
                     (_e161785161822_
                      (##unchecked-structure-ref
                       _out161778161788_
                       '4
                       gx#module-export::t
                       '#f))
                     (_name161825_ _e161785161822_)
                     (_e161786161827_
                      (##unchecked-structure-ref
                       _out161778161788_
                       '5
                       gx#module-export::t
                       '#f))
                     (_weak?161830_ _e161786161827_))
                (_K161781161804_
                 _weak?161830_
                 _name161825_
                 _phi161820_
                 _key161815_
                 _ctx161810_))
              (_E161780161792_)))))
    (define gx#core-module-export->import__0
      (lambda (_out161835_)
        (let* ((_rename161837_ '#f) (_dphi161839_ '0))
          (gx#core-module-export->import__%
           _out161835_
           _rename161837_
           _dphi161839_))))
    (define gx#core-module-export->import__1
      (lambda (_out161841_ _rename161842_)
        (let ((_dphi161844_ '0))
          (gx#core-module-export->import__%
           _out161841_
           _rename161842_
           _dphi161844_))))
    (define gx#core-module-export->import
      (lambda _g168420_
        (let ((_g168419_ (##length _g168420_)))
          (cond ((##fx= _g168419_ 1)
                 (apply (lambda (_out161835_)
                          (gx#core-module-export->import__0 _out161835_))
                        _g168420_))
                ((##fx= _g168419_ 2)
                 (apply (lambda (_out161841_ _rename161842_)
                          (gx#core-module-export->import__1
                           _out161841_
                           _rename161842_))
                        _g168420_))
                ((##fx= _g168419_ 3)
                 (apply (lambda (_out161846_ _rename161847_ _dphi161848_)
                          (gx#core-module-export->import__%
                           _out161846_
                           _rename161847_
                           _dphi161848_))
                        _g168420_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g168420_))))))
    (define gx#core-expand-module%
      (lambda (_stx161703_)
        (letrec ((_make-context161705_
                  (lambda (_id161756_)
                    (let* ((_super161758_ (gx#current-expander-context))
                           (_bind-id161760_ (gx#stx-e _id161756_))
                           (_mod-id161762_
                            (if (##structure-instance-of?
                                 _super161758_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##structure-ref
                                  _super161758_
                                  '1
                                  gx#expander-context::t
                                  '#f)
                                 '"$"
                                 _bind-id161760_)
                                _bind-id161760_))
                           (_ns161764_ (symbol->string _mod-id161762_))
                           (_path161771_
                            (if (##structure-instance-of?
                                 _super161758_
                                 'gx#module-context::t)
                                (let ((_path161766_
                                       (##unchecked-structure-ref
                                        _super161758_
                                        '7
                                        gx#module-context::t
                                        '#f)))
                                  (if (or (pair? _path161766_)
                                          (null? _path161766_))
                                      (cons _bind-id161760_ _path161766_)
                                      (if (not _path161766_)
                                          _bind-id161760_
                                          (cons _bind-id161760_
                                                (cons _path161766_ '())))))
                                _bind-id161760_)))
                      (let ((__obj168396
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
                         __obj168396
                         _mod-id161762_
                         _super161758_
                         _ns161764_
                         _path161771_)
                        __obj168396)))))
          (let* ((_e161706161716_ _stx161703_)
                 (_E161708161720_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e161706161716_)))
                 (_E161707161752_
                  (lambda ()
                    (if (gx#stx-pair? _e161706161716_)
                        (let ((_e161709161724_ (gx#syntax-e _e161706161716_)))
                          (let ((_hd161710161727_ (##car _e161709161724_))
                                (_tl161711161729_ (##cdr _e161709161724_)))
                            (if (gx#stx-pair? _tl161711161729_)
                                (let ((_e161712161732_
                                       (gx#syntax-e _tl161711161729_)))
                                  (let ((_hd161713161735_
                                         (##car _e161712161732_))
                                        (_tl161714161737_
                                         (##cdr _e161712161732_)))
                                    (let* ((_id161740_ _hd161713161735_)
                                           (_body161742_ _tl161714161737_))
                                      (if (and (gx#identifier? _id161740_)
                                               (gx#stx-list? _body161742_))
                                          (let* ((_ctx161744_
                                                  (_make-context161705_
                                                   _id161740_))
                                                 (_body161746_
                                                  (gx#core-expand-module-begin
                                                   _body161742_
                                                   _ctx161744_))
                                                 (_body161748_
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body161746_)
                                                   (gx#stx-source
                                                    _stx161703_))))
                                            (##unchecked-structure-set!
                                             _ctx161744_
                                             (make-promise
                                              (lambda ()
                                                (gx#eval-syntax*
                                                 _body161748_)))
                                             '10
                                             gx#module-context::t
                                             '#f)
                                            (##unchecked-structure-set!
                                             _ctx161744_
                                             _body161748_
                                             '11
                                             gx#module-context::t
                                             '#f)
                                            (gx#core-bind-syntax!__0
                                             _id161740_
                                             _ctx161744_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-list
                                              '%#module
                                              (gx#core-quote-syntax__0
                                               _id161740_)
                                              _body161748_)
                                             (gx#stx-source _stx161703_)))
                                          (_E161708161720_)))))
                                (_E161708161720_))))
                        (_E161708161720_)))))
            (_E161707161752_)))))
    (define gx#core-expand-module-begin
      (lambda (_body161669_ _ctx161670_)
        (call-with-parameters
         (lambda ()
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_stx161673_
                   (gx#core-expand-head (cons '%%begin-module _body161669_)))
                  (_e161674161681_ _stx161673_)
                  (_E161676161685_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _stx161673_)))
                  (_E161675161699_
                   (lambda ()
                     (if (gx#stx-pair? _e161674161681_)
                         (let ((_e161677161689_ (gx#syntax-e _e161674161681_)))
                           (let ((_hd161678161692_ (##car _e161677161689_))
                                 (_tl161679161694_ (##cdr _e161677161689_)))
                             (if (and (gx#identifier? _hd161678161692_)
                                      (gx#core-identifier=?
                                       _hd161678161692_
                                       '%#begin-module))
                                 (let ((_body161697_ _tl161679161694_))
                                   (if '#t
                                       (if (gx#sealed-syntax? _stx161673_)
                                           _body161697_
                                           (gx#core-expand-module-body
                                            _body161697_))
                                       (_E161676161685_)))
                                 (_E161676161685_))))
                         (_E161676161685_)))))
             (_E161675161699_)))
         gx#current-expander-context
         _ctx161670_
         gx#current-expander-phi
         '0)))
    (define gx#core-expand-module-body
      (lambda (_body161465_)
        (letrec ((_expand-special161467_
                  (lambda (_hd161596_ _K161597_ _rest161598_ _r161599_)
                    (let* ((_e161600161617_ _hd161596_)
                           (_E161612161621_
                            (lambda ()
                              (_K161597_
                               _rest161598_
                               (cons (gx#core-expand-top _hd161596_)
                                     _r161599_))))
                           (_E161602161633_
                            (lambda ()
                              (if (gx#stx-pair? _e161600161617_)
                                  (let ((_e161613161625_
                                         (gx#syntax-e _e161600161617_)))
                                    (let ((_hd161614161628_
                                           (##car _e161613161625_))
                                          (_tl161615161630_
                                           (##cdr _e161613161625_)))
                                      (if (and (gx#identifier?
                                                _hd161614161628_)
                                               (gx#core-identifier=?
                                                _hd161614161628_
                                                '%#export))
                                          (if '#t
                                              (_K161597_
                                               _rest161598_
                                               (cons _hd161596_ _r161599_))
                                              (_E161612161621_))
                                          (_E161612161621_))))
                                  (_E161612161621_))))
                           (_E161601161665_
                            (lambda ()
                              (if (gx#stx-pair? _e161600161617_)
                                  (let ((_e161603161637_
                                         (gx#syntax-e _e161600161617_)))
                                    (let ((_hd161604161640_
                                           (##car _e161603161637_))
                                          (_tl161605161642_
                                           (##cdr _e161603161637_)))
                                      (if (and (gx#identifier?
                                                _hd161604161640_)
                                               (gx#core-identifier=?
                                                _hd161604161640_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl161605161642_)
                                              (let ((_e161606161645_
                                                     (gx#syntax-e
                                                      _tl161605161642_)))
                                                (let ((_hd161607161648_
                                                       (##car _e161606161645_))
                                                      (_tl161608161650_
                                                       (##cdr _e161606161645_)))
                                                  (let ((_hd-bind161653_
                                                         _hd161607161648_))
                                                    (if (gx#stx-pair?
                                                         _tl161608161650_)
                                                        (let ((_e161609161655_
                                                               (gx#syntax-e
                                                                _tl161608161650_)))
                                                          (let ((_hd161610161658_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e161609161655_))
                        (_tl161611161660_ (##cdr _e161609161655_)))
                    (let ((_expr161663_ _hd161610161658_))
                      (if (gx#stx-null? _tl161611161660_)
                          (if (gx#core-bind-values? _hd-bind161653_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind161653_)
                                (_K161597_
                                 _rest161598_
                                 (cons _hd161596_ _r161599_)))
                              (_E161602161633_))
                          (_E161602161633_)))))
                (_E161602161633_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E161602161633_))
                                          (_E161602161633_))))
                                  (_E161602161633_)))))
                      (_E161601161665_))))
                 (_expand-body161468_
                  (lambda (_rbody161470_)
                    (let _lp161472_ ((_rest161474_ _rbody161470_)
                                     (_body161475_ '()))
                      (let* ((_rest161476161484_ _rest161474_)
                             (_else161478161492_ (lambda () _body161475_))
                             (_K161480161584_
                              (lambda (_rest161495_ _hd161496_)
                                (let* ((_e161497161518_ _hd161496_)
                                       (_E161513161522_
                                        (lambda ()
                                          (_lp161472_
                                           _rest161495_
                                           (cons (gx#core-expand-expression
                                                  _hd161496_)
                                                 _body161475_))))
                                       (_E161509161536_
                                        (lambda ()
                                          (if (gx#stx-pair? _e161497161518_)
                                              (let ((_e161514161526_
                                                     (gx#syntax-e
                                                      _e161497161518_)))
                                                (let ((_hd161515161529_
                                                       (##car _e161514161526_))
                                                      (_tl161516161531_
                                                       (##cdr _e161514161526_)))
                                                  (let ((_form161534_
                                                         _hd161515161529_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _form161534_
                                                         gx#special-form-binding?)
                                                        (_lp161472_
                                                         _rest161495_
                                                         (cons _hd161496_
                                                               _body161475_))
                                                        (_E161513161522_)))))
                                              (_E161513161522_))))
                                       (_E161499161548_
                                        (lambda ()
                                          (if (gx#stx-pair? _e161497161518_)
                                              (let ((_e161510161540_
                                                     (gx#syntax-e
                                                      _e161497161518_)))
                                                (let ((_hd161511161543_
                                                       (##car _e161510161540_))
                                                      (_tl161512161545_
                                                       (##cdr _e161510161540_)))
                                                  (if (and (gx#identifier?
                                                            _hd161511161543_)
                                                           (gx#core-identifier=?
                                                            _hd161511161543_
                                                            '%#export))
                                                      (if '#t
                                                          (_lp161472_
                                                           _rest161495_
                                                           (cons (gx#core-expand-export%__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd161496_)
                         _body161475_))
                  (_E161509161536_))
              (_E161509161536_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E161509161536_))))
                                       (_E161498161580_
                                        (lambda ()
                                          (if (gx#stx-pair? _e161497161518_)
                                              (let ((_e161500161552_
                                                     (gx#syntax-e
                                                      _e161497161518_)))
                                                (let ((_hd161501161555_
                                                       (##car _e161500161552_))
                                                      (_tl161502161557_
                                                       (##cdr _e161500161552_)))
                                                  (if (and (gx#identifier?
                                                            _hd161501161555_)
                                                           (gx#core-identifier=?
                                                            _hd161501161555_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl161502161557_)
                                                          (let ((_e161503161560_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl161502161557_)))
                    (let ((_hd161504161563_ (##car _e161503161560_))
                          (_tl161505161565_ (##cdr _e161503161560_)))
                      (let ((_hd-bind161568_ _hd161504161563_))
                        (if (gx#stx-pair? _tl161505161565_)
                            (let ((_e161506161570_
                                   (gx#syntax-e _tl161505161565_)))
                              (let ((_hd161507161573_ (##car _e161506161570_))
                                    (_tl161508161575_ (##cdr _e161506161570_)))
                                (let ((_expr161578_ _hd161507161573_))
                                  (if (gx#stx-null? _tl161508161575_)
                                      (if '#t
                                          (_lp161472_
                                           _rest161495_
                                           (cons (gx#core-quote-syntax__1
                                                  (gx#core-list
                                                   '%#define-values
                                                   (gx#core-quote-bind-values
                                                    _hd-bind161568_)
                                                   (gx#core-expand-expression
                                                    _expr161578_))
                                                  (gx#stx-source _hd161496_))
                                                 _body161475_))
                                          (_E161499161548_))
                                      (_E161499161548_)))))
                            (_E161499161548_)))))
                  (_E161499161548_))
              (_E161499161548_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E161499161548_)))))
                                  (_E161498161580_)))))
                        (if (##pair? _rest161476161484_)
                            (let ((_hd161481161587_ (##car _rest161476161484_))
                                  (_tl161482161589_
                                   (##cdr _rest161476161484_)))
                              (let* ((_hd161592_ _hd161481161587_)
                                     (_rest161594_ _tl161482161589_))
                                (_K161480161584_ _rest161594_ _hd161592_)))
                            (_else161478161492_)))))))
          (_expand-body161468_
           (gx#core-expand-block__%
            (cons '%#begin-module _body161465_)
            _expand-special161467_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_stx161308_
               _expanded?161309_
               _method161310_
               _current-phi161311_
               _expand1161312_)
        (letrec ((_K161314_
                  (lambda (_rest161432_ _r161433_)
                    (let* ((_e161434161441_ _rest161432_)
                           (_E161436161445_ (lambda () _r161433_))
                           (_E161435161461_
                            (lambda ()
                              (if (gx#stx-pair? _e161434161441_)
                                  (let ((_e161437161449_
                                         (gx#syntax-e _e161434161441_)))
                                    (let ((_hd161438161452_
                                           (##car _e161437161449_))
                                          (_tl161439161454_
                                           (##cdr _e161437161449_)))
                                      (let* ((_hd161457_ _hd161438161452_)
                                             (_rest161459_ _tl161439161454_))
                                        (if '#t
                                            (_step161315_
                                             _hd161457_
                                             _rest161459_
                                             _r161433_)
                                            (_E161436161445_)))))
                                  (_E161436161445_)))))
                      (_E161435161461_))))
                 (_step161315_
                  (lambda (_hd161346_ _rest161347_ _r161348_)
                    (let* ((_e161349161367_ _hd161346_)
                           (_E161362161371_
                            (lambda ()
                              (if (_expanded?161309_ (gx#stx-e _hd161346_))
                                  (_K161314_
                                   _rest161347_
                                   (cons (gx#stx-e _hd161346_) _r161348_))
                                  (_expand1161312_
                                   _hd161346_
                                   _K161314_
                                   _rest161347_
                                   _r161348_))))
                           (_E161358161387_
                            (lambda ()
                              (if (gx#stx-pair? _e161349161367_)
                                  (let ((_e161363161375_
                                         (gx#syntax-e _e161349161367_)))
                                    (let ((_hd161364161378_
                                           (##car _e161363161375_))
                                          (_tl161365161380_
                                           (##cdr _e161363161375_)))
                                      (let* ((_macro161383_ _hd161364161378_)
                                             (_body161385_ _tl161365161380_))
                                        (if (gx#core-bound-identifier?__%
                                             _macro161383_
                                             gx#syntax-binding?)
                                            (_K161314_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _macro161383_)
                                                    _hd161346_
                                                    _method161310_)
                                                   _rest161347_)
                                             _r161348_)
                                            (_E161362161371_)))))
                                  (_E161362161371_))))
                           (_E161351161401_
                            (lambda ()
                              (if (gx#stx-pair? _e161349161367_)
                                  (let ((_e161359161391_
                                         (gx#syntax-e _e161349161367_)))
                                    (let ((_hd161360161394_
                                           (##car _e161359161391_))
                                          (_tl161361161396_
                                           (##cdr _e161359161391_)))
                                      (if (eq? (gx#stx-e _hd161360161394_)
                                               'begin:)
                                          (let ((_body161399_
                                                 _tl161361161396_))
                                            (if '#t
                                                (_K161314_
                                                 (gx#stx-foldr
                                                  cons
                                                  _rest161347_
                                                  _body161399_)
                                                 _r161348_)
                                                (_E161358161387_)))
                                          (_E161358161387_))))
                                  (_E161358161387_))))
                           (_E161350161428_
                            (lambda ()
                              (if (gx#stx-pair? _e161349161367_)
                                  (let ((_e161352161405_
                                         (gx#syntax-e _e161349161367_)))
                                    (let ((_hd161353161408_
                                           (##car _e161352161405_))
                                          (_tl161354161410_
                                           (##cdr _e161352161405_)))
                                      (if (eq? (gx#stx-e _hd161353161408_)
                                               'phi:)
                                          (if (gx#stx-pair? _tl161354161410_)
                                              (let ((_e161355161413_
                                                     (gx#syntax-e
                                                      _tl161354161410_)))
                                                (let ((_hd161356161416_
                                                       (##car _e161355161413_))
                                                      (_tl161357161418_
                                                       (##cdr _e161355161413_)))
                                                  (let* ((_dphi161421_
                                                          _hd161356161416_)
                                                         (_body161423_
                                                          _tl161357161418_))
                                                    (if (gx#stx-fixnum?
                                                         _dphi161421_)
                                                        (let ((_rbody161426_
                                                               (call-with-parameters
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_K161314_ _body161423_ '()))
                        _current-phi161311_
                        (fx+ (gx#stx-e _dphi161421_) (_current-phi161311_)))))
                  (_K161314_
                   _rest161347_
                   (foldr1 cons _r161348_ _rbody161426_)))
                (_E161351161401_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E161351161401_))
                                          (_E161351161401_))))
                                  (_E161351161401_)))))
                      (_E161350161428_)))))
          (let* ((_e161316161323_ _stx161308_)
                 (_E161318161327_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e161316161323_)))
                 (_E161317161342_
                  (lambda ()
                    (if (gx#stx-pair? _e161316161323_)
                        (let ((_e161319161331_ (gx#syntax-e _e161316161323_)))
                          (let ((_hd161320161334_ (##car _e161319161331_))
                                (_tl161321161336_ (##cdr _e161319161331_)))
                            (let ((_body161339_ _tl161321161336_))
                              (if '#t
                                  (if (_current-phi161311_)
                                      (_K161314_ _body161339_ '())
                                      (call-with-parameters
                                       (lambda () (_K161314_ _body161339_ '()))
                                       _current-phi161311_
                                       (gx#current-expander-phi)))
                                  (_E161318161327_)))))
                        (_E161318161327_)))))
            (_E161317161342_)))))
    (define gx#core-expand-import%__%
      (lambda (_stx160975_ _internal-expand?160976_)
        (letrec ((_expand1160978_
                  (lambda (_hd161288_ _K161289_ _rest161290_ _r161291_)
                    (if (gx#core-bound-module? _hd161288_)
                        (_import1160979_
                         (gx#syntax-local-e__0 _hd161288_)
                         _K161289_
                         _rest161290_
                         _r161291_)
                        (if (gx#core-library-module-path? _hd161288_)
                            (_import1160979_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _hd161288_))
                             _K161289_
                             _rest161290_
                             _r161291_)
                            (if (gx#core-library-relative-module-path?
                                 _hd161288_)
                                (_import1160979_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _hd161288_))
                                 _K161289_
                                 _rest161290_
                                 _r161291_)
                                (let ((_e161293_ (gx#stx-e _hd161288_)))
                                  (if (pair? _e161293_)
                                      (let ((_$e161295_
                                             (gx#stx-e (car _e161293_))))
                                        (if (eq? 'spec: _$e161295_)
                                            (_import-spec160982_
                                             _hd161288_
                                             _K161289_
                                             _rest161290_
                                             _r161291_)
                                            (if (eq? 'in: _$e161295_)
                                                (_import-submodule160980_
                                                 _hd161288_
                                                 _K161289_
                                                 _rest161290_
                                                 _r161291_)
                                                (if (eq? 'runtime: _$e161295_)
                                                    (_import-runtime160981_
                                                     _hd161288_
                                                     _K161289_
                                                     _rest161290_
                                                     _r161291_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _stx160975_
                                                     _hd161288_)))))
                                      (if (string? _e161293_)
                                          (_import1160979_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _hd161288_
                                             (gx#stx-source _stx160975_)))
                                           _K161289_
                                           _rest161290_
                                           _r161291_)
                                          (if (##structure-instance-of?
                                               _e161293_
                                               'gx#module-context::t)
                                              (_K161289_
                                               _rest161290_
                                               (cons _e161293_ _r161291_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _stx160975_
                                               _hd161288_))))))))))
                 (_import1160979_
                  (lambda (_ctx161277_ _K161278_ _rest161279_ _r161280_)
                    (let ((_dphi161282_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_K161278_
                       _rest161279_
                       (cons (##structure
                              gx#import-set::t
                              _ctx161277_
                              _dphi161282_
                              (map (lambda (_g161283161285_)
                                     (gx#core-module-export->import__%
                                      _g161283161285_
                                      '#f
                                      _dphi161282_))
                                   (##unchecked-structure-ref
                                    _ctx161277_
                                    '9
                                    gx#module-context::t
                                    '#f)))
                             _r161280_)))))
                 (_import-submodule160980_
                  (lambda (_hd161244_ _K161245_ _rest161246_ _r161247_)
                    (let* ((_e161248161255_ _hd161244_)
                           (_E161250161259_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e161248161255_)))
                           (_E161249161273_
                            (lambda ()
                              (if (gx#stx-pair? _e161248161255_)
                                  (let ((_e161251161263_
                                         (gx#syntax-e _e161248161255_)))
                                    (let ((_hd161252161266_
                                           (##car _e161251161263_))
                                          (_tl161253161268_
                                           (##cdr _e161251161263_)))
                                      (let ((_spath161271_ _tl161253161268_))
                                        (if '#t
                                            (_import1160979_
                                             (_import-spec-source160983_
                                              _spath161271_)
                                             _K161245_
                                             _rest161246_
                                             _r161247_)
                                            (_E161250161259_)))))
                                  (_E161250161259_)))))
                      (_E161249161273_))))
                 (_import-runtime160981_
                  (lambda (_hd161211_ _K161212_ _rest161213_ _r161214_)
                    (let* ((_e161215161222_ _hd161211_)
                           (_E161217161226_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e161215161222_)))
                           (_E161216161240_
                            (lambda ()
                              (if (gx#stx-pair? _e161215161222_)
                                  (let ((_e161218161230_
                                         (gx#syntax-e _e161215161222_)))
                                    (let ((_hd161219161233_
                                           (##car _e161218161230_))
                                          (_tl161220161235_
                                           (##cdr _e161218161230_)))
                                      (let ((_spath161238_ _tl161220161235_))
                                        (if '#t
                                            (_K161212_
                                             _rest161213_
                                             (cons (_import-spec-source160983_
                                                    _spath161238_)
                                                   _r161214_))
                                            (_E161217161226_)))))
                                  (_E161217161226_)))))
                      (_E161216161240_))))
                 (_import-spec160982_
                  (lambda (_hd161050_ _K161051_ _rest161052_ _r161053_)
                    (let* ((_e161054161071_ _hd161050_)
                           (_E161063161075_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e161054161071_)))
                           (_E161056161185_
                            (lambda ()
                              (if (gx#stx-pair? _e161054161071_)
                                  (let ((_e161064161079_
                                         (gx#syntax-e _e161054161071_)))
                                    (let ((_hd161065161082_
                                           (##car _e161064161079_))
                                          (_tl161066161084_
                                           (##cdr _e161064161079_)))
                                      (if (gx#stx-pair? _tl161066161084_)
                                          (let ((_e161067161087_
                                                 (gx#syntax-e
                                                  _tl161066161084_)))
                                            (let ((_hd161068161090_
                                                   (##car _e161067161087_))
                                                  (_tl161069161092_
                                                   (##cdr _e161067161087_)))
                                              (let* ((_path161095_
                                                      _hd161068161090_)
                                                     (_specs161097_
                                                      _tl161069161092_))
                                                (if '#t
                                                    (let ((_src-ctx161099_
                                                           (_import-spec-source160983_
                                                            _path161095_))
                                                          (_exports161100_
                                                           (make-table))
                                                          (_specs161101_
                                                           (gx#syntax->list
                                                            _specs161097_)))
                                                      (for-each
                                                       (lambda (_out161103_)
                                                         (table-set!
                                                          _exports161100_
                                                          (cons (##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _out161103_
                         '3
                         gx#module-export::t
                         '#f)
                        (##unchecked-structure-ref
                         _out161103_
                         '4
                         gx#module-export::t
                         '#f))
                  _out161103_))
               (##unchecked-structure-ref
                _src-ctx161099_
                '9
                gx#module-context::t
                '#f))
              (_K161051_
               _rest161052_
               (foldl1 (lambda (_spec161105_ _r161106_)
                         (let* ((_e161107161123_ _spec161105_)
                                (_E161109161127_
                                 (lambda ()
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid syntax-case clause"
                                    _e161107161123_)))
                                (_E161108161181_
                                 (lambda ()
                                   (if (gx#stx-pair? _e161107161123_)
                                       (let ((_e161110161131_
                                              (gx#syntax-e _e161107161123_)))
                                         (let ((_hd161111161134_
                                                (##car _e161110161131_))
                                               (_tl161112161136_
                                                (##cdr _e161110161131_)))
                                           (let ((_phi161139_
                                                  _hd161111161134_))
                                             (if (gx#stx-pair?
                                                  _tl161112161136_)
                                                 (let ((_e161113161141_
                                                        (gx#syntax-e
                                                         _tl161112161136_)))
                                                   (let ((_hd161114161144_
                                                          (##car _e161113161141_))
                                                         (_tl161115161146_
                                                          (##cdr _e161113161141_)))
                                                     (let ((_name161149_
                                                            _hd161114161144_))
                                                       (if (gx#stx-pair?
                                                            _tl161115161146_)
                                                           (let ((_e161116161151_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl161115161146_)))
                     (let ((_hd161117161154_ (##car _e161116161151_))
                           (_tl161118161156_ (##cdr _e161116161151_)))
                       (let ((_src-phi161159_ _hd161117161154_))
                         (if (gx#stx-pair? _tl161118161156_)
                             (let ((_e161119161161_
                                    (gx#syntax-e _tl161118161156_)))
                               (let ((_hd161120161164_ (##car _e161119161161_))
                                     (_tl161121161166_
                                      (##cdr _e161119161161_)))
                                 (let ((_src-name161169_ _hd161120161164_))
                                   (if (gx#stx-null? _tl161121161166_)
                                       (if (and (gx#stx-fixnum?
                                                 _src-phi161159_)
                                                (gx#identifier?
                                                 _src-name161169_)
                                                (gx#stx-fixnum? _phi161139_)
                                                (gx#identifier? _name161149_))
                                           (let ((_src-phi161171_
                                                  (gx#stx-e _src-phi161159_))
                                                 (_src-name161172_
                                                  (gx#core-identifier-key
                                                   _src-name161169_))
                                                 (_phi161173_
                                                  (gx#stx-e _phi161139_))
                                                 (_name161174_
                                                  (gx#core-identifier-key
                                                   _name161149_)))
                                             (let ((_$e161176_
                                                    (table-ref
                                                     _exports161100_
                                                     (cons _src-phi161171_
                                                           _src-name161172_)
                                                     '#f)))
                                               (if _$e161176_
                                                   ((lambda (_out161179_)
                                                      (cons (gx#core-module-export->import__%
                                                             _out161179_
                                                             _name161174_
                                                             (fx- _phi161173_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _src-phi161171_))
                    _r161106_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _$e161176_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; no matching export"
                                                    _stx160975_
                                                    _hd161050_))))
                                           (_E161109161127_))
                                       (_E161109161127_)))))
                             (_E161109161127_)))))
                   (_E161109161127_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E161109161127_)))))
                                       (_E161109161127_)))))
                           (_E161108161181_)))
                       _r161053_
                       _specs161101_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E161063161075_)))))
                                          (_E161063161075_))))
                                  (_E161063161075_))))
                           (_E161055161207_
                            (lambda ()
                              (if (gx#stx-pair? _e161054161071_)
                                  (let ((_e161057161189_
                                         (gx#syntax-e _e161054161071_)))
                                    (let ((_hd161058161192_
                                           (##car _e161057161189_))
                                          (_tl161059161194_
                                           (##cdr _e161057161189_)))
                                      (if (gx#stx-pair? _tl161059161194_)
                                          (let ((_e161060161197_
                                                 (gx#syntax-e
                                                  _tl161059161194_)))
                                            (let ((_hd161061161200_
                                                   (##car _e161060161197_))
                                                  (_tl161062161202_
                                                   (##cdr _e161060161197_)))
                                              (let ((_path161205_
                                                     _hd161061161200_))
                                                (if (gx#stx-null?
                                                     _tl161062161202_)
                                                    (if '#t
                                                        (_K161051_
                                                         _rest161052_
                                                         (cons (_import-spec-source160983_
                                                                _path161205_)
                                                               _r161053_))
                                                        (_E161056161185_))
                                                    (_E161056161185_)))))
                                          (_E161056161185_))))
                                  (_E161056161185_)))))
                      (_E161055161207_))))
                 (_import-spec-source160983_
                  (lambda (_spath161048_)
                    (gx#core-import-nested-module _spath161048_ _stx160975_)))
                 (_import!160984_
                  (lambda (_rbody160997_)
                    (letrec* ((_current-ctx160999_
                               (gx#current-expander-context))
                              (_deps161000_ (make-table 'test: eq?))
                              (_bind!161001_
                               (lambda (_hd161046_)
                                 (gx#core-bind-import!__1
                                  _hd161046_
                                  _current-ctx160999_))))
                      (let _lp161003_ ((_rest161005_ _rbody160997_)
                                       (_body161006_ '()))
                        (let* ((_rest161007161015_ _rest161005_)
                               (_else161009161025_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _current-ctx160999_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _current-ctx160999_
                                       (foldl1 cons
                                               (##unchecked-structure-ref
                                                _current-ctx160999_
                                                '8
                                                gx#module-context::t
                                                '#f)
                                               _body161006_)
                                       '8
                                       gx#module-context::t
                                       '#f)
                                      '#!void)
                                  (table-for-each
                                   (lambda (_ctx161023_ _g168421_)
                                     (gx#eval-module _ctx161023_))
                                   _deps161000_)
                                  _body161006_))
                               (_K161011161034_
                                (lambda (_rest161028_ _hd161029_)
                                  (if (##structure-direct-instance-of?
                                       _hd161029_
                                       'gx#module-import::t)
                                      (begin
                                        (_bind!161001_ _hd161029_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _hd161029_
                                                   '3
                                                   gx#module-import::t
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _hd161029_
                                                            '1
                                                            gx#module-import::t
                                                            '#f)
                                                           '3
                                                           gx#module-export::t
                                                           '#f)))
                                            (table-set!
                                             _deps161000_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _hd161029_
                                               '1
                                               gx#module-import::t
                                               '#f)
                                              '1
                                              gx#module-export::t
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _hd161029_
                                           'gx#import-set::t)
                                          (begin
                                            (for-each
                                             _bind!161001_
                                             (##unchecked-structure-ref
                                              _hd161029_
                                              '3
                                              gx#import-set::t
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _hd161029_
                                                  '2
                                                  gx#import-set::t
                                                  '#f))
                                                (table-set!
                                                 _deps161000_
                                                 (##unchecked-structure-ref
                                                  _hd161029_
                                                  '1
                                                  gx#import-set::t
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_$e161031_
                                                 (##structure-instance-of?
                                                  _hd161029_
                                                  'gx#module-context::t)))
                                            (if _$e161031_
                                                _$e161031_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _stx160975_
                                                 _hd161029_)))))
                                  (_lp161003_
                                   _rest161028_
                                   (cons _hd161029_ _body161006_)))))
                          (if (##pair? _rest161007161015_)
                              (let ((_hd161012161037_
                                     (##car _rest161007161015_))
                                    (_tl161013161039_
                                     (##cdr _rest161007161015_)))
                                (let* ((_hd161042_ _hd161012161037_)
                                       (_rest161044_ _tl161013161039_))
                                  (_K161011161034_ _rest161044_ _hd161042_)))
                              (_else161009161025_)))))))
                 (_expanded-import?160985_
                  (lambda (_e160989_)
                    (let ((_$e160991_
                           (##structure-direct-instance-of?
                            _e160989_
                            'gx#import-set::t)))
                      (if _$e160991_
                          _$e160991_
                          (let ((_$e160994_
                                 (##structure-direct-instance-of?
                                  _e160989_
                                  'gx#module-import::t)))
                            (if _$e160994_
                                _$e160994_
                                (##structure-instance-of?
                                 _e160989_
                                 'gx#module-context::t))))))))
          (let ((_rbody160987_
                 (gx#core-expand-import/export
                  _stx160975_
                  _expanded-import?160985_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _expand1160978_)))
            (if _internal-expand?160976_
                (reverse _rbody160987_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_import!160984_ _rbody160987_))
                 (gx#stx-source _stx160975_)))))))
    (define gx#core-expand-import%__0
      (lambda (_stx161301_)
        (let ((_internal-expand?161303_ '#f))
          (gx#core-expand-import%__% _stx161301_ _internal-expand?161303_))))
    (define gx#core-expand-import%
      (lambda _g168423_
        (let ((_g168422_ (##length _g168423_)))
          (cond ((##fx= _g168422_ 1)
                 (apply (lambda (_stx161301_)
                          (gx#core-expand-import%__0 _stx161301_))
                        _g168423_))
                ((##fx= _g168422_ 2)
                 (apply (lambda (_stx161305_ _internal-expand?161306_)
                          (gx#core-expand-import%__%
                           _stx161305_
                           _internal-expand?161306_))
                        _g168423_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g168423_))))))
    (define gx#core-import-nested-module
      (lambda (_spath160902_ _where160903_)
        (let* ((_e160904160911_ _spath160902_)
               (_E160906160915_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160904160911_)))
               (_E160905160970_
                (lambda ()
                  (if (gx#stx-pair? _e160904160911_)
                      (let ((_e160907160919_ (gx#syntax-e _e160904160911_)))
                        (let ((_hd160908160922_ (##car _e160907160919_))
                              (_tl160909160924_ (##cdr _e160907160919_)))
                          (let* ((_origin160927_ _hd160908160922_)
                                 (_sub160929_ _tl160909160924_))
                            (if '#t
                                (let ((_origin-ctx160931_
                                       (if (gx#stx-false? _origin160927_)
                                           (gx#current-expander-context)
                                           (gx#import-module__0
                                            _origin160927_))))
                                  (let _lp160933_ ((_rest160935_ _sub160929_)
                                                   (_ctx160936_
                                                    _origin-ctx160931_))
                                    (let* ((_e160937160944_ _rest160935_)
                                           (_E160939160948_
                                            (lambda () _ctx160936_))
                                           (_E160938160966_
                                            (lambda ()
                                              (if (gx#stx-pair?
                                                   _e160937160944_)
                                                  (let ((_e160940160952_
                                                         (gx#syntax-e
                                                          _e160937160944_)))
                                                    (let ((_hd160941160955_
                                                           (##car _e160940160952_))
                                                          (_tl160942160957_
                                                           (##cdr _e160940160952_)))
                                                      (let* ((_id160960_
                                                              _hd160941160955_)
                                                             (_rest160962_
                                                              _tl160942160957_))
                                                        (if '#t
                                                            (let ((_bind160964_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#resolve-identifier__%
                            _id160960_
                            '0
                            _ctx160936_)))
                      (if (and (##structure-direct-instance-of?
                                _bind160964_
                                'gx#syntax-binding::t)
                               (##structure-instance-of?
                                (##unchecked-structure-ref
                                 _bind160964_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                'gx#module-context::t))
                          '#!void
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; not bound as module"
                           _where160903_
                           _spath160902_
                           _id160960_))
                      (_lp160933_
                       _rest160962_
                       (##unchecked-structure-ref
                        _bind160964_
                        '4
                        gx#syntax-binding::t
                        '#f)))
                    (_E160939160948_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E160939160948_)))))
                                      (_E160938160966_))))
                                (_E160906160915_)))))
                      (_E160906160915_)))))
          (_E160905160970_))))
    (define gx#core-expand-import-source
      (lambda (_hd160900_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _hd160900_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_stx160408_ _internal-expand?160409_)
        (letrec* ((_make-export__168352168353_
                   (lambda (_bind160848_ _phi160849_ _ctx160850_ _name160851_)
                     (let* ((_key160853_
                             (##unchecked-structure-ref
                              _bind160848_
                              '2
                              gx#binding::t
                              '#f))
                            (_export-key160855_
                             (if _name160851_
                                 (gx#core-identifier-key _name160851_)
                                 _key160853_)))
                       (##structure
                        gx#module-export::t
                        _ctx160850_
                        _key160853_
                        _phi160849_
                        _export-key160855_
                        (let ((_$e160858_
                               (##structure-instance-of?
                                _bind160848_
                                'gx#extern-binding::t)))
                          (if _$e160858_
                              _$e160858_
                              (##structure-direct-instance-of?
                               _bind160848_
                               'gx#import-binding::t)))))))
                  (_make-export__0__168354168357_
                   (lambda (_bind160864_)
                     (let* ((_phi160866_ (gx#current-export-expander-phi))
                            (_ctx160868_ (gx#current-expander-context))
                            (_name160870_ '#f))
                       (_make-export__168352168353_
                        _bind160864_
                        _phi160866_
                        _ctx160868_
                        _name160870_))))
                  (_make-export__1__168355168358_
                   (lambda (_bind160872_ _phi160873_)
                     (let* ((_ctx160875_ (gx#current-expander-context))
                            (_name160877_ '#f))
                       (_make-export__168352168353_
                        _bind160872_
                        _phi160873_
                        _ctx160875_
                        _name160877_))))
                  (_make-export__2__168356168359_
                   (lambda (_bind160879_ _phi160880_ _ctx160881_)
                     (let ((_name160883_ '#f))
                       (_make-export__168352168353_
                        _bind160879_
                        _phi160880_
                        _ctx160881_
                        _name160883_))))
                  (_make-export160411_
                   (lambda _g168425_
                     (let ((_g168424_ (##length _g168425_)))
                       (cond ((##fx= _g168424_ 1)
                              (apply (lambda (_bind160864_)
                                       (_make-export__0__168354168357_
                                        _bind160864_))
                                     _g168425_))
                             ((##fx= _g168424_ 2)
                              (apply (lambda (_bind160872_ _phi160873_)
                                       (_make-export__1__168355168358_
                                        _bind160872_
                                        _phi160873_))
                                     _g168425_))
                             ((##fx= _g168424_ 3)
                              (apply (lambda (_bind160879_
                                              _phi160880_
                                              _ctx160881_)
                                       (_make-export__2__168356168359_
                                        _bind160879_
                                        _phi160880_
                                        _ctx160881_))
                                     _g168425_))
                             ((##fx= _g168424_ 4)
                              (apply (lambda (_bind160885_
                                              _phi160886_
                                              _ctx160887_
                                              _name160888_)
                                       (_make-export__168352168353_
                                        _bind160885_
                                        _phi160886_
                                        _ctx160887_
                                        _name160888_))
                                     _g168425_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g168425_))))))
                  (_expand1160412_
                   (lambda (_hd160561_ _K160562_ _rest160563_ _r160564_)
                     (let* ((_e160565160597_ _hd160561_)
                            (_E160592160601_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _stx160408_
                                _hd160561_)))
                            (_E160582160680_
                             (lambda ()
                               (if (gx#stx-pair? _e160565160597_)
                                   (let ((_e160593160605_
                                          (gx#syntax-e _e160565160597_)))
                                     (let ((_hd160594160608_
                                            (##car _e160593160605_))
                                           (_tl160595160610_
                                            (##cdr _e160593160605_)))
                                       (if (eq? (gx#stx-e _hd160594160608_)
                                                'import:)
                                           (let ((_in160613_ _tl160595160610_))
                                             (if (gx#stx-list? _in160613_)
                                                 (let _lp160615_ ((_in-rest160617_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _in160613_)
                          (_r160618_ _r160564_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_e160619160626_
                                                           _in-rest160617_)
                                                          (_E160621160630_
                                                           (lambda ()
                                                             (_K160562_
                                                              _rest160563_
                                                              _r160618_)))
                                                          (_E160620160676_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _e160619160626_)
                         (let ((_e160622160634_ (gx#syntax-e _e160619160626_)))
                           (let ((_hd160623160637_ (##car _e160622160634_))
                                 (_tl160624160639_ (##cdr _e160622160634_)))
                             (let* ((_hd160642_ _hd160623160637_)
                                    (_in-rest160644_ _tl160624160639_))
                               (if '#t
                                   (let ((_src160674_
                                          (if (gx#core-bound-module?
                                               _hd160642_)
                                              (gx#syntax-local-e__0 _hd160642_)
                                              (if (gx#core-library-module-path?
                                                   _hd160642_)
                                                  (gx#import-module__0
                                                   (gx#core-resolve-library-module-path
                                                    _hd160642_))
                                                  (if (gx#core-library-relative-module-path?
                                                       _hd160642_)
                                                      (gx#import-module__0
                                                       (gx#core-resolve-library-relative-module-path
                                                        _hd160642_))
                                                      (if (gx#stx-string?
                                                           _hd160642_)
                                                          (gx#import-module__0
                                                           (gx#core-resolve-module-path__%
                                                            _hd160642_
                                                            (gx#stx-source
                                                             _stx160408_)))
                                                          (let* ((_e160645160652_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd160642_)
                         (_E160647160656_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; illegal re-export"
                             _stx160408_
                             _hd160642_)))
                         (_E160646160670_
                          (lambda ()
                            (if (gx#stx-pair? _e160645160652_)
                                (let ((_e160648160660_
                                       (gx#syntax-e _e160645160652_)))
                                  (let ((_hd160649160663_
                                         (##car _e160648160660_))
                                        (_tl160650160665_
                                         (##cdr _e160648160660_)))
                                    (if (eq? (gx#stx-e _hd160649160663_) 'in:)
                                        (let ((_spath160668_ _tl160650160665_))
                                          (if '#t
                                              (gx#core-import-nested-module
                                               _spath160668_
                                               _stx160408_)
                                              (_E160647160656_)))
                                        (_E160647160656_))))
                                (_E160647160656_)))))
                    (_E160646160670_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_lp160615_
                                      _in-rest160644_
                                      (_export-imports160413_
                                       _src160674_
                                       _r160618_)))
                                   (_E160621160630_)))))
                         (_E160621160630_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E160620160676_)))
                                                 (_E160592160601_)))
                                           (_E160592160601_))))
                                   (_E160592160601_))))
                            (_E160569160719_
                             (lambda ()
                               (if (gx#stx-pair? _e160565160597_)
                                   (let ((_e160583160684_
                                          (gx#syntax-e _e160565160597_)))
                                     (let ((_hd160584160687_
                                            (##car _e160583160684_))
                                           (_tl160585160689_
                                            (##cdr _e160583160684_)))
                                       (if (eq? (gx#stx-e _hd160584160687_)
                                                'rename:)
                                           (if (gx#stx-pair? _tl160585160689_)
                                               (let ((_e160586160692_
                                                      (gx#syntax-e
                                                       _tl160585160689_)))
                                                 (let ((_hd160587160695_
                                                        (##car _e160586160692_))
                                                       (_tl160588160697_
                                                        (##cdr _e160586160692_)))
                                                   (let ((_id160700_
                                                          _hd160587160695_))
                                                     (if (gx#stx-pair?
                                                          _tl160588160697_)
                                                         (let ((_e160589160702_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl160588160697_)))
                   (let ((_hd160590160705_ (##car _e160589160702_))
                         (_tl160591160707_ (##cdr _e160589160702_)))
                     (let ((_name160710_ _hd160590160705_))
                       (if (gx#stx-null? _tl160591160707_)
                           (if '#t
                               (let* ((_phi160712_
                                       (gx#current-export-expander-phi))
                                      (_$e160714_
                                       (gx#core-resolve-identifier__1
                                        _id160700_
                                        _phi160712_)))
                                 (if _$e160714_
                                     ((lambda (_bind160717_)
                                        (_K160562_
                                         _rest160563_
                                         (cons (_make-export__168352168353_
                                                _bind160717_
                                                _phi160712_
                                                (gx#current-expander-context)
                                                _name160710_)
                                               _r160564_)))
                                      _$e160714_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Reference to unbound identifier"
                                      _stx160408_
                                      _hd160561_
                                      _id160700_)))
                               (_E160582160680_))
                           (_E160582160680_)))))
                 (_E160582160680_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E160582160680_))
                                           (_E160582160680_))))
                                   (_E160582160680_))))
                            (_E160568160768_
                             (lambda ()
                               (if (gx#stx-pair? _e160565160597_)
                                   (let ((_e160570160723_
                                          (gx#syntax-e _e160565160597_)))
                                     (let ((_hd160571160726_
                                            (##car _e160570160723_))
                                           (_tl160572160728_
                                            (##cdr _e160570160723_)))
                                       (if (eq? (gx#stx-e _hd160571160726_)
                                                'spec:)
                                           (if (gx#stx-pair? _tl160572160728_)
                                               (let ((_e160573160731_
                                                      (gx#syntax-e
                                                       _tl160572160728_)))
                                                 (let ((_hd160574160734_
                                                        (##car _e160573160731_))
                                                       (_tl160575160736_
                                                        (##cdr _e160573160731_)))
                                                   (let ((_phi160739_
                                                          _hd160574160734_))
                                                     (if (gx#stx-pair?
                                                          _tl160575160736_)
                                                         (let ((_e160576160741_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl160575160736_)))
                   (let ((_hd160577160744_ (##car _e160576160741_))
                         (_tl160578160746_ (##cdr _e160576160741_)))
                     (let ((_id160749_ _hd160577160744_))
                       (if (gx#stx-pair? _tl160578160746_)
                           (let ((_e160579160751_
                                  (gx#syntax-e _tl160578160746_)))
                             (let ((_hd160580160754_ (##car _e160579160751_))
                                   (_tl160581160756_ (##cdr _e160579160751_)))
                               (let ((_name160759_ _hd160580160754_))
                                 (if (gx#stx-null? _tl160581160756_)
                                     (if (and (gx#stx-fixnum? _phi160739_)
                                              (gx#identifier? _id160749_)
                                              (gx#identifier? _name160759_))
                                         (let* ((_phi160761_
                                                 (gx#stx-e _phi160739_))
                                                (_$e160763_
                                                 (gx#core-resolve-identifier__1
                                                  _id160749_
                                                  _phi160761_)))
                                           (if _$e160763_
                                               ((lambda (_bind160766_)
                                                  (_K160562_
                                                   _rest160563_
                                                   (cons (_make-export__168352168353_
                                                          _bind160766_
                                                          _phi160761_
                                                          (gx#current-expander-context)
                                                          _name160759_)
                                                         _r160564_)))
                                                _$e160763_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _stx160408_
                                                _hd160561_
                                                _id160749_)))
                                         (_E160569160719_))
                                     (_E160569160719_)))))
                           (_E160569160719_)))))
                 (_E160569160719_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E160569160719_))
                                           (_E160569160719_))))
                                   (_E160569160719_))))
                            (_E160567160779_
                             (lambda ()
                               (let ((_id160772_ _e160565160597_))
                                 (if (gx#identifier? _id160772_)
                                     (let ((_$e160774_
                                            (gx#core-resolve-identifier__1
                                             _id160772_
                                             (gx#current-export-expander-phi))))
                                       (if _$e160774_
                                           ((lambda (_bind160777_)
                                              (_K160562_
                                               _rest160563_
                                               (cons (_make-export__0__168354168357_
                                                      _bind160777_)
                                                     _r160564_)))
                                            _$e160774_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _stx160408_
                                            _hd160561_)))
                                     (_E160568160768_)))))
                            (_E160566160843_
                             (lambda ()
                               (if (eq? (gx#stx-e _e160565160597_) '#t)
                                   (if '#t
                                       (let* ((_current-ctx160783_
                                               (gx#current-expander-context))
                                              (_current-phi160785_
                                               (gx#current-export-expander-phi))
                                              (_phi-ctx160787_
                                               (gx#core-context-shift
                                                _current-ctx160783_
                                                _current-phi160785_))
                                              (_phi-bind160789_
                                               (table->list
                                                (##unchecked-structure-ref
                                                 _phi-ctx160787_
                                                 '2
                                                 gx#expander-context::t
                                                 '#f))))
                                         (let _lp160792_ ((_bind-rest160794_
                                                           _phi-bind160789_)
                                                          (_set160795_ '()))
                                           (let* ((_bind-rest160796160806_
                                                   _bind-rest160794_)
                                                  (_else160798160814_
                                                   (lambda ()
                                                     (_K160562_
                                                      _rest160563_
                                                      (cons (##structure
                                                             gx#export-set::t
                                                             '#f
                                                             _current-phi160785_
                                                             _set160795_)
                                                            _r160564_))))
                                                  (_K160800160824_
                                                   (lambda (_bind-rest160817_
                                                            _bind160818_
                                                            _key160819_)
                                                     (if (or (##structure-direct-instance-of?
                                                              _bind160818_
                                                              'gx#import-binding::t)
                                                             (gx#private-feature-binding?
                                                              _bind160818_))
                                                         (_lp160792_
                                                          _bind-rest160817_
                                                          _set160795_)
                                                         (_lp160792_
                                                          _bind-rest160817_
                                                          (cons (_make-export__2__168356168359_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind160818_
                         _current-phi160785_
                         _current-ctx160783_)
                        _set160795_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _bind-rest160796160806_)
                                                 (let ((_hd160801160827_
                                                        (##car _bind-rest160796160806_))
                                                       (_tl160802160829_
                                                        (##cdr _bind-rest160796160806_)))
                                                   (if (##pair? _hd160801160827_)
                                                       (let ((_hd160803160832_
                                                              (##car _hd160801160827_))
                                                             (_tl160804160834_
                                                              (##cdr _hd160801160827_)))
                                                         (let* ((_key160837_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd160803160832_)
                        (_bind160839_ _tl160804160834_)
                        (_bind-rest160841_ _tl160802160829_))
                   (_K160800160824_
                    _bind-rest160841_
                    _bind160839_
                    _key160837_)))
               (_else160798160814_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_else160798160814_)))))
                                       (_E160567160779_))
                                   (_E160567160779_)))))
                       (_E160566160843_))))
                  (_export-imports160413_
                   (lambda (_src160437_ _r160438_)
                     (letrec* ((_current-ctx160440_
                                (gx#current-expander-context))
                               (_current-phi160441_
                                (gx#current-export-expander-phi))
                               (_import->export160442_
                                (lambda (_in160523_)
                                  (let* ((_in160524160532_ _in160523_)
                                         (_E160526160536_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _in160524160532_)))
                                         (_K160527160543_
                                          (lambda (_phi160539_
                                                   _key160540_
                                                   _out160541_)
                                            (##structure
                                             gx#module-export::t
                                             _current-ctx160440_
                                             _key160540_
                                             _phi160539_
                                             _key160540_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _in160524160532_
                                         'gx#module-import::t)
                                        (let* ((_e160528160546_
                                                (##unchecked-structure-ref
                                                 _in160524160532_
                                                 '1
                                                 gx#module-import::t
                                                 '#f))
                                               (_out160549_ _e160528160546_)
                                               (_e160529160551_
                                                (##unchecked-structure-ref
                                                 _in160524160532_
                                                 '2
                                                 gx#module-import::t
                                                 '#f))
                                               (_key160554_ _e160529160551_)
                                               (_e160530160556_
                                                (##unchecked-structure-ref
                                                 _in160524160532_
                                                 '3
                                                 gx#module-import::t
                                                 '#f))
                                               (_phi160559_ _e160530160556_))
                                          (_K160527160543_
                                           _phi160559_
                                           _key160554_
                                           _out160549_))
                                        (_E160526160536_)))))
                               (_fold-e160443_
                                (lambda (_in160445_ _r160446_)
                                  (let* ((_in160447160461_ _in160445_)
                                         (_else160450160469_
                                          (lambda () _r160446_)))
                                    (let ((_K160456160505_
                                           (lambda (_phi160501_
                                                    _key160502_
                                                    _out160503_)
                                             (if (and (fx= _phi160501_
                                                           _current-phi160441_)
                                                      (eq? _src160437_
                                                           (##unchecked-structure-ref
                                                            _out160503_
                                                            '1
                                                            gx#module-export::t
                                                            '#f)))
                                                 (cons (_import->export160442_
                                                        _in160445_)
                                                       _r160446_)
                                                 _r160446_)))
                                          (_K160452160480_
                                           (lambda (_imports160473_
                                                    _phi160474_
                                                    _ctx160475_)
                                             (if (and (fx= _phi160474_
                                                           _current-phi160441_)
                                                      (eq? _src160437_
                                                           _ctx160475_))
                                                 (foldl1 (lambda (_in160477_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r160478_)
                   (cons (_import->export160442_ _in160477_) _r160478_))
                 _r160446_
                 _imports160473_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _r160446_))))
                                      (let ((_try-match160449160498_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _in160447160461_
                                                    'gx#import-set::t)
                                                   (let* ((_e160453160483_
                                                           (##unchecked-structure-ref
                                                            _in160447160461_
                                                            '1
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e160454160488_
                                                           (##unchecked-structure-ref
                                                            _in160447160461_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e160455160493_
                                                           (##unchecked-structure-ref
                                                            _in160447160461_
                                                            '3
                                                            gx#import-set::t
                                                            '#f)))
                                                     (let ((_ctx160486_
                                                            _e160453160483_)
                                                           (_phi160491_
                                                            _e160454160488_)
                                                           (_imports160496_
                                                            _e160455160493_))
                                                       (_K160452160480_
                                                        _imports160496_
                                                        _phi160491_
                                                        _ctx160486_)))
                                                   (_else160450160469_)))))
                                        (if (##structure-direct-instance-of?
                                             _in160447160461_
                                             'gx#module-import::t)
                                            (let* ((_e160457160508_
                                                    (##unchecked-structure-ref
                                                     _in160447160461_
                                                     '1
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e160458160513_
                                                    (##unchecked-structure-ref
                                                     _in160447160461_
                                                     '2
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e160459160518_
                                                    (##unchecked-structure-ref
                                                     _in160447160461_
                                                     '3
                                                     gx#module-import::t
                                                     '#f)))
                                              (let ((_out160511_
                                                     _e160457160508_)
                                                    (_key160516_
                                                     _e160458160513_)
                                                    (_phi160521_
                                                     _e160459160518_))
                                                (_K160456160505_
                                                 _phi160521_
                                                 _key160516_
                                                 _out160511_)))
                                            (_try-match160449160498_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _src160437_
                              _current-phi160441_
                              (foldl1 _fold-e160443_
                                      '()
                                      (##unchecked-structure-ref
                                       _current-ctx160440_
                                       '8
                                       gx#module-context::t
                                       '#f)))
                             _r160438_))))
                  (_export!160414_
                   (lambda (_rbody160427_)
                     (letrec* ((_current-ctx160429_
                                (gx#current-expander-context))
                               (_fold-e160430_
                                (lambda (_out160434_ _r160435_)
                                  (if (##structure-direct-instance-of?
                                       _out160434_
                                       'gx#module-export::t)
                                      (cons _out160434_ _r160435_)
                                      (if (##structure-direct-instance-of?
                                           _out160434_
                                           'gx#export-set::t)
                                          (foldl1 cons
                                                  _r160435_
                                                  (##unchecked-structure-ref
                                                   _out160434_
                                                   '3
                                                   gx#export-set::t
                                                   '#f))
                                          _r160435_)))))
                       (let ((_body160432_ (reverse _rbody160427_)))
                         (##unchecked-structure-set!
                          _current-ctx160429_
                          (foldl1 _fold-e160430_
                                  (##unchecked-structure-ref
                                   _current-ctx160429_
                                   '9
                                   gx#module-context::t
                                   '#f)
                                  _body160432_)
                          '9
                          gx#module-context::t
                          '#f)
                         _body160432_))))
                  (_expanded-export?160415_
                   (lambda (_e160422_)
                     (let ((_$e160424_
                            (##structure-direct-instance-of?
                             _e160422_
                             'gx#module-export::t)))
                       (if _$e160424_
                           _$e160424_
                           (##structure-direct-instance-of?
                            _e160422_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _internal-expand?160409_)
              (let ((_rbody160420_
                     (gx#core-expand-import/export
                      _stx160408_
                      _expanded-export?160415_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _expand1160412_)))
                (if _internal-expand?160409_
                    (reverse _rbody160420_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons '%#export (_export!160414_ _rbody160420_))
                     (gx#stx-source _stx160408_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _stx160408_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _stx160408_))))))
    (define gx#core-expand-export%__0
      (lambda (_stx160893_)
        (let ((_internal-expand?160895_ '#f))
          (gx#core-expand-export%__% _stx160893_ _internal-expand?160895_))))
    (define gx#core-expand-export%
      (lambda _g168427_
        (let ((_g168426_ (##length _g168427_)))
          (cond ((##fx= _g168426_ 1)
                 (apply (lambda (_stx160893_)
                          (gx#core-expand-export%__0 _stx160893_))
                        _g168427_))
                ((##fx= _g168426_ 2)
                 (apply (lambda (_stx160897_ _internal-expand?160898_)
                          (gx#core-expand-export%__%
                           _stx160897_
                           _internal-expand?160898_))
                        _g168427_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g168427_))))))
    (define gx#core-expand-export-source
      (lambda (_hd160405_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _hd160405_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_stx160375_)
        (let* ((_e160376160383_ _stx160375_)
               (_E160378160387_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160376160383_)))
               (_E160377160401_
                (lambda ()
                  (if (gx#stx-pair? _e160376160383_)
                      (let ((_e160379160391_ (gx#syntax-e _e160376160383_)))
                        (let ((_hd160380160394_ (##car _e160379160391_))
                              (_tl160381160396_ (##cdr _e160379160391_)))
                          (let ((_body160399_ _tl160381160396_))
                            (if (gx#identifier-list? _body160399_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _body160399_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _body160399_))
                                   (gx#stx-source _stx160375_)))
                                (_E160378160387_)))))
                      (_E160378160387_)))))
          (_E160377160401_))))
    (define gx#core-bind-feature!__%
      (lambda (_id160341_ _private?160342_ _phi160343_ _ctx160344_)
        (gx#core-bind-syntax!__%
         _id160341_
         ((if _private?160342_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _id160341_))
         _private?160342_
         _phi160343_
         _ctx160344_)))
    (define gx#core-bind-feature!__0
      (lambda (_id160349_)
        (let* ((_private?160351_ '#f)
               (_phi160353_ (gx#current-expander-phi))
               (_ctx160355_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id160349_
           _private?160351_
           _phi160353_
           _ctx160355_))))
    (define gx#core-bind-feature!__1
      (lambda (_id160357_ _private?160358_)
        (let* ((_phi160360_ (gx#current-expander-phi))
               (_ctx160362_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id160357_
           _private?160358_
           _phi160360_
           _ctx160362_))))
    (define gx#core-bind-feature!__2
      (lambda (_id160364_ _private?160365_ _phi160366_)
        (let ((_ctx160368_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id160364_
           _private?160365_
           _phi160366_
           _ctx160368_))))
    (define gx#core-bind-feature!
      (lambda _g168429_
        (let ((_g168428_ (##length _g168429_)))
          (cond ((##fx= _g168428_ 1)
                 (apply (lambda (_id160349_)
                          (gx#core-bind-feature!__0 _id160349_))
                        _g168429_))
                ((##fx= _g168428_ 2)
                 (apply (lambda (_id160357_ _private?160358_)
                          (gx#core-bind-feature!__1
                           _id160357_
                           _private?160358_))
                        _g168429_))
                ((##fx= _g168428_ 3)
                 (apply (lambda (_id160364_ _private?160365_ _phi160366_)
                          (gx#core-bind-feature!__2
                           _id160364_
                           _private?160365_
                           _phi160366_))
                        _g168429_))
                ((##fx= _g168428_ 4)
                 (apply (lambda (_id160370_
                                 _private?160371_
                                 _phi160372_
                                 _ctx160373_)
                          (gx#core-bind-feature!__%
                           _id160370_
                           _private?160371_
                           _phi160372_
                           _ctx160373_))
                        _g168429_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g168429_))))))))
