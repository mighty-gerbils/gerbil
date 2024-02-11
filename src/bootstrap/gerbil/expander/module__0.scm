(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1707610214)
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
      (lambda _$args160948_
        (apply make-struct-instance gx#module-import::t _$args160948_)))
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
      (lambda _$args160945_
        (apply make-struct-instance gx#module-export::t _$args160945_)))
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
      (lambda _$args160942_
        (apply make-struct-instance gx#import-set::t _$args160942_)))
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
      (lambda _$args160939_
        (apply make-struct-instance gx#export-set::t _$args160939_)))
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
      (lambda _$args160936_
        (apply make-class-instance gx#import-expander::t _$args160936_)))
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
      (lambda _$args160933_
        (apply make-class-instance gx#export-expander::t _$args160933_)))
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
      (lambda _$args160930_
        (apply make-class-instance
               gx#import-export-expander::t
               _$args160930_)))
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
      (lambda (_path160927_ _fun160928_)
        (call-with-input-file
         (cons 'path: (cons _path160927_ gx#source-file-settings))
         _fun160928_)))
    (define gx#module-context:::init!
      (lambda (_self160921_ _id160922_ _super160923_ _ns160924_ _path160925_)
        (if (##fx< '11 (##structure-length _self160921_))
            (begin
              (##unchecked-structure-set!
               _self160921_
               _id160922_
               '1
               (##structure-type _self160921_)
               '#f)
              (##unchecked-structure-set!
               _self160921_
               (make-table 'test: eq?)
               '2
               (##structure-type _self160921_)
               '#f)
              (##unchecked-structure-set!
               _self160921_
               _super160923_
               '3
               (##structure-type _self160921_)
               '#f)
              (##unchecked-structure-set!
               _self160921_
               '#f
               '4
               (##structure-type _self160921_)
               '#f)
              (##unchecked-structure-set!
               _self160921_
               '#f
               '5
               (##structure-type _self160921_)
               '#f)
              (##unchecked-structure-set!
               _self160921_
               _ns160924_
               '6
               (##structure-type _self160921_)
               '#f)
              (##unchecked-structure-set!
               _self160921_
               _path160925_
               '7
               (##structure-type _self160921_)
               '#f)
              (##unchecked-structure-set!
               _self160921_
               '()
               '8
               (##structure-type _self160921_)
               '#f)
              (##unchecked-structure-set!
               _self160921_
               '()
               '9
               (##structure-type _self160921_)
               '#f)
              (##unchecked-structure-set!
               _self160921_
               '#f
               '10
               (##structure-type _self160921_)
               '#f)
              (##unchecked-structure-set!
               _self160921_
               '#f
               '11
               (##structure-type _self160921_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self160921_
                   '11
                   (##vector-length _self160921_)))))
    (bind-method! gx#module-context::t ':init! gx#module-context:::init! '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_self160765_ _ctx160766_ _root160767_)
        (let ((_super160775_
               (let ((_$e160769_ _root160767_))
                 (if _$e160769_
                     _$e160769_
                     (let ((_$e160772_ (gx#core-context-root__0)))
                       (if _$e160772_
                           _$e160772_
                           (let ((__obj165458
                                  (##structure gx#root-context::t '#f '#f)))
                             (let ((__constructor165459
                                    (direct-method-ref
                                     gx#root-context::t
                                     ':init!)))
                               (if __constructor165459
                                   (__constructor165459 __obj165458)
                                   (error '"missing constructor method implementation"
                                          'class:
                                          gx#root-context::t
                                          'method:
                                          ':init!)))
                             __obj165458)))))))
          (if _ctx160766_
              (let ((_id160778_
                     (##structure-ref
                      _ctx160766_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_path160779_
                     (##structure-ref _ctx160766_ '7 gx#module-context::t '#f))
                    (_in160780_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _ctx160766_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_e160781_
                     (make-promise (lambda () (gx#eval-module _ctx160766_)))))
                (if (##fx< '8 (##structure-length _self160765_))
                    (begin
                      (##unchecked-structure-set!
                       _self160765_
                       _id160778_
                       '1
                       (##structure-type _self160765_)
                       '#f)
                      (##unchecked-structure-set!
                       _self160765_
                       (make-table 'test: eq? 'size: (length _in160780_))
                       '2
                       (##structure-type _self160765_)
                       '#f)
                      (##unchecked-structure-set!
                       _self160765_
                       _super160775_
                       '3
                       (##structure-type _self160765_)
                       '#f)
                      (##unchecked-structure-set!
                       _self160765_
                       '#f
                       '4
                       (##structure-type _self160765_)
                       '#f)
                      (##unchecked-structure-set!
                       _self160765_
                       '#f
                       '5
                       (##structure-type _self160765_)
                       '#f)
                      (##unchecked-structure-set!
                       _self160765_
                       _path160779_
                       '6
                       (##structure-type _self160765_)
                       '#f)
                      (##unchecked-structure-set!
                       _self160765_
                       _in160780_
                       '7
                       (##structure-type _self160765_)
                       '#f)
                      (##unchecked-structure-set!
                       _self160765_
                       _e160781_
                       '8
                       (##structure-type _self160765_)
                       '#f))
                    (error '"struct-instance-init!: too many arguments for struct"
                           _self160765_
                           '8
                           (##vector-length _self160765_)))
                (for-each
                 (lambda (_g160782160784_)
                   (gx#core-bind-weak-import!__% _g160782160784_ _self160765_))
                 _in160780_))
              (if (##fx< '8 (##structure-length _self160765_))
                  (begin
                    (##unchecked-structure-set!
                     _self160765_
                     '#f
                     '1
                     (##structure-type _self160765_)
                     '#f)
                    (##unchecked-structure-set!
                     _self160765_
                     (make-table 'test: eq?)
                     '2
                     (##structure-type _self160765_)
                     '#f)
                    (##unchecked-structure-set!
                     _self160765_
                     _super160775_
                     '3
                     (##structure-type _self160765_)
                     '#f)
                    (##unchecked-structure-set!
                     _self160765_
                     '#f
                     '4
                     (##structure-type _self160765_)
                     '#f)
                    (##unchecked-structure-set!
                     _self160765_
                     '#f
                     '5
                     (##structure-type _self160765_)
                     '#f)
                    (##unchecked-structure-set!
                     _self160765_
                     '#f
                     '6
                     (##structure-type _self160765_)
                     '#f)
                    (##unchecked-structure-set!
                     _self160765_
                     '()
                     '7
                     (##structure-type _self160765_)
                     '#f)
                    (##unchecked-structure-set!
                     _self160765_
                     '#f
                     '8
                     (##structure-type _self160765_)
                     '#f))
                  (error '"struct-instance-init!: too many arguments for struct"
                         _self160765_
                         '8
                         (##vector-length _self160765_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_self160790_ _ctx160791_)
        (let ((_root160793_ '#f))
          (gx#prelude-context:::init!__%
           _self160790_
           _ctx160791_
           _root160793_))))
    (define gx#prelude-context:::init!
      (lambda _g165465_
        (let ((_g165464_ (##length _g165465_)))
          (cond ((##fx= _g165464_ 2)
                 (apply (lambda (_self160790_ _ctx160791_)
                          (gx#prelude-context:::init!__0
                           _self160790_
                           _ctx160791_))
                        _g165465_))
                ((##fx= _g165464_ 3)
                 (apply (lambda (_self160795_ _ctx160796_ _root160797_)
                          (gx#prelude-context:::init!__%
                           _self160795_
                           _ctx160796_
                           _root160797_))
                        _g165465_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g165465_))))))
    (bind-method! gx#prelude-context::t ':init! gx#prelude-context:::init! '#f)
    (define gx#import-export-expander-init!
      (lambda (_self160639_ _e160640_)
        (if (##fx< '3 (##structure-length _self160639_))
            (begin
              (##unchecked-structure-set!
               _self160639_
               _e160640_
               '1
               (##structure-type _self160639_)
               '#f)
              (##unchecked-structure-set!
               _self160639_
               (gx#current-expander-context)
               '2
               (##structure-type _self160639_)
               '#f)
              (##unchecked-structure-set!
               _self160639_
               (fx- (gx#current-expander-phi) '1)
               '3
               (##structure-type _self160639_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self160639_
                   '3
                   (##vector-length _self160639_)))))
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
      (lambda (_g160265160268_ _g160266160270_)
        (gx#core-apply-user-expander__%
         _g160265160268_
         _g160266160270_
         'apply-import-expander)))
    (bind-method!
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_g160136160139_ _g160137160141_)
        (gx#core-apply-user-expander__%
         _g160136160139_
         _g160137160141_
         'apply-export-expander)))
    (bind-method!
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_ctx160007_)
        (let* ((_path160009_
                (##structure-ref _ctx160007_ '7 gx#module-context::t '#f))
               (_path160011_
                (if (pair? _path160009_) (last _path160009_) _path160009_)))
          (if (string? _path160011_) _path160011_ '#f))))
    (define gx#import-module__%
      (lambda (_path159983_ _reload?159984_ _eval?159985_)
        (let ((_ctx159987_
               ((gx#current-expander-module-import)
                _path159983_
                _reload?159984_)))
          (if (and _ctx159987_ _eval?159985_)
              (gx#eval-module _ctx159987_)
              '#!void)
          _ctx159987_)))
    (define gx#import-module__0
      (lambda (_path159992_)
        (let* ((_reload?159994_ '#f) (_eval?159996_ '#f))
          (gx#import-module__% _path159992_ _reload?159994_ _eval?159996_))))
    (define gx#import-module__1
      (lambda (_path159998_ _reload?159999_)
        (let ((_eval?160001_ '#f))
          (gx#import-module__% _path159998_ _reload?159999_ _eval?160001_))))
    (define gx#import-module
      (lambda _g165467_
        (let ((_g165466_ (##length _g165467_)))
          (cond ((##fx= _g165466_ 1)
                 (apply (lambda (_path159992_)
                          (gx#import-module__0 _path159992_))
                        _g165467_))
                ((##fx= _g165466_ 2)
                 (apply (lambda (_path159998_ _reload?159999_)
                          (gx#import-module__1 _path159998_ _reload?159999_))
                        _g165467_))
                ((##fx= _g165466_ 3)
                 (apply (lambda (_path160003_ _reload?160004_ _eval?160005_)
                          (gx#import-module__%
                           _path160003_
                           _reload?160004_
                           _eval?160005_))
                        _g165467_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g165467_))))))
    (define gx#eval-module
      (lambda (_mod159980_) ((gx#current-expander-module-eval) _mod159980_)))
    (define gx#core-eval-module
      (lambda (_obj159965_)
        (letrec ((_force-e159967_
                  (lambda (_getf159976_ _e159977_)
                    (call-with-parameters
                     (lambda () (force (_getf159976_ _e159977_)))
                     gx#current-expander-context
                     _e159977_
                     gx#current-expander-phi
                     '0))))
          (let _recur159969_ ((_e159971_ _obj159965_))
            (if (##structure-instance-of? _e159971_ 'gx#module-context::t)
                (begin
                  (let ((_$e159973_ (gx#core-context-prelude__% _e159971_)))
                    (if _$e159973_ (_recur159969_ _$e159973_) '#!void))
                  (_force-e159967_ gx#module-context-e _e159971_))
                (if (##structure-instance-of? _e159971_ 'gx#prelude-context::t)
                    (_force-e159967_ gx#prelude-context-e _e159971_)
                    (if (gx#stx-string? _e159971_)
                        (_recur159969_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _e159971_)))
                        (if (gx#core-library-module-path? _e159971_)
                            (_recur159969_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _e159971_)))
                            (error '"Cannot eval module" _obj159965_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_ctx159948_)
        (let _lp159950_ ((_e159952_ _ctx159948_))
          (if (or (##structure-instance-of? _e159952_ 'gx#module-context::t)
                  (##structure-instance-of? _e159952_ 'gx#local-context::t))
              (_lp159950_
               (##unchecked-structure-ref _e159952_ '3 gx#phi-context::t '#f))
              (if (##structure-instance-of? _e159952_ 'gx#prelude-context::t)
                  _e159952_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_ctx159961_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _ctx159961_))))
    (define gx#core-context-prelude
      (lambda _g165469_
        (let ((_g165468_ (##length _g165469_)))
          (cond ((##fx= _g165468_ 0)
                 (apply (lambda () (gx#core-context-prelude__0)) _g165469_))
                ((##fx= _g165468_ 1)
                 (apply (lambda (_ctx159963_)
                          (gx#core-context-prelude__% _ctx159963_))
                        _g165469_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g165469_))))))
    (define gx#core-module->prelude-context
      (lambda (_ctx159938_)
        (let* ((_ht159940_ (gx#current-expander-module-registry))
               (_$e159942_ (table-ref _ht159940_ _ctx159938_ '#f)))
          (if _$e159942_
              (values _$e159942_)
              (let ((_pre159945_
                     (let ((__obj165460
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
                       (gx#prelude-context:::init! __obj165460 _ctx159938_)
                       __obj165460)))
                (table-set! _ht159940_ _ctx159938_ _pre159945_)
                _pre159945_)))))
    (define gx#core-import-module__%
      (lambda (_rpath159819_ _reload?159820_)
        (letrec ((_import-source159822_
                  (lambda (_path159907_)
                    (if (member _path159907_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _path159907_)
                        '#!void)
                    (call-with-parameters
                     (lambda ()
                       (let ((_g165470_ (gx#core-read-module _path159907_)))
                         (begin
                           (let ((_g165471_
                                  (if (##values? _g165470_)
                                      (##vector-length _g165470_)
                                      1)))
                             (if (not (##fx= _g165471_ 4))
                                 (error "Context expects 4 values" _g165471_)))
                           (let ((_pre159910_ (##vector-ref _g165470_ 0))
                                 (_id159911_ (##vector-ref _g165470_ 1))
                                 (_ns159912_ (##vector-ref _g165470_ 2))
                                 (_body159913_ (##vector-ref _g165470_ 3)))
                             (let* ((_prelude159918_
                                     (if (##structure-instance-of?
                                          _pre159910_
                                          'gx#prelude-context::t)
                                         _pre159910_
                                         (if (##structure-instance-of?
                                              _pre159910_
                                              'gx#module-context::t)
                                             (gx#core-module->prelude-context
                                              _pre159910_)
                                             (if (string? _pre159910_)
                                                 (gx#core-module->prelude-context
                                                  (gx#core-import-module__0
                                                   _pre159910_))
                                                 (if (not _pre159910_)
                                                     (let ((_$e159915_
                                                            (gx#current-expander-module-prelude)))
                                                       (if _$e159915_
                                                           _$e159915_
                                                           (let ((__obj165461
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
                     (gx#prelude-context:::init! __obj165461 '#f)
                     __obj165461)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error '"Cannot import module; unknown prelude"
                                                            _rpath159819_
                                                            _pre159910_))))))
                                    (_ctx159920_
                                     (let ((__obj165462
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
                                        __obj165462
                                        _id159911_
                                        _prelude159918_
                                        _ns159912_
                                        _path159907_)
                                       __obj165462))
                                    (_body159922_
                                     (gx#core-expand-module-begin
                                      _body159913_
                                      _ctx159920_))
                                    (_body159924_
                                     (gx#core-quote-syntax__%
                                      (gx#core-cons '%#begin _body159922_)
                                      _path159907_
                                      _ctx159920_
                                      '())))
                               (##unchecked-structure-set!
                                _ctx159920_
                                (make-promise
                                 (lambda () (gx#eval-syntax* _body159924_)))
                                '10
                                gx#module-context::t
                                '#f)
                               (##unchecked-structure-set!
                                _ctx159920_
                                _body159924_
                                '11
                                gx#module-context::t
                                '#f)
                               (table-set!
                                (gx#current-expander-module-registry)
                                _path159907_
                                _ctx159920_)
                               (table-set!
                                (gx#current-expander-module-registry)
                                _id159911_
                                _ctx159920_)
                               _ctx159920_)))))
                     gx#current-expander-context
                     (gx#core-context-root__0)
                     gx#current-expander-marks
                     '()
                     gx#current-expander-phi
                     '0
                     gx#current-expander-path
                     (cons _path159907_ (gx#current-expander-path))
                     gx#current-import-expander-phi
                     '#f
                     gx#current-export-expander-phi
                     '#f)))
                 (_import-submodule159823_
                  (lambda (_rpath159835_)
                    (let* ((_rpath159836159843_ _rpath159835_)
                           (_E159838159847_
                            (lambda ()
                              (error '"No clause matching"
                                     _rpath159836159843_)))
                           (_K159839159895_
                            (lambda (_refs159850_ _origin159851_)
                              (let ((_ctx159853_
                                     (if _origin159851_
                                         (gx#core-import-module__%
                                          _origin159851_
                                          _reload?159820_)
                                         (gx#current-expander-context))))
                                (let _lp159855_ ((_rest159857_ _refs159850_)
                                                 (_ctx159858_ _ctx159853_))
                                  (let* ((_rest159859159867_ _rest159857_)
                                         (_else159861159875_
                                          (lambda () _ctx159858_))
                                         (_K159863159883_
                                          (lambda (_rest159878_ _id159879_)
                                            (let ((_bind159881_
                                                   (gx#resolve-identifier__%
                                                    _id159879_
                                                    '0
                                                    _ctx159858_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _bind159881_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _bind159881_
                                                         '4
                                                         gx#syntax-binding::t
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_lp159855_
                                                   _rest159878_
                                                   (##unchecked-structure-ref
                                                    _bind159881_
                                                    '4
                                                    gx#syntax-binding::t
                                                    '#f))
                                                  (error '"Cannot import submodule; not bound as a module"
                                                         _rpath159835_
                                                         _id159879_
                                                         _bind159881_))))))
                                    (if (##pair? _rest159859159867_)
                                        (let ((_hd159864159886_
                                               (##car _rest159859159867_))
                                              (_tl159865159888_
                                               (##cdr _rest159859159867_)))
                                          (let* ((_id159891_ _hd159864159886_)
                                                 (_rest159893_
                                                  _tl159865159888_))
                                            (_K159863159883_
                                             _rest159893_
                                             _id159891_)))
                                        (_else159861159875_))))))))
                      (if (##pair? _rpath159836159843_)
                          (let ((_hd159840159898_ (##car _rpath159836159843_))
                                (_tl159841159900_ (##cdr _rpath159836159843_)))
                            (let* ((_origin159903_ _hd159840159898_)
                                   (_refs159905_ _tl159841159900_))
                              (_K159839159895_ _refs159905_ _origin159903_)))
                          (_E159838159847_))))))
          (let ((_$e159825_
                 (if (not _reload?159820_)
                     (table-ref
                      (gx#current-expander-module-registry)
                      _rpath159819_
                      '#f)
                     '#f)))
            (if _$e159825_
                (values _$e159825_)
                (if (list? _rpath159819_)
                    (_import-submodule159823_ _rpath159819_)
                    (if (gx#core-library-module-path? _rpath159819_)
                        (let ((_ctx159828_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _rpath159819_)
                                _reload?159820_)))
                          (table-set!
                           (gx#current-expander-module-registry)
                           _rpath159819_
                           _ctx159828_)
                          _ctx159828_)
                        (let* ((_npath159830_ (path-normalize _rpath159819_))
                               (_$e159832_
                                (if (not _reload?159820_)
                                    (table-ref
                                     (gx#current-expander-module-registry)
                                     _npath159830_
                                     '#f)
                                    '#f)))
                          (if _$e159832_
                              (values _$e159832_)
                              (_import-source159822_ _npath159830_))))))))))
    (define gx#core-import-module__0
      (lambda (_rpath159931_)
        (let ((_reload?159933_ '#f))
          (gx#core-import-module__% _rpath159931_ _reload?159933_))))
    (define gx#core-import-module
      (lambda _g165473_
        (let ((_g165472_ (##length _g165473_)))
          (cond ((##fx= _g165472_ 1)
                 (apply (lambda (_rpath159931_)
                          (gx#core-import-module__0 _rpath159931_))
                        _g165473_))
                ((##fx= _g165472_ 2)
                 (apply (lambda (_rpath159935_ _reload?159936_)
                          (gx#core-import-module__%
                           _rpath159935_
                           _reload?159936_))
                        _g165473_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g165473_))))))
    (define gx#core-read-module
      (lambda (_path159808_)
        (with-catch
         (lambda (_exn159810_)
           (if (and (datum-parsing-exception? _exn159810_)
                    (eq? (datum-parsing-exception-filepos _exn159810_) '0))
               (gx#core-read-module/lang _path159808_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _path159808_
                (call-with-parameters
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_g159812159814_)
                      (display-exception _exn159810_ _g159812159814_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _path159808_)))))
    (define gx#core-read-module/sexp
      (lambda (_path159671_)
        (let _lp159673_ ((_body159675_ (read-syntax-from-file _path159671_))
                         (_pre159676_ '#f)
                         (_ns159677_ '#f)
                         (_pkg159678_ '#f))
          (let* ((_e159679159703_ _body159675_)
                 (_E159695159725_
                  (lambda ()
                    (let ((_g165474_
                           (if _pkg159678_
                               (values _pre159676_ _ns159677_ _pkg159678_)
                               (gx#core-read-module-package
                                _path159671_
                                _pre159676_
                                _ns159677_))))
                      (begin
                        (let ((_g165475_
                               (if (##values? _g165474_)
                                   (##vector-length _g165474_)
                                   1)))
                          (if (not (##fx= _g165475_ 3))
                              (error "Context expects 3 values" _g165475_)))
                        (let ((_pre159707_ (##vector-ref _g165474_ 0))
                              (_ns159708_ (##vector-ref _g165474_ 1))
                              (_pkg159709_ (##vector-ref _g165474_ 2)))
                          (let* ((_prelude159711_
                                  (if (gx#core-bound-module-prelude?
                                       _pre159707_)
                                      (gx#syntax-local-e__0 _pre159707_)
                                      (if (gx#core-library-module-path?
                                           _pre159707_)
                                          (gx#core-resolve-library-module-path
                                           _pre159707_)
                                          (if (gx#stx-string? _pre159707_)
                                              (gx#core-resolve-module-path__%
                                               _pre159707_
                                               _path159671_)
                                              (gx#stx-e _pre159707_)))))
                                 (_path-id159713_
                                  (gx#core-module-path->namespace
                                   _path159671_))
                                 (_pkg-id159715_
                                  (if _pkg159709_
                                      (string-append
                                       _pkg159709_
                                       '"/"
                                       _path-id159713_)
                                      _path-id159713_))
                                 (_module-id159717_
                                  (string->symbol _pkg-id159715_))
                                 (_module-ns159722_
                                  (if (eq? _ns159708_ '#!void)
                                      '#f
                                      (let ((_$e159719_ _ns159708_))
                                        (if _$e159719_
                                            _$e159719_
                                            _pkg-id159715_)))))
                            (values _prelude159711_
                                    _module-id159717_
                                    _module-ns159722_
                                    _body159675_)))))))
                 (_E159688159754_
                  (lambda ()
                    (if (gx#stx-pair? _e159679159703_)
                        (let ((_e159696159729_ (gx#syntax-e _e159679159703_)))
                          (let ((_hd159697159732_ (##car _e159696159729_))
                                (_tl159698159734_ (##cdr _e159696159729_)))
                            (if (eq? (gx#stx-e _hd159697159732_) 'package:)
                                (if (gx#stx-pair? _tl159698159734_)
                                    (let ((_e159699159737_
                                           (gx#syntax-e _tl159698159734_)))
                                      (let ((_hd159700159740_
                                             (##car _e159699159737_))
                                            (_tl159701159742_
                                             (##cdr _e159699159737_)))
                                        (let* ((_pkg159745_ _hd159700159740_)
                                               (_rest159747_ _tl159701159742_))
                                          (if '#t
                                              (let ((_pkg159752_
                                                     (if (gx#identifier?
                                                          _pkg159745_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _pkg159745_))
                                                         (if (or (gx#stx-string?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _pkg159745_)
                         (gx#stx-false? _pkg159745_))
                     (gx#stx-e _pkg159745_)
                     (gx#raise-syntax-error
                      'import
                      '"Bad syntax; Illegal package name"
                      _pkg159745_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp159673_
                                                 _rest159747_
                                                 _pre159676_
                                                 _ns159677_
                                                 _pkg159752_))
                                              (_E159695159725_)))))
                                    (_E159695159725_))
                                (_E159695159725_))))
                        (_E159695159725_))))
                 (_E159681159780_
                  (lambda ()
                    (if (gx#stx-pair? _e159679159703_)
                        (let ((_e159689159758_ (gx#syntax-e _e159679159703_)))
                          (let ((_hd159690159761_ (##car _e159689159758_))
                                (_tl159691159763_ (##cdr _e159689159758_)))
                            (if (eq? (gx#stx-e _hd159690159761_) 'namespace:)
                                (if (gx#stx-pair? _tl159691159763_)
                                    (let ((_e159692159766_
                                           (gx#syntax-e _tl159691159763_)))
                                      (let ((_hd159693159769_
                                             (##car _e159692159766_))
                                            (_tl159694159771_
                                             (##cdr _e159692159766_)))
                                        (let* ((_ns159774_ _hd159693159769_)
                                               (_rest159776_ _tl159694159771_))
                                          (if '#t
                                              (let ((_ns159778_
                                                     (if (gx#identifier?
                                                          _ns159774_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _ns159774_))
                                                         (if (gx#stx-string?
                                                              _ns159774_)
                                                             (gx#stx-e
                                                              _ns159774_)
                                                             (if (gx#stx-false?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _ns159774_)
                         '#!void
                         (gx#raise-syntax-error
                          'import
                          '"Bad syntax; illegal namespace"
                          _ns159774_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp159673_
                                                 _rest159776_
                                                 _pre159676_
                                                 _ns159778_
                                                 _pkg159678_))
                                              (_E159688159754_)))))
                                    (_E159688159754_))
                                (_E159688159754_))))
                        (_E159688159754_))))
                 (_E159680159804_
                  (lambda ()
                    (if (gx#stx-pair? _e159679159703_)
                        (let ((_e159682159784_ (gx#syntax-e _e159679159703_)))
                          (let ((_hd159683159787_ (##car _e159682159784_))
                                (_tl159684159789_ (##cdr _e159682159784_)))
                            (if (eq? (gx#stx-e _hd159683159787_) 'prelude:)
                                (if (gx#stx-pair? _tl159684159789_)
                                    (let ((_e159685159792_
                                           (gx#syntax-e _tl159684159789_)))
                                      (let ((_hd159686159795_
                                             (##car _e159685159792_))
                                            (_tl159687159797_
                                             (##cdr _e159685159792_)))
                                        (let* ((_prelude159800_
                                                _hd159686159795_)
                                               (_rest159802_ _tl159687159797_))
                                          (if '#t
                                              (_lp159673_
                                               _rest159802_
                                               _prelude159800_
                                               _ns159677_
                                               _pkg159678_)
                                              (_E159681159780_)))))
                                    (_E159681159780_))
                                (_E159681159780_))))
                        (_E159681159780_)))))
            (_E159680159804_)))))
    (define gx#core-read-module/lang
      (lambda (_path159498_)
        (letrec ((_default-read-module-body159500_
                  (lambda (_inp159663_)
                    (let _lp159665_ ((_body159667_ '()))
                      (let ((_next159669_ (read-syntax _inp159663_)))
                        (if (eof-object? _next159669_)
                            (reverse _body159667_)
                            (_lp159665_ (cons _next159669_ _body159667_)))))))
                 (_read-body159501_
                  (lambda (_inp159582_
                           _pre159583_
                           _ns159584_
                           _pkg159585_
                           _args159586_)
                    (let ((_g165476_
                           (if _pkg159585_
                               (values _pre159583_ _ns159584_ _pkg159585_)
                               (gx#core-read-module-package
                                _path159498_
                                _pre159583_
                                _ns159584_))))
                      (begin
                        (let ((_g165477_
                               (if (##values? _g165476_)
                                   (##vector-length _g165476_)
                                   1)))
                          (if (not (##fx= _g165477_ 3))
                              (error "Context expects 3 values" _g165477_)))
                        (let ((_pre159588_ (##vector-ref _g165476_ 0))
                              (_ns159589_ (##vector-ref _g165476_ 1))
                              (_pkg159590_ (##vector-ref _g165476_ 2)))
                          (let* ((_prelude159592_
                                  (gx#import-module__0 _pre159588_))
                                 (_read-module-body159646_
                                  (let ((_$e159638_
                                         (find (lambda (_e159593159595_)
                                                 (let* ((_g159597159607_
                                                         _e159593159595_)
                                                        (_else159599159615_
                                                         (lambda () '#f))
                                                        (_K159601159619_
                                                         (lambda () '#t)))
                                                   (if (##structure-direct-instance-of?
                                                        _g159597159607_
                                                        'gx#module-export::t)
                                                       (let* ((_e159602159622_
                                                               (##unchecked-structure-ref
                                                                _g159597159607_
                                                                '1
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e159603159625_
                                                               (##unchecked-structure-ref
                                                                _g159597159607_
                                                                '2
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e159604159628_
                                                               (##unchecked-structure-ref
                                                                _g159597159607_
                                                                '3
                                                                gx#module-export::t
                                                                '#f)))
                                                         (if (##eq? _e159604159628_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)
                     (let ((_e159605159631_
                            (##unchecked-structure-ref
                             _g159597159607_
                             '4
                             gx#module-export::t
                             '#f)))
                       (if ((lambda (_g159633159635_)
                              (eq? _g159633159635_ 'read-module-body))
                            _e159605159631_)
                           (_K159601159619_)
                           (_else159599159615_)))
                     (_else159599159615_)))
               (_else159599159615_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (##unchecked-structure-ref
                                                _prelude159592_
                                                '9
                                                gx#module-context::t
                                                '#f))))
                                    (if _$e159638_
                                        ((lambda (_xport159641_)
                                           (let ((_proc159644_
                                                  (with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _xport159641_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _proc159644_)
                                                 _proc159644_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _path159498_
                                                  _pre159588_
                                                  _proc159644_))))
                                         _$e159638_)
                                        _default-read-module-body159500_)))
                                 (_path-id159648_
                                  (gx#core-module-path->namespace
                                   _path159498_))
                                 (_pkg-id159650_
                                  (if _pkg159590_
                                      (string-append
                                       _pkg159590_
                                       '"/"
                                       _path-id159648_)
                                      _path-id159648_))
                                 (_module-id159652_
                                  (string->symbol _pkg-id159650_))
                                 (_module-ns159657_
                                  (let ((_$e159654_ _ns159589_))
                                    (if _$e159654_ _$e159654_ _pkg-id159650_)))
                                 (_body159660_
                                  (call-with-parameters
                                   (lambda ()
                                     (_read-module-body159646_ _inp159582_))
                                   gx#current-module-reader-path
                                   _path159498_
                                   gx#current-module-reader-args
                                   _args159586_)))
                            (values _prelude159592_
                                    _module-id159652_
                                    _module-ns159657_
                                    _body159660_)))))))
                 (_string-e159502_
                  (lambda (_obj159579_ _what159580_)
                    (if (string? _obj159579_)
                        _obj159579_
                        (if (symbol? _obj159579_)
                            (symbol->string _obj159579_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _what159580_)
                             _path159498_
                             _obj159579_)))))
                 (_read-lang-args159503_
                  (lambda (_inp159534_ _args159535_)
                    (let* ((_args159536159544_ _args159535_)
                           (_else159538159552_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _path159498_)))
                           (_K159540159567_
                            (lambda (_args159555_ _prelude159556_)
                              (let* ((_pkg159558_
                                      (pgetq 'package: _args159555_))
                                     (_pkg159560_
                                      (if _pkg159558_
                                          (_string-e159502_
                                           _pkg159558_
                                           '"package")
                                          '#f))
                                     (_ns159562_
                                      (pgetq 'namespace: _args159555_))
                                     (_ns159564_
                                      (if _ns159562_
                                          (_string-e159502_
                                           _ns159562_
                                           '"namespace")
                                          '#f)))
                                (_read-body159501_
                                 _inp159534_
                                 _prelude159556_
                                 _ns159564_
                                 _pkg159560_
                                 _args159555_)))))
                      (if (##pair? _args159536159544_)
                          (let ((_hd159541159570_ (##car _args159536159544_))
                                (_tl159542159572_ (##cdr _args159536159544_)))
                            (let* ((_prelude159575_ _hd159541159570_)
                                   (_args159577_ _tl159542159572_))
                              (_K159540159567_ _args159577_ _prelude159575_)))
                          (_else159538159552_)))))
                 (_read-lang159504_
                  (lambda (_inp159509_)
                    (let* ((_head159511_ (read-line _inp159509_))
                           (_$e159513_ (string-index _head159511_ '#\space)))
                      (if _$e159513_
                          ((lambda (_ix159516_)
                             (let ((_lang159518_
                                    (substring _head159511_ '0 _ix159516_)))
                               (if (equal? _lang159518_ '"#lang")
                                   (let* ((_rest159520_
                                           (substring
                                            _head159511_
                                            (fx+ _ix159516_ '1)
                                            (string-length _head159511_)))
                                          (_args159531_
                                           (with-catch
                                            (lambda (_g159521159523_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _path159498_
                                               _g159521159523_))
                                            (lambda ()
                                              (call-with-input-string
                                               _rest159520_
                                               (lambda (_g159526159528_)
                                                 (read-all
                                                  _g159526159528_
                                                  read)))))))
                                     (_read-lang-args159503_
                                      _inp159509_
                                      _args159531_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _path159498_))))
                           _$e159513_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _path159498_)))))
                 (_read-e159505_
                  (lambda (_inp159507_)
                    (if (eq? (peek-char _inp159507_) '#\#)
                        (_read-lang159504_ _inp159507_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _path159498_)))))
          (gx#call-with-input-source-file _path159498_ _read-e159505_))))
    (define gx#core-read-module-package
      (lambda (_path159452_ _pre159453_ _ns159454_)
        (letrec ((_string-e159456_
                  (lambda (_e159496_)
                    (if (symbol? _e159496_)
                        (symbol->string _e159496_)
                        (if (string? _e159496_)
                            _e159496_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _e159496_))))))
          (let _lp159458_ ((_dir159460_ (path-directory _path159452_))
                           (_pkg-path159461_ '()))
            (let ((_gerbil.pkg159463_ (path-expand '"gerbil.pkg" _dir159460_)))
              (if (file-exists? _gerbil.pkg159463_)
                  (let ((_plist159465_
                         (gx#core-library-package-plist__% _dir159460_ '#t)))
                    (if (null? _plist159465_)
                        (let ((_pkg159467_
                               (if (not (null? _pkg-path159461_))
                                   (string-join _pkg-path159461_ '"/")
                                   '#f)))
                          (values _pre159453_ _ns159454_ _pkg159467_))
                        (if (list? _plist159465_)
                            (let* ((_root159469_
                                    (pgetq 'package: _plist159465_))
                                   (_pkg159473_
                                    (let ((_pkg-path159471_
                                           (if _root159469_
                                               (cons (_string-e159456_
                                                      _root159469_)
                                                     _pkg-path159461_)
                                               _pkg-path159461_)))
                                      (if (not (null? _pkg-path159471_))
                                          (string-join _pkg-path159471_ '"/")
                                          '#f)))
                                   (_ns159480_
                                    (let ((_ns159478_
                                           (let ((_$e159475_ _ns159454_))
                                             (if _$e159475_
                                                 _$e159475_
                                                 (pgetq 'namespace:
                                                        _plist159465_)))))
                                      (if _ns159478_
                                          (_string-e159456_ _ns159478_)
                                          '#f)))
                                   (_pre159485_
                                    (let ((_$e159482_ _pre159453_))
                                      (if _$e159482_
                                          _$e159482_
                                          (pgetq 'prelude: _plist159465_)))))
                              (values _pre159485_ _ns159480_ _pkg159473_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _plist159465_))))
                  (let ((_dir*159488_
                         (path-strip-trailing-directory-separator
                          _dir159460_)))
                    (if (or (string-empty? _dir*159488_)
                            (equal? _dir159460_ _dir*159488_))
                        (values _pre159453_ _ns159454_ '#f)
                        (let ((_xpath159493_
                               (path-strip-directory _dir*159488_))
                              (_xdir159494_ (path-directory _dir*159488_)))
                          (_lp159458_
                           _xdir159494_
                           (cons _xpath159493_ _pkg-path159461_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_path159450_)
        (path-strip-extension (path-strip-directory _path159450_))))
    (define gx#core-module-path->id
      (lambda (_path159448_)
        (string->symbol (gx#core-module-path->namespace _path159448_))))
    (define gx#core-resolve-module-path__%
      (lambda (_stx-path159427_ _rel159428_)
        (let* ((_path159430_ (gx#stx-e _stx-path159427_))
               (_path159432_
                (if (string-empty? (path-extension _path159430_))
                    (string-append _path159430_ '".ss")
                    _path159430_)))
          (gx#core-resolve-path__%
           _path159432_
           (let ((_$e159435_ (gx#stx-source _stx-path159427_)))
             (if _$e159435_ _$e159435_ _rel159428_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_stx-path159441_)
        (let ((_rel159443_ '#f))
          (gx#core-resolve-module-path__% _stx-path159441_ _rel159443_))))
    (define gx#core-resolve-module-path
      (lambda _g165479_
        (let ((_g165478_ (##length _g165479_)))
          (cond ((##fx= _g165478_ 1)
                 (apply (lambda (_stx-path159441_)
                          (gx#core-resolve-module-path__0 _stx-path159441_))
                        _g165479_))
                ((##fx= _g165478_ 2)
                 (apply (lambda (_stx-path159445_ _rel159446_)
                          (gx#core-resolve-module-path__%
                           _stx-path159445_
                           _rel159446_))
                        _g165479_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g165479_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_libpath159313_)
        (let* ((_spath159315_ (symbol->string (gx#stx-e _libpath159313_)))
               (_spath159317_
                (substring _spath159315_ '1 (string-length _spath159315_)))
               (_ext159319_ (path-extension _spath159317_))
               (_ssi159321_
                (if (string-empty? _ext159319_)
                    (string-append _spath159317_ '".ssi")
                    (string-append
                     (path-strip-extension _spath159317_)
                     '".ssi")))
               (_srcs159325_
                (if (string-empty? _ext159319_)
                    (map (lambda (_ext159323_)
                           (string-append _spath159317_ _ext159323_))
                         '(".ss" ".sld" ".scm"))
                    (cons _spath159317_ '()))))
          (let _lp159328_ ((_rest159330_
                            (gx#current-expander-module-library-path)))
            (let* ((_rest159331159340_ _rest159330_)
                   (_E159334159344_
                    (lambda ()
                      (error '"No clause matching" _rest159331159340_))))
              (let ((_K159336159414_
                     (lambda (_rest159355_ _dir159356_)
                       (letrec ((_resolve159358_
                                 (lambda (_ssi159370_ _srcs159371_)
                                   (let ((_compiled-path159373_
                                          (path-expand
                                           _ssi159370_
                                           _dir159356_)))
                                     (if (file-exists? _compiled-path159373_)
                                         (path-normalize _compiled-path159373_)
                                         (let _lpr159375_ ((_rest-src159377_
                                                            _srcs159371_))
                                           (let* ((_rest-src159378159386_
                                                   _rest-src159377_)
                                                  (_else159380159394_
                                                   (lambda ()
                                                     (_lp159328_
                                                      _rest159355_)))
                                                  (_K159382159402_
                                                   (lambda (_rest-src159397_
                                                            _src159398_)
                                                     (let ((_src-path159400_
                                                            (path-expand
                                                             _src159398_
                                                             _dir159356_)))
                                                       (if (file-exists?
                                                            _src-path159400_)
                                                           (path-normalize
                                                            _src-path159400_)
                                                           (_lpr159375_
                                                            _rest-src159397_))))))
                                             (if (##pair? _rest-src159378159386_)
                                                 (let ((_hd159383159405_
                                                        (##car _rest-src159378159386_))
                                                       (_tl159384159407_
                                                        (##cdr _rest-src159378159386_)))
                                                   (let* ((_src159410_
                                                           _hd159383159405_)
                                                          (_rest-src159412_
                                                           _tl159384159407_))
                                                     (_K159382159402_
                                                      _rest-src159412_
                                                      _src159410_)))
                                                 (_else159380159394_)))))))))
                         (let ((_$e159360_
                                (gx#core-library-package-path-prefix
                                 _dir159356_)))
                           (if _$e159360_
                               ((lambda (_prefix159363_)
                                  (if (string-prefix?
                                       _prefix159363_
                                       _spath159317_)
                                      (let ((_ssi159367_
                                             (substring
                                              _ssi159321_
                                              (string-length _prefix159363_)
                                              (string-length _ssi159321_)))
                                            (_srcs159368_
                                             (map (lambda (_src159365_)
                                                    (substring
                                                     _src159365_
                                                     (string-length
                                                      _prefix159363_)
                                                     (string-length
                                                      _src159365_)))
                                                  _srcs159325_)))
                                        (_resolve159358_
                                         _ssi159367_
                                         _srcs159368_))
                                      (_lp159328_ _rest159355_)))
                                _$e159360_)
                               (_resolve159358_ _ssi159321_ _srcs159325_))))))
                    (_K159335159349_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"Cannot find library module"
                        _libpath159313_))))
                (let ((_try-match159333159352_
                       (lambda ()
                         (if (##null? _rest159331159340_)
                             (_K159335159349_)
                             (_E159334159344_)))))
                  (if (##pair? _rest159331159340_)
                      (let ((_tl159338159419_ (##cdr _rest159331159340_))
                            (_hd159337159417_ (##car _rest159331159340_)))
                        (let ((_dir159422_ _hd159337159417_)
                              (_rest159424_ _tl159338159419_))
                          (_K159336159414_ _rest159424_ _dir159422_)))
                      (_try-match159333159352_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_modpath159286_)
        (letrec ((_resolve159288_
                  (lambda (_path159305_ _base159306_)
                    (let ((_$e159308_ (string-rindex _base159306_ '#\/)))
                      (if _$e159308_
                          ((lambda (_idx159311_)
                             (gx#core-resolve-library-module-path
                              (string->symbol
                               (string-append
                                '":"
                                (substring _base159306_ '0 _idx159311_)
                                '"/"
                                _path159305_))))
                           _$e159308_)
                          (gx#core-resolve-library-module-path
                           (string->symbol
                            (string-append '":" _path159305_))))))))
          (let ((_spath159290_ (symbol->string (gx#stx-e _modpath159286_)))
                (_mod159291_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _mod159291_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"Cannot resolve relative module path; not in module context"
                 _modpath159286_))
            (let ((_mpath159293_
                   (symbol->string
                    (##structure-ref
                     _mod159291_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _lp159295_ ((_spath159297_ _spath159290_)
                               (_mpath159298_ _mpath159293_))
                (if (string-prefix? '"../" _spath159297_)
                    (let ((_$e159300_ (string-rindex _mpath159298_ '#\/)))
                      (if _$e159300_
                          ((lambda (_idx159303_)
                             (_lp159295_
                              (substring
                               _spath159297_
                               '3
                               (string-length _spath159297_))
                              (substring _mpath159298_ '0 _idx159303_)))
                           _$e159300_)
                          (gx#raise-syntax-error
                           '#f
                           '"Cannot resolve relative module path; illegal traversal"
                           _modpath159286_)))
                    (if (string-prefix? '"./" _spath159297_)
                        (_lp159295_
                         (substring
                          _spath159297_
                          '2
                          (string-length _spath159297_))
                         _mpath159298_)
                        (_resolve159288_ _spath159297_ _mpath159298_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_dir159279_)
        (let ((_$e159281_
               (pgetq 'package:
                      (gx#core-library-package-plist__0 _dir159279_))))
          (if _$e159281_
              ((lambda (_pkg159284_)
                 (string-append (symbol->string _pkg159284_) '"/"))
               _$e159281_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_dir159251_ _exists?159252_)
        (let* ((_cache159254_ (gx#core-library-package-cache))
               (_$e159256_ (table-ref _cache159254_ _dir159251_ '#f)))
          (if _$e159256_
              (values _$e159256_)
              (let* ((_gerbil.pkg159259_
                      (path-expand '"gerbil.pkg" _dir159251_))
                     (_plist159266_
                      (if (or _exists?159252_
                              (file-exists? _gerbil.pkg159259_))
                          (let ((_e159264_
                                 (gx#call-with-input-source-file
                                  _gerbil.pkg159259_
                                  read)))
                            (if (eof-object? _e159264_)
                                '()
                                (if (list? _e159264_)
                                    _e159264_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _gerbil.pkg159259_
                                     _e159264_))))
                          '())))
                (table-set! _cache159254_ _dir159251_ _plist159266_)
                _plist159266_)))))
    (define gx#core-library-package-plist__0
      (lambda (_dir159272_)
        (let ((_exists?159274_ '#f))
          (gx#core-library-package-plist__% _dir159272_ _exists?159274_))))
    (define gx#core-library-package-plist
      (lambda _g165481_
        (let ((_g165480_ (##length _g165481_)))
          (cond ((##fx= _g165480_ 1)
                 (apply (lambda (_dir159272_)
                          (gx#core-library-package-plist__0 _dir159272_))
                        _g165481_))
                ((##fx= _g165480_ 2)
                 (apply (lambda (_dir159276_ _exists?159277_)
                          (gx#core-library-package-plist__%
                           _dir159276_
                           _exists?159277_))
                        _g165481_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g165481_))))))
    (define gx#core-library-package-cache
      (lambda ()
        (let ((_$e159245_ (gx#current-expander-module-library-package-cache)))
          (if _$e159245_
              (values _$e159245_)
              (let ((_cache159248_ (make-table)))
                (gx#current-expander-module-library-package-cache
                 _cache159248_)
                _cache159248_)))))
    (define gx#core-library-module-path?
      (lambda (_stx159242_) (gx#core-special-module-path? _stx159242_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_stx159240_) (gx#core-special-module-path? _stx159240_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_stx159235_ _char159236_)
        (if (gx#identifier? _stx159235_)
            (if (interned-symbol? (gx#stx-e _stx159235_))
                (let ((_str159238_ (symbol->string (gx#stx-e _stx159235_))))
                  (if (fx> (string-length _str159238_) '1)
                      (eq? (string-ref _str159238_ '0) _char159236_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_stx159229_)
        (gx#core-bound-identifier?__%
         _stx159229_
         (lambda (_g159230159232_)
           (gx#expander-binding?__% _g159230159232_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_stx159223_)
        (gx#core-bound-identifier?__%
         _stx159223_
         (lambda (_g159224159226_)
           (gx#expander-binding?__% _g159224159226_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_stx159210_)
        (letrec ((_module-prelude?159212_
                  (lambda (_e159218_)
                    (let ((_$e159220_
                           (##structure-instance-of?
                            _e159218_
                            'gx#module-context::t)))
                      (if _$e159220_
                          _$e159220_
                          (##structure-instance-of?
                           _e159218_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _stx159210_
           (lambda (_g159213159215_)
             (gx#expander-binding?__%
              _g159213159215_
              _module-prelude?159212_))))))
    (define gx#core-bind-import!__%
      (lambda (_in159140_ _ctx159141_ _force-weak?159142_)
        (let* ((_in159143159152_ _in159140_)
               (_E159145159156_
                (lambda () (error '"No clause matching" _in159143159152_)))
               (_K159146159169_
                (lambda (_weak?159159_ _phi159160_ _key159161_ _source159162_)
                  (gx#core-bind!__%
                   _key159161_
                   (let ((_e159164_
                          (gx#core-resolve-module-export _source159162_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref
                       _e159164_
                       '1
                       gx#binding::t
                       '#f)
                      _key159161_
                      _phi159160_
                      _e159164_
                      (##unchecked-structure-ref
                       _source159162_
                       '1
                       gx#module-export::t
                       '#f)
                      (let ((_$e159166_ _force-weak?159142_))
                        (if _$e159166_ _$e159166_ _weak?159159_))))
                   gx#core-context-rebind?
                   _phi159160_
                   _ctx159141_))))
          (if (##structure-direct-instance-of?
               _in159143159152_
               'gx#module-import::t)
              (let* ((_e159147159172_
                      (##unchecked-structure-ref
                       _in159143159152_
                       '1
                       gx#module-import::t
                       '#f))
                     (_source159175_ _e159147159172_)
                     (_e159148159177_
                      (##unchecked-structure-ref
                       _in159143159152_
                       '2
                       gx#module-import::t
                       '#f))
                     (_key159180_ _e159148159177_)
                     (_e159149159182_
                      (##unchecked-structure-ref
                       _in159143159152_
                       '3
                       gx#module-import::t
                       '#f))
                     (_phi159185_ _e159149159182_)
                     (_e159150159187_
                      (##unchecked-structure-ref
                       _in159143159152_
                       '4
                       gx#module-import::t
                       '#f))
                     (_weak?159190_ _e159150159187_))
                (_K159146159169_
                 _weak?159190_
                 _phi159185_
                 _key159180_
                 _source159175_))
              (_E159145159156_)))))
    (define gx#core-bind-import!__0
      (lambda (_in159195_)
        (let* ((_ctx159197_ (gx#current-expander-context))
               (_force-weak?159199_ '#f))
          (gx#core-bind-import!__%
           _in159195_
           _ctx159197_
           _force-weak?159199_))))
    (define gx#core-bind-import!__1
      (lambda (_in159201_ _ctx159202_)
        (let ((_force-weak?159204_ '#f))
          (gx#core-bind-import!__%
           _in159201_
           _ctx159202_
           _force-weak?159204_))))
    (define gx#core-bind-import!
      (lambda _g165483_
        (let ((_g165482_ (##length _g165483_)))
          (cond ((##fx= _g165482_ 1)
                 (apply (lambda (_in159195_)
                          (gx#core-bind-import!__0 _in159195_))
                        _g165483_))
                ((##fx= _g165482_ 2)
                 (apply (lambda (_in159201_ _ctx159202_)
                          (gx#core-bind-import!__1 _in159201_ _ctx159202_))
                        _g165483_))
                ((##fx= _g165482_ 3)
                 (apply (lambda (_in159206_ _ctx159207_ _force-weak?159208_)
                          (gx#core-bind-import!__%
                           _in159206_
                           _ctx159207_
                           _force-weak?159208_))
                        _g165483_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g165483_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_in159126_ _ctx159127_)
        (gx#core-bind-import!__% _in159126_ _ctx159127_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_in159132_)
        (let ((_ctx159134_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _in159132_ _ctx159134_))))
    (define gx#core-bind-weak-import!
      (lambda _g165485_
        (let ((_g165484_ (##length _g165485_)))
          (cond ((##fx= _g165484_ 1)
                 (apply (lambda (_in159132_)
                          (gx#core-bind-weak-import!__0 _in159132_))
                        _g165485_))
                ((##fx= _g165484_ 2)
                 (apply (lambda (_in159136_ _ctx159137_)
                          (gx#core-bind-weak-import!__%
                           _in159136_
                           _ctx159137_))
                        _g165485_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g165485_))))))
    (define gx#core-resolve-module-export
      (lambda (_out159017_)
        (letrec ((_subst159019_
                  (lambda (_key159065_)
                    (let* ((_key159066159074_ _key159065_)
                           (_else159068159082_ (lambda () _key159065_))
                           (_K159070159113_
                            (lambda (_mark159085_ _id159086_)
                              (let* ((_mark159087159093_ _mark159085_)
                                     (_E159089159097_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark159087159093_)))
                                     (_K159090159105_
                                      (lambda (_subst159100_)
                                        (let ((_$e159102_
                                               (if _subst159100_
                                                   (table-ref
                                                    _subst159100_
                                                    _id159086_
                                                    '#f)
                                                   '#f)))
                                          (if _$e159102_
                                              _$e159102_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _key159065_))))))
                                (if (##structure-instance-of?
                                     _mark159087159093_
                                     'gx#expander-mark::t)
                                    (let* ((_e159091159108_
                                            (##unchecked-structure-ref
                                             _mark159087159093_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst159111_ _e159091159108_))
                                      (_K159090159105_ _subst159111_))
                                    (_E159089159097_))))))
                      (if (##pair? _key159066159074_)
                          (let ((_hd159071159116_ (##car _key159066159074_))
                                (_tl159072159118_ (##cdr _key159066159074_)))
                            (let* ((_id159121_ _hd159071159116_)
                                   (_mark159123_ _tl159072159118_))
                              (_K159070159113_ _mark159123_ _id159121_)))
                          (_else159068159082_))))))
          (let* ((_out159020159030_ _out159017_)
                 (_E159022159034_
                  (lambda () (error '"No clause matching" _out159020159030_)))
                 (_K159023159041_
                  (lambda (_phi159037_ _key159038_ _ctx159039_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _ctx159039_ _phi159037_)
                     (_subst159019_ _key159038_)))))
            (if (##structure-direct-instance-of?
                 _out159020159030_
                 'gx#module-export::t)
                (let* ((_e159024159044_
                        (##unchecked-structure-ref
                         _out159020159030_
                         '1
                         gx#module-export::t
                         '#f))
                       (_ctx159047_ _e159024159044_)
                       (_e159025159049_
                        (##unchecked-structure-ref
                         _out159020159030_
                         '2
                         gx#module-export::t
                         '#f))
                       (_key159052_ _e159025159049_)
                       (_e159026159054_
                        (##unchecked-structure-ref
                         _out159020159030_
                         '3
                         gx#module-export::t
                         '#f))
                       (_phi159057_ _e159026159054_)
                       (_e159027159059_
                        (##unchecked-structure-ref
                         _out159020159030_
                         '4
                         gx#module-export::t
                         '#f))
                       (_e159028159062_
                        (##unchecked-structure-ref
                         _out159020159030_
                         '5
                         gx#module-export::t
                         '#f)))
                  (_K159023159041_ _phi159057_ _key159052_ _ctx159047_))
                (_E159022159034_))))))
    (define gx#core-module-export->import__%
      (lambda (_out158942_ _rename158943_ _dphi158944_)
        (let* ((_out158945158955_ _out158942_)
               (_E158947158959_
                (lambda () (error '"No clause matching" _out158945158955_)))
               (_K158948158971_
                (lambda (_weak?158962_
                         _name158963_
                         _phi158964_
                         _key158965_
                         _ctx158966_)
                  (##structure
                   gx#module-import::t
                   _out158942_
                   (let ((_$e158968_ _rename158943_))
                     (if _$e158968_ _$e158968_ _name158963_))
                   (fx+ _phi158964_ _dphi158944_)
                   _weak?158962_))))
          (if (##structure-direct-instance-of?
               _out158945158955_
               'gx#module-export::t)
              (let* ((_e158949158974_
                      (##unchecked-structure-ref
                       _out158945158955_
                       '1
                       gx#module-export::t
                       '#f))
                     (_ctx158977_ _e158949158974_)
                     (_e158950158979_
                      (##unchecked-structure-ref
                       _out158945158955_
                       '2
                       gx#module-export::t
                       '#f))
                     (_key158982_ _e158950158979_)
                     (_e158951158984_
                      (##unchecked-structure-ref
                       _out158945158955_
                       '3
                       gx#module-export::t
                       '#f))
                     (_phi158987_ _e158951158984_)
                     (_e158952158989_
                      (##unchecked-structure-ref
                       _out158945158955_
                       '4
                       gx#module-export::t
                       '#f))
                     (_name158992_ _e158952158989_)
                     (_e158953158994_
                      (##unchecked-structure-ref
                       _out158945158955_
                       '5
                       gx#module-export::t
                       '#f))
                     (_weak?158997_ _e158953158994_))
                (_K158948158971_
                 _weak?158997_
                 _name158992_
                 _phi158987_
                 _key158982_
                 _ctx158977_))
              (_E158947158959_)))))
    (define gx#core-module-export->import__0
      (lambda (_out159002_)
        (let* ((_rename159004_ '#f) (_dphi159006_ '0))
          (gx#core-module-export->import__%
           _out159002_
           _rename159004_
           _dphi159006_))))
    (define gx#core-module-export->import__1
      (lambda (_out159008_ _rename159009_)
        (let ((_dphi159011_ '0))
          (gx#core-module-export->import__%
           _out159008_
           _rename159009_
           _dphi159011_))))
    (define gx#core-module-export->import
      (lambda _g165487_
        (let ((_g165486_ (##length _g165487_)))
          (cond ((##fx= _g165486_ 1)
                 (apply (lambda (_out159002_)
                          (gx#core-module-export->import__0 _out159002_))
                        _g165487_))
                ((##fx= _g165486_ 2)
                 (apply (lambda (_out159008_ _rename159009_)
                          (gx#core-module-export->import__1
                           _out159008_
                           _rename159009_))
                        _g165487_))
                ((##fx= _g165486_ 3)
                 (apply (lambda (_out159013_ _rename159014_ _dphi159015_)
                          (gx#core-module-export->import__%
                           _out159013_
                           _rename159014_
                           _dphi159015_))
                        _g165487_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g165487_))))))
    (define gx#core-expand-module%
      (lambda (_stx158870_)
        (letrec ((_make-context158872_
                  (lambda (_id158923_)
                    (let* ((_super158925_ (gx#current-expander-context))
                           (_bind-id158927_ (gx#stx-e _id158923_))
                           (_mod-id158929_
                            (if (##structure-instance-of?
                                 _super158925_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##structure-ref
                                  _super158925_
                                  '1
                                  gx#expander-context::t
                                  '#f)
                                 '"$"
                                 _bind-id158927_)
                                _bind-id158927_))
                           (_ns158931_ (symbol->string _mod-id158929_))
                           (_path158938_
                            (if (##structure-instance-of?
                                 _super158925_
                                 'gx#module-context::t)
                                (let ((_path158933_
                                       (##unchecked-structure-ref
                                        _super158925_
                                        '7
                                        gx#module-context::t
                                        '#f)))
                                  (if (or (pair? _path158933_)
                                          (null? _path158933_))
                                      (cons _bind-id158927_ _path158933_)
                                      (if (not _path158933_)
                                          _bind-id158927_
                                          (cons _bind-id158927_
                                                (cons _path158933_ '())))))
                                _bind-id158927_)))
                      (let ((__obj165463
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
                         __obj165463
                         _mod-id158929_
                         _super158925_
                         _ns158931_
                         _path158938_)
                        __obj165463)))))
          (let* ((_e158873158883_ _stx158870_)
                 (_E158875158887_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e158873158883_)))
                 (_E158874158919_
                  (lambda ()
                    (if (gx#stx-pair? _e158873158883_)
                        (let ((_e158876158891_ (gx#syntax-e _e158873158883_)))
                          (let ((_hd158877158894_ (##car _e158876158891_))
                                (_tl158878158896_ (##cdr _e158876158891_)))
                            (if (gx#stx-pair? _tl158878158896_)
                                (let ((_e158879158899_
                                       (gx#syntax-e _tl158878158896_)))
                                  (let ((_hd158880158902_
                                         (##car _e158879158899_))
                                        (_tl158881158904_
                                         (##cdr _e158879158899_)))
                                    (let* ((_id158907_ _hd158880158902_)
                                           (_body158909_ _tl158881158904_))
                                      (if (and (gx#identifier? _id158907_)
                                               (gx#stx-list? _body158909_))
                                          (let* ((_ctx158911_
                                                  (_make-context158872_
                                                   _id158907_))
                                                 (_body158913_
                                                  (gx#core-expand-module-begin
                                                   _body158909_
                                                   _ctx158911_))
                                                 (_body158915_
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body158913_)
                                                   (gx#stx-source
                                                    _stx158870_))))
                                            (##unchecked-structure-set!
                                             _ctx158911_
                                             (make-promise
                                              (lambda ()
                                                (gx#eval-syntax*
                                                 _body158915_)))
                                             '10
                                             gx#module-context::t
                                             '#f)
                                            (##unchecked-structure-set!
                                             _ctx158911_
                                             _body158915_
                                             '11
                                             gx#module-context::t
                                             '#f)
                                            (gx#core-bind-syntax!__0
                                             _id158907_
                                             _ctx158911_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-list
                                              '%#module
                                              (gx#core-quote-syntax__0
                                               _id158907_)
                                              _body158915_)
                                             (gx#stx-source _stx158870_)))
                                          (_E158875158887_)))))
                                (_E158875158887_))))
                        (_E158875158887_)))))
            (_E158874158919_)))))
    (define gx#core-expand-module-begin
      (lambda (_body158836_ _ctx158837_)
        (call-with-parameters
         (lambda ()
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_stx158840_
                   (gx#core-expand-head (cons '%%begin-module _body158836_)))
                  (_e158841158848_ _stx158840_)
                  (_E158843158852_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _stx158840_)))
                  (_E158842158866_
                   (lambda ()
                     (if (gx#stx-pair? _e158841158848_)
                         (let ((_e158844158856_ (gx#syntax-e _e158841158848_)))
                           (let ((_hd158845158859_ (##car _e158844158856_))
                                 (_tl158846158861_ (##cdr _e158844158856_)))
                             (if (and (gx#identifier? _hd158845158859_)
                                      (gx#core-identifier=?
                                       _hd158845158859_
                                       '%#begin-module))
                                 (let ((_body158864_ _tl158846158861_))
                                   (if '#t
                                       (if (gx#sealed-syntax? _stx158840_)
                                           _body158864_
                                           (gx#core-expand-module-body
                                            _body158864_))
                                       (_E158843158852_)))
                                 (_E158843158852_))))
                         (_E158843158852_)))))
             (_E158842158866_)))
         gx#current-expander-context
         _ctx158837_
         gx#current-expander-phi
         '0)))
    (define gx#core-expand-module-body
      (lambda (_body158632_)
        (letrec ((_expand-special158634_
                  (lambda (_hd158763_ _K158764_ _rest158765_ _r158766_)
                    (let* ((_e158767158784_ _hd158763_)
                           (_E158779158788_
                            (lambda ()
                              (_K158764_
                               _rest158765_
                               (cons (gx#core-expand-top _hd158763_)
                                     _r158766_))))
                           (_E158769158800_
                            (lambda ()
                              (if (gx#stx-pair? _e158767158784_)
                                  (let ((_e158780158792_
                                         (gx#syntax-e _e158767158784_)))
                                    (let ((_hd158781158795_
                                           (##car _e158780158792_))
                                          (_tl158782158797_
                                           (##cdr _e158780158792_)))
                                      (if (and (gx#identifier?
                                                _hd158781158795_)
                                               (gx#core-identifier=?
                                                _hd158781158795_
                                                '%#export))
                                          (if '#t
                                              (_K158764_
                                               _rest158765_
                                               (cons _hd158763_ _r158766_))
                                              (_E158779158788_))
                                          (_E158779158788_))))
                                  (_E158779158788_))))
                           (_E158768158832_
                            (lambda ()
                              (if (gx#stx-pair? _e158767158784_)
                                  (let ((_e158770158804_
                                         (gx#syntax-e _e158767158784_)))
                                    (let ((_hd158771158807_
                                           (##car _e158770158804_))
                                          (_tl158772158809_
                                           (##cdr _e158770158804_)))
                                      (if (and (gx#identifier?
                                                _hd158771158807_)
                                               (gx#core-identifier=?
                                                _hd158771158807_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl158772158809_)
                                              (let ((_e158773158812_
                                                     (gx#syntax-e
                                                      _tl158772158809_)))
                                                (let ((_hd158774158815_
                                                       (##car _e158773158812_))
                                                      (_tl158775158817_
                                                       (##cdr _e158773158812_)))
                                                  (let ((_hd-bind158820_
                                                         _hd158774158815_))
                                                    (if (gx#stx-pair?
                                                         _tl158775158817_)
                                                        (let ((_e158776158822_
                                                               (gx#syntax-e
                                                                _tl158775158817_)))
                                                          (let ((_hd158777158825_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e158776158822_))
                        (_tl158778158827_ (##cdr _e158776158822_)))
                    (let ((_expr158830_ _hd158777158825_))
                      (if (gx#stx-null? _tl158778158827_)
                          (if (gx#core-bind-values? _hd-bind158820_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind158820_)
                                (_K158764_
                                 _rest158765_
                                 (cons _hd158763_ _r158766_)))
                              (_E158769158800_))
                          (_E158769158800_)))))
                (_E158769158800_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E158769158800_))
                                          (_E158769158800_))))
                                  (_E158769158800_)))))
                      (_E158768158832_))))
                 (_expand-body158635_
                  (lambda (_rbody158637_)
                    (let _lp158639_ ((_rest158641_ _rbody158637_)
                                     (_body158642_ '()))
                      (let* ((_rest158643158651_ _rest158641_)
                             (_else158645158659_ (lambda () _body158642_))
                             (_K158647158751_
                              (lambda (_rest158662_ _hd158663_)
                                (let* ((_e158664158685_ _hd158663_)
                                       (_E158680158689_
                                        (lambda ()
                                          (_lp158639_
                                           _rest158662_
                                           (cons (gx#core-expand-expression
                                                  _hd158663_)
                                                 _body158642_))))
                                       (_E158676158703_
                                        (lambda ()
                                          (if (gx#stx-pair? _e158664158685_)
                                              (let ((_e158681158693_
                                                     (gx#syntax-e
                                                      _e158664158685_)))
                                                (let ((_hd158682158696_
                                                       (##car _e158681158693_))
                                                      (_tl158683158698_
                                                       (##cdr _e158681158693_)))
                                                  (let ((_form158701_
                                                         _hd158682158696_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _form158701_
                                                         gx#special-form-binding?)
                                                        (_lp158639_
                                                         _rest158662_
                                                         (cons _hd158663_
                                                               _body158642_))
                                                        (_E158680158689_)))))
                                              (_E158680158689_))))
                                       (_E158666158715_
                                        (lambda ()
                                          (if (gx#stx-pair? _e158664158685_)
                                              (let ((_e158677158707_
                                                     (gx#syntax-e
                                                      _e158664158685_)))
                                                (let ((_hd158678158710_
                                                       (##car _e158677158707_))
                                                      (_tl158679158712_
                                                       (##cdr _e158677158707_)))
                                                  (if (and (gx#identifier?
                                                            _hd158678158710_)
                                                           (gx#core-identifier=?
                                                            _hd158678158710_
                                                            '%#export))
                                                      (if '#t
                                                          (_lp158639_
                                                           _rest158662_
                                                           (cons (gx#core-expand-export%__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd158663_)
                         _body158642_))
                  (_E158676158703_))
              (_E158676158703_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E158676158703_))))
                                       (_E158665158747_
                                        (lambda ()
                                          (if (gx#stx-pair? _e158664158685_)
                                              (let ((_e158667158719_
                                                     (gx#syntax-e
                                                      _e158664158685_)))
                                                (let ((_hd158668158722_
                                                       (##car _e158667158719_))
                                                      (_tl158669158724_
                                                       (##cdr _e158667158719_)))
                                                  (if (and (gx#identifier?
                                                            _hd158668158722_)
                                                           (gx#core-identifier=?
                                                            _hd158668158722_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl158669158724_)
                                                          (let ((_e158670158727_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl158669158724_)))
                    (let ((_hd158671158730_ (##car _e158670158727_))
                          (_tl158672158732_ (##cdr _e158670158727_)))
                      (let ((_hd-bind158735_ _hd158671158730_))
                        (if (gx#stx-pair? _tl158672158732_)
                            (let ((_e158673158737_
                                   (gx#syntax-e _tl158672158732_)))
                              (let ((_hd158674158740_ (##car _e158673158737_))
                                    (_tl158675158742_ (##cdr _e158673158737_)))
                                (let ((_expr158745_ _hd158674158740_))
                                  (if (gx#stx-null? _tl158675158742_)
                                      (if '#t
                                          (_lp158639_
                                           _rest158662_
                                           (cons (gx#core-quote-syntax__1
                                                  (gx#core-list
                                                   '%#define-values
                                                   (gx#core-quote-bind-values
                                                    _hd-bind158735_)
                                                   (gx#core-expand-expression
                                                    _expr158745_))
                                                  (gx#stx-source _hd158663_))
                                                 _body158642_))
                                          (_E158666158715_))
                                      (_E158666158715_)))))
                            (_E158666158715_)))))
                  (_E158666158715_))
              (_E158666158715_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E158666158715_)))))
                                  (_E158665158747_)))))
                        (if (##pair? _rest158643158651_)
                            (let ((_hd158648158754_ (##car _rest158643158651_))
                                  (_tl158649158756_
                                   (##cdr _rest158643158651_)))
                              (let* ((_hd158759_ _hd158648158754_)
                                     (_rest158761_ _tl158649158756_))
                                (_K158647158751_ _rest158761_ _hd158759_)))
                            (_else158645158659_)))))))
          (_expand-body158635_
           (gx#core-expand-block__%
            (cons '%#begin-module _body158632_)
            _expand-special158634_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_stx158475_
               _expanded?158476_
               _method158477_
               _current-phi158478_
               _expand1158479_)
        (letrec ((_K158481_
                  (lambda (_rest158599_ _r158600_)
                    (let* ((_e158601158608_ _rest158599_)
                           (_E158603158612_ (lambda () _r158600_))
                           (_E158602158628_
                            (lambda ()
                              (if (gx#stx-pair? _e158601158608_)
                                  (let ((_e158604158616_
                                         (gx#syntax-e _e158601158608_)))
                                    (let ((_hd158605158619_
                                           (##car _e158604158616_))
                                          (_tl158606158621_
                                           (##cdr _e158604158616_)))
                                      (let* ((_hd158624_ _hd158605158619_)
                                             (_rest158626_ _tl158606158621_))
                                        (if '#t
                                            (_step158482_
                                             _hd158624_
                                             _rest158626_
                                             _r158600_)
                                            (_E158603158612_)))))
                                  (_E158603158612_)))))
                      (_E158602158628_))))
                 (_step158482_
                  (lambda (_hd158513_ _rest158514_ _r158515_)
                    (let* ((_e158516158534_ _hd158513_)
                           (_E158529158538_
                            (lambda ()
                              (if (_expanded?158476_ (gx#stx-e _hd158513_))
                                  (_K158481_
                                   _rest158514_
                                   (cons (gx#stx-e _hd158513_) _r158515_))
                                  (_expand1158479_
                                   _hd158513_
                                   _K158481_
                                   _rest158514_
                                   _r158515_))))
                           (_E158525158554_
                            (lambda ()
                              (if (gx#stx-pair? _e158516158534_)
                                  (let ((_e158530158542_
                                         (gx#syntax-e _e158516158534_)))
                                    (let ((_hd158531158545_
                                           (##car _e158530158542_))
                                          (_tl158532158547_
                                           (##cdr _e158530158542_)))
                                      (let* ((_macro158550_ _hd158531158545_)
                                             (_body158552_ _tl158532158547_))
                                        (if (gx#core-bound-identifier?__%
                                             _macro158550_
                                             gx#syntax-binding?)
                                            (_K158481_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _macro158550_)
                                                    _hd158513_
                                                    _method158477_)
                                                   _rest158514_)
                                             _r158515_)
                                            (_E158529158538_)))))
                                  (_E158529158538_))))
                           (_E158518158568_
                            (lambda ()
                              (if (gx#stx-pair? _e158516158534_)
                                  (let ((_e158526158558_
                                         (gx#syntax-e _e158516158534_)))
                                    (let ((_hd158527158561_
                                           (##car _e158526158558_))
                                          (_tl158528158563_
                                           (##cdr _e158526158558_)))
                                      (if (eq? (gx#stx-e _hd158527158561_)
                                               'begin:)
                                          (let ((_body158566_
                                                 _tl158528158563_))
                                            (if '#t
                                                (_K158481_
                                                 (gx#stx-foldr
                                                  cons
                                                  _rest158514_
                                                  _body158566_)
                                                 _r158515_)
                                                (_E158525158554_)))
                                          (_E158525158554_))))
                                  (_E158525158554_))))
                           (_E158517158595_
                            (lambda ()
                              (if (gx#stx-pair? _e158516158534_)
                                  (let ((_e158519158572_
                                         (gx#syntax-e _e158516158534_)))
                                    (let ((_hd158520158575_
                                           (##car _e158519158572_))
                                          (_tl158521158577_
                                           (##cdr _e158519158572_)))
                                      (if (eq? (gx#stx-e _hd158520158575_)
                                               'phi:)
                                          (if (gx#stx-pair? _tl158521158577_)
                                              (let ((_e158522158580_
                                                     (gx#syntax-e
                                                      _tl158521158577_)))
                                                (let ((_hd158523158583_
                                                       (##car _e158522158580_))
                                                      (_tl158524158585_
                                                       (##cdr _e158522158580_)))
                                                  (let* ((_dphi158588_
                                                          _hd158523158583_)
                                                         (_body158590_
                                                          _tl158524158585_))
                                                    (if (gx#stx-fixnum?
                                                         _dphi158588_)
                                                        (let ((_rbody158593_
                                                               (call-with-parameters
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_K158481_ _body158590_ '()))
                        _current-phi158478_
                        (fx+ (gx#stx-e _dphi158588_) (_current-phi158478_)))))
                  (_K158481_
                   _rest158514_
                   (foldr1 cons _r158515_ _rbody158593_)))
                (_E158518158568_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E158518158568_))
                                          (_E158518158568_))))
                                  (_E158518158568_)))))
                      (_E158517158595_)))))
          (let* ((_e158483158490_ _stx158475_)
                 (_E158485158494_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e158483158490_)))
                 (_E158484158509_
                  (lambda ()
                    (if (gx#stx-pair? _e158483158490_)
                        (let ((_e158486158498_ (gx#syntax-e _e158483158490_)))
                          (let ((_hd158487158501_ (##car _e158486158498_))
                                (_tl158488158503_ (##cdr _e158486158498_)))
                            (let ((_body158506_ _tl158488158503_))
                              (if '#t
                                  (if (_current-phi158478_)
                                      (_K158481_ _body158506_ '())
                                      (call-with-parameters
                                       (lambda () (_K158481_ _body158506_ '()))
                                       _current-phi158478_
                                       (gx#current-expander-phi)))
                                  (_E158485158494_)))))
                        (_E158485158494_)))))
            (_E158484158509_)))))
    (define gx#core-expand-import%__%
      (lambda (_stx158142_ _internal-expand?158143_)
        (letrec ((_expand1158145_
                  (lambda (_hd158455_ _K158456_ _rest158457_ _r158458_)
                    (if (gx#core-bound-module? _hd158455_)
                        (_import1158146_
                         (gx#syntax-local-e__0 _hd158455_)
                         _K158456_
                         _rest158457_
                         _r158458_)
                        (if (gx#core-library-module-path? _hd158455_)
                            (_import1158146_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _hd158455_))
                             _K158456_
                             _rest158457_
                             _r158458_)
                            (if (gx#core-library-relative-module-path?
                                 _hd158455_)
                                (_import1158146_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _hd158455_))
                                 _K158456_
                                 _rest158457_
                                 _r158458_)
                                (let ((_e158460_ (gx#stx-e _hd158455_)))
                                  (if (pair? _e158460_)
                                      (let ((_$e158462_
                                             (gx#stx-e (car _e158460_))))
                                        (if (eq? 'spec: _$e158462_)
                                            (_import-spec158149_
                                             _hd158455_
                                             _K158456_
                                             _rest158457_
                                             _r158458_)
                                            (if (eq? 'in: _$e158462_)
                                                (_import-submodule158147_
                                                 _hd158455_
                                                 _K158456_
                                                 _rest158457_
                                                 _r158458_)
                                                (if (eq? 'runtime: _$e158462_)
                                                    (_import-runtime158148_
                                                     _hd158455_
                                                     _K158456_
                                                     _rest158457_
                                                     _r158458_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _stx158142_
                                                     _hd158455_)))))
                                      (if (string? _e158460_)
                                          (_import1158146_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _hd158455_
                                             (gx#stx-source _stx158142_)))
                                           _K158456_
                                           _rest158457_
                                           _r158458_)
                                          (if (##structure-instance-of?
                                               _e158460_
                                               'gx#module-context::t)
                                              (_K158456_
                                               _rest158457_
                                               (cons _e158460_ _r158458_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _stx158142_
                                               _hd158455_))))))))))
                 (_import1158146_
                  (lambda (_ctx158444_ _K158445_ _rest158446_ _r158447_)
                    (let ((_dphi158449_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_K158445_
                       _rest158446_
                       (cons (##structure
                              gx#import-set::t
                              _ctx158444_
                              _dphi158449_
                              (map (lambda (_g158450158452_)
                                     (gx#core-module-export->import__%
                                      _g158450158452_
                                      '#f
                                      _dphi158449_))
                                   (##unchecked-structure-ref
                                    _ctx158444_
                                    '9
                                    gx#module-context::t
                                    '#f)))
                             _r158447_)))))
                 (_import-submodule158147_
                  (lambda (_hd158411_ _K158412_ _rest158413_ _r158414_)
                    (let* ((_e158415158422_ _hd158411_)
                           (_E158417158426_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e158415158422_)))
                           (_E158416158440_
                            (lambda ()
                              (if (gx#stx-pair? _e158415158422_)
                                  (let ((_e158418158430_
                                         (gx#syntax-e _e158415158422_)))
                                    (let ((_hd158419158433_
                                           (##car _e158418158430_))
                                          (_tl158420158435_
                                           (##cdr _e158418158430_)))
                                      (let ((_spath158438_ _tl158420158435_))
                                        (if '#t
                                            (_import1158146_
                                             (_import-spec-source158150_
                                              _spath158438_)
                                             _K158412_
                                             _rest158413_
                                             _r158414_)
                                            (_E158417158426_)))))
                                  (_E158417158426_)))))
                      (_E158416158440_))))
                 (_import-runtime158148_
                  (lambda (_hd158378_ _K158379_ _rest158380_ _r158381_)
                    (let* ((_e158382158389_ _hd158378_)
                           (_E158384158393_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e158382158389_)))
                           (_E158383158407_
                            (lambda ()
                              (if (gx#stx-pair? _e158382158389_)
                                  (let ((_e158385158397_
                                         (gx#syntax-e _e158382158389_)))
                                    (let ((_hd158386158400_
                                           (##car _e158385158397_))
                                          (_tl158387158402_
                                           (##cdr _e158385158397_)))
                                      (let ((_spath158405_ _tl158387158402_))
                                        (if '#t
                                            (_K158379_
                                             _rest158380_
                                             (cons (_import-spec-source158150_
                                                    _spath158405_)
                                                   _r158381_))
                                            (_E158384158393_)))))
                                  (_E158384158393_)))))
                      (_E158383158407_))))
                 (_import-spec158149_
                  (lambda (_hd158217_ _K158218_ _rest158219_ _r158220_)
                    (let* ((_e158221158238_ _hd158217_)
                           (_E158230158242_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e158221158238_)))
                           (_E158223158352_
                            (lambda ()
                              (if (gx#stx-pair? _e158221158238_)
                                  (let ((_e158231158246_
                                         (gx#syntax-e _e158221158238_)))
                                    (let ((_hd158232158249_
                                           (##car _e158231158246_))
                                          (_tl158233158251_
                                           (##cdr _e158231158246_)))
                                      (if (gx#stx-pair? _tl158233158251_)
                                          (let ((_e158234158254_
                                                 (gx#syntax-e
                                                  _tl158233158251_)))
                                            (let ((_hd158235158257_
                                                   (##car _e158234158254_))
                                                  (_tl158236158259_
                                                   (##cdr _e158234158254_)))
                                              (let* ((_path158262_
                                                      _hd158235158257_)
                                                     (_specs158264_
                                                      _tl158236158259_))
                                                (if '#t
                                                    (let ((_src-ctx158266_
                                                           (_import-spec-source158150_
                                                            _path158262_))
                                                          (_exports158267_
                                                           (make-table))
                                                          (_specs158268_
                                                           (gx#syntax->list
                                                            _specs158264_)))
                                                      (for-each
                                                       (lambda (_out158270_)
                                                         (table-set!
                                                          _exports158267_
                                                          (cons (##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _out158270_
                         '3
                         gx#module-export::t
                         '#f)
                        (##unchecked-structure-ref
                         _out158270_
                         '4
                         gx#module-export::t
                         '#f))
                  _out158270_))
               (##unchecked-structure-ref
                _src-ctx158266_
                '9
                gx#module-context::t
                '#f))
              (_K158218_
               _rest158219_
               (foldl1 (lambda (_spec158272_ _r158273_)
                         (let* ((_e158274158290_ _spec158272_)
                                (_E158276158294_
                                 (lambda ()
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid syntax-case clause"
                                    _e158274158290_)))
                                (_E158275158348_
                                 (lambda ()
                                   (if (gx#stx-pair? _e158274158290_)
                                       (let ((_e158277158298_
                                              (gx#syntax-e _e158274158290_)))
                                         (let ((_hd158278158301_
                                                (##car _e158277158298_))
                                               (_tl158279158303_
                                                (##cdr _e158277158298_)))
                                           (let ((_phi158306_
                                                  _hd158278158301_))
                                             (if (gx#stx-pair?
                                                  _tl158279158303_)
                                                 (let ((_e158280158308_
                                                        (gx#syntax-e
                                                         _tl158279158303_)))
                                                   (let ((_hd158281158311_
                                                          (##car _e158280158308_))
                                                         (_tl158282158313_
                                                          (##cdr _e158280158308_)))
                                                     (let ((_name158316_
                                                            _hd158281158311_))
                                                       (if (gx#stx-pair?
                                                            _tl158282158313_)
                                                           (let ((_e158283158318_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl158282158313_)))
                     (let ((_hd158284158321_ (##car _e158283158318_))
                           (_tl158285158323_ (##cdr _e158283158318_)))
                       (let ((_src-phi158326_ _hd158284158321_))
                         (if (gx#stx-pair? _tl158285158323_)
                             (let ((_e158286158328_
                                    (gx#syntax-e _tl158285158323_)))
                               (let ((_hd158287158331_ (##car _e158286158328_))
                                     (_tl158288158333_
                                      (##cdr _e158286158328_)))
                                 (let ((_src-name158336_ _hd158287158331_))
                                   (if (gx#stx-null? _tl158288158333_)
                                       (if (and (gx#stx-fixnum?
                                                 _src-phi158326_)
                                                (gx#identifier?
                                                 _src-name158336_)
                                                (gx#stx-fixnum? _phi158306_)
                                                (gx#identifier? _name158316_))
                                           (let ((_src-phi158338_
                                                  (gx#stx-e _src-phi158326_))
                                                 (_src-name158339_
                                                  (gx#core-identifier-key
                                                   _src-name158336_))
                                                 (_phi158340_
                                                  (gx#stx-e _phi158306_))
                                                 (_name158341_
                                                  (gx#core-identifier-key
                                                   _name158316_)))
                                             (let ((_$e158343_
                                                    (table-ref
                                                     _exports158267_
                                                     (cons _src-phi158338_
                                                           _src-name158339_)
                                                     '#f)))
                                               (if _$e158343_
                                                   ((lambda (_out158346_)
                                                      (cons (gx#core-module-export->import__%
                                                             _out158346_
                                                             _name158341_
                                                             (fx- _phi158340_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _src-phi158338_))
                    _r158273_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _$e158343_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; no matching export"
                                                    _stx158142_
                                                    _hd158217_))))
                                           (_E158276158294_))
                                       (_E158276158294_)))))
                             (_E158276158294_)))))
                   (_E158276158294_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E158276158294_)))))
                                       (_E158276158294_)))))
                           (_E158275158348_)))
                       _r158220_
                       _specs158268_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E158230158242_)))))
                                          (_E158230158242_))))
                                  (_E158230158242_))))
                           (_E158222158374_
                            (lambda ()
                              (if (gx#stx-pair? _e158221158238_)
                                  (let ((_e158224158356_
                                         (gx#syntax-e _e158221158238_)))
                                    (let ((_hd158225158359_
                                           (##car _e158224158356_))
                                          (_tl158226158361_
                                           (##cdr _e158224158356_)))
                                      (if (gx#stx-pair? _tl158226158361_)
                                          (let ((_e158227158364_
                                                 (gx#syntax-e
                                                  _tl158226158361_)))
                                            (let ((_hd158228158367_
                                                   (##car _e158227158364_))
                                                  (_tl158229158369_
                                                   (##cdr _e158227158364_)))
                                              (let ((_path158372_
                                                     _hd158228158367_))
                                                (if (gx#stx-null?
                                                     _tl158229158369_)
                                                    (if '#t
                                                        (_K158218_
                                                         _rest158219_
                                                         (cons (_import-spec-source158150_
                                                                _path158372_)
                                                               _r158220_))
                                                        (_E158223158352_))
                                                    (_E158223158352_)))))
                                          (_E158223158352_))))
                                  (_E158223158352_)))))
                      (_E158222158374_))))
                 (_import-spec-source158150_
                  (lambda (_spath158215_)
                    (gx#core-import-nested-module _spath158215_ _stx158142_)))
                 (_import!158151_
                  (lambda (_rbody158164_)
                    (letrec* ((_current-ctx158166_
                               (gx#current-expander-context))
                              (_deps158167_ (make-table 'test: eq?))
                              (_bind!158168_
                               (lambda (_hd158213_)
                                 (gx#core-bind-import!__1
                                  _hd158213_
                                  _current-ctx158166_))))
                      (let _lp158170_ ((_rest158172_ _rbody158164_)
                                       (_body158173_ '()))
                        (let* ((_rest158174158182_ _rest158172_)
                               (_else158176158192_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _current-ctx158166_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _current-ctx158166_
                                       (foldl1 cons
                                               (##unchecked-structure-ref
                                                _current-ctx158166_
                                                '8
                                                gx#module-context::t
                                                '#f)
                                               _body158173_)
                                       '8
                                       gx#module-context::t
                                       '#f)
                                      '#!void)
                                  (table-for-each
                                   (lambda (_ctx158190_ _g165488_)
                                     (gx#eval-module _ctx158190_))
                                   _deps158167_)
                                  _body158173_))
                               (_K158178158201_
                                (lambda (_rest158195_ _hd158196_)
                                  (if (##structure-direct-instance-of?
                                       _hd158196_
                                       'gx#module-import::t)
                                      (begin
                                        (_bind!158168_ _hd158196_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _hd158196_
                                                   '3
                                                   gx#module-import::t
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _hd158196_
                                                            '1
                                                            gx#module-import::t
                                                            '#f)
                                                           '3
                                                           gx#module-export::t
                                                           '#f)))
                                            (table-set!
                                             _deps158167_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _hd158196_
                                               '1
                                               gx#module-import::t
                                               '#f)
                                              '1
                                              gx#module-export::t
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _hd158196_
                                           'gx#import-set::t)
                                          (begin
                                            (for-each
                                             _bind!158168_
                                             (##unchecked-structure-ref
                                              _hd158196_
                                              '3
                                              gx#import-set::t
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _hd158196_
                                                  '2
                                                  gx#import-set::t
                                                  '#f))
                                                (table-set!
                                                 _deps158167_
                                                 (##unchecked-structure-ref
                                                  _hd158196_
                                                  '1
                                                  gx#import-set::t
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_$e158198_
                                                 (##structure-instance-of?
                                                  _hd158196_
                                                  'gx#module-context::t)))
                                            (if _$e158198_
                                                _$e158198_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _stx158142_
                                                 _hd158196_)))))
                                  (_lp158170_
                                   _rest158195_
                                   (cons _hd158196_ _body158173_)))))
                          (if (##pair? _rest158174158182_)
                              (let ((_hd158179158204_
                                     (##car _rest158174158182_))
                                    (_tl158180158206_
                                     (##cdr _rest158174158182_)))
                                (let* ((_hd158209_ _hd158179158204_)
                                       (_rest158211_ _tl158180158206_))
                                  (_K158178158201_ _rest158211_ _hd158209_)))
                              (_else158176158192_)))))))
                 (_expanded-import?158152_
                  (lambda (_e158156_)
                    (let ((_$e158158_
                           (##structure-direct-instance-of?
                            _e158156_
                            'gx#import-set::t)))
                      (if _$e158158_
                          _$e158158_
                          (let ((_$e158161_
                                 (##structure-direct-instance-of?
                                  _e158156_
                                  'gx#module-import::t)))
                            (if _$e158161_
                                _$e158161_
                                (##structure-instance-of?
                                 _e158156_
                                 'gx#module-context::t))))))))
          (let ((_rbody158154_
                 (gx#core-expand-import/export
                  _stx158142_
                  _expanded-import?158152_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _expand1158145_)))
            (if _internal-expand?158143_
                (reverse _rbody158154_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_import!158151_ _rbody158154_))
                 (gx#stx-source _stx158142_)))))))
    (define gx#core-expand-import%__0
      (lambda (_stx158468_)
        (let ((_internal-expand?158470_ '#f))
          (gx#core-expand-import%__% _stx158468_ _internal-expand?158470_))))
    (define gx#core-expand-import%
      (lambda _g165490_
        (let ((_g165489_ (##length _g165490_)))
          (cond ((##fx= _g165489_ 1)
                 (apply (lambda (_stx158468_)
                          (gx#core-expand-import%__0 _stx158468_))
                        _g165490_))
                ((##fx= _g165489_ 2)
                 (apply (lambda (_stx158472_ _internal-expand?158473_)
                          (gx#core-expand-import%__%
                           _stx158472_
                           _internal-expand?158473_))
                        _g165490_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g165490_))))))
    (define gx#core-import-nested-module
      (lambda (_spath158069_ _where158070_)
        (let* ((_e158071158078_ _spath158069_)
               (_E158073158082_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e158071158078_)))
               (_E158072158137_
                (lambda ()
                  (if (gx#stx-pair? _e158071158078_)
                      (let ((_e158074158086_ (gx#syntax-e _e158071158078_)))
                        (let ((_hd158075158089_ (##car _e158074158086_))
                              (_tl158076158091_ (##cdr _e158074158086_)))
                          (let* ((_origin158094_ _hd158075158089_)
                                 (_sub158096_ _tl158076158091_))
                            (if '#t
                                (let ((_origin-ctx158098_
                                       (if (gx#stx-false? _origin158094_)
                                           (gx#current-expander-context)
                                           (gx#import-module__0
                                            _origin158094_))))
                                  (let _lp158100_ ((_rest158102_ _sub158096_)
                                                   (_ctx158103_
                                                    _origin-ctx158098_))
                                    (let* ((_e158104158111_ _rest158102_)
                                           (_E158106158115_
                                            (lambda () _ctx158103_))
                                           (_E158105158133_
                                            (lambda ()
                                              (if (gx#stx-pair?
                                                   _e158104158111_)
                                                  (let ((_e158107158119_
                                                         (gx#syntax-e
                                                          _e158104158111_)))
                                                    (let ((_hd158108158122_
                                                           (##car _e158107158119_))
                                                          (_tl158109158124_
                                                           (##cdr _e158107158119_)))
                                                      (let* ((_id158127_
                                                              _hd158108158122_)
                                                             (_rest158129_
                                                              _tl158109158124_))
                                                        (if '#t
                                                            (let ((_bind158131_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#resolve-identifier__%
                            _id158127_
                            '0
                            _ctx158103_)))
                      (if (and (##structure-direct-instance-of?
                                _bind158131_
                                'gx#syntax-binding::t)
                               (##structure-instance-of?
                                (##unchecked-structure-ref
                                 _bind158131_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                'gx#module-context::t))
                          '#!void
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; not bound as module"
                           _where158070_
                           _spath158069_
                           _id158127_))
                      (_lp158100_
                       _rest158129_
                       (##unchecked-structure-ref
                        _bind158131_
                        '4
                        gx#syntax-binding::t
                        '#f)))
                    (_E158106158115_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E158106158115_)))))
                                      (_E158105158133_))))
                                (_E158073158082_)))))
                      (_E158073158082_)))))
          (_E158072158137_))))
    (define gx#core-expand-import-source
      (lambda (_hd158067_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _hd158067_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_stx157575_ _internal-expand?157576_)
        (letrec* ((_make-export__165419165420_
                   (lambda (_bind158015_ _phi158016_ _ctx158017_ _name158018_)
                     (let* ((_key158020_
                             (##unchecked-structure-ref
                              _bind158015_
                              '2
                              gx#binding::t
                              '#f))
                            (_export-key158022_
                             (if _name158018_
                                 (gx#core-identifier-key _name158018_)
                                 _key158020_)))
                       (##structure
                        gx#module-export::t
                        _ctx158017_
                        _key158020_
                        _phi158016_
                        _export-key158022_
                        (let ((_$e158025_
                               (##structure-instance-of?
                                _bind158015_
                                'gx#extern-binding::t)))
                          (if _$e158025_
                              _$e158025_
                              (##structure-direct-instance-of?
                               _bind158015_
                               'gx#import-binding::t)))))))
                  (_make-export__0__165421165424_
                   (lambda (_bind158031_)
                     (let* ((_phi158033_ (gx#current-export-expander-phi))
                            (_ctx158035_ (gx#current-expander-context))
                            (_name158037_ '#f))
                       (_make-export__165419165420_
                        _bind158031_
                        _phi158033_
                        _ctx158035_
                        _name158037_))))
                  (_make-export__1__165422165425_
                   (lambda (_bind158039_ _phi158040_)
                     (let* ((_ctx158042_ (gx#current-expander-context))
                            (_name158044_ '#f))
                       (_make-export__165419165420_
                        _bind158039_
                        _phi158040_
                        _ctx158042_
                        _name158044_))))
                  (_make-export__2__165423165426_
                   (lambda (_bind158046_ _phi158047_ _ctx158048_)
                     (let ((_name158050_ '#f))
                       (_make-export__165419165420_
                        _bind158046_
                        _phi158047_
                        _ctx158048_
                        _name158050_))))
                  (_make-export157578_
                   (lambda _g165492_
                     (let ((_g165491_ (##length _g165492_)))
                       (cond ((##fx= _g165491_ 1)
                              (apply (lambda (_bind158031_)
                                       (_make-export__0__165421165424_
                                        _bind158031_))
                                     _g165492_))
                             ((##fx= _g165491_ 2)
                              (apply (lambda (_bind158039_ _phi158040_)
                                       (_make-export__1__165422165425_
                                        _bind158039_
                                        _phi158040_))
                                     _g165492_))
                             ((##fx= _g165491_ 3)
                              (apply (lambda (_bind158046_
                                              _phi158047_
                                              _ctx158048_)
                                       (_make-export__2__165423165426_
                                        _bind158046_
                                        _phi158047_
                                        _ctx158048_))
                                     _g165492_))
                             ((##fx= _g165491_ 4)
                              (apply (lambda (_bind158052_
                                              _phi158053_
                                              _ctx158054_
                                              _name158055_)
                                       (_make-export__165419165420_
                                        _bind158052_
                                        _phi158053_
                                        _ctx158054_
                                        _name158055_))
                                     _g165492_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g165492_))))))
                  (_expand1157579_
                   (lambda (_hd157728_ _K157729_ _rest157730_ _r157731_)
                     (let* ((_e157732157764_ _hd157728_)
                            (_E157759157768_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _stx157575_
                                _hd157728_)))
                            (_E157749157847_
                             (lambda ()
                               (if (gx#stx-pair? _e157732157764_)
                                   (let ((_e157760157772_
                                          (gx#syntax-e _e157732157764_)))
                                     (let ((_hd157761157775_
                                            (##car _e157760157772_))
                                           (_tl157762157777_
                                            (##cdr _e157760157772_)))
                                       (if (eq? (gx#stx-e _hd157761157775_)
                                                'import:)
                                           (let ((_in157780_ _tl157762157777_))
                                             (if (gx#stx-list? _in157780_)
                                                 (let _lp157782_ ((_in-rest157784_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _in157780_)
                          (_r157785_ _r157731_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_e157786157793_
                                                           _in-rest157784_)
                                                          (_E157788157797_
                                                           (lambda ()
                                                             (_K157729_
                                                              _rest157730_
                                                              _r157785_)))
                                                          (_E157787157843_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _e157786157793_)
                         (let ((_e157789157801_ (gx#syntax-e _e157786157793_)))
                           (let ((_hd157790157804_ (##car _e157789157801_))
                                 (_tl157791157806_ (##cdr _e157789157801_)))
                             (let* ((_hd157809_ _hd157790157804_)
                                    (_in-rest157811_ _tl157791157806_))
                               (if '#t
                                   (let ((_src157841_
                                          (if (gx#core-bound-module?
                                               _hd157809_)
                                              (gx#syntax-local-e__0 _hd157809_)
                                              (if (gx#core-library-module-path?
                                                   _hd157809_)
                                                  (gx#import-module__0
                                                   (gx#core-resolve-library-module-path
                                                    _hd157809_))
                                                  (if (gx#core-library-relative-module-path?
                                                       _hd157809_)
                                                      (gx#import-module__0
                                                       (gx#core-resolve-library-relative-module-path
                                                        _hd157809_))
                                                      (if (gx#stx-string?
                                                           _hd157809_)
                                                          (gx#import-module__0
                                                           (gx#core-resolve-module-path__%
                                                            _hd157809_
                                                            (gx#stx-source
                                                             _stx157575_)))
                                                          (let* ((_e157812157819_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd157809_)
                         (_E157814157823_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; illegal re-export"
                             _stx157575_
                             _hd157809_)))
                         (_E157813157837_
                          (lambda ()
                            (if (gx#stx-pair? _e157812157819_)
                                (let ((_e157815157827_
                                       (gx#syntax-e _e157812157819_)))
                                  (let ((_hd157816157830_
                                         (##car _e157815157827_))
                                        (_tl157817157832_
                                         (##cdr _e157815157827_)))
                                    (if (eq? (gx#stx-e _hd157816157830_) 'in:)
                                        (let ((_spath157835_ _tl157817157832_))
                                          (if '#t
                                              (gx#core-import-nested-module
                                               _spath157835_
                                               _stx157575_)
                                              (_E157814157823_)))
                                        (_E157814157823_))))
                                (_E157814157823_)))))
                    (_E157813157837_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_lp157782_
                                      _in-rest157811_
                                      (_export-imports157580_
                                       _src157841_
                                       _r157785_)))
                                   (_E157788157797_)))))
                         (_E157788157797_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E157787157843_)))
                                                 (_E157759157768_)))
                                           (_E157759157768_))))
                                   (_E157759157768_))))
                            (_E157736157886_
                             (lambda ()
                               (if (gx#stx-pair? _e157732157764_)
                                   (let ((_e157750157851_
                                          (gx#syntax-e _e157732157764_)))
                                     (let ((_hd157751157854_
                                            (##car _e157750157851_))
                                           (_tl157752157856_
                                            (##cdr _e157750157851_)))
                                       (if (eq? (gx#stx-e _hd157751157854_)
                                                'rename:)
                                           (if (gx#stx-pair? _tl157752157856_)
                                               (let ((_e157753157859_
                                                      (gx#syntax-e
                                                       _tl157752157856_)))
                                                 (let ((_hd157754157862_
                                                        (##car _e157753157859_))
                                                       (_tl157755157864_
                                                        (##cdr _e157753157859_)))
                                                   (let ((_id157867_
                                                          _hd157754157862_))
                                                     (if (gx#stx-pair?
                                                          _tl157755157864_)
                                                         (let ((_e157756157869_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl157755157864_)))
                   (let ((_hd157757157872_ (##car _e157756157869_))
                         (_tl157758157874_ (##cdr _e157756157869_)))
                     (let ((_name157877_ _hd157757157872_))
                       (if (gx#stx-null? _tl157758157874_)
                           (if '#t
                               (let* ((_phi157879_
                                       (gx#current-export-expander-phi))
                                      (_$e157881_
                                       (gx#core-resolve-identifier__1
                                        _id157867_
                                        _phi157879_)))
                                 (if _$e157881_
                                     ((lambda (_bind157884_)
                                        (_K157729_
                                         _rest157730_
                                         (cons (_make-export__165419165420_
                                                _bind157884_
                                                _phi157879_
                                                (gx#current-expander-context)
                                                _name157877_)
                                               _r157731_)))
                                      _$e157881_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Reference to unbound identifier"
                                      _stx157575_
                                      _hd157728_
                                      _id157867_)))
                               (_E157749157847_))
                           (_E157749157847_)))))
                 (_E157749157847_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E157749157847_))
                                           (_E157749157847_))))
                                   (_E157749157847_))))
                            (_E157735157935_
                             (lambda ()
                               (if (gx#stx-pair? _e157732157764_)
                                   (let ((_e157737157890_
                                          (gx#syntax-e _e157732157764_)))
                                     (let ((_hd157738157893_
                                            (##car _e157737157890_))
                                           (_tl157739157895_
                                            (##cdr _e157737157890_)))
                                       (if (eq? (gx#stx-e _hd157738157893_)
                                                'spec:)
                                           (if (gx#stx-pair? _tl157739157895_)
                                               (let ((_e157740157898_
                                                      (gx#syntax-e
                                                       _tl157739157895_)))
                                                 (let ((_hd157741157901_
                                                        (##car _e157740157898_))
                                                       (_tl157742157903_
                                                        (##cdr _e157740157898_)))
                                                   (let ((_phi157906_
                                                          _hd157741157901_))
                                                     (if (gx#stx-pair?
                                                          _tl157742157903_)
                                                         (let ((_e157743157908_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl157742157903_)))
                   (let ((_hd157744157911_ (##car _e157743157908_))
                         (_tl157745157913_ (##cdr _e157743157908_)))
                     (let ((_id157916_ _hd157744157911_))
                       (if (gx#stx-pair? _tl157745157913_)
                           (let ((_e157746157918_
                                  (gx#syntax-e _tl157745157913_)))
                             (let ((_hd157747157921_ (##car _e157746157918_))
                                   (_tl157748157923_ (##cdr _e157746157918_)))
                               (let ((_name157926_ _hd157747157921_))
                                 (if (gx#stx-null? _tl157748157923_)
                                     (if (and (gx#stx-fixnum? _phi157906_)
                                              (gx#identifier? _id157916_)
                                              (gx#identifier? _name157926_))
                                         (let* ((_phi157928_
                                                 (gx#stx-e _phi157906_))
                                                (_$e157930_
                                                 (gx#core-resolve-identifier__1
                                                  _id157916_
                                                  _phi157928_)))
                                           (if _$e157930_
                                               ((lambda (_bind157933_)
                                                  (_K157729_
                                                   _rest157730_
                                                   (cons (_make-export__165419165420_
                                                          _bind157933_
                                                          _phi157928_
                                                          (gx#current-expander-context)
                                                          _name157926_)
                                                         _r157731_)))
                                                _$e157930_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _stx157575_
                                                _hd157728_
                                                _id157916_)))
                                         (_E157736157886_))
                                     (_E157736157886_)))))
                           (_E157736157886_)))))
                 (_E157736157886_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E157736157886_))
                                           (_E157736157886_))))
                                   (_E157736157886_))))
                            (_E157734157946_
                             (lambda ()
                               (let ((_id157939_ _e157732157764_))
                                 (if (gx#identifier? _id157939_)
                                     (let ((_$e157941_
                                            (gx#core-resolve-identifier__1
                                             _id157939_
                                             (gx#current-export-expander-phi))))
                                       (if _$e157941_
                                           ((lambda (_bind157944_)
                                              (_K157729_
                                               _rest157730_
                                               (cons (_make-export__0__165421165424_
                                                      _bind157944_)
                                                     _r157731_)))
                                            _$e157941_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _stx157575_
                                            _hd157728_)))
                                     (_E157735157935_)))))
                            (_E157733158010_
                             (lambda ()
                               (if (eq? (gx#stx-e _e157732157764_) '#t)
                                   (if '#t
                                       (let* ((_current-ctx157950_
                                               (gx#current-expander-context))
                                              (_current-phi157952_
                                               (gx#current-export-expander-phi))
                                              (_phi-ctx157954_
                                               (gx#core-context-shift
                                                _current-ctx157950_
                                                _current-phi157952_))
                                              (_phi-bind157956_
                                               (table->list
                                                (##unchecked-structure-ref
                                                 _phi-ctx157954_
                                                 '2
                                                 gx#expander-context::t
                                                 '#f))))
                                         (let _lp157959_ ((_bind-rest157961_
                                                           _phi-bind157956_)
                                                          (_set157962_ '()))
                                           (let* ((_bind-rest157963157973_
                                                   _bind-rest157961_)
                                                  (_else157965157981_
                                                   (lambda ()
                                                     (_K157729_
                                                      _rest157730_
                                                      (cons (##structure
                                                             gx#export-set::t
                                                             '#f
                                                             _current-phi157952_
                                                             _set157962_)
                                                            _r157731_))))
                                                  (_K157967157991_
                                                   (lambda (_bind-rest157984_
                                                            _bind157985_
                                                            _key157986_)
                                                     (if (or (##structure-direct-instance-of?
                                                              _bind157985_
                                                              'gx#import-binding::t)
                                                             (gx#private-feature-binding?
                                                              _bind157985_))
                                                         (_lp157959_
                                                          _bind-rest157984_
                                                          _set157962_)
                                                         (_lp157959_
                                                          _bind-rest157984_
                                                          (cons (_make-export__2__165423165426_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind157985_
                         _current-phi157952_
                         _current-ctx157950_)
                        _set157962_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _bind-rest157963157973_)
                                                 (let ((_hd157968157994_
                                                        (##car _bind-rest157963157973_))
                                                       (_tl157969157996_
                                                        (##cdr _bind-rest157963157973_)))
                                                   (if (##pair? _hd157968157994_)
                                                       (let ((_hd157970157999_
                                                              (##car _hd157968157994_))
                                                             (_tl157971158001_
                                                              (##cdr _hd157968157994_)))
                                                         (let* ((_key158004_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd157970157999_)
                        (_bind158006_ _tl157971158001_)
                        (_bind-rest158008_ _tl157969157996_))
                   (_K157967157991_
                    _bind-rest158008_
                    _bind158006_
                    _key158004_)))
               (_else157965157981_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_else157965157981_)))))
                                       (_E157734157946_))
                                   (_E157734157946_)))))
                       (_E157733158010_))))
                  (_export-imports157580_
                   (lambda (_src157604_ _r157605_)
                     (letrec* ((_current-ctx157607_
                                (gx#current-expander-context))
                               (_current-phi157608_
                                (gx#current-export-expander-phi))
                               (_import->export157609_
                                (lambda (_in157690_)
                                  (let* ((_in157691157699_ _in157690_)
                                         (_E157693157703_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _in157691157699_)))
                                         (_K157694157710_
                                          (lambda (_phi157706_
                                                   _key157707_
                                                   _out157708_)
                                            (##structure
                                             gx#module-export::t
                                             _current-ctx157607_
                                             _key157707_
                                             _phi157706_
                                             _key157707_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _in157691157699_
                                         'gx#module-import::t)
                                        (let* ((_e157695157713_
                                                (##unchecked-structure-ref
                                                 _in157691157699_
                                                 '1
                                                 gx#module-import::t
                                                 '#f))
                                               (_out157716_ _e157695157713_)
                                               (_e157696157718_
                                                (##unchecked-structure-ref
                                                 _in157691157699_
                                                 '2
                                                 gx#module-import::t
                                                 '#f))
                                               (_key157721_ _e157696157718_)
                                               (_e157697157723_
                                                (##unchecked-structure-ref
                                                 _in157691157699_
                                                 '3
                                                 gx#module-import::t
                                                 '#f))
                                               (_phi157726_ _e157697157723_))
                                          (_K157694157710_
                                           _phi157726_
                                           _key157721_
                                           _out157716_))
                                        (_E157693157703_)))))
                               (_fold-e157610_
                                (lambda (_in157612_ _r157613_)
                                  (let* ((_in157614157628_ _in157612_)
                                         (_else157617157636_
                                          (lambda () _r157613_)))
                                    (let ((_K157623157672_
                                           (lambda (_phi157668_
                                                    _key157669_
                                                    _out157670_)
                                             (if (and (fx= _phi157668_
                                                           _current-phi157608_)
                                                      (eq? _src157604_
                                                           (##unchecked-structure-ref
                                                            _out157670_
                                                            '1
                                                            gx#module-export::t
                                                            '#f)))
                                                 (cons (_import->export157609_
                                                        _in157612_)
                                                       _r157613_)
                                                 _r157613_)))
                                          (_K157619157647_
                                           (lambda (_imports157640_
                                                    _phi157641_
                                                    _ctx157642_)
                                             (if (and (fx= _phi157641_
                                                           _current-phi157608_)
                                                      (eq? _src157604_
                                                           _ctx157642_))
                                                 (foldl1 (lambda (_in157644_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r157645_)
                   (cons (_import->export157609_ _in157644_) _r157645_))
                 _r157613_
                 _imports157640_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _r157613_))))
                                      (let ((_try-match157616157665_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _in157614157628_
                                                    'gx#import-set::t)
                                                   (let* ((_e157620157650_
                                                           (##unchecked-structure-ref
                                                            _in157614157628_
                                                            '1
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e157621157655_
                                                           (##unchecked-structure-ref
                                                            _in157614157628_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e157622157660_
                                                           (##unchecked-structure-ref
                                                            _in157614157628_
                                                            '3
                                                            gx#import-set::t
                                                            '#f)))
                                                     (let ((_ctx157653_
                                                            _e157620157650_)
                                                           (_phi157658_
                                                            _e157621157655_)
                                                           (_imports157663_
                                                            _e157622157660_))
                                                       (_K157619157647_
                                                        _imports157663_
                                                        _phi157658_
                                                        _ctx157653_)))
                                                   (_else157617157636_)))))
                                        (if (##structure-direct-instance-of?
                                             _in157614157628_
                                             'gx#module-import::t)
                                            (let* ((_e157624157675_
                                                    (##unchecked-structure-ref
                                                     _in157614157628_
                                                     '1
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e157625157680_
                                                    (##unchecked-structure-ref
                                                     _in157614157628_
                                                     '2
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e157626157685_
                                                    (##unchecked-structure-ref
                                                     _in157614157628_
                                                     '3
                                                     gx#module-import::t
                                                     '#f)))
                                              (let ((_out157678_
                                                     _e157624157675_)
                                                    (_key157683_
                                                     _e157625157680_)
                                                    (_phi157688_
                                                     _e157626157685_))
                                                (_K157623157672_
                                                 _phi157688_
                                                 _key157683_
                                                 _out157678_)))
                                            (_try-match157616157665_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _src157604_
                              _current-phi157608_
                              (foldl1 _fold-e157610_
                                      '()
                                      (##unchecked-structure-ref
                                       _current-ctx157607_
                                       '8
                                       gx#module-context::t
                                       '#f)))
                             _r157605_))))
                  (_export!157581_
                   (lambda (_rbody157594_)
                     (letrec* ((_current-ctx157596_
                                (gx#current-expander-context))
                               (_fold-e157597_
                                (lambda (_out157601_ _r157602_)
                                  (if (##structure-direct-instance-of?
                                       _out157601_
                                       'gx#module-export::t)
                                      (cons _out157601_ _r157602_)
                                      (if (##structure-direct-instance-of?
                                           _out157601_
                                           'gx#export-set::t)
                                          (foldl1 cons
                                                  _r157602_
                                                  (##unchecked-structure-ref
                                                   _out157601_
                                                   '3
                                                   gx#export-set::t
                                                   '#f))
                                          _r157602_)))))
                       (let ((_body157599_ (reverse _rbody157594_)))
                         (##unchecked-structure-set!
                          _current-ctx157596_
                          (foldl1 _fold-e157597_
                                  (##unchecked-structure-ref
                                   _current-ctx157596_
                                   '9
                                   gx#module-context::t
                                   '#f)
                                  _body157599_)
                          '9
                          gx#module-context::t
                          '#f)
                         _body157599_))))
                  (_expanded-export?157582_
                   (lambda (_e157589_)
                     (let ((_$e157591_
                            (##structure-direct-instance-of?
                             _e157589_
                             'gx#module-export::t)))
                       (if _$e157591_
                           _$e157591_
                           (##structure-direct-instance-of?
                            _e157589_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _internal-expand?157576_)
              (let ((_rbody157587_
                     (gx#core-expand-import/export
                      _stx157575_
                      _expanded-export?157582_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _expand1157579_)))
                (if _internal-expand?157576_
                    (reverse _rbody157587_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons '%#export (_export!157581_ _rbody157587_))
                     (gx#stx-source _stx157575_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _stx157575_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _stx157575_))))))
    (define gx#core-expand-export%__0
      (lambda (_stx158060_)
        (let ((_internal-expand?158062_ '#f))
          (gx#core-expand-export%__% _stx158060_ _internal-expand?158062_))))
    (define gx#core-expand-export%
      (lambda _g165494_
        (let ((_g165493_ (##length _g165494_)))
          (cond ((##fx= _g165493_ 1)
                 (apply (lambda (_stx158060_)
                          (gx#core-expand-export%__0 _stx158060_))
                        _g165494_))
                ((##fx= _g165493_ 2)
                 (apply (lambda (_stx158064_ _internal-expand?158065_)
                          (gx#core-expand-export%__%
                           _stx158064_
                           _internal-expand?158065_))
                        _g165494_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g165494_))))))
    (define gx#core-expand-export-source
      (lambda (_hd157572_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _hd157572_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_stx157542_)
        (let* ((_e157543157550_ _stx157542_)
               (_E157545157554_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e157543157550_)))
               (_E157544157568_
                (lambda ()
                  (if (gx#stx-pair? _e157543157550_)
                      (let ((_e157546157558_ (gx#syntax-e _e157543157550_)))
                        (let ((_hd157547157561_ (##car _e157546157558_))
                              (_tl157548157563_ (##cdr _e157546157558_)))
                          (let ((_body157566_ _tl157548157563_))
                            (if (gx#identifier-list? _body157566_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _body157566_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _body157566_))
                                   (gx#stx-source _stx157542_)))
                                (_E157545157554_)))))
                      (_E157545157554_)))))
          (_E157544157568_))))
    (define gx#core-bind-feature!__%
      (lambda (_id157508_ _private?157509_ _phi157510_ _ctx157511_)
        (gx#core-bind-syntax!__%
         _id157508_
         ((if _private?157509_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _id157508_))
         _private?157509_
         _phi157510_
         _ctx157511_)))
    (define gx#core-bind-feature!__0
      (lambda (_id157516_)
        (let* ((_private?157518_ '#f)
               (_phi157520_ (gx#current-expander-phi))
               (_ctx157522_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id157516_
           _private?157518_
           _phi157520_
           _ctx157522_))))
    (define gx#core-bind-feature!__1
      (lambda (_id157524_ _private?157525_)
        (let* ((_phi157527_ (gx#current-expander-phi))
               (_ctx157529_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id157524_
           _private?157525_
           _phi157527_
           _ctx157529_))))
    (define gx#core-bind-feature!__2
      (lambda (_id157531_ _private?157532_ _phi157533_)
        (let ((_ctx157535_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id157531_
           _private?157532_
           _phi157533_
           _ctx157535_))))
    (define gx#core-bind-feature!
      (lambda _g165496_
        (let ((_g165495_ (##length _g165496_)))
          (cond ((##fx= _g165495_ 1)
                 (apply (lambda (_id157516_)
                          (gx#core-bind-feature!__0 _id157516_))
                        _g165496_))
                ((##fx= _g165495_ 2)
                 (apply (lambda (_id157524_ _private?157525_)
                          (gx#core-bind-feature!__1
                           _id157524_
                           _private?157525_))
                        _g165496_))
                ((##fx= _g165495_ 3)
                 (apply (lambda (_id157531_ _private?157532_ _phi157533_)
                          (gx#core-bind-feature!__2
                           _id157531_
                           _private?157532_
                           _phi157533_))
                        _g165496_))
                ((##fx= _g165495_ 4)
                 (apply (lambda (_id157537_
                                 _private?157538_
                                 _phi157539_
                                 _ctx157540_)
                          (gx#core-bind-feature!__%
                           _id157537_
                           _private?157538_
                           _phi157539_
                           _ctx157540_))
                        _g165496_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g165496_))))))))
