(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1710694203)
  (begin
    (declare (not safe))
    (define gx#__module-registry (make-hash-table))
    (define gx#__module-pkg-cache (make-hash-table))
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
      (lambda _$args91484_
        (apply make-instance gx#module-import::t _$args91484_)))
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
      (lambda _$args91481_
        (apply make-instance gx#module-export::t _$args91481_)))
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
      (lambda _$args91478_
        (apply make-instance gx#import-set::t _$args91478_)))
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
      (lambda _$args91475_
        (apply make-instance gx#export-set::t _$args91475_)))
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
      (lambda _$args91472_
        (apply make-instance gx#import-expander::t _$args91472_)))
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
      (lambda _$args91469_
        (apply make-instance gx#export-expander::t _$args91469_)))
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
      (lambda _$args91466_
        (apply make-instance gx#import-export-expander::t _$args91466_)))
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
      (lambda (_path91463_ _fun91464_)
        (call-with-input-file
         (cons 'path: (cons _path91463_ gx#source-file-settings))
         _fun91464_)))
    (define gx#module-context:::init!
      (lambda (_self91457_ _id91458_ _super91459_ _ns91460_ _path91461_)
        (if (##fx< '11 (##structure-length _self91457_))
            (begin
              (##unchecked-structure-set!
               _self91457_
               _id91458_
               '1
               (##structure-type _self91457_)
               '#f)
              (##unchecked-structure-set!
               _self91457_
               (make-hash-table-eq)
               '2
               (##structure-type _self91457_)
               '#f)
              (##unchecked-structure-set!
               _self91457_
               _super91459_
               '3
               (##structure-type _self91457_)
               '#f)
              (##unchecked-structure-set!
               _self91457_
               '#f
               '4
               (##structure-type _self91457_)
               '#f)
              (##unchecked-structure-set!
               _self91457_
               '#f
               '5
               (##structure-type _self91457_)
               '#f)
              (##unchecked-structure-set!
               _self91457_
               _ns91460_
               '6
               (##structure-type _self91457_)
               '#f)
              (##unchecked-structure-set!
               _self91457_
               _path91461_
               '7
               (##structure-type _self91457_)
               '#f)
              (##unchecked-structure-set!
               _self91457_
               '()
               '8
               (##structure-type _self91457_)
               '#f)
              (##unchecked-structure-set!
               _self91457_
               '()
               '9
               (##structure-type _self91457_)
               '#f)
              (##unchecked-structure-set!
               _self91457_
               '#f
               '10
               (##structure-type _self91457_)
               '#f)
              (##unchecked-structure-set!
               _self91457_
               '#f
               '11
               (##structure-type _self91457_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self91457_
                   '11
                   (##vector-length _self91457_)))))
    (bind-method!__%
     gx#module-context::t
     ':init!
     gx#module-context:::init!
     '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_self91301_ _ctx91302_ _root91303_)
        (let ((_super91311_
               (let ((_$e91305_ _root91303_))
                 (if _$e91305_
                     _$e91305_
                     (let ((_$e91308_ (gx#core-context-root__0)))
                       (if _$e91308_
                           _$e91308_
                           (let ((__obj91526
                                  (##structure gx#root-context::t '#f '#f)))
                             (let ((__constructor91527
                                    (direct-method-ref
                                     gx#root-context::t
                                     __obj91526
                                     ':init!)))
                               (if __constructor91527
                                   (__constructor91527 __obj91526)
                                   (error '"missing constructor method implementation"
                                          'class:
                                          gx#root-context::t
                                          'method:
                                          ':init!)))
                             __obj91526)))))))
          (if _ctx91302_
              (let ((_id91314_
                     (##structure-ref
                      _ctx91302_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_path91315_
                     (##structure-ref _ctx91302_ '7 gx#module-context::t '#f))
                    (_in91316_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _ctx91302_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_e91317_
                     (make-promise (lambda () (gx#eval-module _ctx91302_)))))
                (if (##fx< '8 (##structure-length _self91301_))
                    (begin
                      (##unchecked-structure-set!
                       _self91301_
                       _id91314_
                       '1
                       (##structure-type _self91301_)
                       '#f)
                      (##unchecked-structure-set!
                       _self91301_
                       (make-hash-table-eq 'size: (length _in91316_))
                       '2
                       (##structure-type _self91301_)
                       '#f)
                      (##unchecked-structure-set!
                       _self91301_
                       _super91311_
                       '3
                       (##structure-type _self91301_)
                       '#f)
                      (##unchecked-structure-set!
                       _self91301_
                       '#f
                       '4
                       (##structure-type _self91301_)
                       '#f)
                      (##unchecked-structure-set!
                       _self91301_
                       '#f
                       '5
                       (##structure-type _self91301_)
                       '#f)
                      (##unchecked-structure-set!
                       _self91301_
                       _path91315_
                       '6
                       (##structure-type _self91301_)
                       '#f)
                      (##unchecked-structure-set!
                       _self91301_
                       _in91316_
                       '7
                       (##structure-type _self91301_)
                       '#f)
                      (##unchecked-structure-set!
                       _self91301_
                       _e91317_
                       '8
                       (##structure-type _self91301_)
                       '#f))
                    (error '"struct-instance-init!: too many arguments for struct"
                           _self91301_
                           '8
                           (##vector-length _self91301_)))
                (for-each
                 (lambda (_g9131891320_)
                   (gx#core-bind-weak-import!__% _g9131891320_ _self91301_))
                 _in91316_))
              (if (##fx< '8 (##structure-length _self91301_))
                  (begin
                    (##unchecked-structure-set!
                     _self91301_
                     '#f
                     '1
                     (##structure-type _self91301_)
                     '#f)
                    (##unchecked-structure-set!
                     _self91301_
                     (make-hash-table-eq)
                     '2
                     (##structure-type _self91301_)
                     '#f)
                    (##unchecked-structure-set!
                     _self91301_
                     _super91311_
                     '3
                     (##structure-type _self91301_)
                     '#f)
                    (##unchecked-structure-set!
                     _self91301_
                     '#f
                     '4
                     (##structure-type _self91301_)
                     '#f)
                    (##unchecked-structure-set!
                     _self91301_
                     '#f
                     '5
                     (##structure-type _self91301_)
                     '#f)
                    (##unchecked-structure-set!
                     _self91301_
                     '#f
                     '6
                     (##structure-type _self91301_)
                     '#f)
                    (##unchecked-structure-set!
                     _self91301_
                     '()
                     '7
                     (##structure-type _self91301_)
                     '#f)
                    (##unchecked-structure-set!
                     _self91301_
                     '#f
                     '8
                     (##structure-type _self91301_)
                     '#f))
                  (error '"struct-instance-init!: too many arguments for struct"
                         _self91301_
                         '8
                         (##vector-length _self91301_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_self91326_ _ctx91327_)
        (let ((_root91329_ '#f))
          (gx#prelude-context:::init!__% _self91326_ _ctx91327_ _root91329_))))
    (define gx#prelude-context:::init!
      (lambda _g91533_
        (let ((_g91532_ (##length _g91533_)))
          (cond ((##fx= _g91532_ 2)
                 (apply (lambda (_self91326_ _ctx91327_)
                          (gx#prelude-context:::init!__0
                           _self91326_
                           _ctx91327_))
                        _g91533_))
                ((##fx= _g91532_ 3)
                 (apply (lambda (_self91331_ _ctx91332_ _root91333_)
                          (gx#prelude-context:::init!__%
                           _self91331_
                           _ctx91332_
                           _root91333_))
                        _g91533_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g91533_))))))
    (bind-method!__%
     gx#prelude-context::t
     ':init!
     gx#prelude-context:::init!
     '#f)
    (define gx#import-export-expander-init!
      (lambda (_self91175_ _e91176_)
        (if (##fx< '3 (##structure-length _self91175_))
            (begin
              (##unchecked-structure-set!
               _self91175_
               _e91176_
               '1
               (##structure-type _self91175_)
               '#f)
              (##unchecked-structure-set!
               _self91175_
               (gx#current-expander-context)
               '2
               (##structure-type _self91175_)
               '#f)
              (##unchecked-structure-set!
               _self91175_
               (fx- (gx#current-expander-phi) '1)
               '3
               (##structure-type _self91175_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self91175_
                   '3
                   (##vector-length _self91175_)))))
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
      (lambda (_g9080190804_ _g9080290806_)
        (gx#core-apply-user-expander__%
         _g9080190804_
         _g9080290806_
         'apply-import-expander)))
    (bind-method!__%
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_g9067290675_ _g9067390677_)
        (gx#core-apply-user-expander__%
         _g9067290675_
         _g9067390677_
         'apply-export-expander)))
    (bind-method!__%
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_ctx90543_)
        (let* ((_path90545_
                (##structure-ref _ctx90543_ '7 gx#module-context::t '#f))
               (_path90547_
                (if (pair? _path90545_) (last _path90545_) _path90545_)))
          (if (string? _path90547_) _path90547_ '#f))))
    (define gx#import-module__%
      (lambda (_path90519_ _reload?90520_ _eval?90521_)
        (let ((_ctx90523_
               ((gx#current-expander-module-import)
                _path90519_
                _reload?90520_)))
          (if (and _ctx90523_ _eval?90521_)
              (gx#eval-module _ctx90523_)
              '#!void)
          _ctx90523_)))
    (define gx#import-module__0
      (lambda (_path90528_)
        (let* ((_reload?90530_ '#f) (_eval?90532_ '#f))
          (gx#import-module__% _path90528_ _reload?90530_ _eval?90532_))))
    (define gx#import-module__1
      (lambda (_path90534_ _reload?90535_)
        (let ((_eval?90537_ '#f))
          (gx#import-module__% _path90534_ _reload?90535_ _eval?90537_))))
    (define gx#import-module
      (lambda _g91535_
        (let ((_g91534_ (##length _g91535_)))
          (cond ((##fx= _g91534_ 1)
                 (apply (lambda (_path90528_)
                          (gx#import-module__0 _path90528_))
                        _g91535_))
                ((##fx= _g91534_ 2)
                 (apply (lambda (_path90534_ _reload?90535_)
                          (gx#import-module__1 _path90534_ _reload?90535_))
                        _g91535_))
                ((##fx= _g91534_ 3)
                 (apply (lambda (_path90539_ _reload?90540_ _eval?90541_)
                          (gx#import-module__%
                           _path90539_
                           _reload?90540_
                           _eval?90541_))
                        _g91535_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g91535_))))))
    (define gx#eval-module
      (lambda (_mod90516_) ((gx#current-expander-module-eval) _mod90516_)))
    (define gx#core-eval-module
      (lambda (_obj90501_)
        (letrec ((_force-e90503_
                  (lambda (_getf90512_ _e90513_)
                    (call-with-parameters
                     (lambda () (force (_getf90512_ _e90513_)))
                     gx#current-expander-context
                     _e90513_
                     gx#current-expander-phi
                     '0))))
          (let _recur90505_ ((_e90507_ _obj90501_))
            (if (##structure-instance-of? _e90507_ 'gx#module-context::t)
                (begin
                  (let ((_$e90509_ (gx#core-context-prelude__% _e90507_)))
                    (if _$e90509_ (_recur90505_ _$e90509_) '#!void))
                  (_force-e90503_ gx#module-context-e _e90507_))
                (if (##structure-instance-of? _e90507_ 'gx#prelude-context::t)
                    (_force-e90503_ gx#prelude-context-e _e90507_)
                    (if (gx#stx-string? _e90507_)
                        (_recur90505_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _e90507_)))
                        (if (gx#core-library-module-path? _e90507_)
                            (_recur90505_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _e90507_)))
                            (error '"Cannot eval module" _obj90501_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_ctx90484_)
        (let _lp90486_ ((_e90488_ _ctx90484_))
          (if (or (##structure-instance-of? _e90488_ 'gx#module-context::t)
                  (##structure-instance-of? _e90488_ 'gx#local-context::t))
              (_lp90486_
               (##unchecked-structure-ref _e90488_ '3 gx#phi-context::t '#f))
              (if (##structure-instance-of? _e90488_ 'gx#prelude-context::t)
                  _e90488_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_ctx90497_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _ctx90497_))))
    (define gx#core-context-prelude
      (lambda _g91537_
        (let ((_g91536_ (##length _g91537_)))
          (cond ((##fx= _g91536_ 0)
                 (apply (lambda () (gx#core-context-prelude__0)) _g91537_))
                ((##fx= _g91536_ 1)
                 (apply (lambda (_ctx90499_)
                          (gx#core-context-prelude__% _ctx90499_))
                        _g91537_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g91537_))))))
    (define gx#core-module->prelude-context
      (lambda (_ctx90476_)
        (let ((_$e90478_ (hash-get gx#__module-registry _ctx90476_)))
          (if _$e90478_
              _$e90478_
              (let ((_pre90481_
                     (let ((__obj91528
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
                       (gx#prelude-context:::init! __obj91528 _ctx90476_)
                       __obj91528)))
                (hash-put! gx#__module-registry _ctx90476_ _pre90481_)
                _pre90481_)))))
    (define gx#core-import-module__%
      (lambda (_rpath90357_ _reload?90358_)
        (letrec ((_import-source90360_
                  (lambda (_path90445_)
                    (if (member _path90445_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _path90445_)
                        '#!void)
                    (call-with-parameters
                     (lambda ()
                       (let ((_g91538_ (gx#core-read-module _path90445_)))
                         (begin
                           (let ((_g91539_
                                  (if (##values? _g91538_)
                                      (##vector-length _g91538_)
                                      1)))
                             (if (not (##fx= _g91539_ 4))
                                 (error "Context expects 4 values" _g91539_)))
                           (let ((_pre90448_ (##vector-ref _g91538_ 0))
                                 (_id90449_ (##vector-ref _g91538_ 1))
                                 (_ns90450_ (##vector-ref _g91538_ 2))
                                 (_body90451_ (##vector-ref _g91538_ 3)))
                             (let* ((_prelude90456_
                                     (if (##structure-instance-of?
                                          _pre90448_
                                          'gx#prelude-context::t)
                                         _pre90448_
                                         (if (##structure-instance-of?
                                              _pre90448_
                                              'gx#module-context::t)
                                             (gx#core-module->prelude-context
                                              _pre90448_)
                                             (if (string? _pre90448_)
                                                 (gx#core-module->prelude-context
                                                  (gx#core-import-module__0
                                                   _pre90448_))
                                                 (if (not _pre90448_)
                                                     (let ((_$e90453_
                                                            (gx#current-expander-module-prelude)))
                                                       (if _$e90453_
                                                           _$e90453_
                                                           (let ((__obj91529
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
                     (gx#prelude-context:::init! __obj91529 '#f)
                     __obj91529)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error '"Cannot import module; unknown prelude"
                                                            _rpath90357_
                                                            _pre90448_))))))
                                    (_ctx90458_
                                     (let ((__obj91530
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
                                        __obj91530
                                        _id90449_
                                        _prelude90456_
                                        _ns90450_
                                        _path90445_)
                                       __obj91530))
                                    (_body90460_
                                     (gx#core-expand-module-begin
                                      _body90451_
                                      _ctx90458_))
                                    (_body90462_
                                     (gx#core-quote-syntax__%
                                      (gx#core-cons '%#begin _body90460_)
                                      _path90445_
                                      _ctx90458_
                                      '())))
                               (##unchecked-structure-set!
                                _ctx90458_
                                (make-promise
                                 (lambda () (gx#eval-syntax* _body90462_)))
                                '10
                                gx#module-context::t
                                '#f)
                               (##unchecked-structure-set!
                                _ctx90458_
                                _body90462_
                                '11
                                gx#module-context::t
                                '#f)
                               (hash-put!
                                gx#__module-registry
                                _path90445_
                                _ctx90458_)
                               (hash-put!
                                gx#__module-registry
                                _id90449_
                                _ctx90458_)
                               _ctx90458_)))))
                     gx#current-expander-context
                     (gx#core-context-root__0)
                     gx#current-expander-marks
                     '()
                     gx#current-expander-phi
                     '0
                     gx#current-expander-path
                     (cons _path90445_ (gx#current-expander-path))
                     gx#current-import-expander-phi
                     '#f
                     gx#current-export-expander-phi
                     '#f)))
                 (_import-submodule90361_
                  (lambda (_rpath90373_)
                    (let* ((_rpath9037490381_ _rpath90373_)
                           (_E9037690385_
                            (lambda ()
                              (error '"No clause matching" _rpath9037490381_)))
                           (_K9037790433_
                            (lambda (_refs90388_ _origin90389_)
                              (let ((_ctx90391_
                                     (if _origin90389_
                                         (gx#core-import-module__%
                                          _origin90389_
                                          _reload?90358_)
                                         (gx#current-expander-context))))
                                (let _lp90393_ ((_rest90395_ _refs90388_)
                                                (_ctx90396_ _ctx90391_))
                                  (let* ((_rest9039790405_ _rest90395_)
                                         (_else9039990413_
                                          (lambda () _ctx90396_))
                                         (_K9040190421_
                                          (lambda (_rest90416_ _id90417_)
                                            (let ((_bind90419_
                                                   (gx#resolve-identifier__%
                                                    _id90417_
                                                    '0
                                                    _ctx90396_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _bind90419_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _bind90419_
                                                         '4
                                                         gx#syntax-binding::t
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_lp90393_
                                                   _rest90416_
                                                   (##unchecked-structure-ref
                                                    _bind90419_
                                                    '4
                                                    gx#syntax-binding::t
                                                    '#f))
                                                  (error '"Cannot import submodule; not bound as a module"
                                                         _rpath90373_
                                                         _id90417_
                                                         _bind90419_))))))
                                    (if (##pair? _rest9039790405_)
                                        (let ((_hd9040290424_
                                               (##car _rest9039790405_))
                                              (_tl9040390426_
                                               (##cdr _rest9039790405_)))
                                          (let* ((_id90429_ _hd9040290424_)
                                                 (_rest90431_ _tl9040390426_))
                                            (_K9040190421_
                                             _rest90431_
                                             _id90429_)))
                                        (_else9039990413_))))))))
                      (if (##pair? _rpath9037490381_)
                          (let ((_hd9037890436_ (##car _rpath9037490381_))
                                (_tl9037990438_ (##cdr _rpath9037490381_)))
                            (let* ((_origin90441_ _hd9037890436_)
                                   (_refs90443_ _tl9037990438_))
                              (_K9037790433_ _refs90443_ _origin90441_)))
                          (_E9037690385_))))))
          (let ((_$e90363_
                 (if (not _reload?90358_)
                     (hash-get gx#__module-registry _rpath90357_)
                     '#f)))
            (if _$e90363_
                (values _$e90363_)
                (if (list? _rpath90357_)
                    (_import-submodule90361_ _rpath90357_)
                    (if (gx#core-library-module-path? _rpath90357_)
                        (let ((_ctx90366_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _rpath90357_)
                                _reload?90358_)))
                          (hash-put!
                           gx#__module-registry
                           _rpath90357_
                           _ctx90366_)
                          _ctx90366_)
                        (let* ((_npath90368_ (path-normalize _rpath90357_))
                               (_$e90370_
                                (if (not _reload?90358_)
                                    (hash-get
                                     gx#__module-registry
                                     _npath90368_)
                                    '#f)))
                          (if _$e90370_
                              _$e90370_
                              (_import-source90360_ _npath90368_))))))))))
    (define gx#core-import-module__0
      (lambda (_rpath90469_)
        (let ((_reload?90471_ '#f))
          (gx#core-import-module__% _rpath90469_ _reload?90471_))))
    (define gx#core-import-module
      (lambda _g91541_
        (let ((_g91540_ (##length _g91541_)))
          (cond ((##fx= _g91540_ 1)
                 (apply (lambda (_rpath90469_)
                          (gx#core-import-module__0 _rpath90469_))
                        _g91541_))
                ((##fx= _g91540_ 2)
                 (apply (lambda (_rpath90473_ _reload?90474_)
                          (gx#core-import-module__%
                           _rpath90473_
                           _reload?90474_))
                        _g91541_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g91541_))))))
    (define gx#core-read-module
      (lambda (_path90346_)
        (with-catch
         (lambda (_exn90348_)
           (if (and (datum-parsing-exception? _exn90348_)
                    (eq? (datum-parsing-exception-filepos _exn90348_) '0))
               (gx#core-read-module/lang _path90346_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _path90346_
                (call-with-parameters
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_g9035090352_)
                      (display-exception _exn90348_ _g9035090352_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _path90346_)))))
    (define gx#core-read-module/sexp
      (lambda (_path90209_)
        (let _lp90211_ ((_body90213_ (read-syntax-from-file _path90209_))
                        (_pre90214_ '#f)
                        (_ns90215_ '#f)
                        (_pkg90216_ '#f))
          (let* ((_e9021790241_ _body90213_)
                 (_E9023390263_
                  (lambda ()
                    (let ((_g91542_
                           (if _pkg90216_
                               (values _pre90214_ _ns90215_ _pkg90216_)
                               (gx#core-read-module-package
                                _path90209_
                                _pre90214_
                                _ns90215_))))
                      (begin
                        (let ((_g91543_
                               (if (##values? _g91542_)
                                   (##vector-length _g91542_)
                                   1)))
                          (if (not (##fx= _g91543_ 3))
                              (error "Context expects 3 values" _g91543_)))
                        (let ((_pre90245_ (##vector-ref _g91542_ 0))
                              (_ns90246_ (##vector-ref _g91542_ 1))
                              (_pkg90247_ (##vector-ref _g91542_ 2)))
                          (let* ((_prelude90249_
                                  (if (gx#core-bound-module-prelude?
                                       _pre90245_)
                                      (gx#syntax-local-e__0 _pre90245_)
                                      (if (gx#core-library-module-path?
                                           _pre90245_)
                                          (gx#core-resolve-library-module-path
                                           _pre90245_)
                                          (if (gx#stx-string? _pre90245_)
                                              (gx#core-resolve-module-path__%
                                               _pre90245_
                                               _path90209_)
                                              (gx#stx-e _pre90245_)))))
                                 (_path-id90251_
                                  (gx#core-module-path->namespace _path90209_))
                                 (_pkg-id90253_
                                  (if _pkg90247_
                                      (string-append
                                       _pkg90247_
                                       '"/"
                                       _path-id90251_)
                                      _path-id90251_))
                                 (_module-id90255_
                                  (string->symbol _pkg-id90253_))
                                 (_module-ns90260_
                                  (if (eq? _ns90246_ '#!void)
                                      '#f
                                      (let ((_$e90257_ _ns90246_))
                                        (if _$e90257_
                                            _$e90257_
                                            _pkg-id90253_)))))
                            (values _prelude90249_
                                    _module-id90255_
                                    _module-ns90260_
                                    _body90213_)))))))
                 (_E9022690292_
                  (lambda ()
                    (if (gx#stx-pair? _e9021790241_)
                        (let ((_e9023490267_ (gx#syntax-e _e9021790241_)))
                          (let ((_hd9023590270_ (##car _e9023490267_))
                                (_tl9023690272_ (##cdr _e9023490267_)))
                            (if (eq? (gx#stx-e _hd9023590270_) 'package:)
                                (if (gx#stx-pair? _tl9023690272_)
                                    (let ((_e9023790275_
                                           (gx#syntax-e _tl9023690272_)))
                                      (let ((_hd9023890278_
                                             (##car _e9023790275_))
                                            (_tl9023990280_
                                             (##cdr _e9023790275_)))
                                        (let* ((_pkg90283_ _hd9023890278_)
                                               (_rest90285_ _tl9023990280_))
                                          (if '#t
                                              (let ((_pkg90290_
                                                     (if (gx#identifier?
                                                          _pkg90283_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _pkg90283_))
                                                         (if (or (gx#stx-string?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _pkg90283_)
                         (gx#stx-false? _pkg90283_))
                     (gx#stx-e _pkg90283_)
                     (gx#raise-syntax-error
                      'import
                      '"Bad syntax; Illegal package name"
                      _pkg90283_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp90211_
                                                 _rest90285_
                                                 _pre90214_
                                                 _ns90215_
                                                 _pkg90290_))
                                              (_E9023390263_)))))
                                    (_E9023390263_))
                                (_E9023390263_))))
                        (_E9023390263_))))
                 (_E9021990318_
                  (lambda ()
                    (if (gx#stx-pair? _e9021790241_)
                        (let ((_e9022790296_ (gx#syntax-e _e9021790241_)))
                          (let ((_hd9022890299_ (##car _e9022790296_))
                                (_tl9022990301_ (##cdr _e9022790296_)))
                            (if (eq? (gx#stx-e _hd9022890299_) 'namespace:)
                                (if (gx#stx-pair? _tl9022990301_)
                                    (let ((_e9023090304_
                                           (gx#syntax-e _tl9022990301_)))
                                      (let ((_hd9023190307_
                                             (##car _e9023090304_))
                                            (_tl9023290309_
                                             (##cdr _e9023090304_)))
                                        (let* ((_ns90312_ _hd9023190307_)
                                               (_rest90314_ _tl9023290309_))
                                          (if '#t
                                              (let ((_ns90316_
                                                     (if (gx#identifier?
                                                          _ns90312_)
                                                         (symbol->string
                                                          (gx#stx-e _ns90312_))
                                                         (if (gx#stx-string?
                                                              _ns90312_)
                                                             (gx#stx-e
                                                              _ns90312_)
                                                             (if (gx#stx-false?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _ns90312_)
                         '#!void
                         (gx#raise-syntax-error
                          'import
                          '"Bad syntax; illegal namespace"
                          _ns90312_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp90211_
                                                 _rest90314_
                                                 _pre90214_
                                                 _ns90316_
                                                 _pkg90216_))
                                              (_E9022690292_)))))
                                    (_E9022690292_))
                                (_E9022690292_))))
                        (_E9022690292_))))
                 (_E9021890342_
                  (lambda ()
                    (if (gx#stx-pair? _e9021790241_)
                        (let ((_e9022090322_ (gx#syntax-e _e9021790241_)))
                          (let ((_hd9022190325_ (##car _e9022090322_))
                                (_tl9022290327_ (##cdr _e9022090322_)))
                            (if (eq? (gx#stx-e _hd9022190325_) 'prelude:)
                                (if (gx#stx-pair? _tl9022290327_)
                                    (let ((_e9022390330_
                                           (gx#syntax-e _tl9022290327_)))
                                      (let ((_hd9022490333_
                                             (##car _e9022390330_))
                                            (_tl9022590335_
                                             (##cdr _e9022390330_)))
                                        (let* ((_prelude90338_ _hd9022490333_)
                                               (_rest90340_ _tl9022590335_))
                                          (if '#t
                                              (_lp90211_
                                               _rest90340_
                                               _prelude90338_
                                               _ns90215_
                                               _pkg90216_)
                                              (_E9021990318_)))))
                                    (_E9021990318_))
                                (_E9021990318_))))
                        (_E9021990318_)))))
            (_E9021890342_)))))
    (define gx#core-read-module/lang
      (lambda (_path90036_)
        (letrec ((_default-read-module-body90038_
                  (lambda (_inp90201_)
                    (let _lp90203_ ((_body90205_ '()))
                      (let ((_next90207_ (read-syntax _inp90201_)))
                        (if (eof-object? _next90207_)
                            (reverse _body90205_)
                            (_lp90203_ (cons _next90207_ _body90205_)))))))
                 (_read-body90039_
                  (lambda (_inp90120_
                           _pre90121_
                           _ns90122_
                           _pkg90123_
                           _args90124_)
                    (let ((_g91544_
                           (if _pkg90123_
                               (values _pre90121_ _ns90122_ _pkg90123_)
                               (gx#core-read-module-package
                                _path90036_
                                _pre90121_
                                _ns90122_))))
                      (begin
                        (let ((_g91545_
                               (if (##values? _g91544_)
                                   (##vector-length _g91544_)
                                   1)))
                          (if (not (##fx= _g91545_ 3))
                              (error "Context expects 3 values" _g91545_)))
                        (let ((_pre90126_ (##vector-ref _g91544_ 0))
                              (_ns90127_ (##vector-ref _g91544_ 1))
                              (_pkg90128_ (##vector-ref _g91544_ 2)))
                          (let* ((_prelude90130_
                                  (gx#import-module__0 _pre90126_))
                                 (_read-module-body90184_
                                  (let ((_$e90176_
                                         (find (lambda (_e9013190133_)
                                                 (let* ((_g9013590145_
                                                         _e9013190133_)
                                                        (_else9013790153_
                                                         (lambda () '#f))
                                                        (_K9013990157_
                                                         (lambda () '#t)))
                                                   (if (##structure-direct-instance-of?
                                                        _g9013590145_
                                                        'gx#module-export::t)
                                                       (let* ((_e9014090160_
                                                               (##unchecked-structure-ref
                                                                _g9013590145_
                                                                '1
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e9014190163_
                                                               (##unchecked-structure-ref
                                                                _g9013590145_
                                                                '2
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e9014290166_
                                                               (##unchecked-structure-ref
                                                                _g9013590145_
                                                                '3
                                                                gx#module-export::t
                                                                '#f)))
                                                         (if (##eq? _e9014290166_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)
                     (let ((_e9014390169_
                            (##unchecked-structure-ref
                             _g9013590145_
                             '4
                             gx#module-export::t
                             '#f)))
                       (if ((lambda (_g9017190173_)
                              (eq? _g9017190173_ 'read-module-body))
                            _e9014390169_)
                           (_K9013990157_)
                           (_else9013790153_)))
                     (_else9013790153_)))
               (_else9013790153_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (##unchecked-structure-ref
                                                _prelude90130_
                                                '9
                                                gx#module-context::t
                                                '#f))))
                                    (if _$e90176_
                                        ((lambda (_xport90179_)
                                           (let ((_proc90182_
                                                  (with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _xport90179_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _proc90182_)
                                                 _proc90182_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _path90036_
                                                  _pre90126_
                                                  _proc90182_))))
                                         _$e90176_)
                                        _default-read-module-body90038_)))
                                 (_path-id90186_
                                  (gx#core-module-path->namespace _path90036_))
                                 (_pkg-id90188_
                                  (if _pkg90128_
                                      (string-append
                                       _pkg90128_
                                       '"/"
                                       _path-id90186_)
                                      _path-id90186_))
                                 (_module-id90190_
                                  (string->symbol _pkg-id90188_))
                                 (_module-ns90195_
                                  (let ((_$e90192_ _ns90127_))
                                    (if _$e90192_ _$e90192_ _pkg-id90188_)))
                                 (_body90198_
                                  (call-with-parameters
                                   (lambda ()
                                     (_read-module-body90184_ _inp90120_))
                                   gx#current-module-reader-path
                                   _path90036_
                                   gx#current-module-reader-args
                                   _args90124_)))
                            (values _prelude90130_
                                    _module-id90190_
                                    _module-ns90195_
                                    _body90198_)))))))
                 (_string-e90040_
                  (lambda (_obj90117_ _what90118_)
                    (if (string? _obj90117_)
                        _obj90117_
                        (if (symbol? _obj90117_)
                            (symbol->string _obj90117_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _what90118_)
                             _path90036_
                             _obj90117_)))))
                 (_read-lang-args90041_
                  (lambda (_inp90072_ _args90073_)
                    (let* ((_args9007490082_ _args90073_)
                           (_else9007690090_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _path90036_)))
                           (_K9007890105_
                            (lambda (_args90093_ _prelude90094_)
                              (let* ((_pkg90096_
                                      (pgetq__0 'package: _args90093_))
                                     (_pkg90098_
                                      (if _pkg90096_
                                          (_string-e90040_
                                           _pkg90096_
                                           '"package")
                                          '#f))
                                     (_ns90100_
                                      (pgetq__0 'namespace: _args90093_))
                                     (_ns90102_
                                      (if _ns90100_
                                          (_string-e90040_
                                           _ns90100_
                                           '"namespace")
                                          '#f)))
                                (_read-body90039_
                                 _inp90072_
                                 _prelude90094_
                                 _ns90102_
                                 _pkg90098_
                                 _args90093_)))))
                      (if (##pair? _args9007490082_)
                          (let ((_hd9007990108_ (##car _args9007490082_))
                                (_tl9008090110_ (##cdr _args9007490082_)))
                            (let* ((_prelude90113_ _hd9007990108_)
                                   (_args90115_ _tl9008090110_))
                              (_K9007890105_ _args90115_ _prelude90113_)))
                          (_else9007690090_)))))
                 (_read-lang90042_
                  (lambda (_inp90047_)
                    (let* ((_head90049_ (read-line _inp90047_))
                           (_$e90051_ (string-index__0 _head90049_ '#\space)))
                      (if _$e90051_
                          ((lambda (_ix90054_)
                             (let ((_lang90056_
                                    (substring _head90049_ '0 _ix90054_)))
                               (if (equal? _lang90056_ '"#lang")
                                   (let* ((_rest90058_
                                           (substring
                                            _head90049_
                                            (fx+ _ix90054_ '1)
                                            (string-length _head90049_)))
                                          (_args90069_
                                           (with-catch
                                            (lambda (_g9005990061_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _path90036_
                                               _g9005990061_))
                                            (lambda ()
                                              (call-with-input-string
                                               _rest90058_
                                               (lambda (_g9006490066_)
                                                 (read-all
                                                  _g9006490066_
                                                  read)))))))
                                     (_read-lang-args90041_
                                      _inp90047_
                                      _args90069_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _path90036_))))
                           _$e90051_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _path90036_)))))
                 (_read-e90043_
                  (lambda (_inp90045_)
                    (if (eq? (peek-char _inp90045_) '#\#)
                        (_read-lang90042_ _inp90045_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _path90036_)))))
          (gx#call-with-input-source-file _path90036_ _read-e90043_))))
    (define gx#core-read-module-package
      (lambda (_path89990_ _pre89991_ _ns89992_)
        (letrec ((_string-e89994_
                  (lambda (_e90034_)
                    (if (symbol? _e90034_)
                        (symbol->string _e90034_)
                        (if (string? _e90034_)
                            _e90034_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _e90034_))))))
          (let _lp89996_ ((_dir89998_ (path-directory _path89990_))
                          (_pkg-path89999_ '()))
            (let ((_gerbil.pkg90001_ (path-expand '"gerbil.pkg" _dir89998_)))
              (if (file-exists? _gerbil.pkg90001_)
                  (let ((_plist90003_
                         (gx#core-library-package-plist__% _dir89998_ '#t)))
                    (if (null? _plist90003_)
                        (let ((_pkg90005_
                               (if (not (null? _pkg-path89999_))
                                   (string-join _pkg-path89999_ '"/")
                                   '#f)))
                          (values _pre89991_ _ns89992_ _pkg90005_))
                        (if (list? _plist90003_)
                            (let* ((_root90007_
                                    (pgetq__0 'package: _plist90003_))
                                   (_pkg90011_
                                    (let ((_pkg-path90009_
                                           (if _root90007_
                                               (cons (_string-e89994_
                                                      _root90007_)
                                                     _pkg-path89999_)
                                               _pkg-path89999_)))
                                      (if (not (null? _pkg-path90009_))
                                          (string-join _pkg-path90009_ '"/")
                                          '#f)))
                                   (_ns90018_
                                    (let ((_ns90016_
                                           (let ((_$e90013_ _ns89992_))
                                             (if _$e90013_
                                                 _$e90013_
                                                 (pgetq__0
                                                  'namespace:
                                                  _plist90003_)))))
                                      (if _ns90016_
                                          (_string-e89994_ _ns90016_)
                                          '#f)))
                                   (_pre90023_
                                    (let ((_$e90020_ _pre89991_))
                                      (if _$e90020_
                                          _$e90020_
                                          (pgetq__0 'prelude: _plist90003_)))))
                              (values _pre90023_ _ns90018_ _pkg90011_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _plist90003_))))
                  (let ((_dir*90026_
                         (path-strip-trailing-directory-separator _dir89998_)))
                    (if (or (string-empty? _dir*90026_)
                            (equal? _dir89998_ _dir*90026_))
                        (values _pre89991_ _ns89992_ '#f)
                        (let ((_xpath90031_ (path-strip-directory _dir*90026_))
                              (_xdir90032_ (path-directory _dir*90026_)))
                          (_lp89996_
                           _xdir90032_
                           (cons _xpath90031_ _pkg-path89999_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_path89988_)
        (path-strip-extension (path-strip-directory _path89988_))))
    (define gx#core-module-path->id
      (lambda (_path89986_)
        (string->symbol (gx#core-module-path->namespace _path89986_))))
    (define gx#core-resolve-module-path__%
      (lambda (_stx-path89965_ _rel89966_)
        (let* ((_path89968_ (gx#stx-e _stx-path89965_))
               (_path89970_
                (if (string-empty? (path-extension _path89968_))
                    (string-append _path89968_ '".ss")
                    _path89968_)))
          (gx#core-resolve-path__%
           _path89970_
           (let ((_$e89973_ (gx#stx-source _stx-path89965_)))
             (if _$e89973_ _$e89973_ _rel89966_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_stx-path89979_)
        (let ((_rel89981_ '#f))
          (gx#core-resolve-module-path__% _stx-path89979_ _rel89981_))))
    (define gx#core-resolve-module-path
      (lambda _g91547_
        (let ((_g91546_ (##length _g91547_)))
          (cond ((##fx= _g91546_ 1)
                 (apply (lambda (_stx-path89979_)
                          (gx#core-resolve-module-path__0 _stx-path89979_))
                        _g91547_))
                ((##fx= _g91546_ 2)
                 (apply (lambda (_stx-path89983_ _rel89984_)
                          (gx#core-resolve-module-path__%
                           _stx-path89983_
                           _rel89984_))
                        _g91547_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g91547_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_libpath89851_)
        (let* ((_spath89853_ (symbol->string (gx#stx-e _libpath89851_)))
               (_spath89855_
                (substring _spath89853_ '1 (string-length _spath89853_)))
               (_ext89857_ (path-extension _spath89855_))
               (_ssi89859_
                (if (string-empty? _ext89857_)
                    (string-append _spath89855_ '".ssi")
                    (string-append
                     (path-strip-extension _spath89855_)
                     '".ssi")))
               (_srcs89863_
                (if (string-empty? _ext89857_)
                    (map (lambda (_ext89861_)
                           (string-append _spath89855_ _ext89861_))
                         '(".ss" ".sld" ".scm"))
                    (cons _spath89855_ '()))))
          (let _lp89866_ ((_rest89868_ (load-path)))
            (let* ((_rest8986989878_ _rest89868_)
                   (_E8987289882_
                    (lambda ()
                      (error '"No clause matching" _rest8986989878_))))
              (let ((_K8987489952_
                     (lambda (_rest89893_ _dir89894_)
                       (letrec ((_resolve89896_
                                 (lambda (_ssi89908_ _srcs89909_)
                                   (let ((_compiled-path89911_
                                          (path-expand _ssi89908_ _dir89894_)))
                                     (if (file-exists? _compiled-path89911_)
                                         (path-normalize _compiled-path89911_)
                                         (let _lpr89913_ ((_rest-src89915_
                                                           _srcs89909_))
                                           (let* ((_rest-src8991689924_
                                                   _rest-src89915_)
                                                  (_else8991889932_
                                                   (lambda ()
                                                     (_lp89866_ _rest89893_)))
                                                  (_K8992089940_
                                                   (lambda (_rest-src89935_
                                                            _src89936_)
                                                     (let ((_src-path89938_
                                                            (path-expand
                                                             _src89936_
                                                             _dir89894_)))
                                                       (if (file-exists?
                                                            _src-path89938_)
                                                           (path-normalize
                                                            _src-path89938_)
                                                           (_lpr89913_
                                                            _rest-src89935_))))))
                                             (if (##pair? _rest-src8991689924_)
                                                 (let ((_hd8992189943_
                                                        (##car _rest-src8991689924_))
                                                       (_tl8992289945_
                                                        (##cdr _rest-src8991689924_)))
                                                   (let* ((_src89948_
                                                           _hd8992189943_)
                                                          (_rest-src89950_
                                                           _tl8992289945_))
                                                     (_K8992089940_
                                                      _rest-src89950_
                                                      _src89948_)))
                                                 (_else8991889932_)))))))))
                         (let ((_$e89898_
                                (gx#core-library-package-path-prefix
                                 _dir89894_)))
                           (if _$e89898_
                               ((lambda (_prefix89901_)
                                  (if (string-prefix?
                                       _prefix89901_
                                       _spath89855_)
                                      (let ((_ssi89905_
                                             (substring
                                              _ssi89859_
                                              (string-length _prefix89901_)
                                              (string-length _ssi89859_)))
                                            (_srcs89906_
                                             (map (lambda (_src89903_)
                                                    (substring
                                                     _src89903_
                                                     (string-length
                                                      _prefix89901_)
                                                     (string-length
                                                      _src89903_)))
                                                  _srcs89863_)))
                                        (_resolve89896_
                                         _ssi89905_
                                         _srcs89906_))
                                      (_lp89866_ _rest89893_)))
                                _$e89898_)
                               (_resolve89896_ _ssi89859_ _srcs89863_))))))
                    (_K8987389887_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"Cannot find library module"
                        _libpath89851_))))
                (let ((_try-match8987189890_
                       (lambda ()
                         (if (##null? _rest8986989878_)
                             (_K8987389887_)
                             (_E8987289882_)))))
                  (if (##pair? _rest8986989878_)
                      (let ((_tl8987689957_ (##cdr _rest8986989878_))
                            (_hd8987589955_ (##car _rest8986989878_)))
                        (let ((_dir89960_ _hd8987589955_)
                              (_rest89962_ _tl8987689957_))
                          (_K8987489952_ _rest89962_ _dir89960_)))
                      (_try-match8987189890_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_modpath89824_)
        (letrec ((_resolve89826_
                  (lambda (_path89843_ _base89844_)
                    (let ((_$e89846_ (string-rindex__0 _base89844_ '#\/)))
                      (if _$e89846_
                          ((lambda (_idx89849_)
                             (gx#core-resolve-library-module-path
                              (string->symbol
                               (string-append
                                '":"
                                (substring _base89844_ '0 _idx89849_)
                                '"/"
                                _path89843_))))
                           _$e89846_)
                          (gx#core-resolve-library-module-path
                           (string->symbol
                            (string-append '":" _path89843_))))))))
          (let ((_spath89828_ (symbol->string (gx#stx-e _modpath89824_)))
                (_mod89829_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _mod89829_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"Cannot resolve relative module path; not in module context"
                 _modpath89824_))
            (let ((_mpath89831_
                   (symbol->string
                    (##structure-ref
                     _mod89829_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _lp89833_ ((_spath89835_ _spath89828_)
                              (_mpath89836_ _mpath89831_))
                (if (string-prefix? '"../" _spath89835_)
                    (let ((_$e89838_ (string-rindex__0 _mpath89836_ '#\/)))
                      (if _$e89838_
                          ((lambda (_idx89841_)
                             (_lp89833_
                              (substring
                               _spath89835_
                               '3
                               (string-length _spath89835_))
                              (substring _mpath89836_ '0 _idx89841_)))
                           _$e89838_)
                          (gx#raise-syntax-error
                           '#f
                           '"Cannot resolve relative module path; illegal traversal"
                           _modpath89824_)))
                    (if (string-prefix? '"./" _spath89835_)
                        (_lp89833_
                         (substring
                          _spath89835_
                          '2
                          (string-length _spath89835_))
                         _mpath89836_)
                        (_resolve89826_ _spath89835_ _mpath89836_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_dir89817_)
        (let ((_$e89819_
               (pgetq__0
                'package:
                (gx#core-library-package-plist__0 _dir89817_))))
          (if _$e89819_
              ((lambda (_pkg89822_)
                 (string-append (symbol->string _pkg89822_) '"/"))
               _$e89819_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_dir89791_ _exists?89792_)
        (let ((_$e89794_ (hash-get gx#__module-pkg-cache _dir89791_)))
          (if _$e89794_
              (values _$e89794_)
              (let* ((_gerbil.pkg89797_ (path-expand '"gerbil.pkg" _dir89791_))
                     (_plist89804_
                      (if (or _exists?89792_ (file-exists? _gerbil.pkg89797_))
                          (let ((_e89802_
                                 (gx#call-with-input-source-file
                                  _gerbil.pkg89797_
                                  read)))
                            (if (eof-object? _e89802_)
                                '()
                                (if (list? _e89802_)
                                    _e89802_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _gerbil.pkg89797_
                                     _e89802_))))
                          '())))
                (hash-put! gx#__module-pkg-cache _dir89791_ _plist89804_)
                _plist89804_)))))
    (define gx#core-library-package-plist__0
      (lambda (_dir89810_)
        (let ((_exists?89812_ '#f))
          (gx#core-library-package-plist__% _dir89810_ _exists?89812_))))
    (define gx#core-library-package-plist
      (lambda _g91549_
        (let ((_g91548_ (##length _g91549_)))
          (cond ((##fx= _g91548_ 1)
                 (apply (lambda (_dir89810_)
                          (gx#core-library-package-plist__0 _dir89810_))
                        _g91549_))
                ((##fx= _g91548_ 2)
                 (apply (lambda (_dir89814_ _exists?89815_)
                          (gx#core-library-package-plist__%
                           _dir89814_
                           _exists?89815_))
                        _g91549_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g91549_))))))
    (define gx#core-library-module-path?
      (lambda (_stx89788_) (gx#core-special-module-path? _stx89788_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_stx89786_) (gx#core-special-module-path? _stx89786_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_stx89781_ _char89782_)
        (if (gx#identifier? _stx89781_)
            (if (interned-symbol? (gx#stx-e _stx89781_))
                (let ((_str89784_ (symbol->string (gx#stx-e _stx89781_))))
                  (if (fx> (string-length _str89784_) '1)
                      (eq? (string-ref _str89784_ '0) _char89782_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_stx89775_)
        (gx#core-bound-identifier?__%
         _stx89775_
         (lambda (_g8977689778_)
           (gx#expander-binding?__% _g8977689778_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_stx89769_)
        (gx#core-bound-identifier?__%
         _stx89769_
         (lambda (_g8977089772_)
           (gx#expander-binding?__% _g8977089772_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_stx89756_)
        (letrec ((_module-prelude?89758_
                  (lambda (_e89764_)
                    (let ((_$e89766_
                           (##structure-instance-of?
                            _e89764_
                            'gx#module-context::t)))
                      (if _$e89766_
                          _$e89766_
                          (##structure-instance-of?
                           _e89764_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _stx89756_
           (lambda (_g8975989761_)
             (gx#expander-binding?__%
              _g8975989761_
              _module-prelude?89758_))))))
    (define gx#core-bind-import!__%
      (lambda (_in89686_ _ctx89687_ _force-weak?89688_)
        (let* ((_in8968989698_ _in89686_)
               (_E8969189702_
                (lambda () (error '"No clause matching" _in8968989698_)))
               (_K8969289715_
                (lambda (_weak?89705_ _phi89706_ _key89707_ _source89708_)
                  (gx#core-bind!__%
                   _key89707_
                   (let ((_e89710_
                          (gx#core-resolve-module-export _source89708_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref _e89710_ '1 gx#binding::t '#f)
                      _key89707_
                      _phi89706_
                      _e89710_
                      (##unchecked-structure-ref
                       _source89708_
                       '1
                       gx#module-export::t
                       '#f)
                      (let ((_$e89712_ _force-weak?89688_))
                        (if _$e89712_ _$e89712_ _weak?89705_))))
                   gx#core-context-rebind?
                   _phi89706_
                   _ctx89687_))))
          (if (##structure-direct-instance-of?
               _in8968989698_
               'gx#module-import::t)
              (let* ((_e8969389718_
                      (##unchecked-structure-ref
                       _in8968989698_
                       '1
                       gx#module-import::t
                       '#f))
                     (_source89721_ _e8969389718_)
                     (_e8969489723_
                      (##unchecked-structure-ref
                       _in8968989698_
                       '2
                       gx#module-import::t
                       '#f))
                     (_key89726_ _e8969489723_)
                     (_e8969589728_
                      (##unchecked-structure-ref
                       _in8968989698_
                       '3
                       gx#module-import::t
                       '#f))
                     (_phi89731_ _e8969589728_)
                     (_e8969689733_
                      (##unchecked-structure-ref
                       _in8968989698_
                       '4
                       gx#module-import::t
                       '#f))
                     (_weak?89736_ _e8969689733_))
                (_K8969289715_
                 _weak?89736_
                 _phi89731_
                 _key89726_
                 _source89721_))
              (_E8969189702_)))))
    (define gx#core-bind-import!__0
      (lambda (_in89741_)
        (let* ((_ctx89743_ (gx#current-expander-context))
               (_force-weak?89745_ '#f))
          (gx#core-bind-import!__% _in89741_ _ctx89743_ _force-weak?89745_))))
    (define gx#core-bind-import!__1
      (lambda (_in89747_ _ctx89748_)
        (let ((_force-weak?89750_ '#f))
          (gx#core-bind-import!__% _in89747_ _ctx89748_ _force-weak?89750_))))
    (define gx#core-bind-import!
      (lambda _g91551_
        (let ((_g91550_ (##length _g91551_)))
          (cond ((##fx= _g91550_ 1)
                 (apply (lambda (_in89741_)
                          (gx#core-bind-import!__0 _in89741_))
                        _g91551_))
                ((##fx= _g91550_ 2)
                 (apply (lambda (_in89747_ _ctx89748_)
                          (gx#core-bind-import!__1 _in89747_ _ctx89748_))
                        _g91551_))
                ((##fx= _g91550_ 3)
                 (apply (lambda (_in89752_ _ctx89753_ _force-weak?89754_)
                          (gx#core-bind-import!__%
                           _in89752_
                           _ctx89753_
                           _force-weak?89754_))
                        _g91551_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g91551_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_in89672_ _ctx89673_)
        (gx#core-bind-import!__% _in89672_ _ctx89673_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_in89678_)
        (let ((_ctx89680_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _in89678_ _ctx89680_))))
    (define gx#core-bind-weak-import!
      (lambda _g91553_
        (let ((_g91552_ (##length _g91553_)))
          (cond ((##fx= _g91552_ 1)
                 (apply (lambda (_in89678_)
                          (gx#core-bind-weak-import!__0 _in89678_))
                        _g91553_))
                ((##fx= _g91552_ 2)
                 (apply (lambda (_in89682_ _ctx89683_)
                          (gx#core-bind-weak-import!__% _in89682_ _ctx89683_))
                        _g91553_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g91553_))))))
    (define gx#core-resolve-module-export
      (lambda (_out89563_)
        (letrec ((_subst89565_
                  (lambda (_key89611_)
                    (let* ((_key8961289620_ _key89611_)
                           (_else8961489628_ (lambda () _key89611_))
                           (_K8961689659_
                            (lambda (_mark89631_ _id89632_)
                              (let* ((_mark8963389639_ _mark89631_)
                                     (_E8963589643_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark8963389639_)))
                                     (_K8963689651_
                                      (lambda (_subst89646_)
                                        (let ((_$e89648_
                                               (if _subst89646_
                                                   (hash-get
                                                    _subst89646_
                                                    _id89632_)
                                                   '#f)))
                                          (if _$e89648_
                                              _$e89648_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _key89611_))))))
                                (if (##structure-instance-of?
                                     _mark8963389639_
                                     'gx#expander-mark::t)
                                    (let* ((_e8963789654_
                                            (##unchecked-structure-ref
                                             _mark8963389639_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst89657_ _e8963789654_))
                                      (_K8963689651_ _subst89657_))
                                    (_E8963589643_))))))
                      (if (##pair? _key8961289620_)
                          (let ((_hd8961789662_ (##car _key8961289620_))
                                (_tl8961889664_ (##cdr _key8961289620_)))
                            (let* ((_id89667_ _hd8961789662_)
                                   (_mark89669_ _tl8961889664_))
                              (_K8961689659_ _mark89669_ _id89667_)))
                          (_else8961489628_))))))
          (let* ((_out8956689576_ _out89563_)
                 (_E8956889580_
                  (lambda () (error '"No clause matching" _out8956689576_)))
                 (_K8956989587_
                  (lambda (_phi89583_ _key89584_ _ctx89585_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _ctx89585_ _phi89583_)
                     (_subst89565_ _key89584_)))))
            (if (##structure-direct-instance-of?
                 _out8956689576_
                 'gx#module-export::t)
                (let* ((_e8957089590_
                        (##unchecked-structure-ref
                         _out8956689576_
                         '1
                         gx#module-export::t
                         '#f))
                       (_ctx89593_ _e8957089590_)
                       (_e8957189595_
                        (##unchecked-structure-ref
                         _out8956689576_
                         '2
                         gx#module-export::t
                         '#f))
                       (_key89598_ _e8957189595_)
                       (_e8957289600_
                        (##unchecked-structure-ref
                         _out8956689576_
                         '3
                         gx#module-export::t
                         '#f))
                       (_phi89603_ _e8957289600_)
                       (_e8957389605_
                        (##unchecked-structure-ref
                         _out8956689576_
                         '4
                         gx#module-export::t
                         '#f))
                       (_e8957489608_
                        (##unchecked-structure-ref
                         _out8956689576_
                         '5
                         gx#module-export::t
                         '#f)))
                  (_K8956989587_ _phi89603_ _key89598_ _ctx89593_))
                (_E8956889580_))))))
    (define gx#core-module-export->import__%
      (lambda (_out89488_ _rename89489_ _dphi89490_)
        (let* ((_out8949189501_ _out89488_)
               (_E8949389505_
                (lambda () (error '"No clause matching" _out8949189501_)))
               (_K8949489517_
                (lambda (_weak?89508_
                         _name89509_
                         _phi89510_
                         _key89511_
                         _ctx89512_)
                  (##structure
                   gx#module-import::t
                   _out89488_
                   (let ((_$e89514_ _rename89489_))
                     (if _$e89514_ _$e89514_ _name89509_))
                   (fx+ _phi89510_ _dphi89490_)
                   _weak?89508_))))
          (if (##structure-direct-instance-of?
               _out8949189501_
               'gx#module-export::t)
              (let* ((_e8949589520_
                      (##unchecked-structure-ref
                       _out8949189501_
                       '1
                       gx#module-export::t
                       '#f))
                     (_ctx89523_ _e8949589520_)
                     (_e8949689525_
                      (##unchecked-structure-ref
                       _out8949189501_
                       '2
                       gx#module-export::t
                       '#f))
                     (_key89528_ _e8949689525_)
                     (_e8949789530_
                      (##unchecked-structure-ref
                       _out8949189501_
                       '3
                       gx#module-export::t
                       '#f))
                     (_phi89533_ _e8949789530_)
                     (_e8949889535_
                      (##unchecked-structure-ref
                       _out8949189501_
                       '4
                       gx#module-export::t
                       '#f))
                     (_name89538_ _e8949889535_)
                     (_e8949989540_
                      (##unchecked-structure-ref
                       _out8949189501_
                       '5
                       gx#module-export::t
                       '#f))
                     (_weak?89543_ _e8949989540_))
                (_K8949489517_
                 _weak?89543_
                 _name89538_
                 _phi89533_
                 _key89528_
                 _ctx89523_))
              (_E8949389505_)))))
    (define gx#core-module-export->import__0
      (lambda (_out89548_)
        (let* ((_rename89550_ '#f) (_dphi89552_ '0))
          (gx#core-module-export->import__%
           _out89548_
           _rename89550_
           _dphi89552_))))
    (define gx#core-module-export->import__1
      (lambda (_out89554_ _rename89555_)
        (let ((_dphi89557_ '0))
          (gx#core-module-export->import__%
           _out89554_
           _rename89555_
           _dphi89557_))))
    (define gx#core-module-export->import
      (lambda _g91555_
        (let ((_g91554_ (##length _g91555_)))
          (cond ((##fx= _g91554_ 1)
                 (apply (lambda (_out89548_)
                          (gx#core-module-export->import__0 _out89548_))
                        _g91555_))
                ((##fx= _g91554_ 2)
                 (apply (lambda (_out89554_ _rename89555_)
                          (gx#core-module-export->import__1
                           _out89554_
                           _rename89555_))
                        _g91555_))
                ((##fx= _g91554_ 3)
                 (apply (lambda (_out89559_ _rename89560_ _dphi89561_)
                          (gx#core-module-export->import__%
                           _out89559_
                           _rename89560_
                           _dphi89561_))
                        _g91555_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g91555_))))))
    (define gx#core-expand-module%
      (lambda (_stx89416_)
        (letrec ((_make-context89418_
                  (lambda (_id89469_)
                    (let* ((_super89471_ (gx#current-expander-context))
                           (_bind-id89473_ (gx#stx-e _id89469_))
                           (_mod-id89475_
                            (if (##structure-instance-of?
                                 _super89471_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##structure-ref
                                  _super89471_
                                  '1
                                  gx#expander-context::t
                                  '#f)
                                 '"$"
                                 _bind-id89473_)
                                _bind-id89473_))
                           (_ns89477_ (symbol->string _mod-id89475_))
                           (_path89484_
                            (if (##structure-instance-of?
                                 _super89471_
                                 'gx#module-context::t)
                                (let ((_path89479_
                                       (##unchecked-structure-ref
                                        _super89471_
                                        '7
                                        gx#module-context::t
                                        '#f)))
                                  (if (or (pair? _path89479_)
                                          (null? _path89479_))
                                      (cons _bind-id89473_ _path89479_)
                                      (if (not _path89479_)
                                          _bind-id89473_
                                          (cons _bind-id89473_
                                                (cons _path89479_ '())))))
                                _bind-id89473_)))
                      (let ((__obj91531
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
                         __obj91531
                         _mod-id89475_
                         _super89471_
                         _ns89477_
                         _path89484_)
                        __obj91531)))))
          (let* ((_e8941989429_ _stx89416_)
                 (_E8942189433_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8941989429_)))
                 (_E8942089465_
                  (lambda ()
                    (if (gx#stx-pair? _e8941989429_)
                        (let ((_e8942289437_ (gx#syntax-e _e8941989429_)))
                          (let ((_hd8942389440_ (##car _e8942289437_))
                                (_tl8942489442_ (##cdr _e8942289437_)))
                            (if (gx#stx-pair? _tl8942489442_)
                                (let ((_e8942589445_
                                       (gx#syntax-e _tl8942489442_)))
                                  (let ((_hd8942689448_ (##car _e8942589445_))
                                        (_tl8942789450_ (##cdr _e8942589445_)))
                                    (let* ((_id89453_ _hd8942689448_)
                                           (_body89455_ _tl8942789450_))
                                      (if (and (gx#identifier? _id89453_)
                                               (gx#stx-list? _body89455_))
                                          (let* ((_ctx89457_
                                                  (_make-context89418_
                                                   _id89453_))
                                                 (_body89459_
                                                  (gx#core-expand-module-begin
                                                   _body89455_
                                                   _ctx89457_))
                                                 (_body89461_
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body89459_)
                                                   (gx#stx-source
                                                    _stx89416_))))
                                            (##unchecked-structure-set!
                                             _ctx89457_
                                             (make-promise
                                              (lambda ()
                                                (gx#eval-syntax* _body89461_)))
                                             '10
                                             gx#module-context::t
                                             '#f)
                                            (##unchecked-structure-set!
                                             _ctx89457_
                                             _body89461_
                                             '11
                                             gx#module-context::t
                                             '#f)
                                            (gx#core-bind-syntax!__0
                                             _id89453_
                                             _ctx89457_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-list
                                              '%#module
                                              (gx#core-quote-syntax__0
                                               _id89453_)
                                              _body89461_)
                                             (gx#stx-source _stx89416_)))
                                          (_E8942189433_)))))
                                (_E8942189433_))))
                        (_E8942189433_)))))
            (_E8942089465_)))))
    (define gx#core-expand-module-begin
      (lambda (_body89382_ _ctx89383_)
        (call-with-parameters
         (lambda ()
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_stx89386_
                   (gx#core-expand-head (cons '%%begin-module _body89382_)))
                  (_e8938789394_ _stx89386_)
                  (_E8938989398_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _stx89386_)))
                  (_E8938889412_
                   (lambda ()
                     (if (gx#stx-pair? _e8938789394_)
                         (let ((_e8939089402_ (gx#syntax-e _e8938789394_)))
                           (let ((_hd8939189405_ (##car _e8939089402_))
                                 (_tl8939289407_ (##cdr _e8939089402_)))
                             (if (and (gx#identifier? _hd8939189405_)
                                      (gx#core-identifier=?
                                       _hd8939189405_
                                       '%#begin-module))
                                 (let ((_body89410_ _tl8939289407_))
                                   (if '#t
                                       (if (gx#sealed-syntax? _stx89386_)
                                           _body89410_
                                           (gx#core-expand-module-body
                                            _body89410_))
                                       (_E8938989398_)))
                                 (_E8938989398_))))
                         (_E8938989398_)))))
             (_E8938889412_)))
         gx#current-expander-context
         _ctx89383_
         gx#current-expander-phi
         '0)))
    (define gx#core-expand-module-body
      (lambda (_body89178_)
        (letrec ((_expand-special89180_
                  (lambda (_hd89309_ _K89310_ _rest89311_ _r89312_)
                    (let* ((_e8931389330_ _hd89309_)
                           (_E8932589334_
                            (lambda ()
                              (_K89310_
                               _rest89311_
                               (cons (gx#core-expand-top _hd89309_)
                                     _r89312_))))
                           (_E8931589346_
                            (lambda ()
                              (if (gx#stx-pair? _e8931389330_)
                                  (let ((_e8932689338_
                                         (gx#syntax-e _e8931389330_)))
                                    (let ((_hd8932789341_
                                           (##car _e8932689338_))
                                          (_tl8932889343_
                                           (##cdr _e8932689338_)))
                                      (if (and (gx#identifier? _hd8932789341_)
                                               (gx#core-identifier=?
                                                _hd8932789341_
                                                '%#export))
                                          (if '#t
                                              (_K89310_
                                               _rest89311_
                                               (cons _hd89309_ _r89312_))
                                              (_E8932589334_))
                                          (_E8932589334_))))
                                  (_E8932589334_))))
                           (_E8931489378_
                            (lambda ()
                              (if (gx#stx-pair? _e8931389330_)
                                  (let ((_e8931689350_
                                         (gx#syntax-e _e8931389330_)))
                                    (let ((_hd8931789353_
                                           (##car _e8931689350_))
                                          (_tl8931889355_
                                           (##cdr _e8931689350_)))
                                      (if (and (gx#identifier? _hd8931789353_)
                                               (gx#core-identifier=?
                                                _hd8931789353_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl8931889355_)
                                              (let ((_e8931989358_
                                                     (gx#syntax-e
                                                      _tl8931889355_)))
                                                (let ((_hd8932089361_
                                                       (##car _e8931989358_))
                                                      (_tl8932189363_
                                                       (##cdr _e8931989358_)))
                                                  (let ((_hd-bind89366_
                                                         _hd8932089361_))
                                                    (if (gx#stx-pair?
                                                         _tl8932189363_)
                                                        (let ((_e8932289368_
                                                               (gx#syntax-e
                                                                _tl8932189363_)))
                                                          (let ((_hd8932389371_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e8932289368_))
                        (_tl8932489373_ (##cdr _e8932289368_)))
                    (let ((_expr89376_ _hd8932389371_))
                      (if (gx#stx-null? _tl8932489373_)
                          (if (gx#core-bind-values? _hd-bind89366_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind89366_)
                                (_K89310_
                                 _rest89311_
                                 (cons _hd89309_ _r89312_)))
                              (_E8931589346_))
                          (_E8931589346_)))))
                (_E8931589346_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8931589346_))
                                          (_E8931589346_))))
                                  (_E8931589346_)))))
                      (_E8931489378_))))
                 (_expand-body89181_
                  (lambda (_rbody89183_)
                    (let _lp89185_ ((_rest89187_ _rbody89183_)
                                    (_body89188_ '()))
                      (let* ((_rest8918989197_ _rest89187_)
                             (_else8919189205_ (lambda () _body89188_))
                             (_K8919389297_
                              (lambda (_rest89208_ _hd89209_)
                                (let* ((_e8921089231_ _hd89209_)
                                       (_E8922689235_
                                        (lambda ()
                                          (_lp89185_
                                           _rest89208_
                                           (cons (gx#core-expand-expression
                                                  _hd89209_)
                                                 _body89188_))))
                                       (_E8922289249_
                                        (lambda ()
                                          (if (gx#stx-pair? _e8921089231_)
                                              (let ((_e8922789239_
                                                     (gx#syntax-e
                                                      _e8921089231_)))
                                                (let ((_hd8922889242_
                                                       (##car _e8922789239_))
                                                      (_tl8922989244_
                                                       (##cdr _e8922789239_)))
                                                  (let ((_form89247_
                                                         _hd8922889242_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _form89247_
                                                         gx#special-form-binding?)
                                                        (_lp89185_
                                                         _rest89208_
                                                         (cons _hd89209_
                                                               _body89188_))
                                                        (_E8922689235_)))))
                                              (_E8922689235_))))
                                       (_E8921289261_
                                        (lambda ()
                                          (if (gx#stx-pair? _e8921089231_)
                                              (let ((_e8922389253_
                                                     (gx#syntax-e
                                                      _e8921089231_)))
                                                (let ((_hd8922489256_
                                                       (##car _e8922389253_))
                                                      (_tl8922589258_
                                                       (##cdr _e8922389253_)))
                                                  (if (and (gx#identifier?
                                                            _hd8922489256_)
                                                           (gx#core-identifier=?
                                                            _hd8922489256_
                                                            '%#export))
                                                      (if '#t
                                                          (_lp89185_
                                                           _rest89208_
                                                           (cons (gx#core-expand-export%__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd89209_)
                         _body89188_))
                  (_E8922289249_))
              (_E8922289249_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8922289249_))))
                                       (_E8921189293_
                                        (lambda ()
                                          (if (gx#stx-pair? _e8921089231_)
                                              (let ((_e8921389265_
                                                     (gx#syntax-e
                                                      _e8921089231_)))
                                                (let ((_hd8921489268_
                                                       (##car _e8921389265_))
                                                      (_tl8921589270_
                                                       (##cdr _e8921389265_)))
                                                  (if (and (gx#identifier?
                                                            _hd8921489268_)
                                                           (gx#core-identifier=?
                                                            _hd8921489268_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl8921589270_)
                                                          (let ((_e8921689273_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl8921589270_)))
                    (let ((_hd8921789276_ (##car _e8921689273_))
                          (_tl8921889278_ (##cdr _e8921689273_)))
                      (let ((_hd-bind89281_ _hd8921789276_))
                        (if (gx#stx-pair? _tl8921889278_)
                            (let ((_e8921989283_ (gx#syntax-e _tl8921889278_)))
                              (let ((_hd8922089286_ (##car _e8921989283_))
                                    (_tl8922189288_ (##cdr _e8921989283_)))
                                (let ((_expr89291_ _hd8922089286_))
                                  (if (gx#stx-null? _tl8922189288_)
                                      (if '#t
                                          (_lp89185_
                                           _rest89208_
                                           (cons (gx#core-quote-syntax__1
                                                  (gx#core-list
                                                   '%#define-values
                                                   (gx#core-quote-bind-values
                                                    _hd-bind89281_)
                                                   (gx#core-expand-expression
                                                    _expr89291_))
                                                  (gx#stx-source _hd89209_))
                                                 _body89188_))
                                          (_E8921289261_))
                                      (_E8921289261_)))))
                            (_E8921289261_)))))
                  (_E8921289261_))
              (_E8921289261_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8921289261_)))))
                                  (_E8921189293_)))))
                        (if (##pair? _rest8918989197_)
                            (let ((_hd8919489300_ (##car _rest8918989197_))
                                  (_tl8919589302_ (##cdr _rest8918989197_)))
                              (let* ((_hd89305_ _hd8919489300_)
                                     (_rest89307_ _tl8919589302_))
                                (_K8919389297_ _rest89307_ _hd89305_)))
                            (_else8919189205_)))))))
          (_expand-body89181_
           (gx#core-expand-block__%
            (cons '%#begin-module _body89178_)
            _expand-special89180_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_stx89021_
               _expanded?89022_
               _method89023_
               _current-phi89024_
               _expand189025_)
        (letrec ((_K89027_
                  (lambda (_rest89145_ _r89146_)
                    (let* ((_e8914789154_ _rest89145_)
                           (_E8914989158_ (lambda () _r89146_))
                           (_E8914889174_
                            (lambda ()
                              (if (gx#stx-pair? _e8914789154_)
                                  (let ((_e8915089162_
                                         (gx#syntax-e _e8914789154_)))
                                    (let ((_hd8915189165_
                                           (##car _e8915089162_))
                                          (_tl8915289167_
                                           (##cdr _e8915089162_)))
                                      (let* ((_hd89170_ _hd8915189165_)
                                             (_rest89172_ _tl8915289167_))
                                        (if '#t
                                            (_step89028_
                                             _hd89170_
                                             _rest89172_
                                             _r89146_)
                                            (_E8914989158_)))))
                                  (_E8914989158_)))))
                      (_E8914889174_))))
                 (_step89028_
                  (lambda (_hd89059_ _rest89060_ _r89061_)
                    (let* ((_e8906289080_ _hd89059_)
                           (_E8907589084_
                            (lambda ()
                              (if (_expanded?89022_ (gx#stx-e _hd89059_))
                                  (_K89027_
                                   _rest89060_
                                   (cons (gx#stx-e _hd89059_) _r89061_))
                                  (_expand189025_
                                   _hd89059_
                                   _K89027_
                                   _rest89060_
                                   _r89061_))))
                           (_E8907189100_
                            (lambda ()
                              (if (gx#stx-pair? _e8906289080_)
                                  (let ((_e8907689088_
                                         (gx#syntax-e _e8906289080_)))
                                    (let ((_hd8907789091_
                                           (##car _e8907689088_))
                                          (_tl8907889093_
                                           (##cdr _e8907689088_)))
                                      (let* ((_macro89096_ _hd8907789091_)
                                             (_body89098_ _tl8907889093_))
                                        (if (gx#core-bound-identifier?__%
                                             _macro89096_
                                             gx#syntax-binding?)
                                            (_K89027_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _macro89096_)
                                                    _hd89059_
                                                    _method89023_)
                                                   _rest89060_)
                                             _r89061_)
                                            (_E8907589084_)))))
                                  (_E8907589084_))))
                           (_E8906489114_
                            (lambda ()
                              (if (gx#stx-pair? _e8906289080_)
                                  (let ((_e8907289104_
                                         (gx#syntax-e _e8906289080_)))
                                    (let ((_hd8907389107_
                                           (##car _e8907289104_))
                                          (_tl8907489109_
                                           (##cdr _e8907289104_)))
                                      (if (eq? (gx#stx-e _hd8907389107_)
                                               'begin:)
                                          (let ((_body89112_ _tl8907489109_))
                                            (if '#t
                                                (_K89027_
                                                 (gx#stx-foldr
                                                  cons
                                                  _rest89060_
                                                  _body89112_)
                                                 _r89061_)
                                                (_E8907189100_)))
                                          (_E8907189100_))))
                                  (_E8907189100_))))
                           (_E8906389141_
                            (lambda ()
                              (if (gx#stx-pair? _e8906289080_)
                                  (let ((_e8906589118_
                                         (gx#syntax-e _e8906289080_)))
                                    (let ((_hd8906689121_
                                           (##car _e8906589118_))
                                          (_tl8906789123_
                                           (##cdr _e8906589118_)))
                                      (if (eq? (gx#stx-e _hd8906689121_) 'phi:)
                                          (if (gx#stx-pair? _tl8906789123_)
                                              (let ((_e8906889126_
                                                     (gx#syntax-e
                                                      _tl8906789123_)))
                                                (let ((_hd8906989129_
                                                       (##car _e8906889126_))
                                                      (_tl8907089131_
                                                       (##cdr _e8906889126_)))
                                                  (let* ((_dphi89134_
                                                          _hd8906989129_)
                                                         (_body89136_
                                                          _tl8907089131_))
                                                    (if (gx#stx-fixnum?
                                                         _dphi89134_)
                                                        (let ((_rbody89139_
                                                               (call-with-parameters
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_K89027_ _body89136_ '()))
                        _current-phi89024_
                        (fx+ (gx#stx-e _dphi89134_) (_current-phi89024_)))))
                  (_K89027_ _rest89060_ (foldr1 cons _r89061_ _rbody89139_)))
                (_E8906489114_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8906489114_))
                                          (_E8906489114_))))
                                  (_E8906489114_)))))
                      (_E8906389141_)))))
          (let* ((_e8902989036_ _stx89021_)
                 (_E8903189040_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8902989036_)))
                 (_E8903089055_
                  (lambda ()
                    (if (gx#stx-pair? _e8902989036_)
                        (let ((_e8903289044_ (gx#syntax-e _e8902989036_)))
                          (let ((_hd8903389047_ (##car _e8903289044_))
                                (_tl8903489049_ (##cdr _e8903289044_)))
                            (let ((_body89052_ _tl8903489049_))
                              (if '#t
                                  (if (_current-phi89024_)
                                      (_K89027_ _body89052_ '())
                                      (call-with-parameters
                                       (lambda () (_K89027_ _body89052_ '()))
                                       _current-phi89024_
                                       (gx#current-expander-phi)))
                                  (_E8903189040_)))))
                        (_E8903189040_)))))
            (_E8903089055_)))))
    (define gx#core-expand-import%__%
      (lambda (_stx88688_ _internal-expand?88689_)
        (letrec ((_expand188691_
                  (lambda (_hd89001_ _K89002_ _rest89003_ _r89004_)
                    (if (gx#core-bound-module? _hd89001_)
                        (_import188692_
                         (gx#syntax-local-e__0 _hd89001_)
                         _K89002_
                         _rest89003_
                         _r89004_)
                        (if (gx#core-library-module-path? _hd89001_)
                            (_import188692_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _hd89001_))
                             _K89002_
                             _rest89003_
                             _r89004_)
                            (if (gx#core-library-relative-module-path?
                                 _hd89001_)
                                (_import188692_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _hd89001_))
                                 _K89002_
                                 _rest89003_
                                 _r89004_)
                                (let ((_e89006_ (gx#stx-e _hd89001_)))
                                  (if (pair? _e89006_)
                                      (let ((_$e89008_
                                             (gx#stx-e (car _e89006_))))
                                        (if (eq? 'spec: _$e89008_)
                                            (_import-spec88695_
                                             _hd89001_
                                             _K89002_
                                             _rest89003_
                                             _r89004_)
                                            (if (eq? 'in: _$e89008_)
                                                (_import-submodule88693_
                                                 _hd89001_
                                                 _K89002_
                                                 _rest89003_
                                                 _r89004_)
                                                (if (eq? 'runtime: _$e89008_)
                                                    (_import-runtime88694_
                                                     _hd89001_
                                                     _K89002_
                                                     _rest89003_
                                                     _r89004_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _stx88688_
                                                     _hd89001_)))))
                                      (if (string? _e89006_)
                                          (_import188692_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _hd89001_
                                             (gx#stx-source _stx88688_)))
                                           _K89002_
                                           _rest89003_
                                           _r89004_)
                                          (if (##structure-instance-of?
                                               _e89006_
                                               'gx#module-context::t)
                                              (_K89002_
                                               _rest89003_
                                               (cons _e89006_ _r89004_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _stx88688_
                                               _hd89001_))))))))))
                 (_import188692_
                  (lambda (_ctx88990_ _K88991_ _rest88992_ _r88993_)
                    (let ((_dphi88995_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_K88991_
                       _rest88992_
                       (cons (##structure
                              gx#import-set::t
                              _ctx88990_
                              _dphi88995_
                              (map (lambda (_g8899688998_)
                                     (gx#core-module-export->import__%
                                      _g8899688998_
                                      '#f
                                      _dphi88995_))
                                   (##unchecked-structure-ref
                                    _ctx88990_
                                    '9
                                    gx#module-context::t
                                    '#f)))
                             _r88993_)))))
                 (_import-submodule88693_
                  (lambda (_hd88957_ _K88958_ _rest88959_ _r88960_)
                    (let* ((_e8896188968_ _hd88957_)
                           (_E8896388972_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8896188968_)))
                           (_E8896288986_
                            (lambda ()
                              (if (gx#stx-pair? _e8896188968_)
                                  (let ((_e8896488976_
                                         (gx#syntax-e _e8896188968_)))
                                    (let ((_hd8896588979_
                                           (##car _e8896488976_))
                                          (_tl8896688981_
                                           (##cdr _e8896488976_)))
                                      (let ((_spath88984_ _tl8896688981_))
                                        (if '#t
                                            (_import188692_
                                             (_import-spec-source88696_
                                              _spath88984_)
                                             _K88958_
                                             _rest88959_
                                             _r88960_)
                                            (_E8896388972_)))))
                                  (_E8896388972_)))))
                      (_E8896288986_))))
                 (_import-runtime88694_
                  (lambda (_hd88924_ _K88925_ _rest88926_ _r88927_)
                    (let* ((_e8892888935_ _hd88924_)
                           (_E8893088939_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8892888935_)))
                           (_E8892988953_
                            (lambda ()
                              (if (gx#stx-pair? _e8892888935_)
                                  (let ((_e8893188943_
                                         (gx#syntax-e _e8892888935_)))
                                    (let ((_hd8893288946_
                                           (##car _e8893188943_))
                                          (_tl8893388948_
                                           (##cdr _e8893188943_)))
                                      (let ((_spath88951_ _tl8893388948_))
                                        (if '#t
                                            (_K88925_
                                             _rest88926_
                                             (cons (_import-spec-source88696_
                                                    _spath88951_)
                                                   _r88927_))
                                            (_E8893088939_)))))
                                  (_E8893088939_)))))
                      (_E8892988953_))))
                 (_import-spec88695_
                  (lambda (_hd88763_ _K88764_ _rest88765_ _r88766_)
                    (let* ((_e8876788784_ _hd88763_)
                           (_E8877688788_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8876788784_)))
                           (_E8876988898_
                            (lambda ()
                              (if (gx#stx-pair? _e8876788784_)
                                  (let ((_e8877788792_
                                         (gx#syntax-e _e8876788784_)))
                                    (let ((_hd8877888795_
                                           (##car _e8877788792_))
                                          (_tl8877988797_
                                           (##cdr _e8877788792_)))
                                      (if (gx#stx-pair? _tl8877988797_)
                                          (let ((_e8878088800_
                                                 (gx#syntax-e _tl8877988797_)))
                                            (let ((_hd8878188803_
                                                   (##car _e8878088800_))
                                                  (_tl8878288805_
                                                   (##cdr _e8878088800_)))
                                              (let* ((_path88808_
                                                      _hd8878188803_)
                                                     (_specs88810_
                                                      _tl8878288805_))
                                                (if '#t
                                                    (let ((_src-ctx88812_
                                                           (_import-spec-source88696_
                                                            _path88808_))
                                                          (_exports88813_
                                                           (make-hash-table))
                                                          (_specs88814_
                                                           (gx#syntax->list
                                                            _specs88810_)))
                                                      (for-each
                                                       (lambda (_out88816_)
                                                         (hash-put!
                                                          _exports88813_
                                                          (cons (##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _out88816_
                         '3
                         gx#module-export::t
                         '#f)
                        (##unchecked-structure-ref
                         _out88816_
                         '4
                         gx#module-export::t
                         '#f))
                  _out88816_))
               (##unchecked-structure-ref
                _src-ctx88812_
                '9
                gx#module-context::t
                '#f))
              (_K88764_
               _rest88765_
               (foldl1 (lambda (_spec88818_ _r88819_)
                         (let* ((_e8882088836_ _spec88818_)
                                (_E8882288840_
                                 (lambda ()
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid syntax-case clause"
                                    _e8882088836_)))
                                (_E8882188894_
                                 (lambda ()
                                   (if (gx#stx-pair? _e8882088836_)
                                       (let ((_e8882388844_
                                              (gx#syntax-e _e8882088836_)))
                                         (let ((_hd8882488847_
                                                (##car _e8882388844_))
                                               (_tl8882588849_
                                                (##cdr _e8882388844_)))
                                           (let ((_phi88852_ _hd8882488847_))
                                             (if (gx#stx-pair? _tl8882588849_)
                                                 (let ((_e8882688854_
                                                        (gx#syntax-e
                                                         _tl8882588849_)))
                                                   (let ((_hd8882788857_
                                                          (##car _e8882688854_))
                                                         (_tl8882888859_
                                                          (##cdr _e8882688854_)))
                                                     (let ((_name88862_
                                                            _hd8882788857_))
                                                       (if (gx#stx-pair?
                                                            _tl8882888859_)
                                                           (let ((_e8882988864_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl8882888859_)))
                     (let ((_hd8883088867_ (##car _e8882988864_))
                           (_tl8883188869_ (##cdr _e8882988864_)))
                       (let ((_src-phi88872_ _hd8883088867_))
                         (if (gx#stx-pair? _tl8883188869_)
                             (let ((_e8883288874_
                                    (gx#syntax-e _tl8883188869_)))
                               (let ((_hd8883388877_ (##car _e8883288874_))
                                     (_tl8883488879_ (##cdr _e8883288874_)))
                                 (let ((_src-name88882_ _hd8883388877_))
                                   (if (gx#stx-null? _tl8883488879_)
                                       (if (and (gx#stx-fixnum? _src-phi88872_)
                                                (gx#identifier?
                                                 _src-name88882_)
                                                (gx#stx-fixnum? _phi88852_)
                                                (gx#identifier? _name88862_))
                                           (let ((_src-phi88884_
                                                  (gx#stx-e _src-phi88872_))
                                                 (_src-name88885_
                                                  (gx#core-identifier-key
                                                   _src-name88882_))
                                                 (_phi88886_
                                                  (gx#stx-e _phi88852_))
                                                 (_name88887_
                                                  (gx#core-identifier-key
                                                   _name88862_)))
                                             (let ((_$e88889_
                                                    (hash-get
                                                     _exports88813_
                                                     (cons _src-phi88884_
                                                           _src-name88885_))))
                                               (if _$e88889_
                                                   ((lambda (_out88892_)
                                                      (cons (gx#core-module-export->import__%
                                                             _out88892_
                                                             _name88887_
                                                             (fx- _phi88886_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _src-phi88884_))
                    _r88819_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _$e88889_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; no matching export"
                                                    _stx88688_
                                                    _hd88763_))))
                                           (_E8882288840_))
                                       (_E8882288840_)))))
                             (_E8882288840_)))))
                   (_E8882288840_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E8882288840_)))))
                                       (_E8882288840_)))))
                           (_E8882188894_)))
                       _r88766_
                       _specs88814_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E8877688788_)))))
                                          (_E8877688788_))))
                                  (_E8877688788_))))
                           (_E8876888920_
                            (lambda ()
                              (if (gx#stx-pair? _e8876788784_)
                                  (let ((_e8877088902_
                                         (gx#syntax-e _e8876788784_)))
                                    (let ((_hd8877188905_
                                           (##car _e8877088902_))
                                          (_tl8877288907_
                                           (##cdr _e8877088902_)))
                                      (if (gx#stx-pair? _tl8877288907_)
                                          (let ((_e8877388910_
                                                 (gx#syntax-e _tl8877288907_)))
                                            (let ((_hd8877488913_
                                                   (##car _e8877388910_))
                                                  (_tl8877588915_
                                                   (##cdr _e8877388910_)))
                                              (let ((_path88918_
                                                     _hd8877488913_))
                                                (if (gx#stx-null?
                                                     _tl8877588915_)
                                                    (if '#t
                                                        (_K88764_
                                                         _rest88765_
                                                         (cons (_import-spec-source88696_
                                                                _path88918_)
                                                               _r88766_))
                                                        (_E8876988898_))
                                                    (_E8876988898_)))))
                                          (_E8876988898_))))
                                  (_E8876988898_)))))
                      (_E8876888920_))))
                 (_import-spec-source88696_
                  (lambda (_spath88761_)
                    (gx#core-import-nested-module _spath88761_ _stx88688_)))
                 (_import!88697_
                  (lambda (_rbody88710_)
                    (letrec* ((_current-ctx88712_
                               (gx#current-expander-context))
                              (_deps88713_ (make-hash-table-eq))
                              (_bind!88714_
                               (lambda (_hd88759_)
                                 (gx#core-bind-import!__1
                                  _hd88759_
                                  _current-ctx88712_))))
                      (let _lp88716_ ((_rest88718_ _rbody88710_)
                                      (_body88719_ '()))
                        (let* ((_rest8872088728_ _rest88718_)
                               (_else8872288738_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _current-ctx88712_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _current-ctx88712_
                                       (foldl1 cons
                                               (##unchecked-structure-ref
                                                _current-ctx88712_
                                                '8
                                                gx#module-context::t
                                                '#f)
                                               _body88719_)
                                       '8
                                       gx#module-context::t
                                       '#f)
                                      '#!void)
                                  (hash-for-each
                                   (lambda (_ctx88736_ _g91556_)
                                     (gx#eval-module _ctx88736_))
                                   _deps88713_)
                                  _body88719_))
                               (_K8872488747_
                                (lambda (_rest88741_ _hd88742_)
                                  (if (##structure-direct-instance-of?
                                       _hd88742_
                                       'gx#module-import::t)
                                      (begin
                                        (_bind!88714_ _hd88742_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _hd88742_
                                                   '3
                                                   gx#module-import::t
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _hd88742_
                                                            '1
                                                            gx#module-import::t
                                                            '#f)
                                                           '3
                                                           gx#module-export::t
                                                           '#f)))
                                            (hash-put!
                                             _deps88713_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _hd88742_
                                               '1
                                               gx#module-import::t
                                               '#f)
                                              '1
                                              gx#module-export::t
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _hd88742_
                                           'gx#import-set::t)
                                          (begin
                                            (for-each
                                             _bind!88714_
                                             (##unchecked-structure-ref
                                              _hd88742_
                                              '3
                                              gx#import-set::t
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _hd88742_
                                                  '2
                                                  gx#import-set::t
                                                  '#f))
                                                (hash-put!
                                                 _deps88713_
                                                 (##unchecked-structure-ref
                                                  _hd88742_
                                                  '1
                                                  gx#import-set::t
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_$e88744_
                                                 (##structure-instance-of?
                                                  _hd88742_
                                                  'gx#module-context::t)))
                                            (if _$e88744_
                                                _$e88744_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _stx88688_
                                                 _hd88742_)))))
                                  (_lp88716_
                                   _rest88741_
                                   (cons _hd88742_ _body88719_)))))
                          (if (##pair? _rest8872088728_)
                              (let ((_hd8872588750_ (##car _rest8872088728_))
                                    (_tl8872688752_ (##cdr _rest8872088728_)))
                                (let* ((_hd88755_ _hd8872588750_)
                                       (_rest88757_ _tl8872688752_))
                                  (_K8872488747_ _rest88757_ _hd88755_)))
                              (_else8872288738_)))))))
                 (_expanded-import?88698_
                  (lambda (_e88702_)
                    (let ((_$e88704_
                           (##structure-direct-instance-of?
                            _e88702_
                            'gx#import-set::t)))
                      (if _$e88704_
                          _$e88704_
                          (let ((_$e88707_
                                 (##structure-direct-instance-of?
                                  _e88702_
                                  'gx#module-import::t)))
                            (if _$e88707_
                                _$e88707_
                                (##structure-instance-of?
                                 _e88702_
                                 'gx#module-context::t))))))))
          (let ((_rbody88700_
                 (gx#core-expand-import/export
                  _stx88688_
                  _expanded-import?88698_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _expand188691_)))
            (if _internal-expand?88689_
                (reverse _rbody88700_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_import!88697_ _rbody88700_))
                 (gx#stx-source _stx88688_)))))))
    (define gx#core-expand-import%__0
      (lambda (_stx89014_)
        (let ((_internal-expand?89016_ '#f))
          (gx#core-expand-import%__% _stx89014_ _internal-expand?89016_))))
    (define gx#core-expand-import%
      (lambda _g91558_
        (let ((_g91557_ (##length _g91558_)))
          (cond ((##fx= _g91557_ 1)
                 (apply (lambda (_stx89014_)
                          (gx#core-expand-import%__0 _stx89014_))
                        _g91558_))
                ((##fx= _g91557_ 2)
                 (apply (lambda (_stx89018_ _internal-expand?89019_)
                          (gx#core-expand-import%__%
                           _stx89018_
                           _internal-expand?89019_))
                        _g91558_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g91558_))))))
    (define gx#core-import-nested-module
      (lambda (_spath88615_ _where88616_)
        (let* ((_e8861788624_ _spath88615_)
               (_E8861988628_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8861788624_)))
               (_E8861888683_
                (lambda ()
                  (if (gx#stx-pair? _e8861788624_)
                      (let ((_e8862088632_ (gx#syntax-e _e8861788624_)))
                        (let ((_hd8862188635_ (##car _e8862088632_))
                              (_tl8862288637_ (##cdr _e8862088632_)))
                          (let* ((_origin88640_ _hd8862188635_)
                                 (_sub88642_ _tl8862288637_))
                            (if '#t
                                (let ((_origin-ctx88644_
                                       (if (gx#stx-false? _origin88640_)
                                           (gx#current-expander-context)
                                           (gx#import-module__0
                                            _origin88640_))))
                                  (let _lp88646_ ((_rest88648_ _sub88642_)
                                                  (_ctx88649_
                                                   _origin-ctx88644_))
                                    (let* ((_e8865088657_ _rest88648_)
                                           (_E8865288661_
                                            (lambda () _ctx88649_))
                                           (_E8865188679_
                                            (lambda ()
                                              (if (gx#stx-pair? _e8865088657_)
                                                  (let ((_e8865388665_
                                                         (gx#syntax-e
                                                          _e8865088657_)))
                                                    (let ((_hd8865488668_
                                                           (##car _e8865388665_))
                                                          (_tl8865588670_
                                                           (##cdr _e8865388665_)))
                                                      (let* ((_id88673_
                                                              _hd8865488668_)
                                                             (_rest88675_
                                                              _tl8865588670_))
                                                        (if '#t
                                                            (let ((_bind88677_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#resolve-identifier__% _id88673_ '0 _ctx88649_)))
                      (if (and (##structure-direct-instance-of?
                                _bind88677_
                                'gx#syntax-binding::t)
                               (##structure-instance-of?
                                (##unchecked-structure-ref
                                 _bind88677_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                'gx#module-context::t))
                          '#!void
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; not bound as module"
                           _where88616_
                           _spath88615_
                           _id88673_))
                      (_lp88646_
                       _rest88675_
                       (##unchecked-structure-ref
                        _bind88677_
                        '4
                        gx#syntax-binding::t
                        '#f)))
                    (_E8865288661_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8865288661_)))))
                                      (_E8865188679_))))
                                (_E8861988628_)))))
                      (_E8861988628_)))))
          (_E8861888683_))))
    (define gx#core-expand-import-source
      (lambda (_hd88613_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _hd88613_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_stx88121_ _internal-expand?88122_)
        (letrec* ((_make-export__9148791488_
                   (lambda (_bind88561_ _phi88562_ _ctx88563_ _name88564_)
                     (let* ((_key88566_
                             (##unchecked-structure-ref
                              _bind88561_
                              '2
                              gx#binding::t
                              '#f))
                            (_export-key88568_
                             (if _name88564_
                                 (gx#core-identifier-key _name88564_)
                                 _key88566_)))
                       (##structure
                        gx#module-export::t
                        _ctx88563_
                        _key88566_
                        _phi88562_
                        _export-key88568_
                        (let ((_$e88571_
                               (##structure-instance-of?
                                _bind88561_
                                'gx#extern-binding::t)))
                          (if _$e88571_
                              _$e88571_
                              (##structure-direct-instance-of?
                               _bind88561_
                               'gx#import-binding::t)))))))
                  (_make-export__0__9148991492_
                   (lambda (_bind88577_)
                     (let* ((_phi88579_ (gx#current-export-expander-phi))
                            (_ctx88581_ (gx#current-expander-context))
                            (_name88583_ '#f))
                       (_make-export__9148791488_
                        _bind88577_
                        _phi88579_
                        _ctx88581_
                        _name88583_))))
                  (_make-export__1__9149091493_
                   (lambda (_bind88585_ _phi88586_)
                     (let* ((_ctx88588_ (gx#current-expander-context))
                            (_name88590_ '#f))
                       (_make-export__9148791488_
                        _bind88585_
                        _phi88586_
                        _ctx88588_
                        _name88590_))))
                  (_make-export__2__9149191494_
                   (lambda (_bind88592_ _phi88593_ _ctx88594_)
                     (let ((_name88596_ '#f))
                       (_make-export__9148791488_
                        _bind88592_
                        _phi88593_
                        _ctx88594_
                        _name88596_))))
                  (_make-export88124_
                   (lambda _g91560_
                     (let ((_g91559_ (##length _g91560_)))
                       (cond ((##fx= _g91559_ 1)
                              (apply (lambda (_bind88577_)
                                       (_make-export__0__9148991492_
                                        _bind88577_))
                                     _g91560_))
                             ((##fx= _g91559_ 2)
                              (apply (lambda (_bind88585_ _phi88586_)
                                       (_make-export__1__9149091493_
                                        _bind88585_
                                        _phi88586_))
                                     _g91560_))
                             ((##fx= _g91559_ 3)
                              (apply (lambda (_bind88592_
                                              _phi88593_
                                              _ctx88594_)
                                       (_make-export__2__9149191494_
                                        _bind88592_
                                        _phi88593_
                                        _ctx88594_))
                                     _g91560_))
                             ((##fx= _g91559_ 4)
                              (apply (lambda (_bind88598_
                                              _phi88599_
                                              _ctx88600_
                                              _name88601_)
                                       (_make-export__9148791488_
                                        _bind88598_
                                        _phi88599_
                                        _ctx88600_
                                        _name88601_))
                                     _g91560_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g91560_))))))
                  (_expand188125_
                   (lambda (_hd88274_ _K88275_ _rest88276_ _r88277_)
                     (let* ((_e8827888310_ _hd88274_)
                            (_E8830588314_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _stx88121_
                                _hd88274_)))
                            (_E8829588393_
                             (lambda ()
                               (if (gx#stx-pair? _e8827888310_)
                                   (let ((_e8830688318_
                                          (gx#syntax-e _e8827888310_)))
                                     (let ((_hd8830788321_
                                            (##car _e8830688318_))
                                           (_tl8830888323_
                                            (##cdr _e8830688318_)))
                                       (if (eq? (gx#stx-e _hd8830788321_)
                                                'import:)
                                           (let ((_in88326_ _tl8830888323_))
                                             (if (gx#stx-list? _in88326_)
                                                 (let _lp88328_ ((_in-rest88330_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _in88326_)
                         (_r88331_ _r88277_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_e8833288339_
                                                           _in-rest88330_)
                                                          (_E8833488343_
                                                           (lambda ()
                                                             (_K88275_
                                                              _rest88276_
                                                              _r88331_)))
                                                          (_E8833388389_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _e8833288339_)
                         (let ((_e8833588347_ (gx#syntax-e _e8833288339_)))
                           (let ((_hd8833688350_ (##car _e8833588347_))
                                 (_tl8833788352_ (##cdr _e8833588347_)))
                             (let* ((_hd88355_ _hd8833688350_)
                                    (_in-rest88357_ _tl8833788352_))
                               (if '#t
                                   (let ((_src88387_
                                          (if (gx#core-bound-module? _hd88355_)
                                              (gx#syntax-local-e__0 _hd88355_)
                                              (if (gx#core-library-module-path?
                                                   _hd88355_)
                                                  (gx#import-module__0
                                                   (gx#core-resolve-library-module-path
                                                    _hd88355_))
                                                  (if (gx#core-library-relative-module-path?
                                                       _hd88355_)
                                                      (gx#import-module__0
                                                       (gx#core-resolve-library-relative-module-path
                                                        _hd88355_))
                                                      (if (gx#stx-string?
                                                           _hd88355_)
                                                          (gx#import-module__0
                                                           (gx#core-resolve-module-path__%
                                                            _hd88355_
                                                            (gx#stx-source
                                                             _stx88121_)))
                                                          (let* ((_e8835888365_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd88355_)
                         (_E8836088369_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; illegal re-export"
                             _stx88121_
                             _hd88355_)))
                         (_E8835988383_
                          (lambda ()
                            (if (gx#stx-pair? _e8835888365_)
                                (let ((_e8836188373_
                                       (gx#syntax-e _e8835888365_)))
                                  (let ((_hd8836288376_ (##car _e8836188373_))
                                        (_tl8836388378_ (##cdr _e8836188373_)))
                                    (if (eq? (gx#stx-e _hd8836288376_) 'in:)
                                        (let ((_spath88381_ _tl8836388378_))
                                          (if '#t
                                              (gx#core-import-nested-module
                                               _spath88381_
                                               _stx88121_)
                                              (_E8836088369_)))
                                        (_E8836088369_))))
                                (_E8836088369_)))))
                    (_E8835988383_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_lp88328_
                                      _in-rest88357_
                                      (_export-imports88126_
                                       _src88387_
                                       _r88331_)))
                                   (_E8833488343_)))))
                         (_E8833488343_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E8833388389_)))
                                                 (_E8830588314_)))
                                           (_E8830588314_))))
                                   (_E8830588314_))))
                            (_E8828288432_
                             (lambda ()
                               (if (gx#stx-pair? _e8827888310_)
                                   (let ((_e8829688397_
                                          (gx#syntax-e _e8827888310_)))
                                     (let ((_hd8829788400_
                                            (##car _e8829688397_))
                                           (_tl8829888402_
                                            (##cdr _e8829688397_)))
                                       (if (eq? (gx#stx-e _hd8829788400_)
                                                'rename:)
                                           (if (gx#stx-pair? _tl8829888402_)
                                               (let ((_e8829988405_
                                                      (gx#syntax-e
                                                       _tl8829888402_)))
                                                 (let ((_hd8830088408_
                                                        (##car _e8829988405_))
                                                       (_tl8830188410_
                                                        (##cdr _e8829988405_)))
                                                   (let ((_id88413_
                                                          _hd8830088408_))
                                                     (if (gx#stx-pair?
                                                          _tl8830188410_)
                                                         (let ((_e8830288415_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl8830188410_)))
                   (let ((_hd8830388418_ (##car _e8830288415_))
                         (_tl8830488420_ (##cdr _e8830288415_)))
                     (let ((_name88423_ _hd8830388418_))
                       (if (gx#stx-null? _tl8830488420_)
                           (if '#t
                               (let* ((_phi88425_
                                       (gx#current-export-expander-phi))
                                      (_$e88427_
                                       (gx#core-resolve-identifier__1
                                        _id88413_
                                        _phi88425_)))
                                 (if _$e88427_
                                     ((lambda (_bind88430_)
                                        (_K88275_
                                         _rest88276_
                                         (cons (_make-export__9148791488_
                                                _bind88430_
                                                _phi88425_
                                                (gx#current-expander-context)
                                                _name88423_)
                                               _r88277_)))
                                      _$e88427_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Reference to unbound identifier"
                                      _stx88121_
                                      _hd88274_
                                      _id88413_)))
                               (_E8829588393_))
                           (_E8829588393_)))))
                 (_E8829588393_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E8829588393_))
                                           (_E8829588393_))))
                                   (_E8829588393_))))
                            (_E8828188481_
                             (lambda ()
                               (if (gx#stx-pair? _e8827888310_)
                                   (let ((_e8828388436_
                                          (gx#syntax-e _e8827888310_)))
                                     (let ((_hd8828488439_
                                            (##car _e8828388436_))
                                           (_tl8828588441_
                                            (##cdr _e8828388436_)))
                                       (if (eq? (gx#stx-e _hd8828488439_)
                                                'spec:)
                                           (if (gx#stx-pair? _tl8828588441_)
                                               (let ((_e8828688444_
                                                      (gx#syntax-e
                                                       _tl8828588441_)))
                                                 (let ((_hd8828788447_
                                                        (##car _e8828688444_))
                                                       (_tl8828888449_
                                                        (##cdr _e8828688444_)))
                                                   (let ((_phi88452_
                                                          _hd8828788447_))
                                                     (if (gx#stx-pair?
                                                          _tl8828888449_)
                                                         (let ((_e8828988454_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl8828888449_)))
                   (let ((_hd8829088457_ (##car _e8828988454_))
                         (_tl8829188459_ (##cdr _e8828988454_)))
                     (let ((_id88462_ _hd8829088457_))
                       (if (gx#stx-pair? _tl8829188459_)
                           (let ((_e8829288464_ (gx#syntax-e _tl8829188459_)))
                             (let ((_hd8829388467_ (##car _e8829288464_))
                                   (_tl8829488469_ (##cdr _e8829288464_)))
                               (let ((_name88472_ _hd8829388467_))
                                 (if (gx#stx-null? _tl8829488469_)
                                     (if (and (gx#stx-fixnum? _phi88452_)
                                              (gx#identifier? _id88462_)
                                              (gx#identifier? _name88472_))
                                         (let* ((_phi88474_
                                                 (gx#stx-e _phi88452_))
                                                (_$e88476_
                                                 (gx#core-resolve-identifier__1
                                                  _id88462_
                                                  _phi88474_)))
                                           (if _$e88476_
                                               ((lambda (_bind88479_)
                                                  (_K88275_
                                                   _rest88276_
                                                   (cons (_make-export__9148791488_
                                                          _bind88479_
                                                          _phi88474_
                                                          (gx#current-expander-context)
                                                          _name88472_)
                                                         _r88277_)))
                                                _$e88476_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _stx88121_
                                                _hd88274_
                                                _id88462_)))
                                         (_E8828288432_))
                                     (_E8828288432_)))))
                           (_E8828288432_)))))
                 (_E8828288432_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E8828288432_))
                                           (_E8828288432_))))
                                   (_E8828288432_))))
                            (_E8828088492_
                             (lambda ()
                               (let ((_id88485_ _e8827888310_))
                                 (if (gx#identifier? _id88485_)
                                     (let ((_$e88487_
                                            (gx#core-resolve-identifier__1
                                             _id88485_
                                             (gx#current-export-expander-phi))))
                                       (if _$e88487_
                                           ((lambda (_bind88490_)
                                              (_K88275_
                                               _rest88276_
                                               (cons (_make-export__0__9148991492_
                                                      _bind88490_)
                                                     _r88277_)))
                                            _$e88487_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _stx88121_
                                            _hd88274_)))
                                     (_E8828188481_)))))
                            (_E8827988556_
                             (lambda ()
                               (if (eq? (gx#stx-e _e8827888310_) '#t)
                                   (if '#t
                                       (let* ((_current-ctx88496_
                                               (gx#current-expander-context))
                                              (_current-phi88498_
                                               (gx#current-export-expander-phi))
                                              (_phi-ctx88500_
                                               (gx#core-context-shift
                                                _current-ctx88496_
                                                _current-phi88498_))
                                              (_phi-bind88502_
                                               (hash->list
                                                (##unchecked-structure-ref
                                                 _phi-ctx88500_
                                                 '2
                                                 gx#expander-context::t
                                                 '#f))))
                                         (let _lp88505_ ((_bind-rest88507_
                                                          _phi-bind88502_)
                                                         (_set88508_ '()))
                                           (let* ((_bind-rest8850988519_
                                                   _bind-rest88507_)
                                                  (_else8851188527_
                                                   (lambda ()
                                                     (_K88275_
                                                      _rest88276_
                                                      (cons (##structure
                                                             gx#export-set::t
                                                             '#f
                                                             _current-phi88498_
                                                             _set88508_)
                                                            _r88277_))))
                                                  (_K8851388537_
                                                   (lambda (_bind-rest88530_
                                                            _bind88531_
                                                            _key88532_)
                                                     (if (or (##structure-direct-instance-of?
                                                              _bind88531_
                                                              'gx#import-binding::t)
                                                             (gx#private-feature-binding?
                                                              _bind88531_))
                                                         (_lp88505_
                                                          _bind-rest88530_
                                                          _set88508_)
                                                         (_lp88505_
                                                          _bind-rest88530_
                                                          (cons (_make-export__2__9149191494_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind88531_
                         _current-phi88498_
                         _current-ctx88496_)
                        _set88508_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _bind-rest8850988519_)
                                                 (let ((_hd8851488540_
                                                        (##car _bind-rest8850988519_))
                                                       (_tl8851588542_
                                                        (##cdr _bind-rest8850988519_)))
                                                   (if (##pair? _hd8851488540_)
                                                       (let ((_hd8851688545_
                                                              (##car _hd8851488540_))
                                                             (_tl8851788547_
                                                              (##cdr _hd8851488540_)))
                                                         (let* ((_key88550_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd8851688545_)
                        (_bind88552_ _tl8851788547_)
                        (_bind-rest88554_ _tl8851588542_))
                   (_K8851388537_ _bind-rest88554_ _bind88552_ _key88550_)))
               (_else8851188527_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_else8851188527_)))))
                                       (_E8828088492_))
                                   (_E8828088492_)))))
                       (_E8827988556_))))
                  (_export-imports88126_
                   (lambda (_src88150_ _r88151_)
                     (letrec* ((_current-ctx88153_
                                (gx#current-expander-context))
                               (_current-phi88154_
                                (gx#current-export-expander-phi))
                               (_import->export88155_
                                (lambda (_in88236_)
                                  (let* ((_in8823788245_ _in88236_)
                                         (_E8823988249_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _in8823788245_)))
                                         (_K8824088256_
                                          (lambda (_phi88252_
                                                   _key88253_
                                                   _out88254_)
                                            (##structure
                                             gx#module-export::t
                                             _current-ctx88153_
                                             _key88253_
                                             _phi88252_
                                             _key88253_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _in8823788245_
                                         'gx#module-import::t)
                                        (let* ((_e8824188259_
                                                (##unchecked-structure-ref
                                                 _in8823788245_
                                                 '1
                                                 gx#module-import::t
                                                 '#f))
                                               (_out88262_ _e8824188259_)
                                               (_e8824288264_
                                                (##unchecked-structure-ref
                                                 _in8823788245_
                                                 '2
                                                 gx#module-import::t
                                                 '#f))
                                               (_key88267_ _e8824288264_)
                                               (_e8824388269_
                                                (##unchecked-structure-ref
                                                 _in8823788245_
                                                 '3
                                                 gx#module-import::t
                                                 '#f))
                                               (_phi88272_ _e8824388269_))
                                          (_K8824088256_
                                           _phi88272_
                                           _key88267_
                                           _out88262_))
                                        (_E8823988249_)))))
                               (_fold-e88156_
                                (lambda (_in88158_ _r88159_)
                                  (let* ((_in8816088174_ _in88158_)
                                         (_else8816388182_
                                          (lambda () _r88159_)))
                                    (let ((_K8816988218_
                                           (lambda (_phi88214_
                                                    _key88215_
                                                    _out88216_)
                                             (if (and (fx= _phi88214_
                                                           _current-phi88154_)
                                                      (eq? _src88150_
                                                           (##unchecked-structure-ref
                                                            _out88216_
                                                            '1
                                                            gx#module-export::t
                                                            '#f)))
                                                 (cons (_import->export88155_
                                                        _in88158_)
                                                       _r88159_)
                                                 _r88159_)))
                                          (_K8816588193_
                                           (lambda (_imports88186_
                                                    _phi88187_
                                                    _ctx88188_)
                                             (if (and (fx= _phi88187_
                                                           _current-phi88154_)
                                                      (eq? _src88150_
                                                           _ctx88188_))
                                                 (foldl1 (lambda (_in88190_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r88191_)
                   (cons (_import->export88155_ _in88190_) _r88191_))
                 _r88159_
                 _imports88186_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _r88159_))))
                                      (let ((_try-match8816288211_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _in8816088174_
                                                    'gx#import-set::t)
                                                   (let* ((_e8816688196_
                                                           (##unchecked-structure-ref
                                                            _in8816088174_
                                                            '1
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e8816788201_
                                                           (##unchecked-structure-ref
                                                            _in8816088174_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e8816888206_
                                                           (##unchecked-structure-ref
                                                            _in8816088174_
                                                            '3
                                                            gx#import-set::t
                                                            '#f)))
                                                     (let ((_ctx88199_
                                                            _e8816688196_)
                                                           (_phi88204_
                                                            _e8816788201_)
                                                           (_imports88209_
                                                            _e8816888206_))
                                                       (_K8816588193_
                                                        _imports88209_
                                                        _phi88204_
                                                        _ctx88199_)))
                                                   (_else8816388182_)))))
                                        (if (##structure-direct-instance-of?
                                             _in8816088174_
                                             'gx#module-import::t)
                                            (let* ((_e8817088221_
                                                    (##unchecked-structure-ref
                                                     _in8816088174_
                                                     '1
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e8817188226_
                                                    (##unchecked-structure-ref
                                                     _in8816088174_
                                                     '2
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e8817288231_
                                                    (##unchecked-structure-ref
                                                     _in8816088174_
                                                     '3
                                                     gx#module-import::t
                                                     '#f)))
                                              (let ((_out88224_ _e8817088221_)
                                                    (_key88229_ _e8817188226_)
                                                    (_phi88234_ _e8817288231_))
                                                (_K8816988218_
                                                 _phi88234_
                                                 _key88229_
                                                 _out88224_)))
                                            (_try-match8816288211_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _src88150_
                              _current-phi88154_
                              (foldl1 _fold-e88156_
                                      '()
                                      (##unchecked-structure-ref
                                       _current-ctx88153_
                                       '8
                                       gx#module-context::t
                                       '#f)))
                             _r88151_))))
                  (_export!88127_
                   (lambda (_rbody88140_)
                     (letrec* ((_current-ctx88142_
                                (gx#current-expander-context))
                               (_fold-e88143_
                                (lambda (_out88147_ _r88148_)
                                  (if (##structure-direct-instance-of?
                                       _out88147_
                                       'gx#module-export::t)
                                      (cons _out88147_ _r88148_)
                                      (if (##structure-direct-instance-of?
                                           _out88147_
                                           'gx#export-set::t)
                                          (foldl1 cons
                                                  _r88148_
                                                  (##unchecked-structure-ref
                                                   _out88147_
                                                   '3
                                                   gx#export-set::t
                                                   '#f))
                                          _r88148_)))))
                       (let ((_body88145_ (reverse _rbody88140_)))
                         (##unchecked-structure-set!
                          _current-ctx88142_
                          (foldl1 _fold-e88143_
                                  (##unchecked-structure-ref
                                   _current-ctx88142_
                                   '9
                                   gx#module-context::t
                                   '#f)
                                  _body88145_)
                          '9
                          gx#module-context::t
                          '#f)
                         _body88145_))))
                  (_expanded-export?88128_
                   (lambda (_e88135_)
                     (let ((_$e88137_
                            (##structure-direct-instance-of?
                             _e88135_
                             'gx#module-export::t)))
                       (if _$e88137_
                           _$e88137_
                           (##structure-direct-instance-of?
                            _e88135_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _internal-expand?88122_)
              (let ((_rbody88133_
                     (gx#core-expand-import/export
                      _stx88121_
                      _expanded-export?88128_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _expand188125_)))
                (if _internal-expand?88122_
                    (reverse _rbody88133_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons '%#export (_export!88127_ _rbody88133_))
                     (gx#stx-source _stx88121_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _stx88121_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _stx88121_))))))
    (define gx#core-expand-export%__0
      (lambda (_stx88606_)
        (let ((_internal-expand?88608_ '#f))
          (gx#core-expand-export%__% _stx88606_ _internal-expand?88608_))))
    (define gx#core-expand-export%
      (lambda _g91562_
        (let ((_g91561_ (##length _g91562_)))
          (cond ((##fx= _g91561_ 1)
                 (apply (lambda (_stx88606_)
                          (gx#core-expand-export%__0 _stx88606_))
                        _g91562_))
                ((##fx= _g91561_ 2)
                 (apply (lambda (_stx88610_ _internal-expand?88611_)
                          (gx#core-expand-export%__%
                           _stx88610_
                           _internal-expand?88611_))
                        _g91562_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g91562_))))))
    (define gx#core-expand-export-source
      (lambda (_hd88118_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _hd88118_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_stx88088_)
        (let* ((_e8808988096_ _stx88088_)
               (_E8809188100_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8808988096_)))
               (_E8809088114_
                (lambda ()
                  (if (gx#stx-pair? _e8808988096_)
                      (let ((_e8809288104_ (gx#syntax-e _e8808988096_)))
                        (let ((_hd8809388107_ (##car _e8809288104_))
                              (_tl8809488109_ (##cdr _e8809288104_)))
                          (let ((_body88112_ _tl8809488109_))
                            (if (gx#identifier-list? _body88112_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _body88112_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _body88112_))
                                   (gx#stx-source _stx88088_)))
                                (_E8809188100_)))))
                      (_E8809188100_)))))
          (_E8809088114_))))
    (define gx#core-bind-feature!__%
      (lambda (_id88054_ _private?88055_ _phi88056_ _ctx88057_)
        (gx#core-bind-syntax!__%
         _id88054_
         ((if _private?88055_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _id88054_))
         _private?88055_
         _phi88056_
         _ctx88057_)))
    (define gx#core-bind-feature!__0
      (lambda (_id88062_)
        (let* ((_private?88064_ '#f)
               (_phi88066_ (gx#current-expander-phi))
               (_ctx88068_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id88062_
           _private?88064_
           _phi88066_
           _ctx88068_))))
    (define gx#core-bind-feature!__1
      (lambda (_id88070_ _private?88071_)
        (let* ((_phi88073_ (gx#current-expander-phi))
               (_ctx88075_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id88070_
           _private?88071_
           _phi88073_
           _ctx88075_))))
    (define gx#core-bind-feature!__2
      (lambda (_id88077_ _private?88078_ _phi88079_)
        (let ((_ctx88081_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id88077_
           _private?88078_
           _phi88079_
           _ctx88081_))))
    (define gx#core-bind-feature!
      (lambda _g91564_
        (let ((_g91563_ (##length _g91564_)))
          (cond ((##fx= _g91563_ 1)
                 (apply (lambda (_id88062_)
                          (gx#core-bind-feature!__0 _id88062_))
                        _g91564_))
                ((##fx= _g91563_ 2)
                 (apply (lambda (_id88070_ _private?88071_)
                          (gx#core-bind-feature!__1 _id88070_ _private?88071_))
                        _g91564_))
                ((##fx= _g91563_ 3)
                 (apply (lambda (_id88077_ _private?88078_ _phi88079_)
                          (gx#core-bind-feature!__2
                           _id88077_
                           _private?88078_
                           _phi88079_))
                        _g91564_))
                ((##fx= _g91563_ 4)
                 (apply (lambda (_id88083_
                                 _private?88084_
                                 _phi88085_
                                 _ctx88086_)
                          (gx#core-bind-feature!__%
                           _id88083_
                           _private?88084_
                           _phi88085_
                           _ctx88086_))
                        _g91564_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g91564_))))))))
