(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1756715353)
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
      (lambda _%$args137452%_
        (apply make-instance gx#module-import::t _%$args137452%_)))
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
      (lambda _%$args137449%_
        (apply make-instance gx#module-export::t _%$args137449%_)))
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
      (lambda _%$args137446%_
        (apply make-instance gx#import-set::t _%$args137446%_)))
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
      (lambda _%$args137443%_
        (apply make-instance gx#export-set::t _%$args137443%_)))
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
      (lambda _%$args137440%_
        (apply make-instance gx#import-expander::t _%$args137440%_)))
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
      (lambda _%$args137437%_
        (apply make-instance gx#export-expander::t _%$args137437%_)))
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
      (lambda _%$args137434%_
        (apply make-instance gx#import-export-expander::t _%$args137434%_)))
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
      (lambda (_%path137431%_ _%fun137432%_)
        (call-with-input-file
         (cons 'path: (cons _%path137431%_ gx#source-file-settings))
         _%fun137432%_)))
    (define gx#module-context:::init!
      (lambda (_%self137414%_
               _%id137415%_
               _%super137416%_
               _%ns137417%_
               _%path137418%_)
        (let ((_%self137421%_ _%self137414%_))
          (if (##fx< '11 (##structure-length _%self137421%_))
              (begin
                (##unchecked-structure-set!
                 _%self137421%_
                 _%id137415%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self137421%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self137421%_
                 _%super137416%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self137421%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self137421%_ '#f '5 '#f '#f)
                (##unchecked-structure-set!
                 _%self137421%_
                 _%ns137417%_
                 '6
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self137421%_
                 _%path137418%_
                 '7
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self137421%_ '() '8 '#f '#f)
                (##unchecked-structure-set! _%self137421%_ '() '9 '#f '#f)
                (##unchecked-structure-set! _%self137421%_ '#f '10 '#f '#f)
                (##unchecked-structure-set! _%self137421%_ '#f '11 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self137421%_
                     '11
                     (##structure-length _%self137421%_))))))
    (__bind-method!__%
     gx#module-context::t
     ':init!
     gx#module-context:::init!
     '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_%self137247%_ _%ctx137248%_ _%root137249%_)
        (let* ((_%self137252%_ _%self137247%_)
               (_%super137268%_
                (let ((_%$e137262%_ _%root137249%_))
                  (if _%$e137262%_
                      _%$e137262%_
                      (let ((_%$e137265%_ (gx#core-context-root__0)))
                        (if _%$e137265%_
                            _%$e137265%_
                            (let ((__obj137496
                                   (##structure gx#root-context::t '#f '#f)))
                              (let ((__constructor137497
                                     (direct-method-ref
                                      gx#root-context::t
                                      __obj137496
                                      ':init!)))
                                (if __constructor137497
                                    (__constructor137497 __obj137496)
                                    (error '"missing constructor method implementation"
                                           'class:
                                           gx#root-context::t
                                           'method:
                                           ':init!)))
                              __obj137496)))))))
          (if _%ctx137248%_
              (let ((_%id137271%_
                     (##structure-ref
                      _%ctx137248%_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_%path137272%_
                     (##structure-ref
                      _%ctx137248%_
                      '7
                      gx#module-context::t
                      '#f))
                    (_%in137273%_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _%ctx137248%_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_%e137274%_
                     (__make-atomic-promise
                      (lambda () (gx#eval-module _%ctx137248%_)))))
                (if (##fx< '8 (##structure-length _%self137252%_))
                    (begin
                      (##unchecked-structure-set!
                       _%self137252%_
                       _%id137271%_
                       '1
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self137252%_
                       (make-hash-table-eq 'size: (##length _%in137273%_))
                       '2
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self137252%_
                       _%super137268%_
                       '3
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self137252%_
                       '#f
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self137252%_
                       '#f
                       '5
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self137252%_
                       _%path137272%_
                       '6
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self137252%_
                       _%in137273%_
                       '7
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self137252%_
                       _%e137274%_
                       '8
                       '#f
                       '#f)
                      '#!void)
                    (error '"struct-instance-init!: too many arguments for struct"
                           _%self137252%_
                           '8
                           (##structure-length _%self137252%_)))
                (##for-each
                 (lambda (_%g137275137277%_)
                   (gx#core-bind-weak-import!__%
                    _%g137275137277%_
                    _%self137252%_))
                 _%in137273%_))
              (if (##fx< '8 (##structure-length _%self137252%_))
                  (begin
                    (##unchecked-structure-set! _%self137252%_ '#f '1 '#f '#f)
                    (##unchecked-structure-set!
                     _%self137252%_
                     (make-hash-table-eq)
                     '2
                     '#f
                     '#f)
                    (##unchecked-structure-set!
                     _%self137252%_
                     _%super137268%_
                     '3
                     '#f
                     '#f)
                    (##unchecked-structure-set! _%self137252%_ '#f '4 '#f '#f)
                    (##unchecked-structure-set! _%self137252%_ '#f '5 '#f '#f)
                    (##unchecked-structure-set! _%self137252%_ '#f '6 '#f '#f)
                    (##unchecked-structure-set! _%self137252%_ '() '7 '#f '#f)
                    (##unchecked-structure-set! _%self137252%_ '#f '8 '#f '#f)
                    '#!void)
                  (error '"struct-instance-init!: too many arguments for struct"
                         _%self137252%_
                         '8
                         (##structure-length _%self137252%_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_%self137283%_ _%ctx137284%_)
        (let ((_%root137286%_ '#f))
          (gx#prelude-context:::init!__%
           _%self137283%_
           _%ctx137284%_
           _%root137286%_))))
    (define gx#prelude-context:::init!
      (lambda _g137502_
        (let ((_g137503_ (##length _g137502_)))
          (cond ((##fx= _g137503_ 2)
                 (apply gx#prelude-context:::init!__0 _g137502_))
                ((##fx= _g137503_ 3)
                 (apply gx#prelude-context:::init!__% _g137502_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g137502_))))))
    (__bind-method!__%
     gx#prelude-context::t
     ':init!
     gx#prelude-context:::init!
     '#f)
    (define gx#import-export-expander-init!
      (lambda (_%self137121%_ _%e137122%_)
        (if (##fx< '3 (##structure-length _%self137121%_))
            (begin
              (##unchecked-structure-set!
               _%self137121%_
               _%e137122%_
               '1
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self137121%_
               (gx#current-expander-context)
               '2
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self137121%_
               (##fx- (gx#current-expander-phi) '1)
               '3
               '#f
               '#f)
              '#!void)
            (error '"struct-instance-init!: too many arguments for struct"
                   _%self137121%_
                   '3
                   (##structure-length _%self137121%_)))))
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
      (lambda (_%g136747136750%_ _%g136748136752%_)
        (gx#core-apply-user-expander__%
         _%g136747136750%_
         _%g136748136752%_
         'apply-import-expander)))
    (__bind-method!__%
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_%g136618136621%_ _%g136619136623%_)
        (gx#core-apply-user-expander__%
         _%g136618136621%_
         _%g136619136623%_
         'apply-export-expander)))
    (__bind-method!__%
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_%ctx136489%_)
        (let* ((_%path136491%_
                (##structure-ref _%ctx136489%_ '7 gx#module-context::t '#f))
               (_%path136493%_
                (if (pair? _%path136491%_)
                    (##last _%path136491%_)
                    _%path136491%_)))
          (if (string? _%path136493%_) _%path136493%_ '#f))))
    (define gx#import-module__%
      (lambda (_%path136465%_ _%reload?136466%_ _%eval?136467%_)
        (let ((_%ctx136469%_
               ((gx#current-expander-module-import)
                _%path136465%_
                _%reload?136466%_)))
          (if (and _%ctx136469%_ _%eval?136467%_)
              (gx#eval-module _%ctx136469%_)
              '#!void)
          _%ctx136469%_)))
    (define gx#import-module__0
      (lambda (_%path136474%_)
        (let* ((_%reload?136476%_ '#f) (_%eval?136478%_ '#f))
          (gx#import-module__%
           _%path136474%_
           _%reload?136476%_
           _%eval?136478%_))))
    (define gx#import-module__1
      (lambda (_%path136480%_ _%reload?136481%_)
        (let ((_%eval?136483%_ '#f))
          (gx#import-module__%
           _%path136480%_
           _%reload?136481%_
           _%eval?136483%_))))
    (define gx#import-module
      (lambda _g137504_
        (let ((_g137505_ (##length _g137504_)))
          (cond ((##fx= _g137505_ 1) (apply gx#import-module__0 _g137504_))
                ((##fx= _g137505_ 2) (apply gx#import-module__1 _g137504_))
                ((##fx= _g137505_ 3) (apply gx#import-module__% _g137504_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g137504_))))))
    (define gx#eval-module
      (lambda (_%mod136462%_)
        ((gx#current-expander-module-eval) _%mod136462%_)))
    (define gx#core-eval-module
      (lambda (_%obj136441%_)
        (letrec ((_%force-e136443%_
                  (lambda (_%getf136457%_ _%e136458%_)
                    (call-with-parameters__1
                     (lambda ()
                       (call-with-parameters__1
                        (lambda () (force (_%getf136457%_ _%e136458%_)))
                        gx#current-expander-phi
                        '0))
                     gx#current-expander-context
                     _%e136458%_))))
          (let _%recur136445%_ ((_%e136447%_ _%obj136441%_))
            (if (##structure-instance-of? _%e136447%_ 'gx#module-context::t)
                (let ()
                  (let ((_%$e136450%_
                         (gx#core-context-prelude__% _%e136447%_)))
                    (if _%$e136450%_ (_%recur136445%_ _%$e136450%_) '#!void))
                  (_%force-e136443%_ gx#module-context-e _%e136447%_))
                (if (##structure-instance-of?
                     _%e136447%_
                     'gx#prelude-context::t)
                    (_%force-e136443%_ gx#prelude-context-e _%e136447%_)
                    (if (gx#stx-string? _%e136447%_)
                        (_%recur136445%_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _%e136447%_)))
                        (if (gx#core-library-module-path? _%e136447%_)
                            (_%recur136445%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%e136447%_)))
                            (error '"cannot eval module" _%obj136441%_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_%ctx136421%_)
        (let _%lp136423%_ ((_%e136425%_ _%ctx136421%_))
          (if (or (##structure-instance-of? _%e136425%_ 'gx#module-context::t)
                  (##structure-instance-of? _%e136425%_ 'gx#local-context::t))
              (_%lp136423%_ (##unchecked-structure-ref _%e136425%_ '3 '#f '#f))
              (if (##structure-instance-of? _%e136425%_ 'gx#prelude-context::t)
                  _%e136425%_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_%ctx136437%_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _%ctx136437%_))))
    (define gx#core-context-prelude
      (lambda _g137506_
        (let ((_g137507_ (##length _g137506_)))
          (cond ((##fx= _g137507_ 0)
                 (apply gx#core-context-prelude__0 _g137506_))
                ((##fx= _g137507_ 1)
                 (apply gx#core-context-prelude__% _g137506_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g137506_))))))
    (define gx#core-module->prelude-context
      (lambda (_%ctx136412%_)
        (let ((_%$e136414%_ (__hash-get gx#__module-registry _%ctx136412%_)))
          (if _%$e136414%_
              _%$e136414%_
              (let ((_%pre136418%_
                     (let ((__obj137498
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
                        __obj137498
                        _%ctx136412%_)
                       __obj137498)))
                (__hash-put! gx#__module-registry _%ctx136412%_ _%pre136418%_)
                _%pre136418%_)))))
    (define gx#core-import-module__%
      (lambda (_%rpath136279%_ _%reload?136280%_)
        (letrec ((_%import-source136282%_
                  (lambda (_%path136371%_)
                    (if (member _%path136371%_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _%path136371%_)
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
                                      (let ((_g137508_
                                             (gx#core-read-module
                                              _%path136371%_)))
                                        (begin
                                          (let ((_g137509_
                                                 (if (##values? _g137508_)
                                                     (##values-length
                                                      _g137508_)
                                                     1)))
                                            (if (not (##fx= _g137509_ 4))
                                                (error "Context expects 4 values"
                                                       _g137509_)))
                                          (let ((_%pre136379%_
                                                 (##values-ref _g137508_ 0))
                                                (_%id136380%_
                                                 (##values-ref _g137508_ 1))
                                                (_%ns136381%_
                                                 (##values-ref _g137508_ 2))
                                                (_%body136382%_
                                                 (##values-ref _g137508_ 3)))
                                            (let* ((_%prelude136392%_
                                                    (if (##structure-instance-of?
                                                         _%pre136379%_
                                                         'gx#prelude-context::t)
                                                        _%pre136379%_
                                                        (if (##structure-instance-of?
                                                             _%pre136379%_
                                                             'gx#module-context::t)
                                                            (gx#core-module->prelude-context
                                                             _%pre136379%_)
                                                            (if (string? _%pre136379%_)
                                                                (gx#core-module->prelude-context
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#core-import-module__0 _%pre136379%_))
                        (if (not _%pre136379%_)
                            (let ((_%$e136388%_
                                   (gx#current-expander-module-prelude)))
                              (if _%$e136388%_
                                  _%$e136388%_
                                  (let ((__obj137499
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
                                     __obj137499
                                     '#f)
                                    __obj137499)))
                            (error '"cannot import module; unknown prelude"
                                   _%rpath136279%_
                                   _%pre136379%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%ctx136394%_
                                                    (let ((__obj137500
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
                                                       __obj137500
                                                       _%id136380%_
                                                       _%prelude136392%_
                                                       _%ns136381%_
                                                       _%path136371%_)
                                                      __obj137500))
                                                   (_%body136396%_
                                                    (gx#core-expand-module-begin
                                                     _%body136382%_
                                                     _%ctx136394%_))
                                                   (_%body136398%_
                                                    (gx#core-quote-syntax__%
                                                     (gx#core-cons
                                                      '%#begin
                                                      _%body136396%_)
                                                     _%path136371%_
                                                     _%ctx136394%_
                                                     '())))
                                              (##unchecked-structure-set!
                                               _%ctx136394%_
                                               (__make-atomic-promise
                                                (lambda ()
                                                  (gx#eval-syntax*
                                                   _%body136398%_)))
                                               '10
                                               '#f
                                               '#f)
                                              (##unchecked-structure-set!
                                               _%ctx136394%_
                                               _%body136398%_
                                               '11
                                               '#f
                                               '#f)
                                              (__hash-put!
                                               gx#__module-registry
                                               _%path136371%_
                                               _%ctx136394%_)
                                              (__hash-put!
                                               gx#__module-registry
                                               _%id136380%_
                                               _%ctx136394%_)
                                              _%ctx136394%_)))))
                                    gx#current-export-expander-phi
                                    '#f))
                                 gx#current-import-expander-phi
                                 '#f))
                              gx#current-expander-path
                              (cons _%path136371%_
                                    (gx#current-expander-path))))
                           gx#current-expander-phi
                           '0))
                        gx#current-expander-marks
                        '()))
                     gx#current-expander-context
                     (gx#core-context-root__0))))
                 (_%import-submodule136283%_
                  (lambda (_%rpath136299%_)
                    (let* ((_%rpath136300136307%_ _%rpath136299%_)
                           (_%E136302136311%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%rpath136300136307%_
                                     '([origin . refs]))
                              '#!void))
                           (_%K136303136359%_
                            (lambda (_%refs136314%_ _%origin136315%_)
                              (let ((_%ctx136317%_
                                     (if _%origin136315%_
                                         (gx#core-import-module__%
                                          _%origin136315%_
                                          _%reload?136280%_)
                                         (gx#current-expander-context))))
                                (let _%lp136319%_ ((_%rest136321%_
                                                    _%refs136314%_)
                                                   (_%ctx136322%_
                                                    _%ctx136317%_))
                                  (let* ((_%rest136323136331%_ _%rest136321%_)
                                         (_%else136325136339%_
                                          (lambda () _%ctx136322%_))
                                         (_%K136327136347%_
                                          (lambda (_%rest136342%_ _%id136343%_)
                                            (let ((_%bind136345%_
                                                   (gx#resolve-identifier__%
                                                    _%id136343%_
                                                    '0
                                                    _%ctx136322%_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _%bind136345%_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _%bind136345%_
                                                         '4
                                                         '#f
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_%lp136319%_
                                                   _%rest136342%_
                                                   (##unchecked-structure-ref
                                                    _%bind136345%_
                                                    '4
                                                    '#f
                                                    '#f))
                                                  (error '"cannot import submodule; not bound as a module"
                                                         _%rpath136299%_
                                                         _%id136343%_
                                                         _%bind136345%_))))))
                                    (if (pair? _%rest136323136331%_)
                                        (let ((_%hd136328136350%_
                                               (##car _%rest136323136331%_))
                                              (_%tl136329136352%_
                                               (##cdr _%rest136323136331%_)))
                                          (let* ((_%id136355%_
                                                  _%hd136328136350%_)
                                                 (_%rest136357%_
                                                  _%tl136329136352%_))
                                            (_%K136327136347%_
                                             _%rest136357%_
                                             _%id136355%_)))
                                        (_%else136325136339%_))))))))
                      (if (pair? _%rpath136300136307%_)
                          (let ((_%hd136304136362%_
                                 (##car _%rpath136300136307%_))
                                (_%tl136305136364%_
                                 (##cdr _%rpath136300136307%_)))
                            (let* ((_%origin136367%_ _%hd136304136362%_)
                                   (_%refs136369%_ _%tl136305136364%_))
                              (_%K136303136359%_
                               _%refs136369%_
                               _%origin136367%_)))
                          (_%E136302136311%_))))))
          (let ((_%$e136285%_
                 (if (not _%reload?136280%_)
                     (__hash-get gx#__module-registry _%rpath136279%_)
                     '#f)))
            (if _%$e136285%_
                _%$e136285%_
                (if (list? _%rpath136279%_)
                    (_%import-submodule136283%_ _%rpath136279%_)
                    (if (gx#core-library-module-path? _%rpath136279%_)
                        (let ((_%ctx136290%_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _%rpath136279%_)
                                _%reload?136280%_)))
                          (__hash-put!
                           gx#__module-registry
                           _%rpath136279%_
                           _%ctx136290%_)
                          _%ctx136290%_)
                        (let* ((_%npath136293%_
                                (path-normalize _%rpath136279%_))
                               (_%$e136295%_
                                (if (not _%reload?136280%_)
                                    (__hash-get
                                     gx#__module-registry
                                     _%npath136293%_)
                                    '#f)))
                          (if _%$e136295%_
                              _%$e136295%_
                              (_%import-source136282%_
                               _%npath136293%_))))))))))
    (define gx#core-import-module__0
      (lambda (_%rpath136405%_)
        (let ((_%reload?136407%_ '#f))
          (gx#core-import-module__% _%rpath136405%_ _%reload?136407%_))))
    (define gx#core-import-module
      (lambda _g137510_
        (let ((_g137511_ (##length _g137510_)))
          (cond ((##fx= _g137511_ 1)
                 (apply gx#core-import-module__0 _g137510_))
                ((##fx= _g137511_ 2)
                 (apply gx#core-import-module__% _g137510_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g137510_))))))
    (define gx#core-read-module
      (lambda (_%path136268%_)
        (__with-catch
         (lambda (_%exn136270%_)
           (if (and (datum-parsing-exception? _%exn136270%_)
                    (eq? (datum-parsing-exception-filepos _%exn136270%_) '0))
               (gx#core-read-module/lang _%path136268%_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _%path136268%_
                (call-with-parameters__1
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_%g136272136274%_)
                      (display-exception__% _%exn136270%_ _%g136272136274%_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _%path136268%_)))))
    (define gx#core-read-module/sexp
      (lambda (_%path136120%_)
        (let _%lp136122%_ ((_%body136124%_
                            (read-syntax-from-file _%path136120%_))
                           (_%pre136125%_ '#f)
                           (_%ns136126%_ '#f)
                           (_%pkg136127%_ '#f))
          (let* ((_%e136128136152%_ _%body136124%_)
                 (_%E136144136178%_
                  (lambda ()
                    (let ((_g137512_
                           (if _%pkg136127%_
                               (values _%pre136125%_
                                       _%ns136126%_
                                       _%pkg136127%_)
                               (gx#core-read-module-package
                                _%path136120%_
                                _%pre136125%_
                                _%ns136126%_))))
                      (begin
                        (let ((_g137513_
                               (if (##values? _g137512_)
                                   (##values-length _g137512_)
                                   1)))
                          (if (not (##fx= _g137513_ 3))
                              (error "Context expects 3 values" _g137513_)))
                        (let ((_%pre136156%_ (##values-ref _g137512_ 0))
                              (_%ns136157%_ (##values-ref _g137512_ 1))
                              (_%pkg136158%_ (##values-ref _g137512_ 2)))
                          (let* ((_%prelude136164%_
                                  (if (gx#core-bound-module-prelude?
                                       _%pre136156%_)
                                      (gx#syntax-local-e__0 _%pre136156%_)
                                      (if (gx#core-library-module-path?
                                           _%pre136156%_)
                                          (gx#core-resolve-library-module-path
                                           _%pre136156%_)
                                          (if (gx#stx-string? _%pre136156%_)
                                              (gx#core-resolve-module-path__%
                                               _%pre136156%_
                                               _%path136120%_)
                                              (gx#stx-e _%pre136156%_)))))
                                 (_%path-id136166%_
                                  (gx#core-module-path->namespace
                                   _%path136120%_))
                                 (_%pkg-id136168%_
                                  (if _%pkg136158%_
                                      (##string-append
                                       _%pkg136158%_
                                       '"/"
                                       _%path-id136166%_)
                                      _%path-id136166%_))
                                 (_%module-id136170%_
                                  (##string->symbol _%pkg-id136168%_))
                                 (_%module-ns136175%_
                                  (if (eq? _%ns136157%_ '#!void)
                                      '#f
                                      (let ((_%$e136172%_ _%ns136157%_))
                                        (if _%$e136172%_
                                            _%$e136172%_
                                            _%pkg-id136168%_)))))
                            (values _%prelude136164%_
                                    _%module-id136170%_
                                    _%module-ns136175%_
                                    _%body136124%_)))))))
                 (_%E136137136210%_
                  (lambda ()
                    (if (gx#stx-pair? _%e136128136152%_)
                        (let ((_%e136145136182%_
                               (gx#syntax-e _%e136128136152%_)))
                          (let ((_%hd136146136185%_ (##car _%e136145136182%_))
                                (_%tl136147136187%_ (##cdr _%e136145136182%_)))
                            (if (eq? (gx#stx-e _%hd136146136185%_) 'package:)
                                (if (gx#stx-pair? _%tl136147136187%_)
                                    (let ((_%e136148136190%_
                                           (gx#syntax-e _%tl136147136187%_)))
                                      (let ((_%hd136149136193%_
                                             (##car _%e136148136190%_))
                                            (_%tl136150136195%_
                                             (##cdr _%e136148136190%_)))
                                        (let* ((_%pkg136198%_
                                                _%hd136149136193%_)
                                               (_%rest136200%_
                                                _%tl136150136195%_)
                                               (_%pkg136208%_
                                                (if (gx#identifier?
                                                     _%pkg136198%_)
                                                    (symbol->string
                                                     (gx#stx-e _%pkg136198%_))
                                                    (if (or (gx#stx-string?
                                                             _%pkg136198%_)
                                                            (gx#stx-false?
                                                             _%pkg136198%_))
                                                        (gx#stx-e
                                                         _%pkg136198%_)
                                                        (gx#raise-syntax-error
                                                         'import
                                                         '"Bad syntax; Illegal package name"
                                                         _%pkg136198%_)))))
                                          (_%lp136122%_
                                           _%rest136200%_
                                           _%pre136125%_
                                           _%ns136126%_
                                           _%pkg136208%_))))
                                    (_%E136144136178%_))
                                (_%E136144136178%_))))
                        (_%E136144136178%_))))
                 (_%E136130136240%_
                  (lambda ()
                    (if (gx#stx-pair? _%e136128136152%_)
                        (let ((_%e136138136214%_
                               (gx#syntax-e _%e136128136152%_)))
                          (let ((_%hd136139136217%_ (##car _%e136138136214%_))
                                (_%tl136140136219%_ (##cdr _%e136138136214%_)))
                            (if (eq? (gx#stx-e _%hd136139136217%_) 'namespace:)
                                (if (gx#stx-pair? _%tl136140136219%_)
                                    (let ((_%e136141136222%_
                                           (gx#syntax-e _%tl136140136219%_)))
                                      (let ((_%hd136142136225%_
                                             (##car _%e136141136222%_))
                                            (_%tl136143136227%_
                                             (##cdr _%e136141136222%_)))
                                        (let* ((_%ns136230%_
                                                _%hd136142136225%_)
                                               (_%rest136232%_
                                                _%tl136143136227%_)
                                               (_%ns136238%_
                                                (if (gx#identifier?
                                                     _%ns136230%_)
                                                    (symbol->string
                                                     (gx#stx-e _%ns136230%_))
                                                    (if (gx#stx-string?
                                                         _%ns136230%_)
                                                        (gx#stx-e _%ns136230%_)
                                                        (if (gx#stx-false?
                                                             _%ns136230%_)
                                                            '#!void
                                                            (gx#raise-syntax-error
                                                             'import
                                                             '"Bad syntax; illegal namespace"
                                                             _%ns136230%_))))))
                                          (_%lp136122%_
                                           _%rest136232%_
                                           _%pre136125%_
                                           _%ns136238%_
                                           _%pkg136127%_))))
                                    (_%E136137136210%_))
                                (_%E136137136210%_))))
                        (_%E136137136210%_))))
                 (_%E136129136264%_
                  (lambda ()
                    (if (gx#stx-pair? _%e136128136152%_)
                        (let ((_%e136131136244%_
                               (gx#syntax-e _%e136128136152%_)))
                          (let ((_%hd136132136247%_ (##car _%e136131136244%_))
                                (_%tl136133136249%_ (##cdr _%e136131136244%_)))
                            (if (eq? (gx#stx-e _%hd136132136247%_) 'prelude:)
                                (if (gx#stx-pair? _%tl136133136249%_)
                                    (let ((_%e136134136252%_
                                           (gx#syntax-e _%tl136133136249%_)))
                                      (let ((_%hd136135136255%_
                                             (##car _%e136134136252%_))
                                            (_%tl136136136257%_
                                             (##cdr _%e136134136252%_)))
                                        (let* ((_%prelude136260%_
                                                _%hd136135136255%_)
                                               (_%rest136262%_
                                                _%tl136136136257%_))
                                          (_%lp136122%_
                                           _%rest136262%_
                                           _%prelude136260%_
                                           _%ns136126%_
                                           _%pkg136127%_))))
                                    (_%E136130136240%_))
                                (_%E136130136240%_))))
                        (_%E136130136240%_)))))
            (_%E136129136264%_)))))
    (define gx#core-read-module/lang
      (lambda (_%path135941%_)
        (letrec ((_%default-read-module-body135943%_
                  (lambda (_%inp136112%_)
                    (let _%lp136114%_ ((_%body136116%_ '()))
                      (let ((_%next136118%_ (read-syntax__% _%inp136112%_)))
                        (if (eof-object? _%next136118%_)
                            (reverse _%body136116%_)
                            (_%lp136114%_
                             (cons _%next136118%_ _%body136116%_)))))))
                 (_%read-body135944%_
                  (lambda (_%inp136029%_
                           _%pre136030%_
                           _%ns136031%_
                           _%pkg136032%_
                           _%args136033%_)
                    (let ((_g137514_
                           (if _%pkg136032%_
                               (values _%pre136030%_
                                       _%ns136031%_
                                       _%pkg136032%_)
                               (gx#core-read-module-package
                                _%path135941%_
                                _%pre136030%_
                                _%ns136031%_))))
                      (begin
                        (let ((_g137515_
                               (if (##values? _g137514_)
                                   (##values-length _g137514_)
                                   1)))
                          (if (not (##fx= _g137515_ 3))
                              (error "Context expects 3 values" _g137515_)))
                        (let ((_%pre136035%_ (##values-ref _g137514_ 0))
                              (_%ns136036%_ (##values-ref _g137514_ 1))
                              (_%pkg136037%_ (##values-ref _g137514_ 2)))
                          (let* ((_%prelude136039%_
                                  (gx#import-module__0 _%pre136035%_))
                                 (_%read-module-body136094%_
                                  (let ((_%$e136085%_
                                         (__find (lambda (_%e136040136042%_)
                                                   (let* ((_%g136044136054%_
                                                           _%e136040136042%_)
                                                          (_%else136046136062%_
                                                           (lambda () '#f))
                                                          (_%K136048136066%_
                                                           (lambda () '#t)))
                                                     (if (##structure-direct-instance-of?
                                                          _%g136044136054%_
                                                          'gx#module-export::t)
                                                         (let* ((_%e136049136069%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##unchecked-structure-ref
                          _%g136044136054%_
                          '1
                          '#f
                          '#f))
                        (_%e136050136072%_
                         (##unchecked-structure-ref
                          _%g136044136054%_
                          '2
                          '#f
                          '#f))
                        (_%e136051136075%_
                         (##unchecked-structure-ref
                          _%g136044136054%_
                          '3
                          '#f
                          '#f)))
                   (if (##eq? _%e136051136075%_ '1)
                       (let ((_%e136052136078%_
                              (##unchecked-structure-ref
                               _%g136044136054%_
                               '4
                               '#f
                               '#f)))
                         (if ((lambda (_%g136080136082%_)
                                (eq? _%g136080136082%_ 'read-module-body))
                              _%e136052136078%_)
                             (_%K136048136066%_)
                             (_%else136046136062%_)))
                       (_%else136046136062%_)))
                 (_%else136046136062%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (##unchecked-structure-ref
                                                  _%prelude136039%_
                                                  '9
                                                  '#f
                                                  '#f))))
                                    (if _%$e136085%_
                                        ((lambda (_%xport136088%_)
                                           (let ((_%proc136091%_
                                                  (__with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _%xport136088%_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _%proc136091%_)
                                                 _%proc136091%_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _%path135941%_
                                                  _%pre136035%_
                                                  _%proc136091%_))))
                                         _%$e136085%_)
                                        _%default-read-module-body135943%_)))
                                 (_%path-id136096%_
                                  (gx#core-module-path->namespace
                                   _%path135941%_))
                                 (_%pkg-id136098%_
                                  (if _%pkg136037%_
                                      (##string-append
                                       _%pkg136037%_
                                       '"/"
                                       _%path-id136096%_)
                                      _%path-id136096%_))
                                 (_%module-id136100%_
                                  (##string->symbol _%pkg-id136098%_))
                                 (_%module-ns136105%_
                                  (let ((_%$e136102%_ _%ns136036%_))
                                    (if _%$e136102%_
                                        _%$e136102%_
                                        _%pkg-id136098%_)))
                                 (_%body136109%_
                                  (call-with-parameters__1
                                   (lambda ()
                                     (call-with-parameters__1
                                      (lambda ()
                                        (_%read-module-body136094%_
                                         _%inp136029%_))
                                      gx#current-module-reader-args
                                      _%args136033%_))
                                   gx#current-module-reader-path
                                   _%path135941%_)))
                            (values _%prelude136039%_
                                    _%module-id136100%_
                                    _%module-ns136105%_
                                    _%body136109%_)))))))
                 (_%string-e135945%_
                  (lambda (_%obj136023%_ _%what136024%_)
                    (if (string? _%obj136023%_)
                        _%obj136023%_
                        (if (symbol? _%obj136023%_)
                            (##symbol->string _%obj136023%_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _%what136024%_)
                             _%path135941%_
                             _%obj136023%_)))))
                 (_%read-lang-args135946%_
                  (lambda (_%inp135978%_ _%args135979%_)
                    (let* ((_%args135980135988%_ _%args135979%_)
                           (_%else135982135996%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _%path135941%_)))
                           (_%K135984136011%_
                            (lambda (_%args135999%_ _%prelude136000%_)
                              (let* ((_%pkg136002%_
                                      (pgetq__0 'package: _%args135999%_))
                                     (_%pkg136004%_
                                      (if _%pkg136002%_
                                          (_%string-e135945%_
                                           _%pkg136002%_
                                           '"package")
                                          '#f))
                                     (_%ns136006%_
                                      (pgetq__0 'namespace: _%args135999%_))
                                     (_%ns136008%_
                                      (if _%ns136006%_
                                          (_%string-e135945%_
                                           _%ns136006%_
                                           '"namespace")
                                          '#f)))
                                (_%read-body135944%_
                                 _%inp135978%_
                                 _%prelude136000%_
                                 _%ns136008%_
                                 _%pkg136004%_
                                 _%args135999%_)))))
                      (if (pair? _%args135980135988%_)
                          (let ((_%hd135985136014%_
                                 (##car _%args135980135988%_))
                                (_%tl135986136016%_
                                 (##cdr _%args135980135988%_)))
                            (let* ((_%prelude136019%_ _%hd135985136014%_)
                                   (_%args136021%_ _%tl135986136016%_))
                              (_%K135984136011%_
                               _%args136021%_
                               _%prelude136019%_)))
                          (_%else135982135996%_)))))
                 (_%read-lang135947%_
                  (lambda (_%inp135952%_)
                    (let* ((_%head135954%_ (read-line _%inp135952%_))
                           (_%$e135956%_
                            (string-index__0 _%head135954%_ '#\space)))
                      (if _%$e135956%_
                          ((lambda (_%ix135959%_)
                             (let ((_%lang135961%_
                                    (substring
                                     _%head135954%_
                                     '0
                                     _%ix135959%_)))
                               (if (equal? _%lang135961%_ '"#lang")
                                   (let* ((_%rest135963%_
                                           (substring
                                            _%head135954%_
                                            (##fx+ _%ix135959%_ '1)
                                            (string-length _%head135954%_)))
                                          (_%args135974%_
                                           (__with-catch
                                            (lambda (_%g135964135966%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _%path135941%_
                                               _%g135964135966%_))
                                            (lambda ()
                                              (call-with-input-string
                                               _%rest135963%_
                                               (lambda (_%g135969135971%_)
                                                 (read-all
                                                  _%g135969135971%_
                                                  read)))))))
                                     (_%read-lang-args135946%_
                                      _%inp135952%_
                                      _%args135974%_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _%path135941%_))))
                           _%$e135956%_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _%path135941%_)))))
                 (_%read-e135948%_
                  (lambda (_%inp135950%_)
                    (if (eq? (peek-char _%inp135950%_) '#\#)
                        (_%read-lang135947%_ _%inp135950%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _%path135941%_)))))
          (gx#call-with-input-source-file _%path135941%_ _%read-e135948%_))))
    (define gx#core-read-module-package
      (lambda (_%path135889%_ _%pre135890%_ _%ns135891%_)
        (letrec ((_%string-e135893%_
                  (lambda (_%e135936%_)
                    (if (symbol? _%e135936%_)
                        (##symbol->string _%e135936%_)
                        (if (string? _%e135936%_)
                            _%e135936%_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%e135936%_))))))
          (let _%lp135895%_ ((_%dir135897%_ (path-directory _%path135889%_))
                             (_%pkg-path135898%_ '()))
            (let ((_%gerbil.pkg135900%_
                   (path-expand '"gerbil.pkg" _%dir135897%_)))
              (if (##file-exists? _%gerbil.pkg135900%_)
                  (let ((_%plist135902%_
                         (gx#core-library-package-plist__% _%dir135897%_ '#t)))
                    (if (null? _%plist135902%_)
                        (let ((_%pkg135905%_
                               (if (null? _%pkg-path135898%_)
                                   '#f
                                   (string-join _%pkg-path135898%_ '"/"))))
                          (values _%pre135890%_ _%ns135891%_ _%pkg135905%_))
                        (if (list? _%plist135902%_)
                            (let* ((_%root135908%_
                                    (pgetq__0 'package: _%plist135902%_))
                                   (_%pkg135912%_
                                    (let ((_%pkg-path135910%_
                                           (if _%root135908%_
                                               (cons (_%string-e135893%_
                                                      _%root135908%_)
                                                     _%pkg-path135898%_)
                                               _%pkg-path135898%_)))
                                      (if (null? _%pkg-path135910%_)
                                          '#f
                                          (string-join
                                           _%pkg-path135910%_
                                           '"/"))))
                                   (_%ns135919%_
                                    (let ((_%ns135917%_
                                           (let ((_%$e135914%_ _%ns135891%_))
                                             (if _%$e135914%_
                                                 _%$e135914%_
                                                 (pgetq__0
                                                  'namespace:
                                                  _%plist135902%_)))))
                                      (if _%ns135917%_
                                          (_%string-e135893%_ _%ns135917%_)
                                          '#f)))
                                   (_%pre135924%_
                                    (let ((_%$e135921%_ _%pre135890%_))
                                      (if _%$e135921%_
                                          _%$e135921%_
                                          (pgetq__0
                                           'prelude:
                                           _%plist135902%_)))))
                              (values _%pre135924%_
                                      _%ns135919%_
                                      _%pkg135912%_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%plist135902%_))))
                  (let ((_%dir*135928%_
                         (path-strip-trailing-directory-separator
                          _%dir135897%_)))
                    (if (or (__string-empty? _%dir*135928%_)
                            (equal? _%dir135897%_ _%dir*135928%_))
                        (values _%pre135890%_ _%ns135891%_ '#f)
                        (let ((_%xpath135933%_
                               (path-strip-directory _%dir*135928%_))
                              (_%xdir135934%_ (path-directory _%dir*135928%_)))
                          (_%lp135895%_
                           _%xdir135934%_
                           (cons _%xpath135933%_ _%pkg-path135898%_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_%path135887%_)
        (path-strip-extension (path-strip-directory _%path135887%_))))
    (define gx#core-module-path->id
      (lambda (_%path135885%_)
        (##string->symbol (gx#core-module-path->namespace _%path135885%_))))
    (define gx#core-resolve-module-path__%
      (lambda (_%stx-path135864%_ _%rel135865%_)
        (let* ((_%path135867%_ (gx#stx-e _%stx-path135864%_))
               (_%path135869%_
                (if (__string-empty? (path-extension _%path135867%_))
                    (##string-append _%path135867%_ '".ss")
                    _%path135867%_)))
          (gx#core-resolve-path__%
           _%path135869%_
           (let ((_%$e135872%_ (gx#stx-source _%stx-path135864%_)))
             (if _%$e135872%_ _%$e135872%_ _%rel135865%_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_%stx-path135878%_)
        (let ((_%rel135880%_ '#f))
          (gx#core-resolve-module-path__% _%stx-path135878%_ _%rel135880%_))))
    (define gx#core-resolve-module-path
      (lambda _g137516_
        (let ((_g137517_ (##length _g137516_)))
          (cond ((##fx= _g137517_ 1)
                 (apply gx#core-resolve-module-path__0 _g137516_))
                ((##fx= _g137517_ 2)
                 (apply gx#core-resolve-module-path__% _g137516_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g137516_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_%libpath135749%_)
        (let* ((_%spath135751%_ (symbol->string (gx#stx-e _%libpath135749%_)))
               (_%spath135753%_
                (substring
                 _%spath135751%_
                 '1
                 (##string-length _%spath135751%_)))
               (_%ext135755%_ (path-extension _%spath135753%_))
               (_%ssi135757%_
                (if (__string-empty? _%ext135755%_)
                    (##string-append _%spath135753%_ '".ssi")
                    (##string-append
                     (path-strip-extension _%spath135753%_)
                     '".ssi")))
               (_%srcs135761%_
                (if (__string-empty? _%ext135755%_)
                    (##map (lambda (_%ext135759%_)
                             (string-append _%spath135753%_ _%ext135759%_))
                           '(".ss" ".sld" ".scm"))
                    (cons _%spath135753%_ '()))))
          (let _%lp135764%_ ((_%rest135766%_ (load-path)))
            (let* ((_%rest135767135776%_ _%rest135766%_)
                   (_%E135770135780%_
                    (lambda ()
                      (error '"No clause matching"
                             _%rest135767135776%_
                             '([dir . rest])
                             '([]))
                      '#!void)))
              (let ((_%K135772135851%_
                     (lambda (_%rest135791%_ _%dir135792%_)
                       (letrec ((_%resolve135794%_
                                 (lambda (_%ssi135807%_ _%srcs135808%_)
                                   (let ((_%compiled-path135810%_
                                          (path-expand
                                           _%ssi135807%_
                                           _%dir135792%_)))
                                     (if (##file-exists?
                                          _%compiled-path135810%_)
                                         (path-normalize
                                          _%compiled-path135810%_)
                                         (let _%lpr135812%_ ((_%rest-src135814%_
                                                              _%srcs135808%_))
                                           (let* ((_%rest-src135815135823%_
                                                   _%rest-src135814%_)
                                                  (_%else135817135831%_
                                                   (lambda ()
                                                     (_%lp135764%_
                                                      _%rest135791%_)))
                                                  (_%K135819135839%_
                                                   (lambda (_%rest-src135834%_
                                                            _%src135835%_)
                                                     (let ((_%src-path135837%_
                                                            (path-expand
                                                             _%src135835%_
                                                             _%dir135792%_)))
                                                       (if (##file-exists?
                                                            _%src-path135837%_)
                                                           (path-normalize
                                                            _%src-path135837%_)
                                                           (_%lpr135812%_
                                                            _%rest-src135834%_))))))
                                             (if (pair? _%rest-src135815135823%_)
                                                 (let ((_%hd135820135842%_
                                                        (##car _%rest-src135815135823%_))
                                                       (_%tl135821135844%_
                                                        (##cdr _%rest-src135815135823%_)))
                                                   (let* ((_%src135847%_
                                                           _%hd135820135842%_)
                                                          (_%rest-src135849%_
                                                           _%tl135821135844%_))
                                                     (_%K135819135839%_
                                                      _%rest-src135849%_
                                                      _%src135847%_)))
                                                 (_%else135817135831%_)))))))))
                         (let ((_%$e135796%_
                                (gx#core-library-package-path-prefix
                                 _%dir135792%_)))
                           (if _%$e135796%_
                               ((lambda (_%prefix135799%_)
                                  (if (string-prefix?
                                       _%prefix135799%_
                                       _%spath135753%_)
                                      (let ((_%ssi135803%_
                                             (substring
                                              _%ssi135757%_
                                              (string-length _%prefix135799%_)
                                              (##string-length _%ssi135757%_)))
                                            (_%srcs135804%_
                                             (##map (lambda (_%src135801%_)
                                                      (substring
                                                       _%src135801%_
                                                       (string-length
                                                        _%prefix135799%_)
                                                       (string-length
                                                        _%src135801%_)))
                                                    _%srcs135761%_)))
                                        (_%resolve135794%_
                                         _%ssi135803%_
                                         _%srcs135804%_))
                                      (_%lp135764%_ _%rest135791%_)))
                                _%$e135796%_)
                               (_%resolve135794%_
                                _%ssi135757%_
                                _%srcs135761%_))))))
                    (_%K135771135785%_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"cannot find library module"
                        _%libpath135749%_))))
                (let ((_%try-match135769135788%_
                       (lambda ()
                         (if (null? _%rest135767135776%_)
                             (_%K135771135785%_)
                             (_%E135770135780%_)))))
                  (if (pair? _%rest135767135776%_)
                      (let ((_%tl135774135856%_ (##cdr _%rest135767135776%_))
                            (_%hd135773135854%_ (##car _%rest135767135776%_)))
                        (let ((_%dir135859%_ _%hd135773135854%_)
                              (_%rest135861%_ _%tl135774135856%_))
                          (_%K135772135851%_ _%rest135861%_ _%dir135859%_)))
                      (_%try-match135769135788%_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_%modpath135717%_)
        (letrec ((_%resolve135719%_
                  (lambda (_%path135740%_ _%base135741%_)
                    (let ((_%$e135743%_
                           (string-rindex__0 _%base135741%_ '#\/)))
                      (if _%$e135743%_
                          ((lambda (_%idx135746%_)
                             (gx#core-resolve-library-module-path
                              (##string->symbol
                               (string-append
                                '":"
                                (substring _%base135741%_ '0 _%idx135746%_)
                                '"/"
                                _%path135740%_))))
                           _%$e135743%_)
                          (gx#core-resolve-library-module-path
                           (##string->symbol
                            (string-append '":" _%path135740%_))))))))
          (let ((_%spath135721%_ (symbol->string (gx#stx-e _%modpath135717%_)))
                (_%mod135722%_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _%mod135722%_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"cannot resolve relative module path; not in module context"
                 _%modpath135717%_))
            (let ((_%mpath135724%_
                   (symbol->string
                    (##structure-ref
                     _%mod135722%_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _%lp135726%_ ((_%spath135728%_ _%spath135721%_)
                                 (_%mpath135729%_ _%mpath135724%_))
                (if (string-prefix? '"../" _%spath135728%_)
                    (let ((_%$e135732%_
                           (string-rindex__0 _%mpath135729%_ '#\/)))
                      (if _%$e135732%_
                          ((lambda (_%idx135735%_)
                             (_%lp135726%_
                              (substring
                               _%spath135728%_
                               '3
                               (string-length _%spath135728%_))
                              (substring _%mpath135729%_ '0 _%idx135735%_)))
                           _%$e135732%_)
                          (gx#raise-syntax-error
                           '#f
                           '"cannot resolve relative module path; illegal traversal"
                           _%modpath135717%_)))
                    (if (string-prefix? '"./" _%spath135728%_)
                        (_%lp135726%_
                         (substring
                          _%spath135728%_
                          '2
                          (string-length _%spath135728%_))
                         _%mpath135729%_)
                        (_%resolve135719%_
                         _%spath135728%_
                         _%mpath135729%_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_%dir135709%_)
        (let ((_%$e135711%_
               (pgetq__0
                'package:
                (gx#core-library-package-plist__0 _%dir135709%_))))
          (if _%$e135711%_
              ((lambda (_%pkg135714%_)
                 (##string-append (symbol->string _%pkg135714%_) '"/"))
               _%$e135711%_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_%dir135679%_ _%exists?135680%_)
        (let ((_%$e135682%_ (__hash-get gx#__module-pkg-cache _%dir135679%_)))
          (if _%$e135682%_
              _%$e135682%_
              (let* ((_%gerbil.pkg135686%_
                      (path-expand '"gerbil.pkg" _%dir135679%_))
                     (_%plist135696%_
                      (if (or _%exists?135680%_
                              (##file-exists? _%gerbil.pkg135686%_))
                          (let ((_%e135691%_
                                 (gx#call-with-input-source-file
                                  _%gerbil.pkg135686%_
                                  read)))
                            (if (eof-object? _%e135691%_)
                                '()
                                (if (list? _%e135691%_)
                                    _%e135691%_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _%gerbil.pkg135686%_
                                     _%e135691%_))))
                          '())))
                (__hash-put!
                 gx#__module-pkg-cache
                 _%dir135679%_
                 _%plist135696%_)
                _%plist135696%_)))))
    (define gx#core-library-package-plist__0
      (lambda (_%dir135702%_)
        (let ((_%exists?135704%_ '#f))
          (gx#core-library-package-plist__% _%dir135702%_ _%exists?135704%_))))
    (define gx#core-library-package-plist
      (lambda _g137518_
        (let ((_g137519_ (##length _g137518_)))
          (cond ((##fx= _g137519_ 1)
                 (apply gx#core-library-package-plist__0 _g137518_))
                ((##fx= _g137519_ 2)
                 (apply gx#core-library-package-plist__% _g137518_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g137518_))))))
    (define gx#core-library-module-path?
      (lambda (_%stx135676%_)
        (gx#core-special-module-path? _%stx135676%_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_%stx135674%_)
        (gx#core-special-module-path? _%stx135674%_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_%stx135669%_ _%char135670%_)
        (if (gx#identifier? _%stx135669%_)
            (if (interned-symbol? (gx#stx-e _%stx135669%_))
                (let ((_%str135672%_
                       (symbol->string (gx#stx-e _%stx135669%_))))
                  (if (##fx> (##string-length _%str135672%_) '1)
                      (eq? (string-ref _%str135672%_ '0) _%char135670%_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_%stx135663%_)
        (gx#core-bound-identifier?__%
         _%stx135663%_
         (lambda (_%g135664135666%_)
           (gx#expander-binding?__% _%g135664135666%_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_%stx135657%_)
        (gx#core-bound-identifier?__%
         _%stx135657%_
         (lambda (_%g135658135660%_)
           (gx#expander-binding?__% _%g135658135660%_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_%stx135644%_)
        (letrec ((_%module-prelude?135646%_
                  (lambda (_%e135652%_)
                    (let ((_%$e135654%_
                           (##structure-instance-of?
                            _%e135652%_
                            'gx#module-context::t)))
                      (if _%$e135654%_
                          _%$e135654%_
                          (##structure-instance-of?
                           _%e135652%_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _%stx135644%_
           (lambda (_%g135647135649%_)
             (gx#expander-binding?__%
              _%g135647135649%_
              _%module-prelude?135646%_))))))
    (define gx#core-bind-import!__%
      (lambda (_%in135574%_ _%ctx135575%_ _%force-weak?135576%_)
        (let* ((_%in135577135586%_ _%in135574%_)
               (_%E135579135590%_
                (lambda ()
                  (error '"No clause matching"
                         _%in135577135586%_
                         '((module-import source key phi weak?)))
                  '#!void))
               (_%K135580135603%_
                (lambda (_%weak?135593%_
                         _%phi135594%_
                         _%key135595%_
                         _%source135596%_)
                  (gx#core-bind!__%
                   _%key135595%_
                   (let ((_%e135598%_
                          (gx#core-resolve-module-export _%source135596%_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref _%e135598%_ '1 '#f '#f)
                      _%key135595%_
                      _%phi135594%_
                      _%e135598%_
                      (##unchecked-structure-ref _%source135596%_ '1 '#f '#f)
                      (let ((_%$e135600%_ _%force-weak?135576%_))
                        (if _%$e135600%_ _%$e135600%_ _%weak?135593%_))))
                   gx#core-context-rebind?
                   _%phi135594%_
                   _%ctx135575%_))))
          (if (##structure-direct-instance-of?
               _%in135577135586%_
               'gx#module-import::t)
              (let* ((_%e135581135606%_
                      (##unchecked-structure-ref
                       _%in135577135586%_
                       '1
                       '#f
                       '#f))
                     (_%source135609%_ _%e135581135606%_)
                     (_%e135582135611%_
                      (##unchecked-structure-ref
                       _%in135577135586%_
                       '2
                       '#f
                       '#f))
                     (_%key135614%_ _%e135582135611%_)
                     (_%e135583135616%_
                      (##unchecked-structure-ref
                       _%in135577135586%_
                       '3
                       '#f
                       '#f))
                     (_%phi135619%_ _%e135583135616%_)
                     (_%e135584135621%_
                      (##unchecked-structure-ref
                       _%in135577135586%_
                       '4
                       '#f
                       '#f))
                     (_%weak?135624%_ _%e135584135621%_))
                (_%K135580135603%_
                 _%weak?135624%_
                 _%phi135619%_
                 _%key135614%_
                 _%source135609%_))
              (_%E135579135590%_)))))
    (define gx#core-bind-import!__0
      (lambda (_%in135629%_)
        (let* ((_%ctx135631%_ (gx#current-expander-context))
               (_%force-weak?135633%_ '#f))
          (gx#core-bind-import!__%
           _%in135629%_
           _%ctx135631%_
           _%force-weak?135633%_))))
    (define gx#core-bind-import!__1
      (lambda (_%in135635%_ _%ctx135636%_)
        (let ((_%force-weak?135638%_ '#f))
          (gx#core-bind-import!__%
           _%in135635%_
           _%ctx135636%_
           _%force-weak?135638%_))))
    (define gx#core-bind-import!
      (lambda _g137520_
        (let ((_g137521_ (##length _g137520_)))
          (cond ((##fx= _g137521_ 1) (apply gx#core-bind-import!__0 _g137520_))
                ((##fx= _g137521_ 2) (apply gx#core-bind-import!__1 _g137520_))
                ((##fx= _g137521_ 3) (apply gx#core-bind-import!__% _g137520_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g137520_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_%in135560%_ _%ctx135561%_)
        (gx#core-bind-import!__% _%in135560%_ _%ctx135561%_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_%in135566%_)
        (let ((_%ctx135568%_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _%in135566%_ _%ctx135568%_))))
    (define gx#core-bind-weak-import!
      (lambda _g137522_
        (let ((_g137523_ (##length _g137522_)))
          (cond ((##fx= _g137523_ 1)
                 (apply gx#core-bind-weak-import!__0 _g137522_))
                ((##fx= _g137523_ 2)
                 (apply gx#core-bind-weak-import!__% _g137522_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g137522_))))))
    (define gx#core-resolve-module-export
      (lambda (_%out135451%_)
        (letrec ((_%subst135453%_
                  (lambda (_%key135499%_)
                    (let* ((_%key135500135508%_ _%key135499%_)
                           (_%else135502135516%_ (lambda () _%key135499%_))
                           (_%K135504135547%_
                            (lambda (_%mark135519%_ _%id135520%_)
                              (let* ((_%mark135521135527%_ _%mark135519%_)
                                     (_%E135523135531%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark135521135527%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K135524135539%_
                                      (lambda (_%subst135534%_)
                                        (let ((_%$e135536%_
                                               (if _%subst135534%_
                                                   (hash-get
                                                    _%subst135534%_
                                                    _%id135520%_)
                                                   '#f)))
                                          (if _%$e135536%_
                                              _%$e135536%_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _%key135499%_))))))
                                (if (##structure-instance-of?
                                     _%mark135521135527%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e135525135542%_
                                            (##unchecked-structure-ref
                                             _%mark135521135527%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst135545%_ _%e135525135542%_))
                                      (_%K135524135539%_ _%subst135545%_))
                                    (_%E135523135531%_))))))
                      (if (pair? _%key135500135508%_)
                          (let ((_%hd135505135550%_
                                 (##car _%key135500135508%_))
                                (_%tl135506135552%_
                                 (##cdr _%key135500135508%_)))
                            (let* ((_%id135555%_ _%hd135505135550%_)
                                   (_%mark135557%_ _%tl135506135552%_))
                              (_%K135504135547%_ _%mark135557%_ _%id135555%_)))
                          (_%else135502135516%_))))))
          (let* ((_%out135454135464%_ _%out135451%_)
                 (_%E135456135468%_
                  (lambda ()
                    (error '"No clause matching"
                           _%out135454135464%_
                           '((module-export ctx key phi _ _)))
                    '#!void))
                 (_%K135457135475%_
                  (lambda (_%phi135471%_ _%key135472%_ _%ctx135473%_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _%ctx135473%_ _%phi135471%_)
                     (_%subst135453%_ _%key135472%_)))))
            (if (##structure-direct-instance-of?
                 _%out135454135464%_
                 'gx#module-export::t)
                (let* ((_%e135458135478%_
                        (##unchecked-structure-ref
                         _%out135454135464%_
                         '1
                         '#f
                         '#f))
                       (_%ctx135481%_ _%e135458135478%_)
                       (_%e135459135483%_
                        (##unchecked-structure-ref
                         _%out135454135464%_
                         '2
                         '#f
                         '#f))
                       (_%key135486%_ _%e135459135483%_)
                       (_%e135460135488%_
                        (##unchecked-structure-ref
                         _%out135454135464%_
                         '3
                         '#f
                         '#f))
                       (_%phi135491%_ _%e135460135488%_)
                       (_%e135461135493%_
                        (##unchecked-structure-ref
                         _%out135454135464%_
                         '4
                         '#f
                         '#f))
                       (_%e135462135496%_
                        (##unchecked-structure-ref
                         _%out135454135464%_
                         '5
                         '#f
                         '#f)))
                  (_%K135457135475%_
                   _%phi135491%_
                   _%key135486%_
                   _%ctx135481%_))
                (_%E135456135468%_))))))
    (define gx#core-module-export->import__%
      (lambda (_%out135376%_ _%rename135377%_ _%dphi135378%_)
        (let* ((_%out135379135389%_ _%out135376%_)
               (_%E135381135393%_
                (lambda ()
                  (error '"No clause matching"
                         _%out135379135389%_
                         '((module-export ctx key phi name weak?)))
                  '#!void))
               (_%K135382135405%_
                (lambda (_%weak?135396%_
                         _%name135397%_
                         _%phi135398%_
                         _%key135399%_
                         _%ctx135400%_)
                  (##structure
                   gx#module-import::t
                   _%out135376%_
                   (let ((_%$e135402%_ _%rename135377%_))
                     (if _%$e135402%_ _%$e135402%_ _%name135397%_))
                   (fx+ _%phi135398%_ _%dphi135378%_)
                   _%weak?135396%_))))
          (if (##structure-direct-instance-of?
               _%out135379135389%_
               'gx#module-export::t)
              (let* ((_%e135383135408%_
                      (##unchecked-structure-ref
                       _%out135379135389%_
                       '1
                       '#f
                       '#f))
                     (_%ctx135411%_ _%e135383135408%_)
                     (_%e135384135413%_
                      (##unchecked-structure-ref
                       _%out135379135389%_
                       '2
                       '#f
                       '#f))
                     (_%key135416%_ _%e135384135413%_)
                     (_%e135385135418%_
                      (##unchecked-structure-ref
                       _%out135379135389%_
                       '3
                       '#f
                       '#f))
                     (_%phi135421%_ _%e135385135418%_)
                     (_%e135386135423%_
                      (##unchecked-structure-ref
                       _%out135379135389%_
                       '4
                       '#f
                       '#f))
                     (_%name135426%_ _%e135386135423%_)
                     (_%e135387135428%_
                      (##unchecked-structure-ref
                       _%out135379135389%_
                       '5
                       '#f
                       '#f))
                     (_%weak?135431%_ _%e135387135428%_))
                (_%K135382135405%_
                 _%weak?135431%_
                 _%name135426%_
                 _%phi135421%_
                 _%key135416%_
                 _%ctx135411%_))
              (_%E135381135393%_)))))
    (define gx#core-module-export->import__0
      (lambda (_%out135436%_)
        (let* ((_%rename135438%_ '#f) (_%dphi135440%_ '0))
          (gx#core-module-export->import__%
           _%out135436%_
           _%rename135438%_
           _%dphi135440%_))))
    (define gx#core-module-export->import__1
      (lambda (_%out135442%_ _%rename135443%_)
        (let ((_%dphi135445%_ '0))
          (gx#core-module-export->import__%
           _%out135442%_
           _%rename135443%_
           _%dphi135445%_))))
    (define gx#core-module-export->import
      (lambda _g137524_
        (let ((_g137525_ (##length _g137524_)))
          (cond ((##fx= _g137525_ 1)
                 (apply gx#core-module-export->import__0 _g137524_))
                ((##fx= _g137525_ 2)
                 (apply gx#core-module-export->import__1 _g137524_))
                ((##fx= _g137525_ 3)
                 (apply gx#core-module-export->import__% _g137524_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g137524_))))))
    (define gx#core-expand-module%
      (lambda (_%stx135275%_)
        (letrec ((_%make-context135277%_
                  (lambda (_%id135354%_)
                    (let* ((_%super135356%_ (gx#current-expander-context))
                           (_%bind-id135358%_ (gx#stx-e _%id135354%_))
                           (_%mod-id135360%_
                            (if (##structure-instance-of?
                                 _%super135356%_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##unchecked-structure-ref
                                  _%super135356%_
                                  '1
                                  '#f
                                  '#f)
                                 '"~"
                                 _%bind-id135358%_)
                                _%bind-id135358%_))
                           (_%ns135362%_ (symbol->string _%mod-id135360%_))
                           (_%path135372%_
                            (if (##structure-instance-of?
                                 _%super135356%_
                                 'gx#module-context::t)
                                (let ((_%path135364%_
                                       (##unchecked-structure-ref
                                        _%super135356%_
                                        '7
                                        '#f
                                        '#f)))
                                  (if (or (pair? _%path135364%_)
                                          (null? _%path135364%_))
                                      (cons _%bind-id135358%_ _%path135364%_)
                                      (if (not _%path135364%_)
                                          _%bind-id135358%_
                                          (cons _%bind-id135358%_
                                                (cons _%path135364%_ '())))))
                                _%bind-id135358%_))
                           (__obj137501
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
                       __obj137501
                       _%mod-id135360%_
                       _%super135356%_
                       _%ns135362%_
                       _%path135372%_)
                      __obj137501)))
                 (_%valid-module-id?135278%_
                  (lambda (_%id135329%_)
                    (let* ((_%str135331%_ (symbol->string _%id135329%_))
                           (_%len135333%_ (##string-length _%str135331%_)))
                      (if (##fx>= _%len135333%_ '1)
                          (let _%loop135336%_ ((_%index135338%_
                                                (##fx- (##string-length
                                                        _%str135331%_)
                                                       '1)))
                            (if (##fx>= _%index135338%_ '0)
                                (let ((_%c135340%_
                                       (string-ref
                                        _%str135331%_
                                        _%index135338%_)))
                                  (if (or (and (##char>=? _%c135340%_ '#\a)
                                               (##char<=? _%c135340%_ '#\z))
                                          (and (##char>=? _%c135340%_ '#\A)
                                               (##char<=? _%c135340%_ '#\Z))
                                          (and (##char>=? _%c135340%_ '#\0)
                                               (##char<=? _%c135340%_ '#\9))
                                          (##char=? _%c135340%_ '#\_)
                                          (##char=? _%c135340%_ '#\-))
                                      (_%loop135336%_
                                       (##fx- _%index135338%_ '1))
                                      '#f))
                                '#t))
                          '#f)))))
          (let* ((_%e135279135289%_ _%stx135275%_)
                 (_%E135281135293%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e135279135289%_)))
                 (_%E135280135325%_
                  (lambda ()
                    (if (gx#stx-pair? _%e135279135289%_)
                        (let ((_%e135282135297%_
                               (gx#syntax-e _%e135279135289%_)))
                          (let ((_%hd135283135300%_ (##car _%e135282135297%_))
                                (_%tl135284135302%_ (##cdr _%e135282135297%_)))
                            (if (gx#stx-pair? _%tl135284135302%_)
                                (let ((_%e135285135305%_
                                       (gx#syntax-e _%tl135284135302%_)))
                                  (let ((_%hd135286135308%_
                                         (##car _%e135285135305%_))
                                        (_%tl135287135310%_
                                         (##cdr _%e135285135305%_)))
                                    (let* ((_%id135313%_ _%hd135286135308%_)
                                           (_%body135315%_ _%tl135287135310%_))
                                      (if (and (gx#identifier? _%id135313%_)
                                               (gx#stx-list? _%body135315%_))
                                          (if (_%valid-module-id?135278%_
                                               (gx#stx-e
                                                (gx#datum->syntax__0 '#f 'id)))
                                              (let* ((_%ctx135317%_
                                                      (_%make-context135277%_
                                                       _%id135313%_))
                                                     (_%body135319%_
                                                      (gx#core-expand-module-begin
                                                       _%body135315%_
                                                       _%ctx135317%_))
                                                     (_%body135321%_
                                                      (gx#core-quote-syntax__1
                                                       (gx#core-cons
                                                        '%#begin
                                                        _%body135319%_)
                                                       (gx#stx-source
                                                        _%stx135275%_))))
                                                (##unchecked-structure-set!
                                                 _%ctx135317%_
                                                 (__make-atomic-promise
                                                  (lambda ()
                                                    (gx#eval-syntax*
                                                     _%body135321%_)))
                                                 '10
                                                 '#f
                                                 '#f)
                                                (##unchecked-structure-set!
                                                 _%ctx135317%_
                                                 _%body135321%_
                                                 '11
                                                 '#f
                                                 '#f)
                                                (gx#core-bind-syntax!__0
                                                 _%id135313%_
                                                 _%ctx135317%_)
                                                (gx#core-quote-syntax__1
                                                 (gx#core-list
                                                  '%#module
                                                  (gx#core-quote-syntax__0
                                                   _%id135313%_)
                                                  _%body135321%_)
                                                 (gx#stx-source
                                                  _%stx135275%_)))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"invalid module id; allowed characters are A-Z,a-z,0-9,_,-"
                                               _%stx135275%_
                                               (gx#datum->syntax__0 '#f 'id)))
                                          (_%E135281135293%_)))))
                                (_%E135281135293%_))))
                        (_%E135281135293%_)))))
            (_%E135280135325%_)))))
    (define gx#core-expand-module-begin
      (lambda (_%body135240%_ _%ctx135241%_)
        (call-with-parameters__1
         (lambda ()
           (call-with-parameters__1
            (lambda ()
              (gx#core-bind-feature!__1 'gerbil-module '#t)
              (let* ((_%stx135245%_
                      (gx#core-expand-head
                       (cons '%%begin-module _%body135240%_)))
                     (_%e135246135253%_ _%stx135245%_)
                     (_%E135248135257%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module body expansion"
                         _%stx135245%_)))
                     (_%E135247135271%_
                      (lambda ()
                        (if (gx#stx-pair? _%e135246135253%_)
                            (let ((_%e135249135261%_
                                   (gx#syntax-e _%e135246135253%_)))
                              (let ((_%hd135250135264%_
                                     (##car _%e135249135261%_))
                                    (_%tl135251135266%_
                                     (##cdr _%e135249135261%_)))
                                (if (and (gx#identifier? _%hd135250135264%_)
                                         (gx#core-identifier=?
                                          _%hd135250135264%_
                                          '%#begin-module))
                                    (let ((_%body135269%_ _%tl135251135266%_))
                                      (if (gx#sealed-syntax? _%stx135245%_)
                                          _%body135269%_
                                          (gx#core-expand-module-body
                                           _%body135269%_)))
                                    (_%E135248135257%_))))
                            (_%E135248135257%_)))))
                (_%E135247135271%_)))
            gx#current-expander-phi
            '0))
         gx#current-expander-context
         _%ctx135241%_)))
    (define gx#core-expand-module-body
      (lambda (_%body135036%_)
        (letrec ((_%expand-special135038%_
                  (lambda (_%hd135167%_ _%K135168%_ _%rest135169%_ _%r135170%_)
                    (let* ((_%e135171135188%_ _%hd135167%_)
                           (_%E135183135192%_
                            (lambda ()
                              (_%K135168%_
                               _%rest135169%_
                               (cons (gx#core-expand-top _%hd135167%_)
                                     _%r135170%_))))
                           (_%E135173135204%_
                            (lambda ()
                              (if (gx#stx-pair? _%e135171135188%_)
                                  (let ((_%e135184135196%_
                                         (gx#syntax-e _%e135171135188%_)))
                                    (let ((_%hd135185135199%_
                                           (##car _%e135184135196%_))
                                          (_%tl135186135201%_
                                           (##cdr _%e135184135196%_)))
                                      (if (and (gx#identifier?
                                                _%hd135185135199%_)
                                               (gx#core-identifier=?
                                                _%hd135185135199%_
                                                '%#export))
                                          (_%K135168%_
                                           _%rest135169%_
                                           (cons _%hd135167%_ _%r135170%_))
                                          (_%E135183135192%_))))
                                  (_%E135183135192%_))))
                           (_%E135172135236%_
                            (lambda ()
                              (if (gx#stx-pair? _%e135171135188%_)
                                  (let ((_%e135174135208%_
                                         (gx#syntax-e _%e135171135188%_)))
                                    (let ((_%hd135175135211%_
                                           (##car _%e135174135208%_))
                                          (_%tl135176135213%_
                                           (##cdr _%e135174135208%_)))
                                      (if (and (gx#identifier?
                                                _%hd135175135211%_)
                                               (gx#core-identifier=?
                                                _%hd135175135211%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl135176135213%_)
                                              (let ((_%e135177135216%_
                                                     (gx#syntax-e
                                                      _%tl135176135213%_)))
                                                (let ((_%hd135178135219%_
                                                       (##car _%e135177135216%_))
                                                      (_%tl135179135221%_
                                                       (##cdr _%e135177135216%_)))
                                                  (let ((_%hd-bind135224%_
                                                         _%hd135178135219%_))
                                                    (if (gx#stx-pair?
                                                         _%tl135179135221%_)
                                                        (let ((_%e135180135226%_
                                                               (gx#syntax-e
                                                                _%tl135179135221%_)))
                                                          (let ((_%hd135181135229%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e135180135226%_))
                        (_%tl135182135231%_ (##cdr _%e135180135226%_)))
                    (let ((_%expr135234%_ _%hd135181135229%_))
                      (if (gx#stx-null? _%tl135182135231%_)
                          (if (gx#core-bind-values? _%hd-bind135224%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind135224%_)
                                (_%K135168%_
                                 _%rest135169%_
                                 (cons _%hd135167%_ _%r135170%_)))
                              (_%E135173135204%_))
                          (_%E135173135204%_)))))
                (_%E135173135204%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E135173135204%_))
                                          (_%E135173135204%_))))
                                  (_%E135173135204%_)))))
                      (_%E135172135236%_))))
                 (_%expand-body135039%_
                  (lambda (_%rbody135041%_)
                    (let _%lp135043%_ ((_%rest135045%_ _%rbody135041%_)
                                       (_%body135046%_ '()))
                      (let* ((_%rest135047135055%_ _%rest135045%_)
                             (_%else135049135063%_ (lambda () _%body135046%_))
                             (_%K135051135155%_
                              (lambda (_%rest135066%_ _%hd135067%_)
                                (let* ((_%e135068135089%_ _%hd135067%_)
                                       (_%E135084135093%_
                                        (lambda ()
                                          (_%lp135043%_
                                           _%rest135066%_
                                           (cons (gx#core-expand-expression
                                                  _%hd135067%_)
                                                 _%body135046%_))))
                                       (_%E135080135107%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e135068135089%_)
                                              (let ((_%e135085135097%_
                                                     (gx#syntax-e
                                                      _%e135068135089%_)))
                                                (let ((_%hd135086135100%_
                                                       (##car _%e135085135097%_))
                                                      (_%tl135087135102%_
                                                       (##cdr _%e135085135097%_)))
                                                  (let ((_%form135105%_
                                                         _%hd135086135100%_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _%form135105%_
                                                         gx#special-form-binding?)
                                                        (_%lp135043%_
                                                         _%rest135066%_
                                                         (cons _%hd135067%_
                                                               _%body135046%_))
                                                        (_%E135084135093%_)))))
                                              (_%E135084135093%_))))
                                       (_%E135070135119%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e135068135089%_)
                                              (let ((_%e135081135111%_
                                                     (gx#syntax-e
                                                      _%e135068135089%_)))
                                                (let ((_%hd135082135114%_
                                                       (##car _%e135081135111%_))
                                                      (_%tl135083135116%_
                                                       (##cdr _%e135081135111%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd135082135114%_)
                                                           (gx#core-identifier=?
                                                            _%hd135082135114%_
                                                            '%#export))
                                                      (_%lp135043%_
                                                       _%rest135066%_
                                                       (cons (gx#core-expand-export%__0
                                                              _%hd135067%_)
                                                             _%body135046%_))
                                                      (_%E135080135107%_))))
                                              (_%E135080135107%_))))
                                       (_%E135069135151%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e135068135089%_)
                                              (let ((_%e135071135123%_
                                                     (gx#syntax-e
                                                      _%e135068135089%_)))
                                                (let ((_%hd135072135126%_
                                                       (##car _%e135071135123%_))
                                                      (_%tl135073135128%_
                                                       (##cdr _%e135071135123%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd135072135126%_)
                                                           (gx#core-identifier=?
                                                            _%hd135072135126%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl135073135128%_)
                                                          (let ((_%e135074135131%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl135073135128%_)))
                    (let ((_%hd135075135134%_ (##car _%e135074135131%_))
                          (_%tl135076135136%_ (##cdr _%e135074135131%_)))
                      (let ((_%hd-bind135139%_ _%hd135075135134%_))
                        (if (gx#stx-pair? _%tl135076135136%_)
                            (let ((_%e135077135141%_
                                   (gx#syntax-e _%tl135076135136%_)))
                              (let ((_%hd135078135144%_
                                     (##car _%e135077135141%_))
                                    (_%tl135079135146%_
                                     (##cdr _%e135077135141%_)))
                                (let ((_%expr135149%_ _%hd135078135144%_))
                                  (if (gx#stx-null? _%tl135079135146%_)
                                      (_%lp135043%_
                                       _%rest135066%_
                                       (cons (gx#core-quote-syntax__1
                                              (gx#core-list
                                               '%#define-values
                                               (gx#core-quote-bind-values
                                                _%hd-bind135139%_)
                                               (gx#core-expand-expression
                                                _%expr135149%_))
                                              (gx#stx-source _%hd135067%_))
                                             _%body135046%_))
                                      (_%E135070135119%_)))))
                            (_%E135070135119%_)))))
                  (_%E135070135119%_))
              (_%E135070135119%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E135070135119%_)))))
                                  (_%E135069135151%_)))))
                        (if (pair? _%rest135047135055%_)
                            (let ((_%hd135052135158%_
                                   (##car _%rest135047135055%_))
                                  (_%tl135053135160%_
                                   (##cdr _%rest135047135055%_)))
                              (let* ((_%hd135163%_ _%hd135052135158%_)
                                     (_%rest135165%_ _%tl135053135160%_))
                                (_%K135051135155%_
                                 _%rest135165%_
                                 _%hd135163%_)))
                            (_%else135049135063%_)))))))
          (_%expand-body135039%_
           (gx#core-expand-block__%
            (cons '%#begin-module _%body135036%_)
            _%expand-special135038%_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_%stx134877%_
               _%expanded?134878%_
               _%method134879%_
               _%current-phi134880%_
               _%expand1134881%_)
        (letrec ((_%K134883%_
                  (lambda (_%rest135003%_ _%r135004%_)
                    (let* ((_%e135005135012%_ _%rest135003%_)
                           (_%E135007135016%_ (lambda () _%r135004%_))
                           (_%E135006135032%_
                            (lambda ()
                              (if (gx#stx-pair? _%e135005135012%_)
                                  (let ((_%e135008135020%_
                                         (gx#syntax-e _%e135005135012%_)))
                                    (let ((_%hd135009135023%_
                                           (##car _%e135008135020%_))
                                          (_%tl135010135025%_
                                           (##cdr _%e135008135020%_)))
                                      (let* ((_%hd135028%_ _%hd135009135023%_)
                                             (_%rest135030%_
                                              _%tl135010135025%_))
                                        (_%step134884%_
                                         _%hd135028%_
                                         _%rest135030%_
                                         _%r135004%_))))
                                  (_%E135007135016%_)))))
                      (_%E135006135032%_))))
                 (_%step134884%_
                  (lambda (_%hd134917%_ _%rest134918%_ _%r134919%_)
                    (let* ((_%e134920134938%_ _%hd134917%_)
                           (_%E134933134942%_
                            (lambda ()
                              (if (_%expanded?134878%_ (gx#stx-e _%hd134917%_))
                                  (_%K134883%_
                                   _%rest134918%_
                                   (cons (gx#stx-e _%hd134917%_) _%r134919%_))
                                  (_%expand1134881%_
                                   _%hd134917%_
                                   _%K134883%_
                                   _%rest134918%_
                                   _%r134919%_))))
                           (_%E134929134958%_
                            (lambda ()
                              (if (gx#stx-pair? _%e134920134938%_)
                                  (let ((_%e134934134946%_
                                         (gx#syntax-e _%e134920134938%_)))
                                    (let ((_%hd134935134949%_
                                           (##car _%e134934134946%_))
                                          (_%tl134936134951%_
                                           (##cdr _%e134934134946%_)))
                                      (let* ((_%macro134954%_
                                              _%hd134935134949%_)
                                             (_%body134956%_
                                              _%tl134936134951%_))
                                        (if (gx#core-bound-identifier?__%
                                             _%macro134954%_
                                             gx#syntax-binding?)
                                            (_%K134883%_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _%macro134954%_)
                                                    _%hd134917%_
                                                    _%method134879%_)
                                                   _%rest134918%_)
                                             _%r134919%_)
                                            (_%E134933134942%_)))))
                                  (_%E134933134942%_))))
                           (_%E134922134972%_
                            (lambda ()
                              (if (gx#stx-pair? _%e134920134938%_)
                                  (let ((_%e134930134962%_
                                         (gx#syntax-e _%e134920134938%_)))
                                    (let ((_%hd134931134965%_
                                           (##car _%e134930134962%_))
                                          (_%tl134932134967%_
                                           (##cdr _%e134930134962%_)))
                                      (if (eq? (gx#stx-e _%hd134931134965%_)
                                               'begin:)
                                          (let ((_%body134970%_
                                                 _%tl134932134967%_))
                                            (_%K134883%_
                                             (gx#stx-foldr
                                              cons
                                              _%rest134918%_
                                              _%body134970%_)
                                             _%r134919%_))
                                          (_%E134929134958%_))))
                                  (_%E134929134958%_))))
                           (_%E134921134999%_
                            (lambda ()
                              (if (gx#stx-pair? _%e134920134938%_)
                                  (let ((_%e134923134976%_
                                         (gx#syntax-e _%e134920134938%_)))
                                    (let ((_%hd134924134979%_
                                           (##car _%e134923134976%_))
                                          (_%tl134925134981%_
                                           (##cdr _%e134923134976%_)))
                                      (if (eq? (gx#stx-e _%hd134924134979%_)
                                               'phi:)
                                          (if (gx#stx-pair? _%tl134925134981%_)
                                              (let ((_%e134926134984%_
                                                     (gx#syntax-e
                                                      _%tl134925134981%_)))
                                                (let ((_%hd134927134987%_
                                                       (##car _%e134926134984%_))
                                                      (_%tl134928134989%_
                                                       (##cdr _%e134926134984%_)))
                                                  (let* ((_%dphi134992%_
                                                          _%hd134927134987%_)
                                                         (_%body134994%_
                                                          _%tl134928134989%_))
                                                    (if (gx#stx-fixnum?
                                                         _%dphi134992%_)
                                                        (let ((_%rbody134997%_
                                                               (call-with-parameters__1
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_%K134883%_ _%body134994%_ '()))
                        _%current-phi134880%_
                        (fx+ (gx#stx-e _%dphi134992%_)
                             (_%current-phi134880%_)))))
                  (_%K134883%_
                   _%rest134918%_
                   (__foldr1 cons _%r134919%_ _%rbody134997%_)))
                (_%E134922134972%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E134922134972%_))
                                          (_%E134922134972%_))))
                                  (_%E134922134972%_)))))
                      (_%E134921134999%_)))))
          (let* ((_%e134885134892%_ _%stx134877%_)
                 (_%E134887134896%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e134885134892%_)))
                 (_%E134886134913%_
                  (lambda ()
                    (if (gx#stx-pair? _%e134885134892%_)
                        (let ((_%e134888134900%_
                               (gx#syntax-e _%e134885134892%_)))
                          (let ((_%hd134889134903%_ (##car _%e134888134900%_))
                                (_%tl134890134905%_ (##cdr _%e134888134900%_)))
                            (let ((_%body134908%_ _%tl134890134905%_))
                              (if (_%current-phi134880%_)
                                  (_%K134883%_ _%body134908%_ '())
                                  (call-with-parameters__1
                                   (lambda () (_%K134883%_ _%body134908%_ '()))
                                   _%current-phi134880%_
                                   (gx#current-expander-phi))))))
                        (_%E134887134896%_)))))
            (_%E134886134913%_)))))
    (define gx#core-expand-import%__%
      (lambda (_%stx134531%_ _%internal-expand?134532%_)
        (letrec ((_%expand1134534%_
                  (lambda (_%hd134849%_ _%K134850%_ _%rest134851%_ _%r134852%_)
                    (if (gx#core-bound-module? _%hd134849%_)
                        (_%import1134535%_
                         (gx#syntax-local-e__0 _%hd134849%_)
                         _%K134850%_
                         _%rest134851%_
                         _%r134852%_)
                        (if (gx#core-library-module-path? _%hd134849%_)
                            (_%import1134535%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%hd134849%_))
                             _%K134850%_
                             _%rest134851%_
                             _%r134852%_)
                            (if (gx#core-library-relative-module-path?
                                 _%hd134849%_)
                                (_%import1134535%_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _%hd134849%_))
                                 _%K134850%_
                                 _%rest134851%_
                                 _%r134852%_)
                                (let ((_%e134858%_ (gx#stx-e _%hd134849%_)))
                                  (if (pair? _%e134858%_)
                                      (let ((_%$e134861%_
                                             (gx#stx-e (##car _%e134858%_))))
                                        (if (eq? 'spec: _%$e134861%_)
                                            (_%import-spec134538%_
                                             _%hd134849%_
                                             _%K134850%_
                                             _%rest134851%_
                                             _%r134852%_)
                                            (if (eq? 'in: _%$e134861%_)
                                                (_%import-submodule134536%_
                                                 _%hd134849%_
                                                 _%K134850%_
                                                 _%rest134851%_
                                                 _%r134852%_)
                                                (if (eq? 'runtime:
                                                         _%$e134861%_)
                                                    (_%import-runtime134537%_
                                                     _%hd134849%_
                                                     _%K134850%_
                                                     _%rest134851%_
                                                     _%r134852%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _%stx134531%_
                                                     _%hd134849%_)))))
                                      (if (string? _%e134858%_)
                                          (_%import1134535%_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _%hd134849%_
                                             (gx#stx-source _%stx134531%_)))
                                           _%K134850%_
                                           _%rest134851%_
                                           _%r134852%_)
                                          (if (##structure-instance-of?
                                               _%e134858%_
                                               'gx#module-context::t)
                                              (_%K134850%_
                                               _%rest134851%_
                                               (cons _%e134858%_ _%r134852%_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _%stx134531%_
                                               _%hd134849%_))))))))))
                 (_%import1134535%_
                  (lambda (_%ctx134838%_
                           _%K134839%_
                           _%rest134840%_
                           _%r134841%_)
                    (let ((_%dphi134843%_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_%K134839%_
                       _%rest134840%_
                       (cons (##structure
                              gx#import-set::t
                              _%ctx134838%_
                              _%dphi134843%_
                              (map (lambda (_%g134844134846%_)
                                     (gx#core-module-export->import__%
                                      _%g134844134846%_
                                      '#f
                                      _%dphi134843%_))
                                   (##unchecked-structure-ref
                                    _%ctx134838%_
                                    '9
                                    '#f
                                    '#f)))
                             _%r134841%_)))))
                 (_%import-submodule134536%_
                  (lambda (_%hd134805%_ _%K134806%_ _%rest134807%_ _%r134808%_)
                    (let* ((_%e134809134816%_ _%hd134805%_)
                           (_%E134811134820%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e134809134816%_)))
                           (_%E134810134834%_
                            (lambda ()
                              (if (gx#stx-pair? _%e134809134816%_)
                                  (let ((_%e134812134824%_
                                         (gx#syntax-e _%e134809134816%_)))
                                    (let ((_%hd134813134827%_
                                           (##car _%e134812134824%_))
                                          (_%tl134814134829%_
                                           (##cdr _%e134812134824%_)))
                                      (let ((_%spath134832%_
                                             _%tl134814134829%_))
                                        (_%import1134535%_
                                         (_%import-spec-source134539%_
                                          _%spath134832%_)
                                         _%K134806%_
                                         _%rest134807%_
                                         _%r134808%_))))
                                  (_%E134811134820%_)))))
                      (_%E134810134834%_))))
                 (_%import-runtime134537%_
                  (lambda (_%hd134772%_ _%K134773%_ _%rest134774%_ _%r134775%_)
                    (let* ((_%e134776134783%_ _%hd134772%_)
                           (_%E134778134787%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e134776134783%_)))
                           (_%E134777134801%_
                            (lambda ()
                              (if (gx#stx-pair? _%e134776134783%_)
                                  (let ((_%e134779134791%_
                                         (gx#syntax-e _%e134776134783%_)))
                                    (let ((_%hd134780134794%_
                                           (##car _%e134779134791%_))
                                          (_%tl134781134796%_
                                           (##cdr _%e134779134791%_)))
                                      (let ((_%spath134799%_
                                             _%tl134781134796%_))
                                        (_%K134773%_
                                         _%rest134774%_
                                         (cons (_%import-spec-source134539%_
                                                _%spath134799%_)
                                               _%r134775%_)))))
                                  (_%E134778134787%_)))))
                      (_%E134777134801%_))))
                 (_%import-spec134538%_
                  (lambda (_%hd134610%_ _%K134611%_ _%rest134612%_ _%r134613%_)
                    (let* ((_%e134614134631%_ _%hd134610%_)
                           (_%E134623134635%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e134614134631%_)))
                           (_%E134616134746%_
                            (lambda ()
                              (if (gx#stx-pair? _%e134614134631%_)
                                  (let ((_%e134624134639%_
                                         (gx#syntax-e _%e134614134631%_)))
                                    (let ((_%hd134625134642%_
                                           (##car _%e134624134639%_))
                                          (_%tl134626134644%_
                                           (##cdr _%e134624134639%_)))
                                      (if (gx#stx-pair? _%tl134626134644%_)
                                          (let ((_%e134627134647%_
                                                 (gx#syntax-e
                                                  _%tl134626134644%_)))
                                            (let ((_%hd134628134650%_
                                                   (##car _%e134627134647%_))
                                                  (_%tl134629134652%_
                                                   (##cdr _%e134627134647%_)))
                                              (let* ((_%path134655%_
                                                      _%hd134628134650%_)
                                                     (_%specs134657%_
                                                      _%tl134629134652%_))
                                                (let ((_%src-ctx134659%_
                                                       (_%import-spec-source134539%_
                                                        _%path134655%_))
                                                      (_%exports134660%_
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
                                                      (_%specs134661%_
                                                       (gx#syntax->list
                                                        _%specs134657%_)))
                                                  (for-each
                                                   (lambda (_%out134663%_)
                                                     (__hash-put!
                                                      _%exports134660%_
                                                      (cons (##unchecked-structure-ref
                                                             _%out134663%_
                                                             '3
                                                             '#f
                                                             '#f)
                                                            (##unchecked-structure-ref
                                                             _%out134663%_
                                                             '4
                                                             '#f
                                                             '#f))
                                                      _%out134663%_))
                                                   (##unchecked-structure-ref
                                                    _%src-ctx134659%_
                                                    '9
                                                    '#f
                                                    '#f))
                                                  (_%K134611%_
                                                   _%rest134612%_
                                                   (__foldl1
                                                    (lambda (_%spec134665%_
                                                             _%r134666%_)
                                                      (let* ((_%e134667134683%_
                                                              _%spec134665%_)
                                                             (_%E134669134687%_
                                                              (lambda ()
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid syntax-case clause"
                         _%e134667134683%_)))
                     (_%E134668134742%_
                      (lambda ()
                        (if (gx#stx-pair? _%e134667134683%_)
                            (let ((_%e134670134691%_
                                   (gx#syntax-e _%e134667134683%_)))
                              (let ((_%hd134671134694%_
                                     (##car _%e134670134691%_))
                                    (_%tl134672134696%_
                                     (##cdr _%e134670134691%_)))
                                (let ((_%phi134699%_ _%hd134671134694%_))
                                  (if (gx#stx-pair? _%tl134672134696%_)
                                      (let ((_%e134673134701%_
                                             (gx#syntax-e _%tl134672134696%_)))
                                        (let ((_%hd134674134704%_
                                               (##car _%e134673134701%_))
                                              (_%tl134675134706%_
                                               (##cdr _%e134673134701%_)))
                                          (let ((_%name134709%_
                                                 _%hd134674134704%_))
                                            (if (gx#stx-pair?
                                                 _%tl134675134706%_)
                                                (let ((_%e134676134711%_
                                                       (gx#syntax-e
                                                        _%tl134675134706%_)))
                                                  (let ((_%hd134677134714%_
                                                         (##car _%e134676134711%_))
                                                        (_%tl134678134716%_
                                                         (##cdr _%e134676134711%_)))
                                                    (let ((_%src-phi134719%_
                                                           _%hd134677134714%_))
                                                      (if (gx#stx-pair?
                                                           _%tl134678134716%_)
                                                          (let ((_%e134679134721%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl134678134716%_)))
                    (let ((_%hd134680134724%_ (##car _%e134679134721%_))
                          (_%tl134681134726%_ (##cdr _%e134679134721%_)))
                      (let ((_%src-name134729%_ _%hd134680134724%_))
                        (if (gx#stx-null? _%tl134681134726%_)
                            (if (and (gx#stx-fixnum? _%src-phi134719%_)
                                     (gx#identifier? _%src-name134729%_)
                                     (gx#stx-fixnum? _%phi134699%_)
                                     (gx#identifier? _%name134709%_))
                                (let ((_%src-phi134731%_
                                       (gx#stx-e _%src-phi134719%_))
                                      (_%src-name134732%_
                                       (gx#core-identifier-key
                                        _%src-name134729%_))
                                      (_%phi134733%_ (gx#stx-e _%phi134699%_))
                                      (_%name134734%_
                                       (gx#core-identifier-key
                                        _%name134709%_)))
                                  (let ((_%$e134736%_
                                         (__hash-get
                                          _%exports134660%_
                                          (cons _%src-phi134731%_
                                                _%src-name134732%_))))
                                    (if _%$e134736%_
                                        ((lambda (_%out134739%_)
                                           (cons (gx#core-module-export->import__%
                                                  _%out134739%_
                                                  _%name134734%_
                                                  (fx- _%phi134733%_
                                                       _%src-phi134731%_))
                                                 _%r134666%_))
                                         _%$e134736%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; no matching export"
                                         _%stx134531%_
                                         _%hd134610%_))))
                                (_%E134669134687%_))
                            (_%E134669134687%_)))))
                  (_%E134669134687%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E134669134687%_)))))
                                      (_%E134669134687%_)))))
                            (_%E134669134687%_)))))
                (_%E134668134742%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r134613%_
                                                    _%specs134661%_))))))
                                          (_%E134623134635%_))))
                                  (_%E134623134635%_))))
                           (_%E134615134768%_
                            (lambda ()
                              (if (gx#stx-pair? _%e134614134631%_)
                                  (let ((_%e134617134750%_
                                         (gx#syntax-e _%e134614134631%_)))
                                    (let ((_%hd134618134753%_
                                           (##car _%e134617134750%_))
                                          (_%tl134619134755%_
                                           (##cdr _%e134617134750%_)))
                                      (if (gx#stx-pair? _%tl134619134755%_)
                                          (let ((_%e134620134758%_
                                                 (gx#syntax-e
                                                  _%tl134619134755%_)))
                                            (let ((_%hd134621134761%_
                                                   (##car _%e134620134758%_))
                                                  (_%tl134622134763%_
                                                   (##cdr _%e134620134758%_)))
                                              (let ((_%path134766%_
                                                     _%hd134621134761%_))
                                                (if (gx#stx-null?
                                                     _%tl134622134763%_)
                                                    (_%K134611%_
                                                     _%rest134612%_
                                                     (cons (_%import-spec-source134539%_
                                                            _%path134766%_)
                                                           _%r134613%_))
                                                    (_%E134616134746%_)))))
                                          (_%E134616134746%_))))
                                  (_%E134616134746%_)))))
                      (_%E134615134768%_))))
                 (_%import-spec-source134539%_
                  (lambda (_%spath134608%_)
                    (gx#core-import-nested-module
                     _%spath134608%_
                     _%stx134531%_)))
                 (_%import!134540%_
                  (lambda (_%rbody134553%_)
                    (letrec* ((_%current-ctx134555%_
                               (gx#current-expander-context))
                              (_%deps134556%_ (make-hash-table-eq))
                              (_%bind!134557%_
                               (lambda (_%hd134606%_)
                                 (gx#core-bind-import!__1
                                  _%hd134606%_
                                  _%current-ctx134555%_))))
                      (let _%lp134559%_ ((_%rest134561%_ _%rbody134553%_)
                                         (_%body134562%_ '()))
                        (let* ((_%rest134563134571%_ _%rest134561%_)
                               (_%else134565134582%_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _%current-ctx134555%_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _%current-ctx134555%_
                                       (__foldl1
                                        cons
                                        (##unchecked-structure-ref
                                         _%current-ctx134555%_
                                         '8
                                         '#f
                                         '#f)
                                        _%body134562%_)
                                       '8
                                       '#f
                                       '#f)
                                      '#!void)
                                  (__hash-for-each
                                   (lambda (_%ctx134579%_ _%_134580%_)
                                     (gx#eval-module _%ctx134579%_))
                                   _%deps134556%_)
                                  _%body134562%_))
                               (_%K134567134594%_
                                (lambda (_%rest134585%_ _%hd134586%_)
                                  (if (##structure-direct-instance-of?
                                       _%hd134586%_
                                       'gx#module-import::t)
                                      (let ()
                                        (_%bind!134557%_ _%hd134586%_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _%hd134586%_
                                                   '3
                                                   '#f
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _%hd134586%_
                                                            '1
                                                            '#f
                                                            '#f)
                                                           '3
                                                           '#f
                                                           '#f)))
                                            (__hash-put!
                                             _%deps134556%_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _%hd134586%_
                                               '1
                                               '#f
                                               '#f)
                                              '1
                                              '#f
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _%hd134586%_
                                           'gx#import-set::t)
                                          (let ()
                                            (for-each
                                             _%bind!134557%_
                                             (##unchecked-structure-ref
                                              _%hd134586%_
                                              '3
                                              '#f
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _%hd134586%_
                                                  '2
                                                  '#f
                                                  '#f))
                                                (__hash-put!
                                                 _%deps134556%_
                                                 (##unchecked-structure-ref
                                                  _%hd134586%_
                                                  '1
                                                  '#f
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_%$e134590%_
                                                 (##structure-instance-of?
                                                  _%hd134586%_
                                                  'gx#module-context::t)))
                                            (if _%$e134590%_
                                                _%$e134590%_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _%stx134531%_
                                                 _%hd134586%_)))))
                                  (_%lp134559%_
                                   _%rest134585%_
                                   (cons _%hd134586%_ _%body134562%_)))))
                          (if (pair? _%rest134563134571%_)
                              (let ((_%hd134568134597%_
                                     (##car _%rest134563134571%_))
                                    (_%tl134569134599%_
                                     (##cdr _%rest134563134571%_)))
                                (let* ((_%hd134602%_ _%hd134568134597%_)
                                       (_%rest134604%_ _%tl134569134599%_))
                                  (_%K134567134594%_
                                   _%rest134604%_
                                   _%hd134602%_)))
                              (_%else134565134582%_)))))))
                 (_%expanded-import?134541%_
                  (lambda (_%e134545%_)
                    (let ((_%$e134547%_
                           (##structure-direct-instance-of?
                            _%e134545%_
                            'gx#import-set::t)))
                      (if _%$e134547%_
                          _%$e134547%_
                          (let ((_%$e134550%_
                                 (##structure-direct-instance-of?
                                  _%e134545%_
                                  'gx#module-import::t)))
                            (if _%$e134550%_
                                _%$e134550%_
                                (##structure-instance-of?
                                 _%e134545%_
                                 'gx#module-context::t))))))))
          (let ((_%rbody134543%_
                 (gx#core-expand-import/export
                  _%stx134531%_
                  _%expanded-import?134541%_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _%expand1134534%_)))
            (if _%internal-expand?134532%_
                (reverse _%rbody134543%_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_%import!134540%_ _%rbody134543%_))
                 (gx#stx-source _%stx134531%_)))))))
    (define gx#core-expand-import%__0
      (lambda (_%stx134870%_)
        (let ((_%internal-expand?134872%_ '#f))
          (gx#core-expand-import%__%
           _%stx134870%_
           _%internal-expand?134872%_))))
    (define gx#core-expand-import%
      (lambda _g137526_
        (let ((_g137527_ (##length _g137526_)))
          (cond ((##fx= _g137527_ 1)
                 (apply gx#core-expand-import%__0 _g137526_))
                ((##fx= _g137527_ 2)
                 (apply gx#core-expand-import%__% _g137526_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g137526_))))))
    (define gx#core-import-nested-module
      (lambda (_%spath134458%_ _%where134459%_)
        (let* ((_%e134460134467%_ _%spath134458%_)
               (_%E134462134471%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e134460134467%_)))
               (_%E134461134526%_
                (lambda ()
                  (if (gx#stx-pair? _%e134460134467%_)
                      (let ((_%e134463134475%_
                             (gx#syntax-e _%e134460134467%_)))
                        (let ((_%hd134464134478%_ (##car _%e134463134475%_))
                              (_%tl134465134480%_ (##cdr _%e134463134475%_)))
                          (let* ((_%origin134483%_ _%hd134464134478%_)
                                 (_%sub134485%_ _%tl134465134480%_)
                                 (_%origin-ctx134487%_
                                  (if (gx#stx-false? _%origin134483%_)
                                      (gx#current-expander-context)
                                      (gx#import-module__0 _%origin134483%_))))
                            (let _%lp134489%_ ((_%rest134491%_ _%sub134485%_)
                                               (_%ctx134492%_
                                                _%origin-ctx134487%_))
                              (let* ((_%e134493134500%_ _%rest134491%_)
                                     (_%E134495134504%_
                                      (lambda () _%ctx134492%_))
                                     (_%E134494134522%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%e134493134500%_)
                                            (let ((_%e134496134508%_
                                                   (gx#syntax-e
                                                    _%e134493134500%_)))
                                              (let ((_%hd134497134511%_
                                                     (##car _%e134496134508%_))
                                                    (_%tl134498134513%_
                                                     (##cdr _%e134496134508%_)))
                                                (let* ((_%id134516%_
                                                        _%hd134497134511%_)
                                                       (_%rest134518%_
                                                        _%tl134498134513%_)
                                                       (_%bind134520%_
                                                        (gx#resolve-identifier__%
                                                         _%id134516%_
                                                         '0
                                                         _%ctx134492%_)))
                                                  (if (and (##structure-direct-instance-of?
                                                            _%bind134520%_
                                                            'gx#syntax-binding::t)
                                                           (##structure-instance-of?
                                                            (##unchecked-structure-ref
                                                             _%bind134520%_
                                                             '4
                                                             '#f
                                                             '#f)
                                                            'gx#module-context::t))
                                                      '#!void
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; not bound as module"
                                                       _%where134459%_
                                                       _%spath134458%_
                                                       _%id134516%_))
                                                  (_%lp134489%_
                                                   _%rest134518%_
                                                   (##unchecked-structure-ref
                                                    _%bind134520%_
                                                    '4
                                                    '#f
                                                    '#f)))))
                                            (_%E134495134504%_)))))
                                (_%E134494134522%_))))))
                      (_%E134462134471%_)))))
          (_%E134461134526%_))))
    (define gx#core-expand-import-source
      (lambda (_%hd134456%_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _%hd134456%_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_%stx133950%_ _%internal-expand?133951%_)
        (letrec* ((_%make-export__137455137456%_
                   (lambda (_%bind134404%_
                            _%phi134405%_
                            _%ctx134406%_
                            _%name134407%_)
                     (let* ((_%key134409%_
                             (##unchecked-structure-ref
                              _%bind134404%_
                              '2
                              '#f
                              '#f))
                            (_%export-key134411%_
                             (if _%name134407%_
                                 (gx#core-identifier-key _%name134407%_)
                                 _%key134409%_)))
                       (##structure
                        gx#module-export::t
                        _%ctx134406%_
                        _%key134409%_
                        _%phi134405%_
                        _%export-key134411%_
                        (let ((_%$e134414%_
                               (##structure-instance-of?
                                _%bind134404%_
                                'gx#extern-binding::t)))
                          (if _%$e134414%_
                              _%$e134414%_
                              (##structure-direct-instance-of?
                               _%bind134404%_
                               'gx#import-binding::t)))))))
                  (_%make-export__0__137457137460%_
                   (lambda (_%bind134420%_)
                     (let* ((_%phi134422%_ (gx#current-export-expander-phi))
                            (_%ctx134424%_ (gx#current-expander-context))
                            (_%name134426%_ '#f))
                       (_%make-export__137455137456%_
                        _%bind134420%_
                        _%phi134422%_
                        _%ctx134424%_
                        _%name134426%_))))
                  (_%make-export__1__137458137461%_
                   (lambda (_%bind134428%_ _%phi134429%_)
                     (let* ((_%ctx134431%_ (gx#current-expander-context))
                            (_%name134433%_ '#f))
                       (_%make-export__137455137456%_
                        _%bind134428%_
                        _%phi134429%_
                        _%ctx134431%_
                        _%name134433%_))))
                  (_%make-export__2__137459137462%_
                   (lambda (_%bind134435%_ _%phi134436%_ _%ctx134437%_)
                     (let ((_%name134439%_ '#f))
                       (_%make-export__137455137456%_
                        _%bind134435%_
                        _%phi134436%_
                        _%ctx134437%_
                        _%name134439%_))))
                  (_%make-export133953%_
                   (lambda _g137528_
                     (let ((_g137529_ (##length _g137528_)))
                       (cond ((##fx= _g137529_ 1)
                              (apply _%make-export__0__137457137460%_
                                     _g137528_))
                             ((##fx= _g137529_ 2)
                              (apply _%make-export__1__137458137461%_
                                     _g137528_))
                             ((##fx= _g137529_ 3)
                              (apply _%make-export__2__137459137462%_
                                     _g137528_))
                             ((##fx= _g137529_ 4)
                              (apply _%make-export__137455137456%_ _g137528_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g137528_))))))
                  (_%expand1133954%_
                   (lambda (_%hd134109%_
                            _%K134110%_
                            _%rest134111%_
                            _%r134112%_)
                     (let* ((_%e134113134145%_ _%hd134109%_)
                            (_%E134140134149%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _%stx133950%_
                                _%hd134109%_)))
                            (_%E134130134233%_
                             (lambda ()
                               (if (gx#stx-pair? _%e134113134145%_)
                                   (let ((_%e134141134153%_
                                          (gx#syntax-e _%e134113134145%_)))
                                     (let ((_%hd134142134156%_
                                            (##car _%e134141134153%_))
                                           (_%tl134143134158%_
                                            (##cdr _%e134141134153%_)))
                                       (if (eq? (gx#stx-e _%hd134142134156%_)
                                                'import:)
                                           (let ((_%in134161%_
                                                  _%tl134143134158%_))
                                             (if (gx#stx-list? _%in134161%_)
                                                 (let _%lp134163%_ ((_%in-rest134165%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%in134161%_)
                            (_%r134166%_ _%r134112%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%e134167134174%_
                                                           _%in-rest134165%_)
                                                          (_%E134169134178%_
                                                           (lambda ()
                                                             (_%K134110%_
                                                              _%rest134111%_
                                                              _%r134166%_)))
                                                          (_%E134168134229%_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%e134167134174%_)
                         (let ((_%e134170134182%_
                                (gx#syntax-e _%e134167134174%_)))
                           (let ((_%hd134171134185%_ (##car _%e134170134182%_))
                                 (_%tl134172134187%_
                                  (##cdr _%e134170134182%_)))
                             (let* ((_%hd134190%_ _%hd134171134185%_)
                                    (_%in-rest134192%_ _%tl134172134187%_)
                                    (_%src134227%_
                                     (if (gx#core-bound-module? _%hd134190%_)
                                         (gx#syntax-local-e__0 _%hd134190%_)
                                         (if (gx#core-library-module-path?
                                              _%hd134190%_)
                                             (gx#import-module__0
                                              (gx#core-resolve-library-module-path
                                               _%hd134190%_))
                                             (if (gx#core-library-relative-module-path?
                                                  _%hd134190%_)
                                                 (gx#import-module__0
                                                  (gx#core-resolve-library-relative-module-path
                                                   _%hd134190%_))
                                                 (if (gx#stx-string?
                                                      _%hd134190%_)
                                                     (gx#import-module__0
                                                      (gx#core-resolve-module-path__%
                                                       _%hd134190%_
                                                       (gx#stx-source
                                                        _%stx133950%_)))
                                                     (let* ((_%e134198134205%_
                                                             _%hd134190%_)
                                                            (_%E134200134209%_
                                                             (lambda ()
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; illegal re-export"
                                                                _%stx133950%_
                                                                _%hd134190%_)))
                                                            (_%E134199134223%_
                                                             (lambda ()
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%e134198134205%_)
                           (let ((_%e134201134213%_
                                  (gx#syntax-e _%e134198134205%_)))
                             (let ((_%hd134202134216%_
                                    (##car _%e134201134213%_))
                                   (_%tl134203134218%_
                                    (##cdr _%e134201134213%_)))
                               (if (eq? (gx#stx-e _%hd134202134216%_) 'in:)
                                   (let ((_%spath134221%_ _%tl134203134218%_))
                                     (gx#core-import-nested-module
                                      _%spath134221%_
                                      _%stx133950%_))
                                   (_%E134200134209%_))))
                           (_%E134200134209%_)))))
               (_%E134199134223%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (_%lp134163%_
                                _%in-rest134192%_
                                (_%export-imports133955%_
                                 _%src134227%_
                                 _%r134166%_)))))
                         (_%E134169134178%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E134168134229%_)))
                                                 (_%E134140134149%_)))
                                           (_%E134140134149%_))))
                                   (_%E134140134149%_))))
                            (_%E134117134273%_
                             (lambda ()
                               (if (gx#stx-pair? _%e134113134145%_)
                                   (let ((_%e134131134237%_
                                          (gx#syntax-e _%e134113134145%_)))
                                     (let ((_%hd134132134240%_
                                            (##car _%e134131134237%_))
                                           (_%tl134133134242%_
                                            (##cdr _%e134131134237%_)))
                                       (if (eq? (gx#stx-e _%hd134132134240%_)
                                                'rename:)
                                           (if (gx#stx-pair?
                                                _%tl134133134242%_)
                                               (let ((_%e134134134245%_
                                                      (gx#syntax-e
                                                       _%tl134133134242%_)))
                                                 (let ((_%hd134135134248%_
                                                        (##car _%e134134134245%_))
                                                       (_%tl134136134250%_
                                                        (##cdr _%e134134134245%_)))
                                                   (let ((_%id134253%_
                                                          _%hd134135134248%_))
                                                     (if (gx#stx-pair?
                                                          _%tl134136134250%_)
                                                         (let ((_%e134137134255%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl134136134250%_)))
                   (let ((_%hd134138134258%_ (##car _%e134137134255%_))
                         (_%tl134139134260%_ (##cdr _%e134137134255%_)))
                     (let ((_%name134263%_ _%hd134138134258%_))
                       (if (gx#stx-null? _%tl134139134260%_)
                           (let* ((_%phi134265%_
                                   (gx#current-export-expander-phi))
                                  (_%$e134267%_
                                   (gx#core-resolve-identifier__1
                                    _%id134253%_
                                    _%phi134265%_)))
                             (if _%$e134267%_
                                 ((lambda (_%bind134270%_)
                                    (_%K134110%_
                                     _%rest134111%_
                                     (cons (_%make-export__137455137456%_
                                            _%bind134270%_
                                            _%phi134265%_
                                            (gx#current-expander-context)
                                            _%name134263%_)
                                           _%r134112%_)))
                                  _%$e134267%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Reference to unbound identifier"
                                  _%stx133950%_
                                  _%hd134109%_
                                  _%id134253%_)))
                           (_%E134130134233%_)))))
                 (_%E134130134233%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E134130134233%_))
                                           (_%E134130134233%_))))
                                   (_%E134130134233%_))))
                            (_%E134116134323%_
                             (lambda ()
                               (if (gx#stx-pair? _%e134113134145%_)
                                   (let ((_%e134118134277%_
                                          (gx#syntax-e _%e134113134145%_)))
                                     (let ((_%hd134119134280%_
                                            (##car _%e134118134277%_))
                                           (_%tl134120134282%_
                                            (##cdr _%e134118134277%_)))
                                       (if (eq? (gx#stx-e _%hd134119134280%_)
                                                'spec:)
                                           (if (gx#stx-pair?
                                                _%tl134120134282%_)
                                               (let ((_%e134121134285%_
                                                      (gx#syntax-e
                                                       _%tl134120134282%_)))
                                                 (let ((_%hd134122134288%_
                                                        (##car _%e134121134285%_))
                                                       (_%tl134123134290%_
                                                        (##cdr _%e134121134285%_)))
                                                   (let ((_%phi134293%_
                                                          _%hd134122134288%_))
                                                     (if (gx#stx-pair?
                                                          _%tl134123134290%_)
                                                         (let ((_%e134124134295%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl134123134290%_)))
                   (let ((_%hd134125134298%_ (##car _%e134124134295%_))
                         (_%tl134126134300%_ (##cdr _%e134124134295%_)))
                     (let ((_%id134303%_ _%hd134125134298%_))
                       (if (gx#stx-pair? _%tl134126134300%_)
                           (let ((_%e134127134305%_
                                  (gx#syntax-e _%tl134126134300%_)))
                             (let ((_%hd134128134308%_
                                    (##car _%e134127134305%_))
                                   (_%tl134129134310%_
                                    (##cdr _%e134127134305%_)))
                               (let ((_%name134313%_ _%hd134128134308%_))
                                 (if (gx#stx-null? _%tl134129134310%_)
                                     (if (and (gx#stx-fixnum? _%phi134293%_)
                                              (gx#identifier? _%id134303%_)
                                              (gx#identifier? _%name134313%_))
                                         (let* ((_%phi134315%_
                                                 (gx#stx-e _%phi134293%_))
                                                (_%$e134317%_
                                                 (gx#core-resolve-identifier__1
                                                  _%id134303%_
                                                  _%phi134315%_)))
                                           (if _%$e134317%_
                                               ((lambda (_%bind134320%_)
                                                  (_%K134110%_
                                                   _%rest134111%_
                                                   (cons (_%make-export__137455137456%_
                                                          _%bind134320%_
                                                          _%phi134315%_
                                                          (gx#current-expander-context)
                                                          _%name134313%_)
                                                         _%r134112%_)))
                                                _%$e134317%_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _%stx133950%_
                                                _%hd134109%_
                                                _%id134303%_)))
                                         (_%E134117134273%_))
                                     (_%E134117134273%_)))))
                           (_%E134117134273%_)))))
                 (_%E134117134273%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E134117134273%_))
                                           (_%E134117134273%_))))
                                   (_%E134117134273%_))))
                            (_%E134115134335%_
                             (lambda ()
                               (let ((_%id134327%_ _%e134113134145%_))
                                 (if (gx#identifier? _%id134327%_)
                                     (let ((_%$e134329%_
                                            (gx#core-resolve-identifier__1
                                             _%id134327%_
                                             (gx#current-export-expander-phi))))
                                       (if _%$e134329%_
                                           ((lambda (_%bind134332%_)
                                              (_%K134110%_
                                               _%rest134111%_
                                               (cons (_%make-export__0__137457137460%_
                                                      _%bind134332%_)
                                                     _%r134112%_)))
                                            _%$e134329%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _%stx133950%_
                                            _%hd134109%_)))
                                     (_%E134116134323%_)))))
                            (_%E134114134399%_
                             (lambda ()
                               (if (eq? (gx#stx-e _%e134113134145%_) '#t)
                                   (let* ((_%current-ctx134339%_
                                           (gx#current-expander-context))
                                          (_%current-phi134341%_
                                           (gx#current-export-expander-phi))
                                          (_%phi-ctx134343%_
                                           (gx#core-context-shift
                                            _%current-ctx134339%_
                                            _%current-phi134341%_))
                                          (_%phi-bind134345%_
                                           (hash->list
                                            (##unchecked-structure-ref
                                             _%phi-ctx134343%_
                                             '2
                                             '#f
                                             '#f))))
                                     (let _%lp134348%_ ((_%bind-rest134350%_
                                                         _%phi-bind134345%_)
                                                        (_%set134351%_ '()))
                                       (let* ((_%bind-rest134352134362%_
                                               _%bind-rest134350%_)
                                              (_%else134354134370%_
                                               (lambda ()
                                                 (_%K134110%_
                                                  _%rest134111%_
                                                  (cons (##structure
                                                         gx#export-set::t
                                                         '#f
                                                         _%current-phi134341%_
                                                         _%set134351%_)
                                                        _%r134112%_))))
                                              (_%K134356134380%_
                                               (lambda (_%bind-rest134373%_
                                                        _%bind134374%_
                                                        _%key134375%_)
                                                 (if (or (##structure-direct-instance-of?
                                                          _%bind134374%_
                                                          'gx#import-binding::t)
                                                         (gx#private-feature-binding?
                                                          _%bind134374%_))
                                                     (_%lp134348%_
                                                      _%bind-rest134373%_
                                                      _%set134351%_)
                                                     (_%lp134348%_
                                                      _%bind-rest134373%_
                                                      (cons (_%make-export__2__137459137462%_
                                                             _%bind134374%_
                                                             _%current-phi134341%_
                                                             _%current-ctx134339%_)
                                                            _%set134351%_))))))
                                         (if (pair? _%bind-rest134352134362%_)
                                             (let ((_%hd134357134383%_
                                                    (##car _%bind-rest134352134362%_))
                                                   (_%tl134358134385%_
                                                    (##cdr _%bind-rest134352134362%_)))
                                               (if (pair? _%hd134357134383%_)
                                                   (let ((_%hd134359134388%_
                                                          (##car _%hd134357134383%_))
                                                         (_%tl134360134390%_
                                                          (##cdr _%hd134357134383%_)))
                                                     (let* ((_%key134393%_
                                                             _%hd134359134388%_)
                                                            (_%bind134395%_
                                                             _%tl134360134390%_)
                                                            (_%bind-rest134397%_
                                                             _%tl134358134385%_))
                                                       (_%K134356134380%_
                                                        _%bind-rest134397%_
                                                        _%bind134395%_
                                                        _%key134393%_)))
                                                   (_%else134354134370%_)))
                                             (_%else134354134370%_)))))
                                   (_%E134115134335%_)))))
                       (_%E134114134399%_))))
                  (_%export-imports133955%_
                   (lambda (_%src133985%_ _%r133986%_)
                     (letrec* ((_%current-ctx133988%_
                                (gx#current-expander-context))
                               (_%current-phi133989%_
                                (gx#current-export-expander-phi))
                               (_%import->export133990%_
                                (lambda (_%in134071%_)
                                  (let* ((_%in134072134080%_ _%in134071%_)
                                         (_%E134074134084%_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _%in134072134080%_
                                                   '((module-import
                                                      out
                                                      key
                                                      phi)))
                                            '#!void))
                                         (_%K134075134091%_
                                          (lambda (_%phi134087%_
                                                   _%key134088%_
                                                   _%out134089%_)
                                            (##structure
                                             gx#module-export::t
                                             _%current-ctx133988%_
                                             _%key134088%_
                                             _%phi134087%_
                                             _%key134088%_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _%in134072134080%_
                                         'gx#module-import::t)
                                        (let* ((_%e134076134094%_
                                                (##unchecked-structure-ref
                                                 _%in134072134080%_
                                                 '1
                                                 '#f
                                                 '#f))
                                               (_%out134097%_
                                                _%e134076134094%_)
                                               (_%e134077134099%_
                                                (##unchecked-structure-ref
                                                 _%in134072134080%_
                                                 '2
                                                 '#f
                                                 '#f))
                                               (_%key134102%_
                                                _%e134077134099%_)
                                               (_%e134078134104%_
                                                (##unchecked-structure-ref
                                                 _%in134072134080%_
                                                 '3
                                                 '#f
                                                 '#f))
                                               (_%phi134107%_
                                                _%e134078134104%_))
                                          (_%K134075134091%_
                                           _%phi134107%_
                                           _%key134102%_
                                           _%out134097%_))
                                        (_%E134074134084%_)))))
                               (_%fold-e133991%_
                                (lambda (_%in133993%_ _%r133994%_)
                                  (let* ((_%in133995134009%_ _%in133993%_)
                                         (_%else133998134017%_
                                          (lambda () _%r133994%_)))
                                    (let ((_%K134004134053%_
                                           (lambda (_%phi134049%_
                                                    _%key134050%_
                                                    _%out134051%_)
                                             (if (and (fx= _%phi134049%_
                                                           _%current-phi133989%_)
                                                      (eq? _%src133985%_
                                                           (##unchecked-structure-ref
                                                            _%out134051%_
                                                            '1
                                                            '#f
                                                            '#f)))
                                                 (cons (_%import->export133990%_
                                                        _%in133993%_)
                                                       _%r133994%_)
                                                 _%r133994%_)))
                                          (_%K134000134028%_
                                           (lambda (_%imports134021%_
                                                    _%phi134022%_
                                                    _%ctx134023%_)
                                             (if (and (fx= _%phi134022%_
                                                           _%current-phi133989%_)
                                                      (eq? _%src133985%_
                                                           _%ctx134023%_))
                                                 (__foldl1
                                                  (lambda (_%in134025%_
                                                           _%r134026%_)
                                                    (cons (_%import->export133990%_
                                                           _%in134025%_)
                                                          _%r134026%_))
                                                  _%r133994%_
                                                  _%imports134021%_)
                                                 _%r133994%_))))
                                      (let ((_%try-match133997134046%_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _%in133995134009%_
                                                    'gx#import-set::t)
                                                   (let* ((_%e134001134031%_
                                                           (##unchecked-structure-ref
                                                            _%in133995134009%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                          (_%e134002134036%_
                                                           (##unchecked-structure-ref
                                                            _%in133995134009%_
                                                            '2
                                                            '#f
                                                            '#f))
                                                          (_%e134003134041%_
                                                           (##unchecked-structure-ref
                                                            _%in133995134009%_
                                                            '3
                                                            '#f
                                                            '#f)))
                                                     (let ((_%ctx134034%_
                                                            _%e134001134031%_)
                                                           (_%phi134039%_
                                                            _%e134002134036%_)
                                                           (_%imports134044%_
                                                            _%e134003134041%_))
                                                       (_%K134000134028%_
                                                        _%imports134044%_
                                                        _%phi134039%_
                                                        _%ctx134034%_)))
                                                   (_%else133998134017%_)))))
                                        (if (##structure-direct-instance-of?
                                             _%in133995134009%_
                                             'gx#module-import::t)
                                            (let* ((_%e134005134056%_
                                                    (##unchecked-structure-ref
                                                     _%in133995134009%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                   (_%e134006134061%_
                                                    (##unchecked-structure-ref
                                                     _%in133995134009%_
                                                     '2
                                                     '#f
                                                     '#f))
                                                   (_%e134007134066%_
                                                    (##unchecked-structure-ref
                                                     _%in133995134009%_
                                                     '3
                                                     '#f
                                                     '#f)))
                                              (let ((_%out134059%_
                                                     _%e134005134056%_)
                                                    (_%key134064%_
                                                     _%e134006134061%_)
                                                    (_%phi134069%_
                                                     _%e134007134066%_))
                                                (_%K134004134053%_
                                                 _%phi134069%_
                                                 _%key134064%_
                                                 _%out134059%_)))
                                            (_%try-match133997134046%_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _%src133985%_
                              _%current-phi133989%_
                              (__foldl1
                               _%fold-e133991%_
                               '()
                               (##unchecked-structure-ref
                                _%current-ctx133988%_
                                '8
                                '#f
                                '#f)))
                             _%r133986%_))))
                  (_%export!133956%_
                   (lambda (_%rbody133972%_)
                     (letrec* ((_%current-ctx133974%_
                                (gx#current-expander-context))
                               (_%fold-e133975%_
                                (lambda (_%out133979%_ _%r133980%_)
                                  (if (##structure-direct-instance-of?
                                       _%out133979%_
                                       'gx#module-export::t)
                                      (cons _%out133979%_ _%r133980%_)
                                      (if (##structure-direct-instance-of?
                                           _%out133979%_
                                           'gx#export-set::t)
                                          (__foldl1
                                           cons
                                           _%r133980%_
                                           (##unchecked-structure-ref
                                            _%out133979%_
                                            '3
                                            '#f
                                            '#f))
                                          _%r133980%_)))))
                       (let ((_%body133977%_ (reverse _%rbody133972%_)))
                         (##unchecked-structure-set!
                          _%current-ctx133974%_
                          (__foldl1
                           _%fold-e133975%_
                           (##unchecked-structure-ref
                            _%current-ctx133974%_
                            '9
                            '#f
                            '#f)
                           _%body133977%_)
                          '9
                          '#f
                          '#f)
                         _%body133977%_))))
                  (_%expanded-export?133957%_
                   (lambda (_%e133967%_)
                     (let ((_%$e133969%_
                            (##structure-direct-instance-of?
                             _%e133967%_
                             'gx#module-export::t)))
                       (if _%$e133969%_
                           _%$e133969%_
                           (##structure-direct-instance-of?
                            _%e133967%_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _%internal-expand?133951%_)
              (let ((_%rbody133963%_
                     (gx#core-expand-import/export
                      _%stx133950%_
                      _%expanded-export?133957%_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _%expand1133954%_)))
                (if _%internal-expand?133951%_
                    (reverse _%rbody133963%_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons
                      '%#export
                      (_%export!133956%_ _%rbody133963%_))
                     (gx#stx-source _%stx133950%_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _%stx133950%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _%stx133950%_))))))
    (define gx#core-expand-export%__0
      (lambda (_%stx134449%_)
        (let ((_%internal-expand?134451%_ '#f))
          (gx#core-expand-export%__%
           _%stx134449%_
           _%internal-expand?134451%_))))
    (define gx#core-expand-export%
      (lambda _g137530_
        (let ((_g137531_ (##length _g137530_)))
          (cond ((##fx= _g137531_ 1)
                 (apply gx#core-expand-export%__0 _g137530_))
                ((##fx= _g137531_ 2)
                 (apply gx#core-expand-export%__% _g137530_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g137530_))))))
    (define gx#core-expand-export-source
      (lambda (_%hd133947%_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _%hd133947%_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_%stx133917%_)
        (let* ((_%e133918133925%_ _%stx133917%_)
               (_%E133920133929%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e133918133925%_)))
               (_%E133919133943%_
                (lambda ()
                  (if (gx#stx-pair? _%e133918133925%_)
                      (let ((_%e133921133933%_
                             (gx#syntax-e _%e133918133925%_)))
                        (let ((_%hd133922133936%_ (##car _%e133921133933%_))
                              (_%tl133923133938%_ (##cdr _%e133921133933%_)))
                          (let ((_%body133941%_ _%tl133923133938%_))
                            (if (gx#identifier-list? _%body133941%_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _%body133941%_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _%body133941%_))
                                   (gx#stx-source _%stx133917%_)))
                                (_%E133920133929%_)))))
                      (_%E133920133929%_)))))
          (_%E133919133943%_))))
    (define gx#core-bind-feature!__%
      (lambda (_%id133883%_ _%private?133884%_ _%phi133885%_ _%ctx133886%_)
        (gx#core-bind-syntax!__%
         _%id133883%_
         ((if _%private?133884%_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _%id133883%_))
         _%private?133884%_
         _%phi133885%_
         _%ctx133886%_)))
    (define gx#core-bind-feature!__0
      (lambda (_%id133891%_)
        (let* ((_%private?133893%_ '#f)
               (_%phi133895%_ (gx#current-expander-phi))
               (_%ctx133897%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id133891%_
           _%private?133893%_
           _%phi133895%_
           _%ctx133897%_))))
    (define gx#core-bind-feature!__1
      (lambda (_%id133899%_ _%private?133900%_)
        (let* ((_%phi133902%_ (gx#current-expander-phi))
               (_%ctx133904%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id133899%_
           _%private?133900%_
           _%phi133902%_
           _%ctx133904%_))))
    (define gx#core-bind-feature!__2
      (lambda (_%id133906%_ _%private?133907%_ _%phi133908%_)
        (let ((_%ctx133910%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id133906%_
           _%private?133907%_
           _%phi133908%_
           _%ctx133910%_))))
    (define gx#core-bind-feature!
      (lambda _g137532_
        (let ((_g137533_ (##length _g137532_)))
          (cond ((##fx= _g137533_ 1)
                 (apply gx#core-bind-feature!__0 _g137532_))
                ((##fx= _g137533_ 2)
                 (apply gx#core-bind-feature!__1 _g137532_))
                ((##fx= _g137533_ 3)
                 (apply gx#core-bind-feature!__2 _g137532_))
                ((##fx= _g137533_ 4)
                 (apply gx#core-bind-feature!__% _g137532_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g137532_))))))))
