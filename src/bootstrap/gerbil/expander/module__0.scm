(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1708387688)
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
      (lambda _$args92141_
        (apply make-instance gx#module-import::t _$args92141_)))
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
      (lambda _$args92138_
        (apply make-instance gx#module-export::t _$args92138_)))
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
      (lambda _$args92135_
        (apply make-instance gx#import-set::t _$args92135_)))
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
      (lambda _$args92132_
        (apply make-instance gx#export-set::t _$args92132_)))
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
      (lambda _$args92129_
        (apply make-instance gx#import-expander::t _$args92129_)))
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
      (lambda _$args92126_
        (apply make-instance gx#export-expander::t _$args92126_)))
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
      (lambda _$args92123_
        (apply make-instance gx#import-export-expander::t _$args92123_)))
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
      (lambda (_path92120_ _fun92121_)
        (call-with-input-file
         (cons 'path: (cons _path92120_ gx#source-file-settings))
         _fun92121_)))
    (define gx#module-context:::init!
      (lambda (_self92114_ _id92115_ _super92116_ _ns92117_ _path92118_)
        (if (##fx< '11 (##structure-length _self92114_))
            (begin
              (##unchecked-structure-set!
               _self92114_
               _id92115_
               '1
               (##structure-type _self92114_)
               '#f)
              (##unchecked-structure-set!
               _self92114_
               (make-hash-table-eq)
               '2
               (##structure-type _self92114_)
               '#f)
              (##unchecked-structure-set!
               _self92114_
               _super92116_
               '3
               (##structure-type _self92114_)
               '#f)
              (##unchecked-structure-set!
               _self92114_
               '#f
               '4
               (##structure-type _self92114_)
               '#f)
              (##unchecked-structure-set!
               _self92114_
               '#f
               '5
               (##structure-type _self92114_)
               '#f)
              (##unchecked-structure-set!
               _self92114_
               _ns92117_
               '6
               (##structure-type _self92114_)
               '#f)
              (##unchecked-structure-set!
               _self92114_
               _path92118_
               '7
               (##structure-type _self92114_)
               '#f)
              (##unchecked-structure-set!
               _self92114_
               '()
               '8
               (##structure-type _self92114_)
               '#f)
              (##unchecked-structure-set!
               _self92114_
               '()
               '9
               (##structure-type _self92114_)
               '#f)
              (##unchecked-structure-set!
               _self92114_
               '#f
               '10
               (##structure-type _self92114_)
               '#f)
              (##unchecked-structure-set!
               _self92114_
               '#f
               '11
               (##structure-type _self92114_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self92114_
                   '11
                   (##vector-length _self92114_)))))
    (bind-method!__%
     gx#module-context::t
     ':init!
     gx#module-context:::init!
     '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_self91958_ _ctx91959_ _root91960_)
        (let ((_super91968_
               (let ((_$e91962_ _root91960_))
                 (if _$e91962_
                     _$e91962_
                     (let ((_$e91965_ (gx#core-context-root__0)))
                       (if _$e91965_
                           _$e91965_
                           (let ((__obj92183
                                  (##structure gx#root-context::t '#f '#f)))
                             (let ((__constructor92184
                                    (direct-method-ref
                                     gx#root-context::t
                                     __obj92183
                                     ':init!)))
                               (if __constructor92184
                                   (__constructor92184 __obj92183)
                                   (error '"missing constructor method implementation"
                                          'class:
                                          gx#root-context::t
                                          'method:
                                          ':init!)))
                             __obj92183)))))))
          (if _ctx91959_
              (let ((_id91971_
                     (##structure-ref
                      _ctx91959_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_path91972_
                     (##structure-ref _ctx91959_ '7 gx#module-context::t '#f))
                    (_in91973_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _ctx91959_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_e91974_
                     (make-promise (lambda () (gx#eval-module _ctx91959_)))))
                (if (##fx< '8 (##structure-length _self91958_))
                    (begin
                      (##unchecked-structure-set!
                       _self91958_
                       _id91971_
                       '1
                       (##structure-type _self91958_)
                       '#f)
                      (##unchecked-structure-set!
                       _self91958_
                       (make-hash-table-eq 'size: (length _in91973_))
                       '2
                       (##structure-type _self91958_)
                       '#f)
                      (##unchecked-structure-set!
                       _self91958_
                       _super91968_
                       '3
                       (##structure-type _self91958_)
                       '#f)
                      (##unchecked-structure-set!
                       _self91958_
                       '#f
                       '4
                       (##structure-type _self91958_)
                       '#f)
                      (##unchecked-structure-set!
                       _self91958_
                       '#f
                       '5
                       (##structure-type _self91958_)
                       '#f)
                      (##unchecked-structure-set!
                       _self91958_
                       _path91972_
                       '6
                       (##structure-type _self91958_)
                       '#f)
                      (##unchecked-structure-set!
                       _self91958_
                       _in91973_
                       '7
                       (##structure-type _self91958_)
                       '#f)
                      (##unchecked-structure-set!
                       _self91958_
                       _e91974_
                       '8
                       (##structure-type _self91958_)
                       '#f))
                    (error '"struct-instance-init!: too many arguments for struct"
                           _self91958_
                           '8
                           (##vector-length _self91958_)))
                (for-each
                 (lambda (_g9197591977_)
                   (gx#core-bind-weak-import!__% _g9197591977_ _self91958_))
                 _in91973_))
              (if (##fx< '8 (##structure-length _self91958_))
                  (begin
                    (##unchecked-structure-set!
                     _self91958_
                     '#f
                     '1
                     (##structure-type _self91958_)
                     '#f)
                    (##unchecked-structure-set!
                     _self91958_
                     (make-hash-table-eq)
                     '2
                     (##structure-type _self91958_)
                     '#f)
                    (##unchecked-structure-set!
                     _self91958_
                     _super91968_
                     '3
                     (##structure-type _self91958_)
                     '#f)
                    (##unchecked-structure-set!
                     _self91958_
                     '#f
                     '4
                     (##structure-type _self91958_)
                     '#f)
                    (##unchecked-structure-set!
                     _self91958_
                     '#f
                     '5
                     (##structure-type _self91958_)
                     '#f)
                    (##unchecked-structure-set!
                     _self91958_
                     '#f
                     '6
                     (##structure-type _self91958_)
                     '#f)
                    (##unchecked-structure-set!
                     _self91958_
                     '()
                     '7
                     (##structure-type _self91958_)
                     '#f)
                    (##unchecked-structure-set!
                     _self91958_
                     '#f
                     '8
                     (##structure-type _self91958_)
                     '#f))
                  (error '"struct-instance-init!: too many arguments for struct"
                         _self91958_
                         '8
                         (##vector-length _self91958_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_self91983_ _ctx91984_)
        (let ((_root91986_ '#f))
          (gx#prelude-context:::init!__% _self91983_ _ctx91984_ _root91986_))))
    (define gx#prelude-context:::init!
      (lambda _g92190_
        (let ((_g92189_ (##length _g92190_)))
          (cond ((##fx= _g92189_ 2)
                 (apply (lambda (_self91983_ _ctx91984_)
                          (gx#prelude-context:::init!__0
                           _self91983_
                           _ctx91984_))
                        _g92190_))
                ((##fx= _g92189_ 3)
                 (apply (lambda (_self91988_ _ctx91989_ _root91990_)
                          (gx#prelude-context:::init!__%
                           _self91988_
                           _ctx91989_
                           _root91990_))
                        _g92190_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g92190_))))))
    (bind-method!__%
     gx#prelude-context::t
     ':init!
     gx#prelude-context:::init!
     '#f)
    (define gx#import-export-expander-init!
      (lambda (_self91832_ _e91833_)
        (if (##fx< '3 (##structure-length _self91832_))
            (begin
              (##unchecked-structure-set!
               _self91832_
               _e91833_
               '1
               (##structure-type _self91832_)
               '#f)
              (##unchecked-structure-set!
               _self91832_
               (gx#current-expander-context)
               '2
               (##structure-type _self91832_)
               '#f)
              (##unchecked-structure-set!
               _self91832_
               (fx- (gx#current-expander-phi) '1)
               '3
               (##structure-type _self91832_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self91832_
                   '3
                   (##vector-length _self91832_)))))
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
      (lambda (_g9145891461_ _g9145991463_)
        (gx#core-apply-user-expander__%
         _g9145891461_
         _g9145991463_
         'apply-import-expander)))
    (bind-method!__%
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_g9132991332_ _g9133091334_)
        (gx#core-apply-user-expander__%
         _g9132991332_
         _g9133091334_
         'apply-export-expander)))
    (bind-method!__%
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_ctx91200_)
        (let* ((_path91202_
                (##structure-ref _ctx91200_ '7 gx#module-context::t '#f))
               (_path91204_
                (if (pair? _path91202_) (last _path91202_) _path91202_)))
          (if (string? _path91204_) _path91204_ '#f))))
    (define gx#import-module__%
      (lambda (_path91176_ _reload?91177_ _eval?91178_)
        (let ((_ctx91180_
               ((gx#current-expander-module-import)
                _path91176_
                _reload?91177_)))
          (if (and _ctx91180_ _eval?91178_)
              (gx#eval-module _ctx91180_)
              '#!void)
          _ctx91180_)))
    (define gx#import-module__0
      (lambda (_path91185_)
        (let* ((_reload?91187_ '#f) (_eval?91189_ '#f))
          (gx#import-module__% _path91185_ _reload?91187_ _eval?91189_))))
    (define gx#import-module__1
      (lambda (_path91191_ _reload?91192_)
        (let ((_eval?91194_ '#f))
          (gx#import-module__% _path91191_ _reload?91192_ _eval?91194_))))
    (define gx#import-module
      (lambda _g92192_
        (let ((_g92191_ (##length _g92192_)))
          (cond ((##fx= _g92191_ 1)
                 (apply (lambda (_path91185_)
                          (gx#import-module__0 _path91185_))
                        _g92192_))
                ((##fx= _g92191_ 2)
                 (apply (lambda (_path91191_ _reload?91192_)
                          (gx#import-module__1 _path91191_ _reload?91192_))
                        _g92192_))
                ((##fx= _g92191_ 3)
                 (apply (lambda (_path91196_ _reload?91197_ _eval?91198_)
                          (gx#import-module__%
                           _path91196_
                           _reload?91197_
                           _eval?91198_))
                        _g92192_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g92192_))))))
    (define gx#eval-module
      (lambda (_mod91173_) ((gx#current-expander-module-eval) _mod91173_)))
    (define gx#core-eval-module
      (lambda (_obj91158_)
        (letrec ((_force-e91160_
                  (lambda (_getf91169_ _e91170_)
                    (call-with-parameters
                     (lambda () (force (_getf91169_ _e91170_)))
                     gx#current-expander-context
                     _e91170_
                     gx#current-expander-phi
                     '0))))
          (let _recur91162_ ((_e91164_ _obj91158_))
            (if (##structure-instance-of? _e91164_ 'gx#module-context::t)
                (begin
                  (let ((_$e91166_ (gx#core-context-prelude__% _e91164_)))
                    (if _$e91166_ (_recur91162_ _$e91166_) '#!void))
                  (_force-e91160_ gx#module-context-e _e91164_))
                (if (##structure-instance-of? _e91164_ 'gx#prelude-context::t)
                    (_force-e91160_ gx#prelude-context-e _e91164_)
                    (if (gx#stx-string? _e91164_)
                        (_recur91162_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _e91164_)))
                        (if (gx#core-library-module-path? _e91164_)
                            (_recur91162_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _e91164_)))
                            (error '"Cannot eval module" _obj91158_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_ctx91141_)
        (let _lp91143_ ((_e91145_ _ctx91141_))
          (if (or (##structure-instance-of? _e91145_ 'gx#module-context::t)
                  (##structure-instance-of? _e91145_ 'gx#local-context::t))
              (_lp91143_
               (##unchecked-structure-ref _e91145_ '3 gx#phi-context::t '#f))
              (if (##structure-instance-of? _e91145_ 'gx#prelude-context::t)
                  _e91145_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_ctx91154_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _ctx91154_))))
    (define gx#core-context-prelude
      (lambda _g92194_
        (let ((_g92193_ (##length _g92194_)))
          (cond ((##fx= _g92193_ 0)
                 (apply (lambda () (gx#core-context-prelude__0)) _g92194_))
                ((##fx= _g92193_ 1)
                 (apply (lambda (_ctx91156_)
                          (gx#core-context-prelude__% _ctx91156_))
                        _g92194_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g92194_))))))
    (define gx#core-module->prelude-context
      (lambda (_ctx91131_)
        (let* ((_ht91133_ (gx#current-expander-module-registry))
               (_$e91135_ (hash-get _ht91133_ _ctx91131_)))
          (if _$e91135_
              (values _$e91135_)
              (let ((_pre91138_
                     (let ((__obj92185
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
                       (gx#prelude-context:::init! __obj92185 _ctx91131_)
                       __obj92185)))
                (hash-put! _ht91133_ _ctx91131_ _pre91138_)
                _pre91138_)))))
    (define gx#core-import-module__%
      (lambda (_rpath91012_ _reload?91013_)
        (letrec ((_import-source91015_
                  (lambda (_path91100_)
                    (if (member _path91100_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _path91100_)
                        '#!void)
                    (call-with-parameters
                     (lambda ()
                       (let ((_g92195_ (gx#core-read-module _path91100_)))
                         (begin
                           (let ((_g92196_
                                  (if (##values? _g92195_)
                                      (##vector-length _g92195_)
                                      1)))
                             (if (not (##fx= _g92196_ 4))
                                 (error "Context expects 4 values" _g92196_)))
                           (let ((_pre91103_ (##vector-ref _g92195_ 0))
                                 (_id91104_ (##vector-ref _g92195_ 1))
                                 (_ns91105_ (##vector-ref _g92195_ 2))
                                 (_body91106_ (##vector-ref _g92195_ 3)))
                             (let* ((_prelude91111_
                                     (if (##structure-instance-of?
                                          _pre91103_
                                          'gx#prelude-context::t)
                                         _pre91103_
                                         (if (##structure-instance-of?
                                              _pre91103_
                                              'gx#module-context::t)
                                             (gx#core-module->prelude-context
                                              _pre91103_)
                                             (if (string? _pre91103_)
                                                 (gx#core-module->prelude-context
                                                  (gx#core-import-module__0
                                                   _pre91103_))
                                                 (if (not _pre91103_)
                                                     (let ((_$e91108_
                                                            (gx#current-expander-module-prelude)))
                                                       (if _$e91108_
                                                           _$e91108_
                                                           (let ((__obj92186
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
                     (gx#prelude-context:::init! __obj92186 '#f)
                     __obj92186)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error '"Cannot import module; unknown prelude"
                                                            _rpath91012_
                                                            _pre91103_))))))
                                    (_ctx91113_
                                     (let ((__obj92187
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
                                        __obj92187
                                        _id91104_
                                        _prelude91111_
                                        _ns91105_
                                        _path91100_)
                                       __obj92187))
                                    (_body91115_
                                     (gx#core-expand-module-begin
                                      _body91106_
                                      _ctx91113_))
                                    (_body91117_
                                     (gx#core-quote-syntax__%
                                      (gx#core-cons '%#begin _body91115_)
                                      _path91100_
                                      _ctx91113_
                                      '())))
                               (##unchecked-structure-set!
                                _ctx91113_
                                (make-promise
                                 (lambda () (gx#eval-syntax* _body91117_)))
                                '10
                                gx#module-context::t
                                '#f)
                               (##unchecked-structure-set!
                                _ctx91113_
                                _body91117_
                                '11
                                gx#module-context::t
                                '#f)
                               (hash-put!
                                (gx#current-expander-module-registry)
                                _path91100_
                                _ctx91113_)
                               (hash-put!
                                (gx#current-expander-module-registry)
                                _id91104_
                                _ctx91113_)
                               _ctx91113_)))))
                     gx#current-expander-context
                     (gx#core-context-root__0)
                     gx#current-expander-marks
                     '()
                     gx#current-expander-phi
                     '0
                     gx#current-expander-path
                     (cons _path91100_ (gx#current-expander-path))
                     gx#current-import-expander-phi
                     '#f
                     gx#current-export-expander-phi
                     '#f)))
                 (_import-submodule91016_
                  (lambda (_rpath91028_)
                    (let* ((_rpath9102991036_ _rpath91028_)
                           (_E9103191040_
                            (lambda ()
                              (error '"No clause matching" _rpath9102991036_)))
                           (_K9103291088_
                            (lambda (_refs91043_ _origin91044_)
                              (let ((_ctx91046_
                                     (if _origin91044_
                                         (gx#core-import-module__%
                                          _origin91044_
                                          _reload?91013_)
                                         (gx#current-expander-context))))
                                (let _lp91048_ ((_rest91050_ _refs91043_)
                                                (_ctx91051_ _ctx91046_))
                                  (let* ((_rest9105291060_ _rest91050_)
                                         (_else9105491068_
                                          (lambda () _ctx91051_))
                                         (_K9105691076_
                                          (lambda (_rest91071_ _id91072_)
                                            (let ((_bind91074_
                                                   (gx#resolve-identifier__%
                                                    _id91072_
                                                    '0
                                                    _ctx91051_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _bind91074_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _bind91074_
                                                         '4
                                                         gx#syntax-binding::t
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_lp91048_
                                                   _rest91071_
                                                   (##unchecked-structure-ref
                                                    _bind91074_
                                                    '4
                                                    gx#syntax-binding::t
                                                    '#f))
                                                  (error '"Cannot import submodule; not bound as a module"
                                                         _rpath91028_
                                                         _id91072_
                                                         _bind91074_))))))
                                    (if (##pair? _rest9105291060_)
                                        (let ((_hd9105791079_
                                               (##car _rest9105291060_))
                                              (_tl9105891081_
                                               (##cdr _rest9105291060_)))
                                          (let* ((_id91084_ _hd9105791079_)
                                                 (_rest91086_ _tl9105891081_))
                                            (_K9105691076_
                                             _rest91086_
                                             _id91084_)))
                                        (_else9105491068_))))))))
                      (if (##pair? _rpath9102991036_)
                          (let ((_hd9103391091_ (##car _rpath9102991036_))
                                (_tl9103491093_ (##cdr _rpath9102991036_)))
                            (let* ((_origin91096_ _hd9103391091_)
                                   (_refs91098_ _tl9103491093_))
                              (_K9103291088_ _refs91098_ _origin91096_)))
                          (_E9103191040_))))))
          (let ((_$e91018_
                 (if (not _reload?91013_)
                     (hash-get
                      (gx#current-expander-module-registry)
                      _rpath91012_)
                     '#f)))
            (if _$e91018_
                (values _$e91018_)
                (if (list? _rpath91012_)
                    (_import-submodule91016_ _rpath91012_)
                    (if (gx#core-library-module-path? _rpath91012_)
                        (let ((_ctx91021_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _rpath91012_)
                                _reload?91013_)))
                          (hash-put!
                           (gx#current-expander-module-registry)
                           _rpath91012_
                           _ctx91021_)
                          _ctx91021_)
                        (let* ((_npath91023_ (path-normalize _rpath91012_))
                               (_$e91025_
                                (if (not _reload?91013_)
                                    (hash-get
                                     (gx#current-expander-module-registry)
                                     _npath91023_)
                                    '#f)))
                          (if _$e91025_
                              (values _$e91025_)
                              (_import-source91015_ _npath91023_))))))))))
    (define gx#core-import-module__0
      (lambda (_rpath91124_)
        (let ((_reload?91126_ '#f))
          (gx#core-import-module__% _rpath91124_ _reload?91126_))))
    (define gx#core-import-module
      (lambda _g92198_
        (let ((_g92197_ (##length _g92198_)))
          (cond ((##fx= _g92197_ 1)
                 (apply (lambda (_rpath91124_)
                          (gx#core-import-module__0 _rpath91124_))
                        _g92198_))
                ((##fx= _g92197_ 2)
                 (apply (lambda (_rpath91128_ _reload?91129_)
                          (gx#core-import-module__%
                           _rpath91128_
                           _reload?91129_))
                        _g92198_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g92198_))))))
    (define gx#core-read-module
      (lambda (_path91001_)
        (with-catch
         (lambda (_exn91003_)
           (if (and (datum-parsing-exception? _exn91003_)
                    (eq? (datum-parsing-exception-filepos _exn91003_) '0))
               (gx#core-read-module/lang _path91001_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _path91001_
                (call-with-parameters
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_g9100591007_)
                      (display-exception _exn91003_ _g9100591007_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _path91001_)))))
    (define gx#core-read-module/sexp
      (lambda (_path90864_)
        (let _lp90866_ ((_body90868_ (read-syntax-from-file _path90864_))
                        (_pre90869_ '#f)
                        (_ns90870_ '#f)
                        (_pkg90871_ '#f))
          (let* ((_e9087290896_ _body90868_)
                 (_E9088890918_
                  (lambda ()
                    (let ((_g92199_
                           (if _pkg90871_
                               (values _pre90869_ _ns90870_ _pkg90871_)
                               (gx#core-read-module-package
                                _path90864_
                                _pre90869_
                                _ns90870_))))
                      (begin
                        (let ((_g92200_
                               (if (##values? _g92199_)
                                   (##vector-length _g92199_)
                                   1)))
                          (if (not (##fx= _g92200_ 3))
                              (error "Context expects 3 values" _g92200_)))
                        (let ((_pre90900_ (##vector-ref _g92199_ 0))
                              (_ns90901_ (##vector-ref _g92199_ 1))
                              (_pkg90902_ (##vector-ref _g92199_ 2)))
                          (let* ((_prelude90904_
                                  (if (gx#core-bound-module-prelude?
                                       _pre90900_)
                                      (gx#syntax-local-e__0 _pre90900_)
                                      (if (gx#core-library-module-path?
                                           _pre90900_)
                                          (gx#core-resolve-library-module-path
                                           _pre90900_)
                                          (if (gx#stx-string? _pre90900_)
                                              (gx#core-resolve-module-path__%
                                               _pre90900_
                                               _path90864_)
                                              (gx#stx-e _pre90900_)))))
                                 (_path-id90906_
                                  (gx#core-module-path->namespace _path90864_))
                                 (_pkg-id90908_
                                  (if _pkg90902_
                                      (string-append
                                       _pkg90902_
                                       '"/"
                                       _path-id90906_)
                                      _path-id90906_))
                                 (_module-id90910_
                                  (string->symbol _pkg-id90908_))
                                 (_module-ns90915_
                                  (if (eq? _ns90901_ '#!void)
                                      '#f
                                      (let ((_$e90912_ _ns90901_))
                                        (if _$e90912_
                                            _$e90912_
                                            _pkg-id90908_)))))
                            (values _prelude90904_
                                    _module-id90910_
                                    _module-ns90915_
                                    _body90868_)))))))
                 (_E9088190947_
                  (lambda ()
                    (if (gx#stx-pair? _e9087290896_)
                        (let ((_e9088990922_ (gx#syntax-e _e9087290896_)))
                          (let ((_hd9089090925_ (##car _e9088990922_))
                                (_tl9089190927_ (##cdr _e9088990922_)))
                            (if (eq? (gx#stx-e _hd9089090925_) 'package:)
                                (if (gx#stx-pair? _tl9089190927_)
                                    (let ((_e9089290930_
                                           (gx#syntax-e _tl9089190927_)))
                                      (let ((_hd9089390933_
                                             (##car _e9089290930_))
                                            (_tl9089490935_
                                             (##cdr _e9089290930_)))
                                        (let* ((_pkg90938_ _hd9089390933_)
                                               (_rest90940_ _tl9089490935_))
                                          (if '#t
                                              (let ((_pkg90945_
                                                     (if (gx#identifier?
                                                          _pkg90938_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _pkg90938_))
                                                         (if (or (gx#stx-string?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _pkg90938_)
                         (gx#stx-false? _pkg90938_))
                     (gx#stx-e _pkg90938_)
                     (gx#raise-syntax-error
                      'import
                      '"Bad syntax; Illegal package name"
                      _pkg90938_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp90866_
                                                 _rest90940_
                                                 _pre90869_
                                                 _ns90870_
                                                 _pkg90945_))
                                              (_E9088890918_)))))
                                    (_E9088890918_))
                                (_E9088890918_))))
                        (_E9088890918_))))
                 (_E9087490973_
                  (lambda ()
                    (if (gx#stx-pair? _e9087290896_)
                        (let ((_e9088290951_ (gx#syntax-e _e9087290896_)))
                          (let ((_hd9088390954_ (##car _e9088290951_))
                                (_tl9088490956_ (##cdr _e9088290951_)))
                            (if (eq? (gx#stx-e _hd9088390954_) 'namespace:)
                                (if (gx#stx-pair? _tl9088490956_)
                                    (let ((_e9088590959_
                                           (gx#syntax-e _tl9088490956_)))
                                      (let ((_hd9088690962_
                                             (##car _e9088590959_))
                                            (_tl9088790964_
                                             (##cdr _e9088590959_)))
                                        (let* ((_ns90967_ _hd9088690962_)
                                               (_rest90969_ _tl9088790964_))
                                          (if '#t
                                              (let ((_ns90971_
                                                     (if (gx#identifier?
                                                          _ns90967_)
                                                         (symbol->string
                                                          (gx#stx-e _ns90967_))
                                                         (if (gx#stx-string?
                                                              _ns90967_)
                                                             (gx#stx-e
                                                              _ns90967_)
                                                             (if (gx#stx-false?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _ns90967_)
                         '#!void
                         (gx#raise-syntax-error
                          'import
                          '"Bad syntax; illegal namespace"
                          _ns90967_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp90866_
                                                 _rest90969_
                                                 _pre90869_
                                                 _ns90971_
                                                 _pkg90871_))
                                              (_E9088190947_)))))
                                    (_E9088190947_))
                                (_E9088190947_))))
                        (_E9088190947_))))
                 (_E9087390997_
                  (lambda ()
                    (if (gx#stx-pair? _e9087290896_)
                        (let ((_e9087590977_ (gx#syntax-e _e9087290896_)))
                          (let ((_hd9087690980_ (##car _e9087590977_))
                                (_tl9087790982_ (##cdr _e9087590977_)))
                            (if (eq? (gx#stx-e _hd9087690980_) 'prelude:)
                                (if (gx#stx-pair? _tl9087790982_)
                                    (let ((_e9087890985_
                                           (gx#syntax-e _tl9087790982_)))
                                      (let ((_hd9087990988_
                                             (##car _e9087890985_))
                                            (_tl9088090990_
                                             (##cdr _e9087890985_)))
                                        (let* ((_prelude90993_ _hd9087990988_)
                                               (_rest90995_ _tl9088090990_))
                                          (if '#t
                                              (_lp90866_
                                               _rest90995_
                                               _prelude90993_
                                               _ns90870_
                                               _pkg90871_)
                                              (_E9087490973_)))))
                                    (_E9087490973_))
                                (_E9087490973_))))
                        (_E9087490973_)))))
            (_E9087390997_)))))
    (define gx#core-read-module/lang
      (lambda (_path90691_)
        (letrec ((_default-read-module-body90693_
                  (lambda (_inp90856_)
                    (let _lp90858_ ((_body90860_ '()))
                      (let ((_next90862_ (read-syntax _inp90856_)))
                        (if (eof-object? _next90862_)
                            (reverse _body90860_)
                            (_lp90858_ (cons _next90862_ _body90860_)))))))
                 (_read-body90694_
                  (lambda (_inp90775_
                           _pre90776_
                           _ns90777_
                           _pkg90778_
                           _args90779_)
                    (let ((_g92201_
                           (if _pkg90778_
                               (values _pre90776_ _ns90777_ _pkg90778_)
                               (gx#core-read-module-package
                                _path90691_
                                _pre90776_
                                _ns90777_))))
                      (begin
                        (let ((_g92202_
                               (if (##values? _g92201_)
                                   (##vector-length _g92201_)
                                   1)))
                          (if (not (##fx= _g92202_ 3))
                              (error "Context expects 3 values" _g92202_)))
                        (let ((_pre90781_ (##vector-ref _g92201_ 0))
                              (_ns90782_ (##vector-ref _g92201_ 1))
                              (_pkg90783_ (##vector-ref _g92201_ 2)))
                          (let* ((_prelude90785_
                                  (gx#import-module__0 _pre90781_))
                                 (_read-module-body90839_
                                  (let ((_$e90831_
                                         (find (lambda (_e9078690788_)
                                                 (let* ((_g9079090800_
                                                         _e9078690788_)
                                                        (_else9079290808_
                                                         (lambda () '#f))
                                                        (_K9079490812_
                                                         (lambda () '#t)))
                                                   (if (##structure-direct-instance-of?
                                                        _g9079090800_
                                                        'gx#module-export::t)
                                                       (let* ((_e9079590815_
                                                               (##unchecked-structure-ref
                                                                _g9079090800_
                                                                '1
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e9079690818_
                                                               (##unchecked-structure-ref
                                                                _g9079090800_
                                                                '2
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e9079790821_
                                                               (##unchecked-structure-ref
                                                                _g9079090800_
                                                                '3
                                                                gx#module-export::t
                                                                '#f)))
                                                         (if (##eq? _e9079790821_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)
                     (let ((_e9079890824_
                            (##unchecked-structure-ref
                             _g9079090800_
                             '4
                             gx#module-export::t
                             '#f)))
                       (if ((lambda (_g9082690828_)
                              (eq? _g9082690828_ 'read-module-body))
                            _e9079890824_)
                           (_K9079490812_)
                           (_else9079290808_)))
                     (_else9079290808_)))
               (_else9079290808_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (##unchecked-structure-ref
                                                _prelude90785_
                                                '9
                                                gx#module-context::t
                                                '#f))))
                                    (if _$e90831_
                                        ((lambda (_xport90834_)
                                           (let ((_proc90837_
                                                  (with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _xport90834_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _proc90837_)
                                                 _proc90837_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _path90691_
                                                  _pre90781_
                                                  _proc90837_))))
                                         _$e90831_)
                                        _default-read-module-body90693_)))
                                 (_path-id90841_
                                  (gx#core-module-path->namespace _path90691_))
                                 (_pkg-id90843_
                                  (if _pkg90783_
                                      (string-append
                                       _pkg90783_
                                       '"/"
                                       _path-id90841_)
                                      _path-id90841_))
                                 (_module-id90845_
                                  (string->symbol _pkg-id90843_))
                                 (_module-ns90850_
                                  (let ((_$e90847_ _ns90782_))
                                    (if _$e90847_ _$e90847_ _pkg-id90843_)))
                                 (_body90853_
                                  (call-with-parameters
                                   (lambda ()
                                     (_read-module-body90839_ _inp90775_))
                                   gx#current-module-reader-path
                                   _path90691_
                                   gx#current-module-reader-args
                                   _args90779_)))
                            (values _prelude90785_
                                    _module-id90845_
                                    _module-ns90850_
                                    _body90853_)))))))
                 (_string-e90695_
                  (lambda (_obj90772_ _what90773_)
                    (if (string? _obj90772_)
                        _obj90772_
                        (if (symbol? _obj90772_)
                            (symbol->string _obj90772_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _what90773_)
                             _path90691_
                             _obj90772_)))))
                 (_read-lang-args90696_
                  (lambda (_inp90727_ _args90728_)
                    (let* ((_args9072990737_ _args90728_)
                           (_else9073190745_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _path90691_)))
                           (_K9073390760_
                            (lambda (_args90748_ _prelude90749_)
                              (let* ((_pkg90751_
                                      (pgetq__0 'package: _args90748_))
                                     (_pkg90753_
                                      (if _pkg90751_
                                          (_string-e90695_
                                           _pkg90751_
                                           '"package")
                                          '#f))
                                     (_ns90755_
                                      (pgetq__0 'namespace: _args90748_))
                                     (_ns90757_
                                      (if _ns90755_
                                          (_string-e90695_
                                           _ns90755_
                                           '"namespace")
                                          '#f)))
                                (_read-body90694_
                                 _inp90727_
                                 _prelude90749_
                                 _ns90757_
                                 _pkg90753_
                                 _args90748_)))))
                      (if (##pair? _args9072990737_)
                          (let ((_hd9073490763_ (##car _args9072990737_))
                                (_tl9073590765_ (##cdr _args9072990737_)))
                            (let* ((_prelude90768_ _hd9073490763_)
                                   (_args90770_ _tl9073590765_))
                              (_K9073390760_ _args90770_ _prelude90768_)))
                          (_else9073190745_)))))
                 (_read-lang90697_
                  (lambda (_inp90702_)
                    (let* ((_head90704_ (read-line _inp90702_))
                           (_$e90706_ (string-index__0 _head90704_ '#\space)))
                      (if _$e90706_
                          ((lambda (_ix90709_)
                             (let ((_lang90711_
                                    (substring _head90704_ '0 _ix90709_)))
                               (if (equal? _lang90711_ '"#lang")
                                   (let* ((_rest90713_
                                           (substring
                                            _head90704_
                                            (fx+ _ix90709_ '1)
                                            (string-length _head90704_)))
                                          (_args90724_
                                           (with-catch
                                            (lambda (_g9071490716_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _path90691_
                                               _g9071490716_))
                                            (lambda ()
                                              (call-with-input-string
                                               _rest90713_
                                               (lambda (_g9071990721_)
                                                 (read-all
                                                  _g9071990721_
                                                  read)))))))
                                     (_read-lang-args90696_
                                      _inp90702_
                                      _args90724_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _path90691_))))
                           _$e90706_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _path90691_)))))
                 (_read-e90698_
                  (lambda (_inp90700_)
                    (if (eq? (peek-char _inp90700_) '#\#)
                        (_read-lang90697_ _inp90700_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _path90691_)))))
          (gx#call-with-input-source-file _path90691_ _read-e90698_))))
    (define gx#core-read-module-package
      (lambda (_path90645_ _pre90646_ _ns90647_)
        (letrec ((_string-e90649_
                  (lambda (_e90689_)
                    (if (symbol? _e90689_)
                        (symbol->string _e90689_)
                        (if (string? _e90689_)
                            _e90689_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _e90689_))))))
          (let _lp90651_ ((_dir90653_ (path-directory _path90645_))
                          (_pkg-path90654_ '()))
            (let ((_gerbil.pkg90656_ (path-expand '"gerbil.pkg" _dir90653_)))
              (if (file-exists? _gerbil.pkg90656_)
                  (let ((_plist90658_
                         (gx#core-library-package-plist__% _dir90653_ '#t)))
                    (if (null? _plist90658_)
                        (let ((_pkg90660_
                               (if (not (null? _pkg-path90654_))
                                   (string-join _pkg-path90654_ '"/")
                                   '#f)))
                          (values _pre90646_ _ns90647_ _pkg90660_))
                        (if (list? _plist90658_)
                            (let* ((_root90662_
                                    (pgetq__0 'package: _plist90658_))
                                   (_pkg90666_
                                    (let ((_pkg-path90664_
                                           (if _root90662_
                                               (cons (_string-e90649_
                                                      _root90662_)
                                                     _pkg-path90654_)
                                               _pkg-path90654_)))
                                      (if (not (null? _pkg-path90664_))
                                          (string-join _pkg-path90664_ '"/")
                                          '#f)))
                                   (_ns90673_
                                    (let ((_ns90671_
                                           (let ((_$e90668_ _ns90647_))
                                             (if _$e90668_
                                                 _$e90668_
                                                 (pgetq__0
                                                  'namespace:
                                                  _plist90658_)))))
                                      (if _ns90671_
                                          (_string-e90649_ _ns90671_)
                                          '#f)))
                                   (_pre90678_
                                    (let ((_$e90675_ _pre90646_))
                                      (if _$e90675_
                                          _$e90675_
                                          (pgetq__0 'prelude: _plist90658_)))))
                              (values _pre90678_ _ns90673_ _pkg90666_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _plist90658_))))
                  (let ((_dir*90681_
                         (path-strip-trailing-directory-separator _dir90653_)))
                    (if (or (string-empty? _dir*90681_)
                            (equal? _dir90653_ _dir*90681_))
                        (values _pre90646_ _ns90647_ '#f)
                        (let ((_xpath90686_ (path-strip-directory _dir*90681_))
                              (_xdir90687_ (path-directory _dir*90681_)))
                          (_lp90651_
                           _xdir90687_
                           (cons _xpath90686_ _pkg-path90654_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_path90643_)
        (path-strip-extension (path-strip-directory _path90643_))))
    (define gx#core-module-path->id
      (lambda (_path90641_)
        (string->symbol (gx#core-module-path->namespace _path90641_))))
    (define gx#core-resolve-module-path__%
      (lambda (_stx-path90620_ _rel90621_)
        (let* ((_path90623_ (gx#stx-e _stx-path90620_))
               (_path90625_
                (if (string-empty? (path-extension _path90623_))
                    (string-append _path90623_ '".ss")
                    _path90623_)))
          (gx#core-resolve-path__%
           _path90625_
           (let ((_$e90628_ (gx#stx-source _stx-path90620_)))
             (if _$e90628_ _$e90628_ _rel90621_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_stx-path90634_)
        (let ((_rel90636_ '#f))
          (gx#core-resolve-module-path__% _stx-path90634_ _rel90636_))))
    (define gx#core-resolve-module-path
      (lambda _g92204_
        (let ((_g92203_ (##length _g92204_)))
          (cond ((##fx= _g92203_ 1)
                 (apply (lambda (_stx-path90634_)
                          (gx#core-resolve-module-path__0 _stx-path90634_))
                        _g92204_))
                ((##fx= _g92203_ 2)
                 (apply (lambda (_stx-path90638_ _rel90639_)
                          (gx#core-resolve-module-path__%
                           _stx-path90638_
                           _rel90639_))
                        _g92204_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g92204_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_libpath90506_)
        (let* ((_spath90508_ (symbol->string (gx#stx-e _libpath90506_)))
               (_spath90510_
                (substring _spath90508_ '1 (string-length _spath90508_)))
               (_ext90512_ (path-extension _spath90510_))
               (_ssi90514_
                (if (string-empty? _ext90512_)
                    (string-append _spath90510_ '".ssi")
                    (string-append
                     (path-strip-extension _spath90510_)
                     '".ssi")))
               (_srcs90518_
                (if (string-empty? _ext90512_)
                    (map (lambda (_ext90516_)
                           (string-append _spath90510_ _ext90516_))
                         '(".ss" ".sld" ".scm"))
                    (cons _spath90510_ '()))))
          (let _lp90521_ ((_rest90523_
                           (gx#current-expander-module-library-path)))
            (let* ((_rest9052490533_ _rest90523_)
                   (_E9052790537_
                    (lambda ()
                      (error '"No clause matching" _rest9052490533_))))
              (let ((_K9052990607_
                     (lambda (_rest90548_ _dir90549_)
                       (letrec ((_resolve90551_
                                 (lambda (_ssi90563_ _srcs90564_)
                                   (let ((_compiled-path90566_
                                          (path-expand _ssi90563_ _dir90549_)))
                                     (if (file-exists? _compiled-path90566_)
                                         (path-normalize _compiled-path90566_)
                                         (let _lpr90568_ ((_rest-src90570_
                                                           _srcs90564_))
                                           (let* ((_rest-src9057190579_
                                                   _rest-src90570_)
                                                  (_else9057390587_
                                                   (lambda ()
                                                     (_lp90521_ _rest90548_)))
                                                  (_K9057590595_
                                                   (lambda (_rest-src90590_
                                                            _src90591_)
                                                     (let ((_src-path90593_
                                                            (path-expand
                                                             _src90591_
                                                             _dir90549_)))
                                                       (if (file-exists?
                                                            _src-path90593_)
                                                           (path-normalize
                                                            _src-path90593_)
                                                           (_lpr90568_
                                                            _rest-src90590_))))))
                                             (if (##pair? _rest-src9057190579_)
                                                 (let ((_hd9057690598_
                                                        (##car _rest-src9057190579_))
                                                       (_tl9057790600_
                                                        (##cdr _rest-src9057190579_)))
                                                   (let* ((_src90603_
                                                           _hd9057690598_)
                                                          (_rest-src90605_
                                                           _tl9057790600_))
                                                     (_K9057590595_
                                                      _rest-src90605_
                                                      _src90603_)))
                                                 (_else9057390587_)))))))))
                         (let ((_$e90553_
                                (gx#core-library-package-path-prefix
                                 _dir90549_)))
                           (if _$e90553_
                               ((lambda (_prefix90556_)
                                  (if (string-prefix?
                                       _prefix90556_
                                       _spath90510_)
                                      (let ((_ssi90560_
                                             (substring
                                              _ssi90514_
                                              (string-length _prefix90556_)
                                              (string-length _ssi90514_)))
                                            (_srcs90561_
                                             (map (lambda (_src90558_)
                                                    (substring
                                                     _src90558_
                                                     (string-length
                                                      _prefix90556_)
                                                     (string-length
                                                      _src90558_)))
                                                  _srcs90518_)))
                                        (_resolve90551_
                                         _ssi90560_
                                         _srcs90561_))
                                      (_lp90521_ _rest90548_)))
                                _$e90553_)
                               (_resolve90551_ _ssi90514_ _srcs90518_))))))
                    (_K9052890542_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"Cannot find library module"
                        _libpath90506_))))
                (let ((_try-match9052690545_
                       (lambda ()
                         (if (##null? _rest9052490533_)
                             (_K9052890542_)
                             (_E9052790537_)))))
                  (if (##pair? _rest9052490533_)
                      (let ((_tl9053190612_ (##cdr _rest9052490533_))
                            (_hd9053090610_ (##car _rest9052490533_)))
                        (let ((_dir90615_ _hd9053090610_)
                              (_rest90617_ _tl9053190612_))
                          (_K9052990607_ _rest90617_ _dir90615_)))
                      (_try-match9052690545_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_modpath90479_)
        (letrec ((_resolve90481_
                  (lambda (_path90498_ _base90499_)
                    (let ((_$e90501_ (string-rindex__0 _base90499_ '#\/)))
                      (if _$e90501_
                          ((lambda (_idx90504_)
                             (gx#core-resolve-library-module-path
                              (string->symbol
                               (string-append
                                '":"
                                (substring _base90499_ '0 _idx90504_)
                                '"/"
                                _path90498_))))
                           _$e90501_)
                          (gx#core-resolve-library-module-path
                           (string->symbol
                            (string-append '":" _path90498_))))))))
          (let ((_spath90483_ (symbol->string (gx#stx-e _modpath90479_)))
                (_mod90484_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _mod90484_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"Cannot resolve relative module path; not in module context"
                 _modpath90479_))
            (let ((_mpath90486_
                   (symbol->string
                    (##structure-ref
                     _mod90484_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _lp90488_ ((_spath90490_ _spath90483_)
                              (_mpath90491_ _mpath90486_))
                (if (string-prefix? '"../" _spath90490_)
                    (let ((_$e90493_ (string-rindex__0 _mpath90491_ '#\/)))
                      (if _$e90493_
                          ((lambda (_idx90496_)
                             (_lp90488_
                              (substring
                               _spath90490_
                               '3
                               (string-length _spath90490_))
                              (substring _mpath90491_ '0 _idx90496_)))
                           _$e90493_)
                          (gx#raise-syntax-error
                           '#f
                           '"Cannot resolve relative module path; illegal traversal"
                           _modpath90479_)))
                    (if (string-prefix? '"./" _spath90490_)
                        (_lp90488_
                         (substring
                          _spath90490_
                          '2
                          (string-length _spath90490_))
                         _mpath90491_)
                        (_resolve90481_ _spath90490_ _mpath90491_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_dir90472_)
        (let ((_$e90474_
               (pgetq__0
                'package:
                (gx#core-library-package-plist__0 _dir90472_))))
          (if _$e90474_
              ((lambda (_pkg90477_)
                 (string-append (symbol->string _pkg90477_) '"/"))
               _$e90474_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_dir90444_ _exists?90445_)
        (let* ((_cache90447_ (gx#core-library-package-cache))
               (_$e90449_ (hash-get _cache90447_ _dir90444_)))
          (if _$e90449_
              (values _$e90449_)
              (let* ((_gerbil.pkg90452_ (path-expand '"gerbil.pkg" _dir90444_))
                     (_plist90459_
                      (if (or _exists?90445_ (file-exists? _gerbil.pkg90452_))
                          (let ((_e90457_
                                 (gx#call-with-input-source-file
                                  _gerbil.pkg90452_
                                  read)))
                            (if (eof-object? _e90457_)
                                '()
                                (if (list? _e90457_)
                                    _e90457_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _gerbil.pkg90452_
                                     _e90457_))))
                          '())))
                (hash-put! _cache90447_ _dir90444_ _plist90459_)
                _plist90459_)))))
    (define gx#core-library-package-plist__0
      (lambda (_dir90465_)
        (let ((_exists?90467_ '#f))
          (gx#core-library-package-plist__% _dir90465_ _exists?90467_))))
    (define gx#core-library-package-plist
      (lambda _g92206_
        (let ((_g92205_ (##length _g92206_)))
          (cond ((##fx= _g92205_ 1)
                 (apply (lambda (_dir90465_)
                          (gx#core-library-package-plist__0 _dir90465_))
                        _g92206_))
                ((##fx= _g92205_ 2)
                 (apply (lambda (_dir90469_ _exists?90470_)
                          (gx#core-library-package-plist__%
                           _dir90469_
                           _exists?90470_))
                        _g92206_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g92206_))))))
    (define gx#core-library-package-cache
      (lambda ()
        (let ((_$e90438_ (gx#current-expander-module-library-package-cache)))
          (if _$e90438_
              (values _$e90438_)
              (let ((_cache90441_ (make-hash-table)))
                (gx#current-expander-module-library-package-cache _cache90441_)
                _cache90441_)))))
    (define gx#core-library-module-path?
      (lambda (_stx90435_) (gx#core-special-module-path? _stx90435_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_stx90433_) (gx#core-special-module-path? _stx90433_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_stx90428_ _char90429_)
        (if (gx#identifier? _stx90428_)
            (if (interned-symbol? (gx#stx-e _stx90428_))
                (let ((_str90431_ (symbol->string (gx#stx-e _stx90428_))))
                  (if (fx> (string-length _str90431_) '1)
                      (eq? (string-ref _str90431_ '0) _char90429_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_stx90422_)
        (gx#core-bound-identifier?__%
         _stx90422_
         (lambda (_g9042390425_)
           (gx#expander-binding?__% _g9042390425_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_stx90416_)
        (gx#core-bound-identifier?__%
         _stx90416_
         (lambda (_g9041790419_)
           (gx#expander-binding?__% _g9041790419_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_stx90403_)
        (letrec ((_module-prelude?90405_
                  (lambda (_e90411_)
                    (let ((_$e90413_
                           (##structure-instance-of?
                            _e90411_
                            'gx#module-context::t)))
                      (if _$e90413_
                          _$e90413_
                          (##structure-instance-of?
                           _e90411_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _stx90403_
           (lambda (_g9040690408_)
             (gx#expander-binding?__%
              _g9040690408_
              _module-prelude?90405_))))))
    (define gx#core-bind-import!__%
      (lambda (_in90333_ _ctx90334_ _force-weak?90335_)
        (let* ((_in9033690345_ _in90333_)
               (_E9033890349_
                (lambda () (error '"No clause matching" _in9033690345_)))
               (_K9033990362_
                (lambda (_weak?90352_ _phi90353_ _key90354_ _source90355_)
                  (gx#core-bind!__%
                   _key90354_
                   (let ((_e90357_
                          (gx#core-resolve-module-export _source90355_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref _e90357_ '1 gx#binding::t '#f)
                      _key90354_
                      _phi90353_
                      _e90357_
                      (##unchecked-structure-ref
                       _source90355_
                       '1
                       gx#module-export::t
                       '#f)
                      (let ((_$e90359_ _force-weak?90335_))
                        (if _$e90359_ _$e90359_ _weak?90352_))))
                   gx#core-context-rebind?
                   _phi90353_
                   _ctx90334_))))
          (if (##structure-direct-instance-of?
               _in9033690345_
               'gx#module-import::t)
              (let* ((_e9034090365_
                      (##unchecked-structure-ref
                       _in9033690345_
                       '1
                       gx#module-import::t
                       '#f))
                     (_source90368_ _e9034090365_)
                     (_e9034190370_
                      (##unchecked-structure-ref
                       _in9033690345_
                       '2
                       gx#module-import::t
                       '#f))
                     (_key90373_ _e9034190370_)
                     (_e9034290375_
                      (##unchecked-structure-ref
                       _in9033690345_
                       '3
                       gx#module-import::t
                       '#f))
                     (_phi90378_ _e9034290375_)
                     (_e9034390380_
                      (##unchecked-structure-ref
                       _in9033690345_
                       '4
                       gx#module-import::t
                       '#f))
                     (_weak?90383_ _e9034390380_))
                (_K9033990362_
                 _weak?90383_
                 _phi90378_
                 _key90373_
                 _source90368_))
              (_E9033890349_)))))
    (define gx#core-bind-import!__0
      (lambda (_in90388_)
        (let* ((_ctx90390_ (gx#current-expander-context))
               (_force-weak?90392_ '#f))
          (gx#core-bind-import!__% _in90388_ _ctx90390_ _force-weak?90392_))))
    (define gx#core-bind-import!__1
      (lambda (_in90394_ _ctx90395_)
        (let ((_force-weak?90397_ '#f))
          (gx#core-bind-import!__% _in90394_ _ctx90395_ _force-weak?90397_))))
    (define gx#core-bind-import!
      (lambda _g92208_
        (let ((_g92207_ (##length _g92208_)))
          (cond ((##fx= _g92207_ 1)
                 (apply (lambda (_in90388_)
                          (gx#core-bind-import!__0 _in90388_))
                        _g92208_))
                ((##fx= _g92207_ 2)
                 (apply (lambda (_in90394_ _ctx90395_)
                          (gx#core-bind-import!__1 _in90394_ _ctx90395_))
                        _g92208_))
                ((##fx= _g92207_ 3)
                 (apply (lambda (_in90399_ _ctx90400_ _force-weak?90401_)
                          (gx#core-bind-import!__%
                           _in90399_
                           _ctx90400_
                           _force-weak?90401_))
                        _g92208_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g92208_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_in90319_ _ctx90320_)
        (gx#core-bind-import!__% _in90319_ _ctx90320_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_in90325_)
        (let ((_ctx90327_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _in90325_ _ctx90327_))))
    (define gx#core-bind-weak-import!
      (lambda _g92210_
        (let ((_g92209_ (##length _g92210_)))
          (cond ((##fx= _g92209_ 1)
                 (apply (lambda (_in90325_)
                          (gx#core-bind-weak-import!__0 _in90325_))
                        _g92210_))
                ((##fx= _g92209_ 2)
                 (apply (lambda (_in90329_ _ctx90330_)
                          (gx#core-bind-weak-import!__% _in90329_ _ctx90330_))
                        _g92210_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g92210_))))))
    (define gx#core-resolve-module-export
      (lambda (_out90210_)
        (letrec ((_subst90212_
                  (lambda (_key90258_)
                    (let* ((_key9025990267_ _key90258_)
                           (_else9026190275_ (lambda () _key90258_))
                           (_K9026390306_
                            (lambda (_mark90278_ _id90279_)
                              (let* ((_mark9028090286_ _mark90278_)
                                     (_E9028290290_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark9028090286_)))
                                     (_K9028390298_
                                      (lambda (_subst90293_)
                                        (let ((_$e90295_
                                               (if _subst90293_
                                                   (hash-get
                                                    _subst90293_
                                                    _id90279_)
                                                   '#f)))
                                          (if _$e90295_
                                              _$e90295_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _key90258_))))))
                                (if (##structure-instance-of?
                                     _mark9028090286_
                                     'gx#expander-mark::t)
                                    (let* ((_e9028490301_
                                            (##unchecked-structure-ref
                                             _mark9028090286_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst90304_ _e9028490301_))
                                      (_K9028390298_ _subst90304_))
                                    (_E9028290290_))))))
                      (if (##pair? _key9025990267_)
                          (let ((_hd9026490309_ (##car _key9025990267_))
                                (_tl9026590311_ (##cdr _key9025990267_)))
                            (let* ((_id90314_ _hd9026490309_)
                                   (_mark90316_ _tl9026590311_))
                              (_K9026390306_ _mark90316_ _id90314_)))
                          (_else9026190275_))))))
          (let* ((_out9021390223_ _out90210_)
                 (_E9021590227_
                  (lambda () (error '"No clause matching" _out9021390223_)))
                 (_K9021690234_
                  (lambda (_phi90230_ _key90231_ _ctx90232_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _ctx90232_ _phi90230_)
                     (_subst90212_ _key90231_)))))
            (if (##structure-direct-instance-of?
                 _out9021390223_
                 'gx#module-export::t)
                (let* ((_e9021790237_
                        (##unchecked-structure-ref
                         _out9021390223_
                         '1
                         gx#module-export::t
                         '#f))
                       (_ctx90240_ _e9021790237_)
                       (_e9021890242_
                        (##unchecked-structure-ref
                         _out9021390223_
                         '2
                         gx#module-export::t
                         '#f))
                       (_key90245_ _e9021890242_)
                       (_e9021990247_
                        (##unchecked-structure-ref
                         _out9021390223_
                         '3
                         gx#module-export::t
                         '#f))
                       (_phi90250_ _e9021990247_)
                       (_e9022090252_
                        (##unchecked-structure-ref
                         _out9021390223_
                         '4
                         gx#module-export::t
                         '#f))
                       (_e9022190255_
                        (##unchecked-structure-ref
                         _out9021390223_
                         '5
                         gx#module-export::t
                         '#f)))
                  (_K9021690234_ _phi90250_ _key90245_ _ctx90240_))
                (_E9021590227_))))))
    (define gx#core-module-export->import__%
      (lambda (_out90135_ _rename90136_ _dphi90137_)
        (let* ((_out9013890148_ _out90135_)
               (_E9014090152_
                (lambda () (error '"No clause matching" _out9013890148_)))
               (_K9014190164_
                (lambda (_weak?90155_
                         _name90156_
                         _phi90157_
                         _key90158_
                         _ctx90159_)
                  (##structure
                   gx#module-import::t
                   _out90135_
                   (let ((_$e90161_ _rename90136_))
                     (if _$e90161_ _$e90161_ _name90156_))
                   (fx+ _phi90157_ _dphi90137_)
                   _weak?90155_))))
          (if (##structure-direct-instance-of?
               _out9013890148_
               'gx#module-export::t)
              (let* ((_e9014290167_
                      (##unchecked-structure-ref
                       _out9013890148_
                       '1
                       gx#module-export::t
                       '#f))
                     (_ctx90170_ _e9014290167_)
                     (_e9014390172_
                      (##unchecked-structure-ref
                       _out9013890148_
                       '2
                       gx#module-export::t
                       '#f))
                     (_key90175_ _e9014390172_)
                     (_e9014490177_
                      (##unchecked-structure-ref
                       _out9013890148_
                       '3
                       gx#module-export::t
                       '#f))
                     (_phi90180_ _e9014490177_)
                     (_e9014590182_
                      (##unchecked-structure-ref
                       _out9013890148_
                       '4
                       gx#module-export::t
                       '#f))
                     (_name90185_ _e9014590182_)
                     (_e9014690187_
                      (##unchecked-structure-ref
                       _out9013890148_
                       '5
                       gx#module-export::t
                       '#f))
                     (_weak?90190_ _e9014690187_))
                (_K9014190164_
                 _weak?90190_
                 _name90185_
                 _phi90180_
                 _key90175_
                 _ctx90170_))
              (_E9014090152_)))))
    (define gx#core-module-export->import__0
      (lambda (_out90195_)
        (let* ((_rename90197_ '#f) (_dphi90199_ '0))
          (gx#core-module-export->import__%
           _out90195_
           _rename90197_
           _dphi90199_))))
    (define gx#core-module-export->import__1
      (lambda (_out90201_ _rename90202_)
        (let ((_dphi90204_ '0))
          (gx#core-module-export->import__%
           _out90201_
           _rename90202_
           _dphi90204_))))
    (define gx#core-module-export->import
      (lambda _g92212_
        (let ((_g92211_ (##length _g92212_)))
          (cond ((##fx= _g92211_ 1)
                 (apply (lambda (_out90195_)
                          (gx#core-module-export->import__0 _out90195_))
                        _g92212_))
                ((##fx= _g92211_ 2)
                 (apply (lambda (_out90201_ _rename90202_)
                          (gx#core-module-export->import__1
                           _out90201_
                           _rename90202_))
                        _g92212_))
                ((##fx= _g92211_ 3)
                 (apply (lambda (_out90206_ _rename90207_ _dphi90208_)
                          (gx#core-module-export->import__%
                           _out90206_
                           _rename90207_
                           _dphi90208_))
                        _g92212_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g92212_))))))
    (define gx#core-expand-module%
      (lambda (_stx90063_)
        (letrec ((_make-context90065_
                  (lambda (_id90116_)
                    (let* ((_super90118_ (gx#current-expander-context))
                           (_bind-id90120_ (gx#stx-e _id90116_))
                           (_mod-id90122_
                            (if (##structure-instance-of?
                                 _super90118_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##structure-ref
                                  _super90118_
                                  '1
                                  gx#expander-context::t
                                  '#f)
                                 '"$"
                                 _bind-id90120_)
                                _bind-id90120_))
                           (_ns90124_ (symbol->string _mod-id90122_))
                           (_path90131_
                            (if (##structure-instance-of?
                                 _super90118_
                                 'gx#module-context::t)
                                (let ((_path90126_
                                       (##unchecked-structure-ref
                                        _super90118_
                                        '7
                                        gx#module-context::t
                                        '#f)))
                                  (if (or (pair? _path90126_)
                                          (null? _path90126_))
                                      (cons _bind-id90120_ _path90126_)
                                      (if (not _path90126_)
                                          _bind-id90120_
                                          (cons _bind-id90120_
                                                (cons _path90126_ '())))))
                                _bind-id90120_)))
                      (let ((__obj92188
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
                         __obj92188
                         _mod-id90122_
                         _super90118_
                         _ns90124_
                         _path90131_)
                        __obj92188)))))
          (let* ((_e9006690076_ _stx90063_)
                 (_E9006890080_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e9006690076_)))
                 (_E9006790112_
                  (lambda ()
                    (if (gx#stx-pair? _e9006690076_)
                        (let ((_e9006990084_ (gx#syntax-e _e9006690076_)))
                          (let ((_hd9007090087_ (##car _e9006990084_))
                                (_tl9007190089_ (##cdr _e9006990084_)))
                            (if (gx#stx-pair? _tl9007190089_)
                                (let ((_e9007290092_
                                       (gx#syntax-e _tl9007190089_)))
                                  (let ((_hd9007390095_ (##car _e9007290092_))
                                        (_tl9007490097_ (##cdr _e9007290092_)))
                                    (let* ((_id90100_ _hd9007390095_)
                                           (_body90102_ _tl9007490097_))
                                      (if (and (gx#identifier? _id90100_)
                                               (gx#stx-list? _body90102_))
                                          (let* ((_ctx90104_
                                                  (_make-context90065_
                                                   _id90100_))
                                                 (_body90106_
                                                  (gx#core-expand-module-begin
                                                   _body90102_
                                                   _ctx90104_))
                                                 (_body90108_
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body90106_)
                                                   (gx#stx-source
                                                    _stx90063_))))
                                            (##unchecked-structure-set!
                                             _ctx90104_
                                             (make-promise
                                              (lambda ()
                                                (gx#eval-syntax* _body90108_)))
                                             '10
                                             gx#module-context::t
                                             '#f)
                                            (##unchecked-structure-set!
                                             _ctx90104_
                                             _body90108_
                                             '11
                                             gx#module-context::t
                                             '#f)
                                            (gx#core-bind-syntax!__0
                                             _id90100_
                                             _ctx90104_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-list
                                              '%#module
                                              (gx#core-quote-syntax__0
                                               _id90100_)
                                              _body90108_)
                                             (gx#stx-source _stx90063_)))
                                          (_E9006890080_)))))
                                (_E9006890080_))))
                        (_E9006890080_)))))
            (_E9006790112_)))))
    (define gx#core-expand-module-begin
      (lambda (_body90029_ _ctx90030_)
        (call-with-parameters
         (lambda ()
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_stx90033_
                   (gx#core-expand-head (cons '%%begin-module _body90029_)))
                  (_e9003490041_ _stx90033_)
                  (_E9003690045_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _stx90033_)))
                  (_E9003590059_
                   (lambda ()
                     (if (gx#stx-pair? _e9003490041_)
                         (let ((_e9003790049_ (gx#syntax-e _e9003490041_)))
                           (let ((_hd9003890052_ (##car _e9003790049_))
                                 (_tl9003990054_ (##cdr _e9003790049_)))
                             (if (and (gx#identifier? _hd9003890052_)
                                      (gx#core-identifier=?
                                       _hd9003890052_
                                       '%#begin-module))
                                 (let ((_body90057_ _tl9003990054_))
                                   (if '#t
                                       (if (gx#sealed-syntax? _stx90033_)
                                           _body90057_
                                           (gx#core-expand-module-body
                                            _body90057_))
                                       (_E9003690045_)))
                                 (_E9003690045_))))
                         (_E9003690045_)))))
             (_E9003590059_)))
         gx#current-expander-context
         _ctx90030_
         gx#current-expander-phi
         '0)))
    (define gx#core-expand-module-body
      (lambda (_body89825_)
        (letrec ((_expand-special89827_
                  (lambda (_hd89956_ _K89957_ _rest89958_ _r89959_)
                    (let* ((_e8996089977_ _hd89956_)
                           (_E8997289981_
                            (lambda ()
                              (_K89957_
                               _rest89958_
                               (cons (gx#core-expand-top _hd89956_)
                                     _r89959_))))
                           (_E8996289993_
                            (lambda ()
                              (if (gx#stx-pair? _e8996089977_)
                                  (let ((_e8997389985_
                                         (gx#syntax-e _e8996089977_)))
                                    (let ((_hd8997489988_
                                           (##car _e8997389985_))
                                          (_tl8997589990_
                                           (##cdr _e8997389985_)))
                                      (if (and (gx#identifier? _hd8997489988_)
                                               (gx#core-identifier=?
                                                _hd8997489988_
                                                '%#export))
                                          (if '#t
                                              (_K89957_
                                               _rest89958_
                                               (cons _hd89956_ _r89959_))
                                              (_E8997289981_))
                                          (_E8997289981_))))
                                  (_E8997289981_))))
                           (_E8996190025_
                            (lambda ()
                              (if (gx#stx-pair? _e8996089977_)
                                  (let ((_e8996389997_
                                         (gx#syntax-e _e8996089977_)))
                                    (let ((_hd8996490000_
                                           (##car _e8996389997_))
                                          (_tl8996590002_
                                           (##cdr _e8996389997_)))
                                      (if (and (gx#identifier? _hd8996490000_)
                                               (gx#core-identifier=?
                                                _hd8996490000_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl8996590002_)
                                              (let ((_e8996690005_
                                                     (gx#syntax-e
                                                      _tl8996590002_)))
                                                (let ((_hd8996790008_
                                                       (##car _e8996690005_))
                                                      (_tl8996890010_
                                                       (##cdr _e8996690005_)))
                                                  (let ((_hd-bind90013_
                                                         _hd8996790008_))
                                                    (if (gx#stx-pair?
                                                         _tl8996890010_)
                                                        (let ((_e8996990015_
                                                               (gx#syntax-e
                                                                _tl8996890010_)))
                                                          (let ((_hd8997090018_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e8996990015_))
                        (_tl8997190020_ (##cdr _e8996990015_)))
                    (let ((_expr90023_ _hd8997090018_))
                      (if (gx#stx-null? _tl8997190020_)
                          (if (gx#core-bind-values? _hd-bind90013_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind90013_)
                                (_K89957_
                                 _rest89958_
                                 (cons _hd89956_ _r89959_)))
                              (_E8996289993_))
                          (_E8996289993_)))))
                (_E8996289993_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8996289993_))
                                          (_E8996289993_))))
                                  (_E8996289993_)))))
                      (_E8996190025_))))
                 (_expand-body89828_
                  (lambda (_rbody89830_)
                    (let _lp89832_ ((_rest89834_ _rbody89830_)
                                    (_body89835_ '()))
                      (let* ((_rest8983689844_ _rest89834_)
                             (_else8983889852_ (lambda () _body89835_))
                             (_K8984089944_
                              (lambda (_rest89855_ _hd89856_)
                                (let* ((_e8985789878_ _hd89856_)
                                       (_E8987389882_
                                        (lambda ()
                                          (_lp89832_
                                           _rest89855_
                                           (cons (gx#core-expand-expression
                                                  _hd89856_)
                                                 _body89835_))))
                                       (_E8986989896_
                                        (lambda ()
                                          (if (gx#stx-pair? _e8985789878_)
                                              (let ((_e8987489886_
                                                     (gx#syntax-e
                                                      _e8985789878_)))
                                                (let ((_hd8987589889_
                                                       (##car _e8987489886_))
                                                      (_tl8987689891_
                                                       (##cdr _e8987489886_)))
                                                  (let ((_form89894_
                                                         _hd8987589889_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _form89894_
                                                         gx#special-form-binding?)
                                                        (_lp89832_
                                                         _rest89855_
                                                         (cons _hd89856_
                                                               _body89835_))
                                                        (_E8987389882_)))))
                                              (_E8987389882_))))
                                       (_E8985989908_
                                        (lambda ()
                                          (if (gx#stx-pair? _e8985789878_)
                                              (let ((_e8987089900_
                                                     (gx#syntax-e
                                                      _e8985789878_)))
                                                (let ((_hd8987189903_
                                                       (##car _e8987089900_))
                                                      (_tl8987289905_
                                                       (##cdr _e8987089900_)))
                                                  (if (and (gx#identifier?
                                                            _hd8987189903_)
                                                           (gx#core-identifier=?
                                                            _hd8987189903_
                                                            '%#export))
                                                      (if '#t
                                                          (_lp89832_
                                                           _rest89855_
                                                           (cons (gx#core-expand-export%__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd89856_)
                         _body89835_))
                  (_E8986989896_))
              (_E8986989896_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8986989896_))))
                                       (_E8985889940_
                                        (lambda ()
                                          (if (gx#stx-pair? _e8985789878_)
                                              (let ((_e8986089912_
                                                     (gx#syntax-e
                                                      _e8985789878_)))
                                                (let ((_hd8986189915_
                                                       (##car _e8986089912_))
                                                      (_tl8986289917_
                                                       (##cdr _e8986089912_)))
                                                  (if (and (gx#identifier?
                                                            _hd8986189915_)
                                                           (gx#core-identifier=?
                                                            _hd8986189915_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl8986289917_)
                                                          (let ((_e8986389920_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl8986289917_)))
                    (let ((_hd8986489923_ (##car _e8986389920_))
                          (_tl8986589925_ (##cdr _e8986389920_)))
                      (let ((_hd-bind89928_ _hd8986489923_))
                        (if (gx#stx-pair? _tl8986589925_)
                            (let ((_e8986689930_ (gx#syntax-e _tl8986589925_)))
                              (let ((_hd8986789933_ (##car _e8986689930_))
                                    (_tl8986889935_ (##cdr _e8986689930_)))
                                (let ((_expr89938_ _hd8986789933_))
                                  (if (gx#stx-null? _tl8986889935_)
                                      (if '#t
                                          (_lp89832_
                                           _rest89855_
                                           (cons (gx#core-quote-syntax__1
                                                  (gx#core-list
                                                   '%#define-values
                                                   (gx#core-quote-bind-values
                                                    _hd-bind89928_)
                                                   (gx#core-expand-expression
                                                    _expr89938_))
                                                  (gx#stx-source _hd89856_))
                                                 _body89835_))
                                          (_E8985989908_))
                                      (_E8985989908_)))))
                            (_E8985989908_)))))
                  (_E8985989908_))
              (_E8985989908_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8985989908_)))))
                                  (_E8985889940_)))))
                        (if (##pair? _rest8983689844_)
                            (let ((_hd8984189947_ (##car _rest8983689844_))
                                  (_tl8984289949_ (##cdr _rest8983689844_)))
                              (let* ((_hd89952_ _hd8984189947_)
                                     (_rest89954_ _tl8984289949_))
                                (_K8984089944_ _rest89954_ _hd89952_)))
                            (_else8983889852_)))))))
          (_expand-body89828_
           (gx#core-expand-block__%
            (cons '%#begin-module _body89825_)
            _expand-special89827_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_stx89668_
               _expanded?89669_
               _method89670_
               _current-phi89671_
               _expand189672_)
        (letrec ((_K89674_
                  (lambda (_rest89792_ _r89793_)
                    (let* ((_e8979489801_ _rest89792_)
                           (_E8979689805_ (lambda () _r89793_))
                           (_E8979589821_
                            (lambda ()
                              (if (gx#stx-pair? _e8979489801_)
                                  (let ((_e8979789809_
                                         (gx#syntax-e _e8979489801_)))
                                    (let ((_hd8979889812_
                                           (##car _e8979789809_))
                                          (_tl8979989814_
                                           (##cdr _e8979789809_)))
                                      (let* ((_hd89817_ _hd8979889812_)
                                             (_rest89819_ _tl8979989814_))
                                        (if '#t
                                            (_step89675_
                                             _hd89817_
                                             _rest89819_
                                             _r89793_)
                                            (_E8979689805_)))))
                                  (_E8979689805_)))))
                      (_E8979589821_))))
                 (_step89675_
                  (lambda (_hd89706_ _rest89707_ _r89708_)
                    (let* ((_e8970989727_ _hd89706_)
                           (_E8972289731_
                            (lambda ()
                              (if (_expanded?89669_ (gx#stx-e _hd89706_))
                                  (_K89674_
                                   _rest89707_
                                   (cons (gx#stx-e _hd89706_) _r89708_))
                                  (_expand189672_
                                   _hd89706_
                                   _K89674_
                                   _rest89707_
                                   _r89708_))))
                           (_E8971889747_
                            (lambda ()
                              (if (gx#stx-pair? _e8970989727_)
                                  (let ((_e8972389735_
                                         (gx#syntax-e _e8970989727_)))
                                    (let ((_hd8972489738_
                                           (##car _e8972389735_))
                                          (_tl8972589740_
                                           (##cdr _e8972389735_)))
                                      (let* ((_macro89743_ _hd8972489738_)
                                             (_body89745_ _tl8972589740_))
                                        (if (gx#core-bound-identifier?__%
                                             _macro89743_
                                             gx#syntax-binding?)
                                            (_K89674_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _macro89743_)
                                                    _hd89706_
                                                    _method89670_)
                                                   _rest89707_)
                                             _r89708_)
                                            (_E8972289731_)))))
                                  (_E8972289731_))))
                           (_E8971189761_
                            (lambda ()
                              (if (gx#stx-pair? _e8970989727_)
                                  (let ((_e8971989751_
                                         (gx#syntax-e _e8970989727_)))
                                    (let ((_hd8972089754_
                                           (##car _e8971989751_))
                                          (_tl8972189756_
                                           (##cdr _e8971989751_)))
                                      (if (eq? (gx#stx-e _hd8972089754_)
                                               'begin:)
                                          (let ((_body89759_ _tl8972189756_))
                                            (if '#t
                                                (_K89674_
                                                 (gx#stx-foldr
                                                  cons
                                                  _rest89707_
                                                  _body89759_)
                                                 _r89708_)
                                                (_E8971889747_)))
                                          (_E8971889747_))))
                                  (_E8971889747_))))
                           (_E8971089788_
                            (lambda ()
                              (if (gx#stx-pair? _e8970989727_)
                                  (let ((_e8971289765_
                                         (gx#syntax-e _e8970989727_)))
                                    (let ((_hd8971389768_
                                           (##car _e8971289765_))
                                          (_tl8971489770_
                                           (##cdr _e8971289765_)))
                                      (if (eq? (gx#stx-e _hd8971389768_) 'phi:)
                                          (if (gx#stx-pair? _tl8971489770_)
                                              (let ((_e8971589773_
                                                     (gx#syntax-e
                                                      _tl8971489770_)))
                                                (let ((_hd8971689776_
                                                       (##car _e8971589773_))
                                                      (_tl8971789778_
                                                       (##cdr _e8971589773_)))
                                                  (let* ((_dphi89781_
                                                          _hd8971689776_)
                                                         (_body89783_
                                                          _tl8971789778_))
                                                    (if (gx#stx-fixnum?
                                                         _dphi89781_)
                                                        (let ((_rbody89786_
                                                               (call-with-parameters
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_K89674_ _body89783_ '()))
                        _current-phi89671_
                        (fx+ (gx#stx-e _dphi89781_) (_current-phi89671_)))))
                  (_K89674_ _rest89707_ (foldr1 cons _r89708_ _rbody89786_)))
                (_E8971189761_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8971189761_))
                                          (_E8971189761_))))
                                  (_E8971189761_)))))
                      (_E8971089788_)))))
          (let* ((_e8967689683_ _stx89668_)
                 (_E8967889687_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8967689683_)))
                 (_E8967789702_
                  (lambda ()
                    (if (gx#stx-pair? _e8967689683_)
                        (let ((_e8967989691_ (gx#syntax-e _e8967689683_)))
                          (let ((_hd8968089694_ (##car _e8967989691_))
                                (_tl8968189696_ (##cdr _e8967989691_)))
                            (let ((_body89699_ _tl8968189696_))
                              (if '#t
                                  (if (_current-phi89671_)
                                      (_K89674_ _body89699_ '())
                                      (call-with-parameters
                                       (lambda () (_K89674_ _body89699_ '()))
                                       _current-phi89671_
                                       (gx#current-expander-phi)))
                                  (_E8967889687_)))))
                        (_E8967889687_)))))
            (_E8967789702_)))))
    (define gx#core-expand-import%__%
      (lambda (_stx89335_ _internal-expand?89336_)
        (letrec ((_expand189338_
                  (lambda (_hd89648_ _K89649_ _rest89650_ _r89651_)
                    (if (gx#core-bound-module? _hd89648_)
                        (_import189339_
                         (gx#syntax-local-e__0 _hd89648_)
                         _K89649_
                         _rest89650_
                         _r89651_)
                        (if (gx#core-library-module-path? _hd89648_)
                            (_import189339_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _hd89648_))
                             _K89649_
                             _rest89650_
                             _r89651_)
                            (if (gx#core-library-relative-module-path?
                                 _hd89648_)
                                (_import189339_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _hd89648_))
                                 _K89649_
                                 _rest89650_
                                 _r89651_)
                                (let ((_e89653_ (gx#stx-e _hd89648_)))
                                  (if (pair? _e89653_)
                                      (let ((_$e89655_
                                             (gx#stx-e (car _e89653_))))
                                        (if (eq? 'spec: _$e89655_)
                                            (_import-spec89342_
                                             _hd89648_
                                             _K89649_
                                             _rest89650_
                                             _r89651_)
                                            (if (eq? 'in: _$e89655_)
                                                (_import-submodule89340_
                                                 _hd89648_
                                                 _K89649_
                                                 _rest89650_
                                                 _r89651_)
                                                (if (eq? 'runtime: _$e89655_)
                                                    (_import-runtime89341_
                                                     _hd89648_
                                                     _K89649_
                                                     _rest89650_
                                                     _r89651_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _stx89335_
                                                     _hd89648_)))))
                                      (if (string? _e89653_)
                                          (_import189339_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _hd89648_
                                             (gx#stx-source _stx89335_)))
                                           _K89649_
                                           _rest89650_
                                           _r89651_)
                                          (if (##structure-instance-of?
                                               _e89653_
                                               'gx#module-context::t)
                                              (_K89649_
                                               _rest89650_
                                               (cons _e89653_ _r89651_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _stx89335_
                                               _hd89648_))))))))))
                 (_import189339_
                  (lambda (_ctx89637_ _K89638_ _rest89639_ _r89640_)
                    (let ((_dphi89642_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_K89638_
                       _rest89639_
                       (cons (##structure
                              gx#import-set::t
                              _ctx89637_
                              _dphi89642_
                              (map (lambda (_g8964389645_)
                                     (gx#core-module-export->import__%
                                      _g8964389645_
                                      '#f
                                      _dphi89642_))
                                   (##unchecked-structure-ref
                                    _ctx89637_
                                    '9
                                    gx#module-context::t
                                    '#f)))
                             _r89640_)))))
                 (_import-submodule89340_
                  (lambda (_hd89604_ _K89605_ _rest89606_ _r89607_)
                    (let* ((_e8960889615_ _hd89604_)
                           (_E8961089619_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8960889615_)))
                           (_E8960989633_
                            (lambda ()
                              (if (gx#stx-pair? _e8960889615_)
                                  (let ((_e8961189623_
                                         (gx#syntax-e _e8960889615_)))
                                    (let ((_hd8961289626_
                                           (##car _e8961189623_))
                                          (_tl8961389628_
                                           (##cdr _e8961189623_)))
                                      (let ((_spath89631_ _tl8961389628_))
                                        (if '#t
                                            (_import189339_
                                             (_import-spec-source89343_
                                              _spath89631_)
                                             _K89605_
                                             _rest89606_
                                             _r89607_)
                                            (_E8961089619_)))))
                                  (_E8961089619_)))))
                      (_E8960989633_))))
                 (_import-runtime89341_
                  (lambda (_hd89571_ _K89572_ _rest89573_ _r89574_)
                    (let* ((_e8957589582_ _hd89571_)
                           (_E8957789586_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8957589582_)))
                           (_E8957689600_
                            (lambda ()
                              (if (gx#stx-pair? _e8957589582_)
                                  (let ((_e8957889590_
                                         (gx#syntax-e _e8957589582_)))
                                    (let ((_hd8957989593_
                                           (##car _e8957889590_))
                                          (_tl8958089595_
                                           (##cdr _e8957889590_)))
                                      (let ((_spath89598_ _tl8958089595_))
                                        (if '#t
                                            (_K89572_
                                             _rest89573_
                                             (cons (_import-spec-source89343_
                                                    _spath89598_)
                                                   _r89574_))
                                            (_E8957789586_)))))
                                  (_E8957789586_)))))
                      (_E8957689600_))))
                 (_import-spec89342_
                  (lambda (_hd89410_ _K89411_ _rest89412_ _r89413_)
                    (let* ((_e8941489431_ _hd89410_)
                           (_E8942389435_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8941489431_)))
                           (_E8941689545_
                            (lambda ()
                              (if (gx#stx-pair? _e8941489431_)
                                  (let ((_e8942489439_
                                         (gx#syntax-e _e8941489431_)))
                                    (let ((_hd8942589442_
                                           (##car _e8942489439_))
                                          (_tl8942689444_
                                           (##cdr _e8942489439_)))
                                      (if (gx#stx-pair? _tl8942689444_)
                                          (let ((_e8942789447_
                                                 (gx#syntax-e _tl8942689444_)))
                                            (let ((_hd8942889450_
                                                   (##car _e8942789447_))
                                                  (_tl8942989452_
                                                   (##cdr _e8942789447_)))
                                              (let* ((_path89455_
                                                      _hd8942889450_)
                                                     (_specs89457_
                                                      _tl8942989452_))
                                                (if '#t
                                                    (let ((_src-ctx89459_
                                                           (_import-spec-source89343_
                                                            _path89455_))
                                                          (_exports89460_
                                                           (make-hash-table))
                                                          (_specs89461_
                                                           (gx#syntax->list
                                                            _specs89457_)))
                                                      (for-each
                                                       (lambda (_out89463_)
                                                         (hash-put!
                                                          _exports89460_
                                                          (cons (##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _out89463_
                         '3
                         gx#module-export::t
                         '#f)
                        (##unchecked-structure-ref
                         _out89463_
                         '4
                         gx#module-export::t
                         '#f))
                  _out89463_))
               (##unchecked-structure-ref
                _src-ctx89459_
                '9
                gx#module-context::t
                '#f))
              (_K89411_
               _rest89412_
               (foldl1 (lambda (_spec89465_ _r89466_)
                         (let* ((_e8946789483_ _spec89465_)
                                (_E8946989487_
                                 (lambda ()
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid syntax-case clause"
                                    _e8946789483_)))
                                (_E8946889541_
                                 (lambda ()
                                   (if (gx#stx-pair? _e8946789483_)
                                       (let ((_e8947089491_
                                              (gx#syntax-e _e8946789483_)))
                                         (let ((_hd8947189494_
                                                (##car _e8947089491_))
                                               (_tl8947289496_
                                                (##cdr _e8947089491_)))
                                           (let ((_phi89499_ _hd8947189494_))
                                             (if (gx#stx-pair? _tl8947289496_)
                                                 (let ((_e8947389501_
                                                        (gx#syntax-e
                                                         _tl8947289496_)))
                                                   (let ((_hd8947489504_
                                                          (##car _e8947389501_))
                                                         (_tl8947589506_
                                                          (##cdr _e8947389501_)))
                                                     (let ((_name89509_
                                                            _hd8947489504_))
                                                       (if (gx#stx-pair?
                                                            _tl8947589506_)
                                                           (let ((_e8947689511_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl8947589506_)))
                     (let ((_hd8947789514_ (##car _e8947689511_))
                           (_tl8947889516_ (##cdr _e8947689511_)))
                       (let ((_src-phi89519_ _hd8947789514_))
                         (if (gx#stx-pair? _tl8947889516_)
                             (let ((_e8947989521_
                                    (gx#syntax-e _tl8947889516_)))
                               (let ((_hd8948089524_ (##car _e8947989521_))
                                     (_tl8948189526_ (##cdr _e8947989521_)))
                                 (let ((_src-name89529_ _hd8948089524_))
                                   (if (gx#stx-null? _tl8948189526_)
                                       (if (and (gx#stx-fixnum? _src-phi89519_)
                                                (gx#identifier?
                                                 _src-name89529_)
                                                (gx#stx-fixnum? _phi89499_)
                                                (gx#identifier? _name89509_))
                                           (let ((_src-phi89531_
                                                  (gx#stx-e _src-phi89519_))
                                                 (_src-name89532_
                                                  (gx#core-identifier-key
                                                   _src-name89529_))
                                                 (_phi89533_
                                                  (gx#stx-e _phi89499_))
                                                 (_name89534_
                                                  (gx#core-identifier-key
                                                   _name89509_)))
                                             (let ((_$e89536_
                                                    (hash-get
                                                     _exports89460_
                                                     (cons _src-phi89531_
                                                           _src-name89532_))))
                                               (if _$e89536_
                                                   ((lambda (_out89539_)
                                                      (cons (gx#core-module-export->import__%
                                                             _out89539_
                                                             _name89534_
                                                             (fx- _phi89533_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _src-phi89531_))
                    _r89466_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _$e89536_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; no matching export"
                                                    _stx89335_
                                                    _hd89410_))))
                                           (_E8946989487_))
                                       (_E8946989487_)))))
                             (_E8946989487_)))))
                   (_E8946989487_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E8946989487_)))))
                                       (_E8946989487_)))))
                           (_E8946889541_)))
                       _r89413_
                       _specs89461_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E8942389435_)))))
                                          (_E8942389435_))))
                                  (_E8942389435_))))
                           (_E8941589567_
                            (lambda ()
                              (if (gx#stx-pair? _e8941489431_)
                                  (let ((_e8941789549_
                                         (gx#syntax-e _e8941489431_)))
                                    (let ((_hd8941889552_
                                           (##car _e8941789549_))
                                          (_tl8941989554_
                                           (##cdr _e8941789549_)))
                                      (if (gx#stx-pair? _tl8941989554_)
                                          (let ((_e8942089557_
                                                 (gx#syntax-e _tl8941989554_)))
                                            (let ((_hd8942189560_
                                                   (##car _e8942089557_))
                                                  (_tl8942289562_
                                                   (##cdr _e8942089557_)))
                                              (let ((_path89565_
                                                     _hd8942189560_))
                                                (if (gx#stx-null?
                                                     _tl8942289562_)
                                                    (if '#t
                                                        (_K89411_
                                                         _rest89412_
                                                         (cons (_import-spec-source89343_
                                                                _path89565_)
                                                               _r89413_))
                                                        (_E8941689545_))
                                                    (_E8941689545_)))))
                                          (_E8941689545_))))
                                  (_E8941689545_)))))
                      (_E8941589567_))))
                 (_import-spec-source89343_
                  (lambda (_spath89408_)
                    (gx#core-import-nested-module _spath89408_ _stx89335_)))
                 (_import!89344_
                  (lambda (_rbody89357_)
                    (letrec* ((_current-ctx89359_
                               (gx#current-expander-context))
                              (_deps89360_ (make-hash-table-eq))
                              (_bind!89361_
                               (lambda (_hd89406_)
                                 (gx#core-bind-import!__1
                                  _hd89406_
                                  _current-ctx89359_))))
                      (let _lp89363_ ((_rest89365_ _rbody89357_)
                                      (_body89366_ '()))
                        (let* ((_rest8936789375_ _rest89365_)
                               (_else8936989385_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _current-ctx89359_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _current-ctx89359_
                                       (foldl1 cons
                                               (##unchecked-structure-ref
                                                _current-ctx89359_
                                                '8
                                                gx#module-context::t
                                                '#f)
                                               _body89366_)
                                       '8
                                       gx#module-context::t
                                       '#f)
                                      '#!void)
                                  (hash-for-each
                                   (lambda (_ctx89383_ _g92213_)
                                     (gx#eval-module _ctx89383_))
                                   _deps89360_)
                                  _body89366_))
                               (_K8937189394_
                                (lambda (_rest89388_ _hd89389_)
                                  (if (##structure-direct-instance-of?
                                       _hd89389_
                                       'gx#module-import::t)
                                      (begin
                                        (_bind!89361_ _hd89389_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _hd89389_
                                                   '3
                                                   gx#module-import::t
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _hd89389_
                                                            '1
                                                            gx#module-import::t
                                                            '#f)
                                                           '3
                                                           gx#module-export::t
                                                           '#f)))
                                            (hash-put!
                                             _deps89360_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _hd89389_
                                               '1
                                               gx#module-import::t
                                               '#f)
                                              '1
                                              gx#module-export::t
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _hd89389_
                                           'gx#import-set::t)
                                          (begin
                                            (for-each
                                             _bind!89361_
                                             (##unchecked-structure-ref
                                              _hd89389_
                                              '3
                                              gx#import-set::t
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _hd89389_
                                                  '2
                                                  gx#import-set::t
                                                  '#f))
                                                (hash-put!
                                                 _deps89360_
                                                 (##unchecked-structure-ref
                                                  _hd89389_
                                                  '1
                                                  gx#import-set::t
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_$e89391_
                                                 (##structure-instance-of?
                                                  _hd89389_
                                                  'gx#module-context::t)))
                                            (if _$e89391_
                                                _$e89391_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _stx89335_
                                                 _hd89389_)))))
                                  (_lp89363_
                                   _rest89388_
                                   (cons _hd89389_ _body89366_)))))
                          (if (##pair? _rest8936789375_)
                              (let ((_hd8937289397_ (##car _rest8936789375_))
                                    (_tl8937389399_ (##cdr _rest8936789375_)))
                                (let* ((_hd89402_ _hd8937289397_)
                                       (_rest89404_ _tl8937389399_))
                                  (_K8937189394_ _rest89404_ _hd89402_)))
                              (_else8936989385_)))))))
                 (_expanded-import?89345_
                  (lambda (_e89349_)
                    (let ((_$e89351_
                           (##structure-direct-instance-of?
                            _e89349_
                            'gx#import-set::t)))
                      (if _$e89351_
                          _$e89351_
                          (let ((_$e89354_
                                 (##structure-direct-instance-of?
                                  _e89349_
                                  'gx#module-import::t)))
                            (if _$e89354_
                                _$e89354_
                                (##structure-instance-of?
                                 _e89349_
                                 'gx#module-context::t))))))))
          (let ((_rbody89347_
                 (gx#core-expand-import/export
                  _stx89335_
                  _expanded-import?89345_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _expand189338_)))
            (if _internal-expand?89336_
                (reverse _rbody89347_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_import!89344_ _rbody89347_))
                 (gx#stx-source _stx89335_)))))))
    (define gx#core-expand-import%__0
      (lambda (_stx89661_)
        (let ((_internal-expand?89663_ '#f))
          (gx#core-expand-import%__% _stx89661_ _internal-expand?89663_))))
    (define gx#core-expand-import%
      (lambda _g92215_
        (let ((_g92214_ (##length _g92215_)))
          (cond ((##fx= _g92214_ 1)
                 (apply (lambda (_stx89661_)
                          (gx#core-expand-import%__0 _stx89661_))
                        _g92215_))
                ((##fx= _g92214_ 2)
                 (apply (lambda (_stx89665_ _internal-expand?89666_)
                          (gx#core-expand-import%__%
                           _stx89665_
                           _internal-expand?89666_))
                        _g92215_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g92215_))))))
    (define gx#core-import-nested-module
      (lambda (_spath89262_ _where89263_)
        (let* ((_e8926489271_ _spath89262_)
               (_E8926689275_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8926489271_)))
               (_E8926589330_
                (lambda ()
                  (if (gx#stx-pair? _e8926489271_)
                      (let ((_e8926789279_ (gx#syntax-e _e8926489271_)))
                        (let ((_hd8926889282_ (##car _e8926789279_))
                              (_tl8926989284_ (##cdr _e8926789279_)))
                          (let* ((_origin89287_ _hd8926889282_)
                                 (_sub89289_ _tl8926989284_))
                            (if '#t
                                (let ((_origin-ctx89291_
                                       (if (gx#stx-false? _origin89287_)
                                           (gx#current-expander-context)
                                           (gx#import-module__0
                                            _origin89287_))))
                                  (let _lp89293_ ((_rest89295_ _sub89289_)
                                                  (_ctx89296_
                                                   _origin-ctx89291_))
                                    (let* ((_e8929789304_ _rest89295_)
                                           (_E8929989308_
                                            (lambda () _ctx89296_))
                                           (_E8929889326_
                                            (lambda ()
                                              (if (gx#stx-pair? _e8929789304_)
                                                  (let ((_e8930089312_
                                                         (gx#syntax-e
                                                          _e8929789304_)))
                                                    (let ((_hd8930189315_
                                                           (##car _e8930089312_))
                                                          (_tl8930289317_
                                                           (##cdr _e8930089312_)))
                                                      (let* ((_id89320_
                                                              _hd8930189315_)
                                                             (_rest89322_
                                                              _tl8930289317_))
                                                        (if '#t
                                                            (let ((_bind89324_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#resolve-identifier__% _id89320_ '0 _ctx89296_)))
                      (if (and (##structure-direct-instance-of?
                                _bind89324_
                                'gx#syntax-binding::t)
                               (##structure-instance-of?
                                (##unchecked-structure-ref
                                 _bind89324_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                'gx#module-context::t))
                          '#!void
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; not bound as module"
                           _where89263_
                           _spath89262_
                           _id89320_))
                      (_lp89293_
                       _rest89322_
                       (##unchecked-structure-ref
                        _bind89324_
                        '4
                        gx#syntax-binding::t
                        '#f)))
                    (_E8929989308_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8929989308_)))))
                                      (_E8929889326_))))
                                (_E8926689275_)))))
                      (_E8926689275_)))))
          (_E8926589330_))))
    (define gx#core-expand-import-source
      (lambda (_hd89260_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _hd89260_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_stx88768_ _internal-expand?88769_)
        (letrec* ((_make-export__9214492145_
                   (lambda (_bind89208_ _phi89209_ _ctx89210_ _name89211_)
                     (let* ((_key89213_
                             (##unchecked-structure-ref
                              _bind89208_
                              '2
                              gx#binding::t
                              '#f))
                            (_export-key89215_
                             (if _name89211_
                                 (gx#core-identifier-key _name89211_)
                                 _key89213_)))
                       (##structure
                        gx#module-export::t
                        _ctx89210_
                        _key89213_
                        _phi89209_
                        _export-key89215_
                        (let ((_$e89218_
                               (##structure-instance-of?
                                _bind89208_
                                'gx#extern-binding::t)))
                          (if _$e89218_
                              _$e89218_
                              (##structure-direct-instance-of?
                               _bind89208_
                               'gx#import-binding::t)))))))
                  (_make-export__0__9214692149_
                   (lambda (_bind89224_)
                     (let* ((_phi89226_ (gx#current-export-expander-phi))
                            (_ctx89228_ (gx#current-expander-context))
                            (_name89230_ '#f))
                       (_make-export__9214492145_
                        _bind89224_
                        _phi89226_
                        _ctx89228_
                        _name89230_))))
                  (_make-export__1__9214792150_
                   (lambda (_bind89232_ _phi89233_)
                     (let* ((_ctx89235_ (gx#current-expander-context))
                            (_name89237_ '#f))
                       (_make-export__9214492145_
                        _bind89232_
                        _phi89233_
                        _ctx89235_
                        _name89237_))))
                  (_make-export__2__9214892151_
                   (lambda (_bind89239_ _phi89240_ _ctx89241_)
                     (let ((_name89243_ '#f))
                       (_make-export__9214492145_
                        _bind89239_
                        _phi89240_
                        _ctx89241_
                        _name89243_))))
                  (_make-export88771_
                   (lambda _g92217_
                     (let ((_g92216_ (##length _g92217_)))
                       (cond ((##fx= _g92216_ 1)
                              (apply (lambda (_bind89224_)
                                       (_make-export__0__9214692149_
                                        _bind89224_))
                                     _g92217_))
                             ((##fx= _g92216_ 2)
                              (apply (lambda (_bind89232_ _phi89233_)
                                       (_make-export__1__9214792150_
                                        _bind89232_
                                        _phi89233_))
                                     _g92217_))
                             ((##fx= _g92216_ 3)
                              (apply (lambda (_bind89239_
                                              _phi89240_
                                              _ctx89241_)
                                       (_make-export__2__9214892151_
                                        _bind89239_
                                        _phi89240_
                                        _ctx89241_))
                                     _g92217_))
                             ((##fx= _g92216_ 4)
                              (apply (lambda (_bind89245_
                                              _phi89246_
                                              _ctx89247_
                                              _name89248_)
                                       (_make-export__9214492145_
                                        _bind89245_
                                        _phi89246_
                                        _ctx89247_
                                        _name89248_))
                                     _g92217_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g92217_))))))
                  (_expand188772_
                   (lambda (_hd88921_ _K88922_ _rest88923_ _r88924_)
                     (let* ((_e8892588957_ _hd88921_)
                            (_E8895288961_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _stx88768_
                                _hd88921_)))
                            (_E8894289040_
                             (lambda ()
                               (if (gx#stx-pair? _e8892588957_)
                                   (let ((_e8895388965_
                                          (gx#syntax-e _e8892588957_)))
                                     (let ((_hd8895488968_
                                            (##car _e8895388965_))
                                           (_tl8895588970_
                                            (##cdr _e8895388965_)))
                                       (if (eq? (gx#stx-e _hd8895488968_)
                                                'import:)
                                           (let ((_in88973_ _tl8895588970_))
                                             (if (gx#stx-list? _in88973_)
                                                 (let _lp88975_ ((_in-rest88977_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _in88973_)
                         (_r88978_ _r88924_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_e8897988986_
                                                           _in-rest88977_)
                                                          (_E8898188990_
                                                           (lambda ()
                                                             (_K88922_
                                                              _rest88923_
                                                              _r88978_)))
                                                          (_E8898089036_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _e8897988986_)
                         (let ((_e8898288994_ (gx#syntax-e _e8897988986_)))
                           (let ((_hd8898388997_ (##car _e8898288994_))
                                 (_tl8898488999_ (##cdr _e8898288994_)))
                             (let* ((_hd89002_ _hd8898388997_)
                                    (_in-rest89004_ _tl8898488999_))
                               (if '#t
                                   (let ((_src89034_
                                          (if (gx#core-bound-module? _hd89002_)
                                              (gx#syntax-local-e__0 _hd89002_)
                                              (if (gx#core-library-module-path?
                                                   _hd89002_)
                                                  (gx#import-module__0
                                                   (gx#core-resolve-library-module-path
                                                    _hd89002_))
                                                  (if (gx#core-library-relative-module-path?
                                                       _hd89002_)
                                                      (gx#import-module__0
                                                       (gx#core-resolve-library-relative-module-path
                                                        _hd89002_))
                                                      (if (gx#stx-string?
                                                           _hd89002_)
                                                          (gx#import-module__0
                                                           (gx#core-resolve-module-path__%
                                                            _hd89002_
                                                            (gx#stx-source
                                                             _stx88768_)))
                                                          (let* ((_e8900589012_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd89002_)
                         (_E8900789016_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; illegal re-export"
                             _stx88768_
                             _hd89002_)))
                         (_E8900689030_
                          (lambda ()
                            (if (gx#stx-pair? _e8900589012_)
                                (let ((_e8900889020_
                                       (gx#syntax-e _e8900589012_)))
                                  (let ((_hd8900989023_ (##car _e8900889020_))
                                        (_tl8901089025_ (##cdr _e8900889020_)))
                                    (if (eq? (gx#stx-e _hd8900989023_) 'in:)
                                        (let ((_spath89028_ _tl8901089025_))
                                          (if '#t
                                              (gx#core-import-nested-module
                                               _spath89028_
                                               _stx88768_)
                                              (_E8900789016_)))
                                        (_E8900789016_))))
                                (_E8900789016_)))))
                    (_E8900689030_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_lp88975_
                                      _in-rest89004_
                                      (_export-imports88773_
                                       _src89034_
                                       _r88978_)))
                                   (_E8898188990_)))))
                         (_E8898188990_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E8898089036_)))
                                                 (_E8895288961_)))
                                           (_E8895288961_))))
                                   (_E8895288961_))))
                            (_E8892989079_
                             (lambda ()
                               (if (gx#stx-pair? _e8892588957_)
                                   (let ((_e8894389044_
                                          (gx#syntax-e _e8892588957_)))
                                     (let ((_hd8894489047_
                                            (##car _e8894389044_))
                                           (_tl8894589049_
                                            (##cdr _e8894389044_)))
                                       (if (eq? (gx#stx-e _hd8894489047_)
                                                'rename:)
                                           (if (gx#stx-pair? _tl8894589049_)
                                               (let ((_e8894689052_
                                                      (gx#syntax-e
                                                       _tl8894589049_)))
                                                 (let ((_hd8894789055_
                                                        (##car _e8894689052_))
                                                       (_tl8894889057_
                                                        (##cdr _e8894689052_)))
                                                   (let ((_id89060_
                                                          _hd8894789055_))
                                                     (if (gx#stx-pair?
                                                          _tl8894889057_)
                                                         (let ((_e8894989062_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl8894889057_)))
                   (let ((_hd8895089065_ (##car _e8894989062_))
                         (_tl8895189067_ (##cdr _e8894989062_)))
                     (let ((_name89070_ _hd8895089065_))
                       (if (gx#stx-null? _tl8895189067_)
                           (if '#t
                               (let* ((_phi89072_
                                       (gx#current-export-expander-phi))
                                      (_$e89074_
                                       (gx#core-resolve-identifier__1
                                        _id89060_
                                        _phi89072_)))
                                 (if _$e89074_
                                     ((lambda (_bind89077_)
                                        (_K88922_
                                         _rest88923_
                                         (cons (_make-export__9214492145_
                                                _bind89077_
                                                _phi89072_
                                                (gx#current-expander-context)
                                                _name89070_)
                                               _r88924_)))
                                      _$e89074_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Reference to unbound identifier"
                                      _stx88768_
                                      _hd88921_
                                      _id89060_)))
                               (_E8894289040_))
                           (_E8894289040_)))))
                 (_E8894289040_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E8894289040_))
                                           (_E8894289040_))))
                                   (_E8894289040_))))
                            (_E8892889128_
                             (lambda ()
                               (if (gx#stx-pair? _e8892588957_)
                                   (let ((_e8893089083_
                                          (gx#syntax-e _e8892588957_)))
                                     (let ((_hd8893189086_
                                            (##car _e8893089083_))
                                           (_tl8893289088_
                                            (##cdr _e8893089083_)))
                                       (if (eq? (gx#stx-e _hd8893189086_)
                                                'spec:)
                                           (if (gx#stx-pair? _tl8893289088_)
                                               (let ((_e8893389091_
                                                      (gx#syntax-e
                                                       _tl8893289088_)))
                                                 (let ((_hd8893489094_
                                                        (##car _e8893389091_))
                                                       (_tl8893589096_
                                                        (##cdr _e8893389091_)))
                                                   (let ((_phi89099_
                                                          _hd8893489094_))
                                                     (if (gx#stx-pair?
                                                          _tl8893589096_)
                                                         (let ((_e8893689101_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl8893589096_)))
                   (let ((_hd8893789104_ (##car _e8893689101_))
                         (_tl8893889106_ (##cdr _e8893689101_)))
                     (let ((_id89109_ _hd8893789104_))
                       (if (gx#stx-pair? _tl8893889106_)
                           (let ((_e8893989111_ (gx#syntax-e _tl8893889106_)))
                             (let ((_hd8894089114_ (##car _e8893989111_))
                                   (_tl8894189116_ (##cdr _e8893989111_)))
                               (let ((_name89119_ _hd8894089114_))
                                 (if (gx#stx-null? _tl8894189116_)
                                     (if (and (gx#stx-fixnum? _phi89099_)
                                              (gx#identifier? _id89109_)
                                              (gx#identifier? _name89119_))
                                         (let* ((_phi89121_
                                                 (gx#stx-e _phi89099_))
                                                (_$e89123_
                                                 (gx#core-resolve-identifier__1
                                                  _id89109_
                                                  _phi89121_)))
                                           (if _$e89123_
                                               ((lambda (_bind89126_)
                                                  (_K88922_
                                                   _rest88923_
                                                   (cons (_make-export__9214492145_
                                                          _bind89126_
                                                          _phi89121_
                                                          (gx#current-expander-context)
                                                          _name89119_)
                                                         _r88924_)))
                                                _$e89123_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _stx88768_
                                                _hd88921_
                                                _id89109_)))
                                         (_E8892989079_))
                                     (_E8892989079_)))))
                           (_E8892989079_)))))
                 (_E8892989079_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E8892989079_))
                                           (_E8892989079_))))
                                   (_E8892989079_))))
                            (_E8892789139_
                             (lambda ()
                               (let ((_id89132_ _e8892588957_))
                                 (if (gx#identifier? _id89132_)
                                     (let ((_$e89134_
                                            (gx#core-resolve-identifier__1
                                             _id89132_
                                             (gx#current-export-expander-phi))))
                                       (if _$e89134_
                                           ((lambda (_bind89137_)
                                              (_K88922_
                                               _rest88923_
                                               (cons (_make-export__0__9214692149_
                                                      _bind89137_)
                                                     _r88924_)))
                                            _$e89134_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _stx88768_
                                            _hd88921_)))
                                     (_E8892889128_)))))
                            (_E8892689203_
                             (lambda ()
                               (if (eq? (gx#stx-e _e8892588957_) '#t)
                                   (if '#t
                                       (let* ((_current-ctx89143_
                                               (gx#current-expander-context))
                                              (_current-phi89145_
                                               (gx#current-export-expander-phi))
                                              (_phi-ctx89147_
                                               (gx#core-context-shift
                                                _current-ctx89143_
                                                _current-phi89145_))
                                              (_phi-bind89149_
                                               (hash->list
                                                (##unchecked-structure-ref
                                                 _phi-ctx89147_
                                                 '2
                                                 gx#expander-context::t
                                                 '#f))))
                                         (let _lp89152_ ((_bind-rest89154_
                                                          _phi-bind89149_)
                                                         (_set89155_ '()))
                                           (let* ((_bind-rest8915689166_
                                                   _bind-rest89154_)
                                                  (_else8915889174_
                                                   (lambda ()
                                                     (_K88922_
                                                      _rest88923_
                                                      (cons (##structure
                                                             gx#export-set::t
                                                             '#f
                                                             _current-phi89145_
                                                             _set89155_)
                                                            _r88924_))))
                                                  (_K8916089184_
                                                   (lambda (_bind-rest89177_
                                                            _bind89178_
                                                            _key89179_)
                                                     (if (or (##structure-direct-instance-of?
                                                              _bind89178_
                                                              'gx#import-binding::t)
                                                             (gx#private-feature-binding?
                                                              _bind89178_))
                                                         (_lp89152_
                                                          _bind-rest89177_
                                                          _set89155_)
                                                         (_lp89152_
                                                          _bind-rest89177_
                                                          (cons (_make-export__2__9214892151_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind89178_
                         _current-phi89145_
                         _current-ctx89143_)
                        _set89155_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _bind-rest8915689166_)
                                                 (let ((_hd8916189187_
                                                        (##car _bind-rest8915689166_))
                                                       (_tl8916289189_
                                                        (##cdr _bind-rest8915689166_)))
                                                   (if (##pair? _hd8916189187_)
                                                       (let ((_hd8916389192_
                                                              (##car _hd8916189187_))
                                                             (_tl8916489194_
                                                              (##cdr _hd8916189187_)))
                                                         (let* ((_key89197_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd8916389192_)
                        (_bind89199_ _tl8916489194_)
                        (_bind-rest89201_ _tl8916289189_))
                   (_K8916089184_ _bind-rest89201_ _bind89199_ _key89197_)))
               (_else8915889174_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_else8915889174_)))))
                                       (_E8892789139_))
                                   (_E8892789139_)))))
                       (_E8892689203_))))
                  (_export-imports88773_
                   (lambda (_src88797_ _r88798_)
                     (letrec* ((_current-ctx88800_
                                (gx#current-expander-context))
                               (_current-phi88801_
                                (gx#current-export-expander-phi))
                               (_import->export88802_
                                (lambda (_in88883_)
                                  (let* ((_in8888488892_ _in88883_)
                                         (_E8888688896_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _in8888488892_)))
                                         (_K8888788903_
                                          (lambda (_phi88899_
                                                   _key88900_
                                                   _out88901_)
                                            (##structure
                                             gx#module-export::t
                                             _current-ctx88800_
                                             _key88900_
                                             _phi88899_
                                             _key88900_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _in8888488892_
                                         'gx#module-import::t)
                                        (let* ((_e8888888906_
                                                (##unchecked-structure-ref
                                                 _in8888488892_
                                                 '1
                                                 gx#module-import::t
                                                 '#f))
                                               (_out88909_ _e8888888906_)
                                               (_e8888988911_
                                                (##unchecked-structure-ref
                                                 _in8888488892_
                                                 '2
                                                 gx#module-import::t
                                                 '#f))
                                               (_key88914_ _e8888988911_)
                                               (_e8889088916_
                                                (##unchecked-structure-ref
                                                 _in8888488892_
                                                 '3
                                                 gx#module-import::t
                                                 '#f))
                                               (_phi88919_ _e8889088916_))
                                          (_K8888788903_
                                           _phi88919_
                                           _key88914_
                                           _out88909_))
                                        (_E8888688896_)))))
                               (_fold-e88803_
                                (lambda (_in88805_ _r88806_)
                                  (let* ((_in8880788821_ _in88805_)
                                         (_else8881088829_
                                          (lambda () _r88806_)))
                                    (let ((_K8881688865_
                                           (lambda (_phi88861_
                                                    _key88862_
                                                    _out88863_)
                                             (if (and (fx= _phi88861_
                                                           _current-phi88801_)
                                                      (eq? _src88797_
                                                           (##unchecked-structure-ref
                                                            _out88863_
                                                            '1
                                                            gx#module-export::t
                                                            '#f)))
                                                 (cons (_import->export88802_
                                                        _in88805_)
                                                       _r88806_)
                                                 _r88806_)))
                                          (_K8881288840_
                                           (lambda (_imports88833_
                                                    _phi88834_
                                                    _ctx88835_)
                                             (if (and (fx= _phi88834_
                                                           _current-phi88801_)
                                                      (eq? _src88797_
                                                           _ctx88835_))
                                                 (foldl1 (lambda (_in88837_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r88838_)
                   (cons (_import->export88802_ _in88837_) _r88838_))
                 _r88806_
                 _imports88833_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _r88806_))))
                                      (let ((_try-match8880988858_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _in8880788821_
                                                    'gx#import-set::t)
                                                   (let* ((_e8881388843_
                                                           (##unchecked-structure-ref
                                                            _in8880788821_
                                                            '1
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e8881488848_
                                                           (##unchecked-structure-ref
                                                            _in8880788821_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e8881588853_
                                                           (##unchecked-structure-ref
                                                            _in8880788821_
                                                            '3
                                                            gx#import-set::t
                                                            '#f)))
                                                     (let ((_ctx88846_
                                                            _e8881388843_)
                                                           (_phi88851_
                                                            _e8881488848_)
                                                           (_imports88856_
                                                            _e8881588853_))
                                                       (_K8881288840_
                                                        _imports88856_
                                                        _phi88851_
                                                        _ctx88846_)))
                                                   (_else8881088829_)))))
                                        (if (##structure-direct-instance-of?
                                             _in8880788821_
                                             'gx#module-import::t)
                                            (let* ((_e8881788868_
                                                    (##unchecked-structure-ref
                                                     _in8880788821_
                                                     '1
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e8881888873_
                                                    (##unchecked-structure-ref
                                                     _in8880788821_
                                                     '2
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e8881988878_
                                                    (##unchecked-structure-ref
                                                     _in8880788821_
                                                     '3
                                                     gx#module-import::t
                                                     '#f)))
                                              (let ((_out88871_ _e8881788868_)
                                                    (_key88876_ _e8881888873_)
                                                    (_phi88881_ _e8881988878_))
                                                (_K8881688865_
                                                 _phi88881_
                                                 _key88876_
                                                 _out88871_)))
                                            (_try-match8880988858_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _src88797_
                              _current-phi88801_
                              (foldl1 _fold-e88803_
                                      '()
                                      (##unchecked-structure-ref
                                       _current-ctx88800_
                                       '8
                                       gx#module-context::t
                                       '#f)))
                             _r88798_))))
                  (_export!88774_
                   (lambda (_rbody88787_)
                     (letrec* ((_current-ctx88789_
                                (gx#current-expander-context))
                               (_fold-e88790_
                                (lambda (_out88794_ _r88795_)
                                  (if (##structure-direct-instance-of?
                                       _out88794_
                                       'gx#module-export::t)
                                      (cons _out88794_ _r88795_)
                                      (if (##structure-direct-instance-of?
                                           _out88794_
                                           'gx#export-set::t)
                                          (foldl1 cons
                                                  _r88795_
                                                  (##unchecked-structure-ref
                                                   _out88794_
                                                   '3
                                                   gx#export-set::t
                                                   '#f))
                                          _r88795_)))))
                       (let ((_body88792_ (reverse _rbody88787_)))
                         (##unchecked-structure-set!
                          _current-ctx88789_
                          (foldl1 _fold-e88790_
                                  (##unchecked-structure-ref
                                   _current-ctx88789_
                                   '9
                                   gx#module-context::t
                                   '#f)
                                  _body88792_)
                          '9
                          gx#module-context::t
                          '#f)
                         _body88792_))))
                  (_expanded-export?88775_
                   (lambda (_e88782_)
                     (let ((_$e88784_
                            (##structure-direct-instance-of?
                             _e88782_
                             'gx#module-export::t)))
                       (if _$e88784_
                           _$e88784_
                           (##structure-direct-instance-of?
                            _e88782_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _internal-expand?88769_)
              (let ((_rbody88780_
                     (gx#core-expand-import/export
                      _stx88768_
                      _expanded-export?88775_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _expand188772_)))
                (if _internal-expand?88769_
                    (reverse _rbody88780_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons '%#export (_export!88774_ _rbody88780_))
                     (gx#stx-source _stx88768_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _stx88768_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _stx88768_))))))
    (define gx#core-expand-export%__0
      (lambda (_stx89253_)
        (let ((_internal-expand?89255_ '#f))
          (gx#core-expand-export%__% _stx89253_ _internal-expand?89255_))))
    (define gx#core-expand-export%
      (lambda _g92219_
        (let ((_g92218_ (##length _g92219_)))
          (cond ((##fx= _g92218_ 1)
                 (apply (lambda (_stx89253_)
                          (gx#core-expand-export%__0 _stx89253_))
                        _g92219_))
                ((##fx= _g92218_ 2)
                 (apply (lambda (_stx89257_ _internal-expand?89258_)
                          (gx#core-expand-export%__%
                           _stx89257_
                           _internal-expand?89258_))
                        _g92219_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g92219_))))))
    (define gx#core-expand-export-source
      (lambda (_hd88765_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _hd88765_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_stx88735_)
        (let* ((_e8873688743_ _stx88735_)
               (_E8873888747_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8873688743_)))
               (_E8873788761_
                (lambda ()
                  (if (gx#stx-pair? _e8873688743_)
                      (let ((_e8873988751_ (gx#syntax-e _e8873688743_)))
                        (let ((_hd8874088754_ (##car _e8873988751_))
                              (_tl8874188756_ (##cdr _e8873988751_)))
                          (let ((_body88759_ _tl8874188756_))
                            (if (gx#identifier-list? _body88759_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _body88759_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _body88759_))
                                   (gx#stx-source _stx88735_)))
                                (_E8873888747_)))))
                      (_E8873888747_)))))
          (_E8873788761_))))
    (define gx#core-bind-feature!__%
      (lambda (_id88701_ _private?88702_ _phi88703_ _ctx88704_)
        (gx#core-bind-syntax!__%
         _id88701_
         ((if _private?88702_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _id88701_))
         _private?88702_
         _phi88703_
         _ctx88704_)))
    (define gx#core-bind-feature!__0
      (lambda (_id88709_)
        (let* ((_private?88711_ '#f)
               (_phi88713_ (gx#current-expander-phi))
               (_ctx88715_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id88709_
           _private?88711_
           _phi88713_
           _ctx88715_))))
    (define gx#core-bind-feature!__1
      (lambda (_id88717_ _private?88718_)
        (let* ((_phi88720_ (gx#current-expander-phi))
               (_ctx88722_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id88717_
           _private?88718_
           _phi88720_
           _ctx88722_))))
    (define gx#core-bind-feature!__2
      (lambda (_id88724_ _private?88725_ _phi88726_)
        (let ((_ctx88728_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id88724_
           _private?88725_
           _phi88726_
           _ctx88728_))))
    (define gx#core-bind-feature!
      (lambda _g92221_
        (let ((_g92220_ (##length _g92221_)))
          (cond ((##fx= _g92220_ 1)
                 (apply (lambda (_id88709_)
                          (gx#core-bind-feature!__0 _id88709_))
                        _g92221_))
                ((##fx= _g92220_ 2)
                 (apply (lambda (_id88717_ _private?88718_)
                          (gx#core-bind-feature!__1 _id88717_ _private?88718_))
                        _g92221_))
                ((##fx= _g92220_ 3)
                 (apply (lambda (_id88724_ _private?88725_ _phi88726_)
                          (gx#core-bind-feature!__2
                           _id88724_
                           _private?88725_
                           _phi88726_))
                        _g92221_))
                ((##fx= _g92220_ 4)
                 (apply (lambda (_id88730_
                                 _private?88731_
                                 _phi88732_
                                 _ctx88733_)
                          (gx#core-bind-feature!__%
                           _id88730_
                           _private?88731_
                           _phi88732_
                           _ctx88733_))
                        _g92221_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g92221_))))))))
