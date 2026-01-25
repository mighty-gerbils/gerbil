(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1769384629)
  (begin
    (declare (not safe))
    (define gx#__module-registry
      (make-hash-table__%
       '#f
       absent-value
       absent-value
       absent-value
       absent-value
       absent-value
       absent-value
       absent-value
       absent-value))
    (define gx#__module-pkg-cache
      (make-hash-table__%
       '#f
       absent-value
       absent-value
       absent-value
       absent-value
       absent-value
       absent-value
       absent-value
       absent-value))
    (define gx#module-import::t
      (__make-class-type
       'gx#module-import::t
       'module-import
       (list)
       '(source name phi weak?)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))
       '#f))
    (define gx#module-import? (__make-class-predicate gx#module-import::t))
    (define gx#make-module-import
      (lambda _%$args141205%_
        (apply make-instance gx#module-import::t _%$args141205%_)))
    (define gx#module-import-source
      (__make-class-slot-accessor gx#module-import::t 'source))
    (define gx#module-import-name
      (__make-class-slot-accessor gx#module-import::t 'name))
    (define gx#module-import-phi
      (__make-class-slot-accessor gx#module-import::t 'phi))
    (define gx#module-import-weak?
      (__make-class-slot-accessor gx#module-import::t 'weak?))
    (define gx#module-import-source-set!
      (__make-class-slot-mutator gx#module-import::t 'source))
    (define gx#module-import-name-set!
      (__make-class-slot-mutator gx#module-import::t 'name))
    (define gx#module-import-phi-set!
      (__make-class-slot-mutator gx#module-import::t 'phi))
    (define gx#module-import-weak?-set!
      (__make-class-slot-mutator gx#module-import::t 'weak?))
    (define gx#&module-import-source
      (__make-class-slot-unchecked-accessor gx#module-import::t 'source))
    (define gx#&module-import-name
      (__make-class-slot-unchecked-accessor gx#module-import::t 'name))
    (define gx#&module-import-phi
      (__make-class-slot-unchecked-accessor gx#module-import::t 'phi))
    (define gx#&module-import-weak?
      (__make-class-slot-unchecked-accessor gx#module-import::t 'weak?))
    (define gx#&module-import-source-set!
      (__make-class-slot-unchecked-mutator gx#module-import::t 'source))
    (define gx#&module-import-name-set!
      (__make-class-slot-unchecked-mutator gx#module-import::t 'name))
    (define gx#&module-import-phi-set!
      (__make-class-slot-unchecked-mutator gx#module-import::t 'phi))
    (define gx#&module-import-weak?-set!
      (__make-class-slot-unchecked-mutator gx#module-import::t 'weak?))
    (define gx#module-export::t
      (__make-class-type
       'gx#module-export::t
       'module-export
       (list)
       '(context key phi name weak?)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))
       '#f))
    (define gx#module-export? (__make-class-predicate gx#module-export::t))
    (define gx#make-module-export
      (lambda _%$args141202%_
        (apply make-instance gx#module-export::t _%$args141202%_)))
    (define gx#module-export-context
      (__make-class-slot-accessor gx#module-export::t 'context))
    (define gx#module-export-key
      (__make-class-slot-accessor gx#module-export::t 'key))
    (define gx#module-export-phi
      (__make-class-slot-accessor gx#module-export::t 'phi))
    (define gx#module-export-name
      (__make-class-slot-accessor gx#module-export::t 'name))
    (define gx#module-export-weak?
      (__make-class-slot-accessor gx#module-export::t 'weak?))
    (define gx#module-export-context-set!
      (__make-class-slot-mutator gx#module-export::t 'context))
    (define gx#module-export-key-set!
      (__make-class-slot-mutator gx#module-export::t 'key))
    (define gx#module-export-phi-set!
      (__make-class-slot-mutator gx#module-export::t 'phi))
    (define gx#module-export-name-set!
      (__make-class-slot-mutator gx#module-export::t 'name))
    (define gx#module-export-weak?-set!
      (__make-class-slot-mutator gx#module-export::t 'weak?))
    (define gx#&module-export-context
      (__make-class-slot-unchecked-accessor gx#module-export::t 'context))
    (define gx#&module-export-key
      (__make-class-slot-unchecked-accessor gx#module-export::t 'key))
    (define gx#&module-export-phi
      (__make-class-slot-unchecked-accessor gx#module-export::t 'phi))
    (define gx#&module-export-name
      (__make-class-slot-unchecked-accessor gx#module-export::t 'name))
    (define gx#&module-export-weak?
      (__make-class-slot-unchecked-accessor gx#module-export::t 'weak?))
    (define gx#&module-export-context-set!
      (__make-class-slot-unchecked-mutator gx#module-export::t 'context))
    (define gx#&module-export-key-set!
      (__make-class-slot-unchecked-mutator gx#module-export::t 'key))
    (define gx#&module-export-phi-set!
      (__make-class-slot-unchecked-mutator gx#module-export::t 'phi))
    (define gx#&module-export-name-set!
      (__make-class-slot-unchecked-mutator gx#module-export::t 'name))
    (define gx#&module-export-weak?-set!
      (__make-class-slot-unchecked-mutator gx#module-export::t 'weak?))
    (define gx#import-set::t
      (__make-class-type
       'gx#import-set::t
       'import-set
       (list)
       '(source phi imports)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))
       '#f))
    (define gx#import-set? (__make-class-predicate gx#import-set::t))
    (define gx#make-import-set
      (lambda _%$args141199%_
        (apply make-instance gx#import-set::t _%$args141199%_)))
    (define gx#import-set-source
      (__make-class-slot-accessor gx#import-set::t 'source))
    (define gx#import-set-phi
      (__make-class-slot-accessor gx#import-set::t 'phi))
    (define gx#import-set-imports
      (__make-class-slot-accessor gx#import-set::t 'imports))
    (define gx#import-set-source-set!
      (__make-class-slot-mutator gx#import-set::t 'source))
    (define gx#import-set-phi-set!
      (__make-class-slot-mutator gx#import-set::t 'phi))
    (define gx#import-set-imports-set!
      (__make-class-slot-mutator gx#import-set::t 'imports))
    (define gx#&import-set-source
      (__make-class-slot-unchecked-accessor gx#import-set::t 'source))
    (define gx#&import-set-phi
      (__make-class-slot-unchecked-accessor gx#import-set::t 'phi))
    (define gx#&import-set-imports
      (__make-class-slot-unchecked-accessor gx#import-set::t 'imports))
    (define gx#&import-set-source-set!
      (__make-class-slot-unchecked-mutator gx#import-set::t 'source))
    (define gx#&import-set-phi-set!
      (__make-class-slot-unchecked-mutator gx#import-set::t 'phi))
    (define gx#&import-set-imports-set!
      (__make-class-slot-unchecked-mutator gx#import-set::t 'imports))
    (define gx#export-set::t
      (__make-class-type
       'gx#export-set::t
       'export-set
       (list)
       '(source phi exports)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))
       '#f))
    (define gx#export-set? (__make-class-predicate gx#export-set::t))
    (define gx#make-export-set
      (lambda _%$args141196%_
        (apply make-instance gx#export-set::t _%$args141196%_)))
    (define gx#export-set-source
      (__make-class-slot-accessor gx#export-set::t 'source))
    (define gx#export-set-phi
      (__make-class-slot-accessor gx#export-set::t 'phi))
    (define gx#export-set-exports
      (__make-class-slot-accessor gx#export-set::t 'exports))
    (define gx#export-set-source-set!
      (__make-class-slot-mutator gx#export-set::t 'source))
    (define gx#export-set-phi-set!
      (__make-class-slot-mutator gx#export-set::t 'phi))
    (define gx#export-set-exports-set!
      (__make-class-slot-mutator gx#export-set::t 'exports))
    (define gx#&export-set-source
      (__make-class-slot-unchecked-accessor gx#export-set::t 'source))
    (define gx#&export-set-phi
      (__make-class-slot-unchecked-accessor gx#export-set::t 'phi))
    (define gx#&export-set-exports
      (__make-class-slot-unchecked-accessor gx#export-set::t 'exports))
    (define gx#&export-set-source-set!
      (__make-class-slot-unchecked-mutator gx#export-set::t 'source))
    (define gx#&export-set-phi-set!
      (__make-class-slot-unchecked-mutator gx#export-set::t 'phi))
    (define gx#&export-set-exports-set!
      (__make-class-slot-unchecked-mutator gx#export-set::t 'exports))
    (define gx#import-expander::t
      (__make-class-type
       'gx#import-expander::t
       'import-expander
       (list gx#user-expander::t)
       '()
       '()
       ':init!))
    (define gx#import-expander? (__make-class-predicate gx#import-expander::t))
    (define gx#make-import-expander
      (lambda _%$args141193%_
        (apply make-instance gx#import-expander::t _%$args141193%_)))
    (define gx#import-expander-context
      (__make-class-slot-accessor gx#import-expander::t 'context))
    (define gx#import-expander-phi
      (__make-class-slot-accessor gx#import-expander::t 'phi))
    (define gx#import-expander-e
      (__make-class-slot-accessor gx#import-expander::t 'e))
    (define gx#import-expander-context-set!
      (__make-class-slot-mutator gx#import-expander::t 'context))
    (define gx#import-expander-phi-set!
      (__make-class-slot-mutator gx#import-expander::t 'phi))
    (define gx#import-expander-e-set!
      (__make-class-slot-mutator gx#import-expander::t 'e))
    (define gx#&import-expander-context
      (__make-class-slot-unchecked-accessor gx#import-expander::t 'context))
    (define gx#&import-expander-phi
      (__make-class-slot-unchecked-accessor gx#import-expander::t 'phi))
    (define gx#&import-expander-e
      (__make-class-slot-unchecked-accessor gx#import-expander::t 'e))
    (define gx#&import-expander-context-set!
      (__make-class-slot-unchecked-mutator gx#import-expander::t 'context))
    (define gx#&import-expander-phi-set!
      (__make-class-slot-unchecked-mutator gx#import-expander::t 'phi))
    (define gx#&import-expander-e-set!
      (__make-class-slot-unchecked-mutator gx#import-expander::t 'e))
    (define gx#export-expander::t
      (__make-class-type
       'gx#export-expander::t
       'export-expander
       (list gx#user-expander::t)
       '()
       '()
       ':init!))
    (define gx#export-expander? (__make-class-predicate gx#export-expander::t))
    (define gx#make-export-expander
      (lambda _%$args141190%_
        (apply make-instance gx#export-expander::t _%$args141190%_)))
    (define gx#export-expander-context
      (__make-class-slot-accessor gx#export-expander::t 'context))
    (define gx#export-expander-phi
      (__make-class-slot-accessor gx#export-expander::t 'phi))
    (define gx#export-expander-e
      (__make-class-slot-accessor gx#export-expander::t 'e))
    (define gx#export-expander-context-set!
      (__make-class-slot-mutator gx#export-expander::t 'context))
    (define gx#export-expander-phi-set!
      (__make-class-slot-mutator gx#export-expander::t 'phi))
    (define gx#export-expander-e-set!
      (__make-class-slot-mutator gx#export-expander::t 'e))
    (define gx#&export-expander-context
      (__make-class-slot-unchecked-accessor gx#export-expander::t 'context))
    (define gx#&export-expander-phi
      (__make-class-slot-unchecked-accessor gx#export-expander::t 'phi))
    (define gx#&export-expander-e
      (__make-class-slot-unchecked-accessor gx#export-expander::t 'e))
    (define gx#&export-expander-context-set!
      (__make-class-slot-unchecked-mutator gx#export-expander::t 'context))
    (define gx#&export-expander-phi-set!
      (__make-class-slot-unchecked-mutator gx#export-expander::t 'phi))
    (define gx#&export-expander-e-set!
      (__make-class-slot-unchecked-mutator gx#export-expander::t 'e))
    (define gx#import-export-expander::t
      (__make-class-type
       'gx#import-export-expander::t
       'import-export-expander
       (list gx#import-expander::t gx#export-expander::t)
       '()
       '()
       ':init!))
    (define gx#import-export-expander?
      (__make-class-predicate gx#import-export-expander::t))
    (define gx#make-import-export-expander
      (lambda _%$args141187%_
        (apply make-instance gx#import-export-expander::t _%$args141187%_)))
    (define gx#import-export-expander-context
      (__make-class-slot-accessor gx#import-export-expander::t 'context))
    (define gx#import-export-expander-phi
      (__make-class-slot-accessor gx#import-export-expander::t 'phi))
    (define gx#import-export-expander-e
      (__make-class-slot-accessor gx#import-export-expander::t 'e))
    (define gx#import-export-expander-context-set!
      (__make-class-slot-mutator gx#import-export-expander::t 'context))
    (define gx#import-export-expander-phi-set!
      (__make-class-slot-mutator gx#import-export-expander::t 'phi))
    (define gx#import-export-expander-e-set!
      (__make-class-slot-mutator gx#import-export-expander::t 'e))
    (define gx#&import-export-expander-context
      (__make-class-slot-unchecked-accessor
       gx#import-export-expander::t
       'context))
    (define gx#&import-export-expander-phi
      (__make-class-slot-unchecked-accessor gx#import-export-expander::t 'phi))
    (define gx#&import-export-expander-e
      (__make-class-slot-unchecked-accessor gx#import-export-expander::t 'e))
    (define gx#&import-export-expander-context-set!
      (__make-class-slot-unchecked-mutator
       gx#import-export-expander::t
       'context))
    (define gx#&import-export-expander-phi-set!
      (__make-class-slot-unchecked-mutator gx#import-export-expander::t 'phi))
    (define gx#&import-export-expander-e-set!
      (__make-class-slot-unchecked-mutator gx#import-export-expander::t 'e))
    (define gx#current-import-expander-phi (make-parameter '#f))
    (define gx#current-export-expander-phi (make-parameter '#f))
    (define gx#current-module-reader-path (make-parameter '#f))
    (define gx#current-module-reader-args (make-parameter '#f))
    (define gx#source-file-settings '(char-encoding: UTF-8 eol-encoding: lf))
    (define gx#call-with-input-source-file
      (lambda (_%path141184%_ _%fun141185%_)
        (call-with-input-file
         (cons 'path: (cons _%path141184%_ gx#source-file-settings))
         _%fun141185%_)))
    (define gx#module-context:::init!
      (lambda (_%self141167%_
               _%id141168%_
               _%super141169%_
               _%ns141170%_
               _%path141171%_)
        (let ((_%self141174%_ _%self141167%_))
          (if (##fx< '11 (##structure-length _%self141174%_))
              (begin
                (##unchecked-structure-set!
                 _%self141174%_
                 _%id141168%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self141174%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self141174%_
                 _%super141169%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self141174%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self141174%_ '#f '5 '#f '#f)
                (##unchecked-structure-set!
                 _%self141174%_
                 _%ns141170%_
                 '6
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self141174%_
                 _%path141171%_
                 '7
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self141174%_ '() '8 '#f '#f)
                (##unchecked-structure-set! _%self141174%_ '() '9 '#f '#f)
                (##unchecked-structure-set! _%self141174%_ '#f '10 '#f '#f)
                (##unchecked-structure-set! _%self141174%_ '#f '11 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self141174%_
                     '11
                     (##structure-length _%self141174%_))))))
    (__bind-method!__%
     gx#module-context::t
     ':init!
     gx#module-context:::init!
     '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_%self141000%_ _%ctx141001%_ _%root141002%_)
        (let* ((_%self141005%_ _%self141000%_)
               (_%super141021%_
                (let ((_%$e141015%_ _%root141002%_))
                  (if _%$e141015%_
                      _%$e141015%_
                      (let ((_%$e141018%_ (gx#core-context-root__0)))
                        (if _%$e141018%_
                            _%$e141018%_
                            (let ((__obj141249
                                   (##structure gx#root-context::t '#f '#f)))
                              (let ((__constructor141250
                                     (direct-method-ref
                                      gx#root-context::t
                                      __obj141249
                                      ':init!)))
                                (if __constructor141250
                                    (__constructor141250 __obj141249)
                                    (error '"missing constructor method implementation"
                                           'class:
                                           gx#root-context::t
                                           'method:
                                           ':init!)))
                              __obj141249)))))))
          (if _%ctx141001%_
              (let ((_%id141024%_
                     (##structure-ref
                      _%ctx141001%_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_%path141025%_
                     (##structure-ref
                      _%ctx141001%_
                      '7
                      gx#module-context::t
                      '#f))
                    (_%in141026%_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _%ctx141001%_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_%e141027%_
                     (__make-atomic-promise
                      (lambda () (gx#eval-module _%ctx141001%_)))))
                (if (##fx< '8 (##structure-length _%self141005%_))
                    (begin
                      (##unchecked-structure-set!
                       _%self141005%_
                       _%id141024%_
                       '1
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self141005%_
                       (make-hash-table-eq 'size: (##length _%in141026%_))
                       '2
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self141005%_
                       _%super141021%_
                       '3
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self141005%_
                       '#f
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self141005%_
                       '#f
                       '5
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self141005%_
                       _%path141025%_
                       '6
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self141005%_
                       _%in141026%_
                       '7
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self141005%_
                       _%e141027%_
                       '8
                       '#f
                       '#f)
                      '#!void)
                    (error '"struct-instance-init!: too many arguments for struct"
                           _%self141005%_
                           '8
                           (##structure-length _%self141005%_)))
                (##for-each
                 (lambda (_%g141028141030%_)
                   (gx#core-bind-weak-import!__%
                    _%g141028141030%_
                    _%self141005%_))
                 _%in141026%_))
              (if (##fx< '8 (##structure-length _%self141005%_))
                  (begin
                    (##unchecked-structure-set! _%self141005%_ '#f '1 '#f '#f)
                    (##unchecked-structure-set!
                     _%self141005%_
                     (make-hash-table-eq)
                     '2
                     '#f
                     '#f)
                    (##unchecked-structure-set!
                     _%self141005%_
                     _%super141021%_
                     '3
                     '#f
                     '#f)
                    (##unchecked-structure-set! _%self141005%_ '#f '4 '#f '#f)
                    (##unchecked-structure-set! _%self141005%_ '#f '5 '#f '#f)
                    (##unchecked-structure-set! _%self141005%_ '#f '6 '#f '#f)
                    (##unchecked-structure-set! _%self141005%_ '() '7 '#f '#f)
                    (##unchecked-structure-set! _%self141005%_ '#f '8 '#f '#f)
                    '#!void)
                  (error '"struct-instance-init!: too many arguments for struct"
                         _%self141005%_
                         '8
                         (##structure-length _%self141005%_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_%self141036%_ _%ctx141037%_)
        (let ((_%root141039%_ '#f))
          (gx#prelude-context:::init!__%
           _%self141036%_
           _%ctx141037%_
           _%root141039%_))))
    (define gx#prelude-context:::init!
      (lambda _g141255_
        (let ((_g141256_ (##length _g141255_)))
          (cond ((##fx= _g141256_ 2)
                 (apply gx#prelude-context:::init!__0 _g141255_))
                ((##fx= _g141256_ 3)
                 (apply gx#prelude-context:::init!__% _g141255_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g141255_))))))
    (__bind-method!__%
     gx#prelude-context::t
     ':init!
     gx#prelude-context:::init!
     '#f)
    (define gx#import-export-expander-init!
      (lambda (_%self140874%_ _%e140875%_)
        (if (##fx< '3 (##structure-length _%self140874%_))
            (begin
              (##unchecked-structure-set!
               _%self140874%_
               _%e140875%_
               '1
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self140874%_
               (gx#current-expander-context)
               '2
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self140874%_
               (##fx- (gx#current-expander-phi) '1)
               '3
               '#f
               '#f)
              '#!void)
            (error '"struct-instance-init!: too many arguments for struct"
                   _%self140874%_
                   '3
                   (##structure-length _%self140874%_)))))
    (define gx#import-expander:::init! gx#import-export-expander-init!)
    (__bind-method!__%
     gx#import-expander::t
     ':init!
     gx#import-expander:::init!
     '#f)
    (define gx#export-expander:::init! gx#import-export-expander-init!)
    (__bind-method!__%
     gx#export-expander::t
     ':init!
     gx#export-expander:::init!
     '#f)
    (define gx#import-export-expander:::init! gx#import-export-expander-init!)
    (__bind-method!__%
     gx#import-export-expander::t
     ':init!
     gx#import-export-expander:::init!
     '#f)
    (define gx#import-expander::apply-import-expander
      (lambda (_%g140500140503%_ _%g140501140505%_)
        (gx#core-apply-user-expander__%
         _%g140500140503%_
         _%g140501140505%_
         'apply-import-expander)))
    (__bind-method!__%
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_%g140371140374%_ _%g140372140376%_)
        (gx#core-apply-user-expander__%
         _%g140371140374%_
         _%g140372140376%_
         'apply-export-expander)))
    (__bind-method!__%
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_%ctx140242%_)
        (let* ((_%path140244%_
                (##structure-ref _%ctx140242%_ '7 gx#module-context::t '#f))
               (_%path140246%_
                (if (pair? _%path140244%_)
                    (##last _%path140244%_)
                    _%path140244%_)))
          (if (string? _%path140246%_) _%path140246%_ '#f))))
    (define gx#import-module__%
      (lambda (_%path140218%_ _%reload?140219%_ _%eval?140220%_)
        (let ((_%ctx140222%_
               ((gx#current-expander-module-import)
                _%path140218%_
                _%reload?140219%_)))
          (if (and _%ctx140222%_ _%eval?140220%_)
              (gx#eval-module _%ctx140222%_)
              '#!void)
          _%ctx140222%_)))
    (define gx#import-module__0
      (lambda (_%path140227%_)
        (let* ((_%reload?140229%_ '#f) (_%eval?140231%_ '#f))
          (gx#import-module__%
           _%path140227%_
           _%reload?140229%_
           _%eval?140231%_))))
    (define gx#import-module__1
      (lambda (_%path140233%_ _%reload?140234%_)
        (let ((_%eval?140236%_ '#f))
          (gx#import-module__%
           _%path140233%_
           _%reload?140234%_
           _%eval?140236%_))))
    (define gx#import-module
      (lambda _g141257_
        (let ((_g141258_ (##length _g141257_)))
          (cond ((##fx= _g141258_ 1) (apply gx#import-module__0 _g141257_))
                ((##fx= _g141258_ 2) (apply gx#import-module__1 _g141257_))
                ((##fx= _g141258_ 3) (apply gx#import-module__% _g141257_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g141257_))))))
    (define gx#eval-module
      (lambda (_%mod140215%_)
        ((gx#current-expander-module-eval) _%mod140215%_)))
    (define gx#core-eval-module
      (lambda (_%obj140194%_)
        (letrec ((_%force-e140196%_
                  (lambda (_%getf140210%_ _%e140211%_)
                    (call-with-parameters__1
                     (lambda ()
                       (call-with-parameters__1
                        (lambda () (force (_%getf140210%_ _%e140211%_)))
                        gx#current-expander-phi
                        '0))
                     gx#current-expander-context
                     _%e140211%_))))
          (let _%recur140198%_ ((_%e140200%_ _%obj140194%_))
            (if (##structure-instance-of? _%e140200%_ 'gx#module-context::t)
                (let ()
                  (let ((_%$e140203%_
                         (gx#core-context-prelude__% _%e140200%_)))
                    (if _%$e140203%_ (_%recur140198%_ _%$e140203%_) '#!void))
                  (_%force-e140196%_ gx#module-context-e _%e140200%_))
                (if (##structure-instance-of?
                     _%e140200%_
                     'gx#prelude-context::t)
                    (_%force-e140196%_ gx#prelude-context-e _%e140200%_)
                    (if (gx#stx-string? _%e140200%_)
                        (_%recur140198%_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _%e140200%_)))
                        (if (gx#core-library-module-path? _%e140200%_)
                            (_%recur140198%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%e140200%_)))
                            (error '"cannot eval module" _%obj140194%_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_%ctx140174%_)
        (let _%lp140176%_ ((_%e140178%_ _%ctx140174%_))
          (if (or (##structure-instance-of? _%e140178%_ 'gx#module-context::t)
                  (##structure-instance-of? _%e140178%_ 'gx#local-context::t))
              (_%lp140176%_ (##unchecked-structure-ref _%e140178%_ '3 '#f '#f))
              (if (##structure-instance-of? _%e140178%_ 'gx#prelude-context::t)
                  _%e140178%_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_%ctx140190%_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _%ctx140190%_))))
    (define gx#core-context-prelude
      (lambda _g141259_
        (let ((_g141260_ (##length _g141259_)))
          (cond ((##fx= _g141260_ 0)
                 (apply gx#core-context-prelude__0 _g141259_))
                ((##fx= _g141260_ 1)
                 (apply gx#core-context-prelude__% _g141259_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g141259_))))))
    (define gx#core-module->prelude-context
      (lambda (_%ctx140165%_)
        (let ((_%$e140167%_ (__hash-get gx#__module-registry _%ctx140165%_)))
          (if _%$e140167%_
              _%$e140167%_
              (let ((_%pre140171%_
                     (let ((__obj141251
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
                       (gx#prelude-context:::init!__0
                        __obj141251
                        _%ctx140165%_)
                       __obj141251)))
                (__hash-put! gx#__module-registry _%ctx140165%_ _%pre140171%_)
                _%pre140171%_)))))
    (define gx#core-import-module__%
      (lambda (_%rpath140033%_ _%reload?140034%_)
        (letrec ((_%import-source140036%_
                  (lambda (_%path140124%_)
                    (if (member _%path140124%_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _%path140124%_)
                        '#!void)
                    (call-with-parameters__1
                     (lambda ()
                       (call-with-parameters__1
                        (lambda ()
                          (call-with-parameters__1
                           (lambda ()
                             (call-with-parameters__1
                              (lambda ()
                                (call-with-parameters__1
                                 (lambda ()
                                   (call-with-parameters__1
                                    (lambda ()
                                      (let ((_g141261_
                                             (gx#core-read-module
                                              _%path140124%_)))
                                        (begin
                                          (let ((_g141262_
                                                 (if (##values? _g141261_)
                                                     (##values-length
                                                      _g141261_)
                                                     1)))
                                            (if (not (##fx= _g141262_ 4))
                                                (error "Context expects 4 values"
                                                       _g141262_)))
                                          (let ((_%pre140132%_
                                                 (##values-ref _g141261_ 0))
                                                (_%id140133%_
                                                 (##values-ref _g141261_ 1))
                                                (_%ns140134%_
                                                 (##values-ref _g141261_ 2))
                                                (_%body140135%_
                                                 (##values-ref _g141261_ 3)))
                                            (let* ((_%prelude140145%_
                                                    (if (##structure-instance-of?
                                                         _%pre140132%_
                                                         'gx#prelude-context::t)
                                                        _%pre140132%_
                                                        (if (##structure-instance-of?
                                                             _%pre140132%_
                                                             'gx#module-context::t)
                                                            (gx#core-module->prelude-context
                                                             _%pre140132%_)
                                                            (if (string? _%pre140132%_)
                                                                (gx#core-module->prelude-context
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#core-import-module__0 _%pre140132%_))
                        (if (not _%pre140132%_)
                            (let ((_%$e140141%_
                                   (gx#current-expander-module-prelude)))
                              (if _%$e140141%_
                                  _%$e140141%_
                                  (let ((__obj141252
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
                                    (gx#prelude-context:::init!__0
                                     __obj141252
                                     '#f)
                                    __obj141252)))
                            (error '"cannot import module; unknown prelude"
                                   _%rpath140033%_
                                   _%pre140132%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%ctx140147%_
                                                    (let ((__obj141253
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
                                                       __obj141253
                                                       _%id140133%_
                                                       _%prelude140145%_
                                                       _%ns140134%_
                                                       _%path140124%_)
                                                      __obj141253))
                                                   (_%body140149%_
                                                    (gx#core-expand-module-begin
                                                     _%body140135%_
                                                     _%ctx140147%_))
                                                   (_%body140151%_
                                                    (gx#core-quote-syntax__%
                                                     (gx#core-cons
                                                      '%#begin
                                                      _%body140149%_)
                                                     _%path140124%_
                                                     _%ctx140147%_
                                                     '())))
                                              (##unchecked-structure-set!
                                               _%ctx140147%_
                                               (__make-atomic-promise
                                                (lambda ()
                                                  (gx#eval-syntax*
                                                   _%body140151%_)))
                                               '10
                                               '#f
                                               '#f)
                                              (##unchecked-structure-set!
                                               _%ctx140147%_
                                               _%body140151%_
                                               '11
                                               '#f
                                               '#f)
                                              (__hash-put!
                                               gx#__module-registry
                                               _%path140124%_
                                               _%ctx140147%_)
                                              (__hash-put!
                                               gx#__module-registry
                                               _%id140133%_
                                               _%ctx140147%_)
                                              _%ctx140147%_)))))
                                    gx#current-export-expander-phi
                                    '#f))
                                 gx#current-import-expander-phi
                                 '#f))
                              gx#current-expander-path
                              (cons _%path140124%_
                                    (gx#current-expander-path))))
                           gx#current-expander-phi
                           '0))
                        gx#current-expander-marks
                        '()))
                     gx#current-expander-context
                     (gx#core-context-root__0))))
                 (_%import-submodule140037%_
                  (lambda (_%rpath140053%_)
                    (let* ((_%rpath140054140061%_ _%rpath140053%_)
                           (_%E140056140064%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%rpath140054140061%_
                                     '([origin . refs]))
                              '#!void))
                           (_%K140057140112%_
                            (lambda (_%refs140067%_ _%origin140068%_)
                              (let ((_%ctx140070%_
                                     (if _%origin140068%_
                                         (gx#core-import-module__%
                                          _%origin140068%_
                                          _%reload?140034%_)
                                         (gx#current-expander-context))))
                                (let _%lp140072%_ ((_%rest140074%_
                                                    _%refs140067%_)
                                                   (_%ctx140075%_
                                                    _%ctx140070%_))
                                  (let* ((_%rest140076140084%_ _%rest140074%_)
                                         (_%else140078140092%_
                                          (lambda () _%ctx140075%_))
                                         (_%K140080140100%_
                                          (lambda (_%rest140095%_ _%id140096%_)
                                            (let ((_%bind140098%_
                                                   (gx#resolve-identifier__%
                                                    _%id140096%_
                                                    '0
                                                    _%ctx140075%_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _%bind140098%_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _%bind140098%_
                                                         '4
                                                         '#f
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_%lp140072%_
                                                   _%rest140095%_
                                                   (##unchecked-structure-ref
                                                    _%bind140098%_
                                                    '4
                                                    '#f
                                                    '#f))
                                                  (error '"cannot import submodule; not bound as a module"
                                                         _%rpath140053%_
                                                         _%id140096%_
                                                         _%bind140098%_))))))
                                    (if (pair? _%rest140076140084%_)
                                        (let ((_%hd140081140103%_
                                               (##car _%rest140076140084%_))
                                              (_%tl140082140105%_
                                               (##cdr _%rest140076140084%_)))
                                          (let* ((_%id140108%_
                                                  _%hd140081140103%_)
                                                 (_%rest140110%_
                                                  _%tl140082140105%_))
                                            (_%K140080140100%_
                                             _%rest140110%_
                                             _%id140108%_)))
                                        (_%else140078140092%_))))))))
                      (if (pair? _%rpath140054140061%_)
                          (let ((_%hd140058140115%_
                                 (##car _%rpath140054140061%_))
                                (_%tl140059140117%_
                                 (##cdr _%rpath140054140061%_)))
                            (let* ((_%origin140120%_ _%hd140058140115%_)
                                   (_%refs140122%_ _%tl140059140117%_))
                              (_%K140057140112%_
                               _%refs140122%_
                               _%origin140120%_)))
                          (_%E140056140064%_))))))
          (let ((_%$e140039%_
                 (if (not _%reload?140034%_)
                     (__hash-get gx#__module-registry _%rpath140033%_)
                     '#f)))
            (if _%$e140039%_
                _%$e140039%_
                (if (list? _%rpath140033%_)
                    (_%import-submodule140037%_ _%rpath140033%_)
                    (if (gx#core-library-module-path? _%rpath140033%_)
                        (let ((_%ctx140044%_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _%rpath140033%_)
                                _%reload?140034%_)))
                          (__hash-put!
                           gx#__module-registry
                           _%rpath140033%_
                           _%ctx140044%_)
                          _%ctx140044%_)
                        (let* ((_%npath140047%_
                                (path-normalize _%rpath140033%_))
                               (_%$e140049%_
                                (if (not _%reload?140034%_)
                                    (__hash-get
                                     gx#__module-registry
                                     _%npath140047%_)
                                    '#f)))
                          (if _%$e140049%_
                              _%$e140049%_
                              (_%import-source140036%_
                               _%npath140047%_))))))))))
    (define gx#core-import-module__0
      (lambda (_%rpath140158%_)
        (let ((_%reload?140160%_ '#f))
          (gx#core-import-module__% _%rpath140158%_ _%reload?140160%_))))
    (define gx#core-import-module
      (lambda _g141263_
        (let ((_g141264_ (##length _g141263_)))
          (cond ((##fx= _g141264_ 1)
                 (apply gx#core-import-module__0 _g141263_))
                ((##fx= _g141264_ 2)
                 (apply gx#core-import-module__% _g141263_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g141263_))))))
    (define gx#core-read-module
      (lambda (_%path140022%_)
        (__with-catch
         (lambda (_%exn140024%_)
           (if (and (datum-parsing-exception? _%exn140024%_)
                    (eq? (datum-parsing-exception-filepos _%exn140024%_) '0))
               (gx#core-read-module/lang _%path140022%_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _%path140022%_
                (call-with-parameters__1
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_%g140026140028%_)
                      (display-exception__% _%exn140024%_ _%g140026140028%_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _%path140022%_)))))
    (define gx#core-read-module/sexp
      (lambda (_%path139874%_)
        (let _%lp139876%_ ((_%body139878%_
                            (read-syntax-from-file _%path139874%_))
                           (_%pre139879%_ '#f)
                           (_%ns139880%_ '#f)
                           (_%pkg139881%_ '#f))
          (let* ((_%e139882139906%_ _%body139878%_)
                 (_%E139898139932%_
                  (lambda ()
                    (let ((_g141265_
                           (if _%pkg139881%_
                               (values _%pre139879%_
                                       _%ns139880%_
                                       _%pkg139881%_)
                               (gx#core-read-module-package
                                _%path139874%_
                                _%pre139879%_
                                _%ns139880%_))))
                      (begin
                        (let ((_g141266_
                               (if (##values? _g141265_)
                                   (##values-length _g141265_)
                                   1)))
                          (if (not (##fx= _g141266_ 3))
                              (error "Context expects 3 values" _g141266_)))
                        (let ((_%pre139910%_ (##values-ref _g141265_ 0))
                              (_%ns139911%_ (##values-ref _g141265_ 1))
                              (_%pkg139912%_ (##values-ref _g141265_ 2)))
                          (let* ((_%prelude139918%_
                                  (if (gx#core-bound-module-prelude?
                                       _%pre139910%_)
                                      (gx#syntax-local-e__0 _%pre139910%_)
                                      (if (gx#core-library-module-path?
                                           _%pre139910%_)
                                          (gx#core-resolve-library-module-path
                                           _%pre139910%_)
                                          (if (gx#stx-string? _%pre139910%_)
                                              (gx#core-resolve-module-path__%
                                               _%pre139910%_
                                               _%path139874%_)
                                              (gx#stx-e _%pre139910%_)))))
                                 (_%path-id139920%_
                                  (gx#core-module-path->namespace
                                   _%path139874%_))
                                 (_%pkg-id139922%_
                                  (if _%pkg139912%_
                                      (##string-append
                                       _%pkg139912%_
                                       '"/"
                                       _%path-id139920%_)
                                      _%path-id139920%_))
                                 (_%module-id139924%_
                                  (##string->symbol _%pkg-id139922%_))
                                 (_%module-ns139929%_
                                  (if (eq? _%ns139911%_ '#!void)
                                      '#f
                                      (let ((_%$e139926%_ _%ns139911%_))
                                        (if _%$e139926%_
                                            _%$e139926%_
                                            _%pkg-id139922%_)))))
                            (values _%prelude139918%_
                                    _%module-id139924%_
                                    _%module-ns139929%_
                                    _%body139878%_)))))))
                 (_%E139891139964%_
                  (lambda ()
                    (if (gx#stx-pair? _%e139882139906%_)
                        (let ((_%e139899139936%_
                               (gx#syntax-e _%e139882139906%_)))
                          (let ((_%hd139900139939%_ (##car _%e139899139936%_))
                                (_%tl139901139941%_ (##cdr _%e139899139936%_)))
                            (if (eq? (gx#stx-e _%hd139900139939%_) 'package:)
                                (if (gx#stx-pair? _%tl139901139941%_)
                                    (let ((_%e139902139944%_
                                           (gx#syntax-e _%tl139901139941%_)))
                                      (let ((_%hd139903139947%_
                                             (##car _%e139902139944%_))
                                            (_%tl139904139949%_
                                             (##cdr _%e139902139944%_)))
                                        (let* ((_%pkg139952%_
                                                _%hd139903139947%_)
                                               (_%rest139954%_
                                                _%tl139904139949%_)
                                               (_%pkg139962%_
                                                (if (gx#identifier?
                                                     _%pkg139952%_)
                                                    (symbol->string
                                                     (gx#stx-e _%pkg139952%_))
                                                    (if (or (gx#stx-string?
                                                             _%pkg139952%_)
                                                            (gx#stx-false?
                                                             _%pkg139952%_))
                                                        (gx#stx-e
                                                         _%pkg139952%_)
                                                        (gx#raise-syntax-error
                                                         'import
                                                         '"Bad syntax; Illegal package name"
                                                         _%pkg139952%_)))))
                                          (_%lp139876%_
                                           _%rest139954%_
                                           _%pre139879%_
                                           _%ns139880%_
                                           _%pkg139962%_))))
                                    (_%E139898139932%_))
                                (_%E139898139932%_))))
                        (_%E139898139932%_))))
                 (_%E139884139994%_
                  (lambda ()
                    (if (gx#stx-pair? _%e139882139906%_)
                        (let ((_%e139892139968%_
                               (gx#syntax-e _%e139882139906%_)))
                          (let ((_%hd139893139971%_ (##car _%e139892139968%_))
                                (_%tl139894139973%_ (##cdr _%e139892139968%_)))
                            (if (eq? (gx#stx-e _%hd139893139971%_) 'namespace:)
                                (if (gx#stx-pair? _%tl139894139973%_)
                                    (let ((_%e139895139976%_
                                           (gx#syntax-e _%tl139894139973%_)))
                                      (let ((_%hd139896139979%_
                                             (##car _%e139895139976%_))
                                            (_%tl139897139981%_
                                             (##cdr _%e139895139976%_)))
                                        (let* ((_%ns139984%_
                                                _%hd139896139979%_)
                                               (_%rest139986%_
                                                _%tl139897139981%_)
                                               (_%ns139992%_
                                                (if (gx#identifier?
                                                     _%ns139984%_)
                                                    (symbol->string
                                                     (gx#stx-e _%ns139984%_))
                                                    (if (gx#stx-string?
                                                         _%ns139984%_)
                                                        (gx#stx-e _%ns139984%_)
                                                        (if (gx#stx-false?
                                                             _%ns139984%_)
                                                            '#!void
                                                            (gx#raise-syntax-error
                                                             'import
                                                             '"Bad syntax; illegal namespace"
                                                             _%ns139984%_))))))
                                          (_%lp139876%_
                                           _%rest139986%_
                                           _%pre139879%_
                                           _%ns139992%_
                                           _%pkg139881%_))))
                                    (_%E139891139964%_))
                                (_%E139891139964%_))))
                        (_%E139891139964%_))))
                 (_%E139883140018%_
                  (lambda ()
                    (if (gx#stx-pair? _%e139882139906%_)
                        (let ((_%e139885139998%_
                               (gx#syntax-e _%e139882139906%_)))
                          (let ((_%hd139886140001%_ (##car _%e139885139998%_))
                                (_%tl139887140003%_ (##cdr _%e139885139998%_)))
                            (if (eq? (gx#stx-e _%hd139886140001%_) 'prelude:)
                                (if (gx#stx-pair? _%tl139887140003%_)
                                    (let ((_%e139888140006%_
                                           (gx#syntax-e _%tl139887140003%_)))
                                      (let ((_%hd139889140009%_
                                             (##car _%e139888140006%_))
                                            (_%tl139890140011%_
                                             (##cdr _%e139888140006%_)))
                                        (let* ((_%prelude140014%_
                                                _%hd139889140009%_)
                                               (_%rest140016%_
                                                _%tl139890140011%_))
                                          (_%lp139876%_
                                           _%rest140016%_
                                           _%prelude140014%_
                                           _%ns139880%_
                                           _%pkg139881%_))))
                                    (_%E139884139994%_))
                                (_%E139884139994%_))))
                        (_%E139884139994%_)))))
            (_%E139883140018%_)))))
    (define gx#core-read-module/lang
      (lambda (_%path139695%_)
        (letrec ((_%default-read-module-body139697%_
                  (lambda (_%inp139866%_)
                    (let _%lp139868%_ ((_%body139870%_ '()))
                      (let ((_%next139872%_ (read-syntax__% _%inp139866%_)))
                        (if (eof-object? _%next139872%_)
                            (reverse _%body139870%_)
                            (_%lp139868%_
                             (cons _%next139872%_ _%body139870%_)))))))
                 (_%read-body139698%_
                  (lambda (_%inp139783%_
                           _%pre139784%_
                           _%ns139785%_
                           _%pkg139786%_
                           _%args139787%_)
                    (let ((_g141267_
                           (if _%pkg139786%_
                               (values _%pre139784%_
                                       _%ns139785%_
                                       _%pkg139786%_)
                               (gx#core-read-module-package
                                _%path139695%_
                                _%pre139784%_
                                _%ns139785%_))))
                      (begin
                        (let ((_g141268_
                               (if (##values? _g141267_)
                                   (##values-length _g141267_)
                                   1)))
                          (if (not (##fx= _g141268_ 3))
                              (error "Context expects 3 values" _g141268_)))
                        (let ((_%pre139789%_ (##values-ref _g141267_ 0))
                              (_%ns139790%_ (##values-ref _g141267_ 1))
                              (_%pkg139791%_ (##values-ref _g141267_ 2)))
                          (let* ((_%prelude139793%_
                                  (gx#import-module__0 _%pre139789%_))
                                 (_%read-module-body139848%_
                                  (let ((_%$e139839%_
                                         (__find (lambda (_%e139794139796%_)
                                                   (let* ((_%e139794139798139808%_
                                                           _%e139794139796%_)
                                                          (_%else139800139816%_
                                                           (lambda () '#f))
                                                          (_%K139802139820%_
                                                           (lambda () '#t)))
                                                     (if (##structure-direct-instance-of?
                                                          _%e139794139798139808%_
                                                          'gx#module-export::t)
                                                         (let* ((_%e139803139823%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##unchecked-structure-ref
                          _%e139794139798139808%_
                          '1
                          '#f
                          '#f))
                        (_%e139804139826%_
                         (##unchecked-structure-ref
                          _%e139794139798139808%_
                          '2
                          '#f
                          '#f))
                        (_%e139805139829%_
                         (##unchecked-structure-ref
                          _%e139794139798139808%_
                          '3
                          '#f
                          '#f)))
                   (if (##eq? _%e139805139829%_ '1)
                       (let ((_%e139806139832%_
                              (##unchecked-structure-ref
                               _%e139794139798139808%_
                               '4
                               '#f
                               '#f)))
                         (if ((lambda (_%g139834139836%_)
                                (eq? _%g139834139836%_ 'read-module-body))
                              _%e139806139832%_)
                             (_%K139802139820%_)
                             (_%else139800139816%_)))
                       (_%else139800139816%_)))
                 (_%else139800139816%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (##unchecked-structure-ref
                                                  _%prelude139793%_
                                                  '9
                                                  '#f
                                                  '#f))))
                                    (if _%$e139839%_
                                        ((lambda (_%xport139842%_)
                                           (let ((_%proc139845%_
                                                  (__with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _%xport139842%_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _%proc139845%_)
                                                 _%proc139845%_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _%path139695%_
                                                  _%pre139789%_
                                                  _%proc139845%_))))
                                         _%$e139839%_)
                                        _%default-read-module-body139697%_)))
                                 (_%path-id139850%_
                                  (gx#core-module-path->namespace
                                   _%path139695%_))
                                 (_%pkg-id139852%_
                                  (if _%pkg139791%_
                                      (##string-append
                                       _%pkg139791%_
                                       '"/"
                                       _%path-id139850%_)
                                      _%path-id139850%_))
                                 (_%module-id139854%_
                                  (##string->symbol _%pkg-id139852%_))
                                 (_%module-ns139859%_
                                  (let ((_%$e139856%_ _%ns139790%_))
                                    (if _%$e139856%_
                                        _%$e139856%_
                                        _%pkg-id139852%_)))
                                 (_%body139863%_
                                  (call-with-parameters__1
                                   (lambda ()
                                     (call-with-parameters__1
                                      (lambda ()
                                        (_%read-module-body139848%_
                                         _%inp139783%_))
                                      gx#current-module-reader-args
                                      _%args139787%_))
                                   gx#current-module-reader-path
                                   _%path139695%_)))
                            (values _%prelude139793%_
                                    _%module-id139854%_
                                    _%module-ns139859%_
                                    _%body139863%_)))))))
                 (_%string-e139699%_
                  (lambda (_%obj139777%_ _%what139778%_)
                    (if (string? _%obj139777%_)
                        _%obj139777%_
                        (if (symbol? _%obj139777%_)
                            (##symbol->string _%obj139777%_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _%what139778%_)
                             _%path139695%_
                             _%obj139777%_)))))
                 (_%read-lang-args139700%_
                  (lambda (_%inp139732%_ _%args139733%_)
                    (let* ((_%args139734139742%_ _%args139733%_)
                           (_%else139736139750%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _%path139695%_)))
                           (_%K139738139765%_
                            (lambda (_%args139753%_ _%prelude139754%_)
                              (let* ((_%pkg139756%_
                                      (pgetq__0 'package: _%args139753%_))
                                     (_%pkg139758%_
                                      (if _%pkg139756%_
                                          (_%string-e139699%_
                                           _%pkg139756%_
                                           '"package")
                                          '#f))
                                     (_%ns139760%_
                                      (pgetq__0 'namespace: _%args139753%_))
                                     (_%ns139762%_
                                      (if _%ns139760%_
                                          (_%string-e139699%_
                                           _%ns139760%_
                                           '"namespace")
                                          '#f)))
                                (_%read-body139698%_
                                 _%inp139732%_
                                 _%prelude139754%_
                                 _%ns139762%_
                                 _%pkg139758%_
                                 _%args139753%_)))))
                      (if (pair? _%args139734139742%_)
                          (let ((_%hd139739139768%_
                                 (##car _%args139734139742%_))
                                (_%tl139740139770%_
                                 (##cdr _%args139734139742%_)))
                            (let* ((_%prelude139773%_ _%hd139739139768%_)
                                   (_%args139775%_ _%tl139740139770%_))
                              (_%K139738139765%_
                               _%args139775%_
                               _%prelude139773%_)))
                          (_%else139736139750%_)))))
                 (_%read-lang139701%_
                  (lambda (_%inp139706%_)
                    (let* ((_%head139708%_ (read-line _%inp139706%_))
                           (_%$e139710%_
                            (string-index__0 _%head139708%_ '#\space)))
                      (if _%$e139710%_
                          ((lambda (_%ix139713%_)
                             (let ((_%lang139715%_
                                    (substring
                                     _%head139708%_
                                     '0
                                     _%ix139713%_)))
                               (if (equal? _%lang139715%_ '"#lang")
                                   (let* ((_%rest139717%_
                                           (substring
                                            _%head139708%_
                                            (##fx+ _%ix139713%_ '1)
                                            (string-length _%head139708%_)))
                                          (_%args139728%_
                                           (__with-catch
                                            (lambda (_%g139718139720%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _%path139695%_
                                               _%g139718139720%_))
                                            (lambda ()
                                              (call-with-input-string
                                               _%rest139717%_
                                               (lambda (_%g139723139725%_)
                                                 (read-all
                                                  _%g139723139725%_
                                                  read)))))))
                                     (_%read-lang-args139700%_
                                      _%inp139706%_
                                      _%args139728%_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _%path139695%_))))
                           _%$e139710%_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _%path139695%_)))))
                 (_%read-e139702%_
                  (lambda (_%inp139704%_)
                    (if (eq? (peek-char _%inp139704%_) '#\#)
                        (_%read-lang139701%_ _%inp139704%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _%path139695%_)))))
          (gx#call-with-input-source-file _%path139695%_ _%read-e139702%_))))
    (define gx#core-read-module-package
      (lambda (_%path139643%_ _%pre139644%_ _%ns139645%_)
        (letrec ((_%string-e139647%_
                  (lambda (_%e139690%_)
                    (if (symbol? _%e139690%_)
                        (##symbol->string _%e139690%_)
                        (if (string? _%e139690%_)
                            _%e139690%_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%e139690%_))))))
          (let _%lp139649%_ ((_%dir139651%_ (path-directory _%path139643%_))
                             (_%pkg-path139652%_ '()))
            (let ((_%gerbil.pkg139654%_
                   (path-expand '"gerbil.pkg" _%dir139651%_)))
              (if (##file-exists? _%gerbil.pkg139654%_)
                  (let ((_%plist139656%_
                         (gx#core-library-package-plist__% _%dir139651%_ '#t)))
                    (if (null? _%plist139656%_)
                        (let ((_%pkg139659%_
                               (if (null? _%pkg-path139652%_)
                                   '#f
                                   (string-join _%pkg-path139652%_ '"/"))))
                          (values _%pre139644%_ _%ns139645%_ _%pkg139659%_))
                        (if (list? _%plist139656%_)
                            (let* ((_%root139662%_
                                    (pgetq__0 'package: _%plist139656%_))
                                   (_%pkg139666%_
                                    (let ((_%pkg-path139664%_
                                           (if _%root139662%_
                                               (cons (_%string-e139647%_
                                                      _%root139662%_)
                                                     _%pkg-path139652%_)
                                               _%pkg-path139652%_)))
                                      (if (null? _%pkg-path139664%_)
                                          '#f
                                          (string-join
                                           _%pkg-path139664%_
                                           '"/"))))
                                   (_%ns139673%_
                                    (let ((_%ns139671%_
                                           (let ((_%$e139668%_ _%ns139645%_))
                                             (if _%$e139668%_
                                                 _%$e139668%_
                                                 (pgetq__0
                                                  'namespace:
                                                  _%plist139656%_)))))
                                      (if _%ns139671%_
                                          (_%string-e139647%_ _%ns139671%_)
                                          '#f)))
                                   (_%pre139678%_
                                    (let ((_%$e139675%_ _%pre139644%_))
                                      (if _%$e139675%_
                                          _%$e139675%_
                                          (pgetq__0
                                           'prelude:
                                           _%plist139656%_)))))
                              (values _%pre139678%_
                                      _%ns139673%_
                                      _%pkg139666%_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%plist139656%_))))
                  (let ((_%dir*139682%_
                         (path-strip-trailing-directory-separator
                          _%dir139651%_)))
                    (if (or (__string-empty? _%dir*139682%_)
                            (equal? _%dir139651%_ _%dir*139682%_))
                        (values _%pre139644%_ _%ns139645%_ '#f)
                        (let ((_%xpath139687%_
                               (path-strip-directory _%dir*139682%_))
                              (_%xdir139688%_ (path-directory _%dir*139682%_)))
                          (_%lp139649%_
                           _%xdir139688%_
                           (cons _%xpath139687%_ _%pkg-path139652%_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_%path139641%_)
        (path-strip-extension (path-strip-directory _%path139641%_))))
    (define gx#core-module-path->id
      (lambda (_%path139639%_)
        (##string->symbol (gx#core-module-path->namespace _%path139639%_))))
    (define gx#core-resolve-module-path__%
      (lambda (_%stx-path139618%_ _%rel139619%_)
        (let* ((_%path139621%_ (gx#stx-e _%stx-path139618%_))
               (_%path139623%_
                (if (__string-empty? (path-extension _%path139621%_))
                    (##string-append _%path139621%_ '".ss")
                    _%path139621%_)))
          (gx#core-resolve-path__%
           _%path139623%_
           (let ((_%$e139626%_ (gx#stx-source _%stx-path139618%_)))
             (if _%$e139626%_ _%$e139626%_ _%rel139619%_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_%stx-path139632%_)
        (let ((_%rel139634%_ '#f))
          (gx#core-resolve-module-path__% _%stx-path139632%_ _%rel139634%_))))
    (define gx#core-resolve-module-path
      (lambda _g141269_
        (let ((_g141270_ (##length _g141269_)))
          (cond ((##fx= _g141270_ 1)
                 (apply gx#core-resolve-module-path__0 _g141269_))
                ((##fx= _g141270_ 2)
                 (apply gx#core-resolve-module-path__% _g141269_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g141269_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_%libpath139503%_)
        (let* ((_%spath139505%_ (symbol->string (gx#stx-e _%libpath139503%_)))
               (_%spath139507%_
                (substring
                 _%spath139505%_
                 '1
                 (##string-length _%spath139505%_)))
               (_%ext139509%_ (path-extension _%spath139507%_))
               (_%ssi139511%_
                (if (__string-empty? _%ext139509%_)
                    (##string-append _%spath139507%_ '".ssi")
                    (##string-append
                     (path-strip-extension _%spath139507%_)
                     '".ssi")))
               (_%srcs139515%_
                (if (__string-empty? _%ext139509%_)
                    (##map (lambda (_%ext139513%_)
                             (string-append _%spath139507%_ _%ext139513%_))
                           '(".ss" ".sld" ".scm"))
                    (cons _%spath139507%_ '()))))
          (let _%lp139518%_ ((_%rest139520%_ (load-path)))
            (let* ((_%rest139521139530%_ _%rest139520%_)
                   (_%E139524139534%_
                    (lambda ()
                      (error '"No clause matching"
                             _%rest139521139530%_
                             '([dir . rest])
                             '([]))
                      '#!void)))
              (let ((_%K139526139605%_
                     (lambda (_%rest139545%_ _%dir139546%_)
                       (letrec ((_%resolve139548%_
                                 (lambda (_%ssi139561%_ _%srcs139562%_)
                                   (let ((_%compiled-path139564%_
                                          (path-expand
                                           _%ssi139561%_
                                           _%dir139546%_)))
                                     (if (##file-exists?
                                          _%compiled-path139564%_)
                                         (path-normalize
                                          _%compiled-path139564%_)
                                         (let _%lpr139566%_ ((_%rest-src139568%_
                                                              _%srcs139562%_))
                                           (let* ((_%rest-src139569139577%_
                                                   _%rest-src139568%_)
                                                  (_%else139571139585%_
                                                   (lambda ()
                                                     (_%lp139518%_
                                                      _%rest139545%_)))
                                                  (_%K139573139593%_
                                                   (lambda (_%rest-src139588%_
                                                            _%src139589%_)
                                                     (let ((_%src-path139591%_
                                                            (path-expand
                                                             _%src139589%_
                                                             _%dir139546%_)))
                                                       (if (##file-exists?
                                                            _%src-path139591%_)
                                                           (path-normalize
                                                            _%src-path139591%_)
                                                           (_%lpr139566%_
                                                            _%rest-src139588%_))))))
                                             (if (pair? _%rest-src139569139577%_)
                                                 (let ((_%hd139574139596%_
                                                        (##car _%rest-src139569139577%_))
                                                       (_%tl139575139598%_
                                                        (##cdr _%rest-src139569139577%_)))
                                                   (let* ((_%src139601%_
                                                           _%hd139574139596%_)
                                                          (_%rest-src139603%_
                                                           _%tl139575139598%_))
                                                     (_%K139573139593%_
                                                      _%rest-src139603%_
                                                      _%src139601%_)))
                                                 (_%else139571139585%_)))))))))
                         (let ((_%$e139550%_
                                (gx#core-library-package-path-prefix
                                 _%dir139546%_)))
                           (if _%$e139550%_
                               ((lambda (_%prefix139553%_)
                                  (if (string-prefix?
                                       _%prefix139553%_
                                       _%spath139507%_)
                                      (let ((_%ssi139557%_
                                             (substring
                                              _%ssi139511%_
                                              (string-length _%prefix139553%_)
                                              (##string-length _%ssi139511%_)))
                                            (_%srcs139558%_
                                             (##map (lambda (_%src139555%_)
                                                      (substring
                                                       _%src139555%_
                                                       (string-length
                                                        _%prefix139553%_)
                                                       (string-length
                                                        _%src139555%_)))
                                                    _%srcs139515%_)))
                                        (_%resolve139548%_
                                         _%ssi139557%_
                                         _%srcs139558%_))
                                      (_%lp139518%_ _%rest139545%_)))
                                _%$e139550%_)
                               (_%resolve139548%_
                                _%ssi139511%_
                                _%srcs139515%_))))))
                    (_%K139525139539%_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"cannot find library module"
                        _%libpath139503%_))))
                (let ((_%try-match139523139542%_
                       (lambda ()
                         (if (null? _%rest139521139530%_)
                             (_%K139525139539%_)
                             (_%E139524139534%_)))))
                  (if (pair? _%rest139521139530%_)
                      (let ((_%tl139528139610%_ (##cdr _%rest139521139530%_))
                            (_%hd139527139608%_ (##car _%rest139521139530%_)))
                        (let ((_%dir139613%_ _%hd139527139608%_)
                              (_%rest139615%_ _%tl139528139610%_))
                          (_%K139526139605%_ _%rest139615%_ _%dir139613%_)))
                      (_%try-match139523139542%_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_%modpath139471%_)
        (letrec ((_%resolve139473%_
                  (lambda (_%path139494%_ _%base139495%_)
                    (let ((_%$e139497%_
                           (string-rindex__0 _%base139495%_ '#\/)))
                      (if _%$e139497%_
                          ((lambda (_%idx139500%_)
                             (gx#core-resolve-library-module-path
                              (##string->symbol
                               (string-append
                                '":"
                                (substring _%base139495%_ '0 _%idx139500%_)
                                '"/"
                                _%path139494%_))))
                           _%$e139497%_)
                          (gx#core-resolve-library-module-path
                           (##string->symbol
                            (string-append '":" _%path139494%_))))))))
          (let ((_%spath139475%_ (symbol->string (gx#stx-e _%modpath139471%_)))
                (_%mod139476%_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _%mod139476%_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"cannot resolve relative module path; not in module context"
                 _%modpath139471%_))
            (let ((_%mpath139478%_
                   (symbol->string
                    (##structure-ref
                     _%mod139476%_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _%lp139480%_ ((_%spath139482%_ _%spath139475%_)
                                 (_%mpath139483%_ _%mpath139478%_))
                (if (string-prefix? '"../" _%spath139482%_)
                    (let ((_%$e139486%_
                           (string-rindex__0 _%mpath139483%_ '#\/)))
                      (if _%$e139486%_
                          ((lambda (_%idx139489%_)
                             (_%lp139480%_
                              (substring
                               _%spath139482%_
                               '3
                               (string-length _%spath139482%_))
                              (substring _%mpath139483%_ '0 _%idx139489%_)))
                           _%$e139486%_)
                          (gx#raise-syntax-error
                           '#f
                           '"cannot resolve relative module path; illegal traversal"
                           _%modpath139471%_)))
                    (if (string-prefix? '"./" _%spath139482%_)
                        (_%lp139480%_
                         (substring
                          _%spath139482%_
                          '2
                          (string-length _%spath139482%_))
                         _%mpath139483%_)
                        (_%resolve139473%_
                         _%spath139482%_
                         _%mpath139483%_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_%dir139463%_)
        (let ((_%$e139465%_
               (pgetq__0
                'package:
                (gx#core-library-package-plist__0 _%dir139463%_))))
          (if _%$e139465%_
              ((lambda (_%pkg139468%_)
                 (##string-append (symbol->string _%pkg139468%_) '"/"))
               _%$e139465%_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_%dir139433%_ _%exists?139434%_)
        (let ((_%$e139436%_ (__hash-get gx#__module-pkg-cache _%dir139433%_)))
          (if _%$e139436%_
              _%$e139436%_
              (let* ((_%gerbil.pkg139440%_
                      (path-expand '"gerbil.pkg" _%dir139433%_))
                     (_%plist139450%_
                      (if (or _%exists?139434%_
                              (##file-exists? _%gerbil.pkg139440%_))
                          (let ((_%e139445%_
                                 (gx#call-with-input-source-file
                                  _%gerbil.pkg139440%_
                                  read)))
                            (if (eof-object? _%e139445%_)
                                '()
                                (if (list? _%e139445%_)
                                    _%e139445%_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _%gerbil.pkg139440%_
                                     _%e139445%_))))
                          '())))
                (__hash-put!
                 gx#__module-pkg-cache
                 _%dir139433%_
                 _%plist139450%_)
                _%plist139450%_)))))
    (define gx#core-library-package-plist__0
      (lambda (_%dir139456%_)
        (let ((_%exists?139458%_ '#f))
          (gx#core-library-package-plist__% _%dir139456%_ _%exists?139458%_))))
    (define gx#core-library-package-plist
      (lambda _g141271_
        (let ((_g141272_ (##length _g141271_)))
          (cond ((##fx= _g141272_ 1)
                 (apply gx#core-library-package-plist__0 _g141271_))
                ((##fx= _g141272_ 2)
                 (apply gx#core-library-package-plist__% _g141271_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g141271_))))))
    (define gx#core-library-module-path?
      (lambda (_%stx139430%_)
        (gx#core-special-module-path? _%stx139430%_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_%stx139428%_)
        (gx#core-special-module-path? _%stx139428%_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_%stx139423%_ _%char139424%_)
        (if (gx#identifier? _%stx139423%_)
            (if (interned-symbol? (gx#stx-e _%stx139423%_))
                (let ((_%str139426%_
                       (symbol->string (gx#stx-e _%stx139423%_))))
                  (if (##fx> (##string-length _%str139426%_) '1)
                      (eq? (string-ref _%str139426%_ '0) _%char139424%_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_%stx139417%_)
        (gx#core-bound-identifier?__%
         _%stx139417%_
         (lambda (_%g139418139420%_)
           (gx#expander-binding?__% _%g139418139420%_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_%stx139411%_)
        (gx#core-bound-identifier?__%
         _%stx139411%_
         (lambda (_%g139412139414%_)
           (gx#expander-binding?__% _%g139412139414%_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_%stx139398%_)
        (letrec ((_%module-prelude?139400%_
                  (lambda (_%e139406%_)
                    (let ((_%$e139408%_
                           (##structure-instance-of?
                            _%e139406%_
                            'gx#module-context::t)))
                      (if _%$e139408%_
                          _%$e139408%_
                          (##structure-instance-of?
                           _%e139406%_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _%stx139398%_
           (lambda (_%g139401139403%_)
             (gx#expander-binding?__%
              _%g139401139403%_
              _%module-prelude?139400%_))))))
    (define gx#core-bind-import!__%
      (lambda (_%in139329%_ _%ctx139330%_ _%force-weak?139331%_)
        (let* ((_%in139332139341%_ _%in139329%_)
               (_%E139334139344%_
                (lambda ()
                  (error '"No clause matching"
                         _%in139332139341%_
                         '((module-import source key phi weak?)))
                  '#!void))
               (_%K139335139357%_
                (lambda (_%weak?139347%_
                         _%phi139348%_
                         _%key139349%_
                         _%source139350%_)
                  (gx#core-bind!__%
                   _%key139349%_
                   (let ((_%e139352%_
                          (gx#core-resolve-module-export _%source139350%_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref _%e139352%_ '1 '#f '#f)
                      _%key139349%_
                      _%phi139348%_
                      _%e139352%_
                      (##unchecked-structure-ref _%source139350%_ '1 '#f '#f)
                      (let ((_%$e139354%_ _%force-weak?139331%_))
                        (if _%$e139354%_ _%$e139354%_ _%weak?139347%_))))
                   gx#core-context-rebind?
                   _%phi139348%_
                   _%ctx139330%_))))
          (if (##structure-direct-instance-of?
               _%in139332139341%_
               'gx#module-import::t)
              (let* ((_%e139336139360%_
                      (##unchecked-structure-ref
                       _%in139332139341%_
                       '1
                       '#f
                       '#f))
                     (_%source139363%_ _%e139336139360%_)
                     (_%e139337139365%_
                      (##unchecked-structure-ref
                       _%in139332139341%_
                       '2
                       '#f
                       '#f))
                     (_%key139368%_ _%e139337139365%_)
                     (_%e139338139370%_
                      (##unchecked-structure-ref
                       _%in139332139341%_
                       '3
                       '#f
                       '#f))
                     (_%phi139373%_ _%e139338139370%_)
                     (_%e139339139375%_
                      (##unchecked-structure-ref
                       _%in139332139341%_
                       '4
                       '#f
                       '#f))
                     (_%weak?139378%_ _%e139339139375%_))
                (_%K139335139357%_
                 _%weak?139378%_
                 _%phi139373%_
                 _%key139368%_
                 _%source139363%_))
              (_%E139334139344%_)))))
    (define gx#core-bind-import!__0
      (lambda (_%in139383%_)
        (let* ((_%ctx139385%_ (gx#current-expander-context))
               (_%force-weak?139387%_ '#f))
          (gx#core-bind-import!__%
           _%in139383%_
           _%ctx139385%_
           _%force-weak?139387%_))))
    (define gx#core-bind-import!__1
      (lambda (_%in139389%_ _%ctx139390%_)
        (let ((_%force-weak?139392%_ '#f))
          (gx#core-bind-import!__%
           _%in139389%_
           _%ctx139390%_
           _%force-weak?139392%_))))
    (define gx#core-bind-import!
      (lambda _g141273_
        (let ((_g141274_ (##length _g141273_)))
          (cond ((##fx= _g141274_ 1) (apply gx#core-bind-import!__0 _g141273_))
                ((##fx= _g141274_ 2) (apply gx#core-bind-import!__1 _g141273_))
                ((##fx= _g141274_ 3) (apply gx#core-bind-import!__% _g141273_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g141273_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_%in139315%_ _%ctx139316%_)
        (gx#core-bind-import!__% _%in139315%_ _%ctx139316%_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_%in139321%_)
        (let ((_%ctx139323%_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _%in139321%_ _%ctx139323%_))))
    (define gx#core-bind-weak-import!
      (lambda _g141275_
        (let ((_g141276_ (##length _g141275_)))
          (cond ((##fx= _g141276_ 1)
                 (apply gx#core-bind-weak-import!__0 _g141275_))
                ((##fx= _g141276_ 2)
                 (apply gx#core-bind-weak-import!__% _g141275_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g141275_))))))
    (define gx#core-resolve-module-export
      (lambda (_%out139208%_)
        (letrec ((_%subst139210%_
                  (lambda (_%key139255%_)
                    (let* ((_%key139256139264%_ _%key139255%_)
                           (_%else139258139272%_ (lambda () _%key139255%_))
                           (_%K139260139302%_
                            (lambda (_%mark139275%_ _%id139276%_)
                              (let* ((_%mark139277139283%_ _%mark139275%_)
                                     (_%E139279139286%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark139277139283%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K139280139294%_
                                      (lambda (_%subst139289%_)
                                        (let ((_%$e139291%_
                                               (if _%subst139289%_
                                                   (hash-get
                                                    _%subst139289%_
                                                    _%id139276%_)
                                                   '#f)))
                                          (if _%$e139291%_
                                              _%$e139291%_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _%key139255%_))))))
                                (if (##structure-instance-of?
                                     _%mark139277139283%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e139281139297%_
                                            (##unchecked-structure-ref
                                             _%mark139277139283%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst139300%_ _%e139281139297%_))
                                      (_%K139280139294%_ _%subst139300%_))
                                    (_%E139279139286%_))))))
                      (if (pair? _%key139256139264%_)
                          (let ((_%hd139261139305%_
                                 (##car _%key139256139264%_))
                                (_%tl139262139307%_
                                 (##cdr _%key139256139264%_)))
                            (let* ((_%id139310%_ _%hd139261139305%_)
                                   (_%mark139312%_ _%tl139262139307%_))
                              (_%K139260139302%_ _%mark139312%_ _%id139310%_)))
                          (_%else139258139272%_))))))
          (let* ((_%out139211139221%_ _%out139208%_)
                 (_%E139213139224%_
                  (lambda ()
                    (error '"No clause matching"
                           _%out139211139221%_
                           '((module-export ctx key phi _ _)))
                    '#!void))
                 (_%K139214139231%_
                  (lambda (_%phi139227%_ _%key139228%_ _%ctx139229%_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _%ctx139229%_ _%phi139227%_)
                     (_%subst139210%_ _%key139228%_)))))
            (if (##structure-direct-instance-of?
                 _%out139211139221%_
                 'gx#module-export::t)
                (let* ((_%e139215139234%_
                        (##unchecked-structure-ref
                         _%out139211139221%_
                         '1
                         '#f
                         '#f))
                       (_%ctx139237%_ _%e139215139234%_)
                       (_%e139216139239%_
                        (##unchecked-structure-ref
                         _%out139211139221%_
                         '2
                         '#f
                         '#f))
                       (_%key139242%_ _%e139216139239%_)
                       (_%e139217139244%_
                        (##unchecked-structure-ref
                         _%out139211139221%_
                         '3
                         '#f
                         '#f))
                       (_%phi139247%_ _%e139217139244%_)
                       (_%e139218139249%_
                        (##unchecked-structure-ref
                         _%out139211139221%_
                         '4
                         '#f
                         '#f))
                       (_%e139219139252%_
                        (##unchecked-structure-ref
                         _%out139211139221%_
                         '5
                         '#f
                         '#f)))
                  (_%K139214139231%_
                   _%phi139247%_
                   _%key139242%_
                   _%ctx139237%_))
                (_%E139213139224%_))))))
    (define gx#core-module-export->import__%
      (lambda (_%out139134%_ _%rename139135%_ _%dphi139136%_)
        (let* ((_%out139137139147%_ _%out139134%_)
               (_%E139139139150%_
                (lambda ()
                  (error '"No clause matching"
                         _%out139137139147%_
                         '((module-export ctx key phi name weak?)))
                  '#!void))
               (_%K139140139162%_
                (lambda (_%weak?139153%_
                         _%name139154%_
                         _%phi139155%_
                         _%key139156%_
                         _%ctx139157%_)
                  (##structure
                   gx#module-import::t
                   _%out139134%_
                   (let ((_%$e139159%_ _%rename139135%_))
                     (if _%$e139159%_ _%$e139159%_ _%name139154%_))
                   (fx+ _%phi139155%_ _%dphi139136%_)
                   _%weak?139153%_))))
          (if (##structure-direct-instance-of?
               _%out139137139147%_
               'gx#module-export::t)
              (let* ((_%e139141139165%_
                      (##unchecked-structure-ref
                       _%out139137139147%_
                       '1
                       '#f
                       '#f))
                     (_%ctx139168%_ _%e139141139165%_)
                     (_%e139142139170%_
                      (##unchecked-structure-ref
                       _%out139137139147%_
                       '2
                       '#f
                       '#f))
                     (_%key139173%_ _%e139142139170%_)
                     (_%e139143139175%_
                      (##unchecked-structure-ref
                       _%out139137139147%_
                       '3
                       '#f
                       '#f))
                     (_%phi139178%_ _%e139143139175%_)
                     (_%e139144139180%_
                      (##unchecked-structure-ref
                       _%out139137139147%_
                       '4
                       '#f
                       '#f))
                     (_%name139183%_ _%e139144139180%_)
                     (_%e139145139185%_
                      (##unchecked-structure-ref
                       _%out139137139147%_
                       '5
                       '#f
                       '#f))
                     (_%weak?139188%_ _%e139145139185%_))
                (_%K139140139162%_
                 _%weak?139188%_
                 _%name139183%_
                 _%phi139178%_
                 _%key139173%_
                 _%ctx139168%_))
              (_%E139139139150%_)))))
    (define gx#core-module-export->import__0
      (lambda (_%out139193%_)
        (let* ((_%rename139195%_ '#f) (_%dphi139197%_ '0))
          (gx#core-module-export->import__%
           _%out139193%_
           _%rename139195%_
           _%dphi139197%_))))
    (define gx#core-module-export->import__1
      (lambda (_%out139199%_ _%rename139200%_)
        (let ((_%dphi139202%_ '0))
          (gx#core-module-export->import__%
           _%out139199%_
           _%rename139200%_
           _%dphi139202%_))))
    (define gx#core-module-export->import
      (lambda _g141277_
        (let ((_g141278_ (##length _g141277_)))
          (cond ((##fx= _g141278_ 1)
                 (apply gx#core-module-export->import__0 _g141277_))
                ((##fx= _g141278_ 2)
                 (apply gx#core-module-export->import__1 _g141277_))
                ((##fx= _g141278_ 3)
                 (apply gx#core-module-export->import__% _g141277_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g141277_))))))
    (define gx#core-expand-module%
      (lambda (_%stx139033%_)
        (letrec ((_%make-context139035%_
                  (lambda (_%id139112%_)
                    (let* ((_%super139114%_ (gx#current-expander-context))
                           (_%bind-id139116%_ (gx#stx-e _%id139112%_))
                           (_%mod-id139118%_
                            (if (##structure-instance-of?
                                 _%super139114%_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##unchecked-structure-ref
                                  _%super139114%_
                                  '1
                                  '#f
                                  '#f)
                                 '"~"
                                 _%bind-id139116%_)
                                _%bind-id139116%_))
                           (_%ns139120%_ (symbol->string _%mod-id139118%_))
                           (_%path139130%_
                            (if (##structure-instance-of?
                                 _%super139114%_
                                 'gx#module-context::t)
                                (let ((_%path139122%_
                                       (##unchecked-structure-ref
                                        _%super139114%_
                                        '7
                                        '#f
                                        '#f)))
                                  (if (or (pair? _%path139122%_)
                                          (null? _%path139122%_))
                                      (cons _%bind-id139116%_ _%path139122%_)
                                      (if (not _%path139122%_)
                                          _%bind-id139116%_
                                          (cons _%bind-id139116%_
                                                (cons _%path139122%_ '())))))
                                _%bind-id139116%_))
                           (__obj141254
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
                       __obj141254
                       _%mod-id139118%_
                       _%super139114%_
                       _%ns139120%_
                       _%path139130%_)
                      __obj141254)))
                 (_%valid-module-id?139036%_
                  (lambda (_%id139087%_)
                    (let* ((_%str139089%_ (symbol->string _%id139087%_))
                           (_%len139091%_ (##string-length _%str139089%_)))
                      (if (##fx>= _%len139091%_ '1)
                          (let _%loop139094%_ ((_%index139096%_
                                                (##fx- (##string-length
                                                        _%str139089%_)
                                                       '1)))
                            (if (##fx>= _%index139096%_ '0)
                                (let ((_%c139098%_
                                       (string-ref
                                        _%str139089%_
                                        _%index139096%_)))
                                  (if (or (and (##char>=? _%c139098%_ '#\a)
                                               (##char<=? _%c139098%_ '#\z))
                                          (and (##char>=? _%c139098%_ '#\A)
                                               (##char<=? _%c139098%_ '#\Z))
                                          (and (##char>=? _%c139098%_ '#\0)
                                               (##char<=? _%c139098%_ '#\9))
                                          (##char=? _%c139098%_ '#\_)
                                          (##char=? _%c139098%_ '#\-))
                                      (_%loop139094%_
                                       (##fx- _%index139096%_ '1))
                                      '#f))
                                '#t))
                          '#f)))))
          (let* ((_%e139037139047%_ _%stx139033%_)
                 (_%E139039139051%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e139037139047%_)))
                 (_%E139038139083%_
                  (lambda ()
                    (if (gx#stx-pair? _%e139037139047%_)
                        (let ((_%e139040139055%_
                               (gx#syntax-e _%e139037139047%_)))
                          (let ((_%hd139041139058%_ (##car _%e139040139055%_))
                                (_%tl139042139060%_ (##cdr _%e139040139055%_)))
                            (if (gx#stx-pair? _%tl139042139060%_)
                                (let ((_%e139043139063%_
                                       (gx#syntax-e _%tl139042139060%_)))
                                  (let ((_%hd139044139066%_
                                         (##car _%e139043139063%_))
                                        (_%tl139045139068%_
                                         (##cdr _%e139043139063%_)))
                                    (let* ((_%id139071%_ _%hd139044139066%_)
                                           (_%body139073%_ _%tl139045139068%_))
                                      (if (and (gx#identifier? _%id139071%_)
                                               (gx#stx-list? _%body139073%_))
                                          (if (_%valid-module-id?139036%_
                                               (gx#stx-e
                                                (gx#datum->syntax__0 '#f 'id)))
                                              (let* ((_%ctx139075%_
                                                      (_%make-context139035%_
                                                       _%id139071%_))
                                                     (_%body139077%_
                                                      (gx#core-expand-module-begin
                                                       _%body139073%_
                                                       _%ctx139075%_))
                                                     (_%body139079%_
                                                      (gx#core-quote-syntax__1
                                                       (gx#core-cons
                                                        '%#begin
                                                        _%body139077%_)
                                                       (gx#stx-source
                                                        _%stx139033%_))))
                                                (##unchecked-structure-set!
                                                 _%ctx139075%_
                                                 (__make-atomic-promise
                                                  (lambda ()
                                                    (gx#eval-syntax*
                                                     _%body139079%_)))
                                                 '10
                                                 '#f
                                                 '#f)
                                                (##unchecked-structure-set!
                                                 _%ctx139075%_
                                                 _%body139079%_
                                                 '11
                                                 '#f
                                                 '#f)
                                                (gx#core-bind-syntax!__0
                                                 _%id139071%_
                                                 _%ctx139075%_)
                                                (gx#core-quote-syntax__1
                                                 (gx#core-list
                                                  '%#module
                                                  (gx#core-quote-syntax__0
                                                   _%id139071%_)
                                                  _%body139079%_)
                                                 (gx#stx-source
                                                  _%stx139033%_)))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"invalid module id; allowed characters are A-Z,a-z,0-9,_,-"
                                               _%stx139033%_
                                               (gx#datum->syntax__0 '#f 'id)))
                                          (_%E139039139051%_)))))
                                (_%E139039139051%_))))
                        (_%E139039139051%_)))))
            (_%E139038139083%_)))))
    (define gx#core-expand-module-begin
      (lambda (_%body138998%_ _%ctx138999%_)
        (call-with-parameters__1
         (lambda ()
           (call-with-parameters__1
            (lambda ()
              (gx#core-bind-feature!__1 'gerbil-module '#t)
              (let* ((_%stx139003%_
                      (gx#core-expand-head
                       (cons '%%begin-module _%body138998%_)))
                     (_%e139004139011%_ _%stx139003%_)
                     (_%E139006139015%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module body expansion"
                         _%stx139003%_)))
                     (_%E139005139029%_
                      (lambda ()
                        (if (gx#stx-pair? _%e139004139011%_)
                            (let ((_%e139007139019%_
                                   (gx#syntax-e _%e139004139011%_)))
                              (let ((_%hd139008139022%_
                                     (##car _%e139007139019%_))
                                    (_%tl139009139024%_
                                     (##cdr _%e139007139019%_)))
                                (if (and (gx#identifier? _%hd139008139022%_)
                                         (gx#core-identifier=?
                                          _%hd139008139022%_
                                          '%#begin-module))
                                    (let ((_%body139027%_ _%tl139009139024%_))
                                      (if (gx#sealed-syntax? _%stx139003%_)
                                          _%body139027%_
                                          (gx#core-expand-module-body
                                           _%body139027%_)))
                                    (_%E139006139015%_))))
                            (_%E139006139015%_)))))
                (_%E139005139029%_)))
            gx#current-expander-phi
            '0))
         gx#current-expander-context
         _%ctx138999%_)))
    (define gx#core-expand-module-body
      (lambda (_%body138794%_)
        (letrec ((_%expand-special138796%_
                  (lambda (_%hd138925%_ _%K138926%_ _%rest138927%_ _%r138928%_)
                    (let* ((_%e138929138946%_ _%hd138925%_)
                           (_%E138941138950%_
                            (lambda ()
                              (_%K138926%_
                               _%rest138927%_
                               (cons (gx#core-expand-top _%hd138925%_)
                                     _%r138928%_))))
                           (_%E138931138962%_
                            (lambda ()
                              (if (gx#stx-pair? _%e138929138946%_)
                                  (let ((_%e138942138954%_
                                         (gx#syntax-e _%e138929138946%_)))
                                    (let ((_%hd138943138957%_
                                           (##car _%e138942138954%_))
                                          (_%tl138944138959%_
                                           (##cdr _%e138942138954%_)))
                                      (if (and (gx#identifier?
                                                _%hd138943138957%_)
                                               (gx#core-identifier=?
                                                _%hd138943138957%_
                                                '%#export))
                                          (_%K138926%_
                                           _%rest138927%_
                                           (cons _%hd138925%_ _%r138928%_))
                                          (_%E138941138950%_))))
                                  (_%E138941138950%_))))
                           (_%E138930138994%_
                            (lambda ()
                              (if (gx#stx-pair? _%e138929138946%_)
                                  (let ((_%e138932138966%_
                                         (gx#syntax-e _%e138929138946%_)))
                                    (let ((_%hd138933138969%_
                                           (##car _%e138932138966%_))
                                          (_%tl138934138971%_
                                           (##cdr _%e138932138966%_)))
                                      (if (and (gx#identifier?
                                                _%hd138933138969%_)
                                               (gx#core-identifier=?
                                                _%hd138933138969%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl138934138971%_)
                                              (let ((_%e138935138974%_
                                                     (gx#syntax-e
                                                      _%tl138934138971%_)))
                                                (let ((_%hd138936138977%_
                                                       (##car _%e138935138974%_))
                                                      (_%tl138937138979%_
                                                       (##cdr _%e138935138974%_)))
                                                  (let ((_%hd-bind138982%_
                                                         _%hd138936138977%_))
                                                    (if (gx#stx-pair?
                                                         _%tl138937138979%_)
                                                        (let ((_%e138938138984%_
                                                               (gx#syntax-e
                                                                _%tl138937138979%_)))
                                                          (let ((_%hd138939138987%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e138938138984%_))
                        (_%tl138940138989%_ (##cdr _%e138938138984%_)))
                    (let ((_%expr138992%_ _%hd138939138987%_))
                      (if (gx#stx-null? _%tl138940138989%_)
                          (if (gx#core-bind-values? _%hd-bind138982%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind138982%_)
                                (_%K138926%_
                                 _%rest138927%_
                                 (cons _%hd138925%_ _%r138928%_)))
                              (_%E138931138962%_))
                          (_%E138931138962%_)))))
                (_%E138931138962%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E138931138962%_))
                                          (_%E138931138962%_))))
                                  (_%E138931138962%_)))))
                      (_%E138930138994%_))))
                 (_%expand-body138797%_
                  (lambda (_%rbody138799%_)
                    (let _%lp138801%_ ((_%rest138803%_ _%rbody138799%_)
                                       (_%body138804%_ '()))
                      (let* ((_%rest138805138813%_ _%rest138803%_)
                             (_%else138807138821%_ (lambda () _%body138804%_))
                             (_%K138809138913%_
                              (lambda (_%rest138824%_ _%hd138825%_)
                                (let* ((_%e138826138847%_ _%hd138825%_)
                                       (_%E138842138851%_
                                        (lambda ()
                                          (_%lp138801%_
                                           _%rest138824%_
                                           (cons (gx#core-expand-expression
                                                  _%hd138825%_)
                                                 _%body138804%_))))
                                       (_%E138838138865%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e138826138847%_)
                                              (let ((_%e138843138855%_
                                                     (gx#syntax-e
                                                      _%e138826138847%_)))
                                                (let ((_%hd138844138858%_
                                                       (##car _%e138843138855%_))
                                                      (_%tl138845138860%_
                                                       (##cdr _%e138843138855%_)))
                                                  (let ((_%form138863%_
                                                         _%hd138844138858%_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _%form138863%_
                                                         gx#special-form-binding?)
                                                        (_%lp138801%_
                                                         _%rest138824%_
                                                         (cons _%hd138825%_
                                                               _%body138804%_))
                                                        (_%E138842138851%_)))))
                                              (_%E138842138851%_))))
                                       (_%E138828138877%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e138826138847%_)
                                              (let ((_%e138839138869%_
                                                     (gx#syntax-e
                                                      _%e138826138847%_)))
                                                (let ((_%hd138840138872%_
                                                       (##car _%e138839138869%_))
                                                      (_%tl138841138874%_
                                                       (##cdr _%e138839138869%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd138840138872%_)
                                                           (gx#core-identifier=?
                                                            _%hd138840138872%_
                                                            '%#export))
                                                      (_%lp138801%_
                                                       _%rest138824%_
                                                       (cons (gx#core-expand-export%__0
                                                              _%hd138825%_)
                                                             _%body138804%_))
                                                      (_%E138838138865%_))))
                                              (_%E138838138865%_))))
                                       (_%E138827138909%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e138826138847%_)
                                              (let ((_%e138829138881%_
                                                     (gx#syntax-e
                                                      _%e138826138847%_)))
                                                (let ((_%hd138830138884%_
                                                       (##car _%e138829138881%_))
                                                      (_%tl138831138886%_
                                                       (##cdr _%e138829138881%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd138830138884%_)
                                                           (gx#core-identifier=?
                                                            _%hd138830138884%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl138831138886%_)
                                                          (let ((_%e138832138889%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl138831138886%_)))
                    (let ((_%hd138833138892%_ (##car _%e138832138889%_))
                          (_%tl138834138894%_ (##cdr _%e138832138889%_)))
                      (let ((_%hd-bind138897%_ _%hd138833138892%_))
                        (if (gx#stx-pair? _%tl138834138894%_)
                            (let ((_%e138835138899%_
                                   (gx#syntax-e _%tl138834138894%_)))
                              (let ((_%hd138836138902%_
                                     (##car _%e138835138899%_))
                                    (_%tl138837138904%_
                                     (##cdr _%e138835138899%_)))
                                (let ((_%expr138907%_ _%hd138836138902%_))
                                  (if (gx#stx-null? _%tl138837138904%_)
                                      (_%lp138801%_
                                       _%rest138824%_
                                       (cons (gx#core-quote-syntax__1
                                              (gx#core-list
                                               '%#define-values
                                               (gx#core-quote-bind-values
                                                _%hd-bind138897%_)
                                               (gx#core-expand-expression
                                                _%expr138907%_))
                                              (gx#stx-source _%hd138825%_))
                                             _%body138804%_))
                                      (_%E138828138877%_)))))
                            (_%E138828138877%_)))))
                  (_%E138828138877%_))
              (_%E138828138877%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E138828138877%_)))))
                                  (_%E138827138909%_)))))
                        (if (pair? _%rest138805138813%_)
                            (let ((_%hd138810138916%_
                                   (##car _%rest138805138813%_))
                                  (_%tl138811138918%_
                                   (##cdr _%rest138805138813%_)))
                              (let* ((_%hd138921%_ _%hd138810138916%_)
                                     (_%rest138923%_ _%tl138811138918%_))
                                (_%K138809138913%_
                                 _%rest138923%_
                                 _%hd138921%_)))
                            (_%else138807138821%_)))))))
          (_%expand-body138797%_
           (gx#core-expand-block__%
            (cons '%#begin-module _%body138794%_)
            _%expand-special138796%_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_%stx138635%_
               _%expanded?138636%_
               _%method138637%_
               _%current-phi138638%_
               _%expand1138639%_)
        (letrec ((_%K138641%_
                  (lambda (_%rest138761%_ _%r138762%_)
                    (let* ((_%e138763138770%_ _%rest138761%_)
                           (_%E138765138774%_ (lambda () _%r138762%_))
                           (_%E138764138790%_
                            (lambda ()
                              (if (gx#stx-pair? _%e138763138770%_)
                                  (let ((_%e138766138778%_
                                         (gx#syntax-e _%e138763138770%_)))
                                    (let ((_%hd138767138781%_
                                           (##car _%e138766138778%_))
                                          (_%tl138768138783%_
                                           (##cdr _%e138766138778%_)))
                                      (let* ((_%hd138786%_ _%hd138767138781%_)
                                             (_%rest138788%_
                                              _%tl138768138783%_))
                                        (_%step138642%_
                                         _%hd138786%_
                                         _%rest138788%_
                                         _%r138762%_))))
                                  (_%E138765138774%_)))))
                      (_%E138764138790%_))))
                 (_%step138642%_
                  (lambda (_%hd138675%_ _%rest138676%_ _%r138677%_)
                    (let* ((_%e138678138696%_ _%hd138675%_)
                           (_%E138691138700%_
                            (lambda ()
                              (if (_%expanded?138636%_ (gx#stx-e _%hd138675%_))
                                  (_%K138641%_
                                   _%rest138676%_
                                   (cons (gx#stx-e _%hd138675%_) _%r138677%_))
                                  (_%expand1138639%_
                                   _%hd138675%_
                                   _%K138641%_
                                   _%rest138676%_
                                   _%r138677%_))))
                           (_%E138687138716%_
                            (lambda ()
                              (if (gx#stx-pair? _%e138678138696%_)
                                  (let ((_%e138692138704%_
                                         (gx#syntax-e _%e138678138696%_)))
                                    (let ((_%hd138693138707%_
                                           (##car _%e138692138704%_))
                                          (_%tl138694138709%_
                                           (##cdr _%e138692138704%_)))
                                      (let* ((_%macro138712%_
                                              _%hd138693138707%_)
                                             (_%body138714%_
                                              _%tl138694138709%_))
                                        (if (gx#core-bound-identifier?__%
                                             _%macro138712%_
                                             gx#syntax-binding?)
                                            (_%K138641%_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _%macro138712%_)
                                                    _%hd138675%_
                                                    _%method138637%_)
                                                   _%rest138676%_)
                                             _%r138677%_)
                                            (_%E138691138700%_)))))
                                  (_%E138691138700%_))))
                           (_%E138680138730%_
                            (lambda ()
                              (if (gx#stx-pair? _%e138678138696%_)
                                  (let ((_%e138688138720%_
                                         (gx#syntax-e _%e138678138696%_)))
                                    (let ((_%hd138689138723%_
                                           (##car _%e138688138720%_))
                                          (_%tl138690138725%_
                                           (##cdr _%e138688138720%_)))
                                      (if (eq? (gx#stx-e _%hd138689138723%_)
                                               'begin:)
                                          (let ((_%body138728%_
                                                 _%tl138690138725%_))
                                            (_%K138641%_
                                             (gx#stx-foldr
                                              cons
                                              _%rest138676%_
                                              _%body138728%_)
                                             _%r138677%_))
                                          (_%E138687138716%_))))
                                  (_%E138687138716%_))))
                           (_%E138679138757%_
                            (lambda ()
                              (if (gx#stx-pair? _%e138678138696%_)
                                  (let ((_%e138681138734%_
                                         (gx#syntax-e _%e138678138696%_)))
                                    (let ((_%hd138682138737%_
                                           (##car _%e138681138734%_))
                                          (_%tl138683138739%_
                                           (##cdr _%e138681138734%_)))
                                      (if (eq? (gx#stx-e _%hd138682138737%_)
                                               'phi:)
                                          (if (gx#stx-pair? _%tl138683138739%_)
                                              (let ((_%e138684138742%_
                                                     (gx#syntax-e
                                                      _%tl138683138739%_)))
                                                (let ((_%hd138685138745%_
                                                       (##car _%e138684138742%_))
                                                      (_%tl138686138747%_
                                                       (##cdr _%e138684138742%_)))
                                                  (let* ((_%dphi138750%_
                                                          _%hd138685138745%_)
                                                         (_%body138752%_
                                                          _%tl138686138747%_))
                                                    (if (gx#stx-fixnum?
                                                         _%dphi138750%_)
                                                        (let ((_%rbody138755%_
                                                               (call-with-parameters__1
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_%K138641%_ _%body138752%_ '()))
                        _%current-phi138638%_
                        (fx+ (gx#stx-e _%dphi138750%_)
                             (_%current-phi138638%_)))))
                  (_%K138641%_
                   _%rest138676%_
                   (__foldr1 cons _%r138677%_ _%rbody138755%_)))
                (_%E138680138730%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E138680138730%_))
                                          (_%E138680138730%_))))
                                  (_%E138680138730%_)))))
                      (_%E138679138757%_)))))
          (let* ((_%e138643138650%_ _%stx138635%_)
                 (_%E138645138654%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e138643138650%_)))
                 (_%E138644138671%_
                  (lambda ()
                    (if (gx#stx-pair? _%e138643138650%_)
                        (let ((_%e138646138658%_
                               (gx#syntax-e _%e138643138650%_)))
                          (let ((_%hd138647138661%_ (##car _%e138646138658%_))
                                (_%tl138648138663%_ (##cdr _%e138646138658%_)))
                            (let ((_%body138666%_ _%tl138648138663%_))
                              (if (_%current-phi138638%_)
                                  (_%K138641%_ _%body138666%_ '())
                                  (call-with-parameters__1
                                   (lambda () (_%K138641%_ _%body138666%_ '()))
                                   _%current-phi138638%_
                                   (gx#current-expander-phi))))))
                        (_%E138645138654%_)))))
            (_%E138644138671%_)))))
    (define gx#core-expand-import%__%
      (lambda (_%stx138289%_ _%internal-expand?138290%_)
        (letrec ((_%expand1138292%_
                  (lambda (_%hd138607%_ _%K138608%_ _%rest138609%_ _%r138610%_)
                    (if (gx#core-bound-module? _%hd138607%_)
                        (_%import1138293%_
                         (gx#syntax-local-e__0 _%hd138607%_)
                         _%K138608%_
                         _%rest138609%_
                         _%r138610%_)
                        (if (gx#core-library-module-path? _%hd138607%_)
                            (_%import1138293%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%hd138607%_))
                             _%K138608%_
                             _%rest138609%_
                             _%r138610%_)
                            (if (gx#core-library-relative-module-path?
                                 _%hd138607%_)
                                (_%import1138293%_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _%hd138607%_))
                                 _%K138608%_
                                 _%rest138609%_
                                 _%r138610%_)
                                (let ((_%e138616%_ (gx#stx-e _%hd138607%_)))
                                  (if (pair? _%e138616%_)
                                      (let ((_%$e138619%_
                                             (gx#stx-e (##car _%e138616%_))))
                                        (if (eq? 'spec: _%$e138619%_)
                                            (_%import-spec138296%_
                                             _%hd138607%_
                                             _%K138608%_
                                             _%rest138609%_
                                             _%r138610%_)
                                            (if (eq? 'in: _%$e138619%_)
                                                (_%import-submodule138294%_
                                                 _%hd138607%_
                                                 _%K138608%_
                                                 _%rest138609%_
                                                 _%r138610%_)
                                                (if (eq? 'runtime:
                                                         _%$e138619%_)
                                                    (_%import-runtime138295%_
                                                     _%hd138607%_
                                                     _%K138608%_
                                                     _%rest138609%_
                                                     _%r138610%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _%stx138289%_
                                                     _%hd138607%_)))))
                                      (if (string? _%e138616%_)
                                          (_%import1138293%_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _%hd138607%_
                                             (gx#stx-source _%stx138289%_)))
                                           _%K138608%_
                                           _%rest138609%_
                                           _%r138610%_)
                                          (if (##structure-instance-of?
                                               _%e138616%_
                                               'gx#module-context::t)
                                              (_%K138608%_
                                               _%rest138609%_
                                               (cons _%e138616%_ _%r138610%_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _%stx138289%_
                                               _%hd138607%_))))))))))
                 (_%import1138293%_
                  (lambda (_%ctx138596%_
                           _%K138597%_
                           _%rest138598%_
                           _%r138599%_)
                    (let ((_%dphi138601%_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_%K138597%_
                       _%rest138598%_
                       (cons (##structure
                              gx#import-set::t
                              _%ctx138596%_
                              _%dphi138601%_
                              (map (lambda (_%g138602138604%_)
                                     (gx#core-module-export->import__%
                                      _%g138602138604%_
                                      '#f
                                      _%dphi138601%_))
                                   (##unchecked-structure-ref
                                    _%ctx138596%_
                                    '9
                                    '#f
                                    '#f)))
                             _%r138599%_)))))
                 (_%import-submodule138294%_
                  (lambda (_%hd138563%_ _%K138564%_ _%rest138565%_ _%r138566%_)
                    (let* ((_%e138567138574%_ _%hd138563%_)
                           (_%E138569138578%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e138567138574%_)))
                           (_%E138568138592%_
                            (lambda ()
                              (if (gx#stx-pair? _%e138567138574%_)
                                  (let ((_%e138570138582%_
                                         (gx#syntax-e _%e138567138574%_)))
                                    (let ((_%hd138571138585%_
                                           (##car _%e138570138582%_))
                                          (_%tl138572138587%_
                                           (##cdr _%e138570138582%_)))
                                      (let ((_%spath138590%_
                                             _%tl138572138587%_))
                                        (_%import1138293%_
                                         (_%import-spec-source138297%_
                                          _%spath138590%_)
                                         _%K138564%_
                                         _%rest138565%_
                                         _%r138566%_))))
                                  (_%E138569138578%_)))))
                      (_%E138568138592%_))))
                 (_%import-runtime138295%_
                  (lambda (_%hd138530%_ _%K138531%_ _%rest138532%_ _%r138533%_)
                    (let* ((_%e138534138541%_ _%hd138530%_)
                           (_%E138536138545%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e138534138541%_)))
                           (_%E138535138559%_
                            (lambda ()
                              (if (gx#stx-pair? _%e138534138541%_)
                                  (let ((_%e138537138549%_
                                         (gx#syntax-e _%e138534138541%_)))
                                    (let ((_%hd138538138552%_
                                           (##car _%e138537138549%_))
                                          (_%tl138539138554%_
                                           (##cdr _%e138537138549%_)))
                                      (let ((_%spath138557%_
                                             _%tl138539138554%_))
                                        (_%K138531%_
                                         _%rest138532%_
                                         (cons (_%import-spec-source138297%_
                                                _%spath138557%_)
                                               _%r138533%_)))))
                                  (_%E138536138545%_)))))
                      (_%E138535138559%_))))
                 (_%import-spec138296%_
                  (lambda (_%hd138368%_ _%K138369%_ _%rest138370%_ _%r138371%_)
                    (let* ((_%e138372138389%_ _%hd138368%_)
                           (_%E138381138393%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e138372138389%_)))
                           (_%E138374138504%_
                            (lambda ()
                              (if (gx#stx-pair? _%e138372138389%_)
                                  (let ((_%e138382138397%_
                                         (gx#syntax-e _%e138372138389%_)))
                                    (let ((_%hd138383138400%_
                                           (##car _%e138382138397%_))
                                          (_%tl138384138402%_
                                           (##cdr _%e138382138397%_)))
                                      (if (gx#stx-pair? _%tl138384138402%_)
                                          (let ((_%e138385138405%_
                                                 (gx#syntax-e
                                                  _%tl138384138402%_)))
                                            (let ((_%hd138386138408%_
                                                   (##car _%e138385138405%_))
                                                  (_%tl138387138410%_
                                                   (##cdr _%e138385138405%_)))
                                              (let* ((_%path138413%_
                                                      _%hd138386138408%_)
                                                     (_%specs138415%_
                                                      _%tl138387138410%_))
                                                (let ((_%src-ctx138417%_
                                                       (_%import-spec-source138297%_
                                                        _%path138413%_))
                                                      (_%exports138418%_
                                                       (make-hash-table__%
                                                        '#f
                                                        absent-value
                                                        absent-value
                                                        absent-value
                                                        absent-value
                                                        absent-value
                                                        absent-value
                                                        absent-value
                                                        absent-value))
                                                      (_%specs138419%_
                                                       (gx#syntax->list
                                                        _%specs138415%_)))
                                                  (for-each
                                                   (lambda (_%out138421%_)
                                                     (__hash-put!
                                                      _%exports138418%_
                                                      (cons (##unchecked-structure-ref
                                                             _%out138421%_
                                                             '3
                                                             '#f
                                                             '#f)
                                                            (##unchecked-structure-ref
                                                             _%out138421%_
                                                             '4
                                                             '#f
                                                             '#f))
                                                      _%out138421%_))
                                                   (##unchecked-structure-ref
                                                    _%src-ctx138417%_
                                                    '9
                                                    '#f
                                                    '#f))
                                                  (_%K138369%_
                                                   _%rest138370%_
                                                   (__foldl1
                                                    (lambda (_%spec138423%_
                                                             _%r138424%_)
                                                      (let* ((_%e138425138441%_
                                                              _%spec138423%_)
                                                             (_%E138427138445%_
                                                              (lambda ()
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid syntax-case clause"
                         _%e138425138441%_)))
                     (_%E138426138500%_
                      (lambda ()
                        (if (gx#stx-pair? _%e138425138441%_)
                            (let ((_%e138428138449%_
                                   (gx#syntax-e _%e138425138441%_)))
                              (let ((_%hd138429138452%_
                                     (##car _%e138428138449%_))
                                    (_%tl138430138454%_
                                     (##cdr _%e138428138449%_)))
                                (let ((_%phi138457%_ _%hd138429138452%_))
                                  (if (gx#stx-pair? _%tl138430138454%_)
                                      (let ((_%e138431138459%_
                                             (gx#syntax-e _%tl138430138454%_)))
                                        (let ((_%hd138432138462%_
                                               (##car _%e138431138459%_))
                                              (_%tl138433138464%_
                                               (##cdr _%e138431138459%_)))
                                          (let ((_%name138467%_
                                                 _%hd138432138462%_))
                                            (if (gx#stx-pair?
                                                 _%tl138433138464%_)
                                                (let ((_%e138434138469%_
                                                       (gx#syntax-e
                                                        _%tl138433138464%_)))
                                                  (let ((_%hd138435138472%_
                                                         (##car _%e138434138469%_))
                                                        (_%tl138436138474%_
                                                         (##cdr _%e138434138469%_)))
                                                    (let ((_%src-phi138477%_
                                                           _%hd138435138472%_))
                                                      (if (gx#stx-pair?
                                                           _%tl138436138474%_)
                                                          (let ((_%e138437138479%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl138436138474%_)))
                    (let ((_%hd138438138482%_ (##car _%e138437138479%_))
                          (_%tl138439138484%_ (##cdr _%e138437138479%_)))
                      (let ((_%src-name138487%_ _%hd138438138482%_))
                        (if (gx#stx-null? _%tl138439138484%_)
                            (if (and (gx#stx-fixnum? _%src-phi138477%_)
                                     (gx#identifier? _%src-name138487%_)
                                     (gx#stx-fixnum? _%phi138457%_)
                                     (gx#identifier? _%name138467%_))
                                (let ((_%src-phi138489%_
                                       (gx#stx-e _%src-phi138477%_))
                                      (_%src-name138490%_
                                       (gx#core-identifier-key
                                        _%src-name138487%_))
                                      (_%phi138491%_ (gx#stx-e _%phi138457%_))
                                      (_%name138492%_
                                       (gx#core-identifier-key
                                        _%name138467%_)))
                                  (let ((_%$e138494%_
                                         (__hash-get
                                          _%exports138418%_
                                          (cons _%src-phi138489%_
                                                _%src-name138490%_))))
                                    (if _%$e138494%_
                                        ((lambda (_%out138497%_)
                                           (cons (gx#core-module-export->import__%
                                                  _%out138497%_
                                                  _%name138492%_
                                                  (fx- _%phi138491%_
                                                       _%src-phi138489%_))
                                                 _%r138424%_))
                                         _%$e138494%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; no matching export"
                                         _%stx138289%_
                                         _%hd138368%_))))
                                (_%E138427138445%_))
                            (_%E138427138445%_)))))
                  (_%E138427138445%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E138427138445%_)))))
                                      (_%E138427138445%_)))))
                            (_%E138427138445%_)))))
                (_%E138426138500%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r138371%_
                                                    _%specs138419%_))))))
                                          (_%E138381138393%_))))
                                  (_%E138381138393%_))))
                           (_%E138373138526%_
                            (lambda ()
                              (if (gx#stx-pair? _%e138372138389%_)
                                  (let ((_%e138375138508%_
                                         (gx#syntax-e _%e138372138389%_)))
                                    (let ((_%hd138376138511%_
                                           (##car _%e138375138508%_))
                                          (_%tl138377138513%_
                                           (##cdr _%e138375138508%_)))
                                      (if (gx#stx-pair? _%tl138377138513%_)
                                          (let ((_%e138378138516%_
                                                 (gx#syntax-e
                                                  _%tl138377138513%_)))
                                            (let ((_%hd138379138519%_
                                                   (##car _%e138378138516%_))
                                                  (_%tl138380138521%_
                                                   (##cdr _%e138378138516%_)))
                                              (let ((_%path138524%_
                                                     _%hd138379138519%_))
                                                (if (gx#stx-null?
                                                     _%tl138380138521%_)
                                                    (_%K138369%_
                                                     _%rest138370%_
                                                     (cons (_%import-spec-source138297%_
                                                            _%path138524%_)
                                                           _%r138371%_))
                                                    (_%E138374138504%_)))))
                                          (_%E138374138504%_))))
                                  (_%E138374138504%_)))))
                      (_%E138373138526%_))))
                 (_%import-spec-source138297%_
                  (lambda (_%spath138366%_)
                    (gx#core-import-nested-module
                     _%spath138366%_
                     _%stx138289%_)))
                 (_%import!138298%_
                  (lambda (_%rbody138311%_)
                    (letrec* ((_%current-ctx138313%_
                               (gx#current-expander-context))
                              (_%deps138314%_ (make-hash-table-eq))
                              (_%bind!138315%_
                               (lambda (_%hd138364%_)
                                 (gx#core-bind-import!__1
                                  _%hd138364%_
                                  _%current-ctx138313%_))))
                      (let _%lp138317%_ ((_%rest138319%_ _%rbody138311%_)
                                         (_%body138320%_ '()))
                        (let* ((_%rest138321138329%_ _%rest138319%_)
                               (_%else138323138340%_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _%current-ctx138313%_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _%current-ctx138313%_
                                       (__foldl1
                                        cons
                                        (##unchecked-structure-ref
                                         _%current-ctx138313%_
                                         '8
                                         '#f
                                         '#f)
                                        _%body138320%_)
                                       '8
                                       '#f
                                       '#f)
                                      '#!void)
                                  (__hash-for-each
                                   (lambda (_%ctx138337%_ _%_138338%_)
                                     (gx#eval-module _%ctx138337%_))
                                   _%deps138314%_)
                                  _%body138320%_))
                               (_%K138325138352%_
                                (lambda (_%rest138343%_ _%hd138344%_)
                                  (if (##structure-direct-instance-of?
                                       _%hd138344%_
                                       'gx#module-import::t)
                                      (let ()
                                        (_%bind!138315%_ _%hd138344%_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _%hd138344%_
                                                   '3
                                                   '#f
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _%hd138344%_
                                                            '1
                                                            '#f
                                                            '#f)
                                                           '3
                                                           '#f
                                                           '#f)))
                                            (__hash-put!
                                             _%deps138314%_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _%hd138344%_
                                               '1
                                               '#f
                                               '#f)
                                              '1
                                              '#f
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _%hd138344%_
                                           'gx#import-set::t)
                                          (let ()
                                            (for-each
                                             _%bind!138315%_
                                             (##unchecked-structure-ref
                                              _%hd138344%_
                                              '3
                                              '#f
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _%hd138344%_
                                                  '2
                                                  '#f
                                                  '#f))
                                                (__hash-put!
                                                 _%deps138314%_
                                                 (##unchecked-structure-ref
                                                  _%hd138344%_
                                                  '1
                                                  '#f
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_%$e138348%_
                                                 (##structure-instance-of?
                                                  _%hd138344%_
                                                  'gx#module-context::t)))
                                            (if _%$e138348%_
                                                _%$e138348%_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _%stx138289%_
                                                 _%hd138344%_)))))
                                  (_%lp138317%_
                                   _%rest138343%_
                                   (cons _%hd138344%_ _%body138320%_)))))
                          (if (pair? _%rest138321138329%_)
                              (let ((_%hd138326138355%_
                                     (##car _%rest138321138329%_))
                                    (_%tl138327138357%_
                                     (##cdr _%rest138321138329%_)))
                                (let* ((_%hd138360%_ _%hd138326138355%_)
                                       (_%rest138362%_ _%tl138327138357%_))
                                  (_%K138325138352%_
                                   _%rest138362%_
                                   _%hd138360%_)))
                              (_%else138323138340%_)))))))
                 (_%expanded-import?138299%_
                  (lambda (_%e138303%_)
                    (let ((_%$e138305%_
                           (##structure-direct-instance-of?
                            _%e138303%_
                            'gx#import-set::t)))
                      (if _%$e138305%_
                          _%$e138305%_
                          (let ((_%$e138308%_
                                 (##structure-direct-instance-of?
                                  _%e138303%_
                                  'gx#module-import::t)))
                            (if _%$e138308%_
                                _%$e138308%_
                                (##structure-instance-of?
                                 _%e138303%_
                                 'gx#module-context::t))))))))
          (let ((_%rbody138301%_
                 (gx#core-expand-import/export
                  _%stx138289%_
                  _%expanded-import?138299%_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _%expand1138292%_)))
            (if _%internal-expand?138290%_
                (reverse _%rbody138301%_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_%import!138298%_ _%rbody138301%_))
                 (gx#stx-source _%stx138289%_)))))))
    (define gx#core-expand-import%__0
      (lambda (_%stx138628%_)
        (let ((_%internal-expand?138630%_ '#f))
          (gx#core-expand-import%__%
           _%stx138628%_
           _%internal-expand?138630%_))))
    (define gx#core-expand-import%
      (lambda _g141279_
        (let ((_g141280_ (##length _g141279_)))
          (cond ((##fx= _g141280_ 1)
                 (apply gx#core-expand-import%__0 _g141279_))
                ((##fx= _g141280_ 2)
                 (apply gx#core-expand-import%__% _g141279_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g141279_))))))
    (define gx#core-import-nested-module
      (lambda (_%spath138216%_ _%where138217%_)
        (let* ((_%e138218138225%_ _%spath138216%_)
               (_%E138220138229%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e138218138225%_)))
               (_%E138219138284%_
                (lambda ()
                  (if (gx#stx-pair? _%e138218138225%_)
                      (let ((_%e138221138233%_
                             (gx#syntax-e _%e138218138225%_)))
                        (let ((_%hd138222138236%_ (##car _%e138221138233%_))
                              (_%tl138223138238%_ (##cdr _%e138221138233%_)))
                          (let* ((_%origin138241%_ _%hd138222138236%_)
                                 (_%sub138243%_ _%tl138223138238%_)
                                 (_%origin-ctx138245%_
                                  (if (gx#stx-false? _%origin138241%_)
                                      (gx#current-expander-context)
                                      (gx#import-module__0 _%origin138241%_))))
                            (let _%lp138247%_ ((_%rest138249%_ _%sub138243%_)
                                               (_%ctx138250%_
                                                _%origin-ctx138245%_))
                              (let* ((_%e138251138258%_ _%rest138249%_)
                                     (_%E138253138262%_
                                      (lambda () _%ctx138250%_))
                                     (_%E138252138280%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%e138251138258%_)
                                            (let ((_%e138254138266%_
                                                   (gx#syntax-e
                                                    _%e138251138258%_)))
                                              (let ((_%hd138255138269%_
                                                     (##car _%e138254138266%_))
                                                    (_%tl138256138271%_
                                                     (##cdr _%e138254138266%_)))
                                                (let* ((_%id138274%_
                                                        _%hd138255138269%_)
                                                       (_%rest138276%_
                                                        _%tl138256138271%_)
                                                       (_%bind138278%_
                                                        (gx#resolve-identifier__%
                                                         _%id138274%_
                                                         '0
                                                         _%ctx138250%_)))
                                                  (if (and (##structure-direct-instance-of?
                                                            _%bind138278%_
                                                            'gx#syntax-binding::t)
                                                           (##structure-instance-of?
                                                            (##unchecked-structure-ref
                                                             _%bind138278%_
                                                             '4
                                                             '#f
                                                             '#f)
                                                            'gx#module-context::t))
                                                      '#!void
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; not bound as module"
                                                       _%where138217%_
                                                       _%spath138216%_
                                                       _%id138274%_))
                                                  (_%lp138247%_
                                                   _%rest138276%_
                                                   (##unchecked-structure-ref
                                                    _%bind138278%_
                                                    '4
                                                    '#f
                                                    '#f)))))
                                            (_%E138253138262%_)))))
                                (_%E138252138280%_))))))
                      (_%E138220138229%_)))))
          (_%E138219138284%_))))
    (define gx#core-expand-import-source
      (lambda (_%hd138214%_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _%hd138214%_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_%stx137709%_ _%internal-expand?137710%_)
        (letrec* ((_%make-export__141208141209%_
                   (lambda (_%bind138162%_
                            _%phi138163%_
                            _%ctx138164%_
                            _%name138165%_)
                     (let* ((_%key138167%_
                             (##unchecked-structure-ref
                              _%bind138162%_
                              '2
                              '#f
                              '#f))
                            (_%export-key138169%_
                             (if _%name138165%_
                                 (gx#core-identifier-key _%name138165%_)
                                 _%key138167%_)))
                       (##structure
                        gx#module-export::t
                        _%ctx138164%_
                        _%key138167%_
                        _%phi138163%_
                        _%export-key138169%_
                        (let ((_%$e138172%_
                               (##structure-instance-of?
                                _%bind138162%_
                                'gx#extern-binding::t)))
                          (if _%$e138172%_
                              _%$e138172%_
                              (##structure-direct-instance-of?
                               _%bind138162%_
                               'gx#import-binding::t)))))))
                  (_%make-export__0__141210141213%_
                   (lambda (_%bind138178%_)
                     (let* ((_%phi138180%_ (gx#current-export-expander-phi))
                            (_%ctx138182%_ (gx#current-expander-context))
                            (_%name138184%_ '#f))
                       (_%make-export__141208141209%_
                        _%bind138178%_
                        _%phi138180%_
                        _%ctx138182%_
                        _%name138184%_))))
                  (_%make-export__1__141211141214%_
                   (lambda (_%bind138186%_ _%phi138187%_)
                     (let* ((_%ctx138189%_ (gx#current-expander-context))
                            (_%name138191%_ '#f))
                       (_%make-export__141208141209%_
                        _%bind138186%_
                        _%phi138187%_
                        _%ctx138189%_
                        _%name138191%_))))
                  (_%make-export__2__141212141215%_
                   (lambda (_%bind138193%_ _%phi138194%_ _%ctx138195%_)
                     (let ((_%name138197%_ '#f))
                       (_%make-export__141208141209%_
                        _%bind138193%_
                        _%phi138194%_
                        _%ctx138195%_
                        _%name138197%_))))
                  (_%make-export137712%_
                   (lambda _g141281_
                     (let ((_g141282_ (##length _g141281_)))
                       (cond ((##fx= _g141282_ 1)
                              (apply _%make-export__0__141210141213%_
                                     _g141281_))
                             ((##fx= _g141282_ 2)
                              (apply _%make-export__1__141211141214%_
                                     _g141281_))
                             ((##fx= _g141282_ 3)
                              (apply _%make-export__2__141212141215%_
                                     _g141281_))
                             ((##fx= _g141282_ 4)
                              (apply _%make-export__141208141209%_ _g141281_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g141281_))))))
                  (_%expand1137713%_
                   (lambda (_%hd137867%_
                            _%K137868%_
                            _%rest137869%_
                            _%r137870%_)
                     (let* ((_%e137871137903%_ _%hd137867%_)
                            (_%E137898137907%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _%stx137709%_
                                _%hd137867%_)))
                            (_%E137888137991%_
                             (lambda ()
                               (if (gx#stx-pair? _%e137871137903%_)
                                   (let ((_%e137899137911%_
                                          (gx#syntax-e _%e137871137903%_)))
                                     (let ((_%hd137900137914%_
                                            (##car _%e137899137911%_))
                                           (_%tl137901137916%_
                                            (##cdr _%e137899137911%_)))
                                       (if (eq? (gx#stx-e _%hd137900137914%_)
                                                'import:)
                                           (let ((_%in137919%_
                                                  _%tl137901137916%_))
                                             (if (gx#stx-list? _%in137919%_)
                                                 (let _%lp137921%_ ((_%in-rest137923%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%in137919%_)
                            (_%r137924%_ _%r137870%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%e137925137932%_
                                                           _%in-rest137923%_)
                                                          (_%E137927137936%_
                                                           (lambda ()
                                                             (_%K137868%_
                                                              _%rest137869%_
                                                              _%r137924%_)))
                                                          (_%E137926137987%_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%e137925137932%_)
                         (let ((_%e137928137940%_
                                (gx#syntax-e _%e137925137932%_)))
                           (let ((_%hd137929137943%_ (##car _%e137928137940%_))
                                 (_%tl137930137945%_
                                  (##cdr _%e137928137940%_)))
                             (let* ((_%hd137948%_ _%hd137929137943%_)
                                    (_%in-rest137950%_ _%tl137930137945%_)
                                    (_%src137985%_
                                     (if (gx#core-bound-module? _%hd137948%_)
                                         (gx#syntax-local-e__0 _%hd137948%_)
                                         (if (gx#core-library-module-path?
                                              _%hd137948%_)
                                             (gx#import-module__0
                                              (gx#core-resolve-library-module-path
                                               _%hd137948%_))
                                             (if (gx#core-library-relative-module-path?
                                                  _%hd137948%_)
                                                 (gx#import-module__0
                                                  (gx#core-resolve-library-relative-module-path
                                                   _%hd137948%_))
                                                 (if (gx#stx-string?
                                                      _%hd137948%_)
                                                     (gx#import-module__0
                                                      (gx#core-resolve-module-path__%
                                                       _%hd137948%_
                                                       (gx#stx-source
                                                        _%stx137709%_)))
                                                     (let* ((_%e137956137963%_
                                                             _%hd137948%_)
                                                            (_%E137958137967%_
                                                             (lambda ()
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; illegal re-export"
                                                                _%stx137709%_
                                                                _%hd137948%_)))
                                                            (_%E137957137981%_
                                                             (lambda ()
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%e137956137963%_)
                           (let ((_%e137959137971%_
                                  (gx#syntax-e _%e137956137963%_)))
                             (let ((_%hd137960137974%_
                                    (##car _%e137959137971%_))
                                   (_%tl137961137976%_
                                    (##cdr _%e137959137971%_)))
                               (if (eq? (gx#stx-e _%hd137960137974%_) 'in:)
                                   (let ((_%spath137979%_ _%tl137961137976%_))
                                     (gx#core-import-nested-module
                                      _%spath137979%_
                                      _%stx137709%_))
                                   (_%E137958137967%_))))
                           (_%E137958137967%_)))))
               (_%E137957137981%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (_%lp137921%_
                                _%in-rest137950%_
                                (_%export-imports137714%_
                                 _%src137985%_
                                 _%r137924%_)))))
                         (_%E137927137936%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E137926137987%_)))
                                                 (_%E137898137907%_)))
                                           (_%E137898137907%_))))
                                   (_%E137898137907%_))))
                            (_%E137875138031%_
                             (lambda ()
                               (if (gx#stx-pair? _%e137871137903%_)
                                   (let ((_%e137889137995%_
                                          (gx#syntax-e _%e137871137903%_)))
                                     (let ((_%hd137890137998%_
                                            (##car _%e137889137995%_))
                                           (_%tl137891138000%_
                                            (##cdr _%e137889137995%_)))
                                       (if (eq? (gx#stx-e _%hd137890137998%_)
                                                'rename:)
                                           (if (gx#stx-pair?
                                                _%tl137891138000%_)
                                               (let ((_%e137892138003%_
                                                      (gx#syntax-e
                                                       _%tl137891138000%_)))
                                                 (let ((_%hd137893138006%_
                                                        (##car _%e137892138003%_))
                                                       (_%tl137894138008%_
                                                        (##cdr _%e137892138003%_)))
                                                   (let ((_%id138011%_
                                                          _%hd137893138006%_))
                                                     (if (gx#stx-pair?
                                                          _%tl137894138008%_)
                                                         (let ((_%e137895138013%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl137894138008%_)))
                   (let ((_%hd137896138016%_ (##car _%e137895138013%_))
                         (_%tl137897138018%_ (##cdr _%e137895138013%_)))
                     (let ((_%name138021%_ _%hd137896138016%_))
                       (if (gx#stx-null? _%tl137897138018%_)
                           (let* ((_%phi138023%_
                                   (gx#current-export-expander-phi))
                                  (_%$e138025%_
                                   (gx#core-resolve-identifier__1
                                    _%id138011%_
                                    _%phi138023%_)))
                             (if _%$e138025%_
                                 ((lambda (_%bind138028%_)
                                    (_%K137868%_
                                     _%rest137869%_
                                     (cons (_%make-export__141208141209%_
                                            _%bind138028%_
                                            _%phi138023%_
                                            (gx#current-expander-context)
                                            _%name138021%_)
                                           _%r137870%_)))
                                  _%$e138025%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Reference to unbound identifier"
                                  _%stx137709%_
                                  _%hd137867%_
                                  _%id138011%_)))
                           (_%E137888137991%_)))))
                 (_%E137888137991%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E137888137991%_))
                                           (_%E137888137991%_))))
                                   (_%E137888137991%_))))
                            (_%E137874138081%_
                             (lambda ()
                               (if (gx#stx-pair? _%e137871137903%_)
                                   (let ((_%e137876138035%_
                                          (gx#syntax-e _%e137871137903%_)))
                                     (let ((_%hd137877138038%_
                                            (##car _%e137876138035%_))
                                           (_%tl137878138040%_
                                            (##cdr _%e137876138035%_)))
                                       (if (eq? (gx#stx-e _%hd137877138038%_)
                                                'spec:)
                                           (if (gx#stx-pair?
                                                _%tl137878138040%_)
                                               (let ((_%e137879138043%_
                                                      (gx#syntax-e
                                                       _%tl137878138040%_)))
                                                 (let ((_%hd137880138046%_
                                                        (##car _%e137879138043%_))
                                                       (_%tl137881138048%_
                                                        (##cdr _%e137879138043%_)))
                                                   (let ((_%phi138051%_
                                                          _%hd137880138046%_))
                                                     (if (gx#stx-pair?
                                                          _%tl137881138048%_)
                                                         (let ((_%e137882138053%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl137881138048%_)))
                   (let ((_%hd137883138056%_ (##car _%e137882138053%_))
                         (_%tl137884138058%_ (##cdr _%e137882138053%_)))
                     (let ((_%id138061%_ _%hd137883138056%_))
                       (if (gx#stx-pair? _%tl137884138058%_)
                           (let ((_%e137885138063%_
                                  (gx#syntax-e _%tl137884138058%_)))
                             (let ((_%hd137886138066%_
                                    (##car _%e137885138063%_))
                                   (_%tl137887138068%_
                                    (##cdr _%e137885138063%_)))
                               (let ((_%name138071%_ _%hd137886138066%_))
                                 (if (gx#stx-null? _%tl137887138068%_)
                                     (if (and (gx#stx-fixnum? _%phi138051%_)
                                              (gx#identifier? _%id138061%_)
                                              (gx#identifier? _%name138071%_))
                                         (let* ((_%phi138073%_
                                                 (gx#stx-e _%phi138051%_))
                                                (_%$e138075%_
                                                 (gx#core-resolve-identifier__1
                                                  _%id138061%_
                                                  _%phi138073%_)))
                                           (if _%$e138075%_
                                               ((lambda (_%bind138078%_)
                                                  (_%K137868%_
                                                   _%rest137869%_
                                                   (cons (_%make-export__141208141209%_
                                                          _%bind138078%_
                                                          _%phi138073%_
                                                          (gx#current-expander-context)
                                                          _%name138071%_)
                                                         _%r137870%_)))
                                                _%$e138075%_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _%stx137709%_
                                                _%hd137867%_
                                                _%id138061%_)))
                                         (_%E137875138031%_))
                                     (_%E137875138031%_)))))
                           (_%E137875138031%_)))))
                 (_%E137875138031%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E137875138031%_))
                                           (_%E137875138031%_))))
                                   (_%E137875138031%_))))
                            (_%E137873138093%_
                             (lambda ()
                               (let ((_%id138085%_ _%e137871137903%_))
                                 (if (gx#identifier? _%id138085%_)
                                     (let ((_%$e138087%_
                                            (gx#core-resolve-identifier__1
                                             _%id138085%_
                                             (gx#current-export-expander-phi))))
                                       (if _%$e138087%_
                                           ((lambda (_%bind138090%_)
                                              (_%K137868%_
                                               _%rest137869%_
                                               (cons (_%make-export__0__141210141213%_
                                                      _%bind138090%_)
                                                     _%r137870%_)))
                                            _%$e138087%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _%stx137709%_
                                            _%hd137867%_)))
                                     (_%E137874138081%_)))))
                            (_%E137872138157%_
                             (lambda ()
                               (if (eq? (gx#stx-e _%e137871137903%_) '#t)
                                   (let* ((_%current-ctx138097%_
                                           (gx#current-expander-context))
                                          (_%current-phi138099%_
                                           (gx#current-export-expander-phi))
                                          (_%phi-ctx138101%_
                                           (gx#core-context-shift
                                            _%current-ctx138097%_
                                            _%current-phi138099%_))
                                          (_%phi-bind138103%_
                                           (hash->list
                                            (##unchecked-structure-ref
                                             _%phi-ctx138101%_
                                             '2
                                             '#f
                                             '#f))))
                                     (let _%lp138106%_ ((_%bind-rest138108%_
                                                         _%phi-bind138103%_)
                                                        (_%set138109%_ '()))
                                       (let* ((_%bind-rest138110138120%_
                                               _%bind-rest138108%_)
                                              (_%else138112138128%_
                                               (lambda ()
                                                 (_%K137868%_
                                                  _%rest137869%_
                                                  (cons (##structure
                                                         gx#export-set::t
                                                         '#f
                                                         _%current-phi138099%_
                                                         _%set138109%_)
                                                        _%r137870%_))))
                                              (_%K138114138138%_
                                               (lambda (_%bind-rest138131%_
                                                        _%bind138132%_
                                                        _%key138133%_)
                                                 (if (or (##structure-direct-instance-of?
                                                          _%bind138132%_
                                                          'gx#import-binding::t)
                                                         (gx#private-feature-binding?
                                                          _%bind138132%_))
                                                     (_%lp138106%_
                                                      _%bind-rest138131%_
                                                      _%set138109%_)
                                                     (_%lp138106%_
                                                      _%bind-rest138131%_
                                                      (cons (_%make-export__2__141212141215%_
                                                             _%bind138132%_
                                                             _%current-phi138099%_
                                                             _%current-ctx138097%_)
                                                            _%set138109%_))))))
                                         (if (pair? _%bind-rest138110138120%_)
                                             (let ((_%hd138115138141%_
                                                    (##car _%bind-rest138110138120%_))
                                                   (_%tl138116138143%_
                                                    (##cdr _%bind-rest138110138120%_)))
                                               (if (pair? _%hd138115138141%_)
                                                   (let ((_%hd138117138146%_
                                                          (##car _%hd138115138141%_))
                                                         (_%tl138118138148%_
                                                          (##cdr _%hd138115138141%_)))
                                                     (let* ((_%key138151%_
                                                             _%hd138117138146%_)
                                                            (_%bind138153%_
                                                             _%tl138118138148%_)
                                                            (_%bind-rest138155%_
                                                             _%tl138116138143%_))
                                                       (_%K138114138138%_
                                                        _%bind-rest138155%_
                                                        _%bind138153%_
                                                        _%key138151%_)))
                                                   (_%else138112138128%_)))
                                             (_%else138112138128%_)))))
                                   (_%E137873138093%_)))))
                       (_%E137872138157%_))))
                  (_%export-imports137714%_
                   (lambda (_%src137744%_ _%r137745%_)
                     (letrec* ((_%current-ctx137747%_
                                (gx#current-expander-context))
                               (_%current-phi137748%_
                                (gx#current-export-expander-phi))
                               (_%import->export137749%_
                                (lambda (_%in137830%_)
                                  (let* ((_%in137831137839%_ _%in137830%_)
                                         (_%E137833137842%_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _%in137831137839%_
                                                   '((module-import
                                                      out
                                                      key
                                                      phi)))
                                            '#!void))
                                         (_%K137834137849%_
                                          (lambda (_%phi137845%_
                                                   _%key137846%_
                                                   _%out137847%_)
                                            (##structure
                                             gx#module-export::t
                                             _%current-ctx137747%_
                                             _%key137846%_
                                             _%phi137845%_
                                             _%key137846%_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _%in137831137839%_
                                         'gx#module-import::t)
                                        (let* ((_%e137835137852%_
                                                (##unchecked-structure-ref
                                                 _%in137831137839%_
                                                 '1
                                                 '#f
                                                 '#f))
                                               (_%out137855%_
                                                _%e137835137852%_)
                                               (_%e137836137857%_
                                                (##unchecked-structure-ref
                                                 _%in137831137839%_
                                                 '2
                                                 '#f
                                                 '#f))
                                               (_%key137860%_
                                                _%e137836137857%_)
                                               (_%e137837137862%_
                                                (##unchecked-structure-ref
                                                 _%in137831137839%_
                                                 '3
                                                 '#f
                                                 '#f))
                                               (_%phi137865%_
                                                _%e137837137862%_))
                                          (_%K137834137849%_
                                           _%phi137865%_
                                           _%key137860%_
                                           _%out137855%_))
                                        (_%E137833137842%_)))))
                               (_%fold-e137750%_
                                (lambda (_%in137752%_ _%r137753%_)
                                  (let* ((_%in137754137768%_ _%in137752%_)
                                         (_%else137757137776%_
                                          (lambda () _%r137753%_)))
                                    (let ((_%K137763137812%_
                                           (lambda (_%phi137808%_
                                                    _%key137809%_
                                                    _%out137810%_)
                                             (if (and (fx= _%phi137808%_
                                                           _%current-phi137748%_)
                                                      (eq? _%src137744%_
                                                           (##unchecked-structure-ref
                                                            _%out137810%_
                                                            '1
                                                            '#f
                                                            '#f)))
                                                 (cons (_%import->export137749%_
                                                        _%in137752%_)
                                                       _%r137753%_)
                                                 _%r137753%_)))
                                          (_%K137759137787%_
                                           (lambda (_%imports137780%_
                                                    _%phi137781%_
                                                    _%ctx137782%_)
                                             (if (and (fx= _%phi137781%_
                                                           _%current-phi137748%_)
                                                      (eq? _%src137744%_
                                                           _%ctx137782%_))
                                                 (__foldl1
                                                  (lambda (_%in137784%_
                                                           _%r137785%_)
                                                    (cons (_%import->export137749%_
                                                           _%in137784%_)
                                                          _%r137785%_))
                                                  _%r137753%_
                                                  _%imports137780%_)
                                                 _%r137753%_))))
                                      (let ((_%try-match137756137805%_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _%in137754137768%_
                                                    'gx#import-set::t)
                                                   (let* ((_%e137760137790%_
                                                           (##unchecked-structure-ref
                                                            _%in137754137768%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                          (_%e137761137795%_
                                                           (##unchecked-structure-ref
                                                            _%in137754137768%_
                                                            '2
                                                            '#f
                                                            '#f))
                                                          (_%e137762137800%_
                                                           (##unchecked-structure-ref
                                                            _%in137754137768%_
                                                            '3
                                                            '#f
                                                            '#f)))
                                                     (let ((_%ctx137793%_
                                                            _%e137760137790%_)
                                                           (_%phi137798%_
                                                            _%e137761137795%_)
                                                           (_%imports137803%_
                                                            _%e137762137800%_))
                                                       (_%K137759137787%_
                                                        _%imports137803%_
                                                        _%phi137798%_
                                                        _%ctx137793%_)))
                                                   (_%else137757137776%_)))))
                                        (if (##structure-direct-instance-of?
                                             _%in137754137768%_
                                             'gx#module-import::t)
                                            (let* ((_%e137764137815%_
                                                    (##unchecked-structure-ref
                                                     _%in137754137768%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                   (_%e137765137820%_
                                                    (##unchecked-structure-ref
                                                     _%in137754137768%_
                                                     '2
                                                     '#f
                                                     '#f))
                                                   (_%e137766137825%_
                                                    (##unchecked-structure-ref
                                                     _%in137754137768%_
                                                     '3
                                                     '#f
                                                     '#f)))
                                              (let ((_%out137818%_
                                                     _%e137764137815%_)
                                                    (_%key137823%_
                                                     _%e137765137820%_)
                                                    (_%phi137828%_
                                                     _%e137766137825%_))
                                                (_%K137763137812%_
                                                 _%phi137828%_
                                                 _%key137823%_
                                                 _%out137818%_)))
                                            (_%try-match137756137805%_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _%src137744%_
                              _%current-phi137748%_
                              (__foldl1
                               _%fold-e137750%_
                               '()
                               (##unchecked-structure-ref
                                _%current-ctx137747%_
                                '8
                                '#f
                                '#f)))
                             _%r137745%_))))
                  (_%export!137715%_
                   (lambda (_%rbody137731%_)
                     (letrec* ((_%current-ctx137733%_
                                (gx#current-expander-context))
                               (_%fold-e137734%_
                                (lambda (_%out137738%_ _%r137739%_)
                                  (if (##structure-direct-instance-of?
                                       _%out137738%_
                                       'gx#module-export::t)
                                      (cons _%out137738%_ _%r137739%_)
                                      (if (##structure-direct-instance-of?
                                           _%out137738%_
                                           'gx#export-set::t)
                                          (__foldl1
                                           cons
                                           _%r137739%_
                                           (##unchecked-structure-ref
                                            _%out137738%_
                                            '3
                                            '#f
                                            '#f))
                                          _%r137739%_)))))
                       (let ((_%body137736%_ (reverse _%rbody137731%_)))
                         (##unchecked-structure-set!
                          _%current-ctx137733%_
                          (__foldl1
                           _%fold-e137734%_
                           (##unchecked-structure-ref
                            _%current-ctx137733%_
                            '9
                            '#f
                            '#f)
                           _%body137736%_)
                          '9
                          '#f
                          '#f)
                         _%body137736%_))))
                  (_%expanded-export?137716%_
                   (lambda (_%e137726%_)
                     (let ((_%$e137728%_
                            (##structure-direct-instance-of?
                             _%e137726%_
                             'gx#module-export::t)))
                       (if _%$e137728%_
                           _%$e137728%_
                           (##structure-direct-instance-of?
                            _%e137726%_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _%internal-expand?137710%_)
              (let ((_%rbody137722%_
                     (gx#core-expand-import/export
                      _%stx137709%_
                      _%expanded-export?137716%_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _%expand1137713%_)))
                (if _%internal-expand?137710%_
                    (reverse _%rbody137722%_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons
                      '%#export
                      (_%export!137715%_ _%rbody137722%_))
                     (gx#stx-source _%stx137709%_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _%stx137709%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _%stx137709%_))))))
    (define gx#core-expand-export%__0
      (lambda (_%stx138207%_)
        (let ((_%internal-expand?138209%_ '#f))
          (gx#core-expand-export%__%
           _%stx138207%_
           _%internal-expand?138209%_))))
    (define gx#core-expand-export%
      (lambda _g141283_
        (let ((_g141284_ (##length _g141283_)))
          (cond ((##fx= _g141284_ 1)
                 (apply gx#core-expand-export%__0 _g141283_))
                ((##fx= _g141284_ 2)
                 (apply gx#core-expand-export%__% _g141283_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g141283_))))))
    (define gx#core-expand-export-source
      (lambda (_%hd137706%_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _%hd137706%_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_%stx137676%_)
        (let* ((_%e137677137684%_ _%stx137676%_)
               (_%E137679137688%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e137677137684%_)))
               (_%E137678137702%_
                (lambda ()
                  (if (gx#stx-pair? _%e137677137684%_)
                      (let ((_%e137680137692%_
                             (gx#syntax-e _%e137677137684%_)))
                        (let ((_%hd137681137695%_ (##car _%e137680137692%_))
                              (_%tl137682137697%_ (##cdr _%e137680137692%_)))
                          (let ((_%body137700%_ _%tl137682137697%_))
                            (if (gx#identifier-list? _%body137700%_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _%body137700%_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _%body137700%_))
                                   (gx#stx-source _%stx137676%_)))
                                (_%E137679137688%_)))))
                      (_%E137679137688%_)))))
          (_%E137678137702%_))))
    (define gx#core-bind-feature!__%
      (lambda (_%id137642%_ _%private?137643%_ _%phi137644%_ _%ctx137645%_)
        (gx#core-bind-syntax!__%
         _%id137642%_
         ((if _%private?137643%_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _%id137642%_))
         _%private?137643%_
         _%phi137644%_
         _%ctx137645%_)))
    (define gx#core-bind-feature!__0
      (lambda (_%id137650%_)
        (let* ((_%private?137652%_ '#f)
               (_%phi137654%_ (gx#current-expander-phi))
               (_%ctx137656%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id137650%_
           _%private?137652%_
           _%phi137654%_
           _%ctx137656%_))))
    (define gx#core-bind-feature!__1
      (lambda (_%id137658%_ _%private?137659%_)
        (let* ((_%phi137661%_ (gx#current-expander-phi))
               (_%ctx137663%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id137658%_
           _%private?137659%_
           _%phi137661%_
           _%ctx137663%_))))
    (define gx#core-bind-feature!__2
      (lambda (_%id137665%_ _%private?137666%_ _%phi137667%_)
        (let ((_%ctx137669%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id137665%_
           _%private?137666%_
           _%phi137667%_
           _%ctx137669%_))))
    (define gx#core-bind-feature!
      (lambda _g141285_
        (let ((_g141286_ (##length _g141285_)))
          (cond ((##fx= _g141286_ 1)
                 (apply gx#core-bind-feature!__0 _g141285_))
                ((##fx= _g141286_ 2)
                 (apply gx#core-bind-feature!__1 _g141285_))
                ((##fx= _g141286_ 3)
                 (apply gx#core-bind-feature!__2 _g141285_))
                ((##fx= _g141286_ 4)
                 (apply gx#core-bind-feature!__% _g141285_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g141285_))))))))
