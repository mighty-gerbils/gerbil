(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1756721296)
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
      (lambda _%$args137450%_
        (apply make-instance gx#module-import::t _%$args137450%_)))
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
      (lambda _%$args137447%_
        (apply make-instance gx#module-export::t _%$args137447%_)))
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
      (lambda _%$args137444%_
        (apply make-instance gx#import-set::t _%$args137444%_)))
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
      (lambda _%$args137441%_
        (apply make-instance gx#export-set::t _%$args137441%_)))
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
      (lambda _%$args137438%_
        (apply make-instance gx#import-expander::t _%$args137438%_)))
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
      (lambda _%$args137435%_
        (apply make-instance gx#export-expander::t _%$args137435%_)))
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
      (lambda _%$args137432%_
        (apply make-instance gx#import-export-expander::t _%$args137432%_)))
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
      (lambda (_%path137429%_ _%fun137430%_)
        (call-with-input-file
         (cons 'path: (cons _%path137429%_ gx#source-file-settings))
         _%fun137430%_)))
    (define gx#module-context:::init!
      (lambda (_%self137412%_
               _%id137413%_
               _%super137414%_
               _%ns137415%_
               _%path137416%_)
        (let ((_%self137419%_ _%self137412%_))
          (if (##fx< '11 (##structure-length _%self137419%_))
              (begin
                (##unchecked-structure-set!
                 _%self137419%_
                 _%id137413%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self137419%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self137419%_
                 _%super137414%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self137419%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self137419%_ '#f '5 '#f '#f)
                (##unchecked-structure-set!
                 _%self137419%_
                 _%ns137415%_
                 '6
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self137419%_
                 _%path137416%_
                 '7
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self137419%_ '() '8 '#f '#f)
                (##unchecked-structure-set! _%self137419%_ '() '9 '#f '#f)
                (##unchecked-structure-set! _%self137419%_ '#f '10 '#f '#f)
                (##unchecked-structure-set! _%self137419%_ '#f '11 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self137419%_
                     '11
                     (##structure-length _%self137419%_))))))
    (__bind-method!__%
     gx#module-context::t
     ':init!
     gx#module-context:::init!
     '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_%self137245%_ _%ctx137246%_ _%root137247%_)
        (let* ((_%self137250%_ _%self137245%_)
               (_%super137266%_
                (let ((_%$e137260%_ _%root137247%_))
                  (if _%$e137260%_
                      _%$e137260%_
                      (let ((_%$e137263%_ (gx#core-context-root__0)))
                        (if _%$e137263%_
                            _%$e137263%_
                            (let ((__obj137494
                                   (##structure gx#root-context::t '#f '#f)))
                              (let ((__constructor137495
                                     (direct-method-ref
                                      gx#root-context::t
                                      __obj137494
                                      ':init!)))
                                (if __constructor137495
                                    (__constructor137495 __obj137494)
                                    (error '"missing constructor method implementation"
                                           'class:
                                           gx#root-context::t
                                           'method:
                                           ':init!)))
                              __obj137494)))))))
          (if _%ctx137246%_
              (let ((_%id137269%_
                     (##structure-ref
                      _%ctx137246%_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_%path137270%_
                     (##structure-ref
                      _%ctx137246%_
                      '7
                      gx#module-context::t
                      '#f))
                    (_%in137271%_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _%ctx137246%_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_%e137272%_
                     (__make-atomic-promise
                      (lambda () (gx#eval-module _%ctx137246%_)))))
                (if (##fx< '8 (##structure-length _%self137250%_))
                    (begin
                      (##unchecked-structure-set!
                       _%self137250%_
                       _%id137269%_
                       '1
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self137250%_
                       (make-hash-table-eq 'size: (##length _%in137271%_))
                       '2
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self137250%_
                       _%super137266%_
                       '3
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self137250%_
                       '#f
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self137250%_
                       '#f
                       '5
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self137250%_
                       _%path137270%_
                       '6
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self137250%_
                       _%in137271%_
                       '7
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self137250%_
                       _%e137272%_
                       '8
                       '#f
                       '#f)
                      '#!void)
                    (error '"struct-instance-init!: too many arguments for struct"
                           _%self137250%_
                           '8
                           (##structure-length _%self137250%_)))
                (##for-each
                 (lambda (_%g137273137275%_)
                   (gx#core-bind-weak-import!__%
                    _%g137273137275%_
                    _%self137250%_))
                 _%in137271%_))
              (if (##fx< '8 (##structure-length _%self137250%_))
                  (begin
                    (##unchecked-structure-set! _%self137250%_ '#f '1 '#f '#f)
                    (##unchecked-structure-set!
                     _%self137250%_
                     (make-hash-table-eq)
                     '2
                     '#f
                     '#f)
                    (##unchecked-structure-set!
                     _%self137250%_
                     _%super137266%_
                     '3
                     '#f
                     '#f)
                    (##unchecked-structure-set! _%self137250%_ '#f '4 '#f '#f)
                    (##unchecked-structure-set! _%self137250%_ '#f '5 '#f '#f)
                    (##unchecked-structure-set! _%self137250%_ '#f '6 '#f '#f)
                    (##unchecked-structure-set! _%self137250%_ '() '7 '#f '#f)
                    (##unchecked-structure-set! _%self137250%_ '#f '8 '#f '#f)
                    '#!void)
                  (error '"struct-instance-init!: too many arguments for struct"
                         _%self137250%_
                         '8
                         (##structure-length _%self137250%_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_%self137281%_ _%ctx137282%_)
        (let ((_%root137284%_ '#f))
          (gx#prelude-context:::init!__%
           _%self137281%_
           _%ctx137282%_
           _%root137284%_))))
    (define gx#prelude-context:::init!
      (lambda _g137500_
        (let ((_g137501_ (##length _g137500_)))
          (cond ((##fx= _g137501_ 2)
                 (apply gx#prelude-context:::init!__0 _g137500_))
                ((##fx= _g137501_ 3)
                 (apply gx#prelude-context:::init!__% _g137500_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g137500_))))))
    (__bind-method!__%
     gx#prelude-context::t
     ':init!
     gx#prelude-context:::init!
     '#f)
    (define gx#import-export-expander-init!
      (lambda (_%self137119%_ _%e137120%_)
        (if (##fx< '3 (##structure-length _%self137119%_))
            (begin
              (##unchecked-structure-set!
               _%self137119%_
               _%e137120%_
               '1
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self137119%_
               (gx#current-expander-context)
               '2
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self137119%_
               (##fx- (gx#current-expander-phi) '1)
               '3
               '#f
               '#f)
              '#!void)
            (error '"struct-instance-init!: too many arguments for struct"
                   _%self137119%_
                   '3
                   (##structure-length _%self137119%_)))))
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
      (lambda (_%g136745136748%_ _%g136746136750%_)
        (gx#core-apply-user-expander__%
         _%g136745136748%_
         _%g136746136750%_
         'apply-import-expander)))
    (__bind-method!__%
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_%g136616136619%_ _%g136617136621%_)
        (gx#core-apply-user-expander__%
         _%g136616136619%_
         _%g136617136621%_
         'apply-export-expander)))
    (__bind-method!__%
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_%ctx136487%_)
        (let* ((_%path136489%_
                (##structure-ref _%ctx136487%_ '7 gx#module-context::t '#f))
               (_%path136491%_
                (if (pair? _%path136489%_)
                    (##last _%path136489%_)
                    _%path136489%_)))
          (if (string? _%path136491%_) _%path136491%_ '#f))))
    (define gx#import-module__%
      (lambda (_%path136463%_ _%reload?136464%_ _%eval?136465%_)
        (let ((_%ctx136467%_
               ((gx#current-expander-module-import)
                _%path136463%_
                _%reload?136464%_)))
          (if (and _%ctx136467%_ _%eval?136465%_)
              (gx#eval-module _%ctx136467%_)
              '#!void)
          _%ctx136467%_)))
    (define gx#import-module__0
      (lambda (_%path136472%_)
        (let* ((_%reload?136474%_ '#f) (_%eval?136476%_ '#f))
          (gx#import-module__%
           _%path136472%_
           _%reload?136474%_
           _%eval?136476%_))))
    (define gx#import-module__1
      (lambda (_%path136478%_ _%reload?136479%_)
        (let ((_%eval?136481%_ '#f))
          (gx#import-module__%
           _%path136478%_
           _%reload?136479%_
           _%eval?136481%_))))
    (define gx#import-module
      (lambda _g137502_
        (let ((_g137503_ (##length _g137502_)))
          (cond ((##fx= _g137503_ 1) (apply gx#import-module__0 _g137502_))
                ((##fx= _g137503_ 2) (apply gx#import-module__1 _g137502_))
                ((##fx= _g137503_ 3) (apply gx#import-module__% _g137502_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g137502_))))))
    (define gx#eval-module
      (lambda (_%mod136460%_)
        ((gx#current-expander-module-eval) _%mod136460%_)))
    (define gx#core-eval-module
      (lambda (_%obj136439%_)
        (letrec ((_%force-e136441%_
                  (lambda (_%getf136455%_ _%e136456%_)
                    (call-with-parameters__1
                     (lambda ()
                       (call-with-parameters__1
                        (lambda () (force (_%getf136455%_ _%e136456%_)))
                        gx#current-expander-phi
                        '0))
                     gx#current-expander-context
                     _%e136456%_))))
          (let _%recur136443%_ ((_%e136445%_ _%obj136439%_))
            (if (##structure-instance-of? _%e136445%_ 'gx#module-context::t)
                (let ()
                  (let ((_%$e136448%_
                         (gx#core-context-prelude__% _%e136445%_)))
                    (if _%$e136448%_ (_%recur136443%_ _%$e136448%_) '#!void))
                  (_%force-e136441%_ gx#module-context-e _%e136445%_))
                (if (##structure-instance-of?
                     _%e136445%_
                     'gx#prelude-context::t)
                    (_%force-e136441%_ gx#prelude-context-e _%e136445%_)
                    (if (gx#stx-string? _%e136445%_)
                        (_%recur136443%_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _%e136445%_)))
                        (if (gx#core-library-module-path? _%e136445%_)
                            (_%recur136443%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%e136445%_)))
                            (error '"cannot eval module" _%obj136439%_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_%ctx136419%_)
        (let _%lp136421%_ ((_%e136423%_ _%ctx136419%_))
          (if (or (##structure-instance-of? _%e136423%_ 'gx#module-context::t)
                  (##structure-instance-of? _%e136423%_ 'gx#local-context::t))
              (_%lp136421%_ (##unchecked-structure-ref _%e136423%_ '3 '#f '#f))
              (if (##structure-instance-of? _%e136423%_ 'gx#prelude-context::t)
                  _%e136423%_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_%ctx136435%_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _%ctx136435%_))))
    (define gx#core-context-prelude
      (lambda _g137504_
        (let ((_g137505_ (##length _g137504_)))
          (cond ((##fx= _g137505_ 0)
                 (apply gx#core-context-prelude__0 _g137504_))
                ((##fx= _g137505_ 1)
                 (apply gx#core-context-prelude__% _g137504_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g137504_))))))
    (define gx#core-module->prelude-context
      (lambda (_%ctx136410%_)
        (let ((_%$e136412%_ (__hash-get gx#__module-registry _%ctx136410%_)))
          (if _%$e136412%_
              _%$e136412%_
              (let ((_%pre136416%_
                     (let ((__obj137496
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
                        __obj137496
                        _%ctx136410%_)
                       __obj137496)))
                (__hash-put! gx#__module-registry _%ctx136410%_ _%pre136416%_)
                _%pre136416%_)))))
    (define gx#core-import-module__%
      (lambda (_%rpath136277%_ _%reload?136278%_)
        (letrec ((_%import-source136280%_
                  (lambda (_%path136369%_)
                    (if (member _%path136369%_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _%path136369%_)
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
                                      (let ((_g137506_
                                             (gx#core-read-module
                                              _%path136369%_)))
                                        (begin
                                          (let ((_g137507_
                                                 (if (##values? _g137506_)
                                                     (##values-length
                                                      _g137506_)
                                                     1)))
                                            (if (not (##fx= _g137507_ 4))
                                                (error "Context expects 4 values"
                                                       _g137507_)))
                                          (let ((_%pre136377%_
                                                 (##values-ref _g137506_ 0))
                                                (_%id136378%_
                                                 (##values-ref _g137506_ 1))
                                                (_%ns136379%_
                                                 (##values-ref _g137506_ 2))
                                                (_%body136380%_
                                                 (##values-ref _g137506_ 3)))
                                            (let* ((_%prelude136390%_
                                                    (if (##structure-instance-of?
                                                         _%pre136377%_
                                                         'gx#prelude-context::t)
                                                        _%pre136377%_
                                                        (if (##structure-instance-of?
                                                             _%pre136377%_
                                                             'gx#module-context::t)
                                                            (gx#core-module->prelude-context
                                                             _%pre136377%_)
                                                            (if (string? _%pre136377%_)
                                                                (gx#core-module->prelude-context
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#core-import-module__0 _%pre136377%_))
                        (if (not _%pre136377%_)
                            (let ((_%$e136386%_
                                   (gx#current-expander-module-prelude)))
                              (if _%$e136386%_
                                  _%$e136386%_
                                  (let ((__obj137497
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
                                     __obj137497
                                     '#f)
                                    __obj137497)))
                            (error '"cannot import module; unknown prelude"
                                   _%rpath136277%_
                                   _%pre136377%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%ctx136392%_
                                                    (let ((__obj137498
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
                                                       __obj137498
                                                       _%id136378%_
                                                       _%prelude136390%_
                                                       _%ns136379%_
                                                       _%path136369%_)
                                                      __obj137498))
                                                   (_%body136394%_
                                                    (gx#core-expand-module-begin
                                                     _%body136380%_
                                                     _%ctx136392%_))
                                                   (_%body136396%_
                                                    (gx#core-quote-syntax__%
                                                     (gx#core-cons
                                                      '%#begin
                                                      _%body136394%_)
                                                     _%path136369%_
                                                     _%ctx136392%_
                                                     '())))
                                              (##unchecked-structure-set!
                                               _%ctx136392%_
                                               (__make-atomic-promise
                                                (lambda ()
                                                  (gx#eval-syntax*
                                                   _%body136396%_)))
                                               '10
                                               '#f
                                               '#f)
                                              (##unchecked-structure-set!
                                               _%ctx136392%_
                                               _%body136396%_
                                               '11
                                               '#f
                                               '#f)
                                              (__hash-put!
                                               gx#__module-registry
                                               _%path136369%_
                                               _%ctx136392%_)
                                              (__hash-put!
                                               gx#__module-registry
                                               _%id136378%_
                                               _%ctx136392%_)
                                              _%ctx136392%_)))))
                                    gx#current-export-expander-phi
                                    '#f))
                                 gx#current-import-expander-phi
                                 '#f))
                              gx#current-expander-path
                              (cons _%path136369%_
                                    (gx#current-expander-path))))
                           gx#current-expander-phi
                           '0))
                        gx#current-expander-marks
                        '()))
                     gx#current-expander-context
                     (gx#core-context-root__0))))
                 (_%import-submodule136281%_
                  (lambda (_%rpath136297%_)
                    (let* ((_%rpath136298136305%_ _%rpath136297%_)
                           (_%E136300136309%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%rpath136298136305%_
                                     '([origin . refs]))
                              '#!void))
                           (_%K136301136357%_
                            (lambda (_%refs136312%_ _%origin136313%_)
                              (let ((_%ctx136315%_
                                     (if _%origin136313%_
                                         (gx#core-import-module__%
                                          _%origin136313%_
                                          _%reload?136278%_)
                                         (gx#current-expander-context))))
                                (let _%lp136317%_ ((_%rest136319%_
                                                    _%refs136312%_)
                                                   (_%ctx136320%_
                                                    _%ctx136315%_))
                                  (let* ((_%rest136321136329%_ _%rest136319%_)
                                         (_%else136323136337%_
                                          (lambda () _%ctx136320%_))
                                         (_%K136325136345%_
                                          (lambda (_%rest136340%_ _%id136341%_)
                                            (let ((_%bind136343%_
                                                   (gx#resolve-identifier__%
                                                    _%id136341%_
                                                    '0
                                                    _%ctx136320%_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _%bind136343%_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _%bind136343%_
                                                         '4
                                                         '#f
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_%lp136317%_
                                                   _%rest136340%_
                                                   (##unchecked-structure-ref
                                                    _%bind136343%_
                                                    '4
                                                    '#f
                                                    '#f))
                                                  (error '"cannot import submodule; not bound as a module"
                                                         _%rpath136297%_
                                                         _%id136341%_
                                                         _%bind136343%_))))))
                                    (if (pair? _%rest136321136329%_)
                                        (let ((_%hd136326136348%_
                                               (##car _%rest136321136329%_))
                                              (_%tl136327136350%_
                                               (##cdr _%rest136321136329%_)))
                                          (let* ((_%id136353%_
                                                  _%hd136326136348%_)
                                                 (_%rest136355%_
                                                  _%tl136327136350%_))
                                            (_%K136325136345%_
                                             _%rest136355%_
                                             _%id136353%_)))
                                        (_%else136323136337%_))))))))
                      (if (pair? _%rpath136298136305%_)
                          (let ((_%hd136302136360%_
                                 (##car _%rpath136298136305%_))
                                (_%tl136303136362%_
                                 (##cdr _%rpath136298136305%_)))
                            (let* ((_%origin136365%_ _%hd136302136360%_)
                                   (_%refs136367%_ _%tl136303136362%_))
                              (_%K136301136357%_
                               _%refs136367%_
                               _%origin136365%_)))
                          (_%E136300136309%_))))))
          (let ((_%$e136283%_
                 (if (not _%reload?136278%_)
                     (__hash-get gx#__module-registry _%rpath136277%_)
                     '#f)))
            (if _%$e136283%_
                _%$e136283%_
                (if (list? _%rpath136277%_)
                    (_%import-submodule136281%_ _%rpath136277%_)
                    (if (gx#core-library-module-path? _%rpath136277%_)
                        (let ((_%ctx136288%_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _%rpath136277%_)
                                _%reload?136278%_)))
                          (__hash-put!
                           gx#__module-registry
                           _%rpath136277%_
                           _%ctx136288%_)
                          _%ctx136288%_)
                        (let* ((_%npath136291%_
                                (path-normalize _%rpath136277%_))
                               (_%$e136293%_
                                (if (not _%reload?136278%_)
                                    (__hash-get
                                     gx#__module-registry
                                     _%npath136291%_)
                                    '#f)))
                          (if _%$e136293%_
                              _%$e136293%_
                              (_%import-source136280%_
                               _%npath136291%_))))))))))
    (define gx#core-import-module__0
      (lambda (_%rpath136403%_)
        (let ((_%reload?136405%_ '#f))
          (gx#core-import-module__% _%rpath136403%_ _%reload?136405%_))))
    (define gx#core-import-module
      (lambda _g137508_
        (let ((_g137509_ (##length _g137508_)))
          (cond ((##fx= _g137509_ 1)
                 (apply gx#core-import-module__0 _g137508_))
                ((##fx= _g137509_ 2)
                 (apply gx#core-import-module__% _g137508_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g137508_))))))
    (define gx#core-read-module
      (lambda (_%path136266%_)
        (__with-catch
         (lambda (_%exn136268%_)
           (if (and (datum-parsing-exception? _%exn136268%_)
                    (eq? (datum-parsing-exception-filepos _%exn136268%_) '0))
               (gx#core-read-module/lang _%path136266%_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _%path136266%_
                (call-with-parameters__1
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_%g136270136272%_)
                      (display-exception__% _%exn136268%_ _%g136270136272%_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _%path136266%_)))))
    (define gx#core-read-module/sexp
      (lambda (_%path136118%_)
        (let _%lp136120%_ ((_%body136122%_
                            (read-syntax-from-file _%path136118%_))
                           (_%pre136123%_ '#f)
                           (_%ns136124%_ '#f)
                           (_%pkg136125%_ '#f))
          (let* ((_%e136126136150%_ _%body136122%_)
                 (_%E136142136176%_
                  (lambda ()
                    (let ((_g137510_
                           (if _%pkg136125%_
                               (values _%pre136123%_
                                       _%ns136124%_
                                       _%pkg136125%_)
                               (gx#core-read-module-package
                                _%path136118%_
                                _%pre136123%_
                                _%ns136124%_))))
                      (begin
                        (let ((_g137511_
                               (if (##values? _g137510_)
                                   (##values-length _g137510_)
                                   1)))
                          (if (not (##fx= _g137511_ 3))
                              (error "Context expects 3 values" _g137511_)))
                        (let ((_%pre136154%_ (##values-ref _g137510_ 0))
                              (_%ns136155%_ (##values-ref _g137510_ 1))
                              (_%pkg136156%_ (##values-ref _g137510_ 2)))
                          (let* ((_%prelude136162%_
                                  (if (gx#core-bound-module-prelude?
                                       _%pre136154%_)
                                      (gx#syntax-local-e__0 _%pre136154%_)
                                      (if (gx#core-library-module-path?
                                           _%pre136154%_)
                                          (gx#core-resolve-library-module-path
                                           _%pre136154%_)
                                          (if (gx#stx-string? _%pre136154%_)
                                              (gx#core-resolve-module-path__%
                                               _%pre136154%_
                                               _%path136118%_)
                                              (gx#stx-e _%pre136154%_)))))
                                 (_%path-id136164%_
                                  (gx#core-module-path->namespace
                                   _%path136118%_))
                                 (_%pkg-id136166%_
                                  (if _%pkg136156%_
                                      (##string-append
                                       _%pkg136156%_
                                       '"/"
                                       _%path-id136164%_)
                                      _%path-id136164%_))
                                 (_%module-id136168%_
                                  (##string->symbol _%pkg-id136166%_))
                                 (_%module-ns136173%_
                                  (if (eq? _%ns136155%_ '#!void)
                                      '#f
                                      (let ((_%$e136170%_ _%ns136155%_))
                                        (if _%$e136170%_
                                            _%$e136170%_
                                            _%pkg-id136166%_)))))
                            (values _%prelude136162%_
                                    _%module-id136168%_
                                    _%module-ns136173%_
                                    _%body136122%_)))))))
                 (_%E136135136208%_
                  (lambda ()
                    (if (gx#stx-pair? _%e136126136150%_)
                        (let ((_%e136143136180%_
                               (gx#syntax-e _%e136126136150%_)))
                          (let ((_%hd136144136183%_ (##car _%e136143136180%_))
                                (_%tl136145136185%_ (##cdr _%e136143136180%_)))
                            (if (eq? (gx#stx-e _%hd136144136183%_) 'package:)
                                (if (gx#stx-pair? _%tl136145136185%_)
                                    (let ((_%e136146136188%_
                                           (gx#syntax-e _%tl136145136185%_)))
                                      (let ((_%hd136147136191%_
                                             (##car _%e136146136188%_))
                                            (_%tl136148136193%_
                                             (##cdr _%e136146136188%_)))
                                        (let* ((_%pkg136196%_
                                                _%hd136147136191%_)
                                               (_%rest136198%_
                                                _%tl136148136193%_)
                                               (_%pkg136206%_
                                                (if (gx#identifier?
                                                     _%pkg136196%_)
                                                    (symbol->string
                                                     (gx#stx-e _%pkg136196%_))
                                                    (if (or (gx#stx-string?
                                                             _%pkg136196%_)
                                                            (gx#stx-false?
                                                             _%pkg136196%_))
                                                        (gx#stx-e
                                                         _%pkg136196%_)
                                                        (gx#raise-syntax-error
                                                         'import
                                                         '"Bad syntax; Illegal package name"
                                                         _%pkg136196%_)))))
                                          (_%lp136120%_
                                           _%rest136198%_
                                           _%pre136123%_
                                           _%ns136124%_
                                           _%pkg136206%_))))
                                    (_%E136142136176%_))
                                (_%E136142136176%_))))
                        (_%E136142136176%_))))
                 (_%E136128136238%_
                  (lambda ()
                    (if (gx#stx-pair? _%e136126136150%_)
                        (let ((_%e136136136212%_
                               (gx#syntax-e _%e136126136150%_)))
                          (let ((_%hd136137136215%_ (##car _%e136136136212%_))
                                (_%tl136138136217%_ (##cdr _%e136136136212%_)))
                            (if (eq? (gx#stx-e _%hd136137136215%_) 'namespace:)
                                (if (gx#stx-pair? _%tl136138136217%_)
                                    (let ((_%e136139136220%_
                                           (gx#syntax-e _%tl136138136217%_)))
                                      (let ((_%hd136140136223%_
                                             (##car _%e136139136220%_))
                                            (_%tl136141136225%_
                                             (##cdr _%e136139136220%_)))
                                        (let* ((_%ns136228%_
                                                _%hd136140136223%_)
                                               (_%rest136230%_
                                                _%tl136141136225%_)
                                               (_%ns136236%_
                                                (if (gx#identifier?
                                                     _%ns136228%_)
                                                    (symbol->string
                                                     (gx#stx-e _%ns136228%_))
                                                    (if (gx#stx-string?
                                                         _%ns136228%_)
                                                        (gx#stx-e _%ns136228%_)
                                                        (if (gx#stx-false?
                                                             _%ns136228%_)
                                                            '#!void
                                                            (gx#raise-syntax-error
                                                             'import
                                                             '"Bad syntax; illegal namespace"
                                                             _%ns136228%_))))))
                                          (_%lp136120%_
                                           _%rest136230%_
                                           _%pre136123%_
                                           _%ns136236%_
                                           _%pkg136125%_))))
                                    (_%E136135136208%_))
                                (_%E136135136208%_))))
                        (_%E136135136208%_))))
                 (_%E136127136262%_
                  (lambda ()
                    (if (gx#stx-pair? _%e136126136150%_)
                        (let ((_%e136129136242%_
                               (gx#syntax-e _%e136126136150%_)))
                          (let ((_%hd136130136245%_ (##car _%e136129136242%_))
                                (_%tl136131136247%_ (##cdr _%e136129136242%_)))
                            (if (eq? (gx#stx-e _%hd136130136245%_) 'prelude:)
                                (if (gx#stx-pair? _%tl136131136247%_)
                                    (let ((_%e136132136250%_
                                           (gx#syntax-e _%tl136131136247%_)))
                                      (let ((_%hd136133136253%_
                                             (##car _%e136132136250%_))
                                            (_%tl136134136255%_
                                             (##cdr _%e136132136250%_)))
                                        (let* ((_%prelude136258%_
                                                _%hd136133136253%_)
                                               (_%rest136260%_
                                                _%tl136134136255%_))
                                          (_%lp136120%_
                                           _%rest136260%_
                                           _%prelude136258%_
                                           _%ns136124%_
                                           _%pkg136125%_))))
                                    (_%E136128136238%_))
                                (_%E136128136238%_))))
                        (_%E136128136238%_)))))
            (_%E136127136262%_)))))
    (define gx#core-read-module/lang
      (lambda (_%path135939%_)
        (letrec ((_%default-read-module-body135941%_
                  (lambda (_%inp136110%_)
                    (let _%lp136112%_ ((_%body136114%_ '()))
                      (let ((_%next136116%_ (read-syntax__% _%inp136110%_)))
                        (if (eof-object? _%next136116%_)
                            (reverse _%body136114%_)
                            (_%lp136112%_
                             (cons _%next136116%_ _%body136114%_)))))))
                 (_%read-body135942%_
                  (lambda (_%inp136027%_
                           _%pre136028%_
                           _%ns136029%_
                           _%pkg136030%_
                           _%args136031%_)
                    (let ((_g137512_
                           (if _%pkg136030%_
                               (values _%pre136028%_
                                       _%ns136029%_
                                       _%pkg136030%_)
                               (gx#core-read-module-package
                                _%path135939%_
                                _%pre136028%_
                                _%ns136029%_))))
                      (begin
                        (let ((_g137513_
                               (if (##values? _g137512_)
                                   (##values-length _g137512_)
                                   1)))
                          (if (not (##fx= _g137513_ 3))
                              (error "Context expects 3 values" _g137513_)))
                        (let ((_%pre136033%_ (##values-ref _g137512_ 0))
                              (_%ns136034%_ (##values-ref _g137512_ 1))
                              (_%pkg136035%_ (##values-ref _g137512_ 2)))
                          (let* ((_%prelude136037%_
                                  (gx#import-module__0 _%pre136033%_))
                                 (_%read-module-body136092%_
                                  (let ((_%$e136083%_
                                         (__find (lambda (_%e136038136040%_)
                                                   (let* ((_%g136042136052%_
                                                           _%e136038136040%_)
                                                          (_%else136044136060%_
                                                           (lambda () '#f))
                                                          (_%K136046136064%_
                                                           (lambda () '#t)))
                                                     (if (##structure-direct-instance-of?
                                                          _%g136042136052%_
                                                          'gx#module-export::t)
                                                         (let* ((_%e136047136067%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##unchecked-structure-ref
                          _%g136042136052%_
                          '1
                          '#f
                          '#f))
                        (_%e136048136070%_
                         (##unchecked-structure-ref
                          _%g136042136052%_
                          '2
                          '#f
                          '#f))
                        (_%e136049136073%_
                         (##unchecked-structure-ref
                          _%g136042136052%_
                          '3
                          '#f
                          '#f)))
                   (if (##eq? _%e136049136073%_ '1)
                       (let ((_%e136050136076%_
                              (##unchecked-structure-ref
                               _%g136042136052%_
                               '4
                               '#f
                               '#f)))
                         (if ((lambda (_%g136078136080%_)
                                (eq? _%g136078136080%_ 'read-module-body))
                              _%e136050136076%_)
                             (_%K136046136064%_)
                             (_%else136044136060%_)))
                       (_%else136044136060%_)))
                 (_%else136044136060%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (##unchecked-structure-ref
                                                  _%prelude136037%_
                                                  '9
                                                  '#f
                                                  '#f))))
                                    (if _%$e136083%_
                                        ((lambda (_%xport136086%_)
                                           (let ((_%proc136089%_
                                                  (__with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _%xport136086%_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _%proc136089%_)
                                                 _%proc136089%_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _%path135939%_
                                                  _%pre136033%_
                                                  _%proc136089%_))))
                                         _%$e136083%_)
                                        _%default-read-module-body135941%_)))
                                 (_%path-id136094%_
                                  (gx#core-module-path->namespace
                                   _%path135939%_))
                                 (_%pkg-id136096%_
                                  (if _%pkg136035%_
                                      (##string-append
                                       _%pkg136035%_
                                       '"/"
                                       _%path-id136094%_)
                                      _%path-id136094%_))
                                 (_%module-id136098%_
                                  (##string->symbol _%pkg-id136096%_))
                                 (_%module-ns136103%_
                                  (let ((_%$e136100%_ _%ns136034%_))
                                    (if _%$e136100%_
                                        _%$e136100%_
                                        _%pkg-id136096%_)))
                                 (_%body136107%_
                                  (call-with-parameters__1
                                   (lambda ()
                                     (call-with-parameters__1
                                      (lambda ()
                                        (_%read-module-body136092%_
                                         _%inp136027%_))
                                      gx#current-module-reader-args
                                      _%args136031%_))
                                   gx#current-module-reader-path
                                   _%path135939%_)))
                            (values _%prelude136037%_
                                    _%module-id136098%_
                                    _%module-ns136103%_
                                    _%body136107%_)))))))
                 (_%string-e135943%_
                  (lambda (_%obj136021%_ _%what136022%_)
                    (if (string? _%obj136021%_)
                        _%obj136021%_
                        (if (symbol? _%obj136021%_)
                            (##symbol->string _%obj136021%_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _%what136022%_)
                             _%path135939%_
                             _%obj136021%_)))))
                 (_%read-lang-args135944%_
                  (lambda (_%inp135976%_ _%args135977%_)
                    (let* ((_%args135978135986%_ _%args135977%_)
                           (_%else135980135994%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _%path135939%_)))
                           (_%K135982136009%_
                            (lambda (_%args135997%_ _%prelude135998%_)
                              (let* ((_%pkg136000%_
                                      (pgetq__0 'package: _%args135997%_))
                                     (_%pkg136002%_
                                      (if _%pkg136000%_
                                          (_%string-e135943%_
                                           _%pkg136000%_
                                           '"package")
                                          '#f))
                                     (_%ns136004%_
                                      (pgetq__0 'namespace: _%args135997%_))
                                     (_%ns136006%_
                                      (if _%ns136004%_
                                          (_%string-e135943%_
                                           _%ns136004%_
                                           '"namespace")
                                          '#f)))
                                (_%read-body135942%_
                                 _%inp135976%_
                                 _%prelude135998%_
                                 _%ns136006%_
                                 _%pkg136002%_
                                 _%args135997%_)))))
                      (if (pair? _%args135978135986%_)
                          (let ((_%hd135983136012%_
                                 (##car _%args135978135986%_))
                                (_%tl135984136014%_
                                 (##cdr _%args135978135986%_)))
                            (let* ((_%prelude136017%_ _%hd135983136012%_)
                                   (_%args136019%_ _%tl135984136014%_))
                              (_%K135982136009%_
                               _%args136019%_
                               _%prelude136017%_)))
                          (_%else135980135994%_)))))
                 (_%read-lang135945%_
                  (lambda (_%inp135950%_)
                    (let* ((_%head135952%_ (read-line _%inp135950%_))
                           (_%$e135954%_
                            (string-index__0 _%head135952%_ '#\space)))
                      (if _%$e135954%_
                          ((lambda (_%ix135957%_)
                             (let ((_%lang135959%_
                                    (substring
                                     _%head135952%_
                                     '0
                                     _%ix135957%_)))
                               (if (equal? _%lang135959%_ '"#lang")
                                   (let* ((_%rest135961%_
                                           (substring
                                            _%head135952%_
                                            (##fx+ _%ix135957%_ '1)
                                            (string-length _%head135952%_)))
                                          (_%args135972%_
                                           (__with-catch
                                            (lambda (_%g135962135964%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _%path135939%_
                                               _%g135962135964%_))
                                            (lambda ()
                                              (call-with-input-string
                                               _%rest135961%_
                                               (lambda (_%g135967135969%_)
                                                 (read-all
                                                  _%g135967135969%_
                                                  read)))))))
                                     (_%read-lang-args135944%_
                                      _%inp135950%_
                                      _%args135972%_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _%path135939%_))))
                           _%$e135954%_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _%path135939%_)))))
                 (_%read-e135946%_
                  (lambda (_%inp135948%_)
                    (if (eq? (peek-char _%inp135948%_) '#\#)
                        (_%read-lang135945%_ _%inp135948%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _%path135939%_)))))
          (gx#call-with-input-source-file _%path135939%_ _%read-e135946%_))))
    (define gx#core-read-module-package
      (lambda (_%path135887%_ _%pre135888%_ _%ns135889%_)
        (letrec ((_%string-e135891%_
                  (lambda (_%e135934%_)
                    (if (symbol? _%e135934%_)
                        (##symbol->string _%e135934%_)
                        (if (string? _%e135934%_)
                            _%e135934%_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%e135934%_))))))
          (let _%lp135893%_ ((_%dir135895%_ (path-directory _%path135887%_))
                             (_%pkg-path135896%_ '()))
            (let ((_%gerbil.pkg135898%_
                   (path-expand '"gerbil.pkg" _%dir135895%_)))
              (if (##file-exists? _%gerbil.pkg135898%_)
                  (let ((_%plist135900%_
                         (gx#core-library-package-plist__% _%dir135895%_ '#t)))
                    (if (null? _%plist135900%_)
                        (let ((_%pkg135903%_
                               (if (null? _%pkg-path135896%_)
                                   '#f
                                   (string-join _%pkg-path135896%_ '"/"))))
                          (values _%pre135888%_ _%ns135889%_ _%pkg135903%_))
                        (if (list? _%plist135900%_)
                            (let* ((_%root135906%_
                                    (pgetq__0 'package: _%plist135900%_))
                                   (_%pkg135910%_
                                    (let ((_%pkg-path135908%_
                                           (if _%root135906%_
                                               (cons (_%string-e135891%_
                                                      _%root135906%_)
                                                     _%pkg-path135896%_)
                                               _%pkg-path135896%_)))
                                      (if (null? _%pkg-path135908%_)
                                          '#f
                                          (string-join
                                           _%pkg-path135908%_
                                           '"/"))))
                                   (_%ns135917%_
                                    (let ((_%ns135915%_
                                           (let ((_%$e135912%_ _%ns135889%_))
                                             (if _%$e135912%_
                                                 _%$e135912%_
                                                 (pgetq__0
                                                  'namespace:
                                                  _%plist135900%_)))))
                                      (if _%ns135915%_
                                          (_%string-e135891%_ _%ns135915%_)
                                          '#f)))
                                   (_%pre135922%_
                                    (let ((_%$e135919%_ _%pre135888%_))
                                      (if _%$e135919%_
                                          _%$e135919%_
                                          (pgetq__0
                                           'prelude:
                                           _%plist135900%_)))))
                              (values _%pre135922%_
                                      _%ns135917%_
                                      _%pkg135910%_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%plist135900%_))))
                  (let ((_%dir*135926%_
                         (path-strip-trailing-directory-separator
                          _%dir135895%_)))
                    (if (or (__string-empty? _%dir*135926%_)
                            (equal? _%dir135895%_ _%dir*135926%_))
                        (values _%pre135888%_ _%ns135889%_ '#f)
                        (let ((_%xpath135931%_
                               (path-strip-directory _%dir*135926%_))
                              (_%xdir135932%_ (path-directory _%dir*135926%_)))
                          (_%lp135893%_
                           _%xdir135932%_
                           (cons _%xpath135931%_ _%pkg-path135896%_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_%path135885%_)
        (path-strip-extension (path-strip-directory _%path135885%_))))
    (define gx#core-module-path->id
      (lambda (_%path135883%_)
        (##string->symbol (gx#core-module-path->namespace _%path135883%_))))
    (define gx#core-resolve-module-path__%
      (lambda (_%stx-path135862%_ _%rel135863%_)
        (let* ((_%path135865%_ (gx#stx-e _%stx-path135862%_))
               (_%path135867%_
                (if (__string-empty? (path-extension _%path135865%_))
                    (##string-append _%path135865%_ '".ss")
                    _%path135865%_)))
          (gx#core-resolve-path__%
           _%path135867%_
           (let ((_%$e135870%_ (gx#stx-source _%stx-path135862%_)))
             (if _%$e135870%_ _%$e135870%_ _%rel135863%_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_%stx-path135876%_)
        (let ((_%rel135878%_ '#f))
          (gx#core-resolve-module-path__% _%stx-path135876%_ _%rel135878%_))))
    (define gx#core-resolve-module-path
      (lambda _g137514_
        (let ((_g137515_ (##length _g137514_)))
          (cond ((##fx= _g137515_ 1)
                 (apply gx#core-resolve-module-path__0 _g137514_))
                ((##fx= _g137515_ 2)
                 (apply gx#core-resolve-module-path__% _g137514_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g137514_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_%libpath135747%_)
        (let* ((_%spath135749%_ (symbol->string (gx#stx-e _%libpath135747%_)))
               (_%spath135751%_
                (substring
                 _%spath135749%_
                 '1
                 (##string-length _%spath135749%_)))
               (_%ext135753%_ (path-extension _%spath135751%_))
               (_%ssi135755%_
                (if (__string-empty? _%ext135753%_)
                    (##string-append _%spath135751%_ '".ssi")
                    (##string-append
                     (path-strip-extension _%spath135751%_)
                     '".ssi")))
               (_%srcs135759%_
                (if (__string-empty? _%ext135753%_)
                    (##map (lambda (_%ext135757%_)
                             (string-append _%spath135751%_ _%ext135757%_))
                           '(".ss" ".sld" ".scm"))
                    (cons _%spath135751%_ '()))))
          (let _%lp135762%_ ((_%rest135764%_ (load-path)))
            (let* ((_%rest135765135774%_ _%rest135764%_)
                   (_%E135768135778%_
                    (lambda ()
                      (error '"No clause matching"
                             _%rest135765135774%_
                             '([dir . rest])
                             '([]))
                      '#!void)))
              (let ((_%K135770135849%_
                     (lambda (_%rest135789%_ _%dir135790%_)
                       (letrec ((_%resolve135792%_
                                 (lambda (_%ssi135805%_ _%srcs135806%_)
                                   (let ((_%compiled-path135808%_
                                          (path-expand
                                           _%ssi135805%_
                                           _%dir135790%_)))
                                     (if (##file-exists?
                                          _%compiled-path135808%_)
                                         (path-normalize
                                          _%compiled-path135808%_)
                                         (let _%lpr135810%_ ((_%rest-src135812%_
                                                              _%srcs135806%_))
                                           (let* ((_%rest-src135813135821%_
                                                   _%rest-src135812%_)
                                                  (_%else135815135829%_
                                                   (lambda ()
                                                     (_%lp135762%_
                                                      _%rest135789%_)))
                                                  (_%K135817135837%_
                                                   (lambda (_%rest-src135832%_
                                                            _%src135833%_)
                                                     (let ((_%src-path135835%_
                                                            (path-expand
                                                             _%src135833%_
                                                             _%dir135790%_)))
                                                       (if (##file-exists?
                                                            _%src-path135835%_)
                                                           (path-normalize
                                                            _%src-path135835%_)
                                                           (_%lpr135810%_
                                                            _%rest-src135832%_))))))
                                             (if (pair? _%rest-src135813135821%_)
                                                 (let ((_%hd135818135840%_
                                                        (##car _%rest-src135813135821%_))
                                                       (_%tl135819135842%_
                                                        (##cdr _%rest-src135813135821%_)))
                                                   (let* ((_%src135845%_
                                                           _%hd135818135840%_)
                                                          (_%rest-src135847%_
                                                           _%tl135819135842%_))
                                                     (_%K135817135837%_
                                                      _%rest-src135847%_
                                                      _%src135845%_)))
                                                 (_%else135815135829%_)))))))))
                         (let ((_%$e135794%_
                                (gx#core-library-package-path-prefix
                                 _%dir135790%_)))
                           (if _%$e135794%_
                               ((lambda (_%prefix135797%_)
                                  (if (string-prefix?
                                       _%prefix135797%_
                                       _%spath135751%_)
                                      (let ((_%ssi135801%_
                                             (substring
                                              _%ssi135755%_
                                              (string-length _%prefix135797%_)
                                              (##string-length _%ssi135755%_)))
                                            (_%srcs135802%_
                                             (##map (lambda (_%src135799%_)
                                                      (substring
                                                       _%src135799%_
                                                       (string-length
                                                        _%prefix135797%_)
                                                       (string-length
                                                        _%src135799%_)))
                                                    _%srcs135759%_)))
                                        (_%resolve135792%_
                                         _%ssi135801%_
                                         _%srcs135802%_))
                                      (_%lp135762%_ _%rest135789%_)))
                                _%$e135794%_)
                               (_%resolve135792%_
                                _%ssi135755%_
                                _%srcs135759%_))))))
                    (_%K135769135783%_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"cannot find library module"
                        _%libpath135747%_))))
                (let ((_%try-match135767135786%_
                       (lambda ()
                         (if (null? _%rest135765135774%_)
                             (_%K135769135783%_)
                             (_%E135768135778%_)))))
                  (if (pair? _%rest135765135774%_)
                      (let ((_%tl135772135854%_ (##cdr _%rest135765135774%_))
                            (_%hd135771135852%_ (##car _%rest135765135774%_)))
                        (let ((_%dir135857%_ _%hd135771135852%_)
                              (_%rest135859%_ _%tl135772135854%_))
                          (_%K135770135849%_ _%rest135859%_ _%dir135857%_)))
                      (_%try-match135767135786%_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_%modpath135715%_)
        (letrec ((_%resolve135717%_
                  (lambda (_%path135738%_ _%base135739%_)
                    (let ((_%$e135741%_
                           (string-rindex__0 _%base135739%_ '#\/)))
                      (if _%$e135741%_
                          ((lambda (_%idx135744%_)
                             (gx#core-resolve-library-module-path
                              (##string->symbol
                               (string-append
                                '":"
                                (substring _%base135739%_ '0 _%idx135744%_)
                                '"/"
                                _%path135738%_))))
                           _%$e135741%_)
                          (gx#core-resolve-library-module-path
                           (##string->symbol
                            (string-append '":" _%path135738%_))))))))
          (let ((_%spath135719%_ (symbol->string (gx#stx-e _%modpath135715%_)))
                (_%mod135720%_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _%mod135720%_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"cannot resolve relative module path; not in module context"
                 _%modpath135715%_))
            (let ((_%mpath135722%_
                   (symbol->string
                    (##structure-ref
                     _%mod135720%_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _%lp135724%_ ((_%spath135726%_ _%spath135719%_)
                                 (_%mpath135727%_ _%mpath135722%_))
                (if (string-prefix? '"../" _%spath135726%_)
                    (let ((_%$e135730%_
                           (string-rindex__0 _%mpath135727%_ '#\/)))
                      (if _%$e135730%_
                          ((lambda (_%idx135733%_)
                             (_%lp135724%_
                              (substring
                               _%spath135726%_
                               '3
                               (string-length _%spath135726%_))
                              (substring _%mpath135727%_ '0 _%idx135733%_)))
                           _%$e135730%_)
                          (gx#raise-syntax-error
                           '#f
                           '"cannot resolve relative module path; illegal traversal"
                           _%modpath135715%_)))
                    (if (string-prefix? '"./" _%spath135726%_)
                        (_%lp135724%_
                         (substring
                          _%spath135726%_
                          '2
                          (string-length _%spath135726%_))
                         _%mpath135727%_)
                        (_%resolve135717%_
                         _%spath135726%_
                         _%mpath135727%_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_%dir135707%_)
        (let ((_%$e135709%_
               (pgetq__0
                'package:
                (gx#core-library-package-plist__0 _%dir135707%_))))
          (if _%$e135709%_
              ((lambda (_%pkg135712%_)
                 (##string-append (symbol->string _%pkg135712%_) '"/"))
               _%$e135709%_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_%dir135677%_ _%exists?135678%_)
        (let ((_%$e135680%_ (__hash-get gx#__module-pkg-cache _%dir135677%_)))
          (if _%$e135680%_
              _%$e135680%_
              (let* ((_%gerbil.pkg135684%_
                      (path-expand '"gerbil.pkg" _%dir135677%_))
                     (_%plist135694%_
                      (if (or _%exists?135678%_
                              (##file-exists? _%gerbil.pkg135684%_))
                          (let ((_%e135689%_
                                 (gx#call-with-input-source-file
                                  _%gerbil.pkg135684%_
                                  read)))
                            (if (eof-object? _%e135689%_)
                                '()
                                (if (list? _%e135689%_)
                                    _%e135689%_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _%gerbil.pkg135684%_
                                     _%e135689%_))))
                          '())))
                (__hash-put!
                 gx#__module-pkg-cache
                 _%dir135677%_
                 _%plist135694%_)
                _%plist135694%_)))))
    (define gx#core-library-package-plist__0
      (lambda (_%dir135700%_)
        (let ((_%exists?135702%_ '#f))
          (gx#core-library-package-plist__% _%dir135700%_ _%exists?135702%_))))
    (define gx#core-library-package-plist
      (lambda _g137516_
        (let ((_g137517_ (##length _g137516_)))
          (cond ((##fx= _g137517_ 1)
                 (apply gx#core-library-package-plist__0 _g137516_))
                ((##fx= _g137517_ 2)
                 (apply gx#core-library-package-plist__% _g137516_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g137516_))))))
    (define gx#core-library-module-path?
      (lambda (_%stx135674%_)
        (gx#core-special-module-path? _%stx135674%_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_%stx135672%_)
        (gx#core-special-module-path? _%stx135672%_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_%stx135667%_ _%char135668%_)
        (if (gx#identifier? _%stx135667%_)
            (if (interned-symbol? (gx#stx-e _%stx135667%_))
                (let ((_%str135670%_
                       (symbol->string (gx#stx-e _%stx135667%_))))
                  (if (##fx> (##string-length _%str135670%_) '1)
                      (eq? (string-ref _%str135670%_ '0) _%char135668%_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_%stx135661%_)
        (gx#core-bound-identifier?__%
         _%stx135661%_
         (lambda (_%g135662135664%_)
           (gx#expander-binding?__% _%g135662135664%_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_%stx135655%_)
        (gx#core-bound-identifier?__%
         _%stx135655%_
         (lambda (_%g135656135658%_)
           (gx#expander-binding?__% _%g135656135658%_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_%stx135642%_)
        (letrec ((_%module-prelude?135644%_
                  (lambda (_%e135650%_)
                    (let ((_%$e135652%_
                           (##structure-instance-of?
                            _%e135650%_
                            'gx#module-context::t)))
                      (if _%$e135652%_
                          _%$e135652%_
                          (##structure-instance-of?
                           _%e135650%_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _%stx135642%_
           (lambda (_%g135645135647%_)
             (gx#expander-binding?__%
              _%g135645135647%_
              _%module-prelude?135644%_))))))
    (define gx#core-bind-import!__%
      (lambda (_%in135572%_ _%ctx135573%_ _%force-weak?135574%_)
        (let* ((_%in135575135584%_ _%in135572%_)
               (_%E135577135588%_
                (lambda ()
                  (error '"No clause matching"
                         _%in135575135584%_
                         '((module-import source key phi weak?)))
                  '#!void))
               (_%K135578135601%_
                (lambda (_%weak?135591%_
                         _%phi135592%_
                         _%key135593%_
                         _%source135594%_)
                  (gx#core-bind!__%
                   _%key135593%_
                   (let ((_%e135596%_
                          (gx#core-resolve-module-export _%source135594%_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref _%e135596%_ '1 '#f '#f)
                      _%key135593%_
                      _%phi135592%_
                      _%e135596%_
                      (##unchecked-structure-ref _%source135594%_ '1 '#f '#f)
                      (let ((_%$e135598%_ _%force-weak?135574%_))
                        (if _%$e135598%_ _%$e135598%_ _%weak?135591%_))))
                   gx#core-context-rebind?
                   _%phi135592%_
                   _%ctx135573%_))))
          (if (##structure-direct-instance-of?
               _%in135575135584%_
               'gx#module-import::t)
              (let* ((_%e135579135604%_
                      (##unchecked-structure-ref
                       _%in135575135584%_
                       '1
                       '#f
                       '#f))
                     (_%source135607%_ _%e135579135604%_)
                     (_%e135580135609%_
                      (##unchecked-structure-ref
                       _%in135575135584%_
                       '2
                       '#f
                       '#f))
                     (_%key135612%_ _%e135580135609%_)
                     (_%e135581135614%_
                      (##unchecked-structure-ref
                       _%in135575135584%_
                       '3
                       '#f
                       '#f))
                     (_%phi135617%_ _%e135581135614%_)
                     (_%e135582135619%_
                      (##unchecked-structure-ref
                       _%in135575135584%_
                       '4
                       '#f
                       '#f))
                     (_%weak?135622%_ _%e135582135619%_))
                (_%K135578135601%_
                 _%weak?135622%_
                 _%phi135617%_
                 _%key135612%_
                 _%source135607%_))
              (_%E135577135588%_)))))
    (define gx#core-bind-import!__0
      (lambda (_%in135627%_)
        (let* ((_%ctx135629%_ (gx#current-expander-context))
               (_%force-weak?135631%_ '#f))
          (gx#core-bind-import!__%
           _%in135627%_
           _%ctx135629%_
           _%force-weak?135631%_))))
    (define gx#core-bind-import!__1
      (lambda (_%in135633%_ _%ctx135634%_)
        (let ((_%force-weak?135636%_ '#f))
          (gx#core-bind-import!__%
           _%in135633%_
           _%ctx135634%_
           _%force-weak?135636%_))))
    (define gx#core-bind-import!
      (lambda _g137518_
        (let ((_g137519_ (##length _g137518_)))
          (cond ((##fx= _g137519_ 1) (apply gx#core-bind-import!__0 _g137518_))
                ((##fx= _g137519_ 2) (apply gx#core-bind-import!__1 _g137518_))
                ((##fx= _g137519_ 3) (apply gx#core-bind-import!__% _g137518_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g137518_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_%in135558%_ _%ctx135559%_)
        (gx#core-bind-import!__% _%in135558%_ _%ctx135559%_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_%in135564%_)
        (let ((_%ctx135566%_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _%in135564%_ _%ctx135566%_))))
    (define gx#core-bind-weak-import!
      (lambda _g137520_
        (let ((_g137521_ (##length _g137520_)))
          (cond ((##fx= _g137521_ 1)
                 (apply gx#core-bind-weak-import!__0 _g137520_))
                ((##fx= _g137521_ 2)
                 (apply gx#core-bind-weak-import!__% _g137520_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g137520_))))))
    (define gx#core-resolve-module-export
      (lambda (_%out135449%_)
        (letrec ((_%subst135451%_
                  (lambda (_%key135497%_)
                    (let* ((_%key135498135506%_ _%key135497%_)
                           (_%else135500135514%_ (lambda () _%key135497%_))
                           (_%K135502135545%_
                            (lambda (_%mark135517%_ _%id135518%_)
                              (let* ((_%mark135519135525%_ _%mark135517%_)
                                     (_%E135521135529%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark135519135525%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K135522135537%_
                                      (lambda (_%subst135532%_)
                                        (let ((_%$e135534%_
                                               (if _%subst135532%_
                                                   (hash-get
                                                    _%subst135532%_
                                                    _%id135518%_)
                                                   '#f)))
                                          (if _%$e135534%_
                                              _%$e135534%_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _%key135497%_))))))
                                (if (##structure-instance-of?
                                     _%mark135519135525%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e135523135540%_
                                            (##unchecked-structure-ref
                                             _%mark135519135525%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst135543%_ _%e135523135540%_))
                                      (_%K135522135537%_ _%subst135543%_))
                                    (_%E135521135529%_))))))
                      (if (pair? _%key135498135506%_)
                          (let ((_%hd135503135548%_
                                 (##car _%key135498135506%_))
                                (_%tl135504135550%_
                                 (##cdr _%key135498135506%_)))
                            (let* ((_%id135553%_ _%hd135503135548%_)
                                   (_%mark135555%_ _%tl135504135550%_))
                              (_%K135502135545%_ _%mark135555%_ _%id135553%_)))
                          (_%else135500135514%_))))))
          (let* ((_%out135452135462%_ _%out135449%_)
                 (_%E135454135466%_
                  (lambda ()
                    (error '"No clause matching"
                           _%out135452135462%_
                           '((module-export ctx key phi _ _)))
                    '#!void))
                 (_%K135455135473%_
                  (lambda (_%phi135469%_ _%key135470%_ _%ctx135471%_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _%ctx135471%_ _%phi135469%_)
                     (_%subst135451%_ _%key135470%_)))))
            (if (##structure-direct-instance-of?
                 _%out135452135462%_
                 'gx#module-export::t)
                (let* ((_%e135456135476%_
                        (##unchecked-structure-ref
                         _%out135452135462%_
                         '1
                         '#f
                         '#f))
                       (_%ctx135479%_ _%e135456135476%_)
                       (_%e135457135481%_
                        (##unchecked-structure-ref
                         _%out135452135462%_
                         '2
                         '#f
                         '#f))
                       (_%key135484%_ _%e135457135481%_)
                       (_%e135458135486%_
                        (##unchecked-structure-ref
                         _%out135452135462%_
                         '3
                         '#f
                         '#f))
                       (_%phi135489%_ _%e135458135486%_)
                       (_%e135459135491%_
                        (##unchecked-structure-ref
                         _%out135452135462%_
                         '4
                         '#f
                         '#f))
                       (_%e135460135494%_
                        (##unchecked-structure-ref
                         _%out135452135462%_
                         '5
                         '#f
                         '#f)))
                  (_%K135455135473%_
                   _%phi135489%_
                   _%key135484%_
                   _%ctx135479%_))
                (_%E135454135466%_))))))
    (define gx#core-module-export->import__%
      (lambda (_%out135374%_ _%rename135375%_ _%dphi135376%_)
        (let* ((_%out135377135387%_ _%out135374%_)
               (_%E135379135391%_
                (lambda ()
                  (error '"No clause matching"
                         _%out135377135387%_
                         '((module-export ctx key phi name weak?)))
                  '#!void))
               (_%K135380135403%_
                (lambda (_%weak?135394%_
                         _%name135395%_
                         _%phi135396%_
                         _%key135397%_
                         _%ctx135398%_)
                  (##structure
                   gx#module-import::t
                   _%out135374%_
                   (let ((_%$e135400%_ _%rename135375%_))
                     (if _%$e135400%_ _%$e135400%_ _%name135395%_))
                   (fx+ _%phi135396%_ _%dphi135376%_)
                   _%weak?135394%_))))
          (if (##structure-direct-instance-of?
               _%out135377135387%_
               'gx#module-export::t)
              (let* ((_%e135381135406%_
                      (##unchecked-structure-ref
                       _%out135377135387%_
                       '1
                       '#f
                       '#f))
                     (_%ctx135409%_ _%e135381135406%_)
                     (_%e135382135411%_
                      (##unchecked-structure-ref
                       _%out135377135387%_
                       '2
                       '#f
                       '#f))
                     (_%key135414%_ _%e135382135411%_)
                     (_%e135383135416%_
                      (##unchecked-structure-ref
                       _%out135377135387%_
                       '3
                       '#f
                       '#f))
                     (_%phi135419%_ _%e135383135416%_)
                     (_%e135384135421%_
                      (##unchecked-structure-ref
                       _%out135377135387%_
                       '4
                       '#f
                       '#f))
                     (_%name135424%_ _%e135384135421%_)
                     (_%e135385135426%_
                      (##unchecked-structure-ref
                       _%out135377135387%_
                       '5
                       '#f
                       '#f))
                     (_%weak?135429%_ _%e135385135426%_))
                (_%K135380135403%_
                 _%weak?135429%_
                 _%name135424%_
                 _%phi135419%_
                 _%key135414%_
                 _%ctx135409%_))
              (_%E135379135391%_)))))
    (define gx#core-module-export->import__0
      (lambda (_%out135434%_)
        (let* ((_%rename135436%_ '#f) (_%dphi135438%_ '0))
          (gx#core-module-export->import__%
           _%out135434%_
           _%rename135436%_
           _%dphi135438%_))))
    (define gx#core-module-export->import__1
      (lambda (_%out135440%_ _%rename135441%_)
        (let ((_%dphi135443%_ '0))
          (gx#core-module-export->import__%
           _%out135440%_
           _%rename135441%_
           _%dphi135443%_))))
    (define gx#core-module-export->import
      (lambda _g137522_
        (let ((_g137523_ (##length _g137522_)))
          (cond ((##fx= _g137523_ 1)
                 (apply gx#core-module-export->import__0 _g137522_))
                ((##fx= _g137523_ 2)
                 (apply gx#core-module-export->import__1 _g137522_))
                ((##fx= _g137523_ 3)
                 (apply gx#core-module-export->import__% _g137522_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g137522_))))))
    (define gx#core-expand-module%
      (lambda (_%stx135273%_)
        (letrec ((_%make-context135275%_
                  (lambda (_%id135352%_)
                    (let* ((_%super135354%_ (gx#current-expander-context))
                           (_%bind-id135356%_ (gx#stx-e _%id135352%_))
                           (_%mod-id135358%_
                            (if (##structure-instance-of?
                                 _%super135354%_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##unchecked-structure-ref
                                  _%super135354%_
                                  '1
                                  '#f
                                  '#f)
                                 '"~"
                                 _%bind-id135356%_)
                                _%bind-id135356%_))
                           (_%ns135360%_ (symbol->string _%mod-id135358%_))
                           (_%path135370%_
                            (if (##structure-instance-of?
                                 _%super135354%_
                                 'gx#module-context::t)
                                (let ((_%path135362%_
                                       (##unchecked-structure-ref
                                        _%super135354%_
                                        '7
                                        '#f
                                        '#f)))
                                  (if (or (pair? _%path135362%_)
                                          (null? _%path135362%_))
                                      (cons _%bind-id135356%_ _%path135362%_)
                                      (if (not _%path135362%_)
                                          _%bind-id135356%_
                                          (cons _%bind-id135356%_
                                                (cons _%path135362%_ '())))))
                                _%bind-id135356%_))
                           (__obj137499
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
                       __obj137499
                       _%mod-id135358%_
                       _%super135354%_
                       _%ns135360%_
                       _%path135370%_)
                      __obj137499)))
                 (_%valid-module-id?135276%_
                  (lambda (_%id135327%_)
                    (let* ((_%str135329%_ (symbol->string _%id135327%_))
                           (_%len135331%_ (##string-length _%str135329%_)))
                      (if (##fx>= _%len135331%_ '1)
                          (let _%loop135334%_ ((_%index135336%_
                                                (##fx- (##string-length
                                                        _%str135329%_)
                                                       '1)))
                            (if (##fx>= _%index135336%_ '0)
                                (let ((_%c135338%_
                                       (string-ref
                                        _%str135329%_
                                        _%index135336%_)))
                                  (if (or (and (##char>=? _%c135338%_ '#\a)
                                               (##char<=? _%c135338%_ '#\z))
                                          (and (##char>=? _%c135338%_ '#\A)
                                               (##char<=? _%c135338%_ '#\Z))
                                          (and (##char>=? _%c135338%_ '#\0)
                                               (##char<=? _%c135338%_ '#\9))
                                          (##char=? _%c135338%_ '#\_)
                                          (##char=? _%c135338%_ '#\-))
                                      (_%loop135334%_
                                       (##fx- _%index135336%_ '1))
                                      '#f))
                                '#t))
                          '#f)))))
          (let* ((_%e135277135287%_ _%stx135273%_)
                 (_%E135279135291%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e135277135287%_)))
                 (_%E135278135323%_
                  (lambda ()
                    (if (gx#stx-pair? _%e135277135287%_)
                        (let ((_%e135280135295%_
                               (gx#syntax-e _%e135277135287%_)))
                          (let ((_%hd135281135298%_ (##car _%e135280135295%_))
                                (_%tl135282135300%_ (##cdr _%e135280135295%_)))
                            (if (gx#stx-pair? _%tl135282135300%_)
                                (let ((_%e135283135303%_
                                       (gx#syntax-e _%tl135282135300%_)))
                                  (let ((_%hd135284135306%_
                                         (##car _%e135283135303%_))
                                        (_%tl135285135308%_
                                         (##cdr _%e135283135303%_)))
                                    (let* ((_%id135311%_ _%hd135284135306%_)
                                           (_%body135313%_ _%tl135285135308%_))
                                      (if (and (gx#identifier? _%id135311%_)
                                               (gx#stx-list? _%body135313%_))
                                          (if (_%valid-module-id?135276%_
                                               (gx#stx-e
                                                (gx#datum->syntax__0 '#f 'id)))
                                              (let* ((_%ctx135315%_
                                                      (_%make-context135275%_
                                                       _%id135311%_))
                                                     (_%body135317%_
                                                      (gx#core-expand-module-begin
                                                       _%body135313%_
                                                       _%ctx135315%_))
                                                     (_%body135319%_
                                                      (gx#core-quote-syntax__1
                                                       (gx#core-cons
                                                        '%#begin
                                                        _%body135317%_)
                                                       (gx#stx-source
                                                        _%stx135273%_))))
                                                (##unchecked-structure-set!
                                                 _%ctx135315%_
                                                 (__make-atomic-promise
                                                  (lambda ()
                                                    (gx#eval-syntax*
                                                     _%body135319%_)))
                                                 '10
                                                 '#f
                                                 '#f)
                                                (##unchecked-structure-set!
                                                 _%ctx135315%_
                                                 _%body135319%_
                                                 '11
                                                 '#f
                                                 '#f)
                                                (gx#core-bind-syntax!__0
                                                 _%id135311%_
                                                 _%ctx135315%_)
                                                (gx#core-quote-syntax__1
                                                 (gx#core-list
                                                  '%#module
                                                  (gx#core-quote-syntax__0
                                                   _%id135311%_)
                                                  _%body135319%_)
                                                 (gx#stx-source
                                                  _%stx135273%_)))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"invalid module id; allowed characters are A-Z,a-z,0-9,_,-"
                                               _%stx135273%_
                                               (gx#datum->syntax__0 '#f 'id)))
                                          (_%E135279135291%_)))))
                                (_%E135279135291%_))))
                        (_%E135279135291%_)))))
            (_%E135278135323%_)))))
    (define gx#core-expand-module-begin
      (lambda (_%body135238%_ _%ctx135239%_)
        (call-with-parameters__1
         (lambda ()
           (call-with-parameters__1
            (lambda ()
              (gx#core-bind-feature!__1 'gerbil-module '#t)
              (let* ((_%stx135243%_
                      (gx#core-expand-head
                       (cons '%%begin-module _%body135238%_)))
                     (_%e135244135251%_ _%stx135243%_)
                     (_%E135246135255%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module body expansion"
                         _%stx135243%_)))
                     (_%E135245135269%_
                      (lambda ()
                        (if (gx#stx-pair? _%e135244135251%_)
                            (let ((_%e135247135259%_
                                   (gx#syntax-e _%e135244135251%_)))
                              (let ((_%hd135248135262%_
                                     (##car _%e135247135259%_))
                                    (_%tl135249135264%_
                                     (##cdr _%e135247135259%_)))
                                (if (and (gx#identifier? _%hd135248135262%_)
                                         (gx#core-identifier=?
                                          _%hd135248135262%_
                                          '%#begin-module))
                                    (let ((_%body135267%_ _%tl135249135264%_))
                                      (if (gx#sealed-syntax? _%stx135243%_)
                                          _%body135267%_
                                          (gx#core-expand-module-body
                                           _%body135267%_)))
                                    (_%E135246135255%_))))
                            (_%E135246135255%_)))))
                (_%E135245135269%_)))
            gx#current-expander-phi
            '0))
         gx#current-expander-context
         _%ctx135239%_)))
    (define gx#core-expand-module-body
      (lambda (_%body135034%_)
        (letrec ((_%expand-special135036%_
                  (lambda (_%hd135165%_ _%K135166%_ _%rest135167%_ _%r135168%_)
                    (let* ((_%e135169135186%_ _%hd135165%_)
                           (_%E135181135190%_
                            (lambda ()
                              (_%K135166%_
                               _%rest135167%_
                               (cons (gx#core-expand-top _%hd135165%_)
                                     _%r135168%_))))
                           (_%E135171135202%_
                            (lambda ()
                              (if (gx#stx-pair? _%e135169135186%_)
                                  (let ((_%e135182135194%_
                                         (gx#syntax-e _%e135169135186%_)))
                                    (let ((_%hd135183135197%_
                                           (##car _%e135182135194%_))
                                          (_%tl135184135199%_
                                           (##cdr _%e135182135194%_)))
                                      (if (and (gx#identifier?
                                                _%hd135183135197%_)
                                               (gx#core-identifier=?
                                                _%hd135183135197%_
                                                '%#export))
                                          (_%K135166%_
                                           _%rest135167%_
                                           (cons _%hd135165%_ _%r135168%_))
                                          (_%E135181135190%_))))
                                  (_%E135181135190%_))))
                           (_%E135170135234%_
                            (lambda ()
                              (if (gx#stx-pair? _%e135169135186%_)
                                  (let ((_%e135172135206%_
                                         (gx#syntax-e _%e135169135186%_)))
                                    (let ((_%hd135173135209%_
                                           (##car _%e135172135206%_))
                                          (_%tl135174135211%_
                                           (##cdr _%e135172135206%_)))
                                      (if (and (gx#identifier?
                                                _%hd135173135209%_)
                                               (gx#core-identifier=?
                                                _%hd135173135209%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl135174135211%_)
                                              (let ((_%e135175135214%_
                                                     (gx#syntax-e
                                                      _%tl135174135211%_)))
                                                (let ((_%hd135176135217%_
                                                       (##car _%e135175135214%_))
                                                      (_%tl135177135219%_
                                                       (##cdr _%e135175135214%_)))
                                                  (let ((_%hd-bind135222%_
                                                         _%hd135176135217%_))
                                                    (if (gx#stx-pair?
                                                         _%tl135177135219%_)
                                                        (let ((_%e135178135224%_
                                                               (gx#syntax-e
                                                                _%tl135177135219%_)))
                                                          (let ((_%hd135179135227%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e135178135224%_))
                        (_%tl135180135229%_ (##cdr _%e135178135224%_)))
                    (let ((_%expr135232%_ _%hd135179135227%_))
                      (if (gx#stx-null? _%tl135180135229%_)
                          (if (gx#core-bind-values? _%hd-bind135222%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind135222%_)
                                (_%K135166%_
                                 _%rest135167%_
                                 (cons _%hd135165%_ _%r135168%_)))
                              (_%E135171135202%_))
                          (_%E135171135202%_)))))
                (_%E135171135202%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E135171135202%_))
                                          (_%E135171135202%_))))
                                  (_%E135171135202%_)))))
                      (_%E135170135234%_))))
                 (_%expand-body135037%_
                  (lambda (_%rbody135039%_)
                    (let _%lp135041%_ ((_%rest135043%_ _%rbody135039%_)
                                       (_%body135044%_ '()))
                      (let* ((_%rest135045135053%_ _%rest135043%_)
                             (_%else135047135061%_ (lambda () _%body135044%_))
                             (_%K135049135153%_
                              (lambda (_%rest135064%_ _%hd135065%_)
                                (let* ((_%e135066135087%_ _%hd135065%_)
                                       (_%E135082135091%_
                                        (lambda ()
                                          (_%lp135041%_
                                           _%rest135064%_
                                           (cons (gx#core-expand-expression
                                                  _%hd135065%_)
                                                 _%body135044%_))))
                                       (_%E135078135105%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e135066135087%_)
                                              (let ((_%e135083135095%_
                                                     (gx#syntax-e
                                                      _%e135066135087%_)))
                                                (let ((_%hd135084135098%_
                                                       (##car _%e135083135095%_))
                                                      (_%tl135085135100%_
                                                       (##cdr _%e135083135095%_)))
                                                  (let ((_%form135103%_
                                                         _%hd135084135098%_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _%form135103%_
                                                         gx#special-form-binding?)
                                                        (_%lp135041%_
                                                         _%rest135064%_
                                                         (cons _%hd135065%_
                                                               _%body135044%_))
                                                        (_%E135082135091%_)))))
                                              (_%E135082135091%_))))
                                       (_%E135068135117%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e135066135087%_)
                                              (let ((_%e135079135109%_
                                                     (gx#syntax-e
                                                      _%e135066135087%_)))
                                                (let ((_%hd135080135112%_
                                                       (##car _%e135079135109%_))
                                                      (_%tl135081135114%_
                                                       (##cdr _%e135079135109%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd135080135112%_)
                                                           (gx#core-identifier=?
                                                            _%hd135080135112%_
                                                            '%#export))
                                                      (_%lp135041%_
                                                       _%rest135064%_
                                                       (cons (gx#core-expand-export%__0
                                                              _%hd135065%_)
                                                             _%body135044%_))
                                                      (_%E135078135105%_))))
                                              (_%E135078135105%_))))
                                       (_%E135067135149%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e135066135087%_)
                                              (let ((_%e135069135121%_
                                                     (gx#syntax-e
                                                      _%e135066135087%_)))
                                                (let ((_%hd135070135124%_
                                                       (##car _%e135069135121%_))
                                                      (_%tl135071135126%_
                                                       (##cdr _%e135069135121%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd135070135124%_)
                                                           (gx#core-identifier=?
                                                            _%hd135070135124%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl135071135126%_)
                                                          (let ((_%e135072135129%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl135071135126%_)))
                    (let ((_%hd135073135132%_ (##car _%e135072135129%_))
                          (_%tl135074135134%_ (##cdr _%e135072135129%_)))
                      (let ((_%hd-bind135137%_ _%hd135073135132%_))
                        (if (gx#stx-pair? _%tl135074135134%_)
                            (let ((_%e135075135139%_
                                   (gx#syntax-e _%tl135074135134%_)))
                              (let ((_%hd135076135142%_
                                     (##car _%e135075135139%_))
                                    (_%tl135077135144%_
                                     (##cdr _%e135075135139%_)))
                                (let ((_%expr135147%_ _%hd135076135142%_))
                                  (if (gx#stx-null? _%tl135077135144%_)
                                      (_%lp135041%_
                                       _%rest135064%_
                                       (cons (gx#core-quote-syntax__1
                                              (gx#core-list
                                               '%#define-values
                                               (gx#core-quote-bind-values
                                                _%hd-bind135137%_)
                                               (gx#core-expand-expression
                                                _%expr135147%_))
                                              (gx#stx-source _%hd135065%_))
                                             _%body135044%_))
                                      (_%E135068135117%_)))))
                            (_%E135068135117%_)))))
                  (_%E135068135117%_))
              (_%E135068135117%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E135068135117%_)))))
                                  (_%E135067135149%_)))))
                        (if (pair? _%rest135045135053%_)
                            (let ((_%hd135050135156%_
                                   (##car _%rest135045135053%_))
                                  (_%tl135051135158%_
                                   (##cdr _%rest135045135053%_)))
                              (let* ((_%hd135161%_ _%hd135050135156%_)
                                     (_%rest135163%_ _%tl135051135158%_))
                                (_%K135049135153%_
                                 _%rest135163%_
                                 _%hd135161%_)))
                            (_%else135047135061%_)))))))
          (_%expand-body135037%_
           (gx#core-expand-block__%
            (cons '%#begin-module _%body135034%_)
            _%expand-special135036%_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_%stx134875%_
               _%expanded?134876%_
               _%method134877%_
               _%current-phi134878%_
               _%expand1134879%_)
        (letrec ((_%K134881%_
                  (lambda (_%rest135001%_ _%r135002%_)
                    (let* ((_%e135003135010%_ _%rest135001%_)
                           (_%E135005135014%_ (lambda () _%r135002%_))
                           (_%E135004135030%_
                            (lambda ()
                              (if (gx#stx-pair? _%e135003135010%_)
                                  (let ((_%e135006135018%_
                                         (gx#syntax-e _%e135003135010%_)))
                                    (let ((_%hd135007135021%_
                                           (##car _%e135006135018%_))
                                          (_%tl135008135023%_
                                           (##cdr _%e135006135018%_)))
                                      (let* ((_%hd135026%_ _%hd135007135021%_)
                                             (_%rest135028%_
                                              _%tl135008135023%_))
                                        (_%step134882%_
                                         _%hd135026%_
                                         _%rest135028%_
                                         _%r135002%_))))
                                  (_%E135005135014%_)))))
                      (_%E135004135030%_))))
                 (_%step134882%_
                  (lambda (_%hd134915%_ _%rest134916%_ _%r134917%_)
                    (let* ((_%e134918134936%_ _%hd134915%_)
                           (_%E134931134940%_
                            (lambda ()
                              (if (_%expanded?134876%_ (gx#stx-e _%hd134915%_))
                                  (_%K134881%_
                                   _%rest134916%_
                                   (cons (gx#stx-e _%hd134915%_) _%r134917%_))
                                  (_%expand1134879%_
                                   _%hd134915%_
                                   _%K134881%_
                                   _%rest134916%_
                                   _%r134917%_))))
                           (_%E134927134956%_
                            (lambda ()
                              (if (gx#stx-pair? _%e134918134936%_)
                                  (let ((_%e134932134944%_
                                         (gx#syntax-e _%e134918134936%_)))
                                    (let ((_%hd134933134947%_
                                           (##car _%e134932134944%_))
                                          (_%tl134934134949%_
                                           (##cdr _%e134932134944%_)))
                                      (let* ((_%macro134952%_
                                              _%hd134933134947%_)
                                             (_%body134954%_
                                              _%tl134934134949%_))
                                        (if (gx#core-bound-identifier?__%
                                             _%macro134952%_
                                             gx#syntax-binding?)
                                            (_%K134881%_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _%macro134952%_)
                                                    _%hd134915%_
                                                    _%method134877%_)
                                                   _%rest134916%_)
                                             _%r134917%_)
                                            (_%E134931134940%_)))))
                                  (_%E134931134940%_))))
                           (_%E134920134970%_
                            (lambda ()
                              (if (gx#stx-pair? _%e134918134936%_)
                                  (let ((_%e134928134960%_
                                         (gx#syntax-e _%e134918134936%_)))
                                    (let ((_%hd134929134963%_
                                           (##car _%e134928134960%_))
                                          (_%tl134930134965%_
                                           (##cdr _%e134928134960%_)))
                                      (if (eq? (gx#stx-e _%hd134929134963%_)
                                               'begin:)
                                          (let ((_%body134968%_
                                                 _%tl134930134965%_))
                                            (_%K134881%_
                                             (gx#stx-foldr
                                              cons
                                              _%rest134916%_
                                              _%body134968%_)
                                             _%r134917%_))
                                          (_%E134927134956%_))))
                                  (_%E134927134956%_))))
                           (_%E134919134997%_
                            (lambda ()
                              (if (gx#stx-pair? _%e134918134936%_)
                                  (let ((_%e134921134974%_
                                         (gx#syntax-e _%e134918134936%_)))
                                    (let ((_%hd134922134977%_
                                           (##car _%e134921134974%_))
                                          (_%tl134923134979%_
                                           (##cdr _%e134921134974%_)))
                                      (if (eq? (gx#stx-e _%hd134922134977%_)
                                               'phi:)
                                          (if (gx#stx-pair? _%tl134923134979%_)
                                              (let ((_%e134924134982%_
                                                     (gx#syntax-e
                                                      _%tl134923134979%_)))
                                                (let ((_%hd134925134985%_
                                                       (##car _%e134924134982%_))
                                                      (_%tl134926134987%_
                                                       (##cdr _%e134924134982%_)))
                                                  (let* ((_%dphi134990%_
                                                          _%hd134925134985%_)
                                                         (_%body134992%_
                                                          _%tl134926134987%_))
                                                    (if (gx#stx-fixnum?
                                                         _%dphi134990%_)
                                                        (let ((_%rbody134995%_
                                                               (call-with-parameters__1
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_%K134881%_ _%body134992%_ '()))
                        _%current-phi134878%_
                        (fx+ (gx#stx-e _%dphi134990%_)
                             (_%current-phi134878%_)))))
                  (_%K134881%_
                   _%rest134916%_
                   (__foldr1 cons _%r134917%_ _%rbody134995%_)))
                (_%E134920134970%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E134920134970%_))
                                          (_%E134920134970%_))))
                                  (_%E134920134970%_)))))
                      (_%E134919134997%_)))))
          (let* ((_%e134883134890%_ _%stx134875%_)
                 (_%E134885134894%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e134883134890%_)))
                 (_%E134884134911%_
                  (lambda ()
                    (if (gx#stx-pair? _%e134883134890%_)
                        (let ((_%e134886134898%_
                               (gx#syntax-e _%e134883134890%_)))
                          (let ((_%hd134887134901%_ (##car _%e134886134898%_))
                                (_%tl134888134903%_ (##cdr _%e134886134898%_)))
                            (let ((_%body134906%_ _%tl134888134903%_))
                              (if (_%current-phi134878%_)
                                  (_%K134881%_ _%body134906%_ '())
                                  (call-with-parameters__1
                                   (lambda () (_%K134881%_ _%body134906%_ '()))
                                   _%current-phi134878%_
                                   (gx#current-expander-phi))))))
                        (_%E134885134894%_)))))
            (_%E134884134911%_)))))
    (define gx#core-expand-import%__%
      (lambda (_%stx134529%_ _%internal-expand?134530%_)
        (letrec ((_%expand1134532%_
                  (lambda (_%hd134847%_ _%K134848%_ _%rest134849%_ _%r134850%_)
                    (if (gx#core-bound-module? _%hd134847%_)
                        (_%import1134533%_
                         (gx#syntax-local-e__0 _%hd134847%_)
                         _%K134848%_
                         _%rest134849%_
                         _%r134850%_)
                        (if (gx#core-library-module-path? _%hd134847%_)
                            (_%import1134533%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%hd134847%_))
                             _%K134848%_
                             _%rest134849%_
                             _%r134850%_)
                            (if (gx#core-library-relative-module-path?
                                 _%hd134847%_)
                                (_%import1134533%_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _%hd134847%_))
                                 _%K134848%_
                                 _%rest134849%_
                                 _%r134850%_)
                                (let ((_%e134856%_ (gx#stx-e _%hd134847%_)))
                                  (if (pair? _%e134856%_)
                                      (let ((_%$e134859%_
                                             (gx#stx-e (##car _%e134856%_))))
                                        (if (eq? 'spec: _%$e134859%_)
                                            (_%import-spec134536%_
                                             _%hd134847%_
                                             _%K134848%_
                                             _%rest134849%_
                                             _%r134850%_)
                                            (if (eq? 'in: _%$e134859%_)
                                                (_%import-submodule134534%_
                                                 _%hd134847%_
                                                 _%K134848%_
                                                 _%rest134849%_
                                                 _%r134850%_)
                                                (if (eq? 'runtime:
                                                         _%$e134859%_)
                                                    (_%import-runtime134535%_
                                                     _%hd134847%_
                                                     _%K134848%_
                                                     _%rest134849%_
                                                     _%r134850%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _%stx134529%_
                                                     _%hd134847%_)))))
                                      (if (string? _%e134856%_)
                                          (_%import1134533%_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _%hd134847%_
                                             (gx#stx-source _%stx134529%_)))
                                           _%K134848%_
                                           _%rest134849%_
                                           _%r134850%_)
                                          (if (##structure-instance-of?
                                               _%e134856%_
                                               'gx#module-context::t)
                                              (_%K134848%_
                                               _%rest134849%_
                                               (cons _%e134856%_ _%r134850%_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _%stx134529%_
                                               _%hd134847%_))))))))))
                 (_%import1134533%_
                  (lambda (_%ctx134836%_
                           _%K134837%_
                           _%rest134838%_
                           _%r134839%_)
                    (let ((_%dphi134841%_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_%K134837%_
                       _%rest134838%_
                       (cons (##structure
                              gx#import-set::t
                              _%ctx134836%_
                              _%dphi134841%_
                              (map (lambda (_%g134842134844%_)
                                     (gx#core-module-export->import__%
                                      _%g134842134844%_
                                      '#f
                                      _%dphi134841%_))
                                   (##unchecked-structure-ref
                                    _%ctx134836%_
                                    '9
                                    '#f
                                    '#f)))
                             _%r134839%_)))))
                 (_%import-submodule134534%_
                  (lambda (_%hd134803%_ _%K134804%_ _%rest134805%_ _%r134806%_)
                    (let* ((_%e134807134814%_ _%hd134803%_)
                           (_%E134809134818%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e134807134814%_)))
                           (_%E134808134832%_
                            (lambda ()
                              (if (gx#stx-pair? _%e134807134814%_)
                                  (let ((_%e134810134822%_
                                         (gx#syntax-e _%e134807134814%_)))
                                    (let ((_%hd134811134825%_
                                           (##car _%e134810134822%_))
                                          (_%tl134812134827%_
                                           (##cdr _%e134810134822%_)))
                                      (let ((_%spath134830%_
                                             _%tl134812134827%_))
                                        (_%import1134533%_
                                         (_%import-spec-source134537%_
                                          _%spath134830%_)
                                         _%K134804%_
                                         _%rest134805%_
                                         _%r134806%_))))
                                  (_%E134809134818%_)))))
                      (_%E134808134832%_))))
                 (_%import-runtime134535%_
                  (lambda (_%hd134770%_ _%K134771%_ _%rest134772%_ _%r134773%_)
                    (let* ((_%e134774134781%_ _%hd134770%_)
                           (_%E134776134785%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e134774134781%_)))
                           (_%E134775134799%_
                            (lambda ()
                              (if (gx#stx-pair? _%e134774134781%_)
                                  (let ((_%e134777134789%_
                                         (gx#syntax-e _%e134774134781%_)))
                                    (let ((_%hd134778134792%_
                                           (##car _%e134777134789%_))
                                          (_%tl134779134794%_
                                           (##cdr _%e134777134789%_)))
                                      (let ((_%spath134797%_
                                             _%tl134779134794%_))
                                        (_%K134771%_
                                         _%rest134772%_
                                         (cons (_%import-spec-source134537%_
                                                _%spath134797%_)
                                               _%r134773%_)))))
                                  (_%E134776134785%_)))))
                      (_%E134775134799%_))))
                 (_%import-spec134536%_
                  (lambda (_%hd134608%_ _%K134609%_ _%rest134610%_ _%r134611%_)
                    (let* ((_%e134612134629%_ _%hd134608%_)
                           (_%E134621134633%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e134612134629%_)))
                           (_%E134614134744%_
                            (lambda ()
                              (if (gx#stx-pair? _%e134612134629%_)
                                  (let ((_%e134622134637%_
                                         (gx#syntax-e _%e134612134629%_)))
                                    (let ((_%hd134623134640%_
                                           (##car _%e134622134637%_))
                                          (_%tl134624134642%_
                                           (##cdr _%e134622134637%_)))
                                      (if (gx#stx-pair? _%tl134624134642%_)
                                          (let ((_%e134625134645%_
                                                 (gx#syntax-e
                                                  _%tl134624134642%_)))
                                            (let ((_%hd134626134648%_
                                                   (##car _%e134625134645%_))
                                                  (_%tl134627134650%_
                                                   (##cdr _%e134625134645%_)))
                                              (let* ((_%path134653%_
                                                      _%hd134626134648%_)
                                                     (_%specs134655%_
                                                      _%tl134627134650%_))
                                                (let ((_%src-ctx134657%_
                                                       (_%import-spec-source134537%_
                                                        _%path134653%_))
                                                      (_%exports134658%_
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
                                                      (_%specs134659%_
                                                       (gx#syntax->list
                                                        _%specs134655%_)))
                                                  (for-each
                                                   (lambda (_%out134661%_)
                                                     (__hash-put!
                                                      _%exports134658%_
                                                      (cons (##unchecked-structure-ref
                                                             _%out134661%_
                                                             '3
                                                             '#f
                                                             '#f)
                                                            (##unchecked-structure-ref
                                                             _%out134661%_
                                                             '4
                                                             '#f
                                                             '#f))
                                                      _%out134661%_))
                                                   (##unchecked-structure-ref
                                                    _%src-ctx134657%_
                                                    '9
                                                    '#f
                                                    '#f))
                                                  (_%K134609%_
                                                   _%rest134610%_
                                                   (__foldl1
                                                    (lambda (_%spec134663%_
                                                             _%r134664%_)
                                                      (let* ((_%e134665134681%_
                                                              _%spec134663%_)
                                                             (_%E134667134685%_
                                                              (lambda ()
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid syntax-case clause"
                         _%e134665134681%_)))
                     (_%E134666134740%_
                      (lambda ()
                        (if (gx#stx-pair? _%e134665134681%_)
                            (let ((_%e134668134689%_
                                   (gx#syntax-e _%e134665134681%_)))
                              (let ((_%hd134669134692%_
                                     (##car _%e134668134689%_))
                                    (_%tl134670134694%_
                                     (##cdr _%e134668134689%_)))
                                (let ((_%phi134697%_ _%hd134669134692%_))
                                  (if (gx#stx-pair? _%tl134670134694%_)
                                      (let ((_%e134671134699%_
                                             (gx#syntax-e _%tl134670134694%_)))
                                        (let ((_%hd134672134702%_
                                               (##car _%e134671134699%_))
                                              (_%tl134673134704%_
                                               (##cdr _%e134671134699%_)))
                                          (let ((_%name134707%_
                                                 _%hd134672134702%_))
                                            (if (gx#stx-pair?
                                                 _%tl134673134704%_)
                                                (let ((_%e134674134709%_
                                                       (gx#syntax-e
                                                        _%tl134673134704%_)))
                                                  (let ((_%hd134675134712%_
                                                         (##car _%e134674134709%_))
                                                        (_%tl134676134714%_
                                                         (##cdr _%e134674134709%_)))
                                                    (let ((_%src-phi134717%_
                                                           _%hd134675134712%_))
                                                      (if (gx#stx-pair?
                                                           _%tl134676134714%_)
                                                          (let ((_%e134677134719%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl134676134714%_)))
                    (let ((_%hd134678134722%_ (##car _%e134677134719%_))
                          (_%tl134679134724%_ (##cdr _%e134677134719%_)))
                      (let ((_%src-name134727%_ _%hd134678134722%_))
                        (if (gx#stx-null? _%tl134679134724%_)
                            (if (and (gx#stx-fixnum? _%src-phi134717%_)
                                     (gx#identifier? _%src-name134727%_)
                                     (gx#stx-fixnum? _%phi134697%_)
                                     (gx#identifier? _%name134707%_))
                                (let ((_%src-phi134729%_
                                       (gx#stx-e _%src-phi134717%_))
                                      (_%src-name134730%_
                                       (gx#core-identifier-key
                                        _%src-name134727%_))
                                      (_%phi134731%_ (gx#stx-e _%phi134697%_))
                                      (_%name134732%_
                                       (gx#core-identifier-key
                                        _%name134707%_)))
                                  (let ((_%$e134734%_
                                         (__hash-get
                                          _%exports134658%_
                                          (cons _%src-phi134729%_
                                                _%src-name134730%_))))
                                    (if _%$e134734%_
                                        ((lambda (_%out134737%_)
                                           (cons (gx#core-module-export->import__%
                                                  _%out134737%_
                                                  _%name134732%_
                                                  (fx- _%phi134731%_
                                                       _%src-phi134729%_))
                                                 _%r134664%_))
                                         _%$e134734%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; no matching export"
                                         _%stx134529%_
                                         _%hd134608%_))))
                                (_%E134667134685%_))
                            (_%E134667134685%_)))))
                  (_%E134667134685%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E134667134685%_)))))
                                      (_%E134667134685%_)))))
                            (_%E134667134685%_)))))
                (_%E134666134740%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r134611%_
                                                    _%specs134659%_))))))
                                          (_%E134621134633%_))))
                                  (_%E134621134633%_))))
                           (_%E134613134766%_
                            (lambda ()
                              (if (gx#stx-pair? _%e134612134629%_)
                                  (let ((_%e134615134748%_
                                         (gx#syntax-e _%e134612134629%_)))
                                    (let ((_%hd134616134751%_
                                           (##car _%e134615134748%_))
                                          (_%tl134617134753%_
                                           (##cdr _%e134615134748%_)))
                                      (if (gx#stx-pair? _%tl134617134753%_)
                                          (let ((_%e134618134756%_
                                                 (gx#syntax-e
                                                  _%tl134617134753%_)))
                                            (let ((_%hd134619134759%_
                                                   (##car _%e134618134756%_))
                                                  (_%tl134620134761%_
                                                   (##cdr _%e134618134756%_)))
                                              (let ((_%path134764%_
                                                     _%hd134619134759%_))
                                                (if (gx#stx-null?
                                                     _%tl134620134761%_)
                                                    (_%K134609%_
                                                     _%rest134610%_
                                                     (cons (_%import-spec-source134537%_
                                                            _%path134764%_)
                                                           _%r134611%_))
                                                    (_%E134614134744%_)))))
                                          (_%E134614134744%_))))
                                  (_%E134614134744%_)))))
                      (_%E134613134766%_))))
                 (_%import-spec-source134537%_
                  (lambda (_%spath134606%_)
                    (gx#core-import-nested-module
                     _%spath134606%_
                     _%stx134529%_)))
                 (_%import!134538%_
                  (lambda (_%rbody134551%_)
                    (letrec* ((_%current-ctx134553%_
                               (gx#current-expander-context))
                              (_%deps134554%_ (make-hash-table-eq))
                              (_%bind!134555%_
                               (lambda (_%hd134604%_)
                                 (gx#core-bind-import!__1
                                  _%hd134604%_
                                  _%current-ctx134553%_))))
                      (let _%lp134557%_ ((_%rest134559%_ _%rbody134551%_)
                                         (_%body134560%_ '()))
                        (let* ((_%rest134561134569%_ _%rest134559%_)
                               (_%else134563134580%_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _%current-ctx134553%_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _%current-ctx134553%_
                                       (__foldl1
                                        cons
                                        (##unchecked-structure-ref
                                         _%current-ctx134553%_
                                         '8
                                         '#f
                                         '#f)
                                        _%body134560%_)
                                       '8
                                       '#f
                                       '#f)
                                      '#!void)
                                  (__hash-for-each
                                   (lambda (_%ctx134577%_ _%_134578%_)
                                     (gx#eval-module _%ctx134577%_))
                                   _%deps134554%_)
                                  _%body134560%_))
                               (_%K134565134592%_
                                (lambda (_%rest134583%_ _%hd134584%_)
                                  (if (##structure-direct-instance-of?
                                       _%hd134584%_
                                       'gx#module-import::t)
                                      (let ()
                                        (_%bind!134555%_ _%hd134584%_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _%hd134584%_
                                                   '3
                                                   '#f
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _%hd134584%_
                                                            '1
                                                            '#f
                                                            '#f)
                                                           '3
                                                           '#f
                                                           '#f)))
                                            (__hash-put!
                                             _%deps134554%_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _%hd134584%_
                                               '1
                                               '#f
                                               '#f)
                                              '1
                                              '#f
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _%hd134584%_
                                           'gx#import-set::t)
                                          (let ()
                                            (for-each
                                             _%bind!134555%_
                                             (##unchecked-structure-ref
                                              _%hd134584%_
                                              '3
                                              '#f
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _%hd134584%_
                                                  '2
                                                  '#f
                                                  '#f))
                                                (__hash-put!
                                                 _%deps134554%_
                                                 (##unchecked-structure-ref
                                                  _%hd134584%_
                                                  '1
                                                  '#f
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_%$e134588%_
                                                 (##structure-instance-of?
                                                  _%hd134584%_
                                                  'gx#module-context::t)))
                                            (if _%$e134588%_
                                                _%$e134588%_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _%stx134529%_
                                                 _%hd134584%_)))))
                                  (_%lp134557%_
                                   _%rest134583%_
                                   (cons _%hd134584%_ _%body134560%_)))))
                          (if (pair? _%rest134561134569%_)
                              (let ((_%hd134566134595%_
                                     (##car _%rest134561134569%_))
                                    (_%tl134567134597%_
                                     (##cdr _%rest134561134569%_)))
                                (let* ((_%hd134600%_ _%hd134566134595%_)
                                       (_%rest134602%_ _%tl134567134597%_))
                                  (_%K134565134592%_
                                   _%rest134602%_
                                   _%hd134600%_)))
                              (_%else134563134580%_)))))))
                 (_%expanded-import?134539%_
                  (lambda (_%e134543%_)
                    (let ((_%$e134545%_
                           (##structure-direct-instance-of?
                            _%e134543%_
                            'gx#import-set::t)))
                      (if _%$e134545%_
                          _%$e134545%_
                          (let ((_%$e134548%_
                                 (##structure-direct-instance-of?
                                  _%e134543%_
                                  'gx#module-import::t)))
                            (if _%$e134548%_
                                _%$e134548%_
                                (##structure-instance-of?
                                 _%e134543%_
                                 'gx#module-context::t))))))))
          (let ((_%rbody134541%_
                 (gx#core-expand-import/export
                  _%stx134529%_
                  _%expanded-import?134539%_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _%expand1134532%_)))
            (if _%internal-expand?134530%_
                (reverse _%rbody134541%_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_%import!134538%_ _%rbody134541%_))
                 (gx#stx-source _%stx134529%_)))))))
    (define gx#core-expand-import%__0
      (lambda (_%stx134868%_)
        (let ((_%internal-expand?134870%_ '#f))
          (gx#core-expand-import%__%
           _%stx134868%_
           _%internal-expand?134870%_))))
    (define gx#core-expand-import%
      (lambda _g137524_
        (let ((_g137525_ (##length _g137524_)))
          (cond ((##fx= _g137525_ 1)
                 (apply gx#core-expand-import%__0 _g137524_))
                ((##fx= _g137525_ 2)
                 (apply gx#core-expand-import%__% _g137524_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g137524_))))))
    (define gx#core-import-nested-module
      (lambda (_%spath134456%_ _%where134457%_)
        (let* ((_%e134458134465%_ _%spath134456%_)
               (_%E134460134469%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e134458134465%_)))
               (_%E134459134524%_
                (lambda ()
                  (if (gx#stx-pair? _%e134458134465%_)
                      (let ((_%e134461134473%_
                             (gx#syntax-e _%e134458134465%_)))
                        (let ((_%hd134462134476%_ (##car _%e134461134473%_))
                              (_%tl134463134478%_ (##cdr _%e134461134473%_)))
                          (let* ((_%origin134481%_ _%hd134462134476%_)
                                 (_%sub134483%_ _%tl134463134478%_)
                                 (_%origin-ctx134485%_
                                  (if (gx#stx-false? _%origin134481%_)
                                      (gx#current-expander-context)
                                      (gx#import-module__0 _%origin134481%_))))
                            (let _%lp134487%_ ((_%rest134489%_ _%sub134483%_)
                                               (_%ctx134490%_
                                                _%origin-ctx134485%_))
                              (let* ((_%e134491134498%_ _%rest134489%_)
                                     (_%E134493134502%_
                                      (lambda () _%ctx134490%_))
                                     (_%E134492134520%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%e134491134498%_)
                                            (let ((_%e134494134506%_
                                                   (gx#syntax-e
                                                    _%e134491134498%_)))
                                              (let ((_%hd134495134509%_
                                                     (##car _%e134494134506%_))
                                                    (_%tl134496134511%_
                                                     (##cdr _%e134494134506%_)))
                                                (let* ((_%id134514%_
                                                        _%hd134495134509%_)
                                                       (_%rest134516%_
                                                        _%tl134496134511%_)
                                                       (_%bind134518%_
                                                        (gx#resolve-identifier__%
                                                         _%id134514%_
                                                         '0
                                                         _%ctx134490%_)))
                                                  (if (and (##structure-direct-instance-of?
                                                            _%bind134518%_
                                                            'gx#syntax-binding::t)
                                                           (##structure-instance-of?
                                                            (##unchecked-structure-ref
                                                             _%bind134518%_
                                                             '4
                                                             '#f
                                                             '#f)
                                                            'gx#module-context::t))
                                                      '#!void
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; not bound as module"
                                                       _%where134457%_
                                                       _%spath134456%_
                                                       _%id134514%_))
                                                  (_%lp134487%_
                                                   _%rest134516%_
                                                   (##unchecked-structure-ref
                                                    _%bind134518%_
                                                    '4
                                                    '#f
                                                    '#f)))))
                                            (_%E134493134502%_)))))
                                (_%E134492134520%_))))))
                      (_%E134460134469%_)))))
          (_%E134459134524%_))))
    (define gx#core-expand-import-source
      (lambda (_%hd134454%_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _%hd134454%_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_%stx133948%_ _%internal-expand?133949%_)
        (letrec* ((_%make-export__137453137454%_
                   (lambda (_%bind134402%_
                            _%phi134403%_
                            _%ctx134404%_
                            _%name134405%_)
                     (let* ((_%key134407%_
                             (##unchecked-structure-ref
                              _%bind134402%_
                              '2
                              '#f
                              '#f))
                            (_%export-key134409%_
                             (if _%name134405%_
                                 (gx#core-identifier-key _%name134405%_)
                                 _%key134407%_)))
                       (##structure
                        gx#module-export::t
                        _%ctx134404%_
                        _%key134407%_
                        _%phi134403%_
                        _%export-key134409%_
                        (let ((_%$e134412%_
                               (##structure-instance-of?
                                _%bind134402%_
                                'gx#extern-binding::t)))
                          (if _%$e134412%_
                              _%$e134412%_
                              (##structure-direct-instance-of?
                               _%bind134402%_
                               'gx#import-binding::t)))))))
                  (_%make-export__0__137455137458%_
                   (lambda (_%bind134418%_)
                     (let* ((_%phi134420%_ (gx#current-export-expander-phi))
                            (_%ctx134422%_ (gx#current-expander-context))
                            (_%name134424%_ '#f))
                       (_%make-export__137453137454%_
                        _%bind134418%_
                        _%phi134420%_
                        _%ctx134422%_
                        _%name134424%_))))
                  (_%make-export__1__137456137459%_
                   (lambda (_%bind134426%_ _%phi134427%_)
                     (let* ((_%ctx134429%_ (gx#current-expander-context))
                            (_%name134431%_ '#f))
                       (_%make-export__137453137454%_
                        _%bind134426%_
                        _%phi134427%_
                        _%ctx134429%_
                        _%name134431%_))))
                  (_%make-export__2__137457137460%_
                   (lambda (_%bind134433%_ _%phi134434%_ _%ctx134435%_)
                     (let ((_%name134437%_ '#f))
                       (_%make-export__137453137454%_
                        _%bind134433%_
                        _%phi134434%_
                        _%ctx134435%_
                        _%name134437%_))))
                  (_%make-export133951%_
                   (lambda _g137526_
                     (let ((_g137527_ (##length _g137526_)))
                       (cond ((##fx= _g137527_ 1)
                              (apply _%make-export__0__137455137458%_
                                     _g137526_))
                             ((##fx= _g137527_ 2)
                              (apply _%make-export__1__137456137459%_
                                     _g137526_))
                             ((##fx= _g137527_ 3)
                              (apply _%make-export__2__137457137460%_
                                     _g137526_))
                             ((##fx= _g137527_ 4)
                              (apply _%make-export__137453137454%_ _g137526_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g137526_))))))
                  (_%expand1133952%_
                   (lambda (_%hd134107%_
                            _%K134108%_
                            _%rest134109%_
                            _%r134110%_)
                     (let* ((_%e134111134143%_ _%hd134107%_)
                            (_%E134138134147%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _%stx133948%_
                                _%hd134107%_)))
                            (_%E134128134231%_
                             (lambda ()
                               (if (gx#stx-pair? _%e134111134143%_)
                                   (let ((_%e134139134151%_
                                          (gx#syntax-e _%e134111134143%_)))
                                     (let ((_%hd134140134154%_
                                            (##car _%e134139134151%_))
                                           (_%tl134141134156%_
                                            (##cdr _%e134139134151%_)))
                                       (if (eq? (gx#stx-e _%hd134140134154%_)
                                                'import:)
                                           (let ((_%in134159%_
                                                  _%tl134141134156%_))
                                             (if (gx#stx-list? _%in134159%_)
                                                 (let _%lp134161%_ ((_%in-rest134163%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%in134159%_)
                            (_%r134164%_ _%r134110%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%e134165134172%_
                                                           _%in-rest134163%_)
                                                          (_%E134167134176%_
                                                           (lambda ()
                                                             (_%K134108%_
                                                              _%rest134109%_
                                                              _%r134164%_)))
                                                          (_%E134166134227%_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%e134165134172%_)
                         (let ((_%e134168134180%_
                                (gx#syntax-e _%e134165134172%_)))
                           (let ((_%hd134169134183%_ (##car _%e134168134180%_))
                                 (_%tl134170134185%_
                                  (##cdr _%e134168134180%_)))
                             (let* ((_%hd134188%_ _%hd134169134183%_)
                                    (_%in-rest134190%_ _%tl134170134185%_)
                                    (_%src134225%_
                                     (if (gx#core-bound-module? _%hd134188%_)
                                         (gx#syntax-local-e__0 _%hd134188%_)
                                         (if (gx#core-library-module-path?
                                              _%hd134188%_)
                                             (gx#import-module__0
                                              (gx#core-resolve-library-module-path
                                               _%hd134188%_))
                                             (if (gx#core-library-relative-module-path?
                                                  _%hd134188%_)
                                                 (gx#import-module__0
                                                  (gx#core-resolve-library-relative-module-path
                                                   _%hd134188%_))
                                                 (if (gx#stx-string?
                                                      _%hd134188%_)
                                                     (gx#import-module__0
                                                      (gx#core-resolve-module-path__%
                                                       _%hd134188%_
                                                       (gx#stx-source
                                                        _%stx133948%_)))
                                                     (let* ((_%e134196134203%_
                                                             _%hd134188%_)
                                                            (_%E134198134207%_
                                                             (lambda ()
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; illegal re-export"
                                                                _%stx133948%_
                                                                _%hd134188%_)))
                                                            (_%E134197134221%_
                                                             (lambda ()
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%e134196134203%_)
                           (let ((_%e134199134211%_
                                  (gx#syntax-e _%e134196134203%_)))
                             (let ((_%hd134200134214%_
                                    (##car _%e134199134211%_))
                                   (_%tl134201134216%_
                                    (##cdr _%e134199134211%_)))
                               (if (eq? (gx#stx-e _%hd134200134214%_) 'in:)
                                   (let ((_%spath134219%_ _%tl134201134216%_))
                                     (gx#core-import-nested-module
                                      _%spath134219%_
                                      _%stx133948%_))
                                   (_%E134198134207%_))))
                           (_%E134198134207%_)))))
               (_%E134197134221%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (_%lp134161%_
                                _%in-rest134190%_
                                (_%export-imports133953%_
                                 _%src134225%_
                                 _%r134164%_)))))
                         (_%E134167134176%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E134166134227%_)))
                                                 (_%E134138134147%_)))
                                           (_%E134138134147%_))))
                                   (_%E134138134147%_))))
                            (_%E134115134271%_
                             (lambda ()
                               (if (gx#stx-pair? _%e134111134143%_)
                                   (let ((_%e134129134235%_
                                          (gx#syntax-e _%e134111134143%_)))
                                     (let ((_%hd134130134238%_
                                            (##car _%e134129134235%_))
                                           (_%tl134131134240%_
                                            (##cdr _%e134129134235%_)))
                                       (if (eq? (gx#stx-e _%hd134130134238%_)
                                                'rename:)
                                           (if (gx#stx-pair?
                                                _%tl134131134240%_)
                                               (let ((_%e134132134243%_
                                                      (gx#syntax-e
                                                       _%tl134131134240%_)))
                                                 (let ((_%hd134133134246%_
                                                        (##car _%e134132134243%_))
                                                       (_%tl134134134248%_
                                                        (##cdr _%e134132134243%_)))
                                                   (let ((_%id134251%_
                                                          _%hd134133134246%_))
                                                     (if (gx#stx-pair?
                                                          _%tl134134134248%_)
                                                         (let ((_%e134135134253%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl134134134248%_)))
                   (let ((_%hd134136134256%_ (##car _%e134135134253%_))
                         (_%tl134137134258%_ (##cdr _%e134135134253%_)))
                     (let ((_%name134261%_ _%hd134136134256%_))
                       (if (gx#stx-null? _%tl134137134258%_)
                           (let* ((_%phi134263%_
                                   (gx#current-export-expander-phi))
                                  (_%$e134265%_
                                   (gx#core-resolve-identifier__1
                                    _%id134251%_
                                    _%phi134263%_)))
                             (if _%$e134265%_
                                 ((lambda (_%bind134268%_)
                                    (_%K134108%_
                                     _%rest134109%_
                                     (cons (_%make-export__137453137454%_
                                            _%bind134268%_
                                            _%phi134263%_
                                            (gx#current-expander-context)
                                            _%name134261%_)
                                           _%r134110%_)))
                                  _%$e134265%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Reference to unbound identifier"
                                  _%stx133948%_
                                  _%hd134107%_
                                  _%id134251%_)))
                           (_%E134128134231%_)))))
                 (_%E134128134231%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E134128134231%_))
                                           (_%E134128134231%_))))
                                   (_%E134128134231%_))))
                            (_%E134114134321%_
                             (lambda ()
                               (if (gx#stx-pair? _%e134111134143%_)
                                   (let ((_%e134116134275%_
                                          (gx#syntax-e _%e134111134143%_)))
                                     (let ((_%hd134117134278%_
                                            (##car _%e134116134275%_))
                                           (_%tl134118134280%_
                                            (##cdr _%e134116134275%_)))
                                       (if (eq? (gx#stx-e _%hd134117134278%_)
                                                'spec:)
                                           (if (gx#stx-pair?
                                                _%tl134118134280%_)
                                               (let ((_%e134119134283%_
                                                      (gx#syntax-e
                                                       _%tl134118134280%_)))
                                                 (let ((_%hd134120134286%_
                                                        (##car _%e134119134283%_))
                                                       (_%tl134121134288%_
                                                        (##cdr _%e134119134283%_)))
                                                   (let ((_%phi134291%_
                                                          _%hd134120134286%_))
                                                     (if (gx#stx-pair?
                                                          _%tl134121134288%_)
                                                         (let ((_%e134122134293%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl134121134288%_)))
                   (let ((_%hd134123134296%_ (##car _%e134122134293%_))
                         (_%tl134124134298%_ (##cdr _%e134122134293%_)))
                     (let ((_%id134301%_ _%hd134123134296%_))
                       (if (gx#stx-pair? _%tl134124134298%_)
                           (let ((_%e134125134303%_
                                  (gx#syntax-e _%tl134124134298%_)))
                             (let ((_%hd134126134306%_
                                    (##car _%e134125134303%_))
                                   (_%tl134127134308%_
                                    (##cdr _%e134125134303%_)))
                               (let ((_%name134311%_ _%hd134126134306%_))
                                 (if (gx#stx-null? _%tl134127134308%_)
                                     (if (and (gx#stx-fixnum? _%phi134291%_)
                                              (gx#identifier? _%id134301%_)
                                              (gx#identifier? _%name134311%_))
                                         (let* ((_%phi134313%_
                                                 (gx#stx-e _%phi134291%_))
                                                (_%$e134315%_
                                                 (gx#core-resolve-identifier__1
                                                  _%id134301%_
                                                  _%phi134313%_)))
                                           (if _%$e134315%_
                                               ((lambda (_%bind134318%_)
                                                  (_%K134108%_
                                                   _%rest134109%_
                                                   (cons (_%make-export__137453137454%_
                                                          _%bind134318%_
                                                          _%phi134313%_
                                                          (gx#current-expander-context)
                                                          _%name134311%_)
                                                         _%r134110%_)))
                                                _%$e134315%_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _%stx133948%_
                                                _%hd134107%_
                                                _%id134301%_)))
                                         (_%E134115134271%_))
                                     (_%E134115134271%_)))))
                           (_%E134115134271%_)))))
                 (_%E134115134271%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E134115134271%_))
                                           (_%E134115134271%_))))
                                   (_%E134115134271%_))))
                            (_%E134113134333%_
                             (lambda ()
                               (let ((_%id134325%_ _%e134111134143%_))
                                 (if (gx#identifier? _%id134325%_)
                                     (let ((_%$e134327%_
                                            (gx#core-resolve-identifier__1
                                             _%id134325%_
                                             (gx#current-export-expander-phi))))
                                       (if _%$e134327%_
                                           ((lambda (_%bind134330%_)
                                              (_%K134108%_
                                               _%rest134109%_
                                               (cons (_%make-export__0__137455137458%_
                                                      _%bind134330%_)
                                                     _%r134110%_)))
                                            _%$e134327%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _%stx133948%_
                                            _%hd134107%_)))
                                     (_%E134114134321%_)))))
                            (_%E134112134397%_
                             (lambda ()
                               (if (eq? (gx#stx-e _%e134111134143%_) '#t)
                                   (let* ((_%current-ctx134337%_
                                           (gx#current-expander-context))
                                          (_%current-phi134339%_
                                           (gx#current-export-expander-phi))
                                          (_%phi-ctx134341%_
                                           (gx#core-context-shift
                                            _%current-ctx134337%_
                                            _%current-phi134339%_))
                                          (_%phi-bind134343%_
                                           (hash->list
                                            (##unchecked-structure-ref
                                             _%phi-ctx134341%_
                                             '2
                                             '#f
                                             '#f))))
                                     (let _%lp134346%_ ((_%bind-rest134348%_
                                                         _%phi-bind134343%_)
                                                        (_%set134349%_ '()))
                                       (let* ((_%bind-rest134350134360%_
                                               _%bind-rest134348%_)
                                              (_%else134352134368%_
                                               (lambda ()
                                                 (_%K134108%_
                                                  _%rest134109%_
                                                  (cons (##structure
                                                         gx#export-set::t
                                                         '#f
                                                         _%current-phi134339%_
                                                         _%set134349%_)
                                                        _%r134110%_))))
                                              (_%K134354134378%_
                                               (lambda (_%bind-rest134371%_
                                                        _%bind134372%_
                                                        _%key134373%_)
                                                 (if (or (##structure-direct-instance-of?
                                                          _%bind134372%_
                                                          'gx#import-binding::t)
                                                         (gx#private-feature-binding?
                                                          _%bind134372%_))
                                                     (_%lp134346%_
                                                      _%bind-rest134371%_
                                                      _%set134349%_)
                                                     (_%lp134346%_
                                                      _%bind-rest134371%_
                                                      (cons (_%make-export__2__137457137460%_
                                                             _%bind134372%_
                                                             _%current-phi134339%_
                                                             _%current-ctx134337%_)
                                                            _%set134349%_))))))
                                         (if (pair? _%bind-rest134350134360%_)
                                             (let ((_%hd134355134381%_
                                                    (##car _%bind-rest134350134360%_))
                                                   (_%tl134356134383%_
                                                    (##cdr _%bind-rest134350134360%_)))
                                               (if (pair? _%hd134355134381%_)
                                                   (let ((_%hd134357134386%_
                                                          (##car _%hd134355134381%_))
                                                         (_%tl134358134388%_
                                                          (##cdr _%hd134355134381%_)))
                                                     (let* ((_%key134391%_
                                                             _%hd134357134386%_)
                                                            (_%bind134393%_
                                                             _%tl134358134388%_)
                                                            (_%bind-rest134395%_
                                                             _%tl134356134383%_))
                                                       (_%K134354134378%_
                                                        _%bind-rest134395%_
                                                        _%bind134393%_
                                                        _%key134391%_)))
                                                   (_%else134352134368%_)))
                                             (_%else134352134368%_)))))
                                   (_%E134113134333%_)))))
                       (_%E134112134397%_))))
                  (_%export-imports133953%_
                   (lambda (_%src133983%_ _%r133984%_)
                     (letrec* ((_%current-ctx133986%_
                                (gx#current-expander-context))
                               (_%current-phi133987%_
                                (gx#current-export-expander-phi))
                               (_%import->export133988%_
                                (lambda (_%in134069%_)
                                  (let* ((_%in134070134078%_ _%in134069%_)
                                         (_%E134072134082%_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _%in134070134078%_
                                                   '((module-import
                                                      out
                                                      key
                                                      phi)))
                                            '#!void))
                                         (_%K134073134089%_
                                          (lambda (_%phi134085%_
                                                   _%key134086%_
                                                   _%out134087%_)
                                            (##structure
                                             gx#module-export::t
                                             _%current-ctx133986%_
                                             _%key134086%_
                                             _%phi134085%_
                                             _%key134086%_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _%in134070134078%_
                                         'gx#module-import::t)
                                        (let* ((_%e134074134092%_
                                                (##unchecked-structure-ref
                                                 _%in134070134078%_
                                                 '1
                                                 '#f
                                                 '#f))
                                               (_%out134095%_
                                                _%e134074134092%_)
                                               (_%e134075134097%_
                                                (##unchecked-structure-ref
                                                 _%in134070134078%_
                                                 '2
                                                 '#f
                                                 '#f))
                                               (_%key134100%_
                                                _%e134075134097%_)
                                               (_%e134076134102%_
                                                (##unchecked-structure-ref
                                                 _%in134070134078%_
                                                 '3
                                                 '#f
                                                 '#f))
                                               (_%phi134105%_
                                                _%e134076134102%_))
                                          (_%K134073134089%_
                                           _%phi134105%_
                                           _%key134100%_
                                           _%out134095%_))
                                        (_%E134072134082%_)))))
                               (_%fold-e133989%_
                                (lambda (_%in133991%_ _%r133992%_)
                                  (let* ((_%in133993134007%_ _%in133991%_)
                                         (_%else133996134015%_
                                          (lambda () _%r133992%_)))
                                    (let ((_%K134002134051%_
                                           (lambda (_%phi134047%_
                                                    _%key134048%_
                                                    _%out134049%_)
                                             (if (and (fx= _%phi134047%_
                                                           _%current-phi133987%_)
                                                      (eq? _%src133983%_
                                                           (##unchecked-structure-ref
                                                            _%out134049%_
                                                            '1
                                                            '#f
                                                            '#f)))
                                                 (cons (_%import->export133988%_
                                                        _%in133991%_)
                                                       _%r133992%_)
                                                 _%r133992%_)))
                                          (_%K133998134026%_
                                           (lambda (_%imports134019%_
                                                    _%phi134020%_
                                                    _%ctx134021%_)
                                             (if (and (fx= _%phi134020%_
                                                           _%current-phi133987%_)
                                                      (eq? _%src133983%_
                                                           _%ctx134021%_))
                                                 (__foldl1
                                                  (lambda (_%in134023%_
                                                           _%r134024%_)
                                                    (cons (_%import->export133988%_
                                                           _%in134023%_)
                                                          _%r134024%_))
                                                  _%r133992%_
                                                  _%imports134019%_)
                                                 _%r133992%_))))
                                      (let ((_%try-match133995134044%_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _%in133993134007%_
                                                    'gx#import-set::t)
                                                   (let* ((_%e133999134029%_
                                                           (##unchecked-structure-ref
                                                            _%in133993134007%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                          (_%e134000134034%_
                                                           (##unchecked-structure-ref
                                                            _%in133993134007%_
                                                            '2
                                                            '#f
                                                            '#f))
                                                          (_%e134001134039%_
                                                           (##unchecked-structure-ref
                                                            _%in133993134007%_
                                                            '3
                                                            '#f
                                                            '#f)))
                                                     (let ((_%ctx134032%_
                                                            _%e133999134029%_)
                                                           (_%phi134037%_
                                                            _%e134000134034%_)
                                                           (_%imports134042%_
                                                            _%e134001134039%_))
                                                       (_%K133998134026%_
                                                        _%imports134042%_
                                                        _%phi134037%_
                                                        _%ctx134032%_)))
                                                   (_%else133996134015%_)))))
                                        (if (##structure-direct-instance-of?
                                             _%in133993134007%_
                                             'gx#module-import::t)
                                            (let* ((_%e134003134054%_
                                                    (##unchecked-structure-ref
                                                     _%in133993134007%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                   (_%e134004134059%_
                                                    (##unchecked-structure-ref
                                                     _%in133993134007%_
                                                     '2
                                                     '#f
                                                     '#f))
                                                   (_%e134005134064%_
                                                    (##unchecked-structure-ref
                                                     _%in133993134007%_
                                                     '3
                                                     '#f
                                                     '#f)))
                                              (let ((_%out134057%_
                                                     _%e134003134054%_)
                                                    (_%key134062%_
                                                     _%e134004134059%_)
                                                    (_%phi134067%_
                                                     _%e134005134064%_))
                                                (_%K134002134051%_
                                                 _%phi134067%_
                                                 _%key134062%_
                                                 _%out134057%_)))
                                            (_%try-match133995134044%_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _%src133983%_
                              _%current-phi133987%_
                              (__foldl1
                               _%fold-e133989%_
                               '()
                               (##unchecked-structure-ref
                                _%current-ctx133986%_
                                '8
                                '#f
                                '#f)))
                             _%r133984%_))))
                  (_%export!133954%_
                   (lambda (_%rbody133970%_)
                     (letrec* ((_%current-ctx133972%_
                                (gx#current-expander-context))
                               (_%fold-e133973%_
                                (lambda (_%out133977%_ _%r133978%_)
                                  (if (##structure-direct-instance-of?
                                       _%out133977%_
                                       'gx#module-export::t)
                                      (cons _%out133977%_ _%r133978%_)
                                      (if (##structure-direct-instance-of?
                                           _%out133977%_
                                           'gx#export-set::t)
                                          (__foldl1
                                           cons
                                           _%r133978%_
                                           (##unchecked-structure-ref
                                            _%out133977%_
                                            '3
                                            '#f
                                            '#f))
                                          _%r133978%_)))))
                       (let ((_%body133975%_ (reverse _%rbody133970%_)))
                         (##unchecked-structure-set!
                          _%current-ctx133972%_
                          (__foldl1
                           _%fold-e133973%_
                           (##unchecked-structure-ref
                            _%current-ctx133972%_
                            '9
                            '#f
                            '#f)
                           _%body133975%_)
                          '9
                          '#f
                          '#f)
                         _%body133975%_))))
                  (_%expanded-export?133955%_
                   (lambda (_%e133965%_)
                     (let ((_%$e133967%_
                            (##structure-direct-instance-of?
                             _%e133965%_
                             'gx#module-export::t)))
                       (if _%$e133967%_
                           _%$e133967%_
                           (##structure-direct-instance-of?
                            _%e133965%_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _%internal-expand?133949%_)
              (let ((_%rbody133961%_
                     (gx#core-expand-import/export
                      _%stx133948%_
                      _%expanded-export?133955%_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _%expand1133952%_)))
                (if _%internal-expand?133949%_
                    (reverse _%rbody133961%_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons
                      '%#export
                      (_%export!133954%_ _%rbody133961%_))
                     (gx#stx-source _%stx133948%_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _%stx133948%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _%stx133948%_))))))
    (define gx#core-expand-export%__0
      (lambda (_%stx134447%_)
        (let ((_%internal-expand?134449%_ '#f))
          (gx#core-expand-export%__%
           _%stx134447%_
           _%internal-expand?134449%_))))
    (define gx#core-expand-export%
      (lambda _g137528_
        (let ((_g137529_ (##length _g137528_)))
          (cond ((##fx= _g137529_ 1)
                 (apply gx#core-expand-export%__0 _g137528_))
                ((##fx= _g137529_ 2)
                 (apply gx#core-expand-export%__% _g137528_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g137528_))))))
    (define gx#core-expand-export-source
      (lambda (_%hd133945%_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _%hd133945%_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_%stx133915%_)
        (let* ((_%e133916133923%_ _%stx133915%_)
               (_%E133918133927%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e133916133923%_)))
               (_%E133917133941%_
                (lambda ()
                  (if (gx#stx-pair? _%e133916133923%_)
                      (let ((_%e133919133931%_
                             (gx#syntax-e _%e133916133923%_)))
                        (let ((_%hd133920133934%_ (##car _%e133919133931%_))
                              (_%tl133921133936%_ (##cdr _%e133919133931%_)))
                          (let ((_%body133939%_ _%tl133921133936%_))
                            (if (gx#identifier-list? _%body133939%_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _%body133939%_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _%body133939%_))
                                   (gx#stx-source _%stx133915%_)))
                                (_%E133918133927%_)))))
                      (_%E133918133927%_)))))
          (_%E133917133941%_))))
    (define gx#core-bind-feature!__%
      (lambda (_%id133881%_ _%private?133882%_ _%phi133883%_ _%ctx133884%_)
        (gx#core-bind-syntax!__%
         _%id133881%_
         ((if _%private?133882%_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _%id133881%_))
         _%private?133882%_
         _%phi133883%_
         _%ctx133884%_)))
    (define gx#core-bind-feature!__0
      (lambda (_%id133889%_)
        (let* ((_%private?133891%_ '#f)
               (_%phi133893%_ (gx#current-expander-phi))
               (_%ctx133895%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id133889%_
           _%private?133891%_
           _%phi133893%_
           _%ctx133895%_))))
    (define gx#core-bind-feature!__1
      (lambda (_%id133897%_ _%private?133898%_)
        (let* ((_%phi133900%_ (gx#current-expander-phi))
               (_%ctx133902%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id133897%_
           _%private?133898%_
           _%phi133900%_
           _%ctx133902%_))))
    (define gx#core-bind-feature!__2
      (lambda (_%id133904%_ _%private?133905%_ _%phi133906%_)
        (let ((_%ctx133908%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id133904%_
           _%private?133905%_
           _%phi133906%_
           _%ctx133908%_))))
    (define gx#core-bind-feature!
      (lambda _g137530_
        (let ((_g137531_ (##length _g137530_)))
          (cond ((##fx= _g137531_ 1)
                 (apply gx#core-bind-feature!__0 _g137530_))
                ((##fx= _g137531_ 2)
                 (apply gx#core-bind-feature!__1 _g137530_))
                ((##fx= _g137531_ 3)
                 (apply gx#core-bind-feature!__2 _g137530_))
                ((##fx= _g137531_ 4)
                 (apply gx#core-bind-feature!__% _g137530_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g137530_))))))))
