(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1709111636)
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
      (lambda _$args92781_
        (apply make-instance gx#module-import::t _$args92781_)))
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
      (lambda _$args92778_
        (apply make-instance gx#module-export::t _$args92778_)))
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
      (lambda _$args92775_
        (apply make-instance gx#import-set::t _$args92775_)))
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
      (lambda _$args92772_
        (apply make-instance gx#export-set::t _$args92772_)))
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
      (lambda _$args92769_
        (apply make-instance gx#import-expander::t _$args92769_)))
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
      (lambda _$args92766_
        (apply make-instance gx#export-expander::t _$args92766_)))
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
      (lambda _$args92763_
        (apply make-instance gx#import-export-expander::t _$args92763_)))
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
      (lambda (_path92760_ _fun92761_)
        (call-with-input-file
         (cons 'path: (cons _path92760_ gx#source-file-settings))
         _fun92761_)))
    (define gx#module-context:::init!
      (lambda (_self92754_ _id92755_ _super92756_ _ns92757_ _path92758_)
        (if (##fx< '11 (##structure-length _self92754_))
            (begin
              (##unchecked-structure-set!
               _self92754_
               _id92755_
               '1
               (##structure-type _self92754_)
               '#f)
              (##unchecked-structure-set!
               _self92754_
               (make-hash-table-eq)
               '2
               (##structure-type _self92754_)
               '#f)
              (##unchecked-structure-set!
               _self92754_
               _super92756_
               '3
               (##structure-type _self92754_)
               '#f)
              (##unchecked-structure-set!
               _self92754_
               '#f
               '4
               (##structure-type _self92754_)
               '#f)
              (##unchecked-structure-set!
               _self92754_
               '#f
               '5
               (##structure-type _self92754_)
               '#f)
              (##unchecked-structure-set!
               _self92754_
               _ns92757_
               '6
               (##structure-type _self92754_)
               '#f)
              (##unchecked-structure-set!
               _self92754_
               _path92758_
               '7
               (##structure-type _self92754_)
               '#f)
              (##unchecked-structure-set!
               _self92754_
               '()
               '8
               (##structure-type _self92754_)
               '#f)
              (##unchecked-structure-set!
               _self92754_
               '()
               '9
               (##structure-type _self92754_)
               '#f)
              (##unchecked-structure-set!
               _self92754_
               '#f
               '10
               (##structure-type _self92754_)
               '#f)
              (##unchecked-structure-set!
               _self92754_
               '#f
               '11
               (##structure-type _self92754_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self92754_
                   '11
                   (##vector-length _self92754_)))))
    (bind-method!__%
     gx#module-context::t
     ':init!
     gx#module-context:::init!
     '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_self92598_ _ctx92599_ _root92600_)
        (let ((_super92608_
               (let ((_$e92602_ _root92600_))
                 (if _$e92602_
                     _$e92602_
                     (let ((_$e92605_ (gx#core-context-root__0)))
                       (if _$e92605_
                           _$e92605_
                           (let ((__obj92823
                                  (##structure gx#root-context::t '#f '#f)))
                             (let ((__constructor92824
                                    (direct-method-ref
                                     gx#root-context::t
                                     __obj92823
                                     ':init!)))
                               (if __constructor92824
                                   (__constructor92824 __obj92823)
                                   (error '"missing constructor method implementation"
                                          'class:
                                          gx#root-context::t
                                          'method:
                                          ':init!)))
                             __obj92823)))))))
          (if _ctx92599_
              (let ((_id92611_
                     (##structure-ref
                      _ctx92599_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_path92612_
                     (##structure-ref _ctx92599_ '7 gx#module-context::t '#f))
                    (_in92613_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _ctx92599_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_e92614_
                     (make-promise (lambda () (gx#eval-module _ctx92599_)))))
                (if (##fx< '8 (##structure-length _self92598_))
                    (begin
                      (##unchecked-structure-set!
                       _self92598_
                       _id92611_
                       '1
                       (##structure-type _self92598_)
                       '#f)
                      (##unchecked-structure-set!
                       _self92598_
                       (make-hash-table-eq 'size: (length _in92613_))
                       '2
                       (##structure-type _self92598_)
                       '#f)
                      (##unchecked-structure-set!
                       _self92598_
                       _super92608_
                       '3
                       (##structure-type _self92598_)
                       '#f)
                      (##unchecked-structure-set!
                       _self92598_
                       '#f
                       '4
                       (##structure-type _self92598_)
                       '#f)
                      (##unchecked-structure-set!
                       _self92598_
                       '#f
                       '5
                       (##structure-type _self92598_)
                       '#f)
                      (##unchecked-structure-set!
                       _self92598_
                       _path92612_
                       '6
                       (##structure-type _self92598_)
                       '#f)
                      (##unchecked-structure-set!
                       _self92598_
                       _in92613_
                       '7
                       (##structure-type _self92598_)
                       '#f)
                      (##unchecked-structure-set!
                       _self92598_
                       _e92614_
                       '8
                       (##structure-type _self92598_)
                       '#f))
                    (error '"struct-instance-init!: too many arguments for struct"
                           _self92598_
                           '8
                           (##vector-length _self92598_)))
                (for-each
                 (lambda (_g9261592617_)
                   (gx#core-bind-weak-import!__% _g9261592617_ _self92598_))
                 _in92613_))
              (if (##fx< '8 (##structure-length _self92598_))
                  (begin
                    (##unchecked-structure-set!
                     _self92598_
                     '#f
                     '1
                     (##structure-type _self92598_)
                     '#f)
                    (##unchecked-structure-set!
                     _self92598_
                     (make-hash-table-eq)
                     '2
                     (##structure-type _self92598_)
                     '#f)
                    (##unchecked-structure-set!
                     _self92598_
                     _super92608_
                     '3
                     (##structure-type _self92598_)
                     '#f)
                    (##unchecked-structure-set!
                     _self92598_
                     '#f
                     '4
                     (##structure-type _self92598_)
                     '#f)
                    (##unchecked-structure-set!
                     _self92598_
                     '#f
                     '5
                     (##structure-type _self92598_)
                     '#f)
                    (##unchecked-structure-set!
                     _self92598_
                     '#f
                     '6
                     (##structure-type _self92598_)
                     '#f)
                    (##unchecked-structure-set!
                     _self92598_
                     '()
                     '7
                     (##structure-type _self92598_)
                     '#f)
                    (##unchecked-structure-set!
                     _self92598_
                     '#f
                     '8
                     (##structure-type _self92598_)
                     '#f))
                  (error '"struct-instance-init!: too many arguments for struct"
                         _self92598_
                         '8
                         (##vector-length _self92598_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_self92623_ _ctx92624_)
        (let ((_root92626_ '#f))
          (gx#prelude-context:::init!__% _self92623_ _ctx92624_ _root92626_))))
    (define gx#prelude-context:::init!
      (lambda _g92830_
        (let ((_g92829_ (##length _g92830_)))
          (cond ((##fx= _g92829_ 2)
                 (apply (lambda (_self92623_ _ctx92624_)
                          (gx#prelude-context:::init!__0
                           _self92623_
                           _ctx92624_))
                        _g92830_))
                ((##fx= _g92829_ 3)
                 (apply (lambda (_self92628_ _ctx92629_ _root92630_)
                          (gx#prelude-context:::init!__%
                           _self92628_
                           _ctx92629_
                           _root92630_))
                        _g92830_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g92830_))))))
    (bind-method!__%
     gx#prelude-context::t
     ':init!
     gx#prelude-context:::init!
     '#f)
    (define gx#import-export-expander-init!
      (lambda (_self92472_ _e92473_)
        (if (##fx< '3 (##structure-length _self92472_))
            (begin
              (##unchecked-structure-set!
               _self92472_
               _e92473_
               '1
               (##structure-type _self92472_)
               '#f)
              (##unchecked-structure-set!
               _self92472_
               (gx#current-expander-context)
               '2
               (##structure-type _self92472_)
               '#f)
              (##unchecked-structure-set!
               _self92472_
               (fx- (gx#current-expander-phi) '1)
               '3
               (##structure-type _self92472_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self92472_
                   '3
                   (##vector-length _self92472_)))))
    (define gx#import-expander:::init! gx#import-export-expander-init!)
    (bind-method!__%
     gx#import-expander::t
     ':init!
     gx#import-expander:::init!
     '#f)
    (define gx#export-expander:::init! gx#import-export-expander-init!)
    (bind-method!__%
     gx#export-expander::t
     ':init!
     gx#export-expander:::init!
     '#f)
    (define gx#import-export-expander:::init! gx#import-export-expander-init!)
    (bind-method!__%
     gx#import-export-expander::t
     ':init!
     gx#import-export-expander:::init!
     '#f)
    (define gx#import-expander::apply-import-expander
      (lambda (_g9209892101_ _g9209992103_)
        (gx#core-apply-user-expander__%
         _g9209892101_
         _g9209992103_
         'apply-import-expander)))
    (bind-method!__%
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_g9196991972_ _g9197091974_)
        (gx#core-apply-user-expander__%
         _g9196991972_
         _g9197091974_
         'apply-export-expander)))
    (bind-method!__%
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_ctx91840_)
        (let* ((_path91842_
                (##structure-ref _ctx91840_ '7 gx#module-context::t '#f))
               (_path91844_
                (if (pair? _path91842_) (last _path91842_) _path91842_)))
          (if (string? _path91844_) _path91844_ '#f))))
    (define gx#import-module__%
      (lambda (_path91816_ _reload?91817_ _eval?91818_)
        (let ((_ctx91820_
               ((gx#current-expander-module-import)
                _path91816_
                _reload?91817_)))
          (if (and _ctx91820_ _eval?91818_)
              (gx#eval-module _ctx91820_)
              '#!void)
          _ctx91820_)))
    (define gx#import-module__0
      (lambda (_path91825_)
        (let* ((_reload?91827_ '#f) (_eval?91829_ '#f))
          (gx#import-module__% _path91825_ _reload?91827_ _eval?91829_))))
    (define gx#import-module__1
      (lambda (_path91831_ _reload?91832_)
        (let ((_eval?91834_ '#f))
          (gx#import-module__% _path91831_ _reload?91832_ _eval?91834_))))
    (define gx#import-module
      (lambda _g92832_
        (let ((_g92831_ (##length _g92832_)))
          (cond ((##fx= _g92831_ 1)
                 (apply (lambda (_path91825_)
                          (gx#import-module__0 _path91825_))
                        _g92832_))
                ((##fx= _g92831_ 2)
                 (apply (lambda (_path91831_ _reload?91832_)
                          (gx#import-module__1 _path91831_ _reload?91832_))
                        _g92832_))
                ((##fx= _g92831_ 3)
                 (apply (lambda (_path91836_ _reload?91837_ _eval?91838_)
                          (gx#import-module__%
                           _path91836_
                           _reload?91837_
                           _eval?91838_))
                        _g92832_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g92832_))))))
    (define gx#eval-module
      (lambda (_mod91813_) ((gx#current-expander-module-eval) _mod91813_)))
    (define gx#core-eval-module
      (lambda (_obj91798_)
        (letrec ((_force-e91800_
                  (lambda (_getf91809_ _e91810_)
                    (call-with-parameters
                     (lambda () (force (_getf91809_ _e91810_)))
                     gx#current-expander-context
                     _e91810_
                     gx#current-expander-phi
                     '0))))
          (let _recur91802_ ((_e91804_ _obj91798_))
            (if (##structure-instance-of? _e91804_ 'gx#module-context::t)
                (begin
                  (let ((_$e91806_ (gx#core-context-prelude__% _e91804_)))
                    (if _$e91806_ (_recur91802_ _$e91806_) '#!void))
                  (_force-e91800_ gx#module-context-e _e91804_))
                (if (##structure-instance-of? _e91804_ 'gx#prelude-context::t)
                    (_force-e91800_ gx#prelude-context-e _e91804_)
                    (if (gx#stx-string? _e91804_)
                        (_recur91802_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _e91804_)))
                        (if (gx#core-library-module-path? _e91804_)
                            (_recur91802_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _e91804_)))
                            (error '"Cannot eval module" _obj91798_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_ctx91781_)
        (let _lp91783_ ((_e91785_ _ctx91781_))
          (if (or (##structure-instance-of? _e91785_ 'gx#module-context::t)
                  (##structure-instance-of? _e91785_ 'gx#local-context::t))
              (_lp91783_
               (##unchecked-structure-ref _e91785_ '3 gx#phi-context::t '#f))
              (if (##structure-instance-of? _e91785_ 'gx#prelude-context::t)
                  _e91785_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_ctx91794_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _ctx91794_))))
    (define gx#core-context-prelude
      (lambda _g92834_
        (let ((_g92833_ (##length _g92834_)))
          (cond ((##fx= _g92833_ 0)
                 (apply (lambda () (gx#core-context-prelude__0)) _g92834_))
                ((##fx= _g92833_ 1)
                 (apply (lambda (_ctx91796_)
                          (gx#core-context-prelude__% _ctx91796_))
                        _g92834_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g92834_))))))
    (define gx#core-module->prelude-context
      (lambda (_ctx91771_)
        (let* ((_ht91773_ (gx#current-expander-module-registry))
               (_$e91775_ (hash-get _ht91773_ _ctx91771_)))
          (if _$e91775_
              (values _$e91775_)
              (let ((_pre91778_
                     (let ((__obj92825
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
                       (gx#prelude-context:::init! __obj92825 _ctx91771_)
                       __obj92825)))
                (hash-put! _ht91773_ _ctx91771_ _pre91778_)
                _pre91778_)))))
    (define gx#core-import-module__%
      (lambda (_rpath91652_ _reload?91653_)
        (letrec ((_import-source91655_
                  (lambda (_path91740_)
                    (if (member _path91740_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _path91740_)
                        '#!void)
                    (call-with-parameters
                     (lambda ()
                       (let ((_g92835_ (gx#core-read-module _path91740_)))
                         (begin
                           (let ((_g92836_
                                  (if (##values? _g92835_)
                                      (##vector-length _g92835_)
                                      1)))
                             (if (not (##fx= _g92836_ 4))
                                 (error "Context expects 4 values" _g92836_)))
                           (let ((_pre91743_ (##vector-ref _g92835_ 0))
                                 (_id91744_ (##vector-ref _g92835_ 1))
                                 (_ns91745_ (##vector-ref _g92835_ 2))
                                 (_body91746_ (##vector-ref _g92835_ 3)))
                             (let* ((_prelude91751_
                                     (if (##structure-instance-of?
                                          _pre91743_
                                          'gx#prelude-context::t)
                                         _pre91743_
                                         (if (##structure-instance-of?
                                              _pre91743_
                                              'gx#module-context::t)
                                             (gx#core-module->prelude-context
                                              _pre91743_)
                                             (if (string? _pre91743_)
                                                 (gx#core-module->prelude-context
                                                  (gx#core-import-module__0
                                                   _pre91743_))
                                                 (if (not _pre91743_)
                                                     (let ((_$e91748_
                                                            (gx#current-expander-module-prelude)))
                                                       (if _$e91748_
                                                           _$e91748_
                                                           (let ((__obj92826
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
                     (gx#prelude-context:::init! __obj92826 '#f)
                     __obj92826)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error '"Cannot import module; unknown prelude"
                                                            _rpath91652_
                                                            _pre91743_))))))
                                    (_ctx91753_
                                     (let ((__obj92827
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
                                        __obj92827
                                        _id91744_
                                        _prelude91751_
                                        _ns91745_
                                        _path91740_)
                                       __obj92827))
                                    (_body91755_
                                     (gx#core-expand-module-begin
                                      _body91746_
                                      _ctx91753_))
                                    (_body91757_
                                     (gx#core-quote-syntax__%
                                      (gx#core-cons '%#begin _body91755_)
                                      _path91740_
                                      _ctx91753_
                                      '())))
                               (##unchecked-structure-set!
                                _ctx91753_
                                (make-promise
                                 (lambda () (gx#eval-syntax* _body91757_)))
                                '10
                                gx#module-context::t
                                '#f)
                               (##unchecked-structure-set!
                                _ctx91753_
                                _body91757_
                                '11
                                gx#module-context::t
                                '#f)
                               (hash-put!
                                (gx#current-expander-module-registry)
                                _path91740_
                                _ctx91753_)
                               (hash-put!
                                (gx#current-expander-module-registry)
                                _id91744_
                                _ctx91753_)
                               _ctx91753_)))))
                     gx#current-expander-context
                     (gx#core-context-root__0)
                     gx#current-expander-marks
                     '()
                     gx#current-expander-phi
                     '0
                     gx#current-expander-path
                     (cons _path91740_ (gx#current-expander-path))
                     gx#current-import-expander-phi
                     '#f
                     gx#current-export-expander-phi
                     '#f)))
                 (_import-submodule91656_
                  (lambda (_rpath91668_)
                    (let* ((_rpath9166991676_ _rpath91668_)
                           (_E9167191680_
                            (lambda ()
                              (error '"No clause matching" _rpath9166991676_)))
                           (_K9167291728_
                            (lambda (_refs91683_ _origin91684_)
                              (let ((_ctx91686_
                                     (if _origin91684_
                                         (gx#core-import-module__%
                                          _origin91684_
                                          _reload?91653_)
                                         (gx#current-expander-context))))
                                (let _lp91688_ ((_rest91690_ _refs91683_)
                                                (_ctx91691_ _ctx91686_))
                                  (let* ((_rest9169291700_ _rest91690_)
                                         (_else9169491708_
                                          (lambda () _ctx91691_))
                                         (_K9169691716_
                                          (lambda (_rest91711_ _id91712_)
                                            (let ((_bind91714_
                                                   (gx#resolve-identifier__%
                                                    _id91712_
                                                    '0
                                                    _ctx91691_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _bind91714_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _bind91714_
                                                         '4
                                                         gx#syntax-binding::t
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_lp91688_
                                                   _rest91711_
                                                   (##unchecked-structure-ref
                                                    _bind91714_
                                                    '4
                                                    gx#syntax-binding::t
                                                    '#f))
                                                  (error '"Cannot import submodule; not bound as a module"
                                                         _rpath91668_
                                                         _id91712_
                                                         _bind91714_))))))
                                    (if (##pair? _rest9169291700_)
                                        (let ((_hd9169791719_
                                               (##car _rest9169291700_))
                                              (_tl9169891721_
                                               (##cdr _rest9169291700_)))
                                          (let* ((_id91724_ _hd9169791719_)
                                                 (_rest91726_ _tl9169891721_))
                                            (_K9169691716_
                                             _rest91726_
                                             _id91724_)))
                                        (_else9169491708_))))))))
                      (if (##pair? _rpath9166991676_)
                          (let ((_hd9167391731_ (##car _rpath9166991676_))
                                (_tl9167491733_ (##cdr _rpath9166991676_)))
                            (let* ((_origin91736_ _hd9167391731_)
                                   (_refs91738_ _tl9167491733_))
                              (_K9167291728_ _refs91738_ _origin91736_)))
                          (_E9167191680_))))))
          (let ((_$e91658_
                 (if (not _reload?91653_)
                     (hash-get
                      (gx#current-expander-module-registry)
                      _rpath91652_)
                     '#f)))
            (if _$e91658_
                (values _$e91658_)
                (if (list? _rpath91652_)
                    (_import-submodule91656_ _rpath91652_)
                    (if (gx#core-library-module-path? _rpath91652_)
                        (let ((_ctx91661_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _rpath91652_)
                                _reload?91653_)))
                          (hash-put!
                           (gx#current-expander-module-registry)
                           _rpath91652_
                           _ctx91661_)
                          _ctx91661_)
                        (let* ((_npath91663_ (path-normalize _rpath91652_))
                               (_$e91665_
                                (if (not _reload?91653_)
                                    (hash-get
                                     (gx#current-expander-module-registry)
                                     _npath91663_)
                                    '#f)))
                          (if _$e91665_
                              (values _$e91665_)
                              (_import-source91655_ _npath91663_))))))))))
    (define gx#core-import-module__0
      (lambda (_rpath91764_)
        (let ((_reload?91766_ '#f))
          (gx#core-import-module__% _rpath91764_ _reload?91766_))))
    (define gx#core-import-module
      (lambda _g92838_
        (let ((_g92837_ (##length _g92838_)))
          (cond ((##fx= _g92837_ 1)
                 (apply (lambda (_rpath91764_)
                          (gx#core-import-module__0 _rpath91764_))
                        _g92838_))
                ((##fx= _g92837_ 2)
                 (apply (lambda (_rpath91768_ _reload?91769_)
                          (gx#core-import-module__%
                           _rpath91768_
                           _reload?91769_))
                        _g92838_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g92838_))))))
    (define gx#core-read-module
      (lambda (_path91641_)
        (with-catch
         (lambda (_exn91643_)
           (if (and (datum-parsing-exception? _exn91643_)
                    (eq? (datum-parsing-exception-filepos _exn91643_) '0))
               (gx#core-read-module/lang _path91641_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _path91641_
                (call-with-parameters
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_g9164591647_)
                      (display-exception _exn91643_ _g9164591647_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _path91641_)))))
    (define gx#core-read-module/sexp
      (lambda (_path91504_)
        (let _lp91506_ ((_body91508_ (read-syntax-from-file _path91504_))
                        (_pre91509_ '#f)
                        (_ns91510_ '#f)
                        (_pkg91511_ '#f))
          (let* ((_e9151291536_ _body91508_)
                 (_E9152891558_
                  (lambda ()
                    (let ((_g92839_
                           (if _pkg91511_
                               (values _pre91509_ _ns91510_ _pkg91511_)
                               (gx#core-read-module-package
                                _path91504_
                                _pre91509_
                                _ns91510_))))
                      (begin
                        (let ((_g92840_
                               (if (##values? _g92839_)
                                   (##vector-length _g92839_)
                                   1)))
                          (if (not (##fx= _g92840_ 3))
                              (error "Context expects 3 values" _g92840_)))
                        (let ((_pre91540_ (##vector-ref _g92839_ 0))
                              (_ns91541_ (##vector-ref _g92839_ 1))
                              (_pkg91542_ (##vector-ref _g92839_ 2)))
                          (let* ((_prelude91544_
                                  (if (gx#core-bound-module-prelude?
                                       _pre91540_)
                                      (gx#syntax-local-e__0 _pre91540_)
                                      (if (gx#core-library-module-path?
                                           _pre91540_)
                                          (gx#core-resolve-library-module-path
                                           _pre91540_)
                                          (if (gx#stx-string? _pre91540_)
                                              (gx#core-resolve-module-path__%
                                               _pre91540_
                                               _path91504_)
                                              (gx#stx-e _pre91540_)))))
                                 (_path-id91546_
                                  (gx#core-module-path->namespace _path91504_))
                                 (_pkg-id91548_
                                  (if _pkg91542_
                                      (string-append
                                       _pkg91542_
                                       '"/"
                                       _path-id91546_)
                                      _path-id91546_))
                                 (_module-id91550_
                                  (string->symbol _pkg-id91548_))
                                 (_module-ns91555_
                                  (if (eq? _ns91541_ '#!void)
                                      '#f
                                      (let ((_$e91552_ _ns91541_))
                                        (if _$e91552_
                                            _$e91552_
                                            _pkg-id91548_)))))
                            (values _prelude91544_
                                    _module-id91550_
                                    _module-ns91555_
                                    _body91508_)))))))
                 (_E9152191587_
                  (lambda ()
                    (if (gx#stx-pair? _e9151291536_)
                        (let ((_e9152991562_ (gx#syntax-e _e9151291536_)))
                          (let ((_hd9153091565_ (##car _e9152991562_))
                                (_tl9153191567_ (##cdr _e9152991562_)))
                            (if (eq? (gx#stx-e _hd9153091565_) 'package:)
                                (if (gx#stx-pair? _tl9153191567_)
                                    (let ((_e9153291570_
                                           (gx#syntax-e _tl9153191567_)))
                                      (let ((_hd9153391573_
                                             (##car _e9153291570_))
                                            (_tl9153491575_
                                             (##cdr _e9153291570_)))
                                        (let* ((_pkg91578_ _hd9153391573_)
                                               (_rest91580_ _tl9153491575_))
                                          (if '#t
                                              (let ((_pkg91585_
                                                     (if (gx#identifier?
                                                          _pkg91578_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _pkg91578_))
                                                         (if (or (gx#stx-string?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _pkg91578_)
                         (gx#stx-false? _pkg91578_))
                     (gx#stx-e _pkg91578_)
                     (gx#raise-syntax-error
                      'import
                      '"Bad syntax; Illegal package name"
                      _pkg91578_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp91506_
                                                 _rest91580_
                                                 _pre91509_
                                                 _ns91510_
                                                 _pkg91585_))
                                              (_E9152891558_)))))
                                    (_E9152891558_))
                                (_E9152891558_))))
                        (_E9152891558_))))
                 (_E9151491613_
                  (lambda ()
                    (if (gx#stx-pair? _e9151291536_)
                        (let ((_e9152291591_ (gx#syntax-e _e9151291536_)))
                          (let ((_hd9152391594_ (##car _e9152291591_))
                                (_tl9152491596_ (##cdr _e9152291591_)))
                            (if (eq? (gx#stx-e _hd9152391594_) 'namespace:)
                                (if (gx#stx-pair? _tl9152491596_)
                                    (let ((_e9152591599_
                                           (gx#syntax-e _tl9152491596_)))
                                      (let ((_hd9152691602_
                                             (##car _e9152591599_))
                                            (_tl9152791604_
                                             (##cdr _e9152591599_)))
                                        (let* ((_ns91607_ _hd9152691602_)
                                               (_rest91609_ _tl9152791604_))
                                          (if '#t
                                              (let ((_ns91611_
                                                     (if (gx#identifier?
                                                          _ns91607_)
                                                         (symbol->string
                                                          (gx#stx-e _ns91607_))
                                                         (if (gx#stx-string?
                                                              _ns91607_)
                                                             (gx#stx-e
                                                              _ns91607_)
                                                             (if (gx#stx-false?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _ns91607_)
                         '#!void
                         (gx#raise-syntax-error
                          'import
                          '"Bad syntax; illegal namespace"
                          _ns91607_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp91506_
                                                 _rest91609_
                                                 _pre91509_
                                                 _ns91611_
                                                 _pkg91511_))
                                              (_E9152191587_)))))
                                    (_E9152191587_))
                                (_E9152191587_))))
                        (_E9152191587_))))
                 (_E9151391637_
                  (lambda ()
                    (if (gx#stx-pair? _e9151291536_)
                        (let ((_e9151591617_ (gx#syntax-e _e9151291536_)))
                          (let ((_hd9151691620_ (##car _e9151591617_))
                                (_tl9151791622_ (##cdr _e9151591617_)))
                            (if (eq? (gx#stx-e _hd9151691620_) 'prelude:)
                                (if (gx#stx-pair? _tl9151791622_)
                                    (let ((_e9151891625_
                                           (gx#syntax-e _tl9151791622_)))
                                      (let ((_hd9151991628_
                                             (##car _e9151891625_))
                                            (_tl9152091630_
                                             (##cdr _e9151891625_)))
                                        (let* ((_prelude91633_ _hd9151991628_)
                                               (_rest91635_ _tl9152091630_))
                                          (if '#t
                                              (_lp91506_
                                               _rest91635_
                                               _prelude91633_
                                               _ns91510_
                                               _pkg91511_)
                                              (_E9151491613_)))))
                                    (_E9151491613_))
                                (_E9151491613_))))
                        (_E9151491613_)))))
            (_E9151391637_)))))
    (define gx#core-read-module/lang
      (lambda (_path91331_)
        (letrec ((_default-read-module-body91333_
                  (lambda (_inp91496_)
                    (let _lp91498_ ((_body91500_ '()))
                      (let ((_next91502_ (read-syntax _inp91496_)))
                        (if (eof-object? _next91502_)
                            (reverse _body91500_)
                            (_lp91498_ (cons _next91502_ _body91500_)))))))
                 (_read-body91334_
                  (lambda (_inp91415_
                           _pre91416_
                           _ns91417_
                           _pkg91418_
                           _args91419_)
                    (let ((_g92841_
                           (if _pkg91418_
                               (values _pre91416_ _ns91417_ _pkg91418_)
                               (gx#core-read-module-package
                                _path91331_
                                _pre91416_
                                _ns91417_))))
                      (begin
                        (let ((_g92842_
                               (if (##values? _g92841_)
                                   (##vector-length _g92841_)
                                   1)))
                          (if (not (##fx= _g92842_ 3))
                              (error "Context expects 3 values" _g92842_)))
                        (let ((_pre91421_ (##vector-ref _g92841_ 0))
                              (_ns91422_ (##vector-ref _g92841_ 1))
                              (_pkg91423_ (##vector-ref _g92841_ 2)))
                          (let* ((_prelude91425_
                                  (gx#import-module__0 _pre91421_))
                                 (_read-module-body91479_
                                  (let ((_$e91471_
                                         (find (lambda (_e9142691428_)
                                                 (let* ((_g9143091440_
                                                         _e9142691428_)
                                                        (_else9143291448_
                                                         (lambda () '#f))
                                                        (_K9143491452_
                                                         (lambda () '#t)))
                                                   (if (##structure-direct-instance-of?
                                                        _g9143091440_
                                                        'gx#module-export::t)
                                                       (let* ((_e9143591455_
                                                               (##unchecked-structure-ref
                                                                _g9143091440_
                                                                '1
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e9143691458_
                                                               (##unchecked-structure-ref
                                                                _g9143091440_
                                                                '2
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e9143791461_
                                                               (##unchecked-structure-ref
                                                                _g9143091440_
                                                                '3
                                                                gx#module-export::t
                                                                '#f)))
                                                         (if (##eq? _e9143791461_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)
                     (let ((_e9143891464_
                            (##unchecked-structure-ref
                             _g9143091440_
                             '4
                             gx#module-export::t
                             '#f)))
                       (if ((lambda (_g9146691468_)
                              (eq? _g9146691468_ 'read-module-body))
                            _e9143891464_)
                           (_K9143491452_)
                           (_else9143291448_)))
                     (_else9143291448_)))
               (_else9143291448_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (##unchecked-structure-ref
                                                _prelude91425_
                                                '9
                                                gx#module-context::t
                                                '#f))))
                                    (if _$e91471_
                                        ((lambda (_xport91474_)
                                           (let ((_proc91477_
                                                  (with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _xport91474_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _proc91477_)
                                                 _proc91477_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _path91331_
                                                  _pre91421_
                                                  _proc91477_))))
                                         _$e91471_)
                                        _default-read-module-body91333_)))
                                 (_path-id91481_
                                  (gx#core-module-path->namespace _path91331_))
                                 (_pkg-id91483_
                                  (if _pkg91423_
                                      (string-append
                                       _pkg91423_
                                       '"/"
                                       _path-id91481_)
                                      _path-id91481_))
                                 (_module-id91485_
                                  (string->symbol _pkg-id91483_))
                                 (_module-ns91490_
                                  (let ((_$e91487_ _ns91422_))
                                    (if _$e91487_ _$e91487_ _pkg-id91483_)))
                                 (_body91493_
                                  (call-with-parameters
                                   (lambda ()
                                     (_read-module-body91479_ _inp91415_))
                                   gx#current-module-reader-path
                                   _path91331_
                                   gx#current-module-reader-args
                                   _args91419_)))
                            (values _prelude91425_
                                    _module-id91485_
                                    _module-ns91490_
                                    _body91493_)))))))
                 (_string-e91335_
                  (lambda (_obj91412_ _what91413_)
                    (if (string? _obj91412_)
                        _obj91412_
                        (if (symbol? _obj91412_)
                            (symbol->string _obj91412_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _what91413_)
                             _path91331_
                             _obj91412_)))))
                 (_read-lang-args91336_
                  (lambda (_inp91367_ _args91368_)
                    (let* ((_args9136991377_ _args91368_)
                           (_else9137191385_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _path91331_)))
                           (_K9137391400_
                            (lambda (_args91388_ _prelude91389_)
                              (let* ((_pkg91391_
                                      (pgetq__0 'package: _args91388_))
                                     (_pkg91393_
                                      (if _pkg91391_
                                          (_string-e91335_
                                           _pkg91391_
                                           '"package")
                                          '#f))
                                     (_ns91395_
                                      (pgetq__0 'namespace: _args91388_))
                                     (_ns91397_
                                      (if _ns91395_
                                          (_string-e91335_
                                           _ns91395_
                                           '"namespace")
                                          '#f)))
                                (_read-body91334_
                                 _inp91367_
                                 _prelude91389_
                                 _ns91397_
                                 _pkg91393_
                                 _args91388_)))))
                      (if (##pair? _args9136991377_)
                          (let ((_hd9137491403_ (##car _args9136991377_))
                                (_tl9137591405_ (##cdr _args9136991377_)))
                            (let* ((_prelude91408_ _hd9137491403_)
                                   (_args91410_ _tl9137591405_))
                              (_K9137391400_ _args91410_ _prelude91408_)))
                          (_else9137191385_)))))
                 (_read-lang91337_
                  (lambda (_inp91342_)
                    (let* ((_head91344_ (read-line _inp91342_))
                           (_$e91346_ (string-index__0 _head91344_ '#\space)))
                      (if _$e91346_
                          ((lambda (_ix91349_)
                             (let ((_lang91351_
                                    (substring _head91344_ '0 _ix91349_)))
                               (if (equal? _lang91351_ '"#lang")
                                   (let* ((_rest91353_
                                           (substring
                                            _head91344_
                                            (fx+ _ix91349_ '1)
                                            (string-length _head91344_)))
                                          (_args91364_
                                           (with-catch
                                            (lambda (_g9135491356_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _path91331_
                                               _g9135491356_))
                                            (lambda ()
                                              (call-with-input-string
                                               _rest91353_
                                               (lambda (_g9135991361_)
                                                 (read-all
                                                  _g9135991361_
                                                  read)))))))
                                     (_read-lang-args91336_
                                      _inp91342_
                                      _args91364_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _path91331_))))
                           _$e91346_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _path91331_)))))
                 (_read-e91338_
                  (lambda (_inp91340_)
                    (if (eq? (peek-char _inp91340_) '#\#)
                        (_read-lang91337_ _inp91340_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _path91331_)))))
          (gx#call-with-input-source-file _path91331_ _read-e91338_))))
    (define gx#core-read-module-package
      (lambda (_path91285_ _pre91286_ _ns91287_)
        (letrec ((_string-e91289_
                  (lambda (_e91329_)
                    (if (symbol? _e91329_)
                        (symbol->string _e91329_)
                        (if (string? _e91329_)
                            _e91329_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _e91329_))))))
          (let _lp91291_ ((_dir91293_ (path-directory _path91285_))
                          (_pkg-path91294_ '()))
            (let ((_gerbil.pkg91296_ (path-expand '"gerbil.pkg" _dir91293_)))
              (if (file-exists? _gerbil.pkg91296_)
                  (let ((_plist91298_
                         (gx#core-library-package-plist__% _dir91293_ '#t)))
                    (if (null? _plist91298_)
                        (let ((_pkg91300_
                               (if (not (null? _pkg-path91294_))
                                   (string-join _pkg-path91294_ '"/")
                                   '#f)))
                          (values _pre91286_ _ns91287_ _pkg91300_))
                        (if (list? _plist91298_)
                            (let* ((_root91302_
                                    (pgetq__0 'package: _plist91298_))
                                   (_pkg91306_
                                    (let ((_pkg-path91304_
                                           (if _root91302_
                                               (cons (_string-e91289_
                                                      _root91302_)
                                                     _pkg-path91294_)
                                               _pkg-path91294_)))
                                      (if (not (null? _pkg-path91304_))
                                          (string-join _pkg-path91304_ '"/")
                                          '#f)))
                                   (_ns91313_
                                    (let ((_ns91311_
                                           (let ((_$e91308_ _ns91287_))
                                             (if _$e91308_
                                                 _$e91308_
                                                 (pgetq__0
                                                  'namespace:
                                                  _plist91298_)))))
                                      (if _ns91311_
                                          (_string-e91289_ _ns91311_)
                                          '#f)))
                                   (_pre91318_
                                    (let ((_$e91315_ _pre91286_))
                                      (if _$e91315_
                                          _$e91315_
                                          (pgetq__0 'prelude: _plist91298_)))))
                              (values _pre91318_ _ns91313_ _pkg91306_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _plist91298_))))
                  (let ((_dir*91321_
                         (path-strip-trailing-directory-separator _dir91293_)))
                    (if (or (string-empty? _dir*91321_)
                            (equal? _dir91293_ _dir*91321_))
                        (values _pre91286_ _ns91287_ '#f)
                        (let ((_xpath91326_ (path-strip-directory _dir*91321_))
                              (_xdir91327_ (path-directory _dir*91321_)))
                          (_lp91291_
                           _xdir91327_
                           (cons _xpath91326_ _pkg-path91294_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_path91283_)
        (path-strip-extension (path-strip-directory _path91283_))))
    (define gx#core-module-path->id
      (lambda (_path91281_)
        (string->symbol (gx#core-module-path->namespace _path91281_))))
    (define gx#core-resolve-module-path__%
      (lambda (_stx-path91260_ _rel91261_)
        (let* ((_path91263_ (gx#stx-e _stx-path91260_))
               (_path91265_
                (if (string-empty? (path-extension _path91263_))
                    (string-append _path91263_ '".ss")
                    _path91263_)))
          (gx#core-resolve-path__%
           _path91265_
           (let ((_$e91268_ (gx#stx-source _stx-path91260_)))
             (if _$e91268_ _$e91268_ _rel91261_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_stx-path91274_)
        (let ((_rel91276_ '#f))
          (gx#core-resolve-module-path__% _stx-path91274_ _rel91276_))))
    (define gx#core-resolve-module-path
      (lambda _g92844_
        (let ((_g92843_ (##length _g92844_)))
          (cond ((##fx= _g92843_ 1)
                 (apply (lambda (_stx-path91274_)
                          (gx#core-resolve-module-path__0 _stx-path91274_))
                        _g92844_))
                ((##fx= _g92843_ 2)
                 (apply (lambda (_stx-path91278_ _rel91279_)
                          (gx#core-resolve-module-path__%
                           _stx-path91278_
                           _rel91279_))
                        _g92844_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g92844_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_libpath91146_)
        (let* ((_spath91148_ (symbol->string (gx#stx-e _libpath91146_)))
               (_spath91150_
                (substring _spath91148_ '1 (string-length _spath91148_)))
               (_ext91152_ (path-extension _spath91150_))
               (_ssi91154_
                (if (string-empty? _ext91152_)
                    (string-append _spath91150_ '".ssi")
                    (string-append
                     (path-strip-extension _spath91150_)
                     '".ssi")))
               (_srcs91158_
                (if (string-empty? _ext91152_)
                    (map (lambda (_ext91156_)
                           (string-append _spath91150_ _ext91156_))
                         '(".ss" ".sld" ".scm"))
                    (cons _spath91150_ '()))))
          (let _lp91161_ ((_rest91163_
                           (gx#current-expander-module-library-path)))
            (let* ((_rest9116491173_ _rest91163_)
                   (_E9116791177_
                    (lambda ()
                      (error '"No clause matching" _rest9116491173_))))
              (let ((_K9116991247_
                     (lambda (_rest91188_ _dir91189_)
                       (letrec ((_resolve91191_
                                 (lambda (_ssi91203_ _srcs91204_)
                                   (let ((_compiled-path91206_
                                          (path-expand _ssi91203_ _dir91189_)))
                                     (if (file-exists? _compiled-path91206_)
                                         (path-normalize _compiled-path91206_)
                                         (let _lpr91208_ ((_rest-src91210_
                                                           _srcs91204_))
                                           (let* ((_rest-src9121191219_
                                                   _rest-src91210_)
                                                  (_else9121391227_
                                                   (lambda ()
                                                     (_lp91161_ _rest91188_)))
                                                  (_K9121591235_
                                                   (lambda (_rest-src91230_
                                                            _src91231_)
                                                     (let ((_src-path91233_
                                                            (path-expand
                                                             _src91231_
                                                             _dir91189_)))
                                                       (if (file-exists?
                                                            _src-path91233_)
                                                           (path-normalize
                                                            _src-path91233_)
                                                           (_lpr91208_
                                                            _rest-src91230_))))))
                                             (if (##pair? _rest-src9121191219_)
                                                 (let ((_hd9121691238_
                                                        (##car _rest-src9121191219_))
                                                       (_tl9121791240_
                                                        (##cdr _rest-src9121191219_)))
                                                   (let* ((_src91243_
                                                           _hd9121691238_)
                                                          (_rest-src91245_
                                                           _tl9121791240_))
                                                     (_K9121591235_
                                                      _rest-src91245_
                                                      _src91243_)))
                                                 (_else9121391227_)))))))))
                         (let ((_$e91193_
                                (gx#core-library-package-path-prefix
                                 _dir91189_)))
                           (if _$e91193_
                               ((lambda (_prefix91196_)
                                  (if (string-prefix?
                                       _prefix91196_
                                       _spath91150_)
                                      (let ((_ssi91200_
                                             (substring
                                              _ssi91154_
                                              (string-length _prefix91196_)
                                              (string-length _ssi91154_)))
                                            (_srcs91201_
                                             (map (lambda (_src91198_)
                                                    (substring
                                                     _src91198_
                                                     (string-length
                                                      _prefix91196_)
                                                     (string-length
                                                      _src91198_)))
                                                  _srcs91158_)))
                                        (_resolve91191_
                                         _ssi91200_
                                         _srcs91201_))
                                      (_lp91161_ _rest91188_)))
                                _$e91193_)
                               (_resolve91191_ _ssi91154_ _srcs91158_))))))
                    (_K9116891182_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"Cannot find library module"
                        _libpath91146_))))
                (let ((_try-match9116691185_
                       (lambda ()
                         (if (##null? _rest9116491173_)
                             (_K9116891182_)
                             (_E9116791177_)))))
                  (if (##pair? _rest9116491173_)
                      (let ((_tl9117191252_ (##cdr _rest9116491173_))
                            (_hd9117091250_ (##car _rest9116491173_)))
                        (let ((_dir91255_ _hd9117091250_)
                              (_rest91257_ _tl9117191252_))
                          (_K9116991247_ _rest91257_ _dir91255_)))
                      (_try-match9116691185_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_modpath91119_)
        (letrec ((_resolve91121_
                  (lambda (_path91138_ _base91139_)
                    (let ((_$e91141_ (string-rindex__0 _base91139_ '#\/)))
                      (if _$e91141_
                          ((lambda (_idx91144_)
                             (gx#core-resolve-library-module-path
                              (string->symbol
                               (string-append
                                '":"
                                (substring _base91139_ '0 _idx91144_)
                                '"/"
                                _path91138_))))
                           _$e91141_)
                          (gx#core-resolve-library-module-path
                           (string->symbol
                            (string-append '":" _path91138_))))))))
          (let ((_spath91123_ (symbol->string (gx#stx-e _modpath91119_)))
                (_mod91124_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _mod91124_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"Cannot resolve relative module path; not in module context"
                 _modpath91119_))
            (let ((_mpath91126_
                   (symbol->string
                    (##structure-ref
                     _mod91124_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _lp91128_ ((_spath91130_ _spath91123_)
                              (_mpath91131_ _mpath91126_))
                (if (string-prefix? '"../" _spath91130_)
                    (let ((_$e91133_ (string-rindex__0 _mpath91131_ '#\/)))
                      (if _$e91133_
                          ((lambda (_idx91136_)
                             (_lp91128_
                              (substring
                               _spath91130_
                               '3
                               (string-length _spath91130_))
                              (substring _mpath91131_ '0 _idx91136_)))
                           _$e91133_)
                          (gx#raise-syntax-error
                           '#f
                           '"Cannot resolve relative module path; illegal traversal"
                           _modpath91119_)))
                    (if (string-prefix? '"./" _spath91130_)
                        (_lp91128_
                         (substring
                          _spath91130_
                          '2
                          (string-length _spath91130_))
                         _mpath91131_)
                        (_resolve91121_ _spath91130_ _mpath91131_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_dir91112_)
        (let ((_$e91114_
               (pgetq__0
                'package:
                (gx#core-library-package-plist__0 _dir91112_))))
          (if _$e91114_
              ((lambda (_pkg91117_)
                 (string-append (symbol->string _pkg91117_) '"/"))
               _$e91114_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_dir91084_ _exists?91085_)
        (let* ((_cache91087_ (gx#core-library-package-cache))
               (_$e91089_ (hash-get _cache91087_ _dir91084_)))
          (if _$e91089_
              (values _$e91089_)
              (let* ((_gerbil.pkg91092_ (path-expand '"gerbil.pkg" _dir91084_))
                     (_plist91099_
                      (if (or _exists?91085_ (file-exists? _gerbil.pkg91092_))
                          (let ((_e91097_
                                 (gx#call-with-input-source-file
                                  _gerbil.pkg91092_
                                  read)))
                            (if (eof-object? _e91097_)
                                '()
                                (if (list? _e91097_)
                                    _e91097_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _gerbil.pkg91092_
                                     _e91097_))))
                          '())))
                (hash-put! _cache91087_ _dir91084_ _plist91099_)
                _plist91099_)))))
    (define gx#core-library-package-plist__0
      (lambda (_dir91105_)
        (let ((_exists?91107_ '#f))
          (gx#core-library-package-plist__% _dir91105_ _exists?91107_))))
    (define gx#core-library-package-plist
      (lambda _g92846_
        (let ((_g92845_ (##length _g92846_)))
          (cond ((##fx= _g92845_ 1)
                 (apply (lambda (_dir91105_)
                          (gx#core-library-package-plist__0 _dir91105_))
                        _g92846_))
                ((##fx= _g92845_ 2)
                 (apply (lambda (_dir91109_ _exists?91110_)
                          (gx#core-library-package-plist__%
                           _dir91109_
                           _exists?91110_))
                        _g92846_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g92846_))))))
    (define gx#core-library-package-cache
      (lambda ()
        (let ((_$e91078_ (gx#current-expander-module-library-package-cache)))
          (if _$e91078_
              (values _$e91078_)
              (let ((_cache91081_ (make-hash-table)))
                (gx#current-expander-module-library-package-cache _cache91081_)
                _cache91081_)))))
    (define gx#core-library-module-path?
      (lambda (_stx91075_) (gx#core-special-module-path? _stx91075_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_stx91073_) (gx#core-special-module-path? _stx91073_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_stx91068_ _char91069_)
        (if (gx#identifier? _stx91068_)
            (if (interned-symbol? (gx#stx-e _stx91068_))
                (let ((_str91071_ (symbol->string (gx#stx-e _stx91068_))))
                  (if (fx> (string-length _str91071_) '1)
                      (eq? (string-ref _str91071_ '0) _char91069_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_stx91062_)
        (gx#core-bound-identifier?__%
         _stx91062_
         (lambda (_g9106391065_)
           (gx#expander-binding?__% _g9106391065_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_stx91056_)
        (gx#core-bound-identifier?__%
         _stx91056_
         (lambda (_g9105791059_)
           (gx#expander-binding?__% _g9105791059_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_stx91043_)
        (letrec ((_module-prelude?91045_
                  (lambda (_e91051_)
                    (let ((_$e91053_
                           (##structure-instance-of?
                            _e91051_
                            'gx#module-context::t)))
                      (if _$e91053_
                          _$e91053_
                          (##structure-instance-of?
                           _e91051_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _stx91043_
           (lambda (_g9104691048_)
             (gx#expander-binding?__%
              _g9104691048_
              _module-prelude?91045_))))))
    (define gx#core-bind-import!__%
      (lambda (_in90973_ _ctx90974_ _force-weak?90975_)
        (let* ((_in9097690985_ _in90973_)
               (_E9097890989_
                (lambda () (error '"No clause matching" _in9097690985_)))
               (_K9097991002_
                (lambda (_weak?90992_ _phi90993_ _key90994_ _source90995_)
                  (gx#core-bind!__%
                   _key90994_
                   (let ((_e90997_
                          (gx#core-resolve-module-export _source90995_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref _e90997_ '1 gx#binding::t '#f)
                      _key90994_
                      _phi90993_
                      _e90997_
                      (##unchecked-structure-ref
                       _source90995_
                       '1
                       gx#module-export::t
                       '#f)
                      (let ((_$e90999_ _force-weak?90975_))
                        (if _$e90999_ _$e90999_ _weak?90992_))))
                   gx#core-context-rebind?
                   _phi90993_
                   _ctx90974_))))
          (if (##structure-direct-instance-of?
               _in9097690985_
               'gx#module-import::t)
              (let* ((_e9098091005_
                      (##unchecked-structure-ref
                       _in9097690985_
                       '1
                       gx#module-import::t
                       '#f))
                     (_source91008_ _e9098091005_)
                     (_e9098191010_
                      (##unchecked-structure-ref
                       _in9097690985_
                       '2
                       gx#module-import::t
                       '#f))
                     (_key91013_ _e9098191010_)
                     (_e9098291015_
                      (##unchecked-structure-ref
                       _in9097690985_
                       '3
                       gx#module-import::t
                       '#f))
                     (_phi91018_ _e9098291015_)
                     (_e9098391020_
                      (##unchecked-structure-ref
                       _in9097690985_
                       '4
                       gx#module-import::t
                       '#f))
                     (_weak?91023_ _e9098391020_))
                (_K9097991002_
                 _weak?91023_
                 _phi91018_
                 _key91013_
                 _source91008_))
              (_E9097890989_)))))
    (define gx#core-bind-import!__0
      (lambda (_in91028_)
        (let* ((_ctx91030_ (gx#current-expander-context))
               (_force-weak?91032_ '#f))
          (gx#core-bind-import!__% _in91028_ _ctx91030_ _force-weak?91032_))))
    (define gx#core-bind-import!__1
      (lambda (_in91034_ _ctx91035_)
        (let ((_force-weak?91037_ '#f))
          (gx#core-bind-import!__% _in91034_ _ctx91035_ _force-weak?91037_))))
    (define gx#core-bind-import!
      (lambda _g92848_
        (let ((_g92847_ (##length _g92848_)))
          (cond ((##fx= _g92847_ 1)
                 (apply (lambda (_in91028_)
                          (gx#core-bind-import!__0 _in91028_))
                        _g92848_))
                ((##fx= _g92847_ 2)
                 (apply (lambda (_in91034_ _ctx91035_)
                          (gx#core-bind-import!__1 _in91034_ _ctx91035_))
                        _g92848_))
                ((##fx= _g92847_ 3)
                 (apply (lambda (_in91039_ _ctx91040_ _force-weak?91041_)
                          (gx#core-bind-import!__%
                           _in91039_
                           _ctx91040_
                           _force-weak?91041_))
                        _g92848_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g92848_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_in90959_ _ctx90960_)
        (gx#core-bind-import!__% _in90959_ _ctx90960_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_in90965_)
        (let ((_ctx90967_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _in90965_ _ctx90967_))))
    (define gx#core-bind-weak-import!
      (lambda _g92850_
        (let ((_g92849_ (##length _g92850_)))
          (cond ((##fx= _g92849_ 1)
                 (apply (lambda (_in90965_)
                          (gx#core-bind-weak-import!__0 _in90965_))
                        _g92850_))
                ((##fx= _g92849_ 2)
                 (apply (lambda (_in90969_ _ctx90970_)
                          (gx#core-bind-weak-import!__% _in90969_ _ctx90970_))
                        _g92850_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g92850_))))))
    (define gx#core-resolve-module-export
      (lambda (_out90850_)
        (letrec ((_subst90852_
                  (lambda (_key90898_)
                    (let* ((_key9089990907_ _key90898_)
                           (_else9090190915_ (lambda () _key90898_))
                           (_K9090390946_
                            (lambda (_mark90918_ _id90919_)
                              (let* ((_mark9092090926_ _mark90918_)
                                     (_E9092290930_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark9092090926_)))
                                     (_K9092390938_
                                      (lambda (_subst90933_)
                                        (let ((_$e90935_
                                               (if _subst90933_
                                                   (hash-get
                                                    _subst90933_
                                                    _id90919_)
                                                   '#f)))
                                          (if _$e90935_
                                              _$e90935_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _key90898_))))))
                                (if (##structure-instance-of?
                                     _mark9092090926_
                                     'gx#expander-mark::t)
                                    (let* ((_e9092490941_
                                            (##unchecked-structure-ref
                                             _mark9092090926_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst90944_ _e9092490941_))
                                      (_K9092390938_ _subst90944_))
                                    (_E9092290930_))))))
                      (if (##pair? _key9089990907_)
                          (let ((_hd9090490949_ (##car _key9089990907_))
                                (_tl9090590951_ (##cdr _key9089990907_)))
                            (let* ((_id90954_ _hd9090490949_)
                                   (_mark90956_ _tl9090590951_))
                              (_K9090390946_ _mark90956_ _id90954_)))
                          (_else9090190915_))))))
          (let* ((_out9085390863_ _out90850_)
                 (_E9085590867_
                  (lambda () (error '"No clause matching" _out9085390863_)))
                 (_K9085690874_
                  (lambda (_phi90870_ _key90871_ _ctx90872_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _ctx90872_ _phi90870_)
                     (_subst90852_ _key90871_)))))
            (if (##structure-direct-instance-of?
                 _out9085390863_
                 'gx#module-export::t)
                (let* ((_e9085790877_
                        (##unchecked-structure-ref
                         _out9085390863_
                         '1
                         gx#module-export::t
                         '#f))
                       (_ctx90880_ _e9085790877_)
                       (_e9085890882_
                        (##unchecked-structure-ref
                         _out9085390863_
                         '2
                         gx#module-export::t
                         '#f))
                       (_key90885_ _e9085890882_)
                       (_e9085990887_
                        (##unchecked-structure-ref
                         _out9085390863_
                         '3
                         gx#module-export::t
                         '#f))
                       (_phi90890_ _e9085990887_)
                       (_e9086090892_
                        (##unchecked-structure-ref
                         _out9085390863_
                         '4
                         gx#module-export::t
                         '#f))
                       (_e9086190895_
                        (##unchecked-structure-ref
                         _out9085390863_
                         '5
                         gx#module-export::t
                         '#f)))
                  (_K9085690874_ _phi90890_ _key90885_ _ctx90880_))
                (_E9085590867_))))))
    (define gx#core-module-export->import__%
      (lambda (_out90775_ _rename90776_ _dphi90777_)
        (let* ((_out9077890788_ _out90775_)
               (_E9078090792_
                (lambda () (error '"No clause matching" _out9077890788_)))
               (_K9078190804_
                (lambda (_weak?90795_
                         _name90796_
                         _phi90797_
                         _key90798_
                         _ctx90799_)
                  (##structure
                   gx#module-import::t
                   _out90775_
                   (let ((_$e90801_ _rename90776_))
                     (if _$e90801_ _$e90801_ _name90796_))
                   (fx+ _phi90797_ _dphi90777_)
                   _weak?90795_))))
          (if (##structure-direct-instance-of?
               _out9077890788_
               'gx#module-export::t)
              (let* ((_e9078290807_
                      (##unchecked-structure-ref
                       _out9077890788_
                       '1
                       gx#module-export::t
                       '#f))
                     (_ctx90810_ _e9078290807_)
                     (_e9078390812_
                      (##unchecked-structure-ref
                       _out9077890788_
                       '2
                       gx#module-export::t
                       '#f))
                     (_key90815_ _e9078390812_)
                     (_e9078490817_
                      (##unchecked-structure-ref
                       _out9077890788_
                       '3
                       gx#module-export::t
                       '#f))
                     (_phi90820_ _e9078490817_)
                     (_e9078590822_
                      (##unchecked-structure-ref
                       _out9077890788_
                       '4
                       gx#module-export::t
                       '#f))
                     (_name90825_ _e9078590822_)
                     (_e9078690827_
                      (##unchecked-structure-ref
                       _out9077890788_
                       '5
                       gx#module-export::t
                       '#f))
                     (_weak?90830_ _e9078690827_))
                (_K9078190804_
                 _weak?90830_
                 _name90825_
                 _phi90820_
                 _key90815_
                 _ctx90810_))
              (_E9078090792_)))))
    (define gx#core-module-export->import__0
      (lambda (_out90835_)
        (let* ((_rename90837_ '#f) (_dphi90839_ '0))
          (gx#core-module-export->import__%
           _out90835_
           _rename90837_
           _dphi90839_))))
    (define gx#core-module-export->import__1
      (lambda (_out90841_ _rename90842_)
        (let ((_dphi90844_ '0))
          (gx#core-module-export->import__%
           _out90841_
           _rename90842_
           _dphi90844_))))
    (define gx#core-module-export->import
      (lambda _g92852_
        (let ((_g92851_ (##length _g92852_)))
          (cond ((##fx= _g92851_ 1)
                 (apply (lambda (_out90835_)
                          (gx#core-module-export->import__0 _out90835_))
                        _g92852_))
                ((##fx= _g92851_ 2)
                 (apply (lambda (_out90841_ _rename90842_)
                          (gx#core-module-export->import__1
                           _out90841_
                           _rename90842_))
                        _g92852_))
                ((##fx= _g92851_ 3)
                 (apply (lambda (_out90846_ _rename90847_ _dphi90848_)
                          (gx#core-module-export->import__%
                           _out90846_
                           _rename90847_
                           _dphi90848_))
                        _g92852_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g92852_))))))
    (define gx#core-expand-module%
      (lambda (_stx90703_)
        (letrec ((_make-context90705_
                  (lambda (_id90756_)
                    (let* ((_super90758_ (gx#current-expander-context))
                           (_bind-id90760_ (gx#stx-e _id90756_))
                           (_mod-id90762_
                            (if (##structure-instance-of?
                                 _super90758_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##structure-ref
                                  _super90758_
                                  '1
                                  gx#expander-context::t
                                  '#f)
                                 '"$"
                                 _bind-id90760_)
                                _bind-id90760_))
                           (_ns90764_ (symbol->string _mod-id90762_))
                           (_path90771_
                            (if (##structure-instance-of?
                                 _super90758_
                                 'gx#module-context::t)
                                (let ((_path90766_
                                       (##unchecked-structure-ref
                                        _super90758_
                                        '7
                                        gx#module-context::t
                                        '#f)))
                                  (if (or (pair? _path90766_)
                                          (null? _path90766_))
                                      (cons _bind-id90760_ _path90766_)
                                      (if (not _path90766_)
                                          _bind-id90760_
                                          (cons _bind-id90760_
                                                (cons _path90766_ '())))))
                                _bind-id90760_)))
                      (let ((__obj92828
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
                         __obj92828
                         _mod-id90762_
                         _super90758_
                         _ns90764_
                         _path90771_)
                        __obj92828)))))
          (let* ((_e9070690716_ _stx90703_)
                 (_E9070890720_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e9070690716_)))
                 (_E9070790752_
                  (lambda ()
                    (if (gx#stx-pair? _e9070690716_)
                        (let ((_e9070990724_ (gx#syntax-e _e9070690716_)))
                          (let ((_hd9071090727_ (##car _e9070990724_))
                                (_tl9071190729_ (##cdr _e9070990724_)))
                            (if (gx#stx-pair? _tl9071190729_)
                                (let ((_e9071290732_
                                       (gx#syntax-e _tl9071190729_)))
                                  (let ((_hd9071390735_ (##car _e9071290732_))
                                        (_tl9071490737_ (##cdr _e9071290732_)))
                                    (let* ((_id90740_ _hd9071390735_)
                                           (_body90742_ _tl9071490737_))
                                      (if (and (gx#identifier? _id90740_)
                                               (gx#stx-list? _body90742_))
                                          (let* ((_ctx90744_
                                                  (_make-context90705_
                                                   _id90740_))
                                                 (_body90746_
                                                  (gx#core-expand-module-begin
                                                   _body90742_
                                                   _ctx90744_))
                                                 (_body90748_
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body90746_)
                                                   (gx#stx-source
                                                    _stx90703_))))
                                            (##unchecked-structure-set!
                                             _ctx90744_
                                             (make-promise
                                              (lambda ()
                                                (gx#eval-syntax* _body90748_)))
                                             '10
                                             gx#module-context::t
                                             '#f)
                                            (##unchecked-structure-set!
                                             _ctx90744_
                                             _body90748_
                                             '11
                                             gx#module-context::t
                                             '#f)
                                            (gx#core-bind-syntax!__0
                                             _id90740_
                                             _ctx90744_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-list
                                              '%#module
                                              (gx#core-quote-syntax__0
                                               _id90740_)
                                              _body90748_)
                                             (gx#stx-source _stx90703_)))
                                          (_E9070890720_)))))
                                (_E9070890720_))))
                        (_E9070890720_)))))
            (_E9070790752_)))))
    (define gx#core-expand-module-begin
      (lambda (_body90669_ _ctx90670_)
        (call-with-parameters
         (lambda ()
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_stx90673_
                   (gx#core-expand-head (cons '%%begin-module _body90669_)))
                  (_e9067490681_ _stx90673_)
                  (_E9067690685_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _stx90673_)))
                  (_E9067590699_
                   (lambda ()
                     (if (gx#stx-pair? _e9067490681_)
                         (let ((_e9067790689_ (gx#syntax-e _e9067490681_)))
                           (let ((_hd9067890692_ (##car _e9067790689_))
                                 (_tl9067990694_ (##cdr _e9067790689_)))
                             (if (and (gx#identifier? _hd9067890692_)
                                      (gx#core-identifier=?
                                       _hd9067890692_
                                       '%#begin-module))
                                 (let ((_body90697_ _tl9067990694_))
                                   (if '#t
                                       (if (gx#sealed-syntax? _stx90673_)
                                           _body90697_
                                           (gx#core-expand-module-body
                                            _body90697_))
                                       (_E9067690685_)))
                                 (_E9067690685_))))
                         (_E9067690685_)))))
             (_E9067590699_)))
         gx#current-expander-context
         _ctx90670_
         gx#current-expander-phi
         '0)))
    (define gx#core-expand-module-body
      (lambda (_body90465_)
        (letrec ((_expand-special90467_
                  (lambda (_hd90596_ _K90597_ _rest90598_ _r90599_)
                    (let* ((_e9060090617_ _hd90596_)
                           (_E9061290621_
                            (lambda ()
                              (_K90597_
                               _rest90598_
                               (cons (gx#core-expand-top _hd90596_)
                                     _r90599_))))
                           (_E9060290633_
                            (lambda ()
                              (if (gx#stx-pair? _e9060090617_)
                                  (let ((_e9061390625_
                                         (gx#syntax-e _e9060090617_)))
                                    (let ((_hd9061490628_
                                           (##car _e9061390625_))
                                          (_tl9061590630_
                                           (##cdr _e9061390625_)))
                                      (if (and (gx#identifier? _hd9061490628_)
                                               (gx#core-identifier=?
                                                _hd9061490628_
                                                '%#export))
                                          (if '#t
                                              (_K90597_
                                               _rest90598_
                                               (cons _hd90596_ _r90599_))
                                              (_E9061290621_))
                                          (_E9061290621_))))
                                  (_E9061290621_))))
                           (_E9060190665_
                            (lambda ()
                              (if (gx#stx-pair? _e9060090617_)
                                  (let ((_e9060390637_
                                         (gx#syntax-e _e9060090617_)))
                                    (let ((_hd9060490640_
                                           (##car _e9060390637_))
                                          (_tl9060590642_
                                           (##cdr _e9060390637_)))
                                      (if (and (gx#identifier? _hd9060490640_)
                                               (gx#core-identifier=?
                                                _hd9060490640_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl9060590642_)
                                              (let ((_e9060690645_
                                                     (gx#syntax-e
                                                      _tl9060590642_)))
                                                (let ((_hd9060790648_
                                                       (##car _e9060690645_))
                                                      (_tl9060890650_
                                                       (##cdr _e9060690645_)))
                                                  (let ((_hd-bind90653_
                                                         _hd9060790648_))
                                                    (if (gx#stx-pair?
                                                         _tl9060890650_)
                                                        (let ((_e9060990655_
                                                               (gx#syntax-e
                                                                _tl9060890650_)))
                                                          (let ((_hd9061090658_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e9060990655_))
                        (_tl9061190660_ (##cdr _e9060990655_)))
                    (let ((_expr90663_ _hd9061090658_))
                      (if (gx#stx-null? _tl9061190660_)
                          (if (gx#core-bind-values? _hd-bind90653_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind90653_)
                                (_K90597_
                                 _rest90598_
                                 (cons _hd90596_ _r90599_)))
                              (_E9060290633_))
                          (_E9060290633_)))))
                (_E9060290633_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E9060290633_))
                                          (_E9060290633_))))
                                  (_E9060290633_)))))
                      (_E9060190665_))))
                 (_expand-body90468_
                  (lambda (_rbody90470_)
                    (let _lp90472_ ((_rest90474_ _rbody90470_)
                                    (_body90475_ '()))
                      (let* ((_rest9047690484_ _rest90474_)
                             (_else9047890492_ (lambda () _body90475_))
                             (_K9048090584_
                              (lambda (_rest90495_ _hd90496_)
                                (let* ((_e9049790518_ _hd90496_)
                                       (_E9051390522_
                                        (lambda ()
                                          (_lp90472_
                                           _rest90495_
                                           (cons (gx#core-expand-expression
                                                  _hd90496_)
                                                 _body90475_))))
                                       (_E9050990536_
                                        (lambda ()
                                          (if (gx#stx-pair? _e9049790518_)
                                              (let ((_e9051490526_
                                                     (gx#syntax-e
                                                      _e9049790518_)))
                                                (let ((_hd9051590529_
                                                       (##car _e9051490526_))
                                                      (_tl9051690531_
                                                       (##cdr _e9051490526_)))
                                                  (let ((_form90534_
                                                         _hd9051590529_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _form90534_
                                                         gx#special-form-binding?)
                                                        (_lp90472_
                                                         _rest90495_
                                                         (cons _hd90496_
                                                               _body90475_))
                                                        (_E9051390522_)))))
                                              (_E9051390522_))))
                                       (_E9049990548_
                                        (lambda ()
                                          (if (gx#stx-pair? _e9049790518_)
                                              (let ((_e9051090540_
                                                     (gx#syntax-e
                                                      _e9049790518_)))
                                                (let ((_hd9051190543_
                                                       (##car _e9051090540_))
                                                      (_tl9051290545_
                                                       (##cdr _e9051090540_)))
                                                  (if (and (gx#identifier?
                                                            _hd9051190543_)
                                                           (gx#core-identifier=?
                                                            _hd9051190543_
                                                            '%#export))
                                                      (if '#t
                                                          (_lp90472_
                                                           _rest90495_
                                                           (cons (gx#core-expand-export%__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd90496_)
                         _body90475_))
                  (_E9050990536_))
              (_E9050990536_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E9050990536_))))
                                       (_E9049890580_
                                        (lambda ()
                                          (if (gx#stx-pair? _e9049790518_)
                                              (let ((_e9050090552_
                                                     (gx#syntax-e
                                                      _e9049790518_)))
                                                (let ((_hd9050190555_
                                                       (##car _e9050090552_))
                                                      (_tl9050290557_
                                                       (##cdr _e9050090552_)))
                                                  (if (and (gx#identifier?
                                                            _hd9050190555_)
                                                           (gx#core-identifier=?
                                                            _hd9050190555_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl9050290557_)
                                                          (let ((_e9050390560_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl9050290557_)))
                    (let ((_hd9050490563_ (##car _e9050390560_))
                          (_tl9050590565_ (##cdr _e9050390560_)))
                      (let ((_hd-bind90568_ _hd9050490563_))
                        (if (gx#stx-pair? _tl9050590565_)
                            (let ((_e9050690570_ (gx#syntax-e _tl9050590565_)))
                              (let ((_hd9050790573_ (##car _e9050690570_))
                                    (_tl9050890575_ (##cdr _e9050690570_)))
                                (let ((_expr90578_ _hd9050790573_))
                                  (if (gx#stx-null? _tl9050890575_)
                                      (if '#t
                                          (_lp90472_
                                           _rest90495_
                                           (cons (gx#core-quote-syntax__1
                                                  (gx#core-list
                                                   '%#define-values
                                                   (gx#core-quote-bind-values
                                                    _hd-bind90568_)
                                                   (gx#core-expand-expression
                                                    _expr90578_))
                                                  (gx#stx-source _hd90496_))
                                                 _body90475_))
                                          (_E9049990548_))
                                      (_E9049990548_)))))
                            (_E9049990548_)))))
                  (_E9049990548_))
              (_E9049990548_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E9049990548_)))))
                                  (_E9049890580_)))))
                        (if (##pair? _rest9047690484_)
                            (let ((_hd9048190587_ (##car _rest9047690484_))
                                  (_tl9048290589_ (##cdr _rest9047690484_)))
                              (let* ((_hd90592_ _hd9048190587_)
                                     (_rest90594_ _tl9048290589_))
                                (_K9048090584_ _rest90594_ _hd90592_)))
                            (_else9047890492_)))))))
          (_expand-body90468_
           (gx#core-expand-block__%
            (cons '%#begin-module _body90465_)
            _expand-special90467_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_stx90308_
               _expanded?90309_
               _method90310_
               _current-phi90311_
               _expand190312_)
        (letrec ((_K90314_
                  (lambda (_rest90432_ _r90433_)
                    (let* ((_e9043490441_ _rest90432_)
                           (_E9043690445_ (lambda () _r90433_))
                           (_E9043590461_
                            (lambda ()
                              (if (gx#stx-pair? _e9043490441_)
                                  (let ((_e9043790449_
                                         (gx#syntax-e _e9043490441_)))
                                    (let ((_hd9043890452_
                                           (##car _e9043790449_))
                                          (_tl9043990454_
                                           (##cdr _e9043790449_)))
                                      (let* ((_hd90457_ _hd9043890452_)
                                             (_rest90459_ _tl9043990454_))
                                        (if '#t
                                            (_step90315_
                                             _hd90457_
                                             _rest90459_
                                             _r90433_)
                                            (_E9043690445_)))))
                                  (_E9043690445_)))))
                      (_E9043590461_))))
                 (_step90315_
                  (lambda (_hd90346_ _rest90347_ _r90348_)
                    (let* ((_e9034990367_ _hd90346_)
                           (_E9036290371_
                            (lambda ()
                              (if (_expanded?90309_ (gx#stx-e _hd90346_))
                                  (_K90314_
                                   _rest90347_
                                   (cons (gx#stx-e _hd90346_) _r90348_))
                                  (_expand190312_
                                   _hd90346_
                                   _K90314_
                                   _rest90347_
                                   _r90348_))))
                           (_E9035890387_
                            (lambda ()
                              (if (gx#stx-pair? _e9034990367_)
                                  (let ((_e9036390375_
                                         (gx#syntax-e _e9034990367_)))
                                    (let ((_hd9036490378_
                                           (##car _e9036390375_))
                                          (_tl9036590380_
                                           (##cdr _e9036390375_)))
                                      (let* ((_macro90383_ _hd9036490378_)
                                             (_body90385_ _tl9036590380_))
                                        (if (gx#core-bound-identifier?__%
                                             _macro90383_
                                             gx#syntax-binding?)
                                            (_K90314_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _macro90383_)
                                                    _hd90346_
                                                    _method90310_)
                                                   _rest90347_)
                                             _r90348_)
                                            (_E9036290371_)))))
                                  (_E9036290371_))))
                           (_E9035190401_
                            (lambda ()
                              (if (gx#stx-pair? _e9034990367_)
                                  (let ((_e9035990391_
                                         (gx#syntax-e _e9034990367_)))
                                    (let ((_hd9036090394_
                                           (##car _e9035990391_))
                                          (_tl9036190396_
                                           (##cdr _e9035990391_)))
                                      (if (eq? (gx#stx-e _hd9036090394_)
                                               'begin:)
                                          (let ((_body90399_ _tl9036190396_))
                                            (if '#t
                                                (_K90314_
                                                 (gx#stx-foldr
                                                  cons
                                                  _rest90347_
                                                  _body90399_)
                                                 _r90348_)
                                                (_E9035890387_)))
                                          (_E9035890387_))))
                                  (_E9035890387_))))
                           (_E9035090428_
                            (lambda ()
                              (if (gx#stx-pair? _e9034990367_)
                                  (let ((_e9035290405_
                                         (gx#syntax-e _e9034990367_)))
                                    (let ((_hd9035390408_
                                           (##car _e9035290405_))
                                          (_tl9035490410_
                                           (##cdr _e9035290405_)))
                                      (if (eq? (gx#stx-e _hd9035390408_) 'phi:)
                                          (if (gx#stx-pair? _tl9035490410_)
                                              (let ((_e9035590413_
                                                     (gx#syntax-e
                                                      _tl9035490410_)))
                                                (let ((_hd9035690416_
                                                       (##car _e9035590413_))
                                                      (_tl9035790418_
                                                       (##cdr _e9035590413_)))
                                                  (let* ((_dphi90421_
                                                          _hd9035690416_)
                                                         (_body90423_
                                                          _tl9035790418_))
                                                    (if (gx#stx-fixnum?
                                                         _dphi90421_)
                                                        (let ((_rbody90426_
                                                               (call-with-parameters
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_K90314_ _body90423_ '()))
                        _current-phi90311_
                        (fx+ (gx#stx-e _dphi90421_) (_current-phi90311_)))))
                  (_K90314_ _rest90347_ (foldr1 cons _r90348_ _rbody90426_)))
                (_E9035190401_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E9035190401_))
                                          (_E9035190401_))))
                                  (_E9035190401_)))))
                      (_E9035090428_)))))
          (let* ((_e9031690323_ _stx90308_)
                 (_E9031890327_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e9031690323_)))
                 (_E9031790342_
                  (lambda ()
                    (if (gx#stx-pair? _e9031690323_)
                        (let ((_e9031990331_ (gx#syntax-e _e9031690323_)))
                          (let ((_hd9032090334_ (##car _e9031990331_))
                                (_tl9032190336_ (##cdr _e9031990331_)))
                            (let ((_body90339_ _tl9032190336_))
                              (if '#t
                                  (if (_current-phi90311_)
                                      (_K90314_ _body90339_ '())
                                      (call-with-parameters
                                       (lambda () (_K90314_ _body90339_ '()))
                                       _current-phi90311_
                                       (gx#current-expander-phi)))
                                  (_E9031890327_)))))
                        (_E9031890327_)))))
            (_E9031790342_)))))
    (define gx#core-expand-import%__%
      (lambda (_stx89975_ _internal-expand?89976_)
        (letrec ((_expand189978_
                  (lambda (_hd90288_ _K90289_ _rest90290_ _r90291_)
                    (if (gx#core-bound-module? _hd90288_)
                        (_import189979_
                         (gx#syntax-local-e__0 _hd90288_)
                         _K90289_
                         _rest90290_
                         _r90291_)
                        (if (gx#core-library-module-path? _hd90288_)
                            (_import189979_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _hd90288_))
                             _K90289_
                             _rest90290_
                             _r90291_)
                            (if (gx#core-library-relative-module-path?
                                 _hd90288_)
                                (_import189979_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _hd90288_))
                                 _K90289_
                                 _rest90290_
                                 _r90291_)
                                (let ((_e90293_ (gx#stx-e _hd90288_)))
                                  (if (pair? _e90293_)
                                      (let ((_$e90295_
                                             (gx#stx-e (car _e90293_))))
                                        (if (eq? 'spec: _$e90295_)
                                            (_import-spec89982_
                                             _hd90288_
                                             _K90289_
                                             _rest90290_
                                             _r90291_)
                                            (if (eq? 'in: _$e90295_)
                                                (_import-submodule89980_
                                                 _hd90288_
                                                 _K90289_
                                                 _rest90290_
                                                 _r90291_)
                                                (if (eq? 'runtime: _$e90295_)
                                                    (_import-runtime89981_
                                                     _hd90288_
                                                     _K90289_
                                                     _rest90290_
                                                     _r90291_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _stx89975_
                                                     _hd90288_)))))
                                      (if (string? _e90293_)
                                          (_import189979_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _hd90288_
                                             (gx#stx-source _stx89975_)))
                                           _K90289_
                                           _rest90290_
                                           _r90291_)
                                          (if (##structure-instance-of?
                                               _e90293_
                                               'gx#module-context::t)
                                              (_K90289_
                                               _rest90290_
                                               (cons _e90293_ _r90291_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _stx89975_
                                               _hd90288_))))))))))
                 (_import189979_
                  (lambda (_ctx90277_ _K90278_ _rest90279_ _r90280_)
                    (let ((_dphi90282_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_K90278_
                       _rest90279_
                       (cons (##structure
                              gx#import-set::t
                              _ctx90277_
                              _dphi90282_
                              (map (lambda (_g9028390285_)
                                     (gx#core-module-export->import__%
                                      _g9028390285_
                                      '#f
                                      _dphi90282_))
                                   (##unchecked-structure-ref
                                    _ctx90277_
                                    '9
                                    gx#module-context::t
                                    '#f)))
                             _r90280_)))))
                 (_import-submodule89980_
                  (lambda (_hd90244_ _K90245_ _rest90246_ _r90247_)
                    (let* ((_e9024890255_ _hd90244_)
                           (_E9025090259_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e9024890255_)))
                           (_E9024990273_
                            (lambda ()
                              (if (gx#stx-pair? _e9024890255_)
                                  (let ((_e9025190263_
                                         (gx#syntax-e _e9024890255_)))
                                    (let ((_hd9025290266_
                                           (##car _e9025190263_))
                                          (_tl9025390268_
                                           (##cdr _e9025190263_)))
                                      (let ((_spath90271_ _tl9025390268_))
                                        (if '#t
                                            (_import189979_
                                             (_import-spec-source89983_
                                              _spath90271_)
                                             _K90245_
                                             _rest90246_
                                             _r90247_)
                                            (_E9025090259_)))))
                                  (_E9025090259_)))))
                      (_E9024990273_))))
                 (_import-runtime89981_
                  (lambda (_hd90211_ _K90212_ _rest90213_ _r90214_)
                    (let* ((_e9021590222_ _hd90211_)
                           (_E9021790226_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e9021590222_)))
                           (_E9021690240_
                            (lambda ()
                              (if (gx#stx-pair? _e9021590222_)
                                  (let ((_e9021890230_
                                         (gx#syntax-e _e9021590222_)))
                                    (let ((_hd9021990233_
                                           (##car _e9021890230_))
                                          (_tl9022090235_
                                           (##cdr _e9021890230_)))
                                      (let ((_spath90238_ _tl9022090235_))
                                        (if '#t
                                            (_K90212_
                                             _rest90213_
                                             (cons (_import-spec-source89983_
                                                    _spath90238_)
                                                   _r90214_))
                                            (_E9021790226_)))))
                                  (_E9021790226_)))))
                      (_E9021690240_))))
                 (_import-spec89982_
                  (lambda (_hd90050_ _K90051_ _rest90052_ _r90053_)
                    (let* ((_e9005490071_ _hd90050_)
                           (_E9006390075_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e9005490071_)))
                           (_E9005690185_
                            (lambda ()
                              (if (gx#stx-pair? _e9005490071_)
                                  (let ((_e9006490079_
                                         (gx#syntax-e _e9005490071_)))
                                    (let ((_hd9006590082_
                                           (##car _e9006490079_))
                                          (_tl9006690084_
                                           (##cdr _e9006490079_)))
                                      (if (gx#stx-pair? _tl9006690084_)
                                          (let ((_e9006790087_
                                                 (gx#syntax-e _tl9006690084_)))
                                            (let ((_hd9006890090_
                                                   (##car _e9006790087_))
                                                  (_tl9006990092_
                                                   (##cdr _e9006790087_)))
                                              (let* ((_path90095_
                                                      _hd9006890090_)
                                                     (_specs90097_
                                                      _tl9006990092_))
                                                (if '#t
                                                    (let ((_src-ctx90099_
                                                           (_import-spec-source89983_
                                                            _path90095_))
                                                          (_exports90100_
                                                           (make-hash-table))
                                                          (_specs90101_
                                                           (gx#syntax->list
                                                            _specs90097_)))
                                                      (for-each
                                                       (lambda (_out90103_)
                                                         (hash-put!
                                                          _exports90100_
                                                          (cons (##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _out90103_
                         '3
                         gx#module-export::t
                         '#f)
                        (##unchecked-structure-ref
                         _out90103_
                         '4
                         gx#module-export::t
                         '#f))
                  _out90103_))
               (##unchecked-structure-ref
                _src-ctx90099_
                '9
                gx#module-context::t
                '#f))
              (_K90051_
               _rest90052_
               (foldl1 (lambda (_spec90105_ _r90106_)
                         (let* ((_e9010790123_ _spec90105_)
                                (_E9010990127_
                                 (lambda ()
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid syntax-case clause"
                                    _e9010790123_)))
                                (_E9010890181_
                                 (lambda ()
                                   (if (gx#stx-pair? _e9010790123_)
                                       (let ((_e9011090131_
                                              (gx#syntax-e _e9010790123_)))
                                         (let ((_hd9011190134_
                                                (##car _e9011090131_))
                                               (_tl9011290136_
                                                (##cdr _e9011090131_)))
                                           (let ((_phi90139_ _hd9011190134_))
                                             (if (gx#stx-pair? _tl9011290136_)
                                                 (let ((_e9011390141_
                                                        (gx#syntax-e
                                                         _tl9011290136_)))
                                                   (let ((_hd9011490144_
                                                          (##car _e9011390141_))
                                                         (_tl9011590146_
                                                          (##cdr _e9011390141_)))
                                                     (let ((_name90149_
                                                            _hd9011490144_))
                                                       (if (gx#stx-pair?
                                                            _tl9011590146_)
                                                           (let ((_e9011690151_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl9011590146_)))
                     (let ((_hd9011790154_ (##car _e9011690151_))
                           (_tl9011890156_ (##cdr _e9011690151_)))
                       (let ((_src-phi90159_ _hd9011790154_))
                         (if (gx#stx-pair? _tl9011890156_)
                             (let ((_e9011990161_
                                    (gx#syntax-e _tl9011890156_)))
                               (let ((_hd9012090164_ (##car _e9011990161_))
                                     (_tl9012190166_ (##cdr _e9011990161_)))
                                 (let ((_src-name90169_ _hd9012090164_))
                                   (if (gx#stx-null? _tl9012190166_)
                                       (if (and (gx#stx-fixnum? _src-phi90159_)
                                                (gx#identifier?
                                                 _src-name90169_)
                                                (gx#stx-fixnum? _phi90139_)
                                                (gx#identifier? _name90149_))
                                           (let ((_src-phi90171_
                                                  (gx#stx-e _src-phi90159_))
                                                 (_src-name90172_
                                                  (gx#core-identifier-key
                                                   _src-name90169_))
                                                 (_phi90173_
                                                  (gx#stx-e _phi90139_))
                                                 (_name90174_
                                                  (gx#core-identifier-key
                                                   _name90149_)))
                                             (let ((_$e90176_
                                                    (hash-get
                                                     _exports90100_
                                                     (cons _src-phi90171_
                                                           _src-name90172_))))
                                               (if _$e90176_
                                                   ((lambda (_out90179_)
                                                      (cons (gx#core-module-export->import__%
                                                             _out90179_
                                                             _name90174_
                                                             (fx- _phi90173_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _src-phi90171_))
                    _r90106_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _$e90176_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; no matching export"
                                                    _stx89975_
                                                    _hd90050_))))
                                           (_E9010990127_))
                                       (_E9010990127_)))))
                             (_E9010990127_)))))
                   (_E9010990127_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E9010990127_)))))
                                       (_E9010990127_)))))
                           (_E9010890181_)))
                       _r90053_
                       _specs90101_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E9006390075_)))))
                                          (_E9006390075_))))
                                  (_E9006390075_))))
                           (_E9005590207_
                            (lambda ()
                              (if (gx#stx-pair? _e9005490071_)
                                  (let ((_e9005790189_
                                         (gx#syntax-e _e9005490071_)))
                                    (let ((_hd9005890192_
                                           (##car _e9005790189_))
                                          (_tl9005990194_
                                           (##cdr _e9005790189_)))
                                      (if (gx#stx-pair? _tl9005990194_)
                                          (let ((_e9006090197_
                                                 (gx#syntax-e _tl9005990194_)))
                                            (let ((_hd9006190200_
                                                   (##car _e9006090197_))
                                                  (_tl9006290202_
                                                   (##cdr _e9006090197_)))
                                              (let ((_path90205_
                                                     _hd9006190200_))
                                                (if (gx#stx-null?
                                                     _tl9006290202_)
                                                    (if '#t
                                                        (_K90051_
                                                         _rest90052_
                                                         (cons (_import-spec-source89983_
                                                                _path90205_)
                                                               _r90053_))
                                                        (_E9005690185_))
                                                    (_E9005690185_)))))
                                          (_E9005690185_))))
                                  (_E9005690185_)))))
                      (_E9005590207_))))
                 (_import-spec-source89983_
                  (lambda (_spath90048_)
                    (gx#core-import-nested-module _spath90048_ _stx89975_)))
                 (_import!89984_
                  (lambda (_rbody89997_)
                    (letrec* ((_current-ctx89999_
                               (gx#current-expander-context))
                              (_deps90000_ (make-hash-table-eq))
                              (_bind!90001_
                               (lambda (_hd90046_)
                                 (gx#core-bind-import!__1
                                  _hd90046_
                                  _current-ctx89999_))))
                      (let _lp90003_ ((_rest90005_ _rbody89997_)
                                      (_body90006_ '()))
                        (let* ((_rest9000790015_ _rest90005_)
                               (_else9000990025_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _current-ctx89999_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _current-ctx89999_
                                       (foldl1 cons
                                               (##unchecked-structure-ref
                                                _current-ctx89999_
                                                '8
                                                gx#module-context::t
                                                '#f)
                                               _body90006_)
                                       '8
                                       gx#module-context::t
                                       '#f)
                                      '#!void)
                                  (hash-for-each
                                   (lambda (_ctx90023_ _g92853_)
                                     (gx#eval-module _ctx90023_))
                                   _deps90000_)
                                  _body90006_))
                               (_K9001190034_
                                (lambda (_rest90028_ _hd90029_)
                                  (if (##structure-direct-instance-of?
                                       _hd90029_
                                       'gx#module-import::t)
                                      (begin
                                        (_bind!90001_ _hd90029_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _hd90029_
                                                   '3
                                                   gx#module-import::t
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _hd90029_
                                                            '1
                                                            gx#module-import::t
                                                            '#f)
                                                           '3
                                                           gx#module-export::t
                                                           '#f)))
                                            (hash-put!
                                             _deps90000_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _hd90029_
                                               '1
                                               gx#module-import::t
                                               '#f)
                                              '1
                                              gx#module-export::t
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _hd90029_
                                           'gx#import-set::t)
                                          (begin
                                            (for-each
                                             _bind!90001_
                                             (##unchecked-structure-ref
                                              _hd90029_
                                              '3
                                              gx#import-set::t
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _hd90029_
                                                  '2
                                                  gx#import-set::t
                                                  '#f))
                                                (hash-put!
                                                 _deps90000_
                                                 (##unchecked-structure-ref
                                                  _hd90029_
                                                  '1
                                                  gx#import-set::t
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_$e90031_
                                                 (##structure-instance-of?
                                                  _hd90029_
                                                  'gx#module-context::t)))
                                            (if _$e90031_
                                                _$e90031_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _stx89975_
                                                 _hd90029_)))))
                                  (_lp90003_
                                   _rest90028_
                                   (cons _hd90029_ _body90006_)))))
                          (if (##pair? _rest9000790015_)
                              (let ((_hd9001290037_ (##car _rest9000790015_))
                                    (_tl9001390039_ (##cdr _rest9000790015_)))
                                (let* ((_hd90042_ _hd9001290037_)
                                       (_rest90044_ _tl9001390039_))
                                  (_K9001190034_ _rest90044_ _hd90042_)))
                              (_else9000990025_)))))))
                 (_expanded-import?89985_
                  (lambda (_e89989_)
                    (let ((_$e89991_
                           (##structure-direct-instance-of?
                            _e89989_
                            'gx#import-set::t)))
                      (if _$e89991_
                          _$e89991_
                          (let ((_$e89994_
                                 (##structure-direct-instance-of?
                                  _e89989_
                                  'gx#module-import::t)))
                            (if _$e89994_
                                _$e89994_
                                (##structure-instance-of?
                                 _e89989_
                                 'gx#module-context::t))))))))
          (let ((_rbody89987_
                 (gx#core-expand-import/export
                  _stx89975_
                  _expanded-import?89985_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _expand189978_)))
            (if _internal-expand?89976_
                (reverse _rbody89987_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_import!89984_ _rbody89987_))
                 (gx#stx-source _stx89975_)))))))
    (define gx#core-expand-import%__0
      (lambda (_stx90301_)
        (let ((_internal-expand?90303_ '#f))
          (gx#core-expand-import%__% _stx90301_ _internal-expand?90303_))))
    (define gx#core-expand-import%
      (lambda _g92855_
        (let ((_g92854_ (##length _g92855_)))
          (cond ((##fx= _g92854_ 1)
                 (apply (lambda (_stx90301_)
                          (gx#core-expand-import%__0 _stx90301_))
                        _g92855_))
                ((##fx= _g92854_ 2)
                 (apply (lambda (_stx90305_ _internal-expand?90306_)
                          (gx#core-expand-import%__%
                           _stx90305_
                           _internal-expand?90306_))
                        _g92855_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g92855_))))))
    (define gx#core-import-nested-module
      (lambda (_spath89902_ _where89903_)
        (let* ((_e8990489911_ _spath89902_)
               (_E8990689915_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8990489911_)))
               (_E8990589970_
                (lambda ()
                  (if (gx#stx-pair? _e8990489911_)
                      (let ((_e8990789919_ (gx#syntax-e _e8990489911_)))
                        (let ((_hd8990889922_ (##car _e8990789919_))
                              (_tl8990989924_ (##cdr _e8990789919_)))
                          (let* ((_origin89927_ _hd8990889922_)
                                 (_sub89929_ _tl8990989924_))
                            (if '#t
                                (let ((_origin-ctx89931_
                                       (if (gx#stx-false? _origin89927_)
                                           (gx#current-expander-context)
                                           (gx#import-module__0
                                            _origin89927_))))
                                  (let _lp89933_ ((_rest89935_ _sub89929_)
                                                  (_ctx89936_
                                                   _origin-ctx89931_))
                                    (let* ((_e8993789944_ _rest89935_)
                                           (_E8993989948_
                                            (lambda () _ctx89936_))
                                           (_E8993889966_
                                            (lambda ()
                                              (if (gx#stx-pair? _e8993789944_)
                                                  (let ((_e8994089952_
                                                         (gx#syntax-e
                                                          _e8993789944_)))
                                                    (let ((_hd8994189955_
                                                           (##car _e8994089952_))
                                                          (_tl8994289957_
                                                           (##cdr _e8994089952_)))
                                                      (let* ((_id89960_
                                                              _hd8994189955_)
                                                             (_rest89962_
                                                              _tl8994289957_))
                                                        (if '#t
                                                            (let ((_bind89964_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#resolve-identifier__% _id89960_ '0 _ctx89936_)))
                      (if (and (##structure-direct-instance-of?
                                _bind89964_
                                'gx#syntax-binding::t)
                               (##structure-instance-of?
                                (##unchecked-structure-ref
                                 _bind89964_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                'gx#module-context::t))
                          '#!void
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; not bound as module"
                           _where89903_
                           _spath89902_
                           _id89960_))
                      (_lp89933_
                       _rest89962_
                       (##unchecked-structure-ref
                        _bind89964_
                        '4
                        gx#syntax-binding::t
                        '#f)))
                    (_E8993989948_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8993989948_)))))
                                      (_E8993889966_))))
                                (_E8990689915_)))))
                      (_E8990689915_)))))
          (_E8990589970_))))
    (define gx#core-expand-import-source
      (lambda (_hd89900_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _hd89900_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_stx89408_ _internal-expand?89409_)
        (letrec* ((_make-export__9278492785_
                   (lambda (_bind89848_ _phi89849_ _ctx89850_ _name89851_)
                     (let* ((_key89853_
                             (##unchecked-structure-ref
                              _bind89848_
                              '2
                              gx#binding::t
                              '#f))
                            (_export-key89855_
                             (if _name89851_
                                 (gx#core-identifier-key _name89851_)
                                 _key89853_)))
                       (##structure
                        gx#module-export::t
                        _ctx89850_
                        _key89853_
                        _phi89849_
                        _export-key89855_
                        (let ((_$e89858_
                               (##structure-instance-of?
                                _bind89848_
                                'gx#extern-binding::t)))
                          (if _$e89858_
                              _$e89858_
                              (##structure-direct-instance-of?
                               _bind89848_
                               'gx#import-binding::t)))))))
                  (_make-export__0__9278692789_
                   (lambda (_bind89864_)
                     (let* ((_phi89866_ (gx#current-export-expander-phi))
                            (_ctx89868_ (gx#current-expander-context))
                            (_name89870_ '#f))
                       (_make-export__9278492785_
                        _bind89864_
                        _phi89866_
                        _ctx89868_
                        _name89870_))))
                  (_make-export__1__9278792790_
                   (lambda (_bind89872_ _phi89873_)
                     (let* ((_ctx89875_ (gx#current-expander-context))
                            (_name89877_ '#f))
                       (_make-export__9278492785_
                        _bind89872_
                        _phi89873_
                        _ctx89875_
                        _name89877_))))
                  (_make-export__2__9278892791_
                   (lambda (_bind89879_ _phi89880_ _ctx89881_)
                     (let ((_name89883_ '#f))
                       (_make-export__9278492785_
                        _bind89879_
                        _phi89880_
                        _ctx89881_
                        _name89883_))))
                  (_make-export89411_
                   (lambda _g92857_
                     (let ((_g92856_ (##length _g92857_)))
                       (cond ((##fx= _g92856_ 1)
                              (apply (lambda (_bind89864_)
                                       (_make-export__0__9278692789_
                                        _bind89864_))
                                     _g92857_))
                             ((##fx= _g92856_ 2)
                              (apply (lambda (_bind89872_ _phi89873_)
                                       (_make-export__1__9278792790_
                                        _bind89872_
                                        _phi89873_))
                                     _g92857_))
                             ((##fx= _g92856_ 3)
                              (apply (lambda (_bind89879_
                                              _phi89880_
                                              _ctx89881_)
                                       (_make-export__2__9278892791_
                                        _bind89879_
                                        _phi89880_
                                        _ctx89881_))
                                     _g92857_))
                             ((##fx= _g92856_ 4)
                              (apply (lambda (_bind89885_
                                              _phi89886_
                                              _ctx89887_
                                              _name89888_)
                                       (_make-export__9278492785_
                                        _bind89885_
                                        _phi89886_
                                        _ctx89887_
                                        _name89888_))
                                     _g92857_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g92857_))))))
                  (_expand189412_
                   (lambda (_hd89561_ _K89562_ _rest89563_ _r89564_)
                     (let* ((_e8956589597_ _hd89561_)
                            (_E8959289601_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _stx89408_
                                _hd89561_)))
                            (_E8958289680_
                             (lambda ()
                               (if (gx#stx-pair? _e8956589597_)
                                   (let ((_e8959389605_
                                          (gx#syntax-e _e8956589597_)))
                                     (let ((_hd8959489608_
                                            (##car _e8959389605_))
                                           (_tl8959589610_
                                            (##cdr _e8959389605_)))
                                       (if (eq? (gx#stx-e _hd8959489608_)
                                                'import:)
                                           (let ((_in89613_ _tl8959589610_))
                                             (if (gx#stx-list? _in89613_)
                                                 (let _lp89615_ ((_in-rest89617_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _in89613_)
                         (_r89618_ _r89564_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_e8961989626_
                                                           _in-rest89617_)
                                                          (_E8962189630_
                                                           (lambda ()
                                                             (_K89562_
                                                              _rest89563_
                                                              _r89618_)))
                                                          (_E8962089676_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _e8961989626_)
                         (let ((_e8962289634_ (gx#syntax-e _e8961989626_)))
                           (let ((_hd8962389637_ (##car _e8962289634_))
                                 (_tl8962489639_ (##cdr _e8962289634_)))
                             (let* ((_hd89642_ _hd8962389637_)
                                    (_in-rest89644_ _tl8962489639_))
                               (if '#t
                                   (let ((_src89674_
                                          (if (gx#core-bound-module? _hd89642_)
                                              (gx#syntax-local-e__0 _hd89642_)
                                              (if (gx#core-library-module-path?
                                                   _hd89642_)
                                                  (gx#import-module__0
                                                   (gx#core-resolve-library-module-path
                                                    _hd89642_))
                                                  (if (gx#core-library-relative-module-path?
                                                       _hd89642_)
                                                      (gx#import-module__0
                                                       (gx#core-resolve-library-relative-module-path
                                                        _hd89642_))
                                                      (if (gx#stx-string?
                                                           _hd89642_)
                                                          (gx#import-module__0
                                                           (gx#core-resolve-module-path__%
                                                            _hd89642_
                                                            (gx#stx-source
                                                             _stx89408_)))
                                                          (let* ((_e8964589652_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd89642_)
                         (_E8964789656_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; illegal re-export"
                             _stx89408_
                             _hd89642_)))
                         (_E8964689670_
                          (lambda ()
                            (if (gx#stx-pair? _e8964589652_)
                                (let ((_e8964889660_
                                       (gx#syntax-e _e8964589652_)))
                                  (let ((_hd8964989663_ (##car _e8964889660_))
                                        (_tl8965089665_ (##cdr _e8964889660_)))
                                    (if (eq? (gx#stx-e _hd8964989663_) 'in:)
                                        (let ((_spath89668_ _tl8965089665_))
                                          (if '#t
                                              (gx#core-import-nested-module
                                               _spath89668_
                                               _stx89408_)
                                              (_E8964789656_)))
                                        (_E8964789656_))))
                                (_E8964789656_)))))
                    (_E8964689670_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_lp89615_
                                      _in-rest89644_
                                      (_export-imports89413_
                                       _src89674_
                                       _r89618_)))
                                   (_E8962189630_)))))
                         (_E8962189630_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E8962089676_)))
                                                 (_E8959289601_)))
                                           (_E8959289601_))))
                                   (_E8959289601_))))
                            (_E8956989719_
                             (lambda ()
                               (if (gx#stx-pair? _e8956589597_)
                                   (let ((_e8958389684_
                                          (gx#syntax-e _e8956589597_)))
                                     (let ((_hd8958489687_
                                            (##car _e8958389684_))
                                           (_tl8958589689_
                                            (##cdr _e8958389684_)))
                                       (if (eq? (gx#stx-e _hd8958489687_)
                                                'rename:)
                                           (if (gx#stx-pair? _tl8958589689_)
                                               (let ((_e8958689692_
                                                      (gx#syntax-e
                                                       _tl8958589689_)))
                                                 (let ((_hd8958789695_
                                                        (##car _e8958689692_))
                                                       (_tl8958889697_
                                                        (##cdr _e8958689692_)))
                                                   (let ((_id89700_
                                                          _hd8958789695_))
                                                     (if (gx#stx-pair?
                                                          _tl8958889697_)
                                                         (let ((_e8958989702_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl8958889697_)))
                   (let ((_hd8959089705_ (##car _e8958989702_))
                         (_tl8959189707_ (##cdr _e8958989702_)))
                     (let ((_name89710_ _hd8959089705_))
                       (if (gx#stx-null? _tl8959189707_)
                           (if '#t
                               (let* ((_phi89712_
                                       (gx#current-export-expander-phi))
                                      (_$e89714_
                                       (gx#core-resolve-identifier__1
                                        _id89700_
                                        _phi89712_)))
                                 (if _$e89714_
                                     ((lambda (_bind89717_)
                                        (_K89562_
                                         _rest89563_
                                         (cons (_make-export__9278492785_
                                                _bind89717_
                                                _phi89712_
                                                (gx#current-expander-context)
                                                _name89710_)
                                               _r89564_)))
                                      _$e89714_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Reference to unbound identifier"
                                      _stx89408_
                                      _hd89561_
                                      _id89700_)))
                               (_E8958289680_))
                           (_E8958289680_)))))
                 (_E8958289680_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E8958289680_))
                                           (_E8958289680_))))
                                   (_E8958289680_))))
                            (_E8956889768_
                             (lambda ()
                               (if (gx#stx-pair? _e8956589597_)
                                   (let ((_e8957089723_
                                          (gx#syntax-e _e8956589597_)))
                                     (let ((_hd8957189726_
                                            (##car _e8957089723_))
                                           (_tl8957289728_
                                            (##cdr _e8957089723_)))
                                       (if (eq? (gx#stx-e _hd8957189726_)
                                                'spec:)
                                           (if (gx#stx-pair? _tl8957289728_)
                                               (let ((_e8957389731_
                                                      (gx#syntax-e
                                                       _tl8957289728_)))
                                                 (let ((_hd8957489734_
                                                        (##car _e8957389731_))
                                                       (_tl8957589736_
                                                        (##cdr _e8957389731_)))
                                                   (let ((_phi89739_
                                                          _hd8957489734_))
                                                     (if (gx#stx-pair?
                                                          _tl8957589736_)
                                                         (let ((_e8957689741_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl8957589736_)))
                   (let ((_hd8957789744_ (##car _e8957689741_))
                         (_tl8957889746_ (##cdr _e8957689741_)))
                     (let ((_id89749_ _hd8957789744_))
                       (if (gx#stx-pair? _tl8957889746_)
                           (let ((_e8957989751_ (gx#syntax-e _tl8957889746_)))
                             (let ((_hd8958089754_ (##car _e8957989751_))
                                   (_tl8958189756_ (##cdr _e8957989751_)))
                               (let ((_name89759_ _hd8958089754_))
                                 (if (gx#stx-null? _tl8958189756_)
                                     (if (and (gx#stx-fixnum? _phi89739_)
                                              (gx#identifier? _id89749_)
                                              (gx#identifier? _name89759_))
                                         (let* ((_phi89761_
                                                 (gx#stx-e _phi89739_))
                                                (_$e89763_
                                                 (gx#core-resolve-identifier__1
                                                  _id89749_
                                                  _phi89761_)))
                                           (if _$e89763_
                                               ((lambda (_bind89766_)
                                                  (_K89562_
                                                   _rest89563_
                                                   (cons (_make-export__9278492785_
                                                          _bind89766_
                                                          _phi89761_
                                                          (gx#current-expander-context)
                                                          _name89759_)
                                                         _r89564_)))
                                                _$e89763_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _stx89408_
                                                _hd89561_
                                                _id89749_)))
                                         (_E8956989719_))
                                     (_E8956989719_)))))
                           (_E8956989719_)))))
                 (_E8956989719_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E8956989719_))
                                           (_E8956989719_))))
                                   (_E8956989719_))))
                            (_E8956789779_
                             (lambda ()
                               (let ((_id89772_ _e8956589597_))
                                 (if (gx#identifier? _id89772_)
                                     (let ((_$e89774_
                                            (gx#core-resolve-identifier__1
                                             _id89772_
                                             (gx#current-export-expander-phi))))
                                       (if _$e89774_
                                           ((lambda (_bind89777_)
                                              (_K89562_
                                               _rest89563_
                                               (cons (_make-export__0__9278692789_
                                                      _bind89777_)
                                                     _r89564_)))
                                            _$e89774_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _stx89408_
                                            _hd89561_)))
                                     (_E8956889768_)))))
                            (_E8956689843_
                             (lambda ()
                               (if (eq? (gx#stx-e _e8956589597_) '#t)
                                   (if '#t
                                       (let* ((_current-ctx89783_
                                               (gx#current-expander-context))
                                              (_current-phi89785_
                                               (gx#current-export-expander-phi))
                                              (_phi-ctx89787_
                                               (gx#core-context-shift
                                                _current-ctx89783_
                                                _current-phi89785_))
                                              (_phi-bind89789_
                                               (hash->list
                                                (##unchecked-structure-ref
                                                 _phi-ctx89787_
                                                 '2
                                                 gx#expander-context::t
                                                 '#f))))
                                         (let _lp89792_ ((_bind-rest89794_
                                                          _phi-bind89789_)
                                                         (_set89795_ '()))
                                           (let* ((_bind-rest8979689806_
                                                   _bind-rest89794_)
                                                  (_else8979889814_
                                                   (lambda ()
                                                     (_K89562_
                                                      _rest89563_
                                                      (cons (##structure
                                                             gx#export-set::t
                                                             '#f
                                                             _current-phi89785_
                                                             _set89795_)
                                                            _r89564_))))
                                                  (_K8980089824_
                                                   (lambda (_bind-rest89817_
                                                            _bind89818_
                                                            _key89819_)
                                                     (if (or (##structure-direct-instance-of?
                                                              _bind89818_
                                                              'gx#import-binding::t)
                                                             (gx#private-feature-binding?
                                                              _bind89818_))
                                                         (_lp89792_
                                                          _bind-rest89817_
                                                          _set89795_)
                                                         (_lp89792_
                                                          _bind-rest89817_
                                                          (cons (_make-export__2__9278892791_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind89818_
                         _current-phi89785_
                         _current-ctx89783_)
                        _set89795_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _bind-rest8979689806_)
                                                 (let ((_hd8980189827_
                                                        (##car _bind-rest8979689806_))
                                                       (_tl8980289829_
                                                        (##cdr _bind-rest8979689806_)))
                                                   (if (##pair? _hd8980189827_)
                                                       (let ((_hd8980389832_
                                                              (##car _hd8980189827_))
                                                             (_tl8980489834_
                                                              (##cdr _hd8980189827_)))
                                                         (let* ((_key89837_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd8980389832_)
                        (_bind89839_ _tl8980489834_)
                        (_bind-rest89841_ _tl8980289829_))
                   (_K8980089824_ _bind-rest89841_ _bind89839_ _key89837_)))
               (_else8979889814_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_else8979889814_)))))
                                       (_E8956789779_))
                                   (_E8956789779_)))))
                       (_E8956689843_))))
                  (_export-imports89413_
                   (lambda (_src89437_ _r89438_)
                     (letrec* ((_current-ctx89440_
                                (gx#current-expander-context))
                               (_current-phi89441_
                                (gx#current-export-expander-phi))
                               (_import->export89442_
                                (lambda (_in89523_)
                                  (let* ((_in8952489532_ _in89523_)
                                         (_E8952689536_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _in8952489532_)))
                                         (_K8952789543_
                                          (lambda (_phi89539_
                                                   _key89540_
                                                   _out89541_)
                                            (##structure
                                             gx#module-export::t
                                             _current-ctx89440_
                                             _key89540_
                                             _phi89539_
                                             _key89540_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _in8952489532_
                                         'gx#module-import::t)
                                        (let* ((_e8952889546_
                                                (##unchecked-structure-ref
                                                 _in8952489532_
                                                 '1
                                                 gx#module-import::t
                                                 '#f))
                                               (_out89549_ _e8952889546_)
                                               (_e8952989551_
                                                (##unchecked-structure-ref
                                                 _in8952489532_
                                                 '2
                                                 gx#module-import::t
                                                 '#f))
                                               (_key89554_ _e8952989551_)
                                               (_e8953089556_
                                                (##unchecked-structure-ref
                                                 _in8952489532_
                                                 '3
                                                 gx#module-import::t
                                                 '#f))
                                               (_phi89559_ _e8953089556_))
                                          (_K8952789543_
                                           _phi89559_
                                           _key89554_
                                           _out89549_))
                                        (_E8952689536_)))))
                               (_fold-e89443_
                                (lambda (_in89445_ _r89446_)
                                  (let* ((_in8944789461_ _in89445_)
                                         (_else8945089469_
                                          (lambda () _r89446_)))
                                    (let ((_K8945689505_
                                           (lambda (_phi89501_
                                                    _key89502_
                                                    _out89503_)
                                             (if (and (fx= _phi89501_
                                                           _current-phi89441_)
                                                      (eq? _src89437_
                                                           (##unchecked-structure-ref
                                                            _out89503_
                                                            '1
                                                            gx#module-export::t
                                                            '#f)))
                                                 (cons (_import->export89442_
                                                        _in89445_)
                                                       _r89446_)
                                                 _r89446_)))
                                          (_K8945289480_
                                           (lambda (_imports89473_
                                                    _phi89474_
                                                    _ctx89475_)
                                             (if (and (fx= _phi89474_
                                                           _current-phi89441_)
                                                      (eq? _src89437_
                                                           _ctx89475_))
                                                 (foldl1 (lambda (_in89477_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r89478_)
                   (cons (_import->export89442_ _in89477_) _r89478_))
                 _r89446_
                 _imports89473_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _r89446_))))
                                      (let ((_try-match8944989498_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _in8944789461_
                                                    'gx#import-set::t)
                                                   (let* ((_e8945389483_
                                                           (##unchecked-structure-ref
                                                            _in8944789461_
                                                            '1
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e8945489488_
                                                           (##unchecked-structure-ref
                                                            _in8944789461_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e8945589493_
                                                           (##unchecked-structure-ref
                                                            _in8944789461_
                                                            '3
                                                            gx#import-set::t
                                                            '#f)))
                                                     (let ((_ctx89486_
                                                            _e8945389483_)
                                                           (_phi89491_
                                                            _e8945489488_)
                                                           (_imports89496_
                                                            _e8945589493_))
                                                       (_K8945289480_
                                                        _imports89496_
                                                        _phi89491_
                                                        _ctx89486_)))
                                                   (_else8945089469_)))))
                                        (if (##structure-direct-instance-of?
                                             _in8944789461_
                                             'gx#module-import::t)
                                            (let* ((_e8945789508_
                                                    (##unchecked-structure-ref
                                                     _in8944789461_
                                                     '1
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e8945889513_
                                                    (##unchecked-structure-ref
                                                     _in8944789461_
                                                     '2
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e8945989518_
                                                    (##unchecked-structure-ref
                                                     _in8944789461_
                                                     '3
                                                     gx#module-import::t
                                                     '#f)))
                                              (let ((_out89511_ _e8945789508_)
                                                    (_key89516_ _e8945889513_)
                                                    (_phi89521_ _e8945989518_))
                                                (_K8945689505_
                                                 _phi89521_
                                                 _key89516_
                                                 _out89511_)))
                                            (_try-match8944989498_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _src89437_
                              _current-phi89441_
                              (foldl1 _fold-e89443_
                                      '()
                                      (##unchecked-structure-ref
                                       _current-ctx89440_
                                       '8
                                       gx#module-context::t
                                       '#f)))
                             _r89438_))))
                  (_export!89414_
                   (lambda (_rbody89427_)
                     (letrec* ((_current-ctx89429_
                                (gx#current-expander-context))
                               (_fold-e89430_
                                (lambda (_out89434_ _r89435_)
                                  (if (##structure-direct-instance-of?
                                       _out89434_
                                       'gx#module-export::t)
                                      (cons _out89434_ _r89435_)
                                      (if (##structure-direct-instance-of?
                                           _out89434_
                                           'gx#export-set::t)
                                          (foldl1 cons
                                                  _r89435_
                                                  (##unchecked-structure-ref
                                                   _out89434_
                                                   '3
                                                   gx#export-set::t
                                                   '#f))
                                          _r89435_)))))
                       (let ((_body89432_ (reverse _rbody89427_)))
                         (##unchecked-structure-set!
                          _current-ctx89429_
                          (foldl1 _fold-e89430_
                                  (##unchecked-structure-ref
                                   _current-ctx89429_
                                   '9
                                   gx#module-context::t
                                   '#f)
                                  _body89432_)
                          '9
                          gx#module-context::t
                          '#f)
                         _body89432_))))
                  (_expanded-export?89415_
                   (lambda (_e89422_)
                     (let ((_$e89424_
                            (##structure-direct-instance-of?
                             _e89422_
                             'gx#module-export::t)))
                       (if _$e89424_
                           _$e89424_
                           (##structure-direct-instance-of?
                            _e89422_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _internal-expand?89409_)
              (let ((_rbody89420_
                     (gx#core-expand-import/export
                      _stx89408_
                      _expanded-export?89415_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _expand189412_)))
                (if _internal-expand?89409_
                    (reverse _rbody89420_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons '%#export (_export!89414_ _rbody89420_))
                     (gx#stx-source _stx89408_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _stx89408_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _stx89408_))))))
    (define gx#core-expand-export%__0
      (lambda (_stx89893_)
        (let ((_internal-expand?89895_ '#f))
          (gx#core-expand-export%__% _stx89893_ _internal-expand?89895_))))
    (define gx#core-expand-export%
      (lambda _g92859_
        (let ((_g92858_ (##length _g92859_)))
          (cond ((##fx= _g92858_ 1)
                 (apply (lambda (_stx89893_)
                          (gx#core-expand-export%__0 _stx89893_))
                        _g92859_))
                ((##fx= _g92858_ 2)
                 (apply (lambda (_stx89897_ _internal-expand?89898_)
                          (gx#core-expand-export%__%
                           _stx89897_
                           _internal-expand?89898_))
                        _g92859_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g92859_))))))
    (define gx#core-expand-export-source
      (lambda (_hd89405_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _hd89405_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_stx89375_)
        (let* ((_e8937689383_ _stx89375_)
               (_E8937889387_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8937689383_)))
               (_E8937789401_
                (lambda ()
                  (if (gx#stx-pair? _e8937689383_)
                      (let ((_e8937989391_ (gx#syntax-e _e8937689383_)))
                        (let ((_hd8938089394_ (##car _e8937989391_))
                              (_tl8938189396_ (##cdr _e8937989391_)))
                          (let ((_body89399_ _tl8938189396_))
                            (if (gx#identifier-list? _body89399_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _body89399_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _body89399_))
                                   (gx#stx-source _stx89375_)))
                                (_E8937889387_)))))
                      (_E8937889387_)))))
          (_E8937789401_))))
    (define gx#core-bind-feature!__%
      (lambda (_id89341_ _private?89342_ _phi89343_ _ctx89344_)
        (gx#core-bind-syntax!__%
         _id89341_
         ((if _private?89342_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _id89341_))
         _private?89342_
         _phi89343_
         _ctx89344_)))
    (define gx#core-bind-feature!__0
      (lambda (_id89349_)
        (let* ((_private?89351_ '#f)
               (_phi89353_ (gx#current-expander-phi))
               (_ctx89355_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id89349_
           _private?89351_
           _phi89353_
           _ctx89355_))))
    (define gx#core-bind-feature!__1
      (lambda (_id89357_ _private?89358_)
        (let* ((_phi89360_ (gx#current-expander-phi))
               (_ctx89362_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id89357_
           _private?89358_
           _phi89360_
           _ctx89362_))))
    (define gx#core-bind-feature!__2
      (lambda (_id89364_ _private?89365_ _phi89366_)
        (let ((_ctx89368_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id89364_
           _private?89365_
           _phi89366_
           _ctx89368_))))
    (define gx#core-bind-feature!
      (lambda _g92861_
        (let ((_g92860_ (##length _g92861_)))
          (cond ((##fx= _g92860_ 1)
                 (apply (lambda (_id89349_)
                          (gx#core-bind-feature!__0 _id89349_))
                        _g92861_))
                ((##fx= _g92860_ 2)
                 (apply (lambda (_id89357_ _private?89358_)
                          (gx#core-bind-feature!__1 _id89357_ _private?89358_))
                        _g92861_))
                ((##fx= _g92860_ 3)
                 (apply (lambda (_id89364_ _private?89365_ _phi89366_)
                          (gx#core-bind-feature!__2
                           _id89364_
                           _private?89365_
                           _phi89366_))
                        _g92861_))
                ((##fx= _g92860_ 4)
                 (apply (lambda (_id89370_
                                 _private?89371_
                                 _phi89372_
                                 _ctx89373_)
                          (gx#core-bind-feature!__%
                           _id89370_
                           _private?89371_
                           _phi89372_
                           _ctx89373_))
                        _g92861_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g92861_))))))))
