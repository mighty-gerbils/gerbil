(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1733687560)
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
       (cons (cons 'struct: '#t)
             (cons (cons 'final: '#t) '((print: source name phi weak?))))
       '#f))
    (define gx#module-import? (__make-class-predicate gx#module-import::t))
    (define gx#make-module-import
      (lambda _%$args128923%_
        (apply make-instance gx#module-import::t _%$args128923%_)))
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
       (cons (cons 'struct: '#t)
             (cons (cons 'final: '#t) '((transparent: . #t))))
       '#f))
    (define gx#module-export? (__make-class-predicate gx#module-export::t))
    (define gx#make-module-export
      (lambda _%$args128920%_
        (apply make-instance gx#module-export::t _%$args128920%_)))
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
       (cons (cons 'struct: '#t)
             (cons (cons 'final: '#t) '((print: source phi))))
       '#f))
    (define gx#import-set? (__make-class-predicate gx#import-set::t))
    (define gx#make-import-set
      (lambda _%$args128917%_
        (apply make-instance gx#import-set::t _%$args128917%_)))
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
       (cons (cons 'struct: '#t)
             (cons (cons 'final: '#t) '((print: source phi))))
       '#f))
    (define gx#export-set? (__make-class-predicate gx#export-set::t))
    (define gx#make-export-set
      (lambda _%$args128914%_
        (apply make-instance gx#export-set::t _%$args128914%_)))
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
      (lambda _%$args128911%_
        (apply make-instance gx#import-expander::t _%$args128911%_)))
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
      (lambda _%$args128908%_
        (apply make-instance gx#export-expander::t _%$args128908%_)))
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
      (lambda _%$args128905%_
        (apply make-instance gx#import-export-expander::t _%$args128905%_)))
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
      (lambda (_%path128902%_ _%fun128903%_)
        (call-with-input-file
         (cons 'path: (cons _%path128902%_ gx#source-file-settings))
         _%fun128903%_)))
    (define gx#module-context:::init!
      (lambda (_%self125354128883%_
               _%id128885%_
               _%super128886%_
               _%ns128887%_
               _%path128888%_)
        (let* ((_%self128890%_ _%self125354128883%_)
               (_%self128892%_ _%self128890%_))
          (if (##fx< '11 (##structure-length _%self128892%_))
              (begin
                (##unchecked-structure-set!
                 _%self128892%_
                 _%id128885%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self128892%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self128892%_
                 _%super128886%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self128892%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self128892%_ '#f '5 '#f '#f)
                (##unchecked-structure-set!
                 _%self128892%_
                 _%ns128887%_
                 '6
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self128892%_
                 _%path128888%_
                 '7
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self128892%_ '() '8 '#f '#f)
                (##unchecked-structure-set! _%self128892%_ '() '9 '#f '#f)
                (##unchecked-structure-set! _%self128892%_ '#f '10 '#f '#f)
                (##unchecked-structure-set! _%self128892%_ '#f '11 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self128892%_
                     '11
                     (##vector-length _%self128892%_))))))
    (__bind-method!__%
     gx#module-context::t
     ':init!
     gx#module-context:::init!
     '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_%self125355128714%_ _%ctx128716%_ _%root128717%_)
        (let* ((_%self128719%_ _%self125355128714%_)
               (_%self128721%_ _%self128719%_)
               (_%super128737%_
                (let ((_%$e128731%_ _%root128717%_))
                  (if _%$e128731%_
                      _%$e128731%_
                      (let ((_%$e128734%_ (gx#core-context-root__0)))
                        (if _%$e128734%_
                            _%$e128734%_
                            (let ((__obj128967
                                   (##structure gx#root-context::t '#f '#f)))
                              (let ((__constructor128968
                                     (direct-method-ref
                                      gx#root-context::t
                                      __obj128967
                                      ':init!)))
                                (if __constructor128968
                                    (__constructor128968 __obj128967)
                                    (error '"missing constructor method implementation"
                                           'class:
                                           gx#root-context::t
                                           'method:
                                           ':init!)))
                              __obj128967)))))))
          (if _%ctx128716%_
              (let ((_%id128740%_
                     (##structure-ref
                      _%ctx128716%_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_%path128741%_
                     (##structure-ref
                      _%ctx128716%_
                      '7
                      gx#module-context::t
                      '#f))
                    (_%in128742%_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _%ctx128716%_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_%e128743%_
                     (__make-promise
                      (lambda () (gx#eval-module _%ctx128716%_)))))
                (if (##fx< '8 (##structure-length _%self128721%_))
                    (begin
                      (##unchecked-structure-set!
                       _%self128721%_
                       _%id128740%_
                       '1
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self128721%_
                       (make-hash-table-eq 'size: (##length _%in128742%_))
                       '2
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self128721%_
                       _%super128737%_
                       '3
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self128721%_
                       '#f
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self128721%_
                       '#f
                       '5
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self128721%_
                       _%path128741%_
                       '6
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self128721%_
                       _%in128742%_
                       '7
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self128721%_
                       _%e128743%_
                       '8
                       '#f
                       '#f)
                      '#!void)
                    (error '"struct-instance-init!: too many arguments for struct"
                           _%self128721%_
                           '8
                           (##vector-length _%self128721%_)))
                (##for-each
                 (lambda (_%g128744128746%_)
                   (gx#core-bind-weak-import!__%
                    _%g128744128746%_
                    _%self128721%_))
                 _%in128742%_))
              (if (##fx< '8 (##structure-length _%self128721%_))
                  (begin
                    (##unchecked-structure-set! _%self128721%_ '#f '1 '#f '#f)
                    (##unchecked-structure-set!
                     _%self128721%_
                     (make-hash-table-eq)
                     '2
                     '#f
                     '#f)
                    (##unchecked-structure-set!
                     _%self128721%_
                     _%super128737%_
                     '3
                     '#f
                     '#f)
                    (##unchecked-structure-set! _%self128721%_ '#f '4 '#f '#f)
                    (##unchecked-structure-set! _%self128721%_ '#f '5 '#f '#f)
                    (##unchecked-structure-set! _%self128721%_ '#f '6 '#f '#f)
                    (##unchecked-structure-set! _%self128721%_ '() '7 '#f '#f)
                    (##unchecked-structure-set! _%self128721%_ '#f '8 '#f '#f)
                    '#!void)
                  (error '"struct-instance-init!: too many arguments for struct"
                         _%self128721%_
                         '8
                         (##vector-length _%self128721%_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_%self125355128752%_ _%ctx128753%_)
        (let ((_%root128755%_ '#f))
          (gx#prelude-context:::init!__%
           _%self125355128752%_
           _%ctx128753%_
           _%root128755%_))))
    (define gx#prelude-context:::init!
      (lambda _g128974_
        (let ((_g128973_ (##length _g128974_)))
          (cond ((##fx= _g128973_ 2)
                 (apply gx#prelude-context:::init!__0 _g128974_))
                ((##fx= _g128973_ 3)
                 (apply gx#prelude-context:::init!__% _g128974_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g128974_))))))
    (__bind-method!__%
     gx#prelude-context::t
     ':init!
     gx#prelude-context:::init!
     '#f)
    (define gx#import-export-expander-init!
      (lambda (_%self128588%_ _%e128589%_)
        (if (##fx< '3 (##structure-length _%self128588%_))
            (begin
              (##unchecked-structure-set!
               _%self128588%_
               _%e128589%_
               '1
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self128588%_
               (gx#current-expander-context)
               '2
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self128588%_
               (##fx- (gx#current-expander-phi) '1)
               '3
               '#f
               '#f)
              '#!void)
            (error '"struct-instance-init!: too many arguments for struct"
                   _%self128588%_
                   '3
                   (##vector-length _%self128588%_)))))
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
      (lambda (_%g128214128217%_ _%g128215128219%_)
        (gx#core-apply-user-expander__%
         _%g128214128217%_
         _%g128215128219%_
         'apply-import-expander)))
    (__bind-method!__%
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_%g128085128088%_ _%g128086128090%_)
        (gx#core-apply-user-expander__%
         _%g128085128088%_
         _%g128086128090%_
         'apply-export-expander)))
    (__bind-method!__%
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_%ctx127956%_)
        (let* ((_%path127958%_
                (##structure-ref _%ctx127956%_ '7 gx#module-context::t '#f))
               (_%path127960%_
                (if (pair? _%path127958%_)
                    (##last _%path127958%_)
                    _%path127958%_)))
          (if (string? _%path127960%_) _%path127960%_ '#f))))
    (define gx#import-module__%
      (lambda (_%path127932%_ _%reload?127933%_ _%eval?127934%_)
        (let ((_%ctx127936%_
               ((gx#current-expander-module-import)
                _%path127932%_
                _%reload?127933%_)))
          (if (and _%ctx127936%_ _%eval?127934%_)
              (gx#eval-module _%ctx127936%_)
              '#!void)
          _%ctx127936%_)))
    (define gx#import-module__0
      (lambda (_%path127941%_)
        (let* ((_%reload?127943%_ '#f) (_%eval?127945%_ '#f))
          (gx#import-module__%
           _%path127941%_
           _%reload?127943%_
           _%eval?127945%_))))
    (define gx#import-module__1
      (lambda (_%path127947%_ _%reload?127948%_)
        (let ((_%eval?127950%_ '#f))
          (gx#import-module__%
           _%path127947%_
           _%reload?127948%_
           _%eval?127950%_))))
    (define gx#import-module
      (lambda _g128976_
        (let ((_g128975_ (##length _g128976_)))
          (cond ((##fx= _g128975_ 1) (apply gx#import-module__0 _g128976_))
                ((##fx= _g128975_ 2) (apply gx#import-module__1 _g128976_))
                ((##fx= _g128975_ 3) (apply gx#import-module__% _g128976_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g128976_))))))
    (define gx#eval-module
      (lambda (_%mod127929%_)
        ((gx#current-expander-module-eval) _%mod127929%_)))
    (define gx#core-eval-module
      (lambda (_%obj127909%_)
        (letrec ((_%force-e127911%_
                  (lambda (_%getf127925%_ _%e127926%_)
                    (__call-with-parameters
                     (lambda () (force (_%getf127925%_ _%e127926%_)))
                     gx#current-expander-context
                     _%e127926%_
                     gx#current-expander-phi
                     '0))))
          (let _%recur127913%_ ((_%e127915%_ _%obj127909%_))
            (if (##structure-instance-of? _%e127915%_ 'gx#module-context::t)
                (let ()
                  (let ((_%$e127918%_
                         (gx#core-context-prelude__% _%e127915%_)))
                    (if _%$e127918%_ (_%recur127913%_ _%$e127918%_) '#!void))
                  (_%force-e127911%_ gx#module-context-e _%e127915%_))
                (if (##structure-instance-of?
                     _%e127915%_
                     'gx#prelude-context::t)
                    (_%force-e127911%_ gx#prelude-context-e _%e127915%_)
                    (if (gx#stx-string? _%e127915%_)
                        (_%recur127913%_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _%e127915%_)))
                        (if (gx#core-library-module-path? _%e127915%_)
                            (_%recur127913%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%e127915%_)))
                            (error '"cannot eval module" _%obj127909%_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_%ctx127889%_)
        (let _%lp127891%_ ((_%e127893%_ _%ctx127889%_))
          (if (or (##structure-instance-of? _%e127893%_ 'gx#module-context::t)
                  (##structure-instance-of? _%e127893%_ 'gx#local-context::t))
              (_%lp127891%_ (##unchecked-structure-ref _%e127893%_ '3 '#f '#f))
              (if (##structure-instance-of? _%e127893%_ 'gx#prelude-context::t)
                  _%e127893%_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_%ctx127905%_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _%ctx127905%_))))
    (define gx#core-context-prelude
      (lambda _g128978_
        (let ((_g128977_ (##length _g128978_)))
          (cond ((##fx= _g128977_ 0)
                 (apply gx#core-context-prelude__0 _g128978_))
                ((##fx= _g128977_ 1)
                 (apply gx#core-context-prelude__% _g128978_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g128978_))))))
    (define gx#core-module->prelude-context
      (lambda (_%ctx127880%_)
        (let ((_%$e127882%_ (__hash-get gx#__module-registry _%ctx127880%_)))
          (if _%$e127882%_
              _%$e127882%_
              (let ((_%pre127886%_
                     (let ((__obj128969
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
                        __obj128969
                        _%ctx127880%_)
                       __obj128969)))
                (__hash-put! gx#__module-registry _%ctx127880%_ _%pre127886%_)
                _%pre127886%_)))))
    (define gx#core-import-module__%
      (lambda (_%rpath127752%_ _%reload?127753%_)
        (letrec ((_%import-source127755%_
                  (lambda (_%path127844%_)
                    (if (member _%path127844%_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _%path127844%_)
                        '#!void)
                    (__call-with-parameters
                     (lambda ()
                       (let ((_g128979_ (gx#core-read-module _%path127844%_)))
                         (begin
                           (let ((_g128980_
                                  (if (##values? _g128979_)
                                      (##vector-length _g128979_)
                                      1)))
                             (if (not (##fx= _g128980_ 4))
                                 (error "Context expects 4 values" _g128980_)))
                           (let ((_%pre127847%_ (##vector-ref _g128979_ 0))
                                 (_%id127848%_ (##vector-ref _g128979_ 1))
                                 (_%ns127849%_ (##vector-ref _g128979_ 2))
                                 (_%body127850%_ (##vector-ref _g128979_ 3)))
                             (let* ((_%prelude127860%_
                                     (if (##structure-instance-of?
                                          _%pre127847%_
                                          'gx#prelude-context::t)
                                         _%pre127847%_
                                         (if (##structure-instance-of?
                                              _%pre127847%_
                                              'gx#module-context::t)
                                             (gx#core-module->prelude-context
                                              _%pre127847%_)
                                             (if (string? _%pre127847%_)
                                                 (gx#core-module->prelude-context
                                                  (gx#core-import-module__0
                                                   _%pre127847%_))
                                                 (if (not _%pre127847%_)
                                                     (let ((_%$e127856%_
                                                            (gx#current-expander-module-prelude)))
                                                       (if _%$e127856%_
                                                           _%$e127856%_
                                                           (let ((__obj128970
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
                     (gx#prelude-context:::init!__0 __obj128970 '#f)
                     __obj128970)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error '"cannot import module; unknown prelude"
                                                            _%rpath127752%_
                                                            _%pre127847%_))))))
                                    (_%ctx127862%_
                                     (let ((__obj128971
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
                                        __obj128971
                                        _%id127848%_
                                        _%prelude127860%_
                                        _%ns127849%_
                                        _%path127844%_)
                                       __obj128971))
                                    (_%body127864%_
                                     (gx#core-expand-module-begin
                                      _%body127850%_
                                      _%ctx127862%_))
                                    (_%body127866%_
                                     (gx#core-quote-syntax__%
                                      (gx#core-cons '%#begin _%body127864%_)
                                      _%path127844%_
                                      _%ctx127862%_
                                      '())))
                               (##unchecked-structure-set!
                                _%ctx127862%_
                                (__make-promise
                                 (lambda () (gx#eval-syntax* _%body127866%_)))
                                '10
                                '#f
                                '#f)
                               (##unchecked-structure-set!
                                _%ctx127862%_
                                _%body127866%_
                                '11
                                '#f
                                '#f)
                               (__hash-put!
                                gx#__module-registry
                                _%path127844%_
                                _%ctx127862%_)
                               (__hash-put!
                                gx#__module-registry
                                _%id127848%_
                                _%ctx127862%_)
                               _%ctx127862%_)))))
                     gx#current-expander-context
                     (gx#core-context-root__0)
                     gx#current-expander-marks
                     '()
                     gx#current-expander-phi
                     '0
                     gx#current-expander-path
                     (cons _%path127844%_ (gx#current-expander-path))
                     gx#current-import-expander-phi
                     '#f
                     gx#current-export-expander-phi
                     '#f)))
                 (_%import-submodule127756%_
                  (lambda (_%rpath127772%_)
                    (let* ((_%rpath127773127780%_ _%rpath127772%_)
                           (_%E127775127784%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%rpath127773127780%_
                                     '([origin . refs]))
                              '#!void))
                           (_%K127776127832%_
                            (lambda (_%refs127787%_ _%origin127788%_)
                              (let ((_%ctx127790%_
                                     (if _%origin127788%_
                                         (gx#core-import-module__%
                                          _%origin127788%_
                                          _%reload?127753%_)
                                         (gx#current-expander-context))))
                                (let _%lp127792%_ ((_%rest127794%_
                                                    _%refs127787%_)
                                                   (_%ctx127795%_
                                                    _%ctx127790%_))
                                  (let* ((_%rest127796127804%_ _%rest127794%_)
                                         (_%else127798127812%_
                                          (lambda () _%ctx127795%_))
                                         (_%K127800127820%_
                                          (lambda (_%rest127815%_ _%id127816%_)
                                            (let ((_%bind127818%_
                                                   (gx#resolve-identifier__%
                                                    _%id127816%_
                                                    '0
                                                    _%ctx127795%_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _%bind127818%_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _%bind127818%_
                                                         '4
                                                         '#f
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_%lp127792%_
                                                   _%rest127815%_
                                                   (##unchecked-structure-ref
                                                    _%bind127818%_
                                                    '4
                                                    '#f
                                                    '#f))
                                                  (error '"cannot import submodule; not bound as a module"
                                                         _%rpath127772%_
                                                         _%id127816%_
                                                         _%bind127818%_))))))
                                    (if (pair? _%rest127796127804%_)
                                        (let ((_%hd127801127823%_
                                               (##car _%rest127796127804%_))
                                              (_%tl127802127825%_
                                               (##cdr _%rest127796127804%_)))
                                          (let* ((_%id127828%_
                                                  _%hd127801127823%_)
                                                 (_%rest127830%_
                                                  _%tl127802127825%_))
                                            (_%K127800127820%_
                                             _%rest127830%_
                                             _%id127828%_)))
                                        (_%else127798127812%_))))))))
                      (if (pair? _%rpath127773127780%_)
                          (let ((_%hd127777127835%_
                                 (##car _%rpath127773127780%_))
                                (_%tl127778127837%_
                                 (##cdr _%rpath127773127780%_)))
                            (let* ((_%origin127840%_ _%hd127777127835%_)
                                   (_%refs127842%_ _%tl127778127837%_))
                              (_%K127776127832%_
                               _%refs127842%_
                               _%origin127840%_)))
                          (_%E127775127784%_))))))
          (let ((_%$e127758%_
                 (if (not _%reload?127753%_)
                     (__hash-get gx#__module-registry _%rpath127752%_)
                     '#f)))
            (if _%$e127758%_
                _%$e127758%_
                (if (list? _%rpath127752%_)
                    (_%import-submodule127756%_ _%rpath127752%_)
                    (if (gx#core-library-module-path? _%rpath127752%_)
                        (let ((_%ctx127763%_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _%rpath127752%_)
                                _%reload?127753%_)))
                          (__hash-put!
                           gx#__module-registry
                           _%rpath127752%_
                           _%ctx127763%_)
                          _%ctx127763%_)
                        (let* ((_%npath127766%_
                                (path-normalize _%rpath127752%_))
                               (_%$e127768%_
                                (if (not _%reload?127753%_)
                                    (__hash-get
                                     gx#__module-registry
                                     _%npath127766%_)
                                    '#f)))
                          (if _%$e127768%_
                              _%$e127768%_
                              (_%import-source127755%_
                               _%npath127766%_))))))))))
    (define gx#core-import-module__0
      (lambda (_%rpath127873%_)
        (let ((_%reload?127875%_ '#f))
          (gx#core-import-module__% _%rpath127873%_ _%reload?127875%_))))
    (define gx#core-import-module
      (lambda _g128982_
        (let ((_g128981_ (##length _g128982_)))
          (cond ((##fx= _g128981_ 1)
                 (apply gx#core-import-module__0 _g128982_))
                ((##fx= _g128981_ 2)
                 (apply gx#core-import-module__% _g128982_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g128982_))))))
    (define gx#core-read-module
      (lambda (_%path127741%_)
        (__with-catch
         (lambda (_%exn127743%_)
           (if (and (datum-parsing-exception? _%exn127743%_)
                    (eq? (datum-parsing-exception-filepos _%exn127743%_) '0))
               (gx#core-read-module/lang _%path127741%_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _%path127741%_
                (__call-with-parameters
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_%g127745127747%_)
                      (display-exception__% _%exn127743%_ _%g127745127747%_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _%path127741%_)))))
    (define gx#core-read-module/sexp
      (lambda (_%path127593%_)
        (let _%lp127595%_ ((_%body127597%_
                            (read-syntax-from-file _%path127593%_))
                           (_%pre127598%_ '#f)
                           (_%ns127599%_ '#f)
                           (_%pkg127600%_ '#f))
          (let* ((_%e127601127625%_ _%body127597%_)
                 (_%E127617127651%_
                  (lambda ()
                    (let ((_g128983_
                           (if _%pkg127600%_
                               (values _%pre127598%_
                                       _%ns127599%_
                                       _%pkg127600%_)
                               (gx#core-read-module-package
                                _%path127593%_
                                _%pre127598%_
                                _%ns127599%_))))
                      (begin
                        (let ((_g128984_
                               (if (##values? _g128983_)
                                   (##vector-length _g128983_)
                                   1)))
                          (if (not (##fx= _g128984_ 3))
                              (error "Context expects 3 values" _g128984_)))
                        (let ((_%pre127629%_ (##vector-ref _g128983_ 0))
                              (_%ns127630%_ (##vector-ref _g128983_ 1))
                              (_%pkg127631%_ (##vector-ref _g128983_ 2)))
                          (let* ((_%prelude127637%_
                                  (if (gx#core-bound-module-prelude?
                                       _%pre127629%_)
                                      (gx#syntax-local-e__0 _%pre127629%_)
                                      (if (gx#core-library-module-path?
                                           _%pre127629%_)
                                          (gx#core-resolve-library-module-path
                                           _%pre127629%_)
                                          (if (gx#stx-string? _%pre127629%_)
                                              (gx#core-resolve-module-path__%
                                               _%pre127629%_
                                               _%path127593%_)
                                              (gx#stx-e _%pre127629%_)))))
                                 (_%path-id127639%_
                                  (gx#core-module-path->namespace
                                   _%path127593%_))
                                 (_%pkg-id127641%_
                                  (if _%pkg127631%_
                                      (##string-append
                                       _%pkg127631%_
                                       '"/"
                                       _%path-id127639%_)
                                      _%path-id127639%_))
                                 (_%module-id127643%_
                                  (##string->symbol _%pkg-id127641%_))
                                 (_%module-ns127648%_
                                  (if (eq? _%ns127630%_ '#!void)
                                      '#f
                                      (let ((_%$e127645%_ _%ns127630%_))
                                        (if _%$e127645%_
                                            _%$e127645%_
                                            _%pkg-id127641%_)))))
                            (values _%prelude127637%_
                                    _%module-id127643%_
                                    _%module-ns127648%_
                                    _%body127597%_)))))))
                 (_%E127610127683%_
                  (lambda ()
                    (if (gx#stx-pair? _%e127601127625%_)
                        (let ((_%e127618127655%_
                               (gx#syntax-e _%e127601127625%_)))
                          (let ((_%hd127619127658%_ (##car _%e127618127655%_))
                                (_%tl127620127660%_ (##cdr _%e127618127655%_)))
                            (if (eq? (gx#stx-e _%hd127619127658%_) 'package:)
                                (if (gx#stx-pair? _%tl127620127660%_)
                                    (let ((_%e127621127663%_
                                           (gx#syntax-e _%tl127620127660%_)))
                                      (let ((_%hd127622127666%_
                                             (##car _%e127621127663%_))
                                            (_%tl127623127668%_
                                             (##cdr _%e127621127663%_)))
                                        (let* ((_%pkg127671%_
                                                _%hd127622127666%_)
                                               (_%rest127673%_
                                                _%tl127623127668%_)
                                               (_%pkg127681%_
                                                (if (gx#identifier?
                                                     _%pkg127671%_)
                                                    (symbol->string
                                                     (gx#stx-e _%pkg127671%_))
                                                    (if (or (gx#stx-string?
                                                             _%pkg127671%_)
                                                            (gx#stx-false?
                                                             _%pkg127671%_))
                                                        (gx#stx-e
                                                         _%pkg127671%_)
                                                        (gx#raise-syntax-error
                                                         'import
                                                         '"Bad syntax; Illegal package name"
                                                         _%pkg127671%_)))))
                                          (_%lp127595%_
                                           _%rest127673%_
                                           _%pre127598%_
                                           _%ns127599%_
                                           _%pkg127681%_))))
                                    (_%E127617127651%_))
                                (_%E127617127651%_))))
                        (_%E127617127651%_))))
                 (_%E127603127713%_
                  (lambda ()
                    (if (gx#stx-pair? _%e127601127625%_)
                        (let ((_%e127611127687%_
                               (gx#syntax-e _%e127601127625%_)))
                          (let ((_%hd127612127690%_ (##car _%e127611127687%_))
                                (_%tl127613127692%_ (##cdr _%e127611127687%_)))
                            (if (eq? (gx#stx-e _%hd127612127690%_) 'namespace:)
                                (if (gx#stx-pair? _%tl127613127692%_)
                                    (let ((_%e127614127695%_
                                           (gx#syntax-e _%tl127613127692%_)))
                                      (let ((_%hd127615127698%_
                                             (##car _%e127614127695%_))
                                            (_%tl127616127700%_
                                             (##cdr _%e127614127695%_)))
                                        (let* ((_%ns127703%_
                                                _%hd127615127698%_)
                                               (_%rest127705%_
                                                _%tl127616127700%_)
                                               (_%ns127711%_
                                                (if (gx#identifier?
                                                     _%ns127703%_)
                                                    (symbol->string
                                                     (gx#stx-e _%ns127703%_))
                                                    (if (gx#stx-string?
                                                         _%ns127703%_)
                                                        (gx#stx-e _%ns127703%_)
                                                        (if (gx#stx-false?
                                                             _%ns127703%_)
                                                            '#!void
                                                            (gx#raise-syntax-error
                                                             'import
                                                             '"Bad syntax; illegal namespace"
                                                             _%ns127703%_))))))
                                          (_%lp127595%_
                                           _%rest127705%_
                                           _%pre127598%_
                                           _%ns127711%_
                                           _%pkg127600%_))))
                                    (_%E127610127683%_))
                                (_%E127610127683%_))))
                        (_%E127610127683%_))))
                 (_%E127602127737%_
                  (lambda ()
                    (if (gx#stx-pair? _%e127601127625%_)
                        (let ((_%e127604127717%_
                               (gx#syntax-e _%e127601127625%_)))
                          (let ((_%hd127605127720%_ (##car _%e127604127717%_))
                                (_%tl127606127722%_ (##cdr _%e127604127717%_)))
                            (if (eq? (gx#stx-e _%hd127605127720%_) 'prelude:)
                                (if (gx#stx-pair? _%tl127606127722%_)
                                    (let ((_%e127607127725%_
                                           (gx#syntax-e _%tl127606127722%_)))
                                      (let ((_%hd127608127728%_
                                             (##car _%e127607127725%_))
                                            (_%tl127609127730%_
                                             (##cdr _%e127607127725%_)))
                                        (let* ((_%prelude127733%_
                                                _%hd127608127728%_)
                                               (_%rest127735%_
                                                _%tl127609127730%_))
                                          (_%lp127595%_
                                           _%rest127735%_
                                           _%prelude127733%_
                                           _%ns127599%_
                                           _%pkg127600%_))))
                                    (_%E127603127713%_))
                                (_%E127603127713%_))))
                        (_%E127603127713%_)))))
            (_%E127602127737%_)))))
    (define gx#core-read-module/lang
      (lambda (_%path127415%_)
        (letrec ((_%default-read-module-body127417%_
                  (lambda (_%inp127585%_)
                    (let _%lp127587%_ ((_%body127589%_ '()))
                      (let ((_%next127591%_ (read-syntax__% _%inp127585%_)))
                        (if (eof-object? _%next127591%_)
                            (reverse _%body127589%_)
                            (_%lp127587%_
                             (cons _%next127591%_ _%body127589%_)))))))
                 (_%read-body127418%_
                  (lambda (_%inp127503%_
                           _%pre127504%_
                           _%ns127505%_
                           _%pkg127506%_
                           _%args127507%_)
                    (let ((_g128985_
                           (if _%pkg127506%_
                               (values _%pre127504%_
                                       _%ns127505%_
                                       _%pkg127506%_)
                               (gx#core-read-module-package
                                _%path127415%_
                                _%pre127504%_
                                _%ns127505%_))))
                      (begin
                        (let ((_g128986_
                               (if (##values? _g128985_)
                                   (##vector-length _g128985_)
                                   1)))
                          (if (not (##fx= _g128986_ 3))
                              (error "Context expects 3 values" _g128986_)))
                        (let ((_%pre127509%_ (##vector-ref _g128985_ 0))
                              (_%ns127510%_ (##vector-ref _g128985_ 1))
                              (_%pkg127511%_ (##vector-ref _g128985_ 2)))
                          (let* ((_%prelude127513%_
                                  (gx#import-module__0 _%pre127509%_))
                                 (_%read-module-body127568%_
                                  (let ((_%$e127559%_
                                         (__find (lambda (_%e127514127516%_)
                                                   (let* ((_%g127518127528%_
                                                           _%e127514127516%_)
                                                          (_%else127520127536%_
                                                           (lambda () '#f))
                                                          (_%K127522127540%_
                                                           (lambda () '#t)))
                                                     (if (##structure-direct-instance-of?
                                                          _%g127518127528%_
                                                          'gx#module-export::t)
                                                         (let* ((_%e127523127543%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##unchecked-structure-ref
                          _%g127518127528%_
                          '1
                          '#f
                          '#f))
                        (_%e127524127546%_
                         (##unchecked-structure-ref
                          _%g127518127528%_
                          '2
                          '#f
                          '#f))
                        (_%e127525127549%_
                         (##unchecked-structure-ref
                          _%g127518127528%_
                          '3
                          '#f
                          '#f)))
                   (if (##eq? _%e127525127549%_ '1)
                       (let ((_%e127526127552%_
                              (##unchecked-structure-ref
                               _%g127518127528%_
                               '4
                               '#f
                               '#f)))
                         (if ((lambda (_%g127554127556%_)
                                (eq? _%g127554127556%_ 'read-module-body))
                              _%e127526127552%_)
                             (_%K127522127540%_)
                             (_%else127520127536%_)))
                       (_%else127520127536%_)))
                 (_%else127520127536%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (##unchecked-structure-ref
                                                  _%prelude127513%_
                                                  '9
                                                  '#f
                                                  '#f))))
                                    (if _%$e127559%_
                                        ((lambda (_%xport127562%_)
                                           (let ((_%proc127565%_
                                                  (__with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _%xport127562%_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _%proc127565%_)
                                                 _%proc127565%_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _%path127415%_
                                                  _%pre127509%_
                                                  _%proc127565%_))))
                                         _%$e127559%_)
                                        _%default-read-module-body127417%_)))
                                 (_%path-id127570%_
                                  (gx#core-module-path->namespace
                                   _%path127415%_))
                                 (_%pkg-id127572%_
                                  (if _%pkg127511%_
                                      (##string-append
                                       _%pkg127511%_
                                       '"/"
                                       _%path-id127570%_)
                                      _%path-id127570%_))
                                 (_%module-id127574%_
                                  (##string->symbol _%pkg-id127572%_))
                                 (_%module-ns127579%_
                                  (let ((_%$e127576%_ _%ns127510%_))
                                    (if _%$e127576%_
                                        _%$e127576%_
                                        _%pkg-id127572%_)))
                                 (_%body127582%_
                                  (__call-with-parameters
                                   (lambda ()
                                     (_%read-module-body127568%_
                                      _%inp127503%_))
                                   gx#current-module-reader-path
                                   _%path127415%_
                                   gx#current-module-reader-args
                                   _%args127507%_)))
                            (values _%prelude127513%_
                                    _%module-id127574%_
                                    _%module-ns127579%_
                                    _%body127582%_)))))))
                 (_%string-e127419%_
                  (lambda (_%obj127497%_ _%what127498%_)
                    (if (string? _%obj127497%_)
                        _%obj127497%_
                        (if (symbol? _%obj127497%_)
                            (##symbol->string _%obj127497%_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _%what127498%_)
                             _%path127415%_
                             _%obj127497%_)))))
                 (_%read-lang-args127420%_
                  (lambda (_%inp127452%_ _%args127453%_)
                    (let* ((_%args127454127462%_ _%args127453%_)
                           (_%else127456127470%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _%path127415%_)))
                           (_%K127458127485%_
                            (lambda (_%args127473%_ _%prelude127474%_)
                              (let* ((_%pkg127476%_
                                      (pgetq__0 'package: _%args127473%_))
                                     (_%pkg127478%_
                                      (if _%pkg127476%_
                                          (_%string-e127419%_
                                           _%pkg127476%_
                                           '"package")
                                          '#f))
                                     (_%ns127480%_
                                      (pgetq__0 'namespace: _%args127473%_))
                                     (_%ns127482%_
                                      (if _%ns127480%_
                                          (_%string-e127419%_
                                           _%ns127480%_
                                           '"namespace")
                                          '#f)))
                                (_%read-body127418%_
                                 _%inp127452%_
                                 _%prelude127474%_
                                 _%ns127482%_
                                 _%pkg127478%_
                                 _%args127473%_)))))
                      (if (pair? _%args127454127462%_)
                          (let ((_%hd127459127488%_
                                 (##car _%args127454127462%_))
                                (_%tl127460127490%_
                                 (##cdr _%args127454127462%_)))
                            (let* ((_%prelude127493%_ _%hd127459127488%_)
                                   (_%args127495%_ _%tl127460127490%_))
                              (_%K127458127485%_
                               _%args127495%_
                               _%prelude127493%_)))
                          (_%else127456127470%_)))))
                 (_%read-lang127421%_
                  (lambda (_%inp127426%_)
                    (let* ((_%head127428%_ (read-line _%inp127426%_))
                           (_%$e127430%_
                            (string-index__0 _%head127428%_ '#\space)))
                      (if _%$e127430%_
                          ((lambda (_%ix127433%_)
                             (let ((_%lang127435%_
                                    (substring
                                     _%head127428%_
                                     '0
                                     _%ix127433%_)))
                               (if (equal? _%lang127435%_ '"#lang")
                                   (let* ((_%rest127437%_
                                           (substring
                                            _%head127428%_
                                            (##fx+ _%ix127433%_ '1)
                                            (string-length _%head127428%_)))
                                          (_%args127448%_
                                           (__with-catch
                                            (lambda (_%g127438127440%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _%path127415%_
                                               _%g127438127440%_))
                                            (lambda ()
                                              (call-with-input-string
                                               _%rest127437%_
                                               (lambda (_%g127443127445%_)
                                                 (read-all
                                                  _%g127443127445%_
                                                  read)))))))
                                     (_%read-lang-args127420%_
                                      _%inp127426%_
                                      _%args127448%_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _%path127415%_))))
                           _%$e127430%_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _%path127415%_)))))
                 (_%read-e127422%_
                  (lambda (_%inp127424%_)
                    (if (eq? (peek-char _%inp127424%_) '#\#)
                        (_%read-lang127421%_ _%inp127424%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _%path127415%_)))))
          (gx#call-with-input-source-file _%path127415%_ _%read-e127422%_))))
    (define gx#core-read-module-package
      (lambda (_%path127363%_ _%pre127364%_ _%ns127365%_)
        (letrec ((_%string-e127367%_
                  (lambda (_%e127410%_)
                    (if (symbol? _%e127410%_)
                        (##symbol->string _%e127410%_)
                        (if (string? _%e127410%_)
                            _%e127410%_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%e127410%_))))))
          (let _%lp127369%_ ((_%dir127371%_ (path-directory _%path127363%_))
                             (_%pkg-path127372%_ '()))
            (let ((_%gerbil.pkg127374%_
                   (path-expand '"gerbil.pkg" _%dir127371%_)))
              (if (##file-exists? _%gerbil.pkg127374%_)
                  (let ((_%plist127376%_
                         (gx#core-library-package-plist__% _%dir127371%_ '#t)))
                    (if (null? _%plist127376%_)
                        (let ((_%pkg127379%_
                               (if (null? _%pkg-path127372%_)
                                   '#f
                                   (string-join _%pkg-path127372%_ '"/"))))
                          (values _%pre127364%_ _%ns127365%_ _%pkg127379%_))
                        (if (list? _%plist127376%_)
                            (let* ((_%root127382%_
                                    (pgetq__0 'package: _%plist127376%_))
                                   (_%pkg127386%_
                                    (let ((_%pkg-path127384%_
                                           (if _%root127382%_
                                               (cons (_%string-e127367%_
                                                      _%root127382%_)
                                                     _%pkg-path127372%_)
                                               _%pkg-path127372%_)))
                                      (if (null? _%pkg-path127384%_)
                                          '#f
                                          (string-join
                                           _%pkg-path127384%_
                                           '"/"))))
                                   (_%ns127393%_
                                    (let ((_%ns127391%_
                                           (let ((_%$e127388%_ _%ns127365%_))
                                             (if _%$e127388%_
                                                 _%$e127388%_
                                                 (pgetq__0
                                                  'namespace:
                                                  _%plist127376%_)))))
                                      (if _%ns127391%_
                                          (_%string-e127367%_ _%ns127391%_)
                                          '#f)))
                                   (_%pre127398%_
                                    (let ((_%$e127395%_ _%pre127364%_))
                                      (if _%$e127395%_
                                          _%$e127395%_
                                          (pgetq__0
                                           'prelude:
                                           _%plist127376%_)))))
                              (values _%pre127398%_
                                      _%ns127393%_
                                      _%pkg127386%_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%plist127376%_))))
                  (let ((_%dir*127402%_
                         (path-strip-trailing-directory-separator
                          _%dir127371%_)))
                    (if (or (__string-empty? _%dir*127402%_)
                            (equal? _%dir127371%_ _%dir*127402%_))
                        (values _%pre127364%_ _%ns127365%_ '#f)
                        (let ((_%xpath127407%_
                               (path-strip-directory _%dir*127402%_))
                              (_%xdir127408%_ (path-directory _%dir*127402%_)))
                          (_%lp127369%_
                           _%xdir127408%_
                           (cons _%xpath127407%_ _%pkg-path127372%_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_%path127361%_)
        (path-strip-extension (path-strip-directory _%path127361%_))))
    (define gx#core-module-path->id
      (lambda (_%path127359%_)
        (##string->symbol (gx#core-module-path->namespace _%path127359%_))))
    (define gx#core-resolve-module-path__%
      (lambda (_%stx-path127338%_ _%rel127339%_)
        (let* ((_%path127341%_ (gx#stx-e _%stx-path127338%_))
               (_%path127343%_
                (if (__string-empty? (path-extension _%path127341%_))
                    (##string-append _%path127341%_ '".ss")
                    _%path127341%_)))
          (gx#core-resolve-path__%
           _%path127343%_
           (let ((_%$e127346%_ (gx#stx-source _%stx-path127338%_)))
             (if _%$e127346%_ _%$e127346%_ _%rel127339%_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_%stx-path127352%_)
        (let ((_%rel127354%_ '#f))
          (gx#core-resolve-module-path__% _%stx-path127352%_ _%rel127354%_))))
    (define gx#core-resolve-module-path
      (lambda _g128988_
        (let ((_g128987_ (##length _g128988_)))
          (cond ((##fx= _g128987_ 1)
                 (apply gx#core-resolve-module-path__0 _g128988_))
                ((##fx= _g128987_ 2)
                 (apply gx#core-resolve-module-path__% _g128988_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g128988_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_%libpath127223%_)
        (let* ((_%spath127225%_ (symbol->string (gx#stx-e _%libpath127223%_)))
               (_%spath127227%_
                (substring
                 _%spath127225%_
                 '1
                 (##string-length _%spath127225%_)))
               (_%ext127229%_ (path-extension _%spath127227%_))
               (_%ssi127231%_
                (if (__string-empty? _%ext127229%_)
                    (##string-append _%spath127227%_ '".ssi")
                    (##string-append
                     (path-strip-extension _%spath127227%_)
                     '".ssi")))
               (_%srcs127235%_
                (if (__string-empty? _%ext127229%_)
                    (##map (lambda (_%ext127233%_)
                             (string-append _%spath127227%_ _%ext127233%_))
                           '(".ss" ".sld" ".scm"))
                    (cons _%spath127227%_ '()))))
          (let _%lp127238%_ ((_%rest127240%_ (load-path)))
            (let* ((_%rest127241127250%_ _%rest127240%_)
                   (_%E127244127254%_
                    (lambda ()
                      (error '"No clause matching"
                             _%rest127241127250%_
                             '([dir . rest])
                             '([]))
                      '#!void)))
              (let ((_%K127246127325%_
                     (lambda (_%rest127265%_ _%dir127266%_)
                       (letrec ((_%resolve127268%_
                                 (lambda (_%ssi127281%_ _%srcs127282%_)
                                   (let ((_%compiled-path127284%_
                                          (path-expand
                                           _%ssi127281%_
                                           _%dir127266%_)))
                                     (if (##file-exists?
                                          _%compiled-path127284%_)
                                         (path-normalize
                                          _%compiled-path127284%_)
                                         (let _%lpr127286%_ ((_%rest-src127288%_
                                                              _%srcs127282%_))
                                           (let* ((_%rest-src127289127297%_
                                                   _%rest-src127288%_)
                                                  (_%else127291127305%_
                                                   (lambda ()
                                                     (_%lp127238%_
                                                      _%rest127265%_)))
                                                  (_%K127293127313%_
                                                   (lambda (_%rest-src127308%_
                                                            _%src127309%_)
                                                     (let ((_%src-path127311%_
                                                            (path-expand
                                                             _%src127309%_
                                                             _%dir127266%_)))
                                                       (if (##file-exists?
                                                            _%src-path127311%_)
                                                           (path-normalize
                                                            _%src-path127311%_)
                                                           (_%lpr127286%_
                                                            _%rest-src127308%_))))))
                                             (if (pair? _%rest-src127289127297%_)
                                                 (let ((_%hd127294127316%_
                                                        (##car _%rest-src127289127297%_))
                                                       (_%tl127295127318%_
                                                        (##cdr _%rest-src127289127297%_)))
                                                   (let* ((_%src127321%_
                                                           _%hd127294127316%_)
                                                          (_%rest-src127323%_
                                                           _%tl127295127318%_))
                                                     (_%K127293127313%_
                                                      _%rest-src127323%_
                                                      _%src127321%_)))
                                                 (_%else127291127305%_)))))))))
                         (let ((_%$e127270%_
                                (gx#core-library-package-path-prefix
                                 _%dir127266%_)))
                           (if _%$e127270%_
                               ((lambda (_%prefix127273%_)
                                  (if (string-prefix?
                                       _%prefix127273%_
                                       _%spath127227%_)
                                      (let ((_%ssi127277%_
                                             (substring
                                              _%ssi127231%_
                                              (string-length _%prefix127273%_)
                                              (##string-length _%ssi127231%_)))
                                            (_%srcs127278%_
                                             (##map (lambda (_%src127275%_)
                                                      (substring
                                                       _%src127275%_
                                                       (string-length
                                                        _%prefix127273%_)
                                                       (string-length
                                                        _%src127275%_)))
                                                    _%srcs127235%_)))
                                        (_%resolve127268%_
                                         _%ssi127277%_
                                         _%srcs127278%_))
                                      (_%lp127238%_ _%rest127265%_)))
                                _%$e127270%_)
                               (_%resolve127268%_
                                _%ssi127231%_
                                _%srcs127235%_))))))
                    (_%K127245127259%_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"cannot find library module"
                        _%libpath127223%_))))
                (let ((_%try-match127243127262%_
                       (lambda ()
                         (if (null? _%rest127241127250%_)
                             (_%K127245127259%_)
                             (_%E127244127254%_)))))
                  (if (pair? _%rest127241127250%_)
                      (let ((_%tl127248127330%_ (##cdr _%rest127241127250%_))
                            (_%hd127247127328%_ (##car _%rest127241127250%_)))
                        (let ((_%dir127333%_ _%hd127247127328%_)
                              (_%rest127335%_ _%tl127248127330%_))
                          (_%K127246127325%_ _%rest127335%_ _%dir127333%_)))
                      (_%try-match127243127262%_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_%modpath127191%_)
        (letrec ((_%resolve127193%_
                  (lambda (_%path127214%_ _%base127215%_)
                    (let ((_%$e127217%_
                           (string-rindex__0 _%base127215%_ '#\/)))
                      (if _%$e127217%_
                          ((lambda (_%idx127220%_)
                             (gx#core-resolve-library-module-path
                              (##string->symbol
                               (string-append
                                '":"
                                (substring _%base127215%_ '0 _%idx127220%_)
                                '"/"
                                _%path127214%_))))
                           _%$e127217%_)
                          (gx#core-resolve-library-module-path
                           (##string->symbol
                            (string-append '":" _%path127214%_))))))))
          (let ((_%spath127195%_ (symbol->string (gx#stx-e _%modpath127191%_)))
                (_%mod127196%_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _%mod127196%_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"cannot resolve relative module path; not in module context"
                 _%modpath127191%_))
            (let ((_%mpath127198%_
                   (symbol->string
                    (##structure-ref
                     _%mod127196%_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _%lp127200%_ ((_%spath127202%_ _%spath127195%_)
                                 (_%mpath127203%_ _%mpath127198%_))
                (if (string-prefix? '"../" _%spath127202%_)
                    (let ((_%$e127206%_
                           (string-rindex__0 _%mpath127203%_ '#\/)))
                      (if _%$e127206%_
                          ((lambda (_%idx127209%_)
                             (_%lp127200%_
                              (substring
                               _%spath127202%_
                               '3
                               (string-length _%spath127202%_))
                              (substring _%mpath127203%_ '0 _%idx127209%_)))
                           _%$e127206%_)
                          (gx#raise-syntax-error
                           '#f
                           '"cannot resolve relative module path; illegal traversal"
                           _%modpath127191%_)))
                    (if (string-prefix? '"./" _%spath127202%_)
                        (_%lp127200%_
                         (substring
                          _%spath127202%_
                          '2
                          (string-length _%spath127202%_))
                         _%mpath127203%_)
                        (_%resolve127193%_
                         _%spath127202%_
                         _%mpath127203%_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_%dir127183%_)
        (let ((_%$e127185%_
               (pgetq__0
                'package:
                (gx#core-library-package-plist__0 _%dir127183%_))))
          (if _%$e127185%_
              ((lambda (_%pkg127188%_)
                 (##string-append (symbol->string _%pkg127188%_) '"/"))
               _%$e127185%_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_%dir127153%_ _%exists?127154%_)
        (let ((_%$e127156%_ (__hash-get gx#__module-pkg-cache _%dir127153%_)))
          (if _%$e127156%_
              _%$e127156%_
              (let* ((_%gerbil.pkg127160%_
                      (path-expand '"gerbil.pkg" _%dir127153%_))
                     (_%plist127170%_
                      (if (or _%exists?127154%_
                              (##file-exists? _%gerbil.pkg127160%_))
                          (let ((_%e127165%_
                                 (gx#call-with-input-source-file
                                  _%gerbil.pkg127160%_
                                  read)))
                            (if (eof-object? _%e127165%_)
                                '()
                                (if (list? _%e127165%_)
                                    _%e127165%_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _%gerbil.pkg127160%_
                                     _%e127165%_))))
                          '())))
                (__hash-put!
                 gx#__module-pkg-cache
                 _%dir127153%_
                 _%plist127170%_)
                _%plist127170%_)))))
    (define gx#core-library-package-plist__0
      (lambda (_%dir127176%_)
        (let ((_%exists?127178%_ '#f))
          (gx#core-library-package-plist__% _%dir127176%_ _%exists?127178%_))))
    (define gx#core-library-package-plist
      (lambda _g128990_
        (let ((_g128989_ (##length _g128990_)))
          (cond ((##fx= _g128989_ 1)
                 (apply gx#core-library-package-plist__0 _g128990_))
                ((##fx= _g128989_ 2)
                 (apply gx#core-library-package-plist__% _g128990_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g128990_))))))
    (define gx#core-library-module-path?
      (lambda (_%stx127150%_)
        (gx#core-special-module-path? _%stx127150%_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_%stx127148%_)
        (gx#core-special-module-path? _%stx127148%_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_%stx127143%_ _%char127144%_)
        (if (gx#identifier? _%stx127143%_)
            (if (interned-symbol? (gx#stx-e _%stx127143%_))
                (let ((_%str127146%_
                       (symbol->string (gx#stx-e _%stx127143%_))))
                  (if (##fx> (##string-length _%str127146%_) '1)
                      (eq? (string-ref _%str127146%_ '0) _%char127144%_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_%stx127137%_)
        (gx#core-bound-identifier?__%
         _%stx127137%_
         (lambda (_%g127138127140%_)
           (gx#expander-binding?__% _%g127138127140%_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_%stx127131%_)
        (gx#core-bound-identifier?__%
         _%stx127131%_
         (lambda (_%g127132127134%_)
           (gx#expander-binding?__% _%g127132127134%_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_%stx127118%_)
        (letrec ((_%module-prelude?127120%_
                  (lambda (_%e127126%_)
                    (let ((_%$e127128%_
                           (##structure-instance-of?
                            _%e127126%_
                            'gx#module-context::t)))
                      (if _%$e127128%_
                          _%$e127128%_
                          (##structure-instance-of?
                           _%e127126%_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _%stx127118%_
           (lambda (_%g127121127123%_)
             (gx#expander-binding?__%
              _%g127121127123%_
              _%module-prelude?127120%_))))))
    (define gx#core-bind-import!__%
      (lambda (_%in127048%_ _%ctx127049%_ _%force-weak?127050%_)
        (let* ((_%in127051127060%_ _%in127048%_)
               (_%E127053127064%_
                (lambda ()
                  (error '"No clause matching"
                         _%in127051127060%_
                         '((module-import source key phi weak?)))
                  '#!void))
               (_%K127054127077%_
                (lambda (_%weak?127067%_
                         _%phi127068%_
                         _%key127069%_
                         _%source127070%_)
                  (gx#core-bind!__%
                   _%key127069%_
                   (let ((_%e127072%_
                          (gx#core-resolve-module-export _%source127070%_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref _%e127072%_ '1 '#f '#f)
                      _%key127069%_
                      _%phi127068%_
                      _%e127072%_
                      (##unchecked-structure-ref _%source127070%_ '1 '#f '#f)
                      (let ((_%$e127074%_ _%force-weak?127050%_))
                        (if _%$e127074%_ _%$e127074%_ _%weak?127067%_))))
                   gx#core-context-rebind?
                   _%phi127068%_
                   _%ctx127049%_))))
          (if (##structure-direct-instance-of?
               _%in127051127060%_
               'gx#module-import::t)
              (let* ((_%e127055127080%_
                      (##unchecked-structure-ref
                       _%in127051127060%_
                       '1
                       '#f
                       '#f))
                     (_%source127083%_ _%e127055127080%_)
                     (_%e127056127085%_
                      (##unchecked-structure-ref
                       _%in127051127060%_
                       '2
                       '#f
                       '#f))
                     (_%key127088%_ _%e127056127085%_)
                     (_%e127057127090%_
                      (##unchecked-structure-ref
                       _%in127051127060%_
                       '3
                       '#f
                       '#f))
                     (_%phi127093%_ _%e127057127090%_)
                     (_%e127058127095%_
                      (##unchecked-structure-ref
                       _%in127051127060%_
                       '4
                       '#f
                       '#f))
                     (_%weak?127098%_ _%e127058127095%_))
                (_%K127054127077%_
                 _%weak?127098%_
                 _%phi127093%_
                 _%key127088%_
                 _%source127083%_))
              (_%E127053127064%_)))))
    (define gx#core-bind-import!__0
      (lambda (_%in127103%_)
        (let* ((_%ctx127105%_ (gx#current-expander-context))
               (_%force-weak?127107%_ '#f))
          (gx#core-bind-import!__%
           _%in127103%_
           _%ctx127105%_
           _%force-weak?127107%_))))
    (define gx#core-bind-import!__1
      (lambda (_%in127109%_ _%ctx127110%_)
        (let ((_%force-weak?127112%_ '#f))
          (gx#core-bind-import!__%
           _%in127109%_
           _%ctx127110%_
           _%force-weak?127112%_))))
    (define gx#core-bind-import!
      (lambda _g128992_
        (let ((_g128991_ (##length _g128992_)))
          (cond ((##fx= _g128991_ 1) (apply gx#core-bind-import!__0 _g128992_))
                ((##fx= _g128991_ 2) (apply gx#core-bind-import!__1 _g128992_))
                ((##fx= _g128991_ 3) (apply gx#core-bind-import!__% _g128992_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g128992_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_%in127034%_ _%ctx127035%_)
        (gx#core-bind-import!__% _%in127034%_ _%ctx127035%_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_%in127040%_)
        (let ((_%ctx127042%_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _%in127040%_ _%ctx127042%_))))
    (define gx#core-bind-weak-import!
      (lambda _g128994_
        (let ((_g128993_ (##length _g128994_)))
          (cond ((##fx= _g128993_ 1)
                 (apply gx#core-bind-weak-import!__0 _g128994_))
                ((##fx= _g128993_ 2)
                 (apply gx#core-bind-weak-import!__% _g128994_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g128994_))))))
    (define gx#core-resolve-module-export
      (lambda (_%out126925%_)
        (letrec ((_%subst126927%_
                  (lambda (_%key126973%_)
                    (let* ((_%key126974126982%_ _%key126973%_)
                           (_%else126976126990%_ (lambda () _%key126973%_))
                           (_%K126978127021%_
                            (lambda (_%mark126993%_ _%id126994%_)
                              (let* ((_%mark126995127001%_ _%mark126993%_)
                                     (_%E126997127005%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark126995127001%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K126998127013%_
                                      (lambda (_%subst127008%_)
                                        (let ((_%$e127010%_
                                               (if _%subst127008%_
                                                   (hash-get
                                                    _%subst127008%_
                                                    _%id126994%_)
                                                   '#f)))
                                          (if _%$e127010%_
                                              _%$e127010%_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _%key126973%_))))))
                                (if (##structure-instance-of?
                                     _%mark126995127001%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e126999127016%_
                                            (##unchecked-structure-ref
                                             _%mark126995127001%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst127019%_ _%e126999127016%_))
                                      (_%K126998127013%_ _%subst127019%_))
                                    (_%E126997127005%_))))))
                      (if (pair? _%key126974126982%_)
                          (let ((_%hd126979127024%_
                                 (##car _%key126974126982%_))
                                (_%tl126980127026%_
                                 (##cdr _%key126974126982%_)))
                            (let* ((_%id127029%_ _%hd126979127024%_)
                                   (_%mark127031%_ _%tl126980127026%_))
                              (_%K126978127021%_ _%mark127031%_ _%id127029%_)))
                          (_%else126976126990%_))))))
          (let* ((_%out126928126938%_ _%out126925%_)
                 (_%E126930126942%_
                  (lambda ()
                    (error '"No clause matching"
                           _%out126928126938%_
                           '((module-export ctx key phi _ _)))
                    '#!void))
                 (_%K126931126949%_
                  (lambda (_%phi126945%_ _%key126946%_ _%ctx126947%_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _%ctx126947%_ _%phi126945%_)
                     (_%subst126927%_ _%key126946%_)))))
            (if (##structure-direct-instance-of?
                 _%out126928126938%_
                 'gx#module-export::t)
                (let* ((_%e126932126952%_
                        (##unchecked-structure-ref
                         _%out126928126938%_
                         '1
                         '#f
                         '#f))
                       (_%ctx126955%_ _%e126932126952%_)
                       (_%e126933126957%_
                        (##unchecked-structure-ref
                         _%out126928126938%_
                         '2
                         '#f
                         '#f))
                       (_%key126960%_ _%e126933126957%_)
                       (_%e126934126962%_
                        (##unchecked-structure-ref
                         _%out126928126938%_
                         '3
                         '#f
                         '#f))
                       (_%phi126965%_ _%e126934126962%_)
                       (_%e126935126967%_
                        (##unchecked-structure-ref
                         _%out126928126938%_
                         '4
                         '#f
                         '#f))
                       (_%e126936126970%_
                        (##unchecked-structure-ref
                         _%out126928126938%_
                         '5
                         '#f
                         '#f)))
                  (_%K126931126949%_
                   _%phi126965%_
                   _%key126960%_
                   _%ctx126955%_))
                (_%E126930126942%_))))))
    (define gx#core-module-export->import__%
      (lambda (_%out126850%_ _%rename126851%_ _%dphi126852%_)
        (let* ((_%out126853126863%_ _%out126850%_)
               (_%E126855126867%_
                (lambda ()
                  (error '"No clause matching"
                         _%out126853126863%_
                         '((module-export ctx key phi name weak?)))
                  '#!void))
               (_%K126856126879%_
                (lambda (_%weak?126870%_
                         _%name126871%_
                         _%phi126872%_
                         _%key126873%_
                         _%ctx126874%_)
                  (##structure
                   gx#module-import::t
                   _%out126850%_
                   (let ((_%$e126876%_ _%rename126851%_))
                     (if _%$e126876%_ _%$e126876%_ _%name126871%_))
                   (fx+ _%phi126872%_ _%dphi126852%_)
                   _%weak?126870%_))))
          (if (##structure-direct-instance-of?
               _%out126853126863%_
               'gx#module-export::t)
              (let* ((_%e126857126882%_
                      (##unchecked-structure-ref
                       _%out126853126863%_
                       '1
                       '#f
                       '#f))
                     (_%ctx126885%_ _%e126857126882%_)
                     (_%e126858126887%_
                      (##unchecked-structure-ref
                       _%out126853126863%_
                       '2
                       '#f
                       '#f))
                     (_%key126890%_ _%e126858126887%_)
                     (_%e126859126892%_
                      (##unchecked-structure-ref
                       _%out126853126863%_
                       '3
                       '#f
                       '#f))
                     (_%phi126895%_ _%e126859126892%_)
                     (_%e126860126897%_
                      (##unchecked-structure-ref
                       _%out126853126863%_
                       '4
                       '#f
                       '#f))
                     (_%name126900%_ _%e126860126897%_)
                     (_%e126861126902%_
                      (##unchecked-structure-ref
                       _%out126853126863%_
                       '5
                       '#f
                       '#f))
                     (_%weak?126905%_ _%e126861126902%_))
                (_%K126856126879%_
                 _%weak?126905%_
                 _%name126900%_
                 _%phi126895%_
                 _%key126890%_
                 _%ctx126885%_))
              (_%E126855126867%_)))))
    (define gx#core-module-export->import__0
      (lambda (_%out126910%_)
        (let* ((_%rename126912%_ '#f) (_%dphi126914%_ '0))
          (gx#core-module-export->import__%
           _%out126910%_
           _%rename126912%_
           _%dphi126914%_))))
    (define gx#core-module-export->import__1
      (lambda (_%out126916%_ _%rename126917%_)
        (let ((_%dphi126919%_ '0))
          (gx#core-module-export->import__%
           _%out126916%_
           _%rename126917%_
           _%dphi126919%_))))
    (define gx#core-module-export->import
      (lambda _g128996_
        (let ((_g128995_ (##length _g128996_)))
          (cond ((##fx= _g128995_ 1)
                 (apply gx#core-module-export->import__0 _g128996_))
                ((##fx= _g128995_ 2)
                 (apply gx#core-module-export->import__1 _g128996_))
                ((##fx= _g128995_ 3)
                 (apply gx#core-module-export->import__% _g128996_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g128996_))))))
    (define gx#core-expand-module%
      (lambda (_%stx126749%_)
        (letrec ((_%make-context126751%_
                  (lambda (_%id126828%_)
                    (let* ((_%super126830%_ (gx#current-expander-context))
                           (_%bind-id126832%_ (gx#stx-e _%id126828%_))
                           (_%mod-id126834%_
                            (if (##structure-instance-of?
                                 _%super126830%_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##unchecked-structure-ref
                                  _%super126830%_
                                  '1
                                  '#f
                                  '#f)
                                 '"~"
                                 _%bind-id126832%_)
                                _%bind-id126832%_))
                           (_%ns126836%_ (symbol->string _%mod-id126834%_))
                           (_%path126846%_
                            (if (##structure-instance-of?
                                 _%super126830%_
                                 'gx#module-context::t)
                                (let ((_%path126838%_
                                       (##unchecked-structure-ref
                                        _%super126830%_
                                        '7
                                        '#f
                                        '#f)))
                                  (if (or (pair? _%path126838%_)
                                          (null? _%path126838%_))
                                      (cons _%bind-id126832%_ _%path126838%_)
                                      (if (not _%path126838%_)
                                          _%bind-id126832%_
                                          (cons _%bind-id126832%_
                                                (cons _%path126838%_ '())))))
                                _%bind-id126832%_))
                           (__obj128972
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
                       __obj128972
                       _%mod-id126834%_
                       _%super126830%_
                       _%ns126836%_
                       _%path126846%_)
                      __obj128972)))
                 (_%valid-module-id?126752%_
                  (lambda (_%id126803%_)
                    (let* ((_%str126805%_ (symbol->string _%id126803%_))
                           (_%len126807%_ (##string-length _%str126805%_)))
                      (if (##fx>= _%len126807%_ '1)
                          (let _%loop126810%_ ((_%index126812%_
                                                (##fx- (##string-length
                                                        _%str126805%_)
                                                       '1)))
                            (if (##fx>= _%index126812%_ '0)
                                (let ((_%c126814%_
                                       (string-ref
                                        _%str126805%_
                                        _%index126812%_)))
                                  (if (or (and (##char>=? _%c126814%_ '#\a)
                                               (##char<=? _%c126814%_ '#\z))
                                          (and (##char>=? _%c126814%_ '#\A)
                                               (##char<=? _%c126814%_ '#\Z))
                                          (and (##char>=? _%c126814%_ '#\0)
                                               (##char<=? _%c126814%_ '#\9))
                                          (##char=? _%c126814%_ '#\_)
                                          (##char=? _%c126814%_ '#\-))
                                      (_%loop126810%_
                                       (##fx- _%index126812%_ '1))
                                      '#f))
                                '#t))
                          '#f)))))
          (let* ((_%e126753126763%_ _%stx126749%_)
                 (_%E126755126767%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e126753126763%_)))
                 (_%E126754126799%_
                  (lambda ()
                    (if (gx#stx-pair? _%e126753126763%_)
                        (let ((_%e126756126771%_
                               (gx#syntax-e _%e126753126763%_)))
                          (let ((_%hd126757126774%_ (##car _%e126756126771%_))
                                (_%tl126758126776%_ (##cdr _%e126756126771%_)))
                            (if (gx#stx-pair? _%tl126758126776%_)
                                (let ((_%e126759126779%_
                                       (gx#syntax-e _%tl126758126776%_)))
                                  (let ((_%hd126760126782%_
                                         (##car _%e126759126779%_))
                                        (_%tl126761126784%_
                                         (##cdr _%e126759126779%_)))
                                    (let* ((_%id126787%_ _%hd126760126782%_)
                                           (_%body126789%_ _%tl126761126784%_))
                                      (if (and (gx#identifier? _%id126787%_)
                                               (gx#stx-list? _%body126789%_))
                                          (if (_%valid-module-id?126752%_
                                               (gx#stx-e
                                                (gx#datum->syntax__0 '#f 'id)))
                                              (let* ((_%ctx126791%_
                                                      (_%make-context126751%_
                                                       _%id126787%_))
                                                     (_%body126793%_
                                                      (gx#core-expand-module-begin
                                                       _%body126789%_
                                                       _%ctx126791%_))
                                                     (_%body126795%_
                                                      (gx#core-quote-syntax__1
                                                       (gx#core-cons
                                                        '%#begin
                                                        _%body126793%_)
                                                       (gx#stx-source
                                                        _%stx126749%_))))
                                                (##unchecked-structure-set!
                                                 _%ctx126791%_
                                                 (__make-promise
                                                  (lambda ()
                                                    (gx#eval-syntax*
                                                     _%body126795%_)))
                                                 '10
                                                 '#f
                                                 '#f)
                                                (##unchecked-structure-set!
                                                 _%ctx126791%_
                                                 _%body126795%_
                                                 '11
                                                 '#f
                                                 '#f)
                                                (gx#core-bind-syntax!__0
                                                 _%id126787%_
                                                 _%ctx126791%_)
                                                (gx#core-quote-syntax__1
                                                 (gx#core-list
                                                  '%#module
                                                  (gx#core-quote-syntax__0
                                                   _%id126787%_)
                                                  _%body126795%_)
                                                 (gx#stx-source
                                                  _%stx126749%_)))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"invalid module id; allowed characters are A-Z,a-z,0-9,_,-"
                                               _%stx126749%_
                                               (gx#datum->syntax__0 '#f 'id)))
                                          (_%E126755126767%_)))))
                                (_%E126755126767%_))))
                        (_%E126755126767%_)))))
            (_%E126754126799%_)))))
    (define gx#core-expand-module-begin
      (lambda (_%body126715%_ _%ctx126716%_)
        (__call-with-parameters
         (lambda ()
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_%stx126719%_
                   (gx#core-expand-head (cons '%%begin-module _%body126715%_)))
                  (_%e126720126727%_ _%stx126719%_)
                  (_%E126722126731%_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _%stx126719%_)))
                  (_%E126721126745%_
                   (lambda ()
                     (if (gx#stx-pair? _%e126720126727%_)
                         (let ((_%e126723126735%_
                                (gx#syntax-e _%e126720126727%_)))
                           (let ((_%hd126724126738%_ (##car _%e126723126735%_))
                                 (_%tl126725126740%_
                                  (##cdr _%e126723126735%_)))
                             (if (and (gx#identifier? _%hd126724126738%_)
                                      (gx#core-identifier=?
                                       _%hd126724126738%_
                                       '%#begin-module))
                                 (let ((_%body126743%_ _%tl126725126740%_))
                                   (if (gx#sealed-syntax? _%stx126719%_)
                                       _%body126743%_
                                       (gx#core-expand-module-body
                                        _%body126743%_)))
                                 (_%E126722126731%_))))
                         (_%E126722126731%_)))))
             (_%E126721126745%_)))
         gx#current-expander-context
         _%ctx126716%_
         gx#current-expander-phi
         '0)))
    (define gx#core-expand-module-body
      (lambda (_%body126511%_)
        (letrec ((_%expand-special126513%_
                  (lambda (_%hd126642%_ _%K126643%_ _%rest126644%_ _%r126645%_)
                    (let* ((_%e126646126663%_ _%hd126642%_)
                           (_%E126658126667%_
                            (lambda ()
                              (_%K126643%_
                               _%rest126644%_
                               (cons (gx#core-expand-top _%hd126642%_)
                                     _%r126645%_))))
                           (_%E126648126679%_
                            (lambda ()
                              (if (gx#stx-pair? _%e126646126663%_)
                                  (let ((_%e126659126671%_
                                         (gx#syntax-e _%e126646126663%_)))
                                    (let ((_%hd126660126674%_
                                           (##car _%e126659126671%_))
                                          (_%tl126661126676%_
                                           (##cdr _%e126659126671%_)))
                                      (if (and (gx#identifier?
                                                _%hd126660126674%_)
                                               (gx#core-identifier=?
                                                _%hd126660126674%_
                                                '%#export))
                                          (_%K126643%_
                                           _%rest126644%_
                                           (cons _%hd126642%_ _%r126645%_))
                                          (_%E126658126667%_))))
                                  (_%E126658126667%_))))
                           (_%E126647126711%_
                            (lambda ()
                              (if (gx#stx-pair? _%e126646126663%_)
                                  (let ((_%e126649126683%_
                                         (gx#syntax-e _%e126646126663%_)))
                                    (let ((_%hd126650126686%_
                                           (##car _%e126649126683%_))
                                          (_%tl126651126688%_
                                           (##cdr _%e126649126683%_)))
                                      (if (and (gx#identifier?
                                                _%hd126650126686%_)
                                               (gx#core-identifier=?
                                                _%hd126650126686%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl126651126688%_)
                                              (let ((_%e126652126691%_
                                                     (gx#syntax-e
                                                      _%tl126651126688%_)))
                                                (let ((_%hd126653126694%_
                                                       (##car _%e126652126691%_))
                                                      (_%tl126654126696%_
                                                       (##cdr _%e126652126691%_)))
                                                  (let ((_%hd-bind126699%_
                                                         _%hd126653126694%_))
                                                    (if (gx#stx-pair?
                                                         _%tl126654126696%_)
                                                        (let ((_%e126655126701%_
                                                               (gx#syntax-e
                                                                _%tl126654126696%_)))
                                                          (let ((_%hd126656126704%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e126655126701%_))
                        (_%tl126657126706%_ (##cdr _%e126655126701%_)))
                    (let ((_%expr126709%_ _%hd126656126704%_))
                      (if (gx#stx-null? _%tl126657126706%_)
                          (if (gx#core-bind-values? _%hd-bind126699%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind126699%_)
                                (_%K126643%_
                                 _%rest126644%_
                                 (cons _%hd126642%_ _%r126645%_)))
                              (_%E126648126679%_))
                          (_%E126648126679%_)))))
                (_%E126648126679%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E126648126679%_))
                                          (_%E126648126679%_))))
                                  (_%E126648126679%_)))))
                      (_%E126647126711%_))))
                 (_%expand-body126514%_
                  (lambda (_%rbody126516%_)
                    (let _%lp126518%_ ((_%rest126520%_ _%rbody126516%_)
                                       (_%body126521%_ '()))
                      (let* ((_%rest126522126530%_ _%rest126520%_)
                             (_%else126524126538%_ (lambda () _%body126521%_))
                             (_%K126526126630%_
                              (lambda (_%rest126541%_ _%hd126542%_)
                                (let* ((_%e126543126564%_ _%hd126542%_)
                                       (_%E126559126568%_
                                        (lambda ()
                                          (_%lp126518%_
                                           _%rest126541%_
                                           (cons (gx#core-expand-expression
                                                  _%hd126542%_)
                                                 _%body126521%_))))
                                       (_%E126555126582%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e126543126564%_)
                                              (let ((_%e126560126572%_
                                                     (gx#syntax-e
                                                      _%e126543126564%_)))
                                                (let ((_%hd126561126575%_
                                                       (##car _%e126560126572%_))
                                                      (_%tl126562126577%_
                                                       (##cdr _%e126560126572%_)))
                                                  (let ((_%form126580%_
                                                         _%hd126561126575%_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _%form126580%_
                                                         gx#special-form-binding?)
                                                        (_%lp126518%_
                                                         _%rest126541%_
                                                         (cons _%hd126542%_
                                                               _%body126521%_))
                                                        (_%E126559126568%_)))))
                                              (_%E126559126568%_))))
                                       (_%E126545126594%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e126543126564%_)
                                              (let ((_%e126556126586%_
                                                     (gx#syntax-e
                                                      _%e126543126564%_)))
                                                (let ((_%hd126557126589%_
                                                       (##car _%e126556126586%_))
                                                      (_%tl126558126591%_
                                                       (##cdr _%e126556126586%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd126557126589%_)
                                                           (gx#core-identifier=?
                                                            _%hd126557126589%_
                                                            '%#export))
                                                      (_%lp126518%_
                                                       _%rest126541%_
                                                       (cons (gx#core-expand-export%__0
                                                              _%hd126542%_)
                                                             _%body126521%_))
                                                      (_%E126555126582%_))))
                                              (_%E126555126582%_))))
                                       (_%E126544126626%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e126543126564%_)
                                              (let ((_%e126546126598%_
                                                     (gx#syntax-e
                                                      _%e126543126564%_)))
                                                (let ((_%hd126547126601%_
                                                       (##car _%e126546126598%_))
                                                      (_%tl126548126603%_
                                                       (##cdr _%e126546126598%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd126547126601%_)
                                                           (gx#core-identifier=?
                                                            _%hd126547126601%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl126548126603%_)
                                                          (let ((_%e126549126606%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl126548126603%_)))
                    (let ((_%hd126550126609%_ (##car _%e126549126606%_))
                          (_%tl126551126611%_ (##cdr _%e126549126606%_)))
                      (let ((_%hd-bind126614%_ _%hd126550126609%_))
                        (if (gx#stx-pair? _%tl126551126611%_)
                            (let ((_%e126552126616%_
                                   (gx#syntax-e _%tl126551126611%_)))
                              (let ((_%hd126553126619%_
                                     (##car _%e126552126616%_))
                                    (_%tl126554126621%_
                                     (##cdr _%e126552126616%_)))
                                (let ((_%expr126624%_ _%hd126553126619%_))
                                  (if (gx#stx-null? _%tl126554126621%_)
                                      (_%lp126518%_
                                       _%rest126541%_
                                       (cons (gx#core-quote-syntax__1
                                              (gx#core-list
                                               '%#define-values
                                               (gx#core-quote-bind-values
                                                _%hd-bind126614%_)
                                               (gx#core-expand-expression
                                                _%expr126624%_))
                                              (gx#stx-source _%hd126542%_))
                                             _%body126521%_))
                                      (_%E126545126594%_)))))
                            (_%E126545126594%_)))))
                  (_%E126545126594%_))
              (_%E126545126594%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E126545126594%_)))))
                                  (_%E126544126626%_)))))
                        (if (pair? _%rest126522126530%_)
                            (let ((_%hd126527126633%_
                                   (##car _%rest126522126530%_))
                                  (_%tl126528126635%_
                                   (##cdr _%rest126522126530%_)))
                              (let* ((_%hd126638%_ _%hd126527126633%_)
                                     (_%rest126640%_ _%tl126528126635%_))
                                (_%K126526126630%_
                                 _%rest126640%_
                                 _%hd126638%_)))
                            (_%else126524126538%_)))))))
          (_%expand-body126514%_
           (gx#core-expand-block__%
            (cons '%#begin-module _%body126511%_)
            _%expand-special126513%_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_%stx126352%_
               _%expanded?126353%_
               _%method126354%_
               _%current-phi126355%_
               _%expand1126356%_)
        (letrec ((_%K126358%_
                  (lambda (_%rest126478%_ _%r126479%_)
                    (let* ((_%e126480126487%_ _%rest126478%_)
                           (_%E126482126491%_ (lambda () _%r126479%_))
                           (_%E126481126507%_
                            (lambda ()
                              (if (gx#stx-pair? _%e126480126487%_)
                                  (let ((_%e126483126495%_
                                         (gx#syntax-e _%e126480126487%_)))
                                    (let ((_%hd126484126498%_
                                           (##car _%e126483126495%_))
                                          (_%tl126485126500%_
                                           (##cdr _%e126483126495%_)))
                                      (let* ((_%hd126503%_ _%hd126484126498%_)
                                             (_%rest126505%_
                                              _%tl126485126500%_))
                                        (_%step126359%_
                                         _%hd126503%_
                                         _%rest126505%_
                                         _%r126479%_))))
                                  (_%E126482126491%_)))))
                      (_%E126481126507%_))))
                 (_%step126359%_
                  (lambda (_%hd126392%_ _%rest126393%_ _%r126394%_)
                    (let* ((_%e126395126413%_ _%hd126392%_)
                           (_%E126408126417%_
                            (lambda ()
                              (if (_%expanded?126353%_ (gx#stx-e _%hd126392%_))
                                  (_%K126358%_
                                   _%rest126393%_
                                   (cons (gx#stx-e _%hd126392%_) _%r126394%_))
                                  (_%expand1126356%_
                                   _%hd126392%_
                                   _%K126358%_
                                   _%rest126393%_
                                   _%r126394%_))))
                           (_%E126404126433%_
                            (lambda ()
                              (if (gx#stx-pair? _%e126395126413%_)
                                  (let ((_%e126409126421%_
                                         (gx#syntax-e _%e126395126413%_)))
                                    (let ((_%hd126410126424%_
                                           (##car _%e126409126421%_))
                                          (_%tl126411126426%_
                                           (##cdr _%e126409126421%_)))
                                      (let* ((_%macro126429%_
                                              _%hd126410126424%_)
                                             (_%body126431%_
                                              _%tl126411126426%_))
                                        (if (gx#core-bound-identifier?__%
                                             _%macro126429%_
                                             gx#syntax-binding?)
                                            (_%K126358%_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _%macro126429%_)
                                                    _%hd126392%_
                                                    _%method126354%_)
                                                   _%rest126393%_)
                                             _%r126394%_)
                                            (_%E126408126417%_)))))
                                  (_%E126408126417%_))))
                           (_%E126397126447%_
                            (lambda ()
                              (if (gx#stx-pair? _%e126395126413%_)
                                  (let ((_%e126405126437%_
                                         (gx#syntax-e _%e126395126413%_)))
                                    (let ((_%hd126406126440%_
                                           (##car _%e126405126437%_))
                                          (_%tl126407126442%_
                                           (##cdr _%e126405126437%_)))
                                      (if (eq? (gx#stx-e _%hd126406126440%_)
                                               'begin:)
                                          (let ((_%body126445%_
                                                 _%tl126407126442%_))
                                            (_%K126358%_
                                             (gx#stx-foldr
                                              cons
                                              _%rest126393%_
                                              _%body126445%_)
                                             _%r126394%_))
                                          (_%E126404126433%_))))
                                  (_%E126404126433%_))))
                           (_%E126396126474%_
                            (lambda ()
                              (if (gx#stx-pair? _%e126395126413%_)
                                  (let ((_%e126398126451%_
                                         (gx#syntax-e _%e126395126413%_)))
                                    (let ((_%hd126399126454%_
                                           (##car _%e126398126451%_))
                                          (_%tl126400126456%_
                                           (##cdr _%e126398126451%_)))
                                      (if (eq? (gx#stx-e _%hd126399126454%_)
                                               'phi:)
                                          (if (gx#stx-pair? _%tl126400126456%_)
                                              (let ((_%e126401126459%_
                                                     (gx#syntax-e
                                                      _%tl126400126456%_)))
                                                (let ((_%hd126402126462%_
                                                       (##car _%e126401126459%_))
                                                      (_%tl126403126464%_
                                                       (##cdr _%e126401126459%_)))
                                                  (let* ((_%dphi126467%_
                                                          _%hd126402126462%_)
                                                         (_%body126469%_
                                                          _%tl126403126464%_))
                                                    (if (gx#stx-fixnum?
                                                         _%dphi126467%_)
                                                        (let ((_%rbody126472%_
                                                               (__call-with-parameters
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_%K126358%_ _%body126469%_ '()))
                        _%current-phi126355%_
                        (fx+ (gx#stx-e _%dphi126467%_)
                             (_%current-phi126355%_)))))
                  (_%K126358%_
                   _%rest126393%_
                   (__foldr1 cons _%r126394%_ _%rbody126472%_)))
                (_%E126397126447%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E126397126447%_))
                                          (_%E126397126447%_))))
                                  (_%E126397126447%_)))))
                      (_%E126396126474%_)))))
          (let* ((_%e126360126367%_ _%stx126352%_)
                 (_%E126362126371%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e126360126367%_)))
                 (_%E126361126388%_
                  (lambda ()
                    (if (gx#stx-pair? _%e126360126367%_)
                        (let ((_%e126363126375%_
                               (gx#syntax-e _%e126360126367%_)))
                          (let ((_%hd126364126378%_ (##car _%e126363126375%_))
                                (_%tl126365126380%_ (##cdr _%e126363126375%_)))
                            (let ((_%body126383%_ _%tl126365126380%_))
                              (if (_%current-phi126355%_)
                                  (_%K126358%_ _%body126383%_ '())
                                  (__call-with-parameters
                                   (lambda () (_%K126358%_ _%body126383%_ '()))
                                   _%current-phi126355%_
                                   (gx#current-expander-phi))))))
                        (_%E126362126371%_)))))
            (_%E126361126388%_)))))
    (define gx#core-expand-import%__%
      (lambda (_%stx126006%_ _%internal-expand?126007%_)
        (letrec ((_%expand1126009%_
                  (lambda (_%hd126324%_ _%K126325%_ _%rest126326%_ _%r126327%_)
                    (if (gx#core-bound-module? _%hd126324%_)
                        (_%import1126010%_
                         (gx#syntax-local-e__0 _%hd126324%_)
                         _%K126325%_
                         _%rest126326%_
                         _%r126327%_)
                        (if (gx#core-library-module-path? _%hd126324%_)
                            (_%import1126010%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%hd126324%_))
                             _%K126325%_
                             _%rest126326%_
                             _%r126327%_)
                            (if (gx#core-library-relative-module-path?
                                 _%hd126324%_)
                                (_%import1126010%_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _%hd126324%_))
                                 _%K126325%_
                                 _%rest126326%_
                                 _%r126327%_)
                                (let ((_%e126333%_ (gx#stx-e _%hd126324%_)))
                                  (if (pair? _%e126333%_)
                                      (let ((_%$e126336%_
                                             (gx#stx-e (##car _%e126333%_))))
                                        (if (eq? 'spec: _%$e126336%_)
                                            (_%import-spec126013%_
                                             _%hd126324%_
                                             _%K126325%_
                                             _%rest126326%_
                                             _%r126327%_)
                                            (if (eq? 'in: _%$e126336%_)
                                                (_%import-submodule126011%_
                                                 _%hd126324%_
                                                 _%K126325%_
                                                 _%rest126326%_
                                                 _%r126327%_)
                                                (if (eq? 'runtime:
                                                         _%$e126336%_)
                                                    (_%import-runtime126012%_
                                                     _%hd126324%_
                                                     _%K126325%_
                                                     _%rest126326%_
                                                     _%r126327%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _%stx126006%_
                                                     _%hd126324%_)))))
                                      (if (string? _%e126333%_)
                                          (_%import1126010%_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _%hd126324%_
                                             (gx#stx-source _%stx126006%_)))
                                           _%K126325%_
                                           _%rest126326%_
                                           _%r126327%_)
                                          (if (##structure-instance-of?
                                               _%e126333%_
                                               'gx#module-context::t)
                                              (_%K126325%_
                                               _%rest126326%_
                                               (cons _%e126333%_ _%r126327%_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _%stx126006%_
                                               _%hd126324%_))))))))))
                 (_%import1126010%_
                  (lambda (_%ctx126313%_
                           _%K126314%_
                           _%rest126315%_
                           _%r126316%_)
                    (let ((_%dphi126318%_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_%K126314%_
                       _%rest126315%_
                       (cons (##structure
                              gx#import-set::t
                              _%ctx126313%_
                              _%dphi126318%_
                              (map (lambda (_%g126319126321%_)
                                     (gx#core-module-export->import__%
                                      _%g126319126321%_
                                      '#f
                                      _%dphi126318%_))
                                   (##unchecked-structure-ref
                                    _%ctx126313%_
                                    '9
                                    '#f
                                    '#f)))
                             _%r126316%_)))))
                 (_%import-submodule126011%_
                  (lambda (_%hd126280%_ _%K126281%_ _%rest126282%_ _%r126283%_)
                    (let* ((_%e126284126291%_ _%hd126280%_)
                           (_%E126286126295%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e126284126291%_)))
                           (_%E126285126309%_
                            (lambda ()
                              (if (gx#stx-pair? _%e126284126291%_)
                                  (let ((_%e126287126299%_
                                         (gx#syntax-e _%e126284126291%_)))
                                    (let ((_%hd126288126302%_
                                           (##car _%e126287126299%_))
                                          (_%tl126289126304%_
                                           (##cdr _%e126287126299%_)))
                                      (let ((_%spath126307%_
                                             _%tl126289126304%_))
                                        (_%import1126010%_
                                         (_%import-spec-source126014%_
                                          _%spath126307%_)
                                         _%K126281%_
                                         _%rest126282%_
                                         _%r126283%_))))
                                  (_%E126286126295%_)))))
                      (_%E126285126309%_))))
                 (_%import-runtime126012%_
                  (lambda (_%hd126247%_ _%K126248%_ _%rest126249%_ _%r126250%_)
                    (let* ((_%e126251126258%_ _%hd126247%_)
                           (_%E126253126262%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e126251126258%_)))
                           (_%E126252126276%_
                            (lambda ()
                              (if (gx#stx-pair? _%e126251126258%_)
                                  (let ((_%e126254126266%_
                                         (gx#syntax-e _%e126251126258%_)))
                                    (let ((_%hd126255126269%_
                                           (##car _%e126254126266%_))
                                          (_%tl126256126271%_
                                           (##cdr _%e126254126266%_)))
                                      (let ((_%spath126274%_
                                             _%tl126256126271%_))
                                        (_%K126248%_
                                         _%rest126249%_
                                         (cons (_%import-spec-source126014%_
                                                _%spath126274%_)
                                               _%r126250%_)))))
                                  (_%E126253126262%_)))))
                      (_%E126252126276%_))))
                 (_%import-spec126013%_
                  (lambda (_%hd126085%_ _%K126086%_ _%rest126087%_ _%r126088%_)
                    (let* ((_%e126089126106%_ _%hd126085%_)
                           (_%E126098126110%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e126089126106%_)))
                           (_%E126091126221%_
                            (lambda ()
                              (if (gx#stx-pair? _%e126089126106%_)
                                  (let ((_%e126099126114%_
                                         (gx#syntax-e _%e126089126106%_)))
                                    (let ((_%hd126100126117%_
                                           (##car _%e126099126114%_))
                                          (_%tl126101126119%_
                                           (##cdr _%e126099126114%_)))
                                      (if (gx#stx-pair? _%tl126101126119%_)
                                          (let ((_%e126102126122%_
                                                 (gx#syntax-e
                                                  _%tl126101126119%_)))
                                            (let ((_%hd126103126125%_
                                                   (##car _%e126102126122%_))
                                                  (_%tl126104126127%_
                                                   (##cdr _%e126102126122%_)))
                                              (let* ((_%path126130%_
                                                      _%hd126103126125%_)
                                                     (_%specs126132%_
                                                      _%tl126104126127%_))
                                                (let ((_%src-ctx126134%_
                                                       (_%import-spec-source126014%_
                                                        _%path126130%_))
                                                      (_%exports126135%_
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
                                                      (_%specs126136%_
                                                       (gx#syntax->list
                                                        _%specs126132%_)))
                                                  (for-each
                                                   (lambda (_%out126138%_)
                                                     (__hash-put!
                                                      _%exports126135%_
                                                      (cons (##unchecked-structure-ref
                                                             _%out126138%_
                                                             '3
                                                             '#f
                                                             '#f)
                                                            (##unchecked-structure-ref
                                                             _%out126138%_
                                                             '4
                                                             '#f
                                                             '#f))
                                                      _%out126138%_))
                                                   (##unchecked-structure-ref
                                                    _%src-ctx126134%_
                                                    '9
                                                    '#f
                                                    '#f))
                                                  (_%K126086%_
                                                   _%rest126087%_
                                                   (__foldl1
                                                    (lambda (_%spec126140%_
                                                             _%r126141%_)
                                                      (let* ((_%e126142126158%_
                                                              _%spec126140%_)
                                                             (_%E126144126162%_
                                                              (lambda ()
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid syntax-case clause"
                         _%e126142126158%_)))
                     (_%E126143126217%_
                      (lambda ()
                        (if (gx#stx-pair? _%e126142126158%_)
                            (let ((_%e126145126166%_
                                   (gx#syntax-e _%e126142126158%_)))
                              (let ((_%hd126146126169%_
                                     (##car _%e126145126166%_))
                                    (_%tl126147126171%_
                                     (##cdr _%e126145126166%_)))
                                (let ((_%phi126174%_ _%hd126146126169%_))
                                  (if (gx#stx-pair? _%tl126147126171%_)
                                      (let ((_%e126148126176%_
                                             (gx#syntax-e _%tl126147126171%_)))
                                        (let ((_%hd126149126179%_
                                               (##car _%e126148126176%_))
                                              (_%tl126150126181%_
                                               (##cdr _%e126148126176%_)))
                                          (let ((_%name126184%_
                                                 _%hd126149126179%_))
                                            (if (gx#stx-pair?
                                                 _%tl126150126181%_)
                                                (let ((_%e126151126186%_
                                                       (gx#syntax-e
                                                        _%tl126150126181%_)))
                                                  (let ((_%hd126152126189%_
                                                         (##car _%e126151126186%_))
                                                        (_%tl126153126191%_
                                                         (##cdr _%e126151126186%_)))
                                                    (let ((_%src-phi126194%_
                                                           _%hd126152126189%_))
                                                      (if (gx#stx-pair?
                                                           _%tl126153126191%_)
                                                          (let ((_%e126154126196%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl126153126191%_)))
                    (let ((_%hd126155126199%_ (##car _%e126154126196%_))
                          (_%tl126156126201%_ (##cdr _%e126154126196%_)))
                      (let ((_%src-name126204%_ _%hd126155126199%_))
                        (if (gx#stx-null? _%tl126156126201%_)
                            (if (and (gx#stx-fixnum? _%src-phi126194%_)
                                     (gx#identifier? _%src-name126204%_)
                                     (gx#stx-fixnum? _%phi126174%_)
                                     (gx#identifier? _%name126184%_))
                                (let ((_%src-phi126206%_
                                       (gx#stx-e _%src-phi126194%_))
                                      (_%src-name126207%_
                                       (gx#core-identifier-key
                                        _%src-name126204%_))
                                      (_%phi126208%_ (gx#stx-e _%phi126174%_))
                                      (_%name126209%_
                                       (gx#core-identifier-key
                                        _%name126184%_)))
                                  (let ((_%$e126211%_
                                         (__hash-get
                                          _%exports126135%_
                                          (cons _%src-phi126206%_
                                                _%src-name126207%_))))
                                    (if _%$e126211%_
                                        ((lambda (_%out126214%_)
                                           (cons (gx#core-module-export->import__%
                                                  _%out126214%_
                                                  _%name126209%_
                                                  (fx- _%phi126208%_
                                                       _%src-phi126206%_))
                                                 _%r126141%_))
                                         _%$e126211%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; no matching export"
                                         _%stx126006%_
                                         _%hd126085%_))))
                                (_%E126144126162%_))
                            (_%E126144126162%_)))))
                  (_%E126144126162%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E126144126162%_)))))
                                      (_%E126144126162%_)))))
                            (_%E126144126162%_)))))
                (_%E126143126217%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r126088%_
                                                    _%specs126136%_))))))
                                          (_%E126098126110%_))))
                                  (_%E126098126110%_))))
                           (_%E126090126243%_
                            (lambda ()
                              (if (gx#stx-pair? _%e126089126106%_)
                                  (let ((_%e126092126225%_
                                         (gx#syntax-e _%e126089126106%_)))
                                    (let ((_%hd126093126228%_
                                           (##car _%e126092126225%_))
                                          (_%tl126094126230%_
                                           (##cdr _%e126092126225%_)))
                                      (if (gx#stx-pair? _%tl126094126230%_)
                                          (let ((_%e126095126233%_
                                                 (gx#syntax-e
                                                  _%tl126094126230%_)))
                                            (let ((_%hd126096126236%_
                                                   (##car _%e126095126233%_))
                                                  (_%tl126097126238%_
                                                   (##cdr _%e126095126233%_)))
                                              (let ((_%path126241%_
                                                     _%hd126096126236%_))
                                                (if (gx#stx-null?
                                                     _%tl126097126238%_)
                                                    (_%K126086%_
                                                     _%rest126087%_
                                                     (cons (_%import-spec-source126014%_
                                                            _%path126241%_)
                                                           _%r126088%_))
                                                    (_%E126091126221%_)))))
                                          (_%E126091126221%_))))
                                  (_%E126091126221%_)))))
                      (_%E126090126243%_))))
                 (_%import-spec-source126014%_
                  (lambda (_%spath126083%_)
                    (gx#core-import-nested-module
                     _%spath126083%_
                     _%stx126006%_)))
                 (_%import!126015%_
                  (lambda (_%rbody126028%_)
                    (letrec* ((_%current-ctx126030%_
                               (gx#current-expander-context))
                              (_%deps126031%_ (make-hash-table-eq))
                              (_%bind!126032%_
                               (lambda (_%hd126081%_)
                                 (gx#core-bind-import!__1
                                  _%hd126081%_
                                  _%current-ctx126030%_))))
                      (let _%lp126034%_ ((_%rest126036%_ _%rbody126028%_)
                                         (_%body126037%_ '()))
                        (let* ((_%rest126038126046%_ _%rest126036%_)
                               (_%else126040126057%_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _%current-ctx126030%_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _%current-ctx126030%_
                                       (__foldl1
                                        cons
                                        (##unchecked-structure-ref
                                         _%current-ctx126030%_
                                         '8
                                         '#f
                                         '#f)
                                        _%body126037%_)
                                       '8
                                       '#f
                                       '#f)
                                      '#!void)
                                  (__hash-for-each
                                   (lambda (_%ctx126054%_ _%_126055%_)
                                     (gx#eval-module _%ctx126054%_))
                                   _%deps126031%_)
                                  _%body126037%_))
                               (_%K126042126069%_
                                (lambda (_%rest126060%_ _%hd126061%_)
                                  (if (##structure-direct-instance-of?
                                       _%hd126061%_
                                       'gx#module-import::t)
                                      (let ()
                                        (_%bind!126032%_ _%hd126061%_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _%hd126061%_
                                                   '3
                                                   '#f
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _%hd126061%_
                                                            '1
                                                            '#f
                                                            '#f)
                                                           '3
                                                           '#f
                                                           '#f)))
                                            (__hash-put!
                                             _%deps126031%_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _%hd126061%_
                                               '1
                                               '#f
                                               '#f)
                                              '1
                                              '#f
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _%hd126061%_
                                           'gx#import-set::t)
                                          (let ()
                                            (for-each
                                             _%bind!126032%_
                                             (##unchecked-structure-ref
                                              _%hd126061%_
                                              '3
                                              '#f
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _%hd126061%_
                                                  '2
                                                  '#f
                                                  '#f))
                                                (__hash-put!
                                                 _%deps126031%_
                                                 (##unchecked-structure-ref
                                                  _%hd126061%_
                                                  '1
                                                  '#f
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_%$e126065%_
                                                 (##structure-instance-of?
                                                  _%hd126061%_
                                                  'gx#module-context::t)))
                                            (if _%$e126065%_
                                                _%$e126065%_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _%stx126006%_
                                                 _%hd126061%_)))))
                                  (_%lp126034%_
                                   _%rest126060%_
                                   (cons _%hd126061%_ _%body126037%_)))))
                          (if (pair? _%rest126038126046%_)
                              (let ((_%hd126043126072%_
                                     (##car _%rest126038126046%_))
                                    (_%tl126044126074%_
                                     (##cdr _%rest126038126046%_)))
                                (let* ((_%hd126077%_ _%hd126043126072%_)
                                       (_%rest126079%_ _%tl126044126074%_))
                                  (_%K126042126069%_
                                   _%rest126079%_
                                   _%hd126077%_)))
                              (_%else126040126057%_)))))))
                 (_%expanded-import?126016%_
                  (lambda (_%e126020%_)
                    (let ((_%$e126022%_
                           (##structure-direct-instance-of?
                            _%e126020%_
                            'gx#import-set::t)))
                      (if _%$e126022%_
                          _%$e126022%_
                          (let ((_%$e126025%_
                                 (##structure-direct-instance-of?
                                  _%e126020%_
                                  'gx#module-import::t)))
                            (if _%$e126025%_
                                _%$e126025%_
                                (##structure-instance-of?
                                 _%e126020%_
                                 'gx#module-context::t))))))))
          (let ((_%rbody126018%_
                 (gx#core-expand-import/export
                  _%stx126006%_
                  _%expanded-import?126016%_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _%expand1126009%_)))
            (if _%internal-expand?126007%_
                (reverse _%rbody126018%_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_%import!126015%_ _%rbody126018%_))
                 (gx#stx-source _%stx126006%_)))))))
    (define gx#core-expand-import%__0
      (lambda (_%stx126345%_)
        (let ((_%internal-expand?126347%_ '#f))
          (gx#core-expand-import%__%
           _%stx126345%_
           _%internal-expand?126347%_))))
    (define gx#core-expand-import%
      (lambda _g128998_
        (let ((_g128997_ (##length _g128998_)))
          (cond ((##fx= _g128997_ 1)
                 (apply gx#core-expand-import%__0 _g128998_))
                ((##fx= _g128997_ 2)
                 (apply gx#core-expand-import%__% _g128998_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g128998_))))))
    (define gx#core-import-nested-module
      (lambda (_%spath125933%_ _%where125934%_)
        (let* ((_%e125935125942%_ _%spath125933%_)
               (_%E125937125946%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125935125942%_)))
               (_%E125936126001%_
                (lambda ()
                  (if (gx#stx-pair? _%e125935125942%_)
                      (let ((_%e125938125950%_
                             (gx#syntax-e _%e125935125942%_)))
                        (let ((_%hd125939125953%_ (##car _%e125938125950%_))
                              (_%tl125940125955%_ (##cdr _%e125938125950%_)))
                          (let* ((_%origin125958%_ _%hd125939125953%_)
                                 (_%sub125960%_ _%tl125940125955%_)
                                 (_%origin-ctx125962%_
                                  (if (gx#stx-false? _%origin125958%_)
                                      (gx#current-expander-context)
                                      (gx#import-module__0 _%origin125958%_))))
                            (let _%lp125964%_ ((_%rest125966%_ _%sub125960%_)
                                               (_%ctx125967%_
                                                _%origin-ctx125962%_))
                              (let* ((_%e125968125975%_ _%rest125966%_)
                                     (_%E125970125979%_
                                      (lambda () _%ctx125967%_))
                                     (_%E125969125997%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%e125968125975%_)
                                            (let ((_%e125971125983%_
                                                   (gx#syntax-e
                                                    _%e125968125975%_)))
                                              (let ((_%hd125972125986%_
                                                     (##car _%e125971125983%_))
                                                    (_%tl125973125988%_
                                                     (##cdr _%e125971125983%_)))
                                                (let* ((_%id125991%_
                                                        _%hd125972125986%_)
                                                       (_%rest125993%_
                                                        _%tl125973125988%_)
                                                       (_%bind125995%_
                                                        (gx#resolve-identifier__%
                                                         _%id125991%_
                                                         '0
                                                         _%ctx125967%_)))
                                                  (if (and (##structure-direct-instance-of?
                                                            _%bind125995%_
                                                            'gx#syntax-binding::t)
                                                           (##structure-instance-of?
                                                            (##unchecked-structure-ref
                                                             _%bind125995%_
                                                             '4
                                                             '#f
                                                             '#f)
                                                            'gx#module-context::t))
                                                      '#!void
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; not bound as module"
                                                       _%where125934%_
                                                       _%spath125933%_
                                                       _%id125991%_))
                                                  (_%lp125964%_
                                                   _%rest125993%_
                                                   (##unchecked-structure-ref
                                                    _%bind125995%_
                                                    '4
                                                    '#f
                                                    '#f)))))
                                            (_%E125970125979%_)))))
                                (_%E125969125997%_))))))
                      (_%E125937125946%_)))))
          (_%E125936126001%_))))
    (define gx#core-expand-import-source
      (lambda (_%hd125931%_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _%hd125931%_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_%stx125425%_ _%internal-expand?125426%_)
        (letrec* ((_%make-export__128926128927%_
                   (lambda (_%bind125879%_
                            _%phi125880%_
                            _%ctx125881%_
                            _%name125882%_)
                     (let* ((_%key125884%_
                             (##unchecked-structure-ref
                              _%bind125879%_
                              '2
                              '#f
                              '#f))
                            (_%export-key125886%_
                             (if _%name125882%_
                                 (gx#core-identifier-key _%name125882%_)
                                 _%key125884%_)))
                       (##structure
                        gx#module-export::t
                        _%ctx125881%_
                        _%key125884%_
                        _%phi125880%_
                        _%export-key125886%_
                        (let ((_%$e125889%_
                               (##structure-instance-of?
                                _%bind125879%_
                                'gx#extern-binding::t)))
                          (if _%$e125889%_
                              _%$e125889%_
                              (##structure-direct-instance-of?
                               _%bind125879%_
                               'gx#import-binding::t)))))))
                  (_%make-export__0__128928128931%_
                   (lambda (_%bind125895%_)
                     (let* ((_%phi125897%_ (gx#current-export-expander-phi))
                            (_%ctx125899%_ (gx#current-expander-context))
                            (_%name125901%_ '#f))
                       (_%make-export__128926128927%_
                        _%bind125895%_
                        _%phi125897%_
                        _%ctx125899%_
                        _%name125901%_))))
                  (_%make-export__1__128929128932%_
                   (lambda (_%bind125903%_ _%phi125904%_)
                     (let* ((_%ctx125906%_ (gx#current-expander-context))
                            (_%name125908%_ '#f))
                       (_%make-export__128926128927%_
                        _%bind125903%_
                        _%phi125904%_
                        _%ctx125906%_
                        _%name125908%_))))
                  (_%make-export__2__128930128933%_
                   (lambda (_%bind125910%_ _%phi125911%_ _%ctx125912%_)
                     (let ((_%name125914%_ '#f))
                       (_%make-export__128926128927%_
                        _%bind125910%_
                        _%phi125911%_
                        _%ctx125912%_
                        _%name125914%_))))
                  (_%make-export125428%_
                   (lambda _g129000_
                     (let ((_g128999_ (##length _g129000_)))
                       (cond ((##fx= _g128999_ 1)
                              (apply _%make-export__0__128928128931%_
                                     _g129000_))
                             ((##fx= _g128999_ 2)
                              (apply _%make-export__1__128929128932%_
                                     _g129000_))
                             ((##fx= _g128999_ 3)
                              (apply _%make-export__2__128930128933%_
                                     _g129000_))
                             ((##fx= _g128999_ 4)
                              (apply _%make-export__128926128927%_ _g129000_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g129000_))))))
                  (_%expand1125429%_
                   (lambda (_%hd125584%_
                            _%K125585%_
                            _%rest125586%_
                            _%r125587%_)
                     (let* ((_%e125588125620%_ _%hd125584%_)
                            (_%E125615125624%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _%stx125425%_
                                _%hd125584%_)))
                            (_%E125605125708%_
                             (lambda ()
                               (if (gx#stx-pair? _%e125588125620%_)
                                   (let ((_%e125616125628%_
                                          (gx#syntax-e _%e125588125620%_)))
                                     (let ((_%hd125617125631%_
                                            (##car _%e125616125628%_))
                                           (_%tl125618125633%_
                                            (##cdr _%e125616125628%_)))
                                       (if (eq? (gx#stx-e _%hd125617125631%_)
                                                'import:)
                                           (let ((_%in125636%_
                                                  _%tl125618125633%_))
                                             (if (gx#stx-list? _%in125636%_)
                                                 (let _%lp125638%_ ((_%in-rest125640%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%in125636%_)
                            (_%r125641%_ _%r125587%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%e125642125649%_
                                                           _%in-rest125640%_)
                                                          (_%E125644125653%_
                                                           (lambda ()
                                                             (_%K125585%_
                                                              _%rest125586%_
                                                              _%r125641%_)))
                                                          (_%E125643125704%_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%e125642125649%_)
                         (let ((_%e125645125657%_
                                (gx#syntax-e _%e125642125649%_)))
                           (let ((_%hd125646125660%_ (##car _%e125645125657%_))
                                 (_%tl125647125662%_
                                  (##cdr _%e125645125657%_)))
                             (let* ((_%hd125665%_ _%hd125646125660%_)
                                    (_%in-rest125667%_ _%tl125647125662%_)
                                    (_%src125702%_
                                     (if (gx#core-bound-module? _%hd125665%_)
                                         (gx#syntax-local-e__0 _%hd125665%_)
                                         (if (gx#core-library-module-path?
                                              _%hd125665%_)
                                             (gx#import-module__0
                                              (gx#core-resolve-library-module-path
                                               _%hd125665%_))
                                             (if (gx#core-library-relative-module-path?
                                                  _%hd125665%_)
                                                 (gx#import-module__0
                                                  (gx#core-resolve-library-relative-module-path
                                                   _%hd125665%_))
                                                 (if (gx#stx-string?
                                                      _%hd125665%_)
                                                     (gx#import-module__0
                                                      (gx#core-resolve-module-path__%
                                                       _%hd125665%_
                                                       (gx#stx-source
                                                        _%stx125425%_)))
                                                     (let* ((_%e125673125680%_
                                                             _%hd125665%_)
                                                            (_%E125675125684%_
                                                             (lambda ()
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; illegal re-export"
                                                                _%stx125425%_
                                                                _%hd125665%_)))
                                                            (_%E125674125698%_
                                                             (lambda ()
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%e125673125680%_)
                           (let ((_%e125676125688%_
                                  (gx#syntax-e _%e125673125680%_)))
                             (let ((_%hd125677125691%_
                                    (##car _%e125676125688%_))
                                   (_%tl125678125693%_
                                    (##cdr _%e125676125688%_)))
                               (if (eq? (gx#stx-e _%hd125677125691%_) 'in:)
                                   (let ((_%spath125696%_ _%tl125678125693%_))
                                     (gx#core-import-nested-module
                                      _%spath125696%_
                                      _%stx125425%_))
                                   (_%E125675125684%_))))
                           (_%E125675125684%_)))))
               (_%E125674125698%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (_%lp125638%_
                                _%in-rest125667%_
                                (_%export-imports125430%_
                                 _%src125702%_
                                 _%r125641%_)))))
                         (_%E125644125653%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E125643125704%_)))
                                                 (_%E125615125624%_)))
                                           (_%E125615125624%_))))
                                   (_%E125615125624%_))))
                            (_%E125592125748%_
                             (lambda ()
                               (if (gx#stx-pair? _%e125588125620%_)
                                   (let ((_%e125606125712%_
                                          (gx#syntax-e _%e125588125620%_)))
                                     (let ((_%hd125607125715%_
                                            (##car _%e125606125712%_))
                                           (_%tl125608125717%_
                                            (##cdr _%e125606125712%_)))
                                       (if (eq? (gx#stx-e _%hd125607125715%_)
                                                'rename:)
                                           (if (gx#stx-pair?
                                                _%tl125608125717%_)
                                               (let ((_%e125609125720%_
                                                      (gx#syntax-e
                                                       _%tl125608125717%_)))
                                                 (let ((_%hd125610125723%_
                                                        (##car _%e125609125720%_))
                                                       (_%tl125611125725%_
                                                        (##cdr _%e125609125720%_)))
                                                   (let ((_%id125728%_
                                                          _%hd125610125723%_))
                                                     (if (gx#stx-pair?
                                                          _%tl125611125725%_)
                                                         (let ((_%e125612125730%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl125611125725%_)))
                   (let ((_%hd125613125733%_ (##car _%e125612125730%_))
                         (_%tl125614125735%_ (##cdr _%e125612125730%_)))
                     (let ((_%name125738%_ _%hd125613125733%_))
                       (if (gx#stx-null? _%tl125614125735%_)
                           (let* ((_%phi125740%_
                                   (gx#current-export-expander-phi))
                                  (_%$e125742%_
                                   (gx#core-resolve-identifier__1
                                    _%id125728%_
                                    _%phi125740%_)))
                             (if _%$e125742%_
                                 ((lambda (_%bind125745%_)
                                    (_%K125585%_
                                     _%rest125586%_
                                     (cons (_%make-export__128926128927%_
                                            _%bind125745%_
                                            _%phi125740%_
                                            (gx#current-expander-context)
                                            _%name125738%_)
                                           _%r125587%_)))
                                  _%$e125742%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Reference to unbound identifier"
                                  _%stx125425%_
                                  _%hd125584%_
                                  _%id125728%_)))
                           (_%E125605125708%_)))))
                 (_%E125605125708%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E125605125708%_))
                                           (_%E125605125708%_))))
                                   (_%E125605125708%_))))
                            (_%E125591125798%_
                             (lambda ()
                               (if (gx#stx-pair? _%e125588125620%_)
                                   (let ((_%e125593125752%_
                                          (gx#syntax-e _%e125588125620%_)))
                                     (let ((_%hd125594125755%_
                                            (##car _%e125593125752%_))
                                           (_%tl125595125757%_
                                            (##cdr _%e125593125752%_)))
                                       (if (eq? (gx#stx-e _%hd125594125755%_)
                                                'spec:)
                                           (if (gx#stx-pair?
                                                _%tl125595125757%_)
                                               (let ((_%e125596125760%_
                                                      (gx#syntax-e
                                                       _%tl125595125757%_)))
                                                 (let ((_%hd125597125763%_
                                                        (##car _%e125596125760%_))
                                                       (_%tl125598125765%_
                                                        (##cdr _%e125596125760%_)))
                                                   (let ((_%phi125768%_
                                                          _%hd125597125763%_))
                                                     (if (gx#stx-pair?
                                                          _%tl125598125765%_)
                                                         (let ((_%e125599125770%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl125598125765%_)))
                   (let ((_%hd125600125773%_ (##car _%e125599125770%_))
                         (_%tl125601125775%_ (##cdr _%e125599125770%_)))
                     (let ((_%id125778%_ _%hd125600125773%_))
                       (if (gx#stx-pair? _%tl125601125775%_)
                           (let ((_%e125602125780%_
                                  (gx#syntax-e _%tl125601125775%_)))
                             (let ((_%hd125603125783%_
                                    (##car _%e125602125780%_))
                                   (_%tl125604125785%_
                                    (##cdr _%e125602125780%_)))
                               (let ((_%name125788%_ _%hd125603125783%_))
                                 (if (gx#stx-null? _%tl125604125785%_)
                                     (if (and (gx#stx-fixnum? _%phi125768%_)
                                              (gx#identifier? _%id125778%_)
                                              (gx#identifier? _%name125788%_))
                                         (let* ((_%phi125790%_
                                                 (gx#stx-e _%phi125768%_))
                                                (_%$e125792%_
                                                 (gx#core-resolve-identifier__1
                                                  _%id125778%_
                                                  _%phi125790%_)))
                                           (if _%$e125792%_
                                               ((lambda (_%bind125795%_)
                                                  (_%K125585%_
                                                   _%rest125586%_
                                                   (cons (_%make-export__128926128927%_
                                                          _%bind125795%_
                                                          _%phi125790%_
                                                          (gx#current-expander-context)
                                                          _%name125788%_)
                                                         _%r125587%_)))
                                                _%$e125792%_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _%stx125425%_
                                                _%hd125584%_
                                                _%id125778%_)))
                                         (_%E125592125748%_))
                                     (_%E125592125748%_)))))
                           (_%E125592125748%_)))))
                 (_%E125592125748%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E125592125748%_))
                                           (_%E125592125748%_))))
                                   (_%E125592125748%_))))
                            (_%E125590125810%_
                             (lambda ()
                               (let ((_%id125802%_ _%e125588125620%_))
                                 (if (gx#identifier? _%id125802%_)
                                     (let ((_%$e125804%_
                                            (gx#core-resolve-identifier__1
                                             _%id125802%_
                                             (gx#current-export-expander-phi))))
                                       (if _%$e125804%_
                                           ((lambda (_%bind125807%_)
                                              (_%K125585%_
                                               _%rest125586%_
                                               (cons (_%make-export__0__128928128931%_
                                                      _%bind125807%_)
                                                     _%r125587%_)))
                                            _%$e125804%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _%stx125425%_
                                            _%hd125584%_)))
                                     (_%E125591125798%_)))))
                            (_%E125589125874%_
                             (lambda ()
                               (if (eq? (gx#stx-e _%e125588125620%_) '#t)
                                   (let* ((_%current-ctx125814%_
                                           (gx#current-expander-context))
                                          (_%current-phi125816%_
                                           (gx#current-export-expander-phi))
                                          (_%phi-ctx125818%_
                                           (gx#core-context-shift
                                            _%current-ctx125814%_
                                            _%current-phi125816%_))
                                          (_%phi-bind125820%_
                                           (hash->list
                                            (##unchecked-structure-ref
                                             _%phi-ctx125818%_
                                             '2
                                             '#f
                                             '#f))))
                                     (let _%lp125823%_ ((_%bind-rest125825%_
                                                         _%phi-bind125820%_)
                                                        (_%set125826%_ '()))
                                       (let* ((_%bind-rest125827125837%_
                                               _%bind-rest125825%_)
                                              (_%else125829125845%_
                                               (lambda ()
                                                 (_%K125585%_
                                                  _%rest125586%_
                                                  (cons (##structure
                                                         gx#export-set::t
                                                         '#f
                                                         _%current-phi125816%_
                                                         _%set125826%_)
                                                        _%r125587%_))))
                                              (_%K125831125855%_
                                               (lambda (_%bind-rest125848%_
                                                        _%bind125849%_
                                                        _%key125850%_)
                                                 (if (or (##structure-direct-instance-of?
                                                          _%bind125849%_
                                                          'gx#import-binding::t)
                                                         (gx#private-feature-binding?
                                                          _%bind125849%_))
                                                     (_%lp125823%_
                                                      _%bind-rest125848%_
                                                      _%set125826%_)
                                                     (_%lp125823%_
                                                      _%bind-rest125848%_
                                                      (cons (_%make-export__2__128930128933%_
                                                             _%bind125849%_
                                                             _%current-phi125816%_
                                                             _%current-ctx125814%_)
                                                            _%set125826%_))))))
                                         (if (pair? _%bind-rest125827125837%_)
                                             (let ((_%hd125832125858%_
                                                    (##car _%bind-rest125827125837%_))
                                                   (_%tl125833125860%_
                                                    (##cdr _%bind-rest125827125837%_)))
                                               (if (pair? _%hd125832125858%_)
                                                   (let ((_%hd125834125863%_
                                                          (##car _%hd125832125858%_))
                                                         (_%tl125835125865%_
                                                          (##cdr _%hd125832125858%_)))
                                                     (let* ((_%key125868%_
                                                             _%hd125834125863%_)
                                                            (_%bind125870%_
                                                             _%tl125835125865%_)
                                                            (_%bind-rest125872%_
                                                             _%tl125833125860%_))
                                                       (_%K125831125855%_
                                                        _%bind-rest125872%_
                                                        _%bind125870%_
                                                        _%key125868%_)))
                                                   (_%else125829125845%_)))
                                             (_%else125829125845%_)))))
                                   (_%E125590125810%_)))))
                       (_%E125589125874%_))))
                  (_%export-imports125430%_
                   (lambda (_%src125460%_ _%r125461%_)
                     (letrec* ((_%current-ctx125463%_
                                (gx#current-expander-context))
                               (_%current-phi125464%_
                                (gx#current-export-expander-phi))
                               (_%import->export125465%_
                                (lambda (_%in125546%_)
                                  (let* ((_%in125547125555%_ _%in125546%_)
                                         (_%E125549125559%_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _%in125547125555%_
                                                   '((module-import
                                                      out
                                                      key
                                                      phi)))
                                            '#!void))
                                         (_%K125550125566%_
                                          (lambda (_%phi125562%_
                                                   _%key125563%_
                                                   _%out125564%_)
                                            (##structure
                                             gx#module-export::t
                                             _%current-ctx125463%_
                                             _%key125563%_
                                             _%phi125562%_
                                             _%key125563%_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _%in125547125555%_
                                         'gx#module-import::t)
                                        (let* ((_%e125551125569%_
                                                (##unchecked-structure-ref
                                                 _%in125547125555%_
                                                 '1
                                                 '#f
                                                 '#f))
                                               (_%out125572%_
                                                _%e125551125569%_)
                                               (_%e125552125574%_
                                                (##unchecked-structure-ref
                                                 _%in125547125555%_
                                                 '2
                                                 '#f
                                                 '#f))
                                               (_%key125577%_
                                                _%e125552125574%_)
                                               (_%e125553125579%_
                                                (##unchecked-structure-ref
                                                 _%in125547125555%_
                                                 '3
                                                 '#f
                                                 '#f))
                                               (_%phi125582%_
                                                _%e125553125579%_))
                                          (_%K125550125566%_
                                           _%phi125582%_
                                           _%key125577%_
                                           _%out125572%_))
                                        (_%E125549125559%_)))))
                               (_%fold-e125466%_
                                (lambda (_%in125468%_ _%r125469%_)
                                  (let* ((_%in125470125484%_ _%in125468%_)
                                         (_%else125473125492%_
                                          (lambda () _%r125469%_)))
                                    (let ((_%K125479125528%_
                                           (lambda (_%phi125524%_
                                                    _%key125525%_
                                                    _%out125526%_)
                                             (if (and (fx= _%phi125524%_
                                                           _%current-phi125464%_)
                                                      (eq? _%src125460%_
                                                           (##unchecked-structure-ref
                                                            _%out125526%_
                                                            '1
                                                            '#f
                                                            '#f)))
                                                 (cons (_%import->export125465%_
                                                        _%in125468%_)
                                                       _%r125469%_)
                                                 _%r125469%_)))
                                          (_%K125475125503%_
                                           (lambda (_%imports125496%_
                                                    _%phi125497%_
                                                    _%ctx125498%_)
                                             (if (and (fx= _%phi125497%_
                                                           _%current-phi125464%_)
                                                      (eq? _%src125460%_
                                                           _%ctx125498%_))
                                                 (__foldl1
                                                  (lambda (_%in125500%_
                                                           _%r125501%_)
                                                    (cons (_%import->export125465%_
                                                           _%in125500%_)
                                                          _%r125501%_))
                                                  _%r125469%_
                                                  _%imports125496%_)
                                                 _%r125469%_))))
                                      (let ((_%try-match125472125521%_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _%in125470125484%_
                                                    'gx#import-set::t)
                                                   (let* ((_%e125476125506%_
                                                           (##unchecked-structure-ref
                                                            _%in125470125484%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                          (_%e125477125511%_
                                                           (##unchecked-structure-ref
                                                            _%in125470125484%_
                                                            '2
                                                            '#f
                                                            '#f))
                                                          (_%e125478125516%_
                                                           (##unchecked-structure-ref
                                                            _%in125470125484%_
                                                            '3
                                                            '#f
                                                            '#f)))
                                                     (let ((_%ctx125509%_
                                                            _%e125476125506%_)
                                                           (_%phi125514%_
                                                            _%e125477125511%_)
                                                           (_%imports125519%_
                                                            _%e125478125516%_))
                                                       (_%K125475125503%_
                                                        _%imports125519%_
                                                        _%phi125514%_
                                                        _%ctx125509%_)))
                                                   (_%else125473125492%_)))))
                                        (if (##structure-direct-instance-of?
                                             _%in125470125484%_
                                             'gx#module-import::t)
                                            (let* ((_%e125480125531%_
                                                    (##unchecked-structure-ref
                                                     _%in125470125484%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                   (_%e125481125536%_
                                                    (##unchecked-structure-ref
                                                     _%in125470125484%_
                                                     '2
                                                     '#f
                                                     '#f))
                                                   (_%e125482125541%_
                                                    (##unchecked-structure-ref
                                                     _%in125470125484%_
                                                     '3
                                                     '#f
                                                     '#f)))
                                              (let ((_%out125534%_
                                                     _%e125480125531%_)
                                                    (_%key125539%_
                                                     _%e125481125536%_)
                                                    (_%phi125544%_
                                                     _%e125482125541%_))
                                                (_%K125479125528%_
                                                 _%phi125544%_
                                                 _%key125539%_
                                                 _%out125534%_)))
                                            (_%try-match125472125521%_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _%src125460%_
                              _%current-phi125464%_
                              (__foldl1
                               _%fold-e125466%_
                               '()
                               (##unchecked-structure-ref
                                _%current-ctx125463%_
                                '8
                                '#f
                                '#f)))
                             _%r125461%_))))
                  (_%export!125431%_
                   (lambda (_%rbody125447%_)
                     (letrec* ((_%current-ctx125449%_
                                (gx#current-expander-context))
                               (_%fold-e125450%_
                                (lambda (_%out125454%_ _%r125455%_)
                                  (if (##structure-direct-instance-of?
                                       _%out125454%_
                                       'gx#module-export::t)
                                      (cons _%out125454%_ _%r125455%_)
                                      (if (##structure-direct-instance-of?
                                           _%out125454%_
                                           'gx#export-set::t)
                                          (__foldl1
                                           cons
                                           _%r125455%_
                                           (##unchecked-structure-ref
                                            _%out125454%_
                                            '3
                                            '#f
                                            '#f))
                                          _%r125455%_)))))
                       (let ((_%body125452%_ (reverse _%rbody125447%_)))
                         (##unchecked-structure-set!
                          _%current-ctx125449%_
                          (__foldl1
                           _%fold-e125450%_
                           (##unchecked-structure-ref
                            _%current-ctx125449%_
                            '9
                            '#f
                            '#f)
                           _%body125452%_)
                          '9
                          '#f
                          '#f)
                         _%body125452%_))))
                  (_%expanded-export?125432%_
                   (lambda (_%e125442%_)
                     (let ((_%$e125444%_
                            (##structure-direct-instance-of?
                             _%e125442%_
                             'gx#module-export::t)))
                       (if _%$e125444%_
                           _%$e125444%_
                           (##structure-direct-instance-of?
                            _%e125442%_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _%internal-expand?125426%_)
              (let ((_%rbody125438%_
                     (gx#core-expand-import/export
                      _%stx125425%_
                      _%expanded-export?125432%_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _%expand1125429%_)))
                (if _%internal-expand?125426%_
                    (reverse _%rbody125438%_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons
                      '%#export
                      (_%export!125431%_ _%rbody125438%_))
                     (gx#stx-source _%stx125425%_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _%stx125425%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _%stx125425%_))))))
    (define gx#core-expand-export%__0
      (lambda (_%stx125924%_)
        (let ((_%internal-expand?125926%_ '#f))
          (gx#core-expand-export%__%
           _%stx125924%_
           _%internal-expand?125926%_))))
    (define gx#core-expand-export%
      (lambda _g129002_
        (let ((_g129001_ (##length _g129002_)))
          (cond ((##fx= _g129001_ 1)
                 (apply gx#core-expand-export%__0 _g129002_))
                ((##fx= _g129001_ 2)
                 (apply gx#core-expand-export%__% _g129002_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g129002_))))))
    (define gx#core-expand-export-source
      (lambda (_%hd125422%_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _%hd125422%_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_%stx125392%_)
        (let* ((_%e125393125400%_ _%stx125392%_)
               (_%E125395125404%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125393125400%_)))
               (_%E125394125418%_
                (lambda ()
                  (if (gx#stx-pair? _%e125393125400%_)
                      (let ((_%e125396125408%_
                             (gx#syntax-e _%e125393125400%_)))
                        (let ((_%hd125397125411%_ (##car _%e125396125408%_))
                              (_%tl125398125413%_ (##cdr _%e125396125408%_)))
                          (let ((_%body125416%_ _%tl125398125413%_))
                            (if (gx#identifier-list? _%body125416%_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _%body125416%_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _%body125416%_))
                                   (gx#stx-source _%stx125392%_)))
                                (_%E125395125404%_)))))
                      (_%E125395125404%_)))))
          (_%E125394125418%_))))
    (define gx#core-bind-feature!__%
      (lambda (_%id125358%_ _%private?125359%_ _%phi125360%_ _%ctx125361%_)
        (gx#core-bind-syntax!__%
         _%id125358%_
         ((if _%private?125359%_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _%id125358%_))
         _%private?125359%_
         _%phi125360%_
         _%ctx125361%_)))
    (define gx#core-bind-feature!__0
      (lambda (_%id125366%_)
        (let* ((_%private?125368%_ '#f)
               (_%phi125370%_ (gx#current-expander-phi))
               (_%ctx125372%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id125366%_
           _%private?125368%_
           _%phi125370%_
           _%ctx125372%_))))
    (define gx#core-bind-feature!__1
      (lambda (_%id125374%_ _%private?125375%_)
        (let* ((_%phi125377%_ (gx#current-expander-phi))
               (_%ctx125379%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id125374%_
           _%private?125375%_
           _%phi125377%_
           _%ctx125379%_))))
    (define gx#core-bind-feature!__2
      (lambda (_%id125381%_ _%private?125382%_ _%phi125383%_)
        (let ((_%ctx125385%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id125381%_
           _%private?125382%_
           _%phi125383%_
           _%ctx125385%_))))
    (define gx#core-bind-feature!
      (lambda _g129004_
        (let ((_g129003_ (##length _g129004_)))
          (cond ((##fx= _g129003_ 1)
                 (apply gx#core-bind-feature!__0 _g129004_))
                ((##fx= _g129003_ 2)
                 (apply gx#core-bind-feature!__1 _g129004_))
                ((##fx= _g129003_ 3)
                 (apply gx#core-bind-feature!__2 _g129004_))
                ((##fx= _g129003_ 4)
                 (apply gx#core-bind-feature!__% _g129004_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g129004_))))))))
