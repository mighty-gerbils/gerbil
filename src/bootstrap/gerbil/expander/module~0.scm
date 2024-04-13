(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1713000277)
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
      (lambda _%$args128326%_
        (apply make-instance gx#module-import::t _%$args128326%_)))
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
      (lambda _%$args128323%_
        (apply make-instance gx#module-export::t _%$args128323%_)))
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
      (lambda _%$args128320%_
        (apply make-instance gx#import-set::t _%$args128320%_)))
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
      (lambda _%$args128317%_
        (apply make-instance gx#export-set::t _%$args128317%_)))
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
      (lambda _%$args128314%_
        (apply make-instance gx#import-expander::t _%$args128314%_)))
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
      (lambda _%$args128311%_
        (apply make-instance gx#export-expander::t _%$args128311%_)))
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
      (lambda _%$args128308%_
        (apply make-instance gx#import-export-expander::t _%$args128308%_)))
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
      (lambda (_%path128305%_ _%fun128306%_)
        (call-with-input-file
         (cons 'path: (cons _%path128305%_ gx#source-file-settings))
         _%fun128306%_)))
    (define gx#module-context:::init!
      (lambda (_%self124757128286%_
               _%id128288%_
               _%super128289%_
               _%ns128290%_
               _%path128291%_)
        (let* ((_%self128293%_ _%self124757128286%_)
               (_%self128295%_ _%self128293%_))
          (if (##fx< '11 (##structure-length _%self128295%_))
              (begin
                (##unchecked-structure-set!
                 _%self128295%_
                 _%id128288%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self128295%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self128295%_
                 _%super128289%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self128295%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self128295%_ '#f '5 '#f '#f)
                (##unchecked-structure-set!
                 _%self128295%_
                 _%ns128290%_
                 '6
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self128295%_
                 _%path128291%_
                 '7
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self128295%_ '() '8 '#f '#f)
                (##unchecked-structure-set! _%self128295%_ '() '9 '#f '#f)
                (##unchecked-structure-set! _%self128295%_ '#f '10 '#f '#f)
                (##unchecked-structure-set! _%self128295%_ '#f '11 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self128295%_
                     '11
                     (##vector-length _%self128295%_))))))
    (__bind-method!__%
     gx#module-context::t
     ':init!
     gx#module-context:::init!
     '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_%self124758128117%_ _%ctx128119%_ _%root128120%_)
        (let* ((_%self128122%_ _%self124758128117%_)
               (_%self128124%_ _%self128122%_)
               (_%super128140%_
                (let ((_%$e128134%_ _%root128120%_))
                  (if _%$e128134%_
                      _%$e128134%_
                      (let ((_%$e128137%_ (gx#core-context-root__0)))
                        (if _%$e128137%_
                            _%$e128137%_
                            (let ((__obj128370
                                   (##structure gx#root-context::t '#f '#f)))
                              (let ((__constructor128371
                                     (direct-method-ref
                                      gx#root-context::t
                                      __obj128370
                                      ':init!)))
                                (if __constructor128371
                                    (__constructor128371 __obj128370)
                                    (error '"missing constructor method implementation"
                                           'class:
                                           gx#root-context::t
                                           'method:
                                           ':init!)))
                              __obj128370)))))))
          (if _%ctx128119%_
              (let ((_%id128143%_
                     (##structure-ref
                      _%ctx128119%_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_%path128144%_
                     (##structure-ref
                      _%ctx128119%_
                      '7
                      gx#module-context::t
                      '#f))
                    (_%in128145%_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _%ctx128119%_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_%e128146%_
                     (__make-promise
                      (lambda () (gx#eval-module _%ctx128119%_)))))
                (if (##fx< '8 (##structure-length _%self128124%_))
                    (begin
                      (##unchecked-structure-set!
                       _%self128124%_
                       _%id128143%_
                       '1
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self128124%_
                       (make-hash-table-eq 'size: (##length _%in128145%_))
                       '2
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self128124%_
                       _%super128140%_
                       '3
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self128124%_
                       '#f
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self128124%_
                       '#f
                       '5
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self128124%_
                       _%path128144%_
                       '6
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self128124%_
                       _%in128145%_
                       '7
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self128124%_
                       _%e128146%_
                       '8
                       '#f
                       '#f)
                      '#!void)
                    (error '"struct-instance-init!: too many arguments for struct"
                           _%self128124%_
                           '8
                           (##vector-length _%self128124%_)))
                (##for-each
                 (lambda (_%g128147128149%_)
                   (gx#core-bind-weak-import!__%
                    _%g128147128149%_
                    _%self128124%_))
                 _%in128145%_))
              (if (##fx< '8 (##structure-length _%self128124%_))
                  (begin
                    (##unchecked-structure-set! _%self128124%_ '#f '1 '#f '#f)
                    (##unchecked-structure-set!
                     _%self128124%_
                     (make-hash-table-eq)
                     '2
                     '#f
                     '#f)
                    (##unchecked-structure-set!
                     _%self128124%_
                     _%super128140%_
                     '3
                     '#f
                     '#f)
                    (##unchecked-structure-set! _%self128124%_ '#f '4 '#f '#f)
                    (##unchecked-structure-set! _%self128124%_ '#f '5 '#f '#f)
                    (##unchecked-structure-set! _%self128124%_ '#f '6 '#f '#f)
                    (##unchecked-structure-set! _%self128124%_ '() '7 '#f '#f)
                    (##unchecked-structure-set! _%self128124%_ '#f '8 '#f '#f)
                    '#!void)
                  (error '"struct-instance-init!: too many arguments for struct"
                         _%self128124%_
                         '8
                         (##vector-length _%self128124%_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_%self124758128155%_ _%ctx128156%_)
        (let ((_%root128158%_ '#f))
          (gx#prelude-context:::init!__%
           _%self124758128155%_
           _%ctx128156%_
           _%root128158%_))))
    (define gx#prelude-context:::init!
      (lambda _g128377_
        (let ((_g128376_ (##length _g128377_)))
          (cond ((##fx= _g128376_ 2)
                 (apply gx#prelude-context:::init!__0 _g128377_))
                ((##fx= _g128376_ 3)
                 (apply gx#prelude-context:::init!__% _g128377_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g128377_))))))
    (__bind-method!__%
     gx#prelude-context::t
     ':init!
     gx#prelude-context:::init!
     '#f)
    (define gx#import-export-expander-init!
      (lambda (_%self127991%_ _%e127992%_)
        (if (##fx< '3 (##structure-length _%self127991%_))
            (begin
              (##unchecked-structure-set!
               _%self127991%_
               _%e127992%_
               '1
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self127991%_
               (gx#current-expander-context)
               '2
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self127991%_
               (##fx- (gx#current-expander-phi) '1)
               '3
               '#f
               '#f)
              '#!void)
            (error '"struct-instance-init!: too many arguments for struct"
                   _%self127991%_
                   '3
                   (##vector-length _%self127991%_)))))
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
      (lambda (_%g127617127620%_ _%g127618127622%_)
        (gx#core-apply-user-expander__%
         _%g127617127620%_
         _%g127618127622%_
         'apply-import-expander)))
    (__bind-method!__%
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_%g127488127491%_ _%g127489127493%_)
        (gx#core-apply-user-expander__%
         _%g127488127491%_
         _%g127489127493%_
         'apply-export-expander)))
    (__bind-method!__%
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_%ctx127359%_)
        (let* ((_%path127361%_
                (##structure-ref _%ctx127359%_ '7 gx#module-context::t '#f))
               (_%path127363%_
                (if (pair? _%path127361%_)
                    (##last _%path127361%_)
                    _%path127361%_)))
          (if (string? _%path127363%_) _%path127363%_ '#f))))
    (define gx#import-module__%
      (lambda (_%path127335%_ _%reload?127336%_ _%eval?127337%_)
        (let ((_%ctx127339%_
               ((gx#current-expander-module-import)
                _%path127335%_
                _%reload?127336%_)))
          (if (and _%ctx127339%_ _%eval?127337%_)
              (gx#eval-module _%ctx127339%_)
              '#!void)
          _%ctx127339%_)))
    (define gx#import-module__0
      (lambda (_%path127344%_)
        (let* ((_%reload?127346%_ '#f) (_%eval?127348%_ '#f))
          (gx#import-module__%
           _%path127344%_
           _%reload?127346%_
           _%eval?127348%_))))
    (define gx#import-module__1
      (lambda (_%path127350%_ _%reload?127351%_)
        (let ((_%eval?127353%_ '#f))
          (gx#import-module__%
           _%path127350%_
           _%reload?127351%_
           _%eval?127353%_))))
    (define gx#import-module
      (lambda _g128379_
        (let ((_g128378_ (##length _g128379_)))
          (cond ((##fx= _g128378_ 1) (apply gx#import-module__0 _g128379_))
                ((##fx= _g128378_ 2) (apply gx#import-module__1 _g128379_))
                ((##fx= _g128378_ 3) (apply gx#import-module__% _g128379_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g128379_))))))
    (define gx#eval-module
      (lambda (_%mod127332%_)
        ((gx#current-expander-module-eval) _%mod127332%_)))
    (define gx#core-eval-module
      (lambda (_%obj127312%_)
        (letrec ((_%force-e127314%_
                  (lambda (_%getf127328%_ _%e127329%_)
                    (__call-with-parameters
                     (lambda () (force (_%getf127328%_ _%e127329%_)))
                     gx#current-expander-context
                     _%e127329%_
                     gx#current-expander-phi
                     '0))))
          (let _%recur127316%_ ((_%e127318%_ _%obj127312%_))
            (if (##structure-instance-of? _%e127318%_ 'gx#module-context::t)
                (let ()
                  (let ((_%$e127321%_
                         (gx#core-context-prelude__% _%e127318%_)))
                    (if _%$e127321%_ (_%recur127316%_ _%$e127321%_) '#!void))
                  (_%force-e127314%_ gx#module-context-e _%e127318%_))
                (if (##structure-instance-of?
                     _%e127318%_
                     'gx#prelude-context::t)
                    (_%force-e127314%_ gx#prelude-context-e _%e127318%_)
                    (if (gx#stx-string? _%e127318%_)
                        (_%recur127316%_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _%e127318%_)))
                        (if (gx#core-library-module-path? _%e127318%_)
                            (_%recur127316%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%e127318%_)))
                            (error '"cannot eval module" _%obj127312%_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_%ctx127292%_)
        (let _%lp127294%_ ((_%e127296%_ _%ctx127292%_))
          (if (or (##structure-instance-of? _%e127296%_ 'gx#module-context::t)
                  (##structure-instance-of? _%e127296%_ 'gx#local-context::t))
              (_%lp127294%_ (##unchecked-structure-ref _%e127296%_ '3 '#f '#f))
              (if (##structure-instance-of? _%e127296%_ 'gx#prelude-context::t)
                  _%e127296%_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_%ctx127308%_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _%ctx127308%_))))
    (define gx#core-context-prelude
      (lambda _g128381_
        (let ((_g128380_ (##length _g128381_)))
          (cond ((##fx= _g128380_ 0)
                 (apply gx#core-context-prelude__0 _g128381_))
                ((##fx= _g128380_ 1)
                 (apply gx#core-context-prelude__% _g128381_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g128381_))))))
    (define gx#core-module->prelude-context
      (lambda (_%ctx127283%_)
        (let ((_%$e127285%_ (__hash-get gx#__module-registry _%ctx127283%_)))
          (if _%$e127285%_
              _%$e127285%_
              (let ((_%pre127289%_
                     (let ((__obj128372
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
                        __obj128372
                        _%ctx127283%_)
                       __obj128372)))
                (__hash-put! gx#__module-registry _%ctx127283%_ _%pre127289%_)
                _%pre127289%_)))))
    (define gx#core-import-module__%
      (lambda (_%rpath127155%_ _%reload?127156%_)
        (letrec ((_%import-source127158%_
                  (lambda (_%path127247%_)
                    (if (member _%path127247%_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _%path127247%_)
                        '#!void)
                    (__call-with-parameters
                     (lambda ()
                       (let ((_g128382_ (gx#core-read-module _%path127247%_)))
                         (begin
                           (let ((_g128383_
                                  (if (##values? _g128382_)
                                      (##vector-length _g128382_)
                                      1)))
                             (if (not (##fx= _g128383_ 4))
                                 (error "Context expects 4 values" _g128383_)))
                           (let ((_%pre127250%_ (##vector-ref _g128382_ 0))
                                 (_%id127251%_ (##vector-ref _g128382_ 1))
                                 (_%ns127252%_ (##vector-ref _g128382_ 2))
                                 (_%body127253%_ (##vector-ref _g128382_ 3)))
                             (let* ((_%prelude127263%_
                                     (if (##structure-instance-of?
                                          _%pre127250%_
                                          'gx#prelude-context::t)
                                         _%pre127250%_
                                         (if (##structure-instance-of?
                                              _%pre127250%_
                                              'gx#module-context::t)
                                             (gx#core-module->prelude-context
                                              _%pre127250%_)
                                             (if (string? _%pre127250%_)
                                                 (gx#core-module->prelude-context
                                                  (gx#core-import-module__0
                                                   _%pre127250%_))
                                                 (if (not _%pre127250%_)
                                                     (let ((_%$e127259%_
                                                            (gx#current-expander-module-prelude)))
                                                       (if _%$e127259%_
                                                           _%$e127259%_
                                                           (let ((__obj128373
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
                     (gx#prelude-context:::init!__0 __obj128373 '#f)
                     __obj128373)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error '"cannot import module; unknown prelude"
                                                            _%rpath127155%_
                                                            _%pre127250%_))))))
                                    (_%ctx127265%_
                                     (let ((__obj128374
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
                                        __obj128374
                                        _%id127251%_
                                        _%prelude127263%_
                                        _%ns127252%_
                                        _%path127247%_)
                                       __obj128374))
                                    (_%body127267%_
                                     (gx#core-expand-module-begin
                                      _%body127253%_
                                      _%ctx127265%_))
                                    (_%body127269%_
                                     (gx#core-quote-syntax__%
                                      (gx#core-cons '%#begin _%body127267%_)
                                      _%path127247%_
                                      _%ctx127265%_
                                      '())))
                               (##unchecked-structure-set!
                                _%ctx127265%_
                                (__make-promise
                                 (lambda () (gx#eval-syntax* _%body127269%_)))
                                '10
                                '#f
                                '#f)
                               (##unchecked-structure-set!
                                _%ctx127265%_
                                _%body127269%_
                                '11
                                '#f
                                '#f)
                               (__hash-put!
                                gx#__module-registry
                                _%path127247%_
                                _%ctx127265%_)
                               (__hash-put!
                                gx#__module-registry
                                _%id127251%_
                                _%ctx127265%_)
                               _%ctx127265%_)))))
                     gx#current-expander-context
                     (gx#core-context-root__0)
                     gx#current-expander-marks
                     '()
                     gx#current-expander-phi
                     '0
                     gx#current-expander-path
                     (cons _%path127247%_ (gx#current-expander-path))
                     gx#current-import-expander-phi
                     '#f
                     gx#current-export-expander-phi
                     '#f)))
                 (_%import-submodule127159%_
                  (lambda (_%rpath127175%_)
                    (let* ((_%rpath127176127183%_ _%rpath127175%_)
                           (_%E127178127187%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%rpath127176127183%_
                                     '([origin . refs]))
                              '#!void))
                           (_%K127179127235%_
                            (lambda (_%refs127190%_ _%origin127191%_)
                              (let ((_%ctx127193%_
                                     (if _%origin127191%_
                                         (gx#core-import-module__%
                                          _%origin127191%_
                                          _%reload?127156%_)
                                         (gx#current-expander-context))))
                                (let _%lp127195%_ ((_%rest127197%_
                                                    _%refs127190%_)
                                                   (_%ctx127198%_
                                                    _%ctx127193%_))
                                  (let* ((_%rest127199127207%_ _%rest127197%_)
                                         (_%else127201127215%_
                                          (lambda () _%ctx127198%_))
                                         (_%K127203127223%_
                                          (lambda (_%rest127218%_ _%id127219%_)
                                            (let ((_%bind127221%_
                                                   (gx#resolve-identifier__%
                                                    _%id127219%_
                                                    '0
                                                    _%ctx127198%_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _%bind127221%_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _%bind127221%_
                                                         '4
                                                         '#f
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_%lp127195%_
                                                   _%rest127218%_
                                                   (##unchecked-structure-ref
                                                    _%bind127221%_
                                                    '4
                                                    '#f
                                                    '#f))
                                                  (error '"cannot import submodule; not bound as a module"
                                                         _%rpath127175%_
                                                         _%id127219%_
                                                         _%bind127221%_))))))
                                    (if (##pair? _%rest127199127207%_)
                                        (let ((_%hd127204127226%_
                                               (##car _%rest127199127207%_))
                                              (_%tl127205127228%_
                                               (##cdr _%rest127199127207%_)))
                                          (let* ((_%id127231%_
                                                  _%hd127204127226%_)
                                                 (_%rest127233%_
                                                  _%tl127205127228%_))
                                            (_%K127203127223%_
                                             _%rest127233%_
                                             _%id127231%_)))
                                        (_%else127201127215%_))))))))
                      (if (##pair? _%rpath127176127183%_)
                          (let ((_%hd127180127238%_
                                 (##car _%rpath127176127183%_))
                                (_%tl127181127240%_
                                 (##cdr _%rpath127176127183%_)))
                            (let* ((_%origin127243%_ _%hd127180127238%_)
                                   (_%refs127245%_ _%tl127181127240%_))
                              (_%K127179127235%_
                               _%refs127245%_
                               _%origin127243%_)))
                          (_%E127178127187%_))))))
          (let ((_%$e127161%_
                 (if (not _%reload?127156%_)
                     (__hash-get gx#__module-registry _%rpath127155%_)
                     '#f)))
            (if _%$e127161%_
                _%$e127161%_
                (if (list? _%rpath127155%_)
                    (_%import-submodule127159%_ _%rpath127155%_)
                    (if (gx#core-library-module-path? _%rpath127155%_)
                        (let ((_%ctx127166%_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _%rpath127155%_)
                                _%reload?127156%_)))
                          (__hash-put!
                           gx#__module-registry
                           _%rpath127155%_
                           _%ctx127166%_)
                          _%ctx127166%_)
                        (let* ((_%npath127169%_
                                (path-normalize _%rpath127155%_))
                               (_%$e127171%_
                                (if (not _%reload?127156%_)
                                    (__hash-get
                                     gx#__module-registry
                                     _%npath127169%_)
                                    '#f)))
                          (if _%$e127171%_
                              _%$e127171%_
                              (_%import-source127158%_
                               _%npath127169%_))))))))))
    (define gx#core-import-module__0
      (lambda (_%rpath127276%_)
        (let ((_%reload?127278%_ '#f))
          (gx#core-import-module__% _%rpath127276%_ _%reload?127278%_))))
    (define gx#core-import-module
      (lambda _g128385_
        (let ((_g128384_ (##length _g128385_)))
          (cond ((##fx= _g128384_ 1)
                 (apply gx#core-import-module__0 _g128385_))
                ((##fx= _g128384_ 2)
                 (apply gx#core-import-module__% _g128385_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g128385_))))))
    (define gx#core-read-module
      (lambda (_%path127144%_)
        (__with-catch
         (lambda (_%exn127146%_)
           (if (and (datum-parsing-exception? _%exn127146%_)
                    (eq? (datum-parsing-exception-filepos _%exn127146%_) '0))
               (gx#core-read-module/lang _%path127144%_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _%path127144%_
                (__call-with-parameters
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_%g127148127150%_)
                      (display-exception__% _%exn127146%_ _%g127148127150%_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _%path127144%_)))))
    (define gx#core-read-module/sexp
      (lambda (_%path126996%_)
        (let _%lp126998%_ ((_%body127000%_
                            (read-syntax-from-file _%path126996%_))
                           (_%pre127001%_ '#f)
                           (_%ns127002%_ '#f)
                           (_%pkg127003%_ '#f))
          (let* ((_%e127004127028%_ _%body127000%_)
                 (_%E127020127054%_
                  (lambda ()
                    (let ((_g128386_
                           (if _%pkg127003%_
                               (values _%pre127001%_
                                       _%ns127002%_
                                       _%pkg127003%_)
                               (gx#core-read-module-package
                                _%path126996%_
                                _%pre127001%_
                                _%ns127002%_))))
                      (begin
                        (let ((_g128387_
                               (if (##values? _g128386_)
                                   (##vector-length _g128386_)
                                   1)))
                          (if (not (##fx= _g128387_ 3))
                              (error "Context expects 3 values" _g128387_)))
                        (let ((_%pre127032%_ (##vector-ref _g128386_ 0))
                              (_%ns127033%_ (##vector-ref _g128386_ 1))
                              (_%pkg127034%_ (##vector-ref _g128386_ 2)))
                          (let* ((_%prelude127040%_
                                  (if (gx#core-bound-module-prelude?
                                       _%pre127032%_)
                                      (gx#syntax-local-e__0 _%pre127032%_)
                                      (if (gx#core-library-module-path?
                                           _%pre127032%_)
                                          (gx#core-resolve-library-module-path
                                           _%pre127032%_)
                                          (if (gx#stx-string? _%pre127032%_)
                                              (gx#core-resolve-module-path__%
                                               _%pre127032%_
                                               _%path126996%_)
                                              (gx#stx-e _%pre127032%_)))))
                                 (_%path-id127042%_
                                  (gx#core-module-path->namespace
                                   _%path126996%_))
                                 (_%pkg-id127044%_
                                  (if _%pkg127034%_
                                      (##string-append
                                       _%pkg127034%_
                                       '"/"
                                       _%path-id127042%_)
                                      _%path-id127042%_))
                                 (_%module-id127046%_
                                  (##string->symbol _%pkg-id127044%_))
                                 (_%module-ns127051%_
                                  (if (eq? _%ns127033%_ '#!void)
                                      '#f
                                      (let ((_%$e127048%_ _%ns127033%_))
                                        (if _%$e127048%_
                                            _%$e127048%_
                                            _%pkg-id127044%_)))))
                            (values _%prelude127040%_
                                    _%module-id127046%_
                                    _%module-ns127051%_
                                    _%body127000%_)))))))
                 (_%E127013127086%_
                  (lambda ()
                    (if (gx#stx-pair? _%e127004127028%_)
                        (let ((_%e127021127058%_
                               (gx#syntax-e _%e127004127028%_)))
                          (let ((_%hd127022127061%_ (##car _%e127021127058%_))
                                (_%tl127023127063%_ (##cdr _%e127021127058%_)))
                            (if (eq? (gx#stx-e _%hd127022127061%_) 'package:)
                                (if (gx#stx-pair? _%tl127023127063%_)
                                    (let ((_%e127024127066%_
                                           (gx#syntax-e _%tl127023127063%_)))
                                      (let ((_%hd127025127069%_
                                             (##car _%e127024127066%_))
                                            (_%tl127026127071%_
                                             (##cdr _%e127024127066%_)))
                                        (let* ((_%pkg127074%_
                                                _%hd127025127069%_)
                                               (_%rest127076%_
                                                _%tl127026127071%_)
                                               (_%pkg127084%_
                                                (if (gx#identifier?
                                                     _%pkg127074%_)
                                                    (symbol->string
                                                     (gx#stx-e _%pkg127074%_))
                                                    (if (or (gx#stx-string?
                                                             _%pkg127074%_)
                                                            (gx#stx-false?
                                                             _%pkg127074%_))
                                                        (gx#stx-e
                                                         _%pkg127074%_)
                                                        (gx#raise-syntax-error
                                                         'import
                                                         '"Bad syntax; Illegal package name"
                                                         _%pkg127074%_)))))
                                          (_%lp126998%_
                                           _%rest127076%_
                                           _%pre127001%_
                                           _%ns127002%_
                                           _%pkg127084%_))))
                                    (_%E127020127054%_))
                                (_%E127020127054%_))))
                        (_%E127020127054%_))))
                 (_%E127006127116%_
                  (lambda ()
                    (if (gx#stx-pair? _%e127004127028%_)
                        (let ((_%e127014127090%_
                               (gx#syntax-e _%e127004127028%_)))
                          (let ((_%hd127015127093%_ (##car _%e127014127090%_))
                                (_%tl127016127095%_ (##cdr _%e127014127090%_)))
                            (if (eq? (gx#stx-e _%hd127015127093%_) 'namespace:)
                                (if (gx#stx-pair? _%tl127016127095%_)
                                    (let ((_%e127017127098%_
                                           (gx#syntax-e _%tl127016127095%_)))
                                      (let ((_%hd127018127101%_
                                             (##car _%e127017127098%_))
                                            (_%tl127019127103%_
                                             (##cdr _%e127017127098%_)))
                                        (let* ((_%ns127106%_
                                                _%hd127018127101%_)
                                               (_%rest127108%_
                                                _%tl127019127103%_)
                                               (_%ns127114%_
                                                (if (gx#identifier?
                                                     _%ns127106%_)
                                                    (symbol->string
                                                     (gx#stx-e _%ns127106%_))
                                                    (if (gx#stx-string?
                                                         _%ns127106%_)
                                                        (gx#stx-e _%ns127106%_)
                                                        (if (gx#stx-false?
                                                             _%ns127106%_)
                                                            '#!void
                                                            (gx#raise-syntax-error
                                                             'import
                                                             '"Bad syntax; illegal namespace"
                                                             _%ns127106%_))))))
                                          (_%lp126998%_
                                           _%rest127108%_
                                           _%pre127001%_
                                           _%ns127114%_
                                           _%pkg127003%_))))
                                    (_%E127013127086%_))
                                (_%E127013127086%_))))
                        (_%E127013127086%_))))
                 (_%E127005127140%_
                  (lambda ()
                    (if (gx#stx-pair? _%e127004127028%_)
                        (let ((_%e127007127120%_
                               (gx#syntax-e _%e127004127028%_)))
                          (let ((_%hd127008127123%_ (##car _%e127007127120%_))
                                (_%tl127009127125%_ (##cdr _%e127007127120%_)))
                            (if (eq? (gx#stx-e _%hd127008127123%_) 'prelude:)
                                (if (gx#stx-pair? _%tl127009127125%_)
                                    (let ((_%e127010127128%_
                                           (gx#syntax-e _%tl127009127125%_)))
                                      (let ((_%hd127011127131%_
                                             (##car _%e127010127128%_))
                                            (_%tl127012127133%_
                                             (##cdr _%e127010127128%_)))
                                        (let* ((_%prelude127136%_
                                                _%hd127011127131%_)
                                               (_%rest127138%_
                                                _%tl127012127133%_))
                                          (_%lp126998%_
                                           _%rest127138%_
                                           _%prelude127136%_
                                           _%ns127002%_
                                           _%pkg127003%_))))
                                    (_%E127006127116%_))
                                (_%E127006127116%_))))
                        (_%E127006127116%_)))))
            (_%E127005127140%_)))))
    (define gx#core-read-module/lang
      (lambda (_%path126818%_)
        (letrec ((_%default-read-module-body126820%_
                  (lambda (_%inp126988%_)
                    (let _%lp126990%_ ((_%body126992%_ '()))
                      (let ((_%next126994%_ (read-syntax__% _%inp126988%_)))
                        (if (eof-object? _%next126994%_)
                            (reverse _%body126992%_)
                            (_%lp126990%_
                             (cons _%next126994%_ _%body126992%_)))))))
                 (_%read-body126821%_
                  (lambda (_%inp126906%_
                           _%pre126907%_
                           _%ns126908%_
                           _%pkg126909%_
                           _%args126910%_)
                    (let ((_g128388_
                           (if _%pkg126909%_
                               (values _%pre126907%_
                                       _%ns126908%_
                                       _%pkg126909%_)
                               (gx#core-read-module-package
                                _%path126818%_
                                _%pre126907%_
                                _%ns126908%_))))
                      (begin
                        (let ((_g128389_
                               (if (##values? _g128388_)
                                   (##vector-length _g128388_)
                                   1)))
                          (if (not (##fx= _g128389_ 3))
                              (error "Context expects 3 values" _g128389_)))
                        (let ((_%pre126912%_ (##vector-ref _g128388_ 0))
                              (_%ns126913%_ (##vector-ref _g128388_ 1))
                              (_%pkg126914%_ (##vector-ref _g128388_ 2)))
                          (let* ((_%prelude126916%_
                                  (gx#import-module__0 _%pre126912%_))
                                 (_%read-module-body126971%_
                                  (let ((_%$e126962%_
                                         (__find (lambda (_%e126917126919%_)
                                                   (let* ((_%g126921126931%_
                                                           _%e126917126919%_)
                                                          (_%else126923126939%_
                                                           (lambda () '#f))
                                                          (_%K126925126943%_
                                                           (lambda () '#t)))
                                                     (if (##structure-direct-instance-of?
                                                          _%g126921126931%_
                                                          'gx#module-export::t)
                                                         (let* ((_%e126926126946%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##unchecked-structure-ref
                          _%g126921126931%_
                          '1
                          '#f
                          '#f))
                        (_%e126927126949%_
                         (##unchecked-structure-ref
                          _%g126921126931%_
                          '2
                          '#f
                          '#f))
                        (_%e126928126952%_
                         (##unchecked-structure-ref
                          _%g126921126931%_
                          '3
                          '#f
                          '#f)))
                   (if (##eq? _%e126928126952%_ '1)
                       (let ((_%e126929126955%_
                              (##unchecked-structure-ref
                               _%g126921126931%_
                               '4
                               '#f
                               '#f)))
                         (if ((lambda (_%g126957126959%_)
                                (eq? _%g126957126959%_ 'read-module-body))
                              _%e126929126955%_)
                             (_%K126925126943%_)
                             (_%else126923126939%_)))
                       (_%else126923126939%_)))
                 (_%else126923126939%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (##unchecked-structure-ref
                                                  _%prelude126916%_
                                                  '9
                                                  '#f
                                                  '#f))))
                                    (if _%$e126962%_
                                        ((lambda (_%xport126965%_)
                                           (let ((_%proc126968%_
                                                  (__with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _%xport126965%_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _%proc126968%_)
                                                 _%proc126968%_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _%path126818%_
                                                  _%pre126912%_
                                                  _%proc126968%_))))
                                         _%$e126962%_)
                                        _%default-read-module-body126820%_)))
                                 (_%path-id126973%_
                                  (gx#core-module-path->namespace
                                   _%path126818%_))
                                 (_%pkg-id126975%_
                                  (if _%pkg126914%_
                                      (##string-append
                                       _%pkg126914%_
                                       '"/"
                                       _%path-id126973%_)
                                      _%path-id126973%_))
                                 (_%module-id126977%_
                                  (##string->symbol _%pkg-id126975%_))
                                 (_%module-ns126982%_
                                  (let ((_%$e126979%_ _%ns126913%_))
                                    (if _%$e126979%_
                                        _%$e126979%_
                                        _%pkg-id126975%_)))
                                 (_%body126985%_
                                  (__call-with-parameters
                                   (lambda ()
                                     (_%read-module-body126971%_
                                      _%inp126906%_))
                                   gx#current-module-reader-path
                                   _%path126818%_
                                   gx#current-module-reader-args
                                   _%args126910%_)))
                            (values _%prelude126916%_
                                    _%module-id126977%_
                                    _%module-ns126982%_
                                    _%body126985%_)))))))
                 (_%string-e126822%_
                  (lambda (_%obj126900%_ _%what126901%_)
                    (if (string? _%obj126900%_)
                        _%obj126900%_
                        (if (symbol? _%obj126900%_)
                            (##symbol->string _%obj126900%_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _%what126901%_)
                             _%path126818%_
                             _%obj126900%_)))))
                 (_%read-lang-args126823%_
                  (lambda (_%inp126855%_ _%args126856%_)
                    (let* ((_%args126857126865%_ _%args126856%_)
                           (_%else126859126873%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _%path126818%_)))
                           (_%K126861126888%_
                            (lambda (_%args126876%_ _%prelude126877%_)
                              (let* ((_%pkg126879%_
                                      (pgetq__0 'package: _%args126876%_))
                                     (_%pkg126881%_
                                      (if _%pkg126879%_
                                          (_%string-e126822%_
                                           _%pkg126879%_
                                           '"package")
                                          '#f))
                                     (_%ns126883%_
                                      (pgetq__0 'namespace: _%args126876%_))
                                     (_%ns126885%_
                                      (if _%ns126883%_
                                          (_%string-e126822%_
                                           _%ns126883%_
                                           '"namespace")
                                          '#f)))
                                (_%read-body126821%_
                                 _%inp126855%_
                                 _%prelude126877%_
                                 _%ns126885%_
                                 _%pkg126881%_
                                 _%args126876%_)))))
                      (if (##pair? _%args126857126865%_)
                          (let ((_%hd126862126891%_
                                 (##car _%args126857126865%_))
                                (_%tl126863126893%_
                                 (##cdr _%args126857126865%_)))
                            (let* ((_%prelude126896%_ _%hd126862126891%_)
                                   (_%args126898%_ _%tl126863126893%_))
                              (_%K126861126888%_
                               _%args126898%_
                               _%prelude126896%_)))
                          (_%else126859126873%_)))))
                 (_%read-lang126824%_
                  (lambda (_%inp126829%_)
                    (let* ((_%head126831%_ (read-line _%inp126829%_))
                           (_%$e126833%_
                            (string-index__0 _%head126831%_ '#\space)))
                      (if _%$e126833%_
                          ((lambda (_%ix126836%_)
                             (let ((_%lang126838%_
                                    (substring
                                     _%head126831%_
                                     '0
                                     _%ix126836%_)))
                               (if (equal? _%lang126838%_ '"#lang")
                                   (let* ((_%rest126840%_
                                           (substring
                                            _%head126831%_
                                            (##fx+ _%ix126836%_ '1)
                                            (string-length _%head126831%_)))
                                          (_%args126851%_
                                           (__with-catch
                                            (lambda (_%g126841126843%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _%path126818%_
                                               _%g126841126843%_))
                                            (lambda ()
                                              (call-with-input-string
                                               _%rest126840%_
                                               (lambda (_%g126846126848%_)
                                                 (read-all
                                                  _%g126846126848%_
                                                  read)))))))
                                     (_%read-lang-args126823%_
                                      _%inp126829%_
                                      _%args126851%_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _%path126818%_))))
                           _%$e126833%_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _%path126818%_)))))
                 (_%read-e126825%_
                  (lambda (_%inp126827%_)
                    (if (eq? (peek-char _%inp126827%_) '#\#)
                        (_%read-lang126824%_ _%inp126827%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _%path126818%_)))))
          (gx#call-with-input-source-file _%path126818%_ _%read-e126825%_))))
    (define gx#core-read-module-package
      (lambda (_%path126766%_ _%pre126767%_ _%ns126768%_)
        (letrec ((_%string-e126770%_
                  (lambda (_%e126813%_)
                    (if (symbol? _%e126813%_)
                        (##symbol->string _%e126813%_)
                        (if (string? _%e126813%_)
                            _%e126813%_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%e126813%_))))))
          (let _%lp126772%_ ((_%dir126774%_ (path-directory _%path126766%_))
                             (_%pkg-path126775%_ '()))
            (let ((_%gerbil.pkg126777%_
                   (path-expand '"gerbil.pkg" _%dir126774%_)))
              (if (##file-exists? _%gerbil.pkg126777%_)
                  (let ((_%plist126779%_
                         (gx#core-library-package-plist__% _%dir126774%_ '#t)))
                    (if (null? _%plist126779%_)
                        (let ((_%pkg126782%_
                               (if (null? _%pkg-path126775%_)
                                   '#f
                                   (string-join _%pkg-path126775%_ '"/"))))
                          (values _%pre126767%_ _%ns126768%_ _%pkg126782%_))
                        (if (list? _%plist126779%_)
                            (let* ((_%root126785%_
                                    (pgetq__0 'package: _%plist126779%_))
                                   (_%pkg126789%_
                                    (let ((_%pkg-path126787%_
                                           (if _%root126785%_
                                               (cons (_%string-e126770%_
                                                      _%root126785%_)
                                                     _%pkg-path126775%_)
                                               _%pkg-path126775%_)))
                                      (if (null? _%pkg-path126787%_)
                                          '#f
                                          (string-join
                                           _%pkg-path126787%_
                                           '"/"))))
                                   (_%ns126796%_
                                    (let ((_%ns126794%_
                                           (let ((_%$e126791%_ _%ns126768%_))
                                             (if _%$e126791%_
                                                 _%$e126791%_
                                                 (pgetq__0
                                                  'namespace:
                                                  _%plist126779%_)))))
                                      (if _%ns126794%_
                                          (_%string-e126770%_ _%ns126794%_)
                                          '#f)))
                                   (_%pre126801%_
                                    (let ((_%$e126798%_ _%pre126767%_))
                                      (if _%$e126798%_
                                          _%$e126798%_
                                          (pgetq__0
                                           'prelude:
                                           _%plist126779%_)))))
                              (values _%pre126801%_
                                      _%ns126796%_
                                      _%pkg126789%_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%plist126779%_))))
                  (let ((_%dir*126805%_
                         (path-strip-trailing-directory-separator
                          _%dir126774%_)))
                    (if (or (__string-empty? _%dir*126805%_)
                            (equal? _%dir126774%_ _%dir*126805%_))
                        (values _%pre126767%_ _%ns126768%_ '#f)
                        (let ((_%xpath126810%_
                               (path-strip-directory _%dir*126805%_))
                              (_%xdir126811%_ (path-directory _%dir*126805%_)))
                          (_%lp126772%_
                           _%xdir126811%_
                           (cons _%xpath126810%_ _%pkg-path126775%_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_%path126764%_)
        (path-strip-extension (path-strip-directory _%path126764%_))))
    (define gx#core-module-path->id
      (lambda (_%path126762%_)
        (##string->symbol (gx#core-module-path->namespace _%path126762%_))))
    (define gx#core-resolve-module-path__%
      (lambda (_%stx-path126741%_ _%rel126742%_)
        (let* ((_%path126744%_ (gx#stx-e _%stx-path126741%_))
               (_%path126746%_
                (if (__string-empty? (path-extension _%path126744%_))
                    (##string-append _%path126744%_ '".ss")
                    _%path126744%_)))
          (gx#core-resolve-path__%
           _%path126746%_
           (let ((_%$e126749%_ (gx#stx-source _%stx-path126741%_)))
             (if _%$e126749%_ _%$e126749%_ _%rel126742%_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_%stx-path126755%_)
        (let ((_%rel126757%_ '#f))
          (gx#core-resolve-module-path__% _%stx-path126755%_ _%rel126757%_))))
    (define gx#core-resolve-module-path
      (lambda _g128391_
        (let ((_g128390_ (##length _g128391_)))
          (cond ((##fx= _g128390_ 1)
                 (apply gx#core-resolve-module-path__0 _g128391_))
                ((##fx= _g128390_ 2)
                 (apply gx#core-resolve-module-path__% _g128391_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g128391_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_%libpath126626%_)
        (let* ((_%spath126628%_ (symbol->string (gx#stx-e _%libpath126626%_)))
               (_%spath126630%_
                (substring
                 _%spath126628%_
                 '1
                 (##string-length _%spath126628%_)))
               (_%ext126632%_ (path-extension _%spath126630%_))
               (_%ssi126634%_
                (if (__string-empty? _%ext126632%_)
                    (##string-append _%spath126630%_ '".ssi")
                    (##string-append
                     (path-strip-extension _%spath126630%_)
                     '".ssi")))
               (_%srcs126638%_
                (if (__string-empty? _%ext126632%_)
                    (##map (lambda (_%ext126636%_)
                             (string-append _%spath126630%_ _%ext126636%_))
                           '(".ss" ".sld" ".scm"))
                    (cons _%spath126630%_ '()))))
          (let _%lp126641%_ ((_%rest126643%_ (load-path)))
            (let* ((_%rest126644126653%_ _%rest126643%_)
                   (_%E126647126657%_
                    (lambda ()
                      (error '"No clause matching"
                             _%rest126644126653%_
                             '([dir . rest])
                             '([]))
                      '#!void)))
              (let ((_%K126649126728%_
                     (lambda (_%rest126668%_ _%dir126669%_)
                       (letrec ((_%resolve126671%_
                                 (lambda (_%ssi126684%_ _%srcs126685%_)
                                   (let ((_%compiled-path126687%_
                                          (path-expand
                                           _%ssi126684%_
                                           _%dir126669%_)))
                                     (if (##file-exists?
                                          _%compiled-path126687%_)
                                         (path-normalize
                                          _%compiled-path126687%_)
                                         (let _%lpr126689%_ ((_%rest-src126691%_
                                                              _%srcs126685%_))
                                           (let* ((_%rest-src126692126700%_
                                                   _%rest-src126691%_)
                                                  (_%else126694126708%_
                                                   (lambda ()
                                                     (_%lp126641%_
                                                      _%rest126668%_)))
                                                  (_%K126696126716%_
                                                   (lambda (_%rest-src126711%_
                                                            _%src126712%_)
                                                     (let ((_%src-path126714%_
                                                            (path-expand
                                                             _%src126712%_
                                                             _%dir126669%_)))
                                                       (if (##file-exists?
                                                            _%src-path126714%_)
                                                           (path-normalize
                                                            _%src-path126714%_)
                                                           (_%lpr126689%_
                                                            _%rest-src126711%_))))))
                                             (if (##pair? _%rest-src126692126700%_)
                                                 (let ((_%hd126697126719%_
                                                        (##car _%rest-src126692126700%_))
                                                       (_%tl126698126721%_
                                                        (##cdr _%rest-src126692126700%_)))
                                                   (let* ((_%src126724%_
                                                           _%hd126697126719%_)
                                                          (_%rest-src126726%_
                                                           _%tl126698126721%_))
                                                     (_%K126696126716%_
                                                      _%rest-src126726%_
                                                      _%src126724%_)))
                                                 (_%else126694126708%_)))))))))
                         (let ((_%$e126673%_
                                (gx#core-library-package-path-prefix
                                 _%dir126669%_)))
                           (if _%$e126673%_
                               ((lambda (_%prefix126676%_)
                                  (if (string-prefix?
                                       _%prefix126676%_
                                       _%spath126630%_)
                                      (let ((_%ssi126680%_
                                             (substring
                                              _%ssi126634%_
                                              (string-length _%prefix126676%_)
                                              (##string-length _%ssi126634%_)))
                                            (_%srcs126681%_
                                             (##map (lambda (_%src126678%_)
                                                      (substring
                                                       _%src126678%_
                                                       (string-length
                                                        _%prefix126676%_)
                                                       (string-length
                                                        _%src126678%_)))
                                                    _%srcs126638%_)))
                                        (_%resolve126671%_
                                         _%ssi126680%_
                                         _%srcs126681%_))
                                      (_%lp126641%_ _%rest126668%_)))
                                _%$e126673%_)
                               (_%resolve126671%_
                                _%ssi126634%_
                                _%srcs126638%_))))))
                    (_%K126648126662%_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"cannot find library module"
                        _%libpath126626%_))))
                (let ((_%try-match126646126665%_
                       (lambda ()
                         (if (##null? _%rest126644126653%_)
                             (_%K126648126662%_)
                             (_%E126647126657%_)))))
                  (if (##pair? _%rest126644126653%_)
                      (let ((_%tl126651126733%_ (##cdr _%rest126644126653%_))
                            (_%hd126650126731%_ (##car _%rest126644126653%_)))
                        (let ((_%dir126736%_ _%hd126650126731%_)
                              (_%rest126738%_ _%tl126651126733%_))
                          (_%K126649126728%_ _%rest126738%_ _%dir126736%_)))
                      (_%try-match126646126665%_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_%modpath126594%_)
        (letrec ((_%resolve126596%_
                  (lambda (_%path126617%_ _%base126618%_)
                    (let ((_%$e126620%_
                           (string-rindex__0 _%base126618%_ '#\/)))
                      (if _%$e126620%_
                          ((lambda (_%idx126623%_)
                             (gx#core-resolve-library-module-path
                              (##string->symbol
                               (string-append
                                '":"
                                (substring _%base126618%_ '0 _%idx126623%_)
                                '"/"
                                _%path126617%_))))
                           _%$e126620%_)
                          (gx#core-resolve-library-module-path
                           (##string->symbol
                            (string-append '":" _%path126617%_))))))))
          (let ((_%spath126598%_ (symbol->string (gx#stx-e _%modpath126594%_)))
                (_%mod126599%_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _%mod126599%_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"cannot resolve relative module path; not in module context"
                 _%modpath126594%_))
            (let ((_%mpath126601%_
                   (symbol->string
                    (##structure-ref
                     _%mod126599%_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _%lp126603%_ ((_%spath126605%_ _%spath126598%_)
                                 (_%mpath126606%_ _%mpath126601%_))
                (if (string-prefix? '"../" _%spath126605%_)
                    (let ((_%$e126609%_
                           (string-rindex__0 _%mpath126606%_ '#\/)))
                      (if _%$e126609%_
                          ((lambda (_%idx126612%_)
                             (_%lp126603%_
                              (substring
                               _%spath126605%_
                               '3
                               (string-length _%spath126605%_))
                              (substring _%mpath126606%_ '0 _%idx126612%_)))
                           _%$e126609%_)
                          (gx#raise-syntax-error
                           '#f
                           '"cannot resolve relative module path; illegal traversal"
                           _%modpath126594%_)))
                    (if (string-prefix? '"./" _%spath126605%_)
                        (_%lp126603%_
                         (substring
                          _%spath126605%_
                          '2
                          (string-length _%spath126605%_))
                         _%mpath126606%_)
                        (_%resolve126596%_
                         _%spath126605%_
                         _%mpath126606%_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_%dir126586%_)
        (let ((_%$e126588%_
               (pgetq__0
                'package:
                (gx#core-library-package-plist__0 _%dir126586%_))))
          (if _%$e126588%_
              ((lambda (_%pkg126591%_)
                 (##string-append (symbol->string _%pkg126591%_) '"/"))
               _%$e126588%_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_%dir126556%_ _%exists?126557%_)
        (let ((_%$e126559%_ (__hash-get gx#__module-pkg-cache _%dir126556%_)))
          (if _%$e126559%_
              _%$e126559%_
              (let* ((_%gerbil.pkg126563%_
                      (path-expand '"gerbil.pkg" _%dir126556%_))
                     (_%plist126573%_
                      (if (or _%exists?126557%_
                              (##file-exists? _%gerbil.pkg126563%_))
                          (let ((_%e126568%_
                                 (gx#call-with-input-source-file
                                  _%gerbil.pkg126563%_
                                  read)))
                            (if (eof-object? _%e126568%_)
                                '()
                                (if (list? _%e126568%_)
                                    _%e126568%_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _%gerbil.pkg126563%_
                                     _%e126568%_))))
                          '())))
                (__hash-put!
                 gx#__module-pkg-cache
                 _%dir126556%_
                 _%plist126573%_)
                _%plist126573%_)))))
    (define gx#core-library-package-plist__0
      (lambda (_%dir126579%_)
        (let ((_%exists?126581%_ '#f))
          (gx#core-library-package-plist__% _%dir126579%_ _%exists?126581%_))))
    (define gx#core-library-package-plist
      (lambda _g128393_
        (let ((_g128392_ (##length _g128393_)))
          (cond ((##fx= _g128392_ 1)
                 (apply gx#core-library-package-plist__0 _g128393_))
                ((##fx= _g128392_ 2)
                 (apply gx#core-library-package-plist__% _g128393_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g128393_))))))
    (define gx#core-library-module-path?
      (lambda (_%stx126553%_)
        (gx#core-special-module-path? _%stx126553%_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_%stx126551%_)
        (gx#core-special-module-path? _%stx126551%_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_%stx126546%_ _%char126547%_)
        (if (gx#identifier? _%stx126546%_)
            (if (interned-symbol? (gx#stx-e _%stx126546%_))
                (let ((_%str126549%_
                       (symbol->string (gx#stx-e _%stx126546%_))))
                  (if (##fx> (##string-length _%str126549%_) '1)
                      (eq? (string-ref _%str126549%_ '0) _%char126547%_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_%stx126540%_)
        (gx#core-bound-identifier?__%
         _%stx126540%_
         (lambda (_%g126541126543%_)
           (gx#expander-binding?__% _%g126541126543%_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_%stx126534%_)
        (gx#core-bound-identifier?__%
         _%stx126534%_
         (lambda (_%g126535126537%_)
           (gx#expander-binding?__% _%g126535126537%_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_%stx126521%_)
        (letrec ((_%module-prelude?126523%_
                  (lambda (_%e126529%_)
                    (let ((_%$e126531%_
                           (##structure-instance-of?
                            _%e126529%_
                            'gx#module-context::t)))
                      (if _%$e126531%_
                          _%$e126531%_
                          (##structure-instance-of?
                           _%e126529%_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _%stx126521%_
           (lambda (_%g126524126526%_)
             (gx#expander-binding?__%
              _%g126524126526%_
              _%module-prelude?126523%_))))))
    (define gx#core-bind-import!__%
      (lambda (_%in126451%_ _%ctx126452%_ _%force-weak?126453%_)
        (let* ((_%in126454126463%_ _%in126451%_)
               (_%E126456126467%_
                (lambda ()
                  (error '"No clause matching"
                         _%in126454126463%_
                         '((module-import source key phi weak?)))
                  '#!void))
               (_%K126457126480%_
                (lambda (_%weak?126470%_
                         _%phi126471%_
                         _%key126472%_
                         _%source126473%_)
                  (gx#core-bind!__%
                   _%key126472%_
                   (let ((_%e126475%_
                          (gx#core-resolve-module-export _%source126473%_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref _%e126475%_ '1 '#f '#f)
                      _%key126472%_
                      _%phi126471%_
                      _%e126475%_
                      (##unchecked-structure-ref _%source126473%_ '1 '#f '#f)
                      (let ((_%$e126477%_ _%force-weak?126453%_))
                        (if _%$e126477%_ _%$e126477%_ _%weak?126470%_))))
                   gx#core-context-rebind?
                   _%phi126471%_
                   _%ctx126452%_))))
          (if (##structure-direct-instance-of?
               _%in126454126463%_
               'gx#module-import::t)
              (let* ((_%e126458126483%_
                      (##unchecked-structure-ref
                       _%in126454126463%_
                       '1
                       '#f
                       '#f))
                     (_%source126486%_ _%e126458126483%_)
                     (_%e126459126488%_
                      (##unchecked-structure-ref
                       _%in126454126463%_
                       '2
                       '#f
                       '#f))
                     (_%key126491%_ _%e126459126488%_)
                     (_%e126460126493%_
                      (##unchecked-structure-ref
                       _%in126454126463%_
                       '3
                       '#f
                       '#f))
                     (_%phi126496%_ _%e126460126493%_)
                     (_%e126461126498%_
                      (##unchecked-structure-ref
                       _%in126454126463%_
                       '4
                       '#f
                       '#f))
                     (_%weak?126501%_ _%e126461126498%_))
                (_%K126457126480%_
                 _%weak?126501%_
                 _%phi126496%_
                 _%key126491%_
                 _%source126486%_))
              (_%E126456126467%_)))))
    (define gx#core-bind-import!__0
      (lambda (_%in126506%_)
        (let* ((_%ctx126508%_ (gx#current-expander-context))
               (_%force-weak?126510%_ '#f))
          (gx#core-bind-import!__%
           _%in126506%_
           _%ctx126508%_
           _%force-weak?126510%_))))
    (define gx#core-bind-import!__1
      (lambda (_%in126512%_ _%ctx126513%_)
        (let ((_%force-weak?126515%_ '#f))
          (gx#core-bind-import!__%
           _%in126512%_
           _%ctx126513%_
           _%force-weak?126515%_))))
    (define gx#core-bind-import!
      (lambda _g128395_
        (let ((_g128394_ (##length _g128395_)))
          (cond ((##fx= _g128394_ 1) (apply gx#core-bind-import!__0 _g128395_))
                ((##fx= _g128394_ 2) (apply gx#core-bind-import!__1 _g128395_))
                ((##fx= _g128394_ 3) (apply gx#core-bind-import!__% _g128395_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g128395_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_%in126437%_ _%ctx126438%_)
        (gx#core-bind-import!__% _%in126437%_ _%ctx126438%_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_%in126443%_)
        (let ((_%ctx126445%_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _%in126443%_ _%ctx126445%_))))
    (define gx#core-bind-weak-import!
      (lambda _g128397_
        (let ((_g128396_ (##length _g128397_)))
          (cond ((##fx= _g128396_ 1)
                 (apply gx#core-bind-weak-import!__0 _g128397_))
                ((##fx= _g128396_ 2)
                 (apply gx#core-bind-weak-import!__% _g128397_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g128397_))))))
    (define gx#core-resolve-module-export
      (lambda (_%out126328%_)
        (letrec ((_%subst126330%_
                  (lambda (_%key126376%_)
                    (let* ((_%key126377126385%_ _%key126376%_)
                           (_%else126379126393%_ (lambda () _%key126376%_))
                           (_%K126381126424%_
                            (lambda (_%mark126396%_ _%id126397%_)
                              (let* ((_%mark126398126404%_ _%mark126396%_)
                                     (_%E126400126408%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark126398126404%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K126401126416%_
                                      (lambda (_%subst126411%_)
                                        (let ((_%$e126413%_
                                               (if _%subst126411%_
                                                   (hash-get
                                                    _%subst126411%_
                                                    _%id126397%_)
                                                   '#f)))
                                          (if _%$e126413%_
                                              _%$e126413%_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _%key126376%_))))))
                                (if (##structure-instance-of?
                                     _%mark126398126404%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e126402126419%_
                                            (##unchecked-structure-ref
                                             _%mark126398126404%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst126422%_ _%e126402126419%_))
                                      (_%K126401126416%_ _%subst126422%_))
                                    (_%E126400126408%_))))))
                      (if (##pair? _%key126377126385%_)
                          (let ((_%hd126382126427%_
                                 (##car _%key126377126385%_))
                                (_%tl126383126429%_
                                 (##cdr _%key126377126385%_)))
                            (let* ((_%id126432%_ _%hd126382126427%_)
                                   (_%mark126434%_ _%tl126383126429%_))
                              (_%K126381126424%_ _%mark126434%_ _%id126432%_)))
                          (_%else126379126393%_))))))
          (let* ((_%out126331126341%_ _%out126328%_)
                 (_%E126333126345%_
                  (lambda ()
                    (error '"No clause matching"
                           _%out126331126341%_
                           '((module-export ctx key phi _ _)))
                    '#!void))
                 (_%K126334126352%_
                  (lambda (_%phi126348%_ _%key126349%_ _%ctx126350%_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _%ctx126350%_ _%phi126348%_)
                     (_%subst126330%_ _%key126349%_)))))
            (if (##structure-direct-instance-of?
                 _%out126331126341%_
                 'gx#module-export::t)
                (let* ((_%e126335126355%_
                        (##unchecked-structure-ref
                         _%out126331126341%_
                         '1
                         '#f
                         '#f))
                       (_%ctx126358%_ _%e126335126355%_)
                       (_%e126336126360%_
                        (##unchecked-structure-ref
                         _%out126331126341%_
                         '2
                         '#f
                         '#f))
                       (_%key126363%_ _%e126336126360%_)
                       (_%e126337126365%_
                        (##unchecked-structure-ref
                         _%out126331126341%_
                         '3
                         '#f
                         '#f))
                       (_%phi126368%_ _%e126337126365%_)
                       (_%e126338126370%_
                        (##unchecked-structure-ref
                         _%out126331126341%_
                         '4
                         '#f
                         '#f))
                       (_%e126339126373%_
                        (##unchecked-structure-ref
                         _%out126331126341%_
                         '5
                         '#f
                         '#f)))
                  (_%K126334126352%_
                   _%phi126368%_
                   _%key126363%_
                   _%ctx126358%_))
                (_%E126333126345%_))))))
    (define gx#core-module-export->import__%
      (lambda (_%out126253%_ _%rename126254%_ _%dphi126255%_)
        (let* ((_%out126256126266%_ _%out126253%_)
               (_%E126258126270%_
                (lambda ()
                  (error '"No clause matching"
                         _%out126256126266%_
                         '((module-export ctx key phi name weak?)))
                  '#!void))
               (_%K126259126282%_
                (lambda (_%weak?126273%_
                         _%name126274%_
                         _%phi126275%_
                         _%key126276%_
                         _%ctx126277%_)
                  (##structure
                   gx#module-import::t
                   _%out126253%_
                   (let ((_%$e126279%_ _%rename126254%_))
                     (if _%$e126279%_ _%$e126279%_ _%name126274%_))
                   (fx+ _%phi126275%_ _%dphi126255%_)
                   _%weak?126273%_))))
          (if (##structure-direct-instance-of?
               _%out126256126266%_
               'gx#module-export::t)
              (let* ((_%e126260126285%_
                      (##unchecked-structure-ref
                       _%out126256126266%_
                       '1
                       '#f
                       '#f))
                     (_%ctx126288%_ _%e126260126285%_)
                     (_%e126261126290%_
                      (##unchecked-structure-ref
                       _%out126256126266%_
                       '2
                       '#f
                       '#f))
                     (_%key126293%_ _%e126261126290%_)
                     (_%e126262126295%_
                      (##unchecked-structure-ref
                       _%out126256126266%_
                       '3
                       '#f
                       '#f))
                     (_%phi126298%_ _%e126262126295%_)
                     (_%e126263126300%_
                      (##unchecked-structure-ref
                       _%out126256126266%_
                       '4
                       '#f
                       '#f))
                     (_%name126303%_ _%e126263126300%_)
                     (_%e126264126305%_
                      (##unchecked-structure-ref
                       _%out126256126266%_
                       '5
                       '#f
                       '#f))
                     (_%weak?126308%_ _%e126264126305%_))
                (_%K126259126282%_
                 _%weak?126308%_
                 _%name126303%_
                 _%phi126298%_
                 _%key126293%_
                 _%ctx126288%_))
              (_%E126258126270%_)))))
    (define gx#core-module-export->import__0
      (lambda (_%out126313%_)
        (let* ((_%rename126315%_ '#f) (_%dphi126317%_ '0))
          (gx#core-module-export->import__%
           _%out126313%_
           _%rename126315%_
           _%dphi126317%_))))
    (define gx#core-module-export->import__1
      (lambda (_%out126319%_ _%rename126320%_)
        (let ((_%dphi126322%_ '0))
          (gx#core-module-export->import__%
           _%out126319%_
           _%rename126320%_
           _%dphi126322%_))))
    (define gx#core-module-export->import
      (lambda _g128399_
        (let ((_g128398_ (##length _g128399_)))
          (cond ((##fx= _g128398_ 1)
                 (apply gx#core-module-export->import__0 _g128399_))
                ((##fx= _g128398_ 2)
                 (apply gx#core-module-export->import__1 _g128399_))
                ((##fx= _g128398_ 3)
                 (apply gx#core-module-export->import__% _g128399_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g128399_))))))
    (define gx#core-expand-module%
      (lambda (_%stx126152%_)
        (letrec ((_%make-context126154%_
                  (lambda (_%id126231%_)
                    (let* ((_%super126233%_ (gx#current-expander-context))
                           (_%bind-id126235%_ (gx#stx-e _%id126231%_))
                           (_%mod-id126237%_
                            (if (##structure-instance-of?
                                 _%super126233%_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##unchecked-structure-ref
                                  _%super126233%_
                                  '1
                                  '#f
                                  '#f)
                                 '"~"
                                 _%bind-id126235%_)
                                _%bind-id126235%_))
                           (_%ns126239%_ (symbol->string _%mod-id126237%_))
                           (_%path126249%_
                            (if (##structure-instance-of?
                                 _%super126233%_
                                 'gx#module-context::t)
                                (let ((_%path126241%_
                                       (##unchecked-structure-ref
                                        _%super126233%_
                                        '7
                                        '#f
                                        '#f)))
                                  (if (or (pair? _%path126241%_)
                                          (null? _%path126241%_))
                                      (cons _%bind-id126235%_ _%path126241%_)
                                      (if (not _%path126241%_)
                                          _%bind-id126235%_
                                          (cons _%bind-id126235%_
                                                (cons _%path126241%_ '())))))
                                _%bind-id126235%_))
                           (__obj128375
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
                       __obj128375
                       _%mod-id126237%_
                       _%super126233%_
                       _%ns126239%_
                       _%path126249%_)
                      __obj128375)))
                 (_%valid-module-id?126155%_
                  (lambda (_%id126206%_)
                    (let* ((_%str126208%_ (symbol->string _%id126206%_))
                           (_%len126210%_ (##string-length _%str126208%_)))
                      (if (##fx>= _%len126210%_ '1)
                          (let _%loop126213%_ ((_%index126215%_
                                                (##fx- (##string-length
                                                        _%str126208%_)
                                                       '1)))
                            (if (##fx>= _%index126215%_ '0)
                                (let ((_%c126217%_
                                       (string-ref
                                        _%str126208%_
                                        _%index126215%_)))
                                  (if (or (and (##char>=? _%c126217%_ '#\a)
                                               (##char<=? _%c126217%_ '#\z))
                                          (and (##char>=? _%c126217%_ '#\A)
                                               (##char<=? _%c126217%_ '#\Z))
                                          (and (##char>=? _%c126217%_ '#\0)
                                               (##char<=? _%c126217%_ '#\9))
                                          (##char=? _%c126217%_ '#\_)
                                          (##char=? _%c126217%_ '#\-))
                                      (_%loop126213%_
                                       (##fx- _%index126215%_ '1))
                                      '#f))
                                '#t))
                          '#f)))))
          (let* ((_%e126156126166%_ _%stx126152%_)
                 (_%E126158126170%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e126156126166%_)))
                 (_%E126157126202%_
                  (lambda ()
                    (if (gx#stx-pair? _%e126156126166%_)
                        (let ((_%e126159126174%_
                               (gx#syntax-e _%e126156126166%_)))
                          (let ((_%hd126160126177%_ (##car _%e126159126174%_))
                                (_%tl126161126179%_ (##cdr _%e126159126174%_)))
                            (if (gx#stx-pair? _%tl126161126179%_)
                                (let ((_%e126162126182%_
                                       (gx#syntax-e _%tl126161126179%_)))
                                  (let ((_%hd126163126185%_
                                         (##car _%e126162126182%_))
                                        (_%tl126164126187%_
                                         (##cdr _%e126162126182%_)))
                                    (let* ((_%id126190%_ _%hd126163126185%_)
                                           (_%body126192%_ _%tl126164126187%_))
                                      (if (and (gx#identifier? _%id126190%_)
                                               (gx#stx-list? _%body126192%_))
                                          (if (_%valid-module-id?126155%_
                                               (gx#stx-e
                                                (gx#datum->syntax__0 '#f 'id)))
                                              (let* ((_%ctx126194%_
                                                      (_%make-context126154%_
                                                       _%id126190%_))
                                                     (_%body126196%_
                                                      (gx#core-expand-module-begin
                                                       _%body126192%_
                                                       _%ctx126194%_))
                                                     (_%body126198%_
                                                      (gx#core-quote-syntax__1
                                                       (gx#core-cons
                                                        '%#begin
                                                        _%body126196%_)
                                                       (gx#stx-source
                                                        _%stx126152%_))))
                                                (##unchecked-structure-set!
                                                 _%ctx126194%_
                                                 (__make-promise
                                                  (lambda ()
                                                    (gx#eval-syntax*
                                                     _%body126198%_)))
                                                 '10
                                                 '#f
                                                 '#f)
                                                (##unchecked-structure-set!
                                                 _%ctx126194%_
                                                 _%body126198%_
                                                 '11
                                                 '#f
                                                 '#f)
                                                (gx#core-bind-syntax!__0
                                                 _%id126190%_
                                                 _%ctx126194%_)
                                                (gx#core-quote-syntax__1
                                                 (gx#core-list
                                                  '%#module
                                                  (gx#core-quote-syntax__0
                                                   _%id126190%_)
                                                  _%body126198%_)
                                                 (gx#stx-source
                                                  _%stx126152%_)))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"invalid module id; allowed characters are A-Z,a-z,0-9,_,-"
                                               _%stx126152%_
                                               (gx#datum->syntax__0 '#f 'id)))
                                          (_%E126158126170%_)))))
                                (_%E126158126170%_))))
                        (_%E126158126170%_)))))
            (_%E126157126202%_)))))
    (define gx#core-expand-module-begin
      (lambda (_%body126118%_ _%ctx126119%_)
        (__call-with-parameters
         (lambda ()
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_%stx126122%_
                   (gx#core-expand-head (cons '%%begin-module _%body126118%_)))
                  (_%e126123126130%_ _%stx126122%_)
                  (_%E126125126134%_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _%stx126122%_)))
                  (_%E126124126148%_
                   (lambda ()
                     (if (gx#stx-pair? _%e126123126130%_)
                         (let ((_%e126126126138%_
                                (gx#syntax-e _%e126123126130%_)))
                           (let ((_%hd126127126141%_ (##car _%e126126126138%_))
                                 (_%tl126128126143%_
                                  (##cdr _%e126126126138%_)))
                             (if (and (gx#identifier? _%hd126127126141%_)
                                      (gx#core-identifier=?
                                       _%hd126127126141%_
                                       '%#begin-module))
                                 (let ((_%body126146%_ _%tl126128126143%_))
                                   (if (gx#sealed-syntax? _%stx126122%_)
                                       _%body126146%_
                                       (gx#core-expand-module-body
                                        _%body126146%_)))
                                 (_%E126125126134%_))))
                         (_%E126125126134%_)))))
             (_%E126124126148%_)))
         gx#current-expander-context
         _%ctx126119%_
         gx#current-expander-phi
         '0)))
    (define gx#core-expand-module-body
      (lambda (_%body125914%_)
        (letrec ((_%expand-special125916%_
                  (lambda (_%hd126045%_ _%K126046%_ _%rest126047%_ _%r126048%_)
                    (let* ((_%e126049126066%_ _%hd126045%_)
                           (_%E126061126070%_
                            (lambda ()
                              (_%K126046%_
                               _%rest126047%_
                               (cons (gx#core-expand-top _%hd126045%_)
                                     _%r126048%_))))
                           (_%E126051126082%_
                            (lambda ()
                              (if (gx#stx-pair? _%e126049126066%_)
                                  (let ((_%e126062126074%_
                                         (gx#syntax-e _%e126049126066%_)))
                                    (let ((_%hd126063126077%_
                                           (##car _%e126062126074%_))
                                          (_%tl126064126079%_
                                           (##cdr _%e126062126074%_)))
                                      (if (and (gx#identifier?
                                                _%hd126063126077%_)
                                               (gx#core-identifier=?
                                                _%hd126063126077%_
                                                '%#export))
                                          (_%K126046%_
                                           _%rest126047%_
                                           (cons _%hd126045%_ _%r126048%_))
                                          (_%E126061126070%_))))
                                  (_%E126061126070%_))))
                           (_%E126050126114%_
                            (lambda ()
                              (if (gx#stx-pair? _%e126049126066%_)
                                  (let ((_%e126052126086%_
                                         (gx#syntax-e _%e126049126066%_)))
                                    (let ((_%hd126053126089%_
                                           (##car _%e126052126086%_))
                                          (_%tl126054126091%_
                                           (##cdr _%e126052126086%_)))
                                      (if (and (gx#identifier?
                                                _%hd126053126089%_)
                                               (gx#core-identifier=?
                                                _%hd126053126089%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl126054126091%_)
                                              (let ((_%e126055126094%_
                                                     (gx#syntax-e
                                                      _%tl126054126091%_)))
                                                (let ((_%hd126056126097%_
                                                       (##car _%e126055126094%_))
                                                      (_%tl126057126099%_
                                                       (##cdr _%e126055126094%_)))
                                                  (let ((_%hd-bind126102%_
                                                         _%hd126056126097%_))
                                                    (if (gx#stx-pair?
                                                         _%tl126057126099%_)
                                                        (let ((_%e126058126104%_
                                                               (gx#syntax-e
                                                                _%tl126057126099%_)))
                                                          (let ((_%hd126059126107%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e126058126104%_))
                        (_%tl126060126109%_ (##cdr _%e126058126104%_)))
                    (let ((_%expr126112%_ _%hd126059126107%_))
                      (if (gx#stx-null? _%tl126060126109%_)
                          (if (gx#core-bind-values? _%hd-bind126102%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind126102%_)
                                (_%K126046%_
                                 _%rest126047%_
                                 (cons _%hd126045%_ _%r126048%_)))
                              (_%E126051126082%_))
                          (_%E126051126082%_)))))
                (_%E126051126082%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E126051126082%_))
                                          (_%E126051126082%_))))
                                  (_%E126051126082%_)))))
                      (_%E126050126114%_))))
                 (_%expand-body125917%_
                  (lambda (_%rbody125919%_)
                    (let _%lp125921%_ ((_%rest125923%_ _%rbody125919%_)
                                       (_%body125924%_ '()))
                      (let* ((_%rest125925125933%_ _%rest125923%_)
                             (_%else125927125941%_ (lambda () _%body125924%_))
                             (_%K125929126033%_
                              (lambda (_%rest125944%_ _%hd125945%_)
                                (let* ((_%e125946125967%_ _%hd125945%_)
                                       (_%E125962125971%_
                                        (lambda ()
                                          (_%lp125921%_
                                           _%rest125944%_
                                           (cons (gx#core-expand-expression
                                                  _%hd125945%_)
                                                 _%body125924%_))))
                                       (_%E125958125985%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e125946125967%_)
                                              (let ((_%e125963125975%_
                                                     (gx#syntax-e
                                                      _%e125946125967%_)))
                                                (let ((_%hd125964125978%_
                                                       (##car _%e125963125975%_))
                                                      (_%tl125965125980%_
                                                       (##cdr _%e125963125975%_)))
                                                  (let ((_%form125983%_
                                                         _%hd125964125978%_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _%form125983%_
                                                         gx#special-form-binding?)
                                                        (_%lp125921%_
                                                         _%rest125944%_
                                                         (cons _%hd125945%_
                                                               _%body125924%_))
                                                        (_%E125962125971%_)))))
                                              (_%E125962125971%_))))
                                       (_%E125948125997%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e125946125967%_)
                                              (let ((_%e125959125989%_
                                                     (gx#syntax-e
                                                      _%e125946125967%_)))
                                                (let ((_%hd125960125992%_
                                                       (##car _%e125959125989%_))
                                                      (_%tl125961125994%_
                                                       (##cdr _%e125959125989%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd125960125992%_)
                                                           (gx#core-identifier=?
                                                            _%hd125960125992%_
                                                            '%#export))
                                                      (_%lp125921%_
                                                       _%rest125944%_
                                                       (cons (gx#core-expand-export%__0
                                                              _%hd125945%_)
                                                             _%body125924%_))
                                                      (_%E125958125985%_))))
                                              (_%E125958125985%_))))
                                       (_%E125947126029%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e125946125967%_)
                                              (let ((_%e125949126001%_
                                                     (gx#syntax-e
                                                      _%e125946125967%_)))
                                                (let ((_%hd125950126004%_
                                                       (##car _%e125949126001%_))
                                                      (_%tl125951126006%_
                                                       (##cdr _%e125949126001%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd125950126004%_)
                                                           (gx#core-identifier=?
                                                            _%hd125950126004%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl125951126006%_)
                                                          (let ((_%e125952126009%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl125951126006%_)))
                    (let ((_%hd125953126012%_ (##car _%e125952126009%_))
                          (_%tl125954126014%_ (##cdr _%e125952126009%_)))
                      (let ((_%hd-bind126017%_ _%hd125953126012%_))
                        (if (gx#stx-pair? _%tl125954126014%_)
                            (let ((_%e125955126019%_
                                   (gx#syntax-e _%tl125954126014%_)))
                              (let ((_%hd125956126022%_
                                     (##car _%e125955126019%_))
                                    (_%tl125957126024%_
                                     (##cdr _%e125955126019%_)))
                                (let ((_%expr126027%_ _%hd125956126022%_))
                                  (if (gx#stx-null? _%tl125957126024%_)
                                      (_%lp125921%_
                                       _%rest125944%_
                                       (cons (gx#core-quote-syntax__1
                                              (gx#core-list
                                               '%#define-values
                                               (gx#core-quote-bind-values
                                                _%hd-bind126017%_)
                                               (gx#core-expand-expression
                                                _%expr126027%_))
                                              (gx#stx-source _%hd125945%_))
                                             _%body125924%_))
                                      (_%E125948125997%_)))))
                            (_%E125948125997%_)))))
                  (_%E125948125997%_))
              (_%E125948125997%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E125948125997%_)))))
                                  (_%E125947126029%_)))))
                        (if (##pair? _%rest125925125933%_)
                            (let ((_%hd125930126036%_
                                   (##car _%rest125925125933%_))
                                  (_%tl125931126038%_
                                   (##cdr _%rest125925125933%_)))
                              (let* ((_%hd126041%_ _%hd125930126036%_)
                                     (_%rest126043%_ _%tl125931126038%_))
                                (_%K125929126033%_
                                 _%rest126043%_
                                 _%hd126041%_)))
                            (_%else125927125941%_)))))))
          (_%expand-body125917%_
           (gx#core-expand-block__%
            (cons '%#begin-module _%body125914%_)
            _%expand-special125916%_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_%stx125755%_
               _%expanded?125756%_
               _%method125757%_
               _%current-phi125758%_
               _%expand1125759%_)
        (letrec ((_%K125761%_
                  (lambda (_%rest125881%_ _%r125882%_)
                    (let* ((_%e125883125890%_ _%rest125881%_)
                           (_%E125885125894%_ (lambda () _%r125882%_))
                           (_%E125884125910%_
                            (lambda ()
                              (if (gx#stx-pair? _%e125883125890%_)
                                  (let ((_%e125886125898%_
                                         (gx#syntax-e _%e125883125890%_)))
                                    (let ((_%hd125887125901%_
                                           (##car _%e125886125898%_))
                                          (_%tl125888125903%_
                                           (##cdr _%e125886125898%_)))
                                      (let* ((_%hd125906%_ _%hd125887125901%_)
                                             (_%rest125908%_
                                              _%tl125888125903%_))
                                        (_%step125762%_
                                         _%hd125906%_
                                         _%rest125908%_
                                         _%r125882%_))))
                                  (_%E125885125894%_)))))
                      (_%E125884125910%_))))
                 (_%step125762%_
                  (lambda (_%hd125795%_ _%rest125796%_ _%r125797%_)
                    (let* ((_%e125798125816%_ _%hd125795%_)
                           (_%E125811125820%_
                            (lambda ()
                              (if (_%expanded?125756%_ (gx#stx-e _%hd125795%_))
                                  (_%K125761%_
                                   _%rest125796%_
                                   (cons (gx#stx-e _%hd125795%_) _%r125797%_))
                                  (_%expand1125759%_
                                   _%hd125795%_
                                   _%K125761%_
                                   _%rest125796%_
                                   _%r125797%_))))
                           (_%E125807125836%_
                            (lambda ()
                              (if (gx#stx-pair? _%e125798125816%_)
                                  (let ((_%e125812125824%_
                                         (gx#syntax-e _%e125798125816%_)))
                                    (let ((_%hd125813125827%_
                                           (##car _%e125812125824%_))
                                          (_%tl125814125829%_
                                           (##cdr _%e125812125824%_)))
                                      (let* ((_%macro125832%_
                                              _%hd125813125827%_)
                                             (_%body125834%_
                                              _%tl125814125829%_))
                                        (if (gx#core-bound-identifier?__%
                                             _%macro125832%_
                                             gx#syntax-binding?)
                                            (_%K125761%_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _%macro125832%_)
                                                    _%hd125795%_
                                                    _%method125757%_)
                                                   _%rest125796%_)
                                             _%r125797%_)
                                            (_%E125811125820%_)))))
                                  (_%E125811125820%_))))
                           (_%E125800125850%_
                            (lambda ()
                              (if (gx#stx-pair? _%e125798125816%_)
                                  (let ((_%e125808125840%_
                                         (gx#syntax-e _%e125798125816%_)))
                                    (let ((_%hd125809125843%_
                                           (##car _%e125808125840%_))
                                          (_%tl125810125845%_
                                           (##cdr _%e125808125840%_)))
                                      (if (eq? (gx#stx-e _%hd125809125843%_)
                                               'begin:)
                                          (let ((_%body125848%_
                                                 _%tl125810125845%_))
                                            (_%K125761%_
                                             (gx#stx-foldr
                                              cons
                                              _%rest125796%_
                                              _%body125848%_)
                                             _%r125797%_))
                                          (_%E125807125836%_))))
                                  (_%E125807125836%_))))
                           (_%E125799125877%_
                            (lambda ()
                              (if (gx#stx-pair? _%e125798125816%_)
                                  (let ((_%e125801125854%_
                                         (gx#syntax-e _%e125798125816%_)))
                                    (let ((_%hd125802125857%_
                                           (##car _%e125801125854%_))
                                          (_%tl125803125859%_
                                           (##cdr _%e125801125854%_)))
                                      (if (eq? (gx#stx-e _%hd125802125857%_)
                                               'phi:)
                                          (if (gx#stx-pair? _%tl125803125859%_)
                                              (let ((_%e125804125862%_
                                                     (gx#syntax-e
                                                      _%tl125803125859%_)))
                                                (let ((_%hd125805125865%_
                                                       (##car _%e125804125862%_))
                                                      (_%tl125806125867%_
                                                       (##cdr _%e125804125862%_)))
                                                  (let* ((_%dphi125870%_
                                                          _%hd125805125865%_)
                                                         (_%body125872%_
                                                          _%tl125806125867%_))
                                                    (if (gx#stx-fixnum?
                                                         _%dphi125870%_)
                                                        (let ((_%rbody125875%_
                                                               (__call-with-parameters
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_%K125761%_ _%body125872%_ '()))
                        _%current-phi125758%_
                        (fx+ (gx#stx-e _%dphi125870%_)
                             (_%current-phi125758%_)))))
                  (_%K125761%_
                   _%rest125796%_
                   (__foldr1 cons _%r125797%_ _%rbody125875%_)))
                (_%E125800125850%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E125800125850%_))
                                          (_%E125800125850%_))))
                                  (_%E125800125850%_)))))
                      (_%E125799125877%_)))))
          (let* ((_%e125763125770%_ _%stx125755%_)
                 (_%E125765125774%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e125763125770%_)))
                 (_%E125764125791%_
                  (lambda ()
                    (if (gx#stx-pair? _%e125763125770%_)
                        (let ((_%e125766125778%_
                               (gx#syntax-e _%e125763125770%_)))
                          (let ((_%hd125767125781%_ (##car _%e125766125778%_))
                                (_%tl125768125783%_ (##cdr _%e125766125778%_)))
                            (let ((_%body125786%_ _%tl125768125783%_))
                              (if (_%current-phi125758%_)
                                  (_%K125761%_ _%body125786%_ '())
                                  (__call-with-parameters
                                   (lambda () (_%K125761%_ _%body125786%_ '()))
                                   _%current-phi125758%_
                                   (gx#current-expander-phi))))))
                        (_%E125765125774%_)))))
            (_%E125764125791%_)))))
    (define gx#core-expand-import%__%
      (lambda (_%stx125409%_ _%internal-expand?125410%_)
        (letrec ((_%expand1125412%_
                  (lambda (_%hd125727%_ _%K125728%_ _%rest125729%_ _%r125730%_)
                    (if (gx#core-bound-module? _%hd125727%_)
                        (_%import1125413%_
                         (gx#syntax-local-e__0 _%hd125727%_)
                         _%K125728%_
                         _%rest125729%_
                         _%r125730%_)
                        (if (gx#core-library-module-path? _%hd125727%_)
                            (_%import1125413%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%hd125727%_))
                             _%K125728%_
                             _%rest125729%_
                             _%r125730%_)
                            (if (gx#core-library-relative-module-path?
                                 _%hd125727%_)
                                (_%import1125413%_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _%hd125727%_))
                                 _%K125728%_
                                 _%rest125729%_
                                 _%r125730%_)
                                (let ((_%e125736%_ (gx#stx-e _%hd125727%_)))
                                  (if (pair? _%e125736%_)
                                      (let ((_%$e125739%_
                                             (gx#stx-e (##car _%e125736%_))))
                                        (if (eq? 'spec: _%$e125739%_)
                                            (_%import-spec125416%_
                                             _%hd125727%_
                                             _%K125728%_
                                             _%rest125729%_
                                             _%r125730%_)
                                            (if (eq? 'in: _%$e125739%_)
                                                (_%import-submodule125414%_
                                                 _%hd125727%_
                                                 _%K125728%_
                                                 _%rest125729%_
                                                 _%r125730%_)
                                                (if (eq? 'runtime:
                                                         _%$e125739%_)
                                                    (_%import-runtime125415%_
                                                     _%hd125727%_
                                                     _%K125728%_
                                                     _%rest125729%_
                                                     _%r125730%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _%stx125409%_
                                                     _%hd125727%_)))))
                                      (if (string? _%e125736%_)
                                          (_%import1125413%_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _%hd125727%_
                                             (gx#stx-source _%stx125409%_)))
                                           _%K125728%_
                                           _%rest125729%_
                                           _%r125730%_)
                                          (if (##structure-instance-of?
                                               _%e125736%_
                                               'gx#module-context::t)
                                              (_%K125728%_
                                               _%rest125729%_
                                               (cons _%e125736%_ _%r125730%_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _%stx125409%_
                                               _%hd125727%_))))))))))
                 (_%import1125413%_
                  (lambda (_%ctx125716%_
                           _%K125717%_
                           _%rest125718%_
                           _%r125719%_)
                    (let ((_%dphi125721%_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_%K125717%_
                       _%rest125718%_
                       (cons (##structure
                              gx#import-set::t
                              _%ctx125716%_
                              _%dphi125721%_
                              (map (lambda (_%g125722125724%_)
                                     (gx#core-module-export->import__%
                                      _%g125722125724%_
                                      '#f
                                      _%dphi125721%_))
                                   (##unchecked-structure-ref
                                    _%ctx125716%_
                                    '9
                                    '#f
                                    '#f)))
                             _%r125719%_)))))
                 (_%import-submodule125414%_
                  (lambda (_%hd125683%_ _%K125684%_ _%rest125685%_ _%r125686%_)
                    (let* ((_%e125687125694%_ _%hd125683%_)
                           (_%E125689125698%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e125687125694%_)))
                           (_%E125688125712%_
                            (lambda ()
                              (if (gx#stx-pair? _%e125687125694%_)
                                  (let ((_%e125690125702%_
                                         (gx#syntax-e _%e125687125694%_)))
                                    (let ((_%hd125691125705%_
                                           (##car _%e125690125702%_))
                                          (_%tl125692125707%_
                                           (##cdr _%e125690125702%_)))
                                      (let ((_%spath125710%_
                                             _%tl125692125707%_))
                                        (_%import1125413%_
                                         (_%import-spec-source125417%_
                                          _%spath125710%_)
                                         _%K125684%_
                                         _%rest125685%_
                                         _%r125686%_))))
                                  (_%E125689125698%_)))))
                      (_%E125688125712%_))))
                 (_%import-runtime125415%_
                  (lambda (_%hd125650%_ _%K125651%_ _%rest125652%_ _%r125653%_)
                    (let* ((_%e125654125661%_ _%hd125650%_)
                           (_%E125656125665%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e125654125661%_)))
                           (_%E125655125679%_
                            (lambda ()
                              (if (gx#stx-pair? _%e125654125661%_)
                                  (let ((_%e125657125669%_
                                         (gx#syntax-e _%e125654125661%_)))
                                    (let ((_%hd125658125672%_
                                           (##car _%e125657125669%_))
                                          (_%tl125659125674%_
                                           (##cdr _%e125657125669%_)))
                                      (let ((_%spath125677%_
                                             _%tl125659125674%_))
                                        (_%K125651%_
                                         _%rest125652%_
                                         (cons (_%import-spec-source125417%_
                                                _%spath125677%_)
                                               _%r125653%_)))))
                                  (_%E125656125665%_)))))
                      (_%E125655125679%_))))
                 (_%import-spec125416%_
                  (lambda (_%hd125488%_ _%K125489%_ _%rest125490%_ _%r125491%_)
                    (let* ((_%e125492125509%_ _%hd125488%_)
                           (_%E125501125513%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e125492125509%_)))
                           (_%E125494125624%_
                            (lambda ()
                              (if (gx#stx-pair? _%e125492125509%_)
                                  (let ((_%e125502125517%_
                                         (gx#syntax-e _%e125492125509%_)))
                                    (let ((_%hd125503125520%_
                                           (##car _%e125502125517%_))
                                          (_%tl125504125522%_
                                           (##cdr _%e125502125517%_)))
                                      (if (gx#stx-pair? _%tl125504125522%_)
                                          (let ((_%e125505125525%_
                                                 (gx#syntax-e
                                                  _%tl125504125522%_)))
                                            (let ((_%hd125506125528%_
                                                   (##car _%e125505125525%_))
                                                  (_%tl125507125530%_
                                                   (##cdr _%e125505125525%_)))
                                              (let* ((_%path125533%_
                                                      _%hd125506125528%_)
                                                     (_%specs125535%_
                                                      _%tl125507125530%_))
                                                (let ((_%src-ctx125537%_
                                                       (_%import-spec-source125417%_
                                                        _%path125533%_))
                                                      (_%exports125538%_
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
                                                      (_%specs125539%_
                                                       (gx#syntax->list
                                                        _%specs125535%_)))
                                                  (for-each
                                                   (lambda (_%out125541%_)
                                                     (__hash-put!
                                                      _%exports125538%_
                                                      (cons (##unchecked-structure-ref
                                                             _%out125541%_
                                                             '3
                                                             '#f
                                                             '#f)
                                                            (##unchecked-structure-ref
                                                             _%out125541%_
                                                             '4
                                                             '#f
                                                             '#f))
                                                      _%out125541%_))
                                                   (##unchecked-structure-ref
                                                    _%src-ctx125537%_
                                                    '9
                                                    '#f
                                                    '#f))
                                                  (_%K125489%_
                                                   _%rest125490%_
                                                   (__foldl1
                                                    (lambda (_%spec125543%_
                                                             _%r125544%_)
                                                      (let* ((_%e125545125561%_
                                                              _%spec125543%_)
                                                             (_%E125547125565%_
                                                              (lambda ()
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid syntax-case clause"
                         _%e125545125561%_)))
                     (_%E125546125620%_
                      (lambda ()
                        (if (gx#stx-pair? _%e125545125561%_)
                            (let ((_%e125548125569%_
                                   (gx#syntax-e _%e125545125561%_)))
                              (let ((_%hd125549125572%_
                                     (##car _%e125548125569%_))
                                    (_%tl125550125574%_
                                     (##cdr _%e125548125569%_)))
                                (let ((_%phi125577%_ _%hd125549125572%_))
                                  (if (gx#stx-pair? _%tl125550125574%_)
                                      (let ((_%e125551125579%_
                                             (gx#syntax-e _%tl125550125574%_)))
                                        (let ((_%hd125552125582%_
                                               (##car _%e125551125579%_))
                                              (_%tl125553125584%_
                                               (##cdr _%e125551125579%_)))
                                          (let ((_%name125587%_
                                                 _%hd125552125582%_))
                                            (if (gx#stx-pair?
                                                 _%tl125553125584%_)
                                                (let ((_%e125554125589%_
                                                       (gx#syntax-e
                                                        _%tl125553125584%_)))
                                                  (let ((_%hd125555125592%_
                                                         (##car _%e125554125589%_))
                                                        (_%tl125556125594%_
                                                         (##cdr _%e125554125589%_)))
                                                    (let ((_%src-phi125597%_
                                                           _%hd125555125592%_))
                                                      (if (gx#stx-pair?
                                                           _%tl125556125594%_)
                                                          (let ((_%e125557125599%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl125556125594%_)))
                    (let ((_%hd125558125602%_ (##car _%e125557125599%_))
                          (_%tl125559125604%_ (##cdr _%e125557125599%_)))
                      (let ((_%src-name125607%_ _%hd125558125602%_))
                        (if (gx#stx-null? _%tl125559125604%_)
                            (if (and (gx#stx-fixnum? _%src-phi125597%_)
                                     (gx#identifier? _%src-name125607%_)
                                     (gx#stx-fixnum? _%phi125577%_)
                                     (gx#identifier? _%name125587%_))
                                (let ((_%src-phi125609%_
                                       (gx#stx-e _%src-phi125597%_))
                                      (_%src-name125610%_
                                       (gx#core-identifier-key
                                        _%src-name125607%_))
                                      (_%phi125611%_ (gx#stx-e _%phi125577%_))
                                      (_%name125612%_
                                       (gx#core-identifier-key
                                        _%name125587%_)))
                                  (let ((_%$e125614%_
                                         (__hash-get
                                          _%exports125538%_
                                          (cons _%src-phi125609%_
                                                _%src-name125610%_))))
                                    (if _%$e125614%_
                                        ((lambda (_%out125617%_)
                                           (cons (gx#core-module-export->import__%
                                                  _%out125617%_
                                                  _%name125612%_
                                                  (fx- _%phi125611%_
                                                       _%src-phi125609%_))
                                                 _%r125544%_))
                                         _%$e125614%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; no matching export"
                                         _%stx125409%_
                                         _%hd125488%_))))
                                (_%E125547125565%_))
                            (_%E125547125565%_)))))
                  (_%E125547125565%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E125547125565%_)))))
                                      (_%E125547125565%_)))))
                            (_%E125547125565%_)))))
                (_%E125546125620%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r125491%_
                                                    _%specs125539%_))))))
                                          (_%E125501125513%_))))
                                  (_%E125501125513%_))))
                           (_%E125493125646%_
                            (lambda ()
                              (if (gx#stx-pair? _%e125492125509%_)
                                  (let ((_%e125495125628%_
                                         (gx#syntax-e _%e125492125509%_)))
                                    (let ((_%hd125496125631%_
                                           (##car _%e125495125628%_))
                                          (_%tl125497125633%_
                                           (##cdr _%e125495125628%_)))
                                      (if (gx#stx-pair? _%tl125497125633%_)
                                          (let ((_%e125498125636%_
                                                 (gx#syntax-e
                                                  _%tl125497125633%_)))
                                            (let ((_%hd125499125639%_
                                                   (##car _%e125498125636%_))
                                                  (_%tl125500125641%_
                                                   (##cdr _%e125498125636%_)))
                                              (let ((_%path125644%_
                                                     _%hd125499125639%_))
                                                (if (gx#stx-null?
                                                     _%tl125500125641%_)
                                                    (_%K125489%_
                                                     _%rest125490%_
                                                     (cons (_%import-spec-source125417%_
                                                            _%path125644%_)
                                                           _%r125491%_))
                                                    (_%E125494125624%_)))))
                                          (_%E125494125624%_))))
                                  (_%E125494125624%_)))))
                      (_%E125493125646%_))))
                 (_%import-spec-source125417%_
                  (lambda (_%spath125486%_)
                    (gx#core-import-nested-module
                     _%spath125486%_
                     _%stx125409%_)))
                 (_%import!125418%_
                  (lambda (_%rbody125431%_)
                    (letrec* ((_%current-ctx125433%_
                               (gx#current-expander-context))
                              (_%deps125434%_ (make-hash-table-eq))
                              (_%bind!125435%_
                               (lambda (_%hd125484%_)
                                 (gx#core-bind-import!__1
                                  _%hd125484%_
                                  _%current-ctx125433%_))))
                      (let _%lp125437%_ ((_%rest125439%_ _%rbody125431%_)
                                         (_%body125440%_ '()))
                        (let* ((_%rest125441125449%_ _%rest125439%_)
                               (_%else125443125460%_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _%current-ctx125433%_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _%current-ctx125433%_
                                       (__foldl1
                                        cons
                                        (##unchecked-structure-ref
                                         _%current-ctx125433%_
                                         '8
                                         '#f
                                         '#f)
                                        _%body125440%_)
                                       '8
                                       '#f
                                       '#f)
                                      '#!void)
                                  (__hash-for-each
                                   (lambda (_%ctx125457%_ _%_125458%_)
                                     (gx#eval-module _%ctx125457%_))
                                   _%deps125434%_)
                                  _%body125440%_))
                               (_%K125445125472%_
                                (lambda (_%rest125463%_ _%hd125464%_)
                                  (if (##structure-direct-instance-of?
                                       _%hd125464%_
                                       'gx#module-import::t)
                                      (let ()
                                        (_%bind!125435%_ _%hd125464%_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _%hd125464%_
                                                   '3
                                                   '#f
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _%hd125464%_
                                                            '1
                                                            '#f
                                                            '#f)
                                                           '3
                                                           '#f
                                                           '#f)))
                                            (__hash-put!
                                             _%deps125434%_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _%hd125464%_
                                               '1
                                               '#f
                                               '#f)
                                              '1
                                              '#f
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _%hd125464%_
                                           'gx#import-set::t)
                                          (let ()
                                            (for-each
                                             _%bind!125435%_
                                             (##unchecked-structure-ref
                                              _%hd125464%_
                                              '3
                                              '#f
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _%hd125464%_
                                                  '2
                                                  '#f
                                                  '#f))
                                                (__hash-put!
                                                 _%deps125434%_
                                                 (##unchecked-structure-ref
                                                  _%hd125464%_
                                                  '1
                                                  '#f
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_%$e125468%_
                                                 (##structure-instance-of?
                                                  _%hd125464%_
                                                  'gx#module-context::t)))
                                            (if _%$e125468%_
                                                _%$e125468%_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _%stx125409%_
                                                 _%hd125464%_)))))
                                  (_%lp125437%_
                                   _%rest125463%_
                                   (cons _%hd125464%_ _%body125440%_)))))
                          (if (##pair? _%rest125441125449%_)
                              (let ((_%hd125446125475%_
                                     (##car _%rest125441125449%_))
                                    (_%tl125447125477%_
                                     (##cdr _%rest125441125449%_)))
                                (let* ((_%hd125480%_ _%hd125446125475%_)
                                       (_%rest125482%_ _%tl125447125477%_))
                                  (_%K125445125472%_
                                   _%rest125482%_
                                   _%hd125480%_)))
                              (_%else125443125460%_)))))))
                 (_%expanded-import?125419%_
                  (lambda (_%e125423%_)
                    (let ((_%$e125425%_
                           (##structure-direct-instance-of?
                            _%e125423%_
                            'gx#import-set::t)))
                      (if _%$e125425%_
                          _%$e125425%_
                          (let ((_%$e125428%_
                                 (##structure-direct-instance-of?
                                  _%e125423%_
                                  'gx#module-import::t)))
                            (if _%$e125428%_
                                _%$e125428%_
                                (##structure-instance-of?
                                 _%e125423%_
                                 'gx#module-context::t))))))))
          (let ((_%rbody125421%_
                 (gx#core-expand-import/export
                  _%stx125409%_
                  _%expanded-import?125419%_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _%expand1125412%_)))
            (if _%internal-expand?125410%_
                (reverse _%rbody125421%_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_%import!125418%_ _%rbody125421%_))
                 (gx#stx-source _%stx125409%_)))))))
    (define gx#core-expand-import%__0
      (lambda (_%stx125748%_)
        (let ((_%internal-expand?125750%_ '#f))
          (gx#core-expand-import%__%
           _%stx125748%_
           _%internal-expand?125750%_))))
    (define gx#core-expand-import%
      (lambda _g128401_
        (let ((_g128400_ (##length _g128401_)))
          (cond ((##fx= _g128400_ 1)
                 (apply gx#core-expand-import%__0 _g128401_))
                ((##fx= _g128400_ 2)
                 (apply gx#core-expand-import%__% _g128401_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g128401_))))))
    (define gx#core-import-nested-module
      (lambda (_%spath125336%_ _%where125337%_)
        (let* ((_%e125338125345%_ _%spath125336%_)
               (_%E125340125349%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125338125345%_)))
               (_%E125339125404%_
                (lambda ()
                  (if (gx#stx-pair? _%e125338125345%_)
                      (let ((_%e125341125353%_
                             (gx#syntax-e _%e125338125345%_)))
                        (let ((_%hd125342125356%_ (##car _%e125341125353%_))
                              (_%tl125343125358%_ (##cdr _%e125341125353%_)))
                          (let* ((_%origin125361%_ _%hd125342125356%_)
                                 (_%sub125363%_ _%tl125343125358%_)
                                 (_%origin-ctx125365%_
                                  (if (gx#stx-false? _%origin125361%_)
                                      (gx#current-expander-context)
                                      (gx#import-module__0 _%origin125361%_))))
                            (let _%lp125367%_ ((_%rest125369%_ _%sub125363%_)
                                               (_%ctx125370%_
                                                _%origin-ctx125365%_))
                              (let* ((_%e125371125378%_ _%rest125369%_)
                                     (_%E125373125382%_
                                      (lambda () _%ctx125370%_))
                                     (_%E125372125400%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%e125371125378%_)
                                            (let ((_%e125374125386%_
                                                   (gx#syntax-e
                                                    _%e125371125378%_)))
                                              (let ((_%hd125375125389%_
                                                     (##car _%e125374125386%_))
                                                    (_%tl125376125391%_
                                                     (##cdr _%e125374125386%_)))
                                                (let* ((_%id125394%_
                                                        _%hd125375125389%_)
                                                       (_%rest125396%_
                                                        _%tl125376125391%_)
                                                       (_%bind125398%_
                                                        (gx#resolve-identifier__%
                                                         _%id125394%_
                                                         '0
                                                         _%ctx125370%_)))
                                                  (if (and (##structure-direct-instance-of?
                                                            _%bind125398%_
                                                            'gx#syntax-binding::t)
                                                           (##structure-instance-of?
                                                            (##unchecked-structure-ref
                                                             _%bind125398%_
                                                             '4
                                                             '#f
                                                             '#f)
                                                            'gx#module-context::t))
                                                      '#!void
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; not bound as module"
                                                       _%where125337%_
                                                       _%spath125336%_
                                                       _%id125394%_))
                                                  (_%lp125367%_
                                                   _%rest125396%_
                                                   (##unchecked-structure-ref
                                                    _%bind125398%_
                                                    '4
                                                    '#f
                                                    '#f)))))
                                            (_%E125373125382%_)))))
                                (_%E125372125400%_))))))
                      (_%E125340125349%_)))))
          (_%E125339125404%_))))
    (define gx#core-expand-import-source
      (lambda (_%hd125334%_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _%hd125334%_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_%stx124828%_ _%internal-expand?124829%_)
        (letrec* ((_%make-export__128329128330%_
                   (lambda (_%bind125282%_
                            _%phi125283%_
                            _%ctx125284%_
                            _%name125285%_)
                     (let* ((_%key125287%_
                             (##unchecked-structure-ref
                              _%bind125282%_
                              '2
                              '#f
                              '#f))
                            (_%export-key125289%_
                             (if _%name125285%_
                                 (gx#core-identifier-key _%name125285%_)
                                 _%key125287%_)))
                       (##structure
                        gx#module-export::t
                        _%ctx125284%_
                        _%key125287%_
                        _%phi125283%_
                        _%export-key125289%_
                        (let ((_%$e125292%_
                               (##structure-instance-of?
                                _%bind125282%_
                                'gx#extern-binding::t)))
                          (if _%$e125292%_
                              _%$e125292%_
                              (##structure-direct-instance-of?
                               _%bind125282%_
                               'gx#import-binding::t)))))))
                  (_%make-export__0__128331128334%_
                   (lambda (_%bind125298%_)
                     (let* ((_%phi125300%_ (gx#current-export-expander-phi))
                            (_%ctx125302%_ (gx#current-expander-context))
                            (_%name125304%_ '#f))
                       (_%make-export__128329128330%_
                        _%bind125298%_
                        _%phi125300%_
                        _%ctx125302%_
                        _%name125304%_))))
                  (_%make-export__1__128332128335%_
                   (lambda (_%bind125306%_ _%phi125307%_)
                     (let* ((_%ctx125309%_ (gx#current-expander-context))
                            (_%name125311%_ '#f))
                       (_%make-export__128329128330%_
                        _%bind125306%_
                        _%phi125307%_
                        _%ctx125309%_
                        _%name125311%_))))
                  (_%make-export__2__128333128336%_
                   (lambda (_%bind125313%_ _%phi125314%_ _%ctx125315%_)
                     (let ((_%name125317%_ '#f))
                       (_%make-export__128329128330%_
                        _%bind125313%_
                        _%phi125314%_
                        _%ctx125315%_
                        _%name125317%_))))
                  (_%make-export124831%_
                   (lambda _g128403_
                     (let ((_g128402_ (##length _g128403_)))
                       (cond ((##fx= _g128402_ 1)
                              (apply _%make-export__0__128331128334%_
                                     _g128403_))
                             ((##fx= _g128402_ 2)
                              (apply _%make-export__1__128332128335%_
                                     _g128403_))
                             ((##fx= _g128402_ 3)
                              (apply _%make-export__2__128333128336%_
                                     _g128403_))
                             ((##fx= _g128402_ 4)
                              (apply _%make-export__128329128330%_ _g128403_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g128403_))))))
                  (_%expand1124832%_
                   (lambda (_%hd124987%_
                            _%K124988%_
                            _%rest124989%_
                            _%r124990%_)
                     (let* ((_%e124991125023%_ _%hd124987%_)
                            (_%E125018125027%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _%stx124828%_
                                _%hd124987%_)))
                            (_%E125008125111%_
                             (lambda ()
                               (if (gx#stx-pair? _%e124991125023%_)
                                   (let ((_%e125019125031%_
                                          (gx#syntax-e _%e124991125023%_)))
                                     (let ((_%hd125020125034%_
                                            (##car _%e125019125031%_))
                                           (_%tl125021125036%_
                                            (##cdr _%e125019125031%_)))
                                       (if (eq? (gx#stx-e _%hd125020125034%_)
                                                'import:)
                                           (let ((_%in125039%_
                                                  _%tl125021125036%_))
                                             (if (gx#stx-list? _%in125039%_)
                                                 (let _%lp125041%_ ((_%in-rest125043%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%in125039%_)
                            (_%r125044%_ _%r124990%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%e125045125052%_
                                                           _%in-rest125043%_)
                                                          (_%E125047125056%_
                                                           (lambda ()
                                                             (_%K124988%_
                                                              _%rest124989%_
                                                              _%r125044%_)))
                                                          (_%E125046125107%_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%e125045125052%_)
                         (let ((_%e125048125060%_
                                (gx#syntax-e _%e125045125052%_)))
                           (let ((_%hd125049125063%_ (##car _%e125048125060%_))
                                 (_%tl125050125065%_
                                  (##cdr _%e125048125060%_)))
                             (let* ((_%hd125068%_ _%hd125049125063%_)
                                    (_%in-rest125070%_ _%tl125050125065%_)
                                    (_%src125105%_
                                     (if (gx#core-bound-module? _%hd125068%_)
                                         (gx#syntax-local-e__0 _%hd125068%_)
                                         (if (gx#core-library-module-path?
                                              _%hd125068%_)
                                             (gx#import-module__0
                                              (gx#core-resolve-library-module-path
                                               _%hd125068%_))
                                             (if (gx#core-library-relative-module-path?
                                                  _%hd125068%_)
                                                 (gx#import-module__0
                                                  (gx#core-resolve-library-relative-module-path
                                                   _%hd125068%_))
                                                 (if (gx#stx-string?
                                                      _%hd125068%_)
                                                     (gx#import-module__0
                                                      (gx#core-resolve-module-path__%
                                                       _%hd125068%_
                                                       (gx#stx-source
                                                        _%stx124828%_)))
                                                     (let* ((_%e125076125083%_
                                                             _%hd125068%_)
                                                            (_%E125078125087%_
                                                             (lambda ()
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; illegal re-export"
                                                                _%stx124828%_
                                                                _%hd125068%_)))
                                                            (_%E125077125101%_
                                                             (lambda ()
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%e125076125083%_)
                           (let ((_%e125079125091%_
                                  (gx#syntax-e _%e125076125083%_)))
                             (let ((_%hd125080125094%_
                                    (##car _%e125079125091%_))
                                   (_%tl125081125096%_
                                    (##cdr _%e125079125091%_)))
                               (if (eq? (gx#stx-e _%hd125080125094%_) 'in:)
                                   (let ((_%spath125099%_ _%tl125081125096%_))
                                     (gx#core-import-nested-module
                                      _%spath125099%_
                                      _%stx124828%_))
                                   (_%E125078125087%_))))
                           (_%E125078125087%_)))))
               (_%E125077125101%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (_%lp125041%_
                                _%in-rest125070%_
                                (_%export-imports124833%_
                                 _%src125105%_
                                 _%r125044%_)))))
                         (_%E125047125056%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E125046125107%_)))
                                                 (_%E125018125027%_)))
                                           (_%E125018125027%_))))
                                   (_%E125018125027%_))))
                            (_%E124995125151%_
                             (lambda ()
                               (if (gx#stx-pair? _%e124991125023%_)
                                   (let ((_%e125009125115%_
                                          (gx#syntax-e _%e124991125023%_)))
                                     (let ((_%hd125010125118%_
                                            (##car _%e125009125115%_))
                                           (_%tl125011125120%_
                                            (##cdr _%e125009125115%_)))
                                       (if (eq? (gx#stx-e _%hd125010125118%_)
                                                'rename:)
                                           (if (gx#stx-pair?
                                                _%tl125011125120%_)
                                               (let ((_%e125012125123%_
                                                      (gx#syntax-e
                                                       _%tl125011125120%_)))
                                                 (let ((_%hd125013125126%_
                                                        (##car _%e125012125123%_))
                                                       (_%tl125014125128%_
                                                        (##cdr _%e125012125123%_)))
                                                   (let ((_%id125131%_
                                                          _%hd125013125126%_))
                                                     (if (gx#stx-pair?
                                                          _%tl125014125128%_)
                                                         (let ((_%e125015125133%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl125014125128%_)))
                   (let ((_%hd125016125136%_ (##car _%e125015125133%_))
                         (_%tl125017125138%_ (##cdr _%e125015125133%_)))
                     (let ((_%name125141%_ _%hd125016125136%_))
                       (if (gx#stx-null? _%tl125017125138%_)
                           (let* ((_%phi125143%_
                                   (gx#current-export-expander-phi))
                                  (_%$e125145%_
                                   (gx#core-resolve-identifier__1
                                    _%id125131%_
                                    _%phi125143%_)))
                             (if _%$e125145%_
                                 ((lambda (_%bind125148%_)
                                    (_%K124988%_
                                     _%rest124989%_
                                     (cons (_%make-export__128329128330%_
                                            _%bind125148%_
                                            _%phi125143%_
                                            (gx#current-expander-context)
                                            _%name125141%_)
                                           _%r124990%_)))
                                  _%$e125145%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Reference to unbound identifier"
                                  _%stx124828%_
                                  _%hd124987%_
                                  _%id125131%_)))
                           (_%E125008125111%_)))))
                 (_%E125008125111%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E125008125111%_))
                                           (_%E125008125111%_))))
                                   (_%E125008125111%_))))
                            (_%E124994125201%_
                             (lambda ()
                               (if (gx#stx-pair? _%e124991125023%_)
                                   (let ((_%e124996125155%_
                                          (gx#syntax-e _%e124991125023%_)))
                                     (let ((_%hd124997125158%_
                                            (##car _%e124996125155%_))
                                           (_%tl124998125160%_
                                            (##cdr _%e124996125155%_)))
                                       (if (eq? (gx#stx-e _%hd124997125158%_)
                                                'spec:)
                                           (if (gx#stx-pair?
                                                _%tl124998125160%_)
                                               (let ((_%e124999125163%_
                                                      (gx#syntax-e
                                                       _%tl124998125160%_)))
                                                 (let ((_%hd125000125166%_
                                                        (##car _%e124999125163%_))
                                                       (_%tl125001125168%_
                                                        (##cdr _%e124999125163%_)))
                                                   (let ((_%phi125171%_
                                                          _%hd125000125166%_))
                                                     (if (gx#stx-pair?
                                                          _%tl125001125168%_)
                                                         (let ((_%e125002125173%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl125001125168%_)))
                   (let ((_%hd125003125176%_ (##car _%e125002125173%_))
                         (_%tl125004125178%_ (##cdr _%e125002125173%_)))
                     (let ((_%id125181%_ _%hd125003125176%_))
                       (if (gx#stx-pair? _%tl125004125178%_)
                           (let ((_%e125005125183%_
                                  (gx#syntax-e _%tl125004125178%_)))
                             (let ((_%hd125006125186%_
                                    (##car _%e125005125183%_))
                                   (_%tl125007125188%_
                                    (##cdr _%e125005125183%_)))
                               (let ((_%name125191%_ _%hd125006125186%_))
                                 (if (gx#stx-null? _%tl125007125188%_)
                                     (if (and (gx#stx-fixnum? _%phi125171%_)
                                              (gx#identifier? _%id125181%_)
                                              (gx#identifier? _%name125191%_))
                                         (let* ((_%phi125193%_
                                                 (gx#stx-e _%phi125171%_))
                                                (_%$e125195%_
                                                 (gx#core-resolve-identifier__1
                                                  _%id125181%_
                                                  _%phi125193%_)))
                                           (if _%$e125195%_
                                               ((lambda (_%bind125198%_)
                                                  (_%K124988%_
                                                   _%rest124989%_
                                                   (cons (_%make-export__128329128330%_
                                                          _%bind125198%_
                                                          _%phi125193%_
                                                          (gx#current-expander-context)
                                                          _%name125191%_)
                                                         _%r124990%_)))
                                                _%$e125195%_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _%stx124828%_
                                                _%hd124987%_
                                                _%id125181%_)))
                                         (_%E124995125151%_))
                                     (_%E124995125151%_)))))
                           (_%E124995125151%_)))))
                 (_%E124995125151%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E124995125151%_))
                                           (_%E124995125151%_))))
                                   (_%E124995125151%_))))
                            (_%E124993125213%_
                             (lambda ()
                               (let ((_%id125205%_ _%e124991125023%_))
                                 (if (gx#identifier? _%id125205%_)
                                     (let ((_%$e125207%_
                                            (gx#core-resolve-identifier__1
                                             _%id125205%_
                                             (gx#current-export-expander-phi))))
                                       (if _%$e125207%_
                                           ((lambda (_%bind125210%_)
                                              (_%K124988%_
                                               _%rest124989%_
                                               (cons (_%make-export__0__128331128334%_
                                                      _%bind125210%_)
                                                     _%r124990%_)))
                                            _%$e125207%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _%stx124828%_
                                            _%hd124987%_)))
                                     (_%E124994125201%_)))))
                            (_%E124992125277%_
                             (lambda ()
                               (if (eq? (gx#stx-e _%e124991125023%_) '#t)
                                   (let* ((_%current-ctx125217%_
                                           (gx#current-expander-context))
                                          (_%current-phi125219%_
                                           (gx#current-export-expander-phi))
                                          (_%phi-ctx125221%_
                                           (gx#core-context-shift
                                            _%current-ctx125217%_
                                            _%current-phi125219%_))
                                          (_%phi-bind125223%_
                                           (hash->list
                                            (##unchecked-structure-ref
                                             _%phi-ctx125221%_
                                             '2
                                             '#f
                                             '#f))))
                                     (let _%lp125226%_ ((_%bind-rest125228%_
                                                         _%phi-bind125223%_)
                                                        (_%set125229%_ '()))
                                       (let* ((_%bind-rest125230125240%_
                                               _%bind-rest125228%_)
                                              (_%else125232125248%_
                                               (lambda ()
                                                 (_%K124988%_
                                                  _%rest124989%_
                                                  (cons (##structure
                                                         gx#export-set::t
                                                         '#f
                                                         _%current-phi125219%_
                                                         _%set125229%_)
                                                        _%r124990%_))))
                                              (_%K125234125258%_
                                               (lambda (_%bind-rest125251%_
                                                        _%bind125252%_
                                                        _%key125253%_)
                                                 (if (or (##structure-direct-instance-of?
                                                          _%bind125252%_
                                                          'gx#import-binding::t)
                                                         (gx#private-feature-binding?
                                                          _%bind125252%_))
                                                     (_%lp125226%_
                                                      _%bind-rest125251%_
                                                      _%set125229%_)
                                                     (_%lp125226%_
                                                      _%bind-rest125251%_
                                                      (cons (_%make-export__2__128333128336%_
                                                             _%bind125252%_
                                                             _%current-phi125219%_
                                                             _%current-ctx125217%_)
                                                            _%set125229%_))))))
                                         (if (##pair? _%bind-rest125230125240%_)
                                             (let ((_%hd125235125261%_
                                                    (##car _%bind-rest125230125240%_))
                                                   (_%tl125236125263%_
                                                    (##cdr _%bind-rest125230125240%_)))
                                               (if (##pair? _%hd125235125261%_)
                                                   (let ((_%hd125237125266%_
                                                          (##car _%hd125235125261%_))
                                                         (_%tl125238125268%_
                                                          (##cdr _%hd125235125261%_)))
                                                     (let* ((_%key125271%_
                                                             _%hd125237125266%_)
                                                            (_%bind125273%_
                                                             _%tl125238125268%_)
                                                            (_%bind-rest125275%_
                                                             _%tl125236125263%_))
                                                       (_%K125234125258%_
                                                        _%bind-rest125275%_
                                                        _%bind125273%_
                                                        _%key125271%_)))
                                                   (_%else125232125248%_)))
                                             (_%else125232125248%_)))))
                                   (_%E124993125213%_)))))
                       (_%E124992125277%_))))
                  (_%export-imports124833%_
                   (lambda (_%src124863%_ _%r124864%_)
                     (letrec* ((_%current-ctx124866%_
                                (gx#current-expander-context))
                               (_%current-phi124867%_
                                (gx#current-export-expander-phi))
                               (_%import->export124868%_
                                (lambda (_%in124949%_)
                                  (let* ((_%in124950124958%_ _%in124949%_)
                                         (_%E124952124962%_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _%in124950124958%_
                                                   '((module-import
                                                      out
                                                      key
                                                      phi)))
                                            '#!void))
                                         (_%K124953124969%_
                                          (lambda (_%phi124965%_
                                                   _%key124966%_
                                                   _%out124967%_)
                                            (##structure
                                             gx#module-export::t
                                             _%current-ctx124866%_
                                             _%key124966%_
                                             _%phi124965%_
                                             _%key124966%_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _%in124950124958%_
                                         'gx#module-import::t)
                                        (let* ((_%e124954124972%_
                                                (##unchecked-structure-ref
                                                 _%in124950124958%_
                                                 '1
                                                 '#f
                                                 '#f))
                                               (_%out124975%_
                                                _%e124954124972%_)
                                               (_%e124955124977%_
                                                (##unchecked-structure-ref
                                                 _%in124950124958%_
                                                 '2
                                                 '#f
                                                 '#f))
                                               (_%key124980%_
                                                _%e124955124977%_)
                                               (_%e124956124982%_
                                                (##unchecked-structure-ref
                                                 _%in124950124958%_
                                                 '3
                                                 '#f
                                                 '#f))
                                               (_%phi124985%_
                                                _%e124956124982%_))
                                          (_%K124953124969%_
                                           _%phi124985%_
                                           _%key124980%_
                                           _%out124975%_))
                                        (_%E124952124962%_)))))
                               (_%fold-e124869%_
                                (lambda (_%in124871%_ _%r124872%_)
                                  (let* ((_%in124873124887%_ _%in124871%_)
                                         (_%else124876124895%_
                                          (lambda () _%r124872%_)))
                                    (let ((_%K124882124931%_
                                           (lambda (_%phi124927%_
                                                    _%key124928%_
                                                    _%out124929%_)
                                             (if (and (fx= _%phi124927%_
                                                           _%current-phi124867%_)
                                                      (eq? _%src124863%_
                                                           (##unchecked-structure-ref
                                                            _%out124929%_
                                                            '1
                                                            '#f
                                                            '#f)))
                                                 (cons (_%import->export124868%_
                                                        _%in124871%_)
                                                       _%r124872%_)
                                                 _%r124872%_)))
                                          (_%K124878124906%_
                                           (lambda (_%imports124899%_
                                                    _%phi124900%_
                                                    _%ctx124901%_)
                                             (if (and (fx= _%phi124900%_
                                                           _%current-phi124867%_)
                                                      (eq? _%src124863%_
                                                           _%ctx124901%_))
                                                 (__foldl1
                                                  (lambda (_%in124903%_
                                                           _%r124904%_)
                                                    (cons (_%import->export124868%_
                                                           _%in124903%_)
                                                          _%r124904%_))
                                                  _%r124872%_
                                                  _%imports124899%_)
                                                 _%r124872%_))))
                                      (let ((_%try-match124875124924%_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _%in124873124887%_
                                                    'gx#import-set::t)
                                                   (let* ((_%e124879124909%_
                                                           (##unchecked-structure-ref
                                                            _%in124873124887%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                          (_%e124880124914%_
                                                           (##unchecked-structure-ref
                                                            _%in124873124887%_
                                                            '2
                                                            '#f
                                                            '#f))
                                                          (_%e124881124919%_
                                                           (##unchecked-structure-ref
                                                            _%in124873124887%_
                                                            '3
                                                            '#f
                                                            '#f)))
                                                     (let ((_%ctx124912%_
                                                            _%e124879124909%_)
                                                           (_%phi124917%_
                                                            _%e124880124914%_)
                                                           (_%imports124922%_
                                                            _%e124881124919%_))
                                                       (_%K124878124906%_
                                                        _%imports124922%_
                                                        _%phi124917%_
                                                        _%ctx124912%_)))
                                                   (_%else124876124895%_)))))
                                        (if (##structure-direct-instance-of?
                                             _%in124873124887%_
                                             'gx#module-import::t)
                                            (let* ((_%e124883124934%_
                                                    (##unchecked-structure-ref
                                                     _%in124873124887%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                   (_%e124884124939%_
                                                    (##unchecked-structure-ref
                                                     _%in124873124887%_
                                                     '2
                                                     '#f
                                                     '#f))
                                                   (_%e124885124944%_
                                                    (##unchecked-structure-ref
                                                     _%in124873124887%_
                                                     '3
                                                     '#f
                                                     '#f)))
                                              (let ((_%out124937%_
                                                     _%e124883124934%_)
                                                    (_%key124942%_
                                                     _%e124884124939%_)
                                                    (_%phi124947%_
                                                     _%e124885124944%_))
                                                (_%K124882124931%_
                                                 _%phi124947%_
                                                 _%key124942%_
                                                 _%out124937%_)))
                                            (_%try-match124875124924%_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _%src124863%_
                              _%current-phi124867%_
                              (__foldl1
                               _%fold-e124869%_
                               '()
                               (##unchecked-structure-ref
                                _%current-ctx124866%_
                                '8
                                '#f
                                '#f)))
                             _%r124864%_))))
                  (_%export!124834%_
                   (lambda (_%rbody124850%_)
                     (letrec* ((_%current-ctx124852%_
                                (gx#current-expander-context))
                               (_%fold-e124853%_
                                (lambda (_%out124857%_ _%r124858%_)
                                  (if (##structure-direct-instance-of?
                                       _%out124857%_
                                       'gx#module-export::t)
                                      (cons _%out124857%_ _%r124858%_)
                                      (if (##structure-direct-instance-of?
                                           _%out124857%_
                                           'gx#export-set::t)
                                          (__foldl1
                                           cons
                                           _%r124858%_
                                           (##unchecked-structure-ref
                                            _%out124857%_
                                            '3
                                            '#f
                                            '#f))
                                          _%r124858%_)))))
                       (let ((_%body124855%_ (reverse _%rbody124850%_)))
                         (##unchecked-structure-set!
                          _%current-ctx124852%_
                          (__foldl1
                           _%fold-e124853%_
                           (##unchecked-structure-ref
                            _%current-ctx124852%_
                            '9
                            '#f
                            '#f)
                           _%body124855%_)
                          '9
                          '#f
                          '#f)
                         _%body124855%_))))
                  (_%expanded-export?124835%_
                   (lambda (_%e124845%_)
                     (let ((_%$e124847%_
                            (##structure-direct-instance-of?
                             _%e124845%_
                             'gx#module-export::t)))
                       (if _%$e124847%_
                           _%$e124847%_
                           (##structure-direct-instance-of?
                            _%e124845%_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _%internal-expand?124829%_)
              (let ((_%rbody124841%_
                     (gx#core-expand-import/export
                      _%stx124828%_
                      _%expanded-export?124835%_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _%expand1124832%_)))
                (if _%internal-expand?124829%_
                    (reverse _%rbody124841%_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons
                      '%#export
                      (_%export!124834%_ _%rbody124841%_))
                     (gx#stx-source _%stx124828%_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _%stx124828%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _%stx124828%_))))))
    (define gx#core-expand-export%__0
      (lambda (_%stx125327%_)
        (let ((_%internal-expand?125329%_ '#f))
          (gx#core-expand-export%__%
           _%stx125327%_
           _%internal-expand?125329%_))))
    (define gx#core-expand-export%
      (lambda _g128405_
        (let ((_g128404_ (##length _g128405_)))
          (cond ((##fx= _g128404_ 1)
                 (apply gx#core-expand-export%__0 _g128405_))
                ((##fx= _g128404_ 2)
                 (apply gx#core-expand-export%__% _g128405_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g128405_))))))
    (define gx#core-expand-export-source
      (lambda (_%hd124825%_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _%hd124825%_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_%stx124795%_)
        (let* ((_%e124796124803%_ _%stx124795%_)
               (_%E124798124807%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124796124803%_)))
               (_%E124797124821%_
                (lambda ()
                  (if (gx#stx-pair? _%e124796124803%_)
                      (let ((_%e124799124811%_
                             (gx#syntax-e _%e124796124803%_)))
                        (let ((_%hd124800124814%_ (##car _%e124799124811%_))
                              (_%tl124801124816%_ (##cdr _%e124799124811%_)))
                          (let ((_%body124819%_ _%tl124801124816%_))
                            (if (gx#identifier-list? _%body124819%_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _%body124819%_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _%body124819%_))
                                   (gx#stx-source _%stx124795%_)))
                                (_%E124798124807%_)))))
                      (_%E124798124807%_)))))
          (_%E124797124821%_))))
    (define gx#core-bind-feature!__%
      (lambda (_%id124761%_ _%private?124762%_ _%phi124763%_ _%ctx124764%_)
        (gx#core-bind-syntax!__%
         _%id124761%_
         ((if _%private?124762%_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _%id124761%_))
         _%private?124762%_
         _%phi124763%_
         _%ctx124764%_)))
    (define gx#core-bind-feature!__0
      (lambda (_%id124769%_)
        (let* ((_%private?124771%_ '#f)
               (_%phi124773%_ (gx#current-expander-phi))
               (_%ctx124775%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id124769%_
           _%private?124771%_
           _%phi124773%_
           _%ctx124775%_))))
    (define gx#core-bind-feature!__1
      (lambda (_%id124777%_ _%private?124778%_)
        (let* ((_%phi124780%_ (gx#current-expander-phi))
               (_%ctx124782%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id124777%_
           _%private?124778%_
           _%phi124780%_
           _%ctx124782%_))))
    (define gx#core-bind-feature!__2
      (lambda (_%id124784%_ _%private?124785%_ _%phi124786%_)
        (let ((_%ctx124788%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id124784%_
           _%private?124785%_
           _%phi124786%_
           _%ctx124788%_))))
    (define gx#core-bind-feature!
      (lambda _g128407_
        (let ((_g128406_ (##length _g128407_)))
          (cond ((##fx= _g128406_ 1)
                 (apply gx#core-bind-feature!__0 _g128407_))
                ((##fx= _g128406_ 2)
                 (apply gx#core-bind-feature!__1 _g128407_))
                ((##fx= _g128406_ 3)
                 (apply gx#core-bind-feature!__2 _g128407_))
                ((##fx= _g128406_ 4)
                 (apply gx#core-bind-feature!__% _g128407_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g128407_))))))))
