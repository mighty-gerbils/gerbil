(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1773012985)
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
      (lambda _%$args186506%_
        (apply make-instance gx#module-import::t _%$args186506%_)))
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
      (lambda _%$args186503%_
        (apply make-instance gx#module-export::t _%$args186503%_)))
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
      (lambda _%$args186500%_
        (apply make-instance gx#import-set::t _%$args186500%_)))
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
      (lambda _%$args186497%_
        (apply make-instance gx#export-set::t _%$args186497%_)))
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
      (lambda _%$args186494%_
        (apply make-instance gx#import-expander::t _%$args186494%_)))
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
      (lambda _%$args186491%_
        (apply make-instance gx#export-expander::t _%$args186491%_)))
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
      (lambda _%$args186488%_
        (apply make-instance gx#import-export-expander::t _%$args186488%_)))
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
      (lambda (_%path186485%_ _%fun186486%_)
        (call-with-input-file
         (cons 'path: (cons _%path186485%_ gx#source-file-settings))
         _%fun186486%_)))
    (define gx#module-context:::init!
      (lambda (_%self186468%_
               _%id186469%_
               _%super186470%_
               _%ns186471%_
               _%path186472%_)
        (let ((_%self186475%_ _%self186468%_))
          (if (##fx< '11 (##structure-length _%self186475%_))
              (begin
                (##unchecked-structure-set!
                 _%self186475%_
                 _%id186469%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self186475%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self186475%_
                 _%super186470%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self186475%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self186475%_ '#f '5 '#f '#f)
                (##unchecked-structure-set!
                 _%self186475%_
                 _%ns186471%_
                 '6
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self186475%_
                 _%path186472%_
                 '7
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self186475%_ '() '8 '#f '#f)
                (##unchecked-structure-set! _%self186475%_ '() '9 '#f '#f)
                (##unchecked-structure-set! _%self186475%_ '#f '10 '#f '#f)
                (##unchecked-structure-set! _%self186475%_ '#f '11 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self186475%_
                     '11
                     (##structure-length _%self186475%_))))))
    (__bind-method!__%
     gx#module-context::t
     ':init!
     gx#module-context:::init!
     '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_%self186301%_ _%ctx186302%_ _%root186303%_)
        (let* ((_%self186306%_ _%self186301%_)
               (_%super186322%_
                (let ((_%$e186316%_ _%root186303%_))
                  (if _%$e186316%_
                      _%$e186316%_
                      (let ((_%$e186319%_ (gx#core-context-root__0)))
                        (if _%$e186319%_
                            _%$e186319%_
                            (let ((__obj186550
                                   (##structure gx#root-context::t '#f '#f)))
                              (let ((__constructor186551
                                     (direct-method-ref
                                      gx#root-context::t
                                      __obj186550
                                      ':init!)))
                                (if __constructor186551
                                    (__constructor186551 __obj186550)
                                    (error '"missing constructor method implementation"
                                           'class:
                                           gx#root-context::t
                                           'method:
                                           ':init!)))
                              __obj186550)))))))
          (if _%ctx186302%_
              (let ((_%id186325%_
                     (##structure-ref
                      _%ctx186302%_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_%path186326%_
                     (##structure-ref
                      _%ctx186302%_
                      '7
                      gx#module-context::t
                      '#f))
                    (_%in186327%_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _%ctx186302%_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_%e186328%_
                     (__make-atomic-promise
                      (lambda () (gx#eval-module _%ctx186302%_)))))
                (if (##fx< '8 (##structure-length _%self186306%_))
                    (begin
                      (##unchecked-structure-set!
                       _%self186306%_
                       _%id186325%_
                       '1
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self186306%_
                       (make-hash-table-eq 'size: (##length _%in186327%_))
                       '2
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self186306%_
                       _%super186322%_
                       '3
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self186306%_
                       '#f
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self186306%_
                       '#f
                       '5
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self186306%_
                       _%path186326%_
                       '6
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self186306%_
                       _%in186327%_
                       '7
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self186306%_
                       _%e186328%_
                       '8
                       '#f
                       '#f)
                      '#!void)
                    (error '"struct-instance-init!: too many arguments for struct"
                           _%self186306%_
                           '8
                           (##structure-length _%self186306%_)))
                (##for-each
                 (lambda (_%g186329186331%_)
                   (gx#core-bind-weak-import!__%
                    _%g186329186331%_
                    _%self186306%_))
                 _%in186327%_))
              (if (##fx< '8 (##structure-length _%self186306%_))
                  (begin
                    (##unchecked-structure-set! _%self186306%_ '#f '1 '#f '#f)
                    (##unchecked-structure-set!
                     _%self186306%_
                     (make-hash-table-eq)
                     '2
                     '#f
                     '#f)
                    (##unchecked-structure-set!
                     _%self186306%_
                     _%super186322%_
                     '3
                     '#f
                     '#f)
                    (##unchecked-structure-set! _%self186306%_ '#f '4 '#f '#f)
                    (##unchecked-structure-set! _%self186306%_ '#f '5 '#f '#f)
                    (##unchecked-structure-set! _%self186306%_ '#f '6 '#f '#f)
                    (##unchecked-structure-set! _%self186306%_ '() '7 '#f '#f)
                    (##unchecked-structure-set! _%self186306%_ '#f '8 '#f '#f)
                    '#!void)
                  (error '"struct-instance-init!: too many arguments for struct"
                         _%self186306%_
                         '8
                         (##structure-length _%self186306%_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_%self186337%_ _%ctx186338%_)
        (let ((_%root186340%_ '#f))
          (gx#prelude-context:::init!__%
           _%self186337%_
           _%ctx186338%_
           _%root186340%_))))
    (define gx#prelude-context:::init!
      (lambda _g186557_
        (let ((_g186558_ (##length _g186557_)))
          (cond ((##fx= _g186558_ 2)
                 (apply gx#prelude-context:::init!__0 _g186557_))
                ((##fx= _g186558_ 3)
                 (apply gx#prelude-context:::init!__% _g186557_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g186557_))))))
    (__bind-method!__%
     gx#prelude-context::t
     ':init!
     gx#prelude-context:::init!
     '#f)
    (define gx#import-export-expander-init!
      (lambda (_%self186175%_ _%e186176%_)
        (if (##fx< '3 (##structure-length _%self186175%_))
            (begin
              (##unchecked-structure-set!
               _%self186175%_
               _%e186176%_
               '1
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self186175%_
               (gx#current-expander-context)
               '2
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self186175%_
               (##fx- (gx#current-expander-phi) '1)
               '3
               '#f
               '#f)
              '#!void)
            (error '"struct-instance-init!: too many arguments for struct"
                   _%self186175%_
                   '3
                   (##structure-length _%self186175%_)))))
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
      (lambda (_%g185801185804%_ _%g185802185806%_)
        (gx#core-apply-user-expander__%
         _%g185801185804%_
         _%g185802185806%_
         'apply-import-expander)))
    (__bind-method!__%
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_%g185672185675%_ _%g185673185677%_)
        (gx#core-apply-user-expander__%
         _%g185672185675%_
         _%g185673185677%_
         'apply-export-expander)))
    (__bind-method!__%
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_%ctx185543%_)
        (let* ((_%path185545%_
                (##structure-ref _%ctx185543%_ '7 gx#module-context::t '#f))
               (_%path185547%_
                (if (pair? _%path185545%_)
                    (##last _%path185545%_)
                    _%path185545%_)))
          (if (string? _%path185547%_) _%path185547%_ '#f))))
    (define gx#import-module__%
      (lambda (_%path185519%_ _%reload?185520%_ _%eval?185521%_)
        (let ((_%ctx185523%_
               ((gx#current-expander-module-import)
                _%path185519%_
                _%reload?185520%_)))
          (if (and _%ctx185523%_ _%eval?185521%_)
              (gx#eval-module _%ctx185523%_)
              '#!void)
          _%ctx185523%_)))
    (define gx#import-module__0
      (lambda (_%path185528%_)
        (let* ((_%reload?185530%_ '#f) (_%eval?185532%_ '#f))
          (gx#import-module__%
           _%path185528%_
           _%reload?185530%_
           _%eval?185532%_))))
    (define gx#import-module__1
      (lambda (_%path185534%_ _%reload?185535%_)
        (let ((_%eval?185537%_ '#f))
          (gx#import-module__%
           _%path185534%_
           _%reload?185535%_
           _%eval?185537%_))))
    (define gx#import-module
      (lambda _g186559_
        (let ((_g186560_ (##length _g186559_)))
          (cond ((##fx= _g186560_ 1) (apply gx#import-module__0 _g186559_))
                ((##fx= _g186560_ 2) (apply gx#import-module__1 _g186559_))
                ((##fx= _g186560_ 3) (apply gx#import-module__% _g186559_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g186559_))))))
    (define gx#eval-module
      (lambda (_%mod185516%_)
        ((gx#current-expander-module-eval) _%mod185516%_)))
    (define gx#core-eval-module
      (lambda (_%obj185495%_)
        (letrec ((_%force-e185497%_
                  (lambda (_%getf185511%_ _%e185512%_)
                    (call-with-parameters__1
                     (lambda ()
                       (call-with-parameters__1
                        (lambda () (force (_%getf185511%_ _%e185512%_)))
                        gx#current-expander-phi
                        '0))
                     gx#current-expander-context
                     _%e185512%_))))
          (let _%recur185499%_ ((_%e185501%_ _%obj185495%_))
            (if (##structure-instance-of? _%e185501%_ 'gx#module-context::t)
                (let ()
                  (let ((_%$e185504%_
                         (gx#core-context-prelude__% _%e185501%_)))
                    (if _%$e185504%_ (_%recur185499%_ _%$e185504%_) '#!void))
                  (_%force-e185497%_ gx#module-context-e _%e185501%_))
                (if (##structure-instance-of?
                     _%e185501%_
                     'gx#prelude-context::t)
                    (_%force-e185497%_ gx#prelude-context-e _%e185501%_)
                    (if (gx#stx-string? _%e185501%_)
                        (_%recur185499%_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _%e185501%_)))
                        (if (gx#core-library-module-path? _%e185501%_)
                            (_%recur185499%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%e185501%_)))
                            (error '"cannot eval module" _%obj185495%_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_%ctx185475%_)
        (let _%lp185477%_ ((_%e185479%_ _%ctx185475%_))
          (if (or (##structure-instance-of? _%e185479%_ 'gx#module-context::t)
                  (##structure-instance-of? _%e185479%_ 'gx#local-context::t))
              (_%lp185477%_ (##unchecked-structure-ref _%e185479%_ '3 '#f '#f))
              (if (##structure-instance-of? _%e185479%_ 'gx#prelude-context::t)
                  _%e185479%_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_%ctx185491%_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _%ctx185491%_))))
    (define gx#core-context-prelude
      (lambda _g186561_
        (let ((_g186562_ (##length _g186561_)))
          (cond ((##fx= _g186562_ 0)
                 (apply gx#core-context-prelude__0 _g186561_))
                ((##fx= _g186562_ 1)
                 (apply gx#core-context-prelude__% _g186561_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g186561_))))))
    (define gx#core-module->prelude-context
      (lambda (_%ctx185466%_)
        (let ((_%$e185468%_ (__hash-get gx#__module-registry _%ctx185466%_)))
          (if _%$e185468%_
              _%$e185468%_
              (let ((_%pre185472%_
                     (let ((__obj186552
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
                        __obj186552
                        _%ctx185466%_)
                       __obj186552)))
                (__hash-put! gx#__module-registry _%ctx185466%_ _%pre185472%_)
                _%pre185472%_)))))
    (define gx#core-import-module__%
      (lambda (_%rpath185334%_ _%reload?185335%_)
        (letrec ((_%import-source185337%_
                  (lambda (_%path185425%_)
                    (if (member _%path185425%_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _%path185425%_)
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
                                      (let ((_g186563_
                                             (gx#core-read-module
                                              _%path185425%_)))
                                        (begin
                                          (let ((_g186564_
                                                 (if (##values? _g186563_)
                                                     (##values-length
                                                      _g186563_)
                                                     1)))
                                            (if (not (##fx= _g186564_ 4))
                                                (error "Context expects 4 values"
                                                       _g186564_)))
                                          (let ((_%pre185433%_
                                                 (##values-ref _g186563_ 0))
                                                (_%id185434%_
                                                 (##values-ref _g186563_ 1))
                                                (_%ns185435%_
                                                 (##values-ref _g186563_ 2))
                                                (_%body185436%_
                                                 (##values-ref _g186563_ 3)))
                                            (let* ((_%prelude185446%_
                                                    (if (##structure-instance-of?
                                                         _%pre185433%_
                                                         'gx#prelude-context::t)
                                                        _%pre185433%_
                                                        (if (##structure-instance-of?
                                                             _%pre185433%_
                                                             'gx#module-context::t)
                                                            (gx#core-module->prelude-context
                                                             _%pre185433%_)
                                                            (if (string? _%pre185433%_)
                                                                (gx#core-module->prelude-context
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#core-import-module__0 _%pre185433%_))
                        (if (not _%pre185433%_)
                            (let ((_%$e185442%_
                                   (gx#current-expander-module-prelude)))
                              (if _%$e185442%_
                                  _%$e185442%_
                                  (let ((__obj186553
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
                                     __obj186553
                                     '#f)
                                    __obj186553)))
                            (error '"cannot import module; unknown prelude"
                                   _%rpath185334%_
                                   _%pre185433%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%ctx185448%_
                                                    (let ((__obj186554
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
                                                       __obj186554
                                                       _%id185434%_
                                                       _%prelude185446%_
                                                       _%ns185435%_
                                                       _%path185425%_)
                                                      __obj186554))
                                                   (_%body185450%_
                                                    (gx#core-expand-module-begin
                                                     _%body185436%_
                                                     _%ctx185448%_))
                                                   (_%body185452%_
                                                    (gx#core-quote-syntax__%
                                                     (gx#core-cons
                                                      '%#begin
                                                      _%body185450%_)
                                                     _%path185425%_
                                                     _%ctx185448%_
                                                     '())))
                                              (##unchecked-structure-set!
                                               _%ctx185448%_
                                               (__make-atomic-promise
                                                (lambda ()
                                                  (gx#eval-syntax*
                                                   _%body185452%_)))
                                               '10
                                               '#f
                                               '#f)
                                              (##unchecked-structure-set!
                                               _%ctx185448%_
                                               _%body185452%_
                                               '11
                                               '#f
                                               '#f)
                                              (__hash-put!
                                               gx#__module-registry
                                               _%path185425%_
                                               _%ctx185448%_)
                                              (__hash-put!
                                               gx#__module-registry
                                               _%id185434%_
                                               _%ctx185448%_)
                                              _%ctx185448%_)))))
                                    gx#current-export-expander-phi
                                    '#f))
                                 gx#current-import-expander-phi
                                 '#f))
                              gx#current-expander-path
                              (cons _%path185425%_
                                    (gx#current-expander-path))))
                           gx#current-expander-phi
                           '0))
                        gx#current-expander-marks
                        '()))
                     gx#current-expander-context
                     (gx#core-context-root__0))))
                 (_%import-submodule185338%_
                  (lambda (_%rpath185354%_)
                    (let* ((_%rpath185355185362%_ _%rpath185354%_)
                           (_%E185357185365%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%rpath185355185362%_
                                     '([origin . refs]))
                              '#!void))
                           (_%K185358185413%_
                            (lambda (_%refs185368%_ _%origin185369%_)
                              (let ((_%ctx185371%_
                                     (if _%origin185369%_
                                         (gx#core-import-module__%
                                          _%origin185369%_
                                          _%reload?185335%_)
                                         (gx#current-expander-context))))
                                (let _%lp185373%_ ((_%rest185375%_
                                                    _%refs185368%_)
                                                   (_%ctx185376%_
                                                    _%ctx185371%_))
                                  (let* ((_%rest185377185385%_ _%rest185375%_)
                                         (_%else185379185393%_
                                          (lambda () _%ctx185376%_))
                                         (_%K185381185401%_
                                          (lambda (_%rest185396%_ _%id185397%_)
                                            (let ((_%bind185399%_
                                                   (gx#resolve-identifier__%
                                                    _%id185397%_
                                                    '0
                                                    _%ctx185376%_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _%bind185399%_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _%bind185399%_
                                                         '5
                                                         '#f
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_%lp185373%_
                                                   _%rest185396%_
                                                   (##unchecked-structure-ref
                                                    _%bind185399%_
                                                    '5
                                                    '#f
                                                    '#f))
                                                  (error '"cannot import submodule; not bound as a module"
                                                         _%rpath185354%_
                                                         _%id185397%_
                                                         _%bind185399%_))))))
                                    (if (pair? _%rest185377185385%_)
                                        (let ((_%hd185382185404%_
                                               (##car _%rest185377185385%_))
                                              (_%tl185383185406%_
                                               (##cdr _%rest185377185385%_)))
                                          (let* ((_%id185409%_
                                                  _%hd185382185404%_)
                                                 (_%rest185411%_
                                                  _%tl185383185406%_))
                                            (_%K185381185401%_
                                             _%rest185411%_
                                             _%id185409%_)))
                                        (_%else185379185393%_))))))))
                      (if (pair? _%rpath185355185362%_)
                          (let ((_%hd185359185416%_
                                 (##car _%rpath185355185362%_))
                                (_%tl185360185418%_
                                 (##cdr _%rpath185355185362%_)))
                            (let* ((_%origin185421%_ _%hd185359185416%_)
                                   (_%refs185423%_ _%tl185360185418%_))
                              (_%K185358185413%_
                               _%refs185423%_
                               _%origin185421%_)))
                          (_%E185357185365%_))))))
          (let ((_%$e185340%_
                 (if (not _%reload?185335%_)
                     (__hash-get gx#__module-registry _%rpath185334%_)
                     '#f)))
            (if _%$e185340%_
                _%$e185340%_
                (if (list? _%rpath185334%_)
                    (_%import-submodule185338%_ _%rpath185334%_)
                    (if (gx#core-library-module-path? _%rpath185334%_)
                        (let ((_%ctx185345%_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _%rpath185334%_)
                                _%reload?185335%_)))
                          (__hash-put!
                           gx#__module-registry
                           _%rpath185334%_
                           _%ctx185345%_)
                          _%ctx185345%_)
                        (let* ((_%npath185348%_
                                (path-normalize _%rpath185334%_))
                               (_%$e185350%_
                                (if (not _%reload?185335%_)
                                    (__hash-get
                                     gx#__module-registry
                                     _%npath185348%_)
                                    '#f)))
                          (if _%$e185350%_
                              _%$e185350%_
                              (_%import-source185337%_
                               _%npath185348%_))))))))))
    (define gx#core-import-module__0
      (lambda (_%rpath185459%_)
        (let ((_%reload?185461%_ '#f))
          (gx#core-import-module__% _%rpath185459%_ _%reload?185461%_))))
    (define gx#core-import-module
      (lambda _g186565_
        (let ((_g186566_ (##length _g186565_)))
          (cond ((##fx= _g186566_ 1)
                 (apply gx#core-import-module__0 _g186565_))
                ((##fx= _g186566_ 2)
                 (apply gx#core-import-module__% _g186565_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g186565_))))))
    (define gx#core-read-module
      (lambda (_%path185316%_)
        (__with-catch
         (lambda (_%exn185318%_)
           (if (datum-parsing-exception? _%exn185318%_)
               (let ((_%pos185320%_
                      (datum-parsing-exception-filepos _%exn185318%_)))
                 (if (= _%pos185320%_ '0)
                     (gx#core-read-module/lang _%path185316%_)
                     (gx#raise-syntax-error
                      'read-module
                      '"error reading module"
                      _%path185316%_
                      (call-with-parameters__1
                       (lambda ()
                         (call-with-output-string
                          '""
                          (lambda (_%g185322185324%_)
                            (display-exception__%
                             _%exn185318%_
                             _%g185322185324%_))))
                       dump-stack-trace?
                       '#f)
                      (cons 'line:
                            (cons (##filepos-line _%pos185320%_)
                                  (cons 'col:
                                        (cons (##filepos-col _%pos185320%_)
                                              '())))))))
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _%path185316%_
                (call-with-parameters__1
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_%g185327185329%_)
                      (display-exception__% _%exn185318%_ _%g185327185329%_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _%path185316%_)))))
    (define gx#core-read-module/sexp
      (lambda (_%path185168%_)
        (let _%lp185170%_ ((_%body185172%_
                            (read-syntax-from-file _%path185168%_))
                           (_%pre185173%_ '#f)
                           (_%ns185174%_ '#f)
                           (_%pkg185175%_ '#f))
          (let* ((_%e185176185200%_ _%body185172%_)
                 (_%E185192185226%_
                  (lambda ()
                    (let ((_g186567_
                           (if _%pkg185175%_
                               (values _%pre185173%_
                                       _%ns185174%_
                                       _%pkg185175%_)
                               (gx#core-read-module-package
                                _%path185168%_
                                _%pre185173%_
                                _%ns185174%_))))
                      (begin
                        (let ((_g186568_
                               (if (##values? _g186567_)
                                   (##values-length _g186567_)
                                   1)))
                          (if (not (##fx= _g186568_ 3))
                              (error "Context expects 3 values" _g186568_)))
                        (let ((_%pre185204%_ (##values-ref _g186567_ 0))
                              (_%ns185205%_ (##values-ref _g186567_ 1))
                              (_%pkg185206%_ (##values-ref _g186567_ 2)))
                          (let* ((_%prelude185212%_
                                  (if (gx#core-bound-module-prelude?
                                       _%pre185204%_)
                                      (gx#syntax-local-e__0 _%pre185204%_)
                                      (if (gx#core-library-module-path?
                                           _%pre185204%_)
                                          (gx#core-resolve-library-module-path
                                           _%pre185204%_)
                                          (if (gx#stx-string? _%pre185204%_)
                                              (gx#core-resolve-module-path__%
                                               _%pre185204%_
                                               _%path185168%_)
                                              (gx#stx-e _%pre185204%_)))))
                                 (_%path-id185214%_
                                  (gx#core-module-path->namespace
                                   _%path185168%_))
                                 (_%pkg-id185216%_
                                  (if _%pkg185206%_
                                      (##string-append
                                       _%pkg185206%_
                                       '"/"
                                       _%path-id185214%_)
                                      _%path-id185214%_))
                                 (_%module-id185218%_
                                  (##string->symbol _%pkg-id185216%_))
                                 (_%module-ns185223%_
                                  (if (eq? _%ns185205%_ '#!void)
                                      '#f
                                      (let ((_%$e185220%_ _%ns185205%_))
                                        (if _%$e185220%_
                                            _%$e185220%_
                                            _%pkg-id185216%_)))))
                            (values _%prelude185212%_
                                    _%module-id185218%_
                                    _%module-ns185223%_
                                    _%body185172%_)))))))
                 (_%E185185185258%_
                  (lambda ()
                    (if (gx#stx-pair? _%e185176185200%_)
                        (let ((_%e185193185230%_
                               (gx#syntax-e _%e185176185200%_)))
                          (let ((_%hd185194185233%_ (##car _%e185193185230%_))
                                (_%tl185195185235%_ (##cdr _%e185193185230%_)))
                            (if (eq? (gx#stx-e _%hd185194185233%_) 'package:)
                                (if (gx#stx-pair? _%tl185195185235%_)
                                    (let ((_%e185196185238%_
                                           (gx#syntax-e _%tl185195185235%_)))
                                      (let ((_%hd185197185241%_
                                             (##car _%e185196185238%_))
                                            (_%tl185198185243%_
                                             (##cdr _%e185196185238%_)))
                                        (let* ((_%pkg185246%_
                                                _%hd185197185241%_)
                                               (_%rest185248%_
                                                _%tl185198185243%_)
                                               (_%pkg185256%_
                                                (if (gx#identifier?
                                                     _%pkg185246%_)
                                                    (symbol->string
                                                     (gx#stx-e _%pkg185246%_))
                                                    (if (or (gx#stx-string?
                                                             _%pkg185246%_)
                                                            (gx#stx-false?
                                                             _%pkg185246%_))
                                                        (gx#stx-e
                                                         _%pkg185246%_)
                                                        (gx#raise-syntax-error
                                                         'import
                                                         '"Bad syntax; Illegal package name"
                                                         _%pkg185246%_)))))
                                          (_%lp185170%_
                                           _%rest185248%_
                                           _%pre185173%_
                                           _%ns185174%_
                                           _%pkg185256%_))))
                                    (_%E185192185226%_))
                                (_%E185192185226%_))))
                        (_%E185192185226%_))))
                 (_%E185178185288%_
                  (lambda ()
                    (if (gx#stx-pair? _%e185176185200%_)
                        (let ((_%e185186185262%_
                               (gx#syntax-e _%e185176185200%_)))
                          (let ((_%hd185187185265%_ (##car _%e185186185262%_))
                                (_%tl185188185267%_ (##cdr _%e185186185262%_)))
                            (if (eq? (gx#stx-e _%hd185187185265%_) 'namespace:)
                                (if (gx#stx-pair? _%tl185188185267%_)
                                    (let ((_%e185189185270%_
                                           (gx#syntax-e _%tl185188185267%_)))
                                      (let ((_%hd185190185273%_
                                             (##car _%e185189185270%_))
                                            (_%tl185191185275%_
                                             (##cdr _%e185189185270%_)))
                                        (let* ((_%ns185278%_
                                                _%hd185190185273%_)
                                               (_%rest185280%_
                                                _%tl185191185275%_)
                                               (_%ns185286%_
                                                (if (gx#identifier?
                                                     _%ns185278%_)
                                                    (symbol->string
                                                     (gx#stx-e _%ns185278%_))
                                                    (if (gx#stx-string?
                                                         _%ns185278%_)
                                                        (gx#stx-e _%ns185278%_)
                                                        (if (gx#stx-false?
                                                             _%ns185278%_)
                                                            '#!void
                                                            (gx#raise-syntax-error
                                                             'import
                                                             '"Bad syntax; illegal namespace"
                                                             _%ns185278%_))))))
                                          (_%lp185170%_
                                           _%rest185280%_
                                           _%pre185173%_
                                           _%ns185286%_
                                           _%pkg185175%_))))
                                    (_%E185185185258%_))
                                (_%E185185185258%_))))
                        (_%E185185185258%_))))
                 (_%E185177185312%_
                  (lambda ()
                    (if (gx#stx-pair? _%e185176185200%_)
                        (let ((_%e185179185292%_
                               (gx#syntax-e _%e185176185200%_)))
                          (let ((_%hd185180185295%_ (##car _%e185179185292%_))
                                (_%tl185181185297%_ (##cdr _%e185179185292%_)))
                            (if (eq? (gx#stx-e _%hd185180185295%_) 'prelude:)
                                (if (gx#stx-pair? _%tl185181185297%_)
                                    (let ((_%e185182185300%_
                                           (gx#syntax-e _%tl185181185297%_)))
                                      (let ((_%hd185183185303%_
                                             (##car _%e185182185300%_))
                                            (_%tl185184185305%_
                                             (##cdr _%e185182185300%_)))
                                        (let* ((_%prelude185308%_
                                                _%hd185183185303%_)
                                               (_%rest185310%_
                                                _%tl185184185305%_))
                                          (_%lp185170%_
                                           _%rest185310%_
                                           _%prelude185308%_
                                           _%ns185174%_
                                           _%pkg185175%_))))
                                    (_%E185178185288%_))
                                (_%E185178185288%_))))
                        (_%E185178185288%_)))))
            (_%E185177185312%_)))))
    (define gx#core-read-module/lang
      (lambda (_%path184989%_)
        (letrec ((_%default-read-module-body184991%_
                  (lambda (_%inp185160%_)
                    (let _%lp185162%_ ((_%body185164%_ '()))
                      (let ((_%next185166%_ (read-syntax__% _%inp185160%_)))
                        (if (eof-object? _%next185166%_)
                            (reverse _%body185164%_)
                            (_%lp185162%_
                             (cons _%next185166%_ _%body185164%_)))))))
                 (_%read-body184992%_
                  (lambda (_%inp185077%_
                           _%pre185078%_
                           _%ns185079%_
                           _%pkg185080%_
                           _%args185081%_)
                    (let ((_g186569_
                           (if _%pkg185080%_
                               (values _%pre185078%_
                                       _%ns185079%_
                                       _%pkg185080%_)
                               (gx#core-read-module-package
                                _%path184989%_
                                _%pre185078%_
                                _%ns185079%_))))
                      (begin
                        (let ((_g186570_
                               (if (##values? _g186569_)
                                   (##values-length _g186569_)
                                   1)))
                          (if (not (##fx= _g186570_ 3))
                              (error "Context expects 3 values" _g186570_)))
                        (let ((_%pre185083%_ (##values-ref _g186569_ 0))
                              (_%ns185084%_ (##values-ref _g186569_ 1))
                              (_%pkg185085%_ (##values-ref _g186569_ 2)))
                          (let* ((_%prelude185087%_
                                  (gx#import-module__0 _%pre185083%_))
                                 (_%read-module-body185142%_
                                  (let ((_%$e185133%_
                                         (__find (lambda (_%e185088185090%_)
                                                   (let* ((_%e185088185092185102%_
                                                           _%e185088185090%_)
                                                          (_%else185094185110%_
                                                           (lambda () '#f))
                                                          (_%K185096185114%_
                                                           (lambda () '#t)))
                                                     (if (##structure-direct-instance-of?
                                                          _%e185088185092185102%_
                                                          'gx#module-export::t)
                                                         (let* ((_%e185097185117%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##unchecked-structure-ref
                          _%e185088185092185102%_
                          '1
                          '#f
                          '#f))
                        (_%e185098185120%_
                         (##unchecked-structure-ref
                          _%e185088185092185102%_
                          '2
                          '#f
                          '#f))
                        (_%e185099185123%_
                         (##unchecked-structure-ref
                          _%e185088185092185102%_
                          '3
                          '#f
                          '#f)))
                   (if (##eq? _%e185099185123%_ '1)
                       (let ((_%e185100185126%_
                              (##unchecked-structure-ref
                               _%e185088185092185102%_
                               '4
                               '#f
                               '#f)))
                         (if ((lambda (_%g185128185130%_)
                                (eq? _%g185128185130%_ 'read-module-body))
                              _%e185100185126%_)
                             (_%K185096185114%_)
                             (_%else185094185110%_)))
                       (_%else185094185110%_)))
                 (_%else185094185110%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (##unchecked-structure-ref
                                                  _%prelude185087%_
                                                  '9
                                                  '#f
                                                  '#f))))
                                    (if _%$e185133%_
                                        ((lambda (_%xport185136%_)
                                           (let ((_%proc185139%_
                                                  (__with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _%xport185136%_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _%proc185139%_)
                                                 _%proc185139%_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _%path184989%_
                                                  _%pre185083%_
                                                  _%proc185139%_))))
                                         _%$e185133%_)
                                        _%default-read-module-body184991%_)))
                                 (_%path-id185144%_
                                  (gx#core-module-path->namespace
                                   _%path184989%_))
                                 (_%pkg-id185146%_
                                  (if _%pkg185085%_
                                      (##string-append
                                       _%pkg185085%_
                                       '"/"
                                       _%path-id185144%_)
                                      _%path-id185144%_))
                                 (_%module-id185148%_
                                  (##string->symbol _%pkg-id185146%_))
                                 (_%module-ns185153%_
                                  (let ((_%$e185150%_ _%ns185084%_))
                                    (if _%$e185150%_
                                        _%$e185150%_
                                        _%pkg-id185146%_)))
                                 (_%body185157%_
                                  (call-with-parameters__1
                                   (lambda ()
                                     (call-with-parameters__1
                                      (lambda ()
                                        (_%read-module-body185142%_
                                         _%inp185077%_))
                                      gx#current-module-reader-args
                                      _%args185081%_))
                                   gx#current-module-reader-path
                                   _%path184989%_)))
                            (values _%prelude185087%_
                                    _%module-id185148%_
                                    _%module-ns185153%_
                                    _%body185157%_)))))))
                 (_%string-e184993%_
                  (lambda (_%obj185071%_ _%what185072%_)
                    (if (string? _%obj185071%_)
                        _%obj185071%_
                        (if (symbol? _%obj185071%_)
                            (##symbol->string _%obj185071%_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _%what185072%_)
                             _%path184989%_
                             _%obj185071%_)))))
                 (_%read-lang-args184994%_
                  (lambda (_%inp185026%_ _%args185027%_)
                    (let* ((_%args185028185036%_ _%args185027%_)
                           (_%else185030185044%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _%path184989%_)))
                           (_%K185032185059%_
                            (lambda (_%args185047%_ _%prelude185048%_)
                              (let* ((_%pkg185050%_
                                      (pgetq__0 'package: _%args185047%_))
                                     (_%pkg185052%_
                                      (if _%pkg185050%_
                                          (_%string-e184993%_
                                           _%pkg185050%_
                                           '"package")
                                          '#f))
                                     (_%ns185054%_
                                      (pgetq__0 'namespace: _%args185047%_))
                                     (_%ns185056%_
                                      (if _%ns185054%_
                                          (_%string-e184993%_
                                           _%ns185054%_
                                           '"namespace")
                                          '#f)))
                                (_%read-body184992%_
                                 _%inp185026%_
                                 _%prelude185048%_
                                 _%ns185056%_
                                 _%pkg185052%_
                                 _%args185047%_)))))
                      (if (pair? _%args185028185036%_)
                          (let ((_%hd185033185062%_
                                 (##car _%args185028185036%_))
                                (_%tl185034185064%_
                                 (##cdr _%args185028185036%_)))
                            (let* ((_%prelude185067%_ _%hd185033185062%_)
                                   (_%args185069%_ _%tl185034185064%_))
                              (_%K185032185059%_
                               _%args185069%_
                               _%prelude185067%_)))
                          (_%else185030185044%_)))))
                 (_%read-lang184995%_
                  (lambda (_%inp185000%_)
                    (let* ((_%head185002%_ (read-line _%inp185000%_))
                           (_%$e185004%_
                            (string-index__0 _%head185002%_ '#\space)))
                      (if _%$e185004%_
                          ((lambda (_%ix185007%_)
                             (let ((_%lang185009%_
                                    (substring
                                     _%head185002%_
                                     '0
                                     _%ix185007%_)))
                               (if (equal? _%lang185009%_ '"#lang")
                                   (let* ((_%rest185011%_
                                           (substring
                                            _%head185002%_
                                            (##fx+ _%ix185007%_ '1)
                                            (string-length _%head185002%_)))
                                          (_%args185022%_
                                           (__with-catch
                                            (lambda (_%g185012185014%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _%path184989%_
                                               _%g185012185014%_))
                                            (lambda ()
                                              (call-with-input-string
                                               _%rest185011%_
                                               (lambda (_%g185017185019%_)
                                                 (read-all
                                                  _%g185017185019%_
                                                  read)))))))
                                     (_%read-lang-args184994%_
                                      _%inp185000%_
                                      _%args185022%_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _%path184989%_))))
                           _%$e185004%_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _%path184989%_)))))
                 (_%read-e184996%_
                  (lambda (_%inp184998%_)
                    (if (eq? (peek-char _%inp184998%_) '#\#)
                        (_%read-lang184995%_ _%inp184998%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _%path184989%_)))))
          (gx#call-with-input-source-file _%path184989%_ _%read-e184996%_))))
    (define gx#core-read-module-package
      (lambda (_%path184937%_ _%pre184938%_ _%ns184939%_)
        (letrec ((_%string-e184941%_
                  (lambda (_%e184984%_)
                    (if (symbol? _%e184984%_)
                        (##symbol->string _%e184984%_)
                        (if (string? _%e184984%_)
                            _%e184984%_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%e184984%_))))))
          (let _%lp184943%_ ((_%dir184945%_ (path-directory _%path184937%_))
                             (_%pkg-path184946%_ '()))
            (let ((_%gerbil.pkg184948%_
                   (path-expand '"gerbil.pkg" _%dir184945%_)))
              (if (##file-exists? _%gerbil.pkg184948%_)
                  (let ((_%plist184950%_
                         (gx#core-library-package-plist__% _%dir184945%_ '#t)))
                    (if (null? _%plist184950%_)
                        (let ((_%pkg184953%_
                               (if (null? _%pkg-path184946%_)
                                   '#f
                                   (string-join _%pkg-path184946%_ '"/"))))
                          (values _%pre184938%_ _%ns184939%_ _%pkg184953%_))
                        (if (list? _%plist184950%_)
                            (let* ((_%root184956%_
                                    (pgetq__0 'package: _%plist184950%_))
                                   (_%pkg184960%_
                                    (let ((_%pkg-path184958%_
                                           (if _%root184956%_
                                               (cons (_%string-e184941%_
                                                      _%root184956%_)
                                                     _%pkg-path184946%_)
                                               _%pkg-path184946%_)))
                                      (if (null? _%pkg-path184958%_)
                                          '#f
                                          (string-join
                                           _%pkg-path184958%_
                                           '"/"))))
                                   (_%ns184967%_
                                    (let ((_%ns184965%_
                                           (let ((_%$e184962%_ _%ns184939%_))
                                             (if _%$e184962%_
                                                 _%$e184962%_
                                                 (pgetq__0
                                                  'namespace:
                                                  _%plist184950%_)))))
                                      (if _%ns184965%_
                                          (_%string-e184941%_ _%ns184965%_)
                                          '#f)))
                                   (_%pre184972%_
                                    (let ((_%$e184969%_ _%pre184938%_))
                                      (if _%$e184969%_
                                          _%$e184969%_
                                          (pgetq__0
                                           'prelude:
                                           _%plist184950%_)))))
                              (values _%pre184972%_
                                      _%ns184967%_
                                      _%pkg184960%_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%plist184950%_))))
                  (let ((_%dir*184976%_
                         (path-strip-trailing-directory-separator
                          _%dir184945%_)))
                    (if (or (__string-empty? _%dir*184976%_)
                            (equal? _%dir184945%_ _%dir*184976%_))
                        (values _%pre184938%_ _%ns184939%_ '#f)
                        (let ((_%xpath184981%_
                               (path-strip-directory _%dir*184976%_))
                              (_%xdir184982%_ (path-directory _%dir*184976%_)))
                          (_%lp184943%_
                           _%xdir184982%_
                           (cons _%xpath184981%_ _%pkg-path184946%_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_%path184935%_)
        (path-strip-extension (path-strip-directory _%path184935%_))))
    (define gx#core-module-path->id
      (lambda (_%path184933%_)
        (##string->symbol (gx#core-module-path->namespace _%path184933%_))))
    (define gx#core-resolve-module-path__%
      (lambda (_%stx-path184912%_ _%rel184913%_)
        (let* ((_%path184915%_ (gx#stx-e _%stx-path184912%_))
               (_%path184917%_
                (if (__string-empty? (path-extension _%path184915%_))
                    (##string-append _%path184915%_ '".ss")
                    _%path184915%_)))
          (gx#core-resolve-path__%
           _%path184917%_
           (let ((_%$e184920%_ (gx#stx-source _%stx-path184912%_)))
             (if _%$e184920%_ _%$e184920%_ _%rel184913%_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_%stx-path184926%_)
        (let ((_%rel184928%_ '#f))
          (gx#core-resolve-module-path__% _%stx-path184926%_ _%rel184928%_))))
    (define gx#core-resolve-module-path
      (lambda _g186571_
        (let ((_g186572_ (##length _g186571_)))
          (cond ((##fx= _g186572_ 1)
                 (apply gx#core-resolve-module-path__0 _g186571_))
                ((##fx= _g186572_ 2)
                 (apply gx#core-resolve-module-path__% _g186571_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g186571_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_%libpath184797%_)
        (let* ((_%spath184799%_ (symbol->string (gx#stx-e _%libpath184797%_)))
               (_%spath184801%_
                (substring
                 _%spath184799%_
                 '1
                 (##string-length _%spath184799%_)))
               (_%ext184803%_ (path-extension _%spath184801%_))
               (_%ssi184805%_
                (if (__string-empty? _%ext184803%_)
                    (##string-append _%spath184801%_ '".ssi")
                    (##string-append
                     (path-strip-extension _%spath184801%_)
                     '".ssi")))
               (_%srcs184809%_
                (if (__string-empty? _%ext184803%_)
                    (##map (lambda (_%ext184807%_)
                             (string-append _%spath184801%_ _%ext184807%_))
                           '(".ss" ".sld" ".scm"))
                    (cons _%spath184801%_ '()))))
          (let _%lp184812%_ ((_%rest184814%_ (load-path)))
            (let* ((_%rest184815184824%_ _%rest184814%_)
                   (_%E184818184828%_
                    (lambda ()
                      (error '"No clause matching"
                             _%rest184815184824%_
                             '([dir . rest])
                             '([]))
                      '#!void)))
              (let ((_%K184820184899%_
                     (lambda (_%rest184839%_ _%dir184840%_)
                       (letrec ((_%resolve184842%_
                                 (lambda (_%ssi184855%_ _%srcs184856%_)
                                   (let ((_%compiled-path184858%_
                                          (path-expand
                                           _%ssi184855%_
                                           _%dir184840%_)))
                                     (if (##file-exists?
                                          _%compiled-path184858%_)
                                         (path-normalize
                                          _%compiled-path184858%_)
                                         (let _%lpr184860%_ ((_%rest-src184862%_
                                                              _%srcs184856%_))
                                           (let* ((_%rest-src184863184871%_
                                                   _%rest-src184862%_)
                                                  (_%else184865184879%_
                                                   (lambda ()
                                                     (_%lp184812%_
                                                      _%rest184839%_)))
                                                  (_%K184867184887%_
                                                   (lambda (_%rest-src184882%_
                                                            _%src184883%_)
                                                     (let ((_%src-path184885%_
                                                            (path-expand
                                                             _%src184883%_
                                                             _%dir184840%_)))
                                                       (if (##file-exists?
                                                            _%src-path184885%_)
                                                           (path-normalize
                                                            _%src-path184885%_)
                                                           (_%lpr184860%_
                                                            _%rest-src184882%_))))))
                                             (if (pair? _%rest-src184863184871%_)
                                                 (let ((_%hd184868184890%_
                                                        (##car _%rest-src184863184871%_))
                                                       (_%tl184869184892%_
                                                        (##cdr _%rest-src184863184871%_)))
                                                   (let* ((_%src184895%_
                                                           _%hd184868184890%_)
                                                          (_%rest-src184897%_
                                                           _%tl184869184892%_))
                                                     (_%K184867184887%_
                                                      _%rest-src184897%_
                                                      _%src184895%_)))
                                                 (_%else184865184879%_)))))))))
                         (let ((_%$e184844%_
                                (gx#core-library-package-path-prefix
                                 _%dir184840%_)))
                           (if _%$e184844%_
                               ((lambda (_%prefix184847%_)
                                  (if (string-prefix?
                                       _%prefix184847%_
                                       _%spath184801%_)
                                      (let ((_%ssi184851%_
                                             (substring
                                              _%ssi184805%_
                                              (string-length _%prefix184847%_)
                                              (##string-length _%ssi184805%_)))
                                            (_%srcs184852%_
                                             (##map (lambda (_%src184849%_)
                                                      (substring
                                                       _%src184849%_
                                                       (string-length
                                                        _%prefix184847%_)
                                                       (string-length
                                                        _%src184849%_)))
                                                    _%srcs184809%_)))
                                        (_%resolve184842%_
                                         _%ssi184851%_
                                         _%srcs184852%_))
                                      (_%lp184812%_ _%rest184839%_)))
                                _%$e184844%_)
                               (_%resolve184842%_
                                _%ssi184805%_
                                _%srcs184809%_))))))
                    (_%K184819184833%_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"cannot find library module"
                        _%libpath184797%_))))
                (let ((_%try-match184817184836%_
                       (lambda ()
                         (if (null? _%rest184815184824%_)
                             (_%K184819184833%_)
                             (_%E184818184828%_)))))
                  (if (pair? _%rest184815184824%_)
                      (let ((_%tl184822184904%_ (##cdr _%rest184815184824%_))
                            (_%hd184821184902%_ (##car _%rest184815184824%_)))
                        (let ((_%dir184907%_ _%hd184821184902%_)
                              (_%rest184909%_ _%tl184822184904%_))
                          (_%K184820184899%_ _%rest184909%_ _%dir184907%_)))
                      (_%try-match184817184836%_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_%modpath184765%_)
        (letrec ((_%resolve184767%_
                  (lambda (_%path184788%_ _%base184789%_)
                    (let ((_%$e184791%_
                           (string-rindex__0 _%base184789%_ '#\/)))
                      (if _%$e184791%_
                          ((lambda (_%idx184794%_)
                             (gx#core-resolve-library-module-path
                              (##string->symbol
                               (string-append
                                '":"
                                (substring _%base184789%_ '0 _%idx184794%_)
                                '"/"
                                _%path184788%_))))
                           _%$e184791%_)
                          (gx#core-resolve-library-module-path
                           (##string->symbol
                            (string-append '":" _%path184788%_))))))))
          (let ((_%spath184769%_ (symbol->string (gx#stx-e _%modpath184765%_)))
                (_%mod184770%_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _%mod184770%_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"cannot resolve relative module path; not in module context"
                 _%modpath184765%_))
            (let ((_%mpath184772%_
                   (symbol->string
                    (##structure-ref
                     _%mod184770%_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _%lp184774%_ ((_%spath184776%_ _%spath184769%_)
                                 (_%mpath184777%_ _%mpath184772%_))
                (if (string-prefix? '"../" _%spath184776%_)
                    (let ((_%$e184780%_
                           (string-rindex__0 _%mpath184777%_ '#\/)))
                      (if _%$e184780%_
                          ((lambda (_%idx184783%_)
                             (_%lp184774%_
                              (substring
                               _%spath184776%_
                               '3
                               (string-length _%spath184776%_))
                              (substring _%mpath184777%_ '0 _%idx184783%_)))
                           _%$e184780%_)
                          (gx#raise-syntax-error
                           '#f
                           '"cannot resolve relative module path; illegal traversal"
                           _%modpath184765%_)))
                    (if (string-prefix? '"./" _%spath184776%_)
                        (_%lp184774%_
                         (substring
                          _%spath184776%_
                          '2
                          (string-length _%spath184776%_))
                         _%mpath184777%_)
                        (_%resolve184767%_
                         _%spath184776%_
                         _%mpath184777%_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_%dir184757%_)
        (let ((_%$e184759%_
               (pgetq__0
                'package:
                (gx#core-library-package-plist__0 _%dir184757%_))))
          (if _%$e184759%_
              ((lambda (_%pkg184762%_)
                 (##string-append (symbol->string _%pkg184762%_) '"/"))
               _%$e184759%_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_%dir184727%_ _%exists?184728%_)
        (let ((_%$e184730%_ (__hash-get gx#__module-pkg-cache _%dir184727%_)))
          (if _%$e184730%_
              _%$e184730%_
              (let* ((_%gerbil.pkg184734%_
                      (path-expand '"gerbil.pkg" _%dir184727%_))
                     (_%plist184744%_
                      (if (or _%exists?184728%_
                              (##file-exists? _%gerbil.pkg184734%_))
                          (let ((_%e184739%_
                                 (gx#call-with-input-source-file
                                  _%gerbil.pkg184734%_
                                  read)))
                            (if (eof-object? _%e184739%_)
                                '()
                                (if (list? _%e184739%_)
                                    _%e184739%_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _%gerbil.pkg184734%_
                                     _%e184739%_))))
                          '())))
                (__hash-put!
                 gx#__module-pkg-cache
                 _%dir184727%_
                 _%plist184744%_)
                _%plist184744%_)))))
    (define gx#core-library-package-plist__0
      (lambda (_%dir184750%_)
        (let ((_%exists?184752%_ '#f))
          (gx#core-library-package-plist__% _%dir184750%_ _%exists?184752%_))))
    (define gx#core-library-package-plist
      (lambda _g186573_
        (let ((_g186574_ (##length _g186573_)))
          (cond ((##fx= _g186574_ 1)
                 (apply gx#core-library-package-plist__0 _g186573_))
                ((##fx= _g186574_ 2)
                 (apply gx#core-library-package-plist__% _g186573_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g186573_))))))
    (define gx#core-library-module-path?
      (lambda (_%stx184724%_)
        (gx#core-special-module-path? _%stx184724%_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_%stx184722%_)
        (gx#core-special-module-path? _%stx184722%_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_%stx184717%_ _%char184718%_)
        (if (gx#identifier? _%stx184717%_)
            (if (interned-symbol? (gx#stx-e _%stx184717%_))
                (let ((_%str184720%_
                       (symbol->string (gx#stx-e _%stx184717%_))))
                  (if (##fx> (##string-length _%str184720%_) '1)
                      (eq? (string-ref _%str184720%_ '0) _%char184718%_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_%stx184711%_)
        (gx#core-bound-identifier?__%
         _%stx184711%_
         (lambda (_%g184712184714%_)
           (gx#expander-binding?__% _%g184712184714%_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_%stx184705%_)
        (gx#core-bound-identifier?__%
         _%stx184705%_
         (lambda (_%g184706184708%_)
           (gx#expander-binding?__% _%g184706184708%_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_%stx184692%_)
        (letrec ((_%module-prelude?184694%_
                  (lambda (_%e184700%_)
                    (let ((_%$e184702%_
                           (##structure-instance-of?
                            _%e184700%_
                            'gx#module-context::t)))
                      (if _%$e184702%_
                          _%$e184702%_
                          (##structure-instance-of?
                           _%e184700%_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _%stx184692%_
           (lambda (_%g184695184697%_)
             (gx#expander-binding?__%
              _%g184695184697%_
              _%module-prelude?184694%_))))))
    (define gx#core-bind-import!__%
      (lambda (_%in184623%_ _%ctx184624%_ _%force-weak?184625%_)
        (let* ((_%in184626184635%_ _%in184623%_)
               (_%E184628184638%_
                (lambda ()
                  (error '"No clause matching"
                         _%in184626184635%_
                         '((module-import source key phi weak?)))
                  '#!void))
               (_%K184629184651%_
                (lambda (_%weak?184641%_
                         _%phi184642%_
                         _%key184643%_
                         _%source184644%_)
                  (gx#core-bind!__%
                   _%key184643%_
                   (let* ((_%e184646%_
                           (gx#core-resolve-module-export _%source184644%_))
                          (__obj186555
                           (##structure
                            gx#import-binding::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                     (gx#import-binding:::init!
                      __obj186555
                      (##unchecked-structure-ref _%e184646%_ '1 '#f '#f)
                      _%key184643%_
                      _%phi184642%_
                      _%e184646%_
                      (##unchecked-structure-ref _%source184644%_ '1 '#f '#f)
                      (let ((_%$e184648%_ _%force-weak?184625%_))
                        (if _%$e184648%_ _%$e184648%_ _%weak?184641%_)))
                     __obj186555)
                   gx#core-context-rebind?
                   _%phi184642%_
                   _%ctx184624%_))))
          (if (##structure-direct-instance-of?
               _%in184626184635%_
               'gx#module-import::t)
              (let* ((_%e184630184654%_
                      (##unchecked-structure-ref
                       _%in184626184635%_
                       '1
                       '#f
                       '#f))
                     (_%source184657%_ _%e184630184654%_)
                     (_%e184631184659%_
                      (##unchecked-structure-ref
                       _%in184626184635%_
                       '2
                       '#f
                       '#f))
                     (_%key184662%_ _%e184631184659%_)
                     (_%e184632184664%_
                      (##unchecked-structure-ref
                       _%in184626184635%_
                       '3
                       '#f
                       '#f))
                     (_%phi184667%_ _%e184632184664%_)
                     (_%e184633184669%_
                      (##unchecked-structure-ref
                       _%in184626184635%_
                       '4
                       '#f
                       '#f))
                     (_%weak?184672%_ _%e184633184669%_))
                (_%K184629184651%_
                 _%weak?184672%_
                 _%phi184667%_
                 _%key184662%_
                 _%source184657%_))
              (_%E184628184638%_)))))
    (define gx#core-bind-import!__0
      (lambda (_%in184677%_)
        (let* ((_%ctx184679%_ (gx#current-expander-context))
               (_%force-weak?184681%_ '#f))
          (gx#core-bind-import!__%
           _%in184677%_
           _%ctx184679%_
           _%force-weak?184681%_))))
    (define gx#core-bind-import!__1
      (lambda (_%in184683%_ _%ctx184684%_)
        (let ((_%force-weak?184686%_ '#f))
          (gx#core-bind-import!__%
           _%in184683%_
           _%ctx184684%_
           _%force-weak?184686%_))))
    (define gx#core-bind-import!
      (lambda _g186575_
        (let ((_g186576_ (##length _g186575_)))
          (cond ((##fx= _g186576_ 1) (apply gx#core-bind-import!__0 _g186575_))
                ((##fx= _g186576_ 2) (apply gx#core-bind-import!__1 _g186575_))
                ((##fx= _g186576_ 3) (apply gx#core-bind-import!__% _g186575_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g186575_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_%in184609%_ _%ctx184610%_)
        (gx#core-bind-import!__% _%in184609%_ _%ctx184610%_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_%in184615%_)
        (let ((_%ctx184617%_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _%in184615%_ _%ctx184617%_))))
    (define gx#core-bind-weak-import!
      (lambda _g186577_
        (let ((_g186578_ (##length _g186577_)))
          (cond ((##fx= _g186578_ 1)
                 (apply gx#core-bind-weak-import!__0 _g186577_))
                ((##fx= _g186578_ 2)
                 (apply gx#core-bind-weak-import!__% _g186577_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g186577_))))))
    (define gx#core-resolve-module-export
      (lambda (_%out184502%_)
        (letrec ((_%subst184504%_
                  (lambda (_%key184549%_)
                    (let* ((_%key184550184558%_ _%key184549%_)
                           (_%else184552184566%_ (lambda () _%key184549%_))
                           (_%K184554184596%_
                            (lambda (_%mark184569%_ _%id184570%_)
                              (let* ((_%mark184571184577%_ _%mark184569%_)
                                     (_%E184573184580%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark184571184577%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K184574184588%_
                                      (lambda (_%subst184583%_)
                                        (let ((_%$e184585%_
                                               (if _%subst184583%_
                                                   (hash-get
                                                    _%subst184583%_
                                                    _%id184570%_)
                                                   '#f)))
                                          (if _%$e184585%_
                                              _%$e184585%_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _%key184549%_))))))
                                (if (##structure-instance-of?
                                     _%mark184571184577%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e184575184591%_
                                            (##unchecked-structure-ref
                                             _%mark184571184577%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst184594%_ _%e184575184591%_))
                                      (_%K184574184588%_ _%subst184594%_))
                                    (_%E184573184580%_))))))
                      (if (pair? _%key184550184558%_)
                          (let ((_%hd184555184599%_
                                 (##car _%key184550184558%_))
                                (_%tl184556184601%_
                                 (##cdr _%key184550184558%_)))
                            (let* ((_%id184604%_ _%hd184555184599%_)
                                   (_%mark184606%_ _%tl184556184601%_))
                              (_%K184554184596%_ _%mark184606%_ _%id184604%_)))
                          (_%else184552184566%_))))))
          (let* ((_%out184505184515%_ _%out184502%_)
                 (_%E184507184518%_
                  (lambda ()
                    (error '"No clause matching"
                           _%out184505184515%_
                           '((module-export ctx key phi _ _)))
                    '#!void))
                 (_%K184508184525%_
                  (lambda (_%phi184521%_ _%key184522%_ _%ctx184523%_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _%ctx184523%_ _%phi184521%_)
                     (_%subst184504%_ _%key184522%_)))))
            (if (##structure-direct-instance-of?
                 _%out184505184515%_
                 'gx#module-export::t)
                (let* ((_%e184509184528%_
                        (##unchecked-structure-ref
                         _%out184505184515%_
                         '1
                         '#f
                         '#f))
                       (_%ctx184531%_ _%e184509184528%_)
                       (_%e184510184533%_
                        (##unchecked-structure-ref
                         _%out184505184515%_
                         '2
                         '#f
                         '#f))
                       (_%key184536%_ _%e184510184533%_)
                       (_%e184511184538%_
                        (##unchecked-structure-ref
                         _%out184505184515%_
                         '3
                         '#f
                         '#f))
                       (_%phi184541%_ _%e184511184538%_)
                       (_%e184512184543%_
                        (##unchecked-structure-ref
                         _%out184505184515%_
                         '4
                         '#f
                         '#f))
                       (_%e184513184546%_
                        (##unchecked-structure-ref
                         _%out184505184515%_
                         '5
                         '#f
                         '#f)))
                  (_%K184508184525%_
                   _%phi184541%_
                   _%key184536%_
                   _%ctx184531%_))
                (_%E184507184518%_))))))
    (define gx#core-module-export->import__%
      (lambda (_%out184428%_ _%rename184429%_ _%dphi184430%_)
        (let* ((_%out184431184441%_ _%out184428%_)
               (_%E184433184444%_
                (lambda ()
                  (error '"No clause matching"
                         _%out184431184441%_
                         '((module-export ctx key phi name weak?)))
                  '#!void))
               (_%K184434184456%_
                (lambda (_%weak?184447%_
                         _%name184448%_
                         _%phi184449%_
                         _%key184450%_
                         _%ctx184451%_)
                  (##structure
                   gx#module-import::t
                   _%out184428%_
                   (let ((_%$e184453%_ _%rename184429%_))
                     (if _%$e184453%_ _%$e184453%_ _%name184448%_))
                   (fx+ _%phi184449%_ _%dphi184430%_)
                   _%weak?184447%_))))
          (if (##structure-direct-instance-of?
               _%out184431184441%_
               'gx#module-export::t)
              (let* ((_%e184435184459%_
                      (##unchecked-structure-ref
                       _%out184431184441%_
                       '1
                       '#f
                       '#f))
                     (_%ctx184462%_ _%e184435184459%_)
                     (_%e184436184464%_
                      (##unchecked-structure-ref
                       _%out184431184441%_
                       '2
                       '#f
                       '#f))
                     (_%key184467%_ _%e184436184464%_)
                     (_%e184437184469%_
                      (##unchecked-structure-ref
                       _%out184431184441%_
                       '3
                       '#f
                       '#f))
                     (_%phi184472%_ _%e184437184469%_)
                     (_%e184438184474%_
                      (##unchecked-structure-ref
                       _%out184431184441%_
                       '4
                       '#f
                       '#f))
                     (_%name184477%_ _%e184438184474%_)
                     (_%e184439184479%_
                      (##unchecked-structure-ref
                       _%out184431184441%_
                       '5
                       '#f
                       '#f))
                     (_%weak?184482%_ _%e184439184479%_))
                (_%K184434184456%_
                 _%weak?184482%_
                 _%name184477%_
                 _%phi184472%_
                 _%key184467%_
                 _%ctx184462%_))
              (_%E184433184444%_)))))
    (define gx#core-module-export->import__0
      (lambda (_%out184487%_)
        (let* ((_%rename184489%_ '#f) (_%dphi184491%_ '0))
          (gx#core-module-export->import__%
           _%out184487%_
           _%rename184489%_
           _%dphi184491%_))))
    (define gx#core-module-export->import__1
      (lambda (_%out184493%_ _%rename184494%_)
        (let ((_%dphi184496%_ '0))
          (gx#core-module-export->import__%
           _%out184493%_
           _%rename184494%_
           _%dphi184496%_))))
    (define gx#core-module-export->import
      (lambda _g186579_
        (let ((_g186580_ (##length _g186579_)))
          (cond ((##fx= _g186580_ 1)
                 (apply gx#core-module-export->import__0 _g186579_))
                ((##fx= _g186580_ 2)
                 (apply gx#core-module-export->import__1 _g186579_))
                ((##fx= _g186580_ 3)
                 (apply gx#core-module-export->import__% _g186579_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g186579_))))))
    (define gx#core-expand-module%
      (lambda (_%stx184327%_)
        (letrec ((_%make-context184329%_
                  (lambda (_%id184406%_)
                    (let* ((_%super184408%_ (gx#current-expander-context))
                           (_%bind-id184410%_ (gx#stx-e _%id184406%_))
                           (_%mod-id184412%_
                            (if (##structure-instance-of?
                                 _%super184408%_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##unchecked-structure-ref
                                  _%super184408%_
                                  '1
                                  '#f
                                  '#f)
                                 '"~"
                                 _%bind-id184410%_)
                                _%bind-id184410%_))
                           (_%ns184414%_ (symbol->string _%mod-id184412%_))
                           (_%path184424%_
                            (if (##structure-instance-of?
                                 _%super184408%_
                                 'gx#module-context::t)
                                (let ((_%path184416%_
                                       (##unchecked-structure-ref
                                        _%super184408%_
                                        '7
                                        '#f
                                        '#f)))
                                  (if (or (pair? _%path184416%_)
                                          (null? _%path184416%_))
                                      (cons _%bind-id184410%_ _%path184416%_)
                                      (if (not _%path184416%_)
                                          _%bind-id184410%_
                                          (cons _%bind-id184410%_
                                                (cons _%path184416%_ '())))))
                                _%bind-id184410%_))
                           (__obj186556
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
                       __obj186556
                       _%mod-id184412%_
                       _%super184408%_
                       _%ns184414%_
                       _%path184424%_)
                      __obj186556)))
                 (_%valid-module-id?184330%_
                  (lambda (_%id184381%_)
                    (let* ((_%str184383%_ (symbol->string _%id184381%_))
                           (_%len184385%_ (##string-length _%str184383%_)))
                      (if (##fx>= _%len184385%_ '1)
                          (let _%loop184388%_ ((_%index184390%_
                                                (##fx- (##string-length
                                                        _%str184383%_)
                                                       '1)))
                            (if (##fx>= _%index184390%_ '0)
                                (let ((_%c184392%_
                                       (string-ref
                                        _%str184383%_
                                        _%index184390%_)))
                                  (if (or (and (##char>=? _%c184392%_ '#\a)
                                               (##char<=? _%c184392%_ '#\z))
                                          (and (##char>=? _%c184392%_ '#\A)
                                               (##char<=? _%c184392%_ '#\Z))
                                          (and (##char>=? _%c184392%_ '#\0)
                                               (##char<=? _%c184392%_ '#\9))
                                          (##char=? _%c184392%_ '#\_)
                                          (##char=? _%c184392%_ '#\-))
                                      (_%loop184388%_
                                       (##fx- _%index184390%_ '1))
                                      '#f))
                                '#t))
                          '#f)))))
          (let* ((_%e184331184341%_ _%stx184327%_)
                 (_%E184333184345%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e184331184341%_)))
                 (_%E184332184377%_
                  (lambda ()
                    (if (gx#stx-pair? _%e184331184341%_)
                        (let ((_%e184334184349%_
                               (gx#syntax-e _%e184331184341%_)))
                          (let ((_%hd184335184352%_ (##car _%e184334184349%_))
                                (_%tl184336184354%_ (##cdr _%e184334184349%_)))
                            (if (gx#stx-pair? _%tl184336184354%_)
                                (let ((_%e184337184357%_
                                       (gx#syntax-e _%tl184336184354%_)))
                                  (let ((_%hd184338184360%_
                                         (##car _%e184337184357%_))
                                        (_%tl184339184362%_
                                         (##cdr _%e184337184357%_)))
                                    (let* ((_%id184365%_ _%hd184338184360%_)
                                           (_%body184367%_ _%tl184339184362%_))
                                      (if (and (gx#identifier? _%id184365%_)
                                               (gx#stx-list? _%body184367%_))
                                          (if (_%valid-module-id?184330%_
                                               (gx#stx-e
                                                (gx#datum->syntax__0 '#f 'id)))
                                              (let* ((_%ctx184369%_
                                                      (_%make-context184329%_
                                                       _%id184365%_))
                                                     (_%body184371%_
                                                      (gx#core-expand-module-begin
                                                       _%body184367%_
                                                       _%ctx184369%_))
                                                     (_%body184373%_
                                                      (gx#core-quote-syntax__1
                                                       (gx#core-cons
                                                        '%#begin
                                                        _%body184371%_)
                                                       (gx#stx-source
                                                        _%stx184327%_))))
                                                (##unchecked-structure-set!
                                                 _%ctx184369%_
                                                 (__make-atomic-promise
                                                  (lambda ()
                                                    (gx#eval-syntax*
                                                     _%body184373%_)))
                                                 '10
                                                 '#f
                                                 '#f)
                                                (##unchecked-structure-set!
                                                 _%ctx184369%_
                                                 _%body184373%_
                                                 '11
                                                 '#f
                                                 '#f)
                                                (gx#core-bind-syntax!__0
                                                 _%id184365%_
                                                 _%ctx184369%_)
                                                (gx#core-quote-syntax__1
                                                 (gx#core-list
                                                  '%#module
                                                  (gx#core-quote-syntax__0
                                                   _%id184365%_)
                                                  _%body184373%_)
                                                 (gx#stx-source
                                                  _%stx184327%_)))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"invalid module id; allowed characters are A-Z,a-z,0-9,_,-"
                                               _%stx184327%_
                                               (gx#datum->syntax__0 '#f 'id)))
                                          (_%E184333184345%_)))))
                                (_%E184333184345%_))))
                        (_%E184333184345%_)))))
            (_%E184332184377%_)))))
    (define gx#core-expand-module-begin
      (lambda (_%body184292%_ _%ctx184293%_)
        (call-with-parameters__1
         (lambda ()
           (call-with-parameters__1
            (lambda ()
              (gx#core-bind-feature!__1 'gerbil-module '#t)
              (let* ((_%stx184297%_
                      (gx#core-expand-head
                       (cons '%%begin-module _%body184292%_)))
                     (_%e184298184305%_ _%stx184297%_)
                     (_%E184300184309%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module body expansion"
                         _%stx184297%_)))
                     (_%E184299184323%_
                      (lambda ()
                        (if (gx#stx-pair? _%e184298184305%_)
                            (let ((_%e184301184313%_
                                   (gx#syntax-e _%e184298184305%_)))
                              (let ((_%hd184302184316%_
                                     (##car _%e184301184313%_))
                                    (_%tl184303184318%_
                                     (##cdr _%e184301184313%_)))
                                (if (and (gx#identifier? _%hd184302184316%_)
                                         (gx#core-identifier=?
                                          _%hd184302184316%_
                                          '%#begin-module))
                                    (let ((_%body184321%_ _%tl184303184318%_))
                                      (if (gx#sealed-syntax? _%stx184297%_)
                                          _%body184321%_
                                          (gx#core-expand-module-body
                                           _%body184321%_)))
                                    (_%E184300184309%_))))
                            (_%E184300184309%_)))))
                (_%E184299184323%_)))
            gx#current-expander-phi
            '0))
         gx#current-expander-context
         _%ctx184293%_)))
    (define gx#core-expand-module-body
      (lambda (_%body184088%_)
        (letrec ((_%expand-special184090%_
                  (lambda (_%hd184219%_ _%K184220%_ _%rest184221%_ _%r184222%_)
                    (let* ((_%e184223184240%_ _%hd184219%_)
                           (_%E184235184244%_
                            (lambda ()
                              (_%K184220%_
                               _%rest184221%_
                               (cons (gx#core-expand-top _%hd184219%_)
                                     _%r184222%_))))
                           (_%E184225184256%_
                            (lambda ()
                              (if (gx#stx-pair? _%e184223184240%_)
                                  (let ((_%e184236184248%_
                                         (gx#syntax-e _%e184223184240%_)))
                                    (let ((_%hd184237184251%_
                                           (##car _%e184236184248%_))
                                          (_%tl184238184253%_
                                           (##cdr _%e184236184248%_)))
                                      (if (and (gx#identifier?
                                                _%hd184237184251%_)
                                               (gx#core-identifier=?
                                                _%hd184237184251%_
                                                '%#export))
                                          (_%K184220%_
                                           _%rest184221%_
                                           (cons _%hd184219%_ _%r184222%_))
                                          (_%E184235184244%_))))
                                  (_%E184235184244%_))))
                           (_%E184224184288%_
                            (lambda ()
                              (if (gx#stx-pair? _%e184223184240%_)
                                  (let ((_%e184226184260%_
                                         (gx#syntax-e _%e184223184240%_)))
                                    (let ((_%hd184227184263%_
                                           (##car _%e184226184260%_))
                                          (_%tl184228184265%_
                                           (##cdr _%e184226184260%_)))
                                      (if (and (gx#identifier?
                                                _%hd184227184263%_)
                                               (gx#core-identifier=?
                                                _%hd184227184263%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl184228184265%_)
                                              (let ((_%e184229184268%_
                                                     (gx#syntax-e
                                                      _%tl184228184265%_)))
                                                (let ((_%hd184230184271%_
                                                       (##car _%e184229184268%_))
                                                      (_%tl184231184273%_
                                                       (##cdr _%e184229184268%_)))
                                                  (let ((_%hd-bind184276%_
                                                         _%hd184230184271%_))
                                                    (if (gx#stx-pair?
                                                         _%tl184231184273%_)
                                                        (let ((_%e184232184278%_
                                                               (gx#syntax-e
                                                                _%tl184231184273%_)))
                                                          (let ((_%hd184233184281%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e184232184278%_))
                        (_%tl184234184283%_ (##cdr _%e184232184278%_)))
                    (let ((_%expr184286%_ _%hd184233184281%_))
                      (if (gx#stx-null? _%tl184234184283%_)
                          (if (gx#core-bind-values? _%hd-bind184276%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind184276%_)
                                (_%K184220%_
                                 _%rest184221%_
                                 (cons _%hd184219%_ _%r184222%_)))
                              (_%E184225184256%_))
                          (_%E184225184256%_)))))
                (_%E184225184256%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E184225184256%_))
                                          (_%E184225184256%_))))
                                  (_%E184225184256%_)))))
                      (_%E184224184288%_))))
                 (_%expand-body184091%_
                  (lambda (_%rbody184093%_)
                    (let _%lp184095%_ ((_%rest184097%_ _%rbody184093%_)
                                       (_%body184098%_ '()))
                      (let* ((_%rest184099184107%_ _%rest184097%_)
                             (_%else184101184115%_ (lambda () _%body184098%_))
                             (_%K184103184207%_
                              (lambda (_%rest184118%_ _%hd184119%_)
                                (let* ((_%e184120184141%_ _%hd184119%_)
                                       (_%E184136184145%_
                                        (lambda ()
                                          (_%lp184095%_
                                           _%rest184118%_
                                           (cons (gx#core-expand-expression
                                                  _%hd184119%_)
                                                 _%body184098%_))))
                                       (_%E184132184159%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e184120184141%_)
                                              (let ((_%e184137184149%_
                                                     (gx#syntax-e
                                                      _%e184120184141%_)))
                                                (let ((_%hd184138184152%_
                                                       (##car _%e184137184149%_))
                                                      (_%tl184139184154%_
                                                       (##cdr _%e184137184149%_)))
                                                  (let ((_%form184157%_
                                                         _%hd184138184152%_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _%form184157%_
                                                         gx#special-form-binding?)
                                                        (_%lp184095%_
                                                         _%rest184118%_
                                                         (cons _%hd184119%_
                                                               _%body184098%_))
                                                        (_%E184136184145%_)))))
                                              (_%E184136184145%_))))
                                       (_%E184122184171%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e184120184141%_)
                                              (let ((_%e184133184163%_
                                                     (gx#syntax-e
                                                      _%e184120184141%_)))
                                                (let ((_%hd184134184166%_
                                                       (##car _%e184133184163%_))
                                                      (_%tl184135184168%_
                                                       (##cdr _%e184133184163%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd184134184166%_)
                                                           (gx#core-identifier=?
                                                            _%hd184134184166%_
                                                            '%#export))
                                                      (_%lp184095%_
                                                       _%rest184118%_
                                                       (cons (gx#core-expand-export%__0
                                                              _%hd184119%_)
                                                             _%body184098%_))
                                                      (_%E184132184159%_))))
                                              (_%E184132184159%_))))
                                       (_%E184121184203%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e184120184141%_)
                                              (let ((_%e184123184175%_
                                                     (gx#syntax-e
                                                      _%e184120184141%_)))
                                                (let ((_%hd184124184178%_
                                                       (##car _%e184123184175%_))
                                                      (_%tl184125184180%_
                                                       (##cdr _%e184123184175%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd184124184178%_)
                                                           (gx#core-identifier=?
                                                            _%hd184124184178%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl184125184180%_)
                                                          (let ((_%e184126184183%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl184125184180%_)))
                    (let ((_%hd184127184186%_ (##car _%e184126184183%_))
                          (_%tl184128184188%_ (##cdr _%e184126184183%_)))
                      (let ((_%hd-bind184191%_ _%hd184127184186%_))
                        (if (gx#stx-pair? _%tl184128184188%_)
                            (let ((_%e184129184193%_
                                   (gx#syntax-e _%tl184128184188%_)))
                              (let ((_%hd184130184196%_
                                     (##car _%e184129184193%_))
                                    (_%tl184131184198%_
                                     (##cdr _%e184129184193%_)))
                                (let ((_%expr184201%_ _%hd184130184196%_))
                                  (if (gx#stx-null? _%tl184131184198%_)
                                      (_%lp184095%_
                                       _%rest184118%_
                                       (cons (gx#core-quote-syntax__1
                                              (gx#core-list
                                               '%#define-values
                                               (gx#core-quote-bind-values
                                                _%hd-bind184191%_)
                                               (gx#core-expand-expression
                                                _%expr184201%_))
                                              (gx#stx-source _%hd184119%_))
                                             _%body184098%_))
                                      (_%E184122184171%_)))))
                            (_%E184122184171%_)))))
                  (_%E184122184171%_))
              (_%E184122184171%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E184122184171%_)))))
                                  (_%E184121184203%_)))))
                        (if (pair? _%rest184099184107%_)
                            (let ((_%hd184104184210%_
                                   (##car _%rest184099184107%_))
                                  (_%tl184105184212%_
                                   (##cdr _%rest184099184107%_)))
                              (let* ((_%hd184215%_ _%hd184104184210%_)
                                     (_%rest184217%_ _%tl184105184212%_))
                                (_%K184103184207%_
                                 _%rest184217%_
                                 _%hd184215%_)))
                            (_%else184101184115%_)))))))
          (_%expand-body184091%_
           (gx#core-expand-block__%
            (cons '%#begin-module _%body184088%_)
            _%expand-special184090%_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_%stx183929%_
               _%expanded?183930%_
               _%method183931%_
               _%current-phi183932%_
               _%expand1183933%_)
        (letrec ((_%K183935%_
                  (lambda (_%rest184055%_ _%r184056%_)
                    (let* ((_%e184057184064%_ _%rest184055%_)
                           (_%E184059184068%_ (lambda () _%r184056%_))
                           (_%E184058184084%_
                            (lambda ()
                              (if (gx#stx-pair? _%e184057184064%_)
                                  (let ((_%e184060184072%_
                                         (gx#syntax-e _%e184057184064%_)))
                                    (let ((_%hd184061184075%_
                                           (##car _%e184060184072%_))
                                          (_%tl184062184077%_
                                           (##cdr _%e184060184072%_)))
                                      (let* ((_%hd184080%_ _%hd184061184075%_)
                                             (_%rest184082%_
                                              _%tl184062184077%_))
                                        (_%step183936%_
                                         _%hd184080%_
                                         _%rest184082%_
                                         _%r184056%_))))
                                  (_%E184059184068%_)))))
                      (_%E184058184084%_))))
                 (_%step183936%_
                  (lambda (_%hd183969%_ _%rest183970%_ _%r183971%_)
                    (let* ((_%e183972183990%_ _%hd183969%_)
                           (_%E183985183994%_
                            (lambda ()
                              (if (_%expanded?183930%_ (gx#stx-e _%hd183969%_))
                                  (_%K183935%_
                                   _%rest183970%_
                                   (cons (gx#stx-e _%hd183969%_) _%r183971%_))
                                  (_%expand1183933%_
                                   _%hd183969%_
                                   _%K183935%_
                                   _%rest183970%_
                                   _%r183971%_))))
                           (_%E183981184010%_
                            (lambda ()
                              (if (gx#stx-pair? _%e183972183990%_)
                                  (let ((_%e183986183998%_
                                         (gx#syntax-e _%e183972183990%_)))
                                    (let ((_%hd183987184001%_
                                           (##car _%e183986183998%_))
                                          (_%tl183988184003%_
                                           (##cdr _%e183986183998%_)))
                                      (let* ((_%macro184006%_
                                              _%hd183987184001%_)
                                             (_%body184008%_
                                              _%tl183988184003%_))
                                        (if (gx#core-bound-identifier?__%
                                             _%macro184006%_
                                             gx#syntax-binding?)
                                            (_%K183935%_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _%macro184006%_)
                                                    _%hd183969%_
                                                    _%method183931%_)
                                                   _%rest183970%_)
                                             _%r183971%_)
                                            (_%E183985183994%_)))))
                                  (_%E183985183994%_))))
                           (_%E183974184024%_
                            (lambda ()
                              (if (gx#stx-pair? _%e183972183990%_)
                                  (let ((_%e183982184014%_
                                         (gx#syntax-e _%e183972183990%_)))
                                    (let ((_%hd183983184017%_
                                           (##car _%e183982184014%_))
                                          (_%tl183984184019%_
                                           (##cdr _%e183982184014%_)))
                                      (if (eq? (gx#stx-e _%hd183983184017%_)
                                               'begin:)
                                          (let ((_%body184022%_
                                                 _%tl183984184019%_))
                                            (_%K183935%_
                                             (gx#stx-foldr
                                              cons
                                              _%rest183970%_
                                              _%body184022%_)
                                             _%r183971%_))
                                          (_%E183981184010%_))))
                                  (_%E183981184010%_))))
                           (_%E183973184051%_
                            (lambda ()
                              (if (gx#stx-pair? _%e183972183990%_)
                                  (let ((_%e183975184028%_
                                         (gx#syntax-e _%e183972183990%_)))
                                    (let ((_%hd183976184031%_
                                           (##car _%e183975184028%_))
                                          (_%tl183977184033%_
                                           (##cdr _%e183975184028%_)))
                                      (if (eq? (gx#stx-e _%hd183976184031%_)
                                               'phi:)
                                          (if (gx#stx-pair? _%tl183977184033%_)
                                              (let ((_%e183978184036%_
                                                     (gx#syntax-e
                                                      _%tl183977184033%_)))
                                                (let ((_%hd183979184039%_
                                                       (##car _%e183978184036%_))
                                                      (_%tl183980184041%_
                                                       (##cdr _%e183978184036%_)))
                                                  (let* ((_%dphi184044%_
                                                          _%hd183979184039%_)
                                                         (_%body184046%_
                                                          _%tl183980184041%_))
                                                    (if (gx#stx-fixnum?
                                                         _%dphi184044%_)
                                                        (let ((_%rbody184049%_
                                                               (call-with-parameters__1
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_%K183935%_ _%body184046%_ '()))
                        _%current-phi183932%_
                        (fx+ (gx#stx-e _%dphi184044%_)
                             (_%current-phi183932%_)))))
                  (_%K183935%_
                   _%rest183970%_
                   (foldr__0 cons _%r183971%_ _%rbody184049%_)))
                (_%E183974184024%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E183974184024%_))
                                          (_%E183974184024%_))))
                                  (_%E183974184024%_)))))
                      (_%E183973184051%_)))))
          (let* ((_%e183937183944%_ _%stx183929%_)
                 (_%E183939183948%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e183937183944%_)))
                 (_%E183938183965%_
                  (lambda ()
                    (if (gx#stx-pair? _%e183937183944%_)
                        (let ((_%e183940183952%_
                               (gx#syntax-e _%e183937183944%_)))
                          (let ((_%hd183941183955%_ (##car _%e183940183952%_))
                                (_%tl183942183957%_ (##cdr _%e183940183952%_)))
                            (let ((_%body183960%_ _%tl183942183957%_))
                              (if (_%current-phi183932%_)
                                  (_%K183935%_ _%body183960%_ '())
                                  (call-with-parameters__1
                                   (lambda () (_%K183935%_ _%body183960%_ '()))
                                   _%current-phi183932%_
                                   (gx#current-expander-phi))))))
                        (_%E183939183948%_)))))
            (_%E183938183965%_)))))
    (define gx#core-expand-import%__%
      (lambda (_%stx183583%_ _%internal-expand?183584%_)
        (letrec ((_%expand1183586%_
                  (lambda (_%hd183901%_ _%K183902%_ _%rest183903%_ _%r183904%_)
                    (if (gx#core-bound-module? _%hd183901%_)
                        (_%import1183587%_
                         (gx#syntax-local-e__0 _%hd183901%_)
                         _%K183902%_
                         _%rest183903%_
                         _%r183904%_)
                        (if (gx#core-library-module-path? _%hd183901%_)
                            (_%import1183587%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%hd183901%_))
                             _%K183902%_
                             _%rest183903%_
                             _%r183904%_)
                            (if (gx#core-library-relative-module-path?
                                 _%hd183901%_)
                                (_%import1183587%_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _%hd183901%_))
                                 _%K183902%_
                                 _%rest183903%_
                                 _%r183904%_)
                                (let ((_%e183910%_ (gx#stx-e _%hd183901%_)))
                                  (if (pair? _%e183910%_)
                                      (let ((_%$e183913%_
                                             (gx#stx-e (##car _%e183910%_))))
                                        (if (eq? 'spec: _%$e183913%_)
                                            (_%import-spec183590%_
                                             _%hd183901%_
                                             _%K183902%_
                                             _%rest183903%_
                                             _%r183904%_)
                                            (if (eq? 'in: _%$e183913%_)
                                                (_%import-submodule183588%_
                                                 _%hd183901%_
                                                 _%K183902%_
                                                 _%rest183903%_
                                                 _%r183904%_)
                                                (if (eq? 'runtime:
                                                         _%$e183913%_)
                                                    (_%import-runtime183589%_
                                                     _%hd183901%_
                                                     _%K183902%_
                                                     _%rest183903%_
                                                     _%r183904%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _%stx183583%_
                                                     _%hd183901%_)))))
                                      (if (string? _%e183910%_)
                                          (_%import1183587%_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _%hd183901%_
                                             (gx#stx-source _%stx183583%_)))
                                           _%K183902%_
                                           _%rest183903%_
                                           _%r183904%_)
                                          (if (##structure-instance-of?
                                               _%e183910%_
                                               'gx#module-context::t)
                                              (_%K183902%_
                                               _%rest183903%_
                                               (cons _%e183910%_ _%r183904%_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _%stx183583%_
                                               _%hd183901%_))))))))))
                 (_%import1183587%_
                  (lambda (_%ctx183890%_
                           _%K183891%_
                           _%rest183892%_
                           _%r183893%_)
                    (let ((_%dphi183895%_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_%K183891%_
                       _%rest183892%_
                       (cons (##structure
                              gx#import-set::t
                              _%ctx183890%_
                              _%dphi183895%_
                              (map (lambda (_%g183896183898%_)
                                     (gx#core-module-export->import__%
                                      _%g183896183898%_
                                      '#f
                                      _%dphi183895%_))
                                   (##unchecked-structure-ref
                                    _%ctx183890%_
                                    '9
                                    '#f
                                    '#f)))
                             _%r183893%_)))))
                 (_%import-submodule183588%_
                  (lambda (_%hd183857%_ _%K183858%_ _%rest183859%_ _%r183860%_)
                    (let* ((_%e183861183868%_ _%hd183857%_)
                           (_%E183863183872%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e183861183868%_)))
                           (_%E183862183886%_
                            (lambda ()
                              (if (gx#stx-pair? _%e183861183868%_)
                                  (let ((_%e183864183876%_
                                         (gx#syntax-e _%e183861183868%_)))
                                    (let ((_%hd183865183879%_
                                           (##car _%e183864183876%_))
                                          (_%tl183866183881%_
                                           (##cdr _%e183864183876%_)))
                                      (let ((_%spath183884%_
                                             _%tl183866183881%_))
                                        (_%import1183587%_
                                         (_%import-spec-source183591%_
                                          _%spath183884%_)
                                         _%K183858%_
                                         _%rest183859%_
                                         _%r183860%_))))
                                  (_%E183863183872%_)))))
                      (_%E183862183886%_))))
                 (_%import-runtime183589%_
                  (lambda (_%hd183824%_ _%K183825%_ _%rest183826%_ _%r183827%_)
                    (let* ((_%e183828183835%_ _%hd183824%_)
                           (_%E183830183839%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e183828183835%_)))
                           (_%E183829183853%_
                            (lambda ()
                              (if (gx#stx-pair? _%e183828183835%_)
                                  (let ((_%e183831183843%_
                                         (gx#syntax-e _%e183828183835%_)))
                                    (let ((_%hd183832183846%_
                                           (##car _%e183831183843%_))
                                          (_%tl183833183848%_
                                           (##cdr _%e183831183843%_)))
                                      (let ((_%spath183851%_
                                             _%tl183833183848%_))
                                        (_%K183825%_
                                         _%rest183826%_
                                         (cons (_%import-spec-source183591%_
                                                _%spath183851%_)
                                               _%r183827%_)))))
                                  (_%E183830183839%_)))))
                      (_%E183829183853%_))))
                 (_%import-spec183590%_
                  (lambda (_%hd183662%_ _%K183663%_ _%rest183664%_ _%r183665%_)
                    (let* ((_%e183666183683%_ _%hd183662%_)
                           (_%E183675183687%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e183666183683%_)))
                           (_%E183668183798%_
                            (lambda ()
                              (if (gx#stx-pair? _%e183666183683%_)
                                  (let ((_%e183676183691%_
                                         (gx#syntax-e _%e183666183683%_)))
                                    (let ((_%hd183677183694%_
                                           (##car _%e183676183691%_))
                                          (_%tl183678183696%_
                                           (##cdr _%e183676183691%_)))
                                      (if (gx#stx-pair? _%tl183678183696%_)
                                          (let ((_%e183679183699%_
                                                 (gx#syntax-e
                                                  _%tl183678183696%_)))
                                            (let ((_%hd183680183702%_
                                                   (##car _%e183679183699%_))
                                                  (_%tl183681183704%_
                                                   (##cdr _%e183679183699%_)))
                                              (let* ((_%path183707%_
                                                      _%hd183680183702%_)
                                                     (_%specs183709%_
                                                      _%tl183681183704%_))
                                                (let ((_%src-ctx183711%_
                                                       (_%import-spec-source183591%_
                                                        _%path183707%_))
                                                      (_%exports183712%_
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
                                                      (_%specs183713%_
                                                       (gx#syntax->list
                                                        _%specs183709%_)))
                                                  (for-each
                                                   (lambda (_%out183715%_)
                                                     (__hash-put!
                                                      _%exports183712%_
                                                      (cons (##unchecked-structure-ref
                                                             _%out183715%_
                                                             '3
                                                             '#f
                                                             '#f)
                                                            (##unchecked-structure-ref
                                                             _%out183715%_
                                                             '4
                                                             '#f
                                                             '#f))
                                                      _%out183715%_))
                                                   (##unchecked-structure-ref
                                                    _%src-ctx183711%_
                                                    '9
                                                    '#f
                                                    '#f))
                                                  (_%K183663%_
                                                   _%rest183664%_
                                                   (foldl__0
                                                    (lambda (_%spec183717%_
                                                             _%r183718%_)
                                                      (let* ((_%e183719183735%_
                                                              _%spec183717%_)
                                                             (_%E183721183739%_
                                                              (lambda ()
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid syntax-case clause"
                         _%e183719183735%_)))
                     (_%E183720183794%_
                      (lambda ()
                        (if (gx#stx-pair? _%e183719183735%_)
                            (let ((_%e183722183743%_
                                   (gx#syntax-e _%e183719183735%_)))
                              (let ((_%hd183723183746%_
                                     (##car _%e183722183743%_))
                                    (_%tl183724183748%_
                                     (##cdr _%e183722183743%_)))
                                (let ((_%phi183751%_ _%hd183723183746%_))
                                  (if (gx#stx-pair? _%tl183724183748%_)
                                      (let ((_%e183725183753%_
                                             (gx#syntax-e _%tl183724183748%_)))
                                        (let ((_%hd183726183756%_
                                               (##car _%e183725183753%_))
                                              (_%tl183727183758%_
                                               (##cdr _%e183725183753%_)))
                                          (let ((_%name183761%_
                                                 _%hd183726183756%_))
                                            (if (gx#stx-pair?
                                                 _%tl183727183758%_)
                                                (let ((_%e183728183763%_
                                                       (gx#syntax-e
                                                        _%tl183727183758%_)))
                                                  (let ((_%hd183729183766%_
                                                         (##car _%e183728183763%_))
                                                        (_%tl183730183768%_
                                                         (##cdr _%e183728183763%_)))
                                                    (let ((_%src-phi183771%_
                                                           _%hd183729183766%_))
                                                      (if (gx#stx-pair?
                                                           _%tl183730183768%_)
                                                          (let ((_%e183731183773%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl183730183768%_)))
                    (let ((_%hd183732183776%_ (##car _%e183731183773%_))
                          (_%tl183733183778%_ (##cdr _%e183731183773%_)))
                      (let ((_%src-name183781%_ _%hd183732183776%_))
                        (if (gx#stx-null? _%tl183733183778%_)
                            (if (and (gx#stx-fixnum? _%src-phi183771%_)
                                     (gx#identifier? _%src-name183781%_)
                                     (gx#stx-fixnum? _%phi183751%_)
                                     (gx#identifier? _%name183761%_))
                                (let ((_%src-phi183783%_
                                       (gx#stx-e _%src-phi183771%_))
                                      (_%src-name183784%_
                                       (gx#core-identifier-key
                                        _%src-name183781%_))
                                      (_%phi183785%_ (gx#stx-e _%phi183751%_))
                                      (_%name183786%_
                                       (gx#core-identifier-key
                                        _%name183761%_)))
                                  (let ((_%$e183788%_
                                         (__hash-get
                                          _%exports183712%_
                                          (cons _%src-phi183783%_
                                                _%src-name183784%_))))
                                    (if _%$e183788%_
                                        ((lambda (_%out183791%_)
                                           (cons (gx#core-module-export->import__%
                                                  _%out183791%_
                                                  _%name183786%_
                                                  (fx- _%phi183785%_
                                                       _%src-phi183783%_))
                                                 _%r183718%_))
                                         _%$e183788%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; no matching export"
                                         _%stx183583%_
                                         _%hd183662%_))))
                                (_%E183721183739%_))
                            (_%E183721183739%_)))))
                  (_%E183721183739%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E183721183739%_)))))
                                      (_%E183721183739%_)))))
                            (_%E183721183739%_)))))
                (_%E183720183794%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r183665%_
                                                    _%specs183713%_))))))
                                          (_%E183675183687%_))))
                                  (_%E183675183687%_))))
                           (_%E183667183820%_
                            (lambda ()
                              (if (gx#stx-pair? _%e183666183683%_)
                                  (let ((_%e183669183802%_
                                         (gx#syntax-e _%e183666183683%_)))
                                    (let ((_%hd183670183805%_
                                           (##car _%e183669183802%_))
                                          (_%tl183671183807%_
                                           (##cdr _%e183669183802%_)))
                                      (if (gx#stx-pair? _%tl183671183807%_)
                                          (let ((_%e183672183810%_
                                                 (gx#syntax-e
                                                  _%tl183671183807%_)))
                                            (let ((_%hd183673183813%_
                                                   (##car _%e183672183810%_))
                                                  (_%tl183674183815%_
                                                   (##cdr _%e183672183810%_)))
                                              (let ((_%path183818%_
                                                     _%hd183673183813%_))
                                                (if (gx#stx-null?
                                                     _%tl183674183815%_)
                                                    (_%K183663%_
                                                     _%rest183664%_
                                                     (cons (_%import-spec-source183591%_
                                                            _%path183818%_)
                                                           _%r183665%_))
                                                    (_%E183668183798%_)))))
                                          (_%E183668183798%_))))
                                  (_%E183668183798%_)))))
                      (_%E183667183820%_))))
                 (_%import-spec-source183591%_
                  (lambda (_%spath183660%_)
                    (gx#core-import-nested-module
                     _%spath183660%_
                     _%stx183583%_)))
                 (_%import!183592%_
                  (lambda (_%rbody183605%_)
                    (letrec* ((_%current-ctx183607%_
                               (gx#current-expander-context))
                              (_%deps183608%_ (make-hash-table-eq))
                              (_%bind!183609%_
                               (lambda (_%hd183658%_)
                                 (gx#core-bind-import!__1
                                  _%hd183658%_
                                  _%current-ctx183607%_))))
                      (let _%lp183611%_ ((_%rest183613%_ _%rbody183605%_)
                                         (_%body183614%_ '()))
                        (let* ((_%rest183615183623%_ _%rest183613%_)
                               (_%else183617183634%_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _%current-ctx183607%_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _%current-ctx183607%_
                                       (foldl__0
                                        cons
                                        (##unchecked-structure-ref
                                         _%current-ctx183607%_
                                         '8
                                         '#f
                                         '#f)
                                        _%body183614%_)
                                       '8
                                       '#f
                                       '#f)
                                      '#!void)
                                  (__hash-for-each
                                   (lambda (_%ctx183631%_ _%_183632%_)
                                     (gx#eval-module _%ctx183631%_))
                                   _%deps183608%_)
                                  _%body183614%_))
                               (_%K183619183646%_
                                (lambda (_%rest183637%_ _%hd183638%_)
                                  (if (##structure-direct-instance-of?
                                       _%hd183638%_
                                       'gx#module-import::t)
                                      (let ()
                                        (_%bind!183609%_ _%hd183638%_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _%hd183638%_
                                                   '3
                                                   '#f
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _%hd183638%_
                                                            '1
                                                            '#f
                                                            '#f)
                                                           '3
                                                           '#f
                                                           '#f)))
                                            (__hash-put!
                                             _%deps183608%_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _%hd183638%_
                                               '1
                                               '#f
                                               '#f)
                                              '1
                                              '#f
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _%hd183638%_
                                           'gx#import-set::t)
                                          (let ()
                                            (for-each
                                             _%bind!183609%_
                                             (##unchecked-structure-ref
                                              _%hd183638%_
                                              '3
                                              '#f
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _%hd183638%_
                                                  '2
                                                  '#f
                                                  '#f))
                                                (__hash-put!
                                                 _%deps183608%_
                                                 (##unchecked-structure-ref
                                                  _%hd183638%_
                                                  '1
                                                  '#f
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_%$e183642%_
                                                 (##structure-instance-of?
                                                  _%hd183638%_
                                                  'gx#module-context::t)))
                                            (if _%$e183642%_
                                                _%$e183642%_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _%stx183583%_
                                                 _%hd183638%_)))))
                                  (_%lp183611%_
                                   _%rest183637%_
                                   (cons _%hd183638%_ _%body183614%_)))))
                          (if (pair? _%rest183615183623%_)
                              (let ((_%hd183620183649%_
                                     (##car _%rest183615183623%_))
                                    (_%tl183621183651%_
                                     (##cdr _%rest183615183623%_)))
                                (let* ((_%hd183654%_ _%hd183620183649%_)
                                       (_%rest183656%_ _%tl183621183651%_))
                                  (_%K183619183646%_
                                   _%rest183656%_
                                   _%hd183654%_)))
                              (_%else183617183634%_)))))))
                 (_%expanded-import?183593%_
                  (lambda (_%e183597%_)
                    (let ((_%$e183599%_
                           (##structure-direct-instance-of?
                            _%e183597%_
                            'gx#import-set::t)))
                      (if _%$e183599%_
                          _%$e183599%_
                          (let ((_%$e183602%_
                                 (##structure-direct-instance-of?
                                  _%e183597%_
                                  'gx#module-import::t)))
                            (if _%$e183602%_
                                _%$e183602%_
                                (##structure-instance-of?
                                 _%e183597%_
                                 'gx#module-context::t))))))))
          (let ((_%rbody183595%_
                 (gx#core-expand-import/export
                  _%stx183583%_
                  _%expanded-import?183593%_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _%expand1183586%_)))
            (if _%internal-expand?183584%_
                (reverse _%rbody183595%_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_%import!183592%_ _%rbody183595%_))
                 (gx#stx-source _%stx183583%_)))))))
    (define gx#core-expand-import%__0
      (lambda (_%stx183922%_)
        (let ((_%internal-expand?183924%_ '#f))
          (gx#core-expand-import%__%
           _%stx183922%_
           _%internal-expand?183924%_))))
    (define gx#core-expand-import%
      (lambda _g186581_
        (let ((_g186582_ (##length _g186581_)))
          (cond ((##fx= _g186582_ 1)
                 (apply gx#core-expand-import%__0 _g186581_))
                ((##fx= _g186582_ 2)
                 (apply gx#core-expand-import%__% _g186581_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g186581_))))))
    (define gx#core-import-nested-module
      (lambda (_%spath183510%_ _%where183511%_)
        (let* ((_%e183512183519%_ _%spath183510%_)
               (_%E183514183523%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e183512183519%_)))
               (_%E183513183578%_
                (lambda ()
                  (if (gx#stx-pair? _%e183512183519%_)
                      (let ((_%e183515183527%_
                             (gx#syntax-e _%e183512183519%_)))
                        (let ((_%hd183516183530%_ (##car _%e183515183527%_))
                              (_%tl183517183532%_ (##cdr _%e183515183527%_)))
                          (let* ((_%origin183535%_ _%hd183516183530%_)
                                 (_%sub183537%_ _%tl183517183532%_)
                                 (_%origin-ctx183539%_
                                  (if (gx#stx-false? _%origin183535%_)
                                      (gx#current-expander-context)
                                      (gx#import-module__0 _%origin183535%_))))
                            (let _%lp183541%_ ((_%rest183543%_ _%sub183537%_)
                                               (_%ctx183544%_
                                                _%origin-ctx183539%_))
                              (let* ((_%e183545183552%_ _%rest183543%_)
                                     (_%E183547183556%_
                                      (lambda () _%ctx183544%_))
                                     (_%E183546183574%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%e183545183552%_)
                                            (let ((_%e183548183560%_
                                                   (gx#syntax-e
                                                    _%e183545183552%_)))
                                              (let ((_%hd183549183563%_
                                                     (##car _%e183548183560%_))
                                                    (_%tl183550183565%_
                                                     (##cdr _%e183548183560%_)))
                                                (let* ((_%id183568%_
                                                        _%hd183549183563%_)
                                                       (_%rest183570%_
                                                        _%tl183550183565%_)
                                                       (_%bind183572%_
                                                        (gx#resolve-identifier__%
                                                         _%id183568%_
                                                         '0
                                                         _%ctx183544%_)))
                                                  (if (and (##structure-direct-instance-of?
                                                            _%bind183572%_
                                                            'gx#syntax-binding::t)
                                                           (##structure-instance-of?
                                                            (##unchecked-structure-ref
                                                             _%bind183572%_
                                                             '5
                                                             '#f
                                                             '#f)
                                                            'gx#module-context::t))
                                                      '#!void
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; not bound as module"
                                                       _%where183511%_
                                                       _%spath183510%_
                                                       _%id183568%_))
                                                  (_%lp183541%_
                                                   _%rest183570%_
                                                   (##unchecked-structure-ref
                                                    _%bind183572%_
                                                    '5
                                                    '#f
                                                    '#f)))))
                                            (_%E183547183556%_)))))
                                (_%E183546183574%_))))))
                      (_%E183514183523%_)))))
          (_%E183513183578%_))))
    (define gx#core-expand-import-source
      (lambda (_%hd183508%_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _%hd183508%_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_%stx183003%_ _%internal-expand?183004%_)
        (letrec* ((_%make-export__186509186510%_
                   (lambda (_%bind183456%_
                            _%phi183457%_
                            _%ctx183458%_
                            _%name183459%_)
                     (let* ((_%key183461%_
                             (##unchecked-structure-ref
                              _%bind183456%_
                              '2
                              '#f
                              '#f))
                            (_%export-key183463%_
                             (if _%name183459%_
                                 (gx#core-identifier-key _%name183459%_)
                                 _%key183461%_)))
                       (##structure
                        gx#module-export::t
                        _%ctx183458%_
                        _%key183461%_
                        _%phi183457%_
                        _%export-key183463%_
                        (let ((_%$e183466%_
                               (##structure-instance-of?
                                _%bind183456%_
                                'gx#extern-binding::t)))
                          (if _%$e183466%_
                              _%$e183466%_
                              (##structure-direct-instance-of?
                               _%bind183456%_
                               'gx#import-binding::t)))))))
                  (_%make-export__0__186511186514%_
                   (lambda (_%bind183472%_)
                     (let* ((_%phi183474%_ (gx#current-export-expander-phi))
                            (_%ctx183476%_ (gx#current-expander-context))
                            (_%name183478%_ '#f))
                       (_%make-export__186509186510%_
                        _%bind183472%_
                        _%phi183474%_
                        _%ctx183476%_
                        _%name183478%_))))
                  (_%make-export__1__186512186515%_
                   (lambda (_%bind183480%_ _%phi183481%_)
                     (let* ((_%ctx183483%_ (gx#current-expander-context))
                            (_%name183485%_ '#f))
                       (_%make-export__186509186510%_
                        _%bind183480%_
                        _%phi183481%_
                        _%ctx183483%_
                        _%name183485%_))))
                  (_%make-export__2__186513186516%_
                   (lambda (_%bind183487%_ _%phi183488%_ _%ctx183489%_)
                     (let ((_%name183491%_ '#f))
                       (_%make-export__186509186510%_
                        _%bind183487%_
                        _%phi183488%_
                        _%ctx183489%_
                        _%name183491%_))))
                  (_%make-export183006%_
                   (lambda _g186583_
                     (let ((_g186584_ (##length _g186583_)))
                       (cond ((##fx= _g186584_ 1)
                              (apply _%make-export__0__186511186514%_
                                     _g186583_))
                             ((##fx= _g186584_ 2)
                              (apply _%make-export__1__186512186515%_
                                     _g186583_))
                             ((##fx= _g186584_ 3)
                              (apply _%make-export__2__186513186516%_
                                     _g186583_))
                             ((##fx= _g186584_ 4)
                              (apply _%make-export__186509186510%_ _g186583_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g186583_))))))
                  (_%expand1183007%_
                   (lambda (_%hd183161%_
                            _%K183162%_
                            _%rest183163%_
                            _%r183164%_)
                     (let* ((_%e183165183197%_ _%hd183161%_)
                            (_%E183192183201%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _%stx183003%_
                                _%hd183161%_)))
                            (_%E183182183285%_
                             (lambda ()
                               (if (gx#stx-pair? _%e183165183197%_)
                                   (let ((_%e183193183205%_
                                          (gx#syntax-e _%e183165183197%_)))
                                     (let ((_%hd183194183208%_
                                            (##car _%e183193183205%_))
                                           (_%tl183195183210%_
                                            (##cdr _%e183193183205%_)))
                                       (if (eq? (gx#stx-e _%hd183194183208%_)
                                                'import:)
                                           (let ((_%in183213%_
                                                  _%tl183195183210%_))
                                             (if (gx#stx-list? _%in183213%_)
                                                 (let _%lp183215%_ ((_%in-rest183217%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%in183213%_)
                            (_%r183218%_ _%r183164%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%e183219183226%_
                                                           _%in-rest183217%_)
                                                          (_%E183221183230%_
                                                           (lambda ()
                                                             (_%K183162%_
                                                              _%rest183163%_
                                                              _%r183218%_)))
                                                          (_%E183220183281%_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%e183219183226%_)
                         (let ((_%e183222183234%_
                                (gx#syntax-e _%e183219183226%_)))
                           (let ((_%hd183223183237%_ (##car _%e183222183234%_))
                                 (_%tl183224183239%_
                                  (##cdr _%e183222183234%_)))
                             (let* ((_%hd183242%_ _%hd183223183237%_)
                                    (_%in-rest183244%_ _%tl183224183239%_)
                                    (_%src183279%_
                                     (if (gx#core-bound-module? _%hd183242%_)
                                         (gx#syntax-local-e__0 _%hd183242%_)
                                         (if (gx#core-library-module-path?
                                              _%hd183242%_)
                                             (gx#import-module__0
                                              (gx#core-resolve-library-module-path
                                               _%hd183242%_))
                                             (if (gx#core-library-relative-module-path?
                                                  _%hd183242%_)
                                                 (gx#import-module__0
                                                  (gx#core-resolve-library-relative-module-path
                                                   _%hd183242%_))
                                                 (if (gx#stx-string?
                                                      _%hd183242%_)
                                                     (gx#import-module__0
                                                      (gx#core-resolve-module-path__%
                                                       _%hd183242%_
                                                       (gx#stx-source
                                                        _%stx183003%_)))
                                                     (let* ((_%e183250183257%_
                                                             _%hd183242%_)
                                                            (_%E183252183261%_
                                                             (lambda ()
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; illegal re-export"
                                                                _%stx183003%_
                                                                _%hd183242%_)))
                                                            (_%E183251183275%_
                                                             (lambda ()
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%e183250183257%_)
                           (let ((_%e183253183265%_
                                  (gx#syntax-e _%e183250183257%_)))
                             (let ((_%hd183254183268%_
                                    (##car _%e183253183265%_))
                                   (_%tl183255183270%_
                                    (##cdr _%e183253183265%_)))
                               (if (eq? (gx#stx-e _%hd183254183268%_) 'in:)
                                   (let ((_%spath183273%_ _%tl183255183270%_))
                                     (gx#core-import-nested-module
                                      _%spath183273%_
                                      _%stx183003%_))
                                   (_%E183252183261%_))))
                           (_%E183252183261%_)))))
               (_%E183251183275%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (_%lp183215%_
                                _%in-rest183244%_
                                (_%export-imports183008%_
                                 _%src183279%_
                                 _%r183218%_)))))
                         (_%E183221183230%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E183220183281%_)))
                                                 (_%E183192183201%_)))
                                           (_%E183192183201%_))))
                                   (_%E183192183201%_))))
                            (_%E183169183325%_
                             (lambda ()
                               (if (gx#stx-pair? _%e183165183197%_)
                                   (let ((_%e183183183289%_
                                          (gx#syntax-e _%e183165183197%_)))
                                     (let ((_%hd183184183292%_
                                            (##car _%e183183183289%_))
                                           (_%tl183185183294%_
                                            (##cdr _%e183183183289%_)))
                                       (if (eq? (gx#stx-e _%hd183184183292%_)
                                                'rename:)
                                           (if (gx#stx-pair?
                                                _%tl183185183294%_)
                                               (let ((_%e183186183297%_
                                                      (gx#syntax-e
                                                       _%tl183185183294%_)))
                                                 (let ((_%hd183187183300%_
                                                        (##car _%e183186183297%_))
                                                       (_%tl183188183302%_
                                                        (##cdr _%e183186183297%_)))
                                                   (let ((_%id183305%_
                                                          _%hd183187183300%_))
                                                     (if (gx#stx-pair?
                                                          _%tl183188183302%_)
                                                         (let ((_%e183189183307%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl183188183302%_)))
                   (let ((_%hd183190183310%_ (##car _%e183189183307%_))
                         (_%tl183191183312%_ (##cdr _%e183189183307%_)))
                     (let ((_%name183315%_ _%hd183190183310%_))
                       (if (gx#stx-null? _%tl183191183312%_)
                           (let* ((_%phi183317%_
                                   (gx#current-export-expander-phi))
                                  (_%$e183319%_
                                   (gx#core-resolve-identifier__1
                                    _%id183305%_
                                    _%phi183317%_)))
                             (if _%$e183319%_
                                 ((lambda (_%bind183322%_)
                                    (_%K183162%_
                                     _%rest183163%_
                                     (cons (_%make-export__186509186510%_
                                            _%bind183322%_
                                            _%phi183317%_
                                            (gx#current-expander-context)
                                            _%name183315%_)
                                           _%r183164%_)))
                                  _%$e183319%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Reference to unbound identifier"
                                  _%stx183003%_
                                  _%hd183161%_
                                  _%id183305%_)))
                           (_%E183182183285%_)))))
                 (_%E183182183285%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E183182183285%_))
                                           (_%E183182183285%_))))
                                   (_%E183182183285%_))))
                            (_%E183168183375%_
                             (lambda ()
                               (if (gx#stx-pair? _%e183165183197%_)
                                   (let ((_%e183170183329%_
                                          (gx#syntax-e _%e183165183197%_)))
                                     (let ((_%hd183171183332%_
                                            (##car _%e183170183329%_))
                                           (_%tl183172183334%_
                                            (##cdr _%e183170183329%_)))
                                       (if (eq? (gx#stx-e _%hd183171183332%_)
                                                'spec:)
                                           (if (gx#stx-pair?
                                                _%tl183172183334%_)
                                               (let ((_%e183173183337%_
                                                      (gx#syntax-e
                                                       _%tl183172183334%_)))
                                                 (let ((_%hd183174183340%_
                                                        (##car _%e183173183337%_))
                                                       (_%tl183175183342%_
                                                        (##cdr _%e183173183337%_)))
                                                   (let ((_%phi183345%_
                                                          _%hd183174183340%_))
                                                     (if (gx#stx-pair?
                                                          _%tl183175183342%_)
                                                         (let ((_%e183176183347%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl183175183342%_)))
                   (let ((_%hd183177183350%_ (##car _%e183176183347%_))
                         (_%tl183178183352%_ (##cdr _%e183176183347%_)))
                     (let ((_%id183355%_ _%hd183177183350%_))
                       (if (gx#stx-pair? _%tl183178183352%_)
                           (let ((_%e183179183357%_
                                  (gx#syntax-e _%tl183178183352%_)))
                             (let ((_%hd183180183360%_
                                    (##car _%e183179183357%_))
                                   (_%tl183181183362%_
                                    (##cdr _%e183179183357%_)))
                               (let ((_%name183365%_ _%hd183180183360%_))
                                 (if (gx#stx-null? _%tl183181183362%_)
                                     (if (and (gx#stx-fixnum? _%phi183345%_)
                                              (gx#identifier? _%id183355%_)
                                              (gx#identifier? _%name183365%_))
                                         (let* ((_%phi183367%_
                                                 (gx#stx-e _%phi183345%_))
                                                (_%$e183369%_
                                                 (gx#core-resolve-identifier__1
                                                  _%id183355%_
                                                  _%phi183367%_)))
                                           (if _%$e183369%_
                                               ((lambda (_%bind183372%_)
                                                  (_%K183162%_
                                                   _%rest183163%_
                                                   (cons (_%make-export__186509186510%_
                                                          _%bind183372%_
                                                          _%phi183367%_
                                                          (gx#current-expander-context)
                                                          _%name183365%_)
                                                         _%r183164%_)))
                                                _%$e183369%_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _%stx183003%_
                                                _%hd183161%_
                                                _%id183355%_)))
                                         (_%E183169183325%_))
                                     (_%E183169183325%_)))))
                           (_%E183169183325%_)))))
                 (_%E183169183325%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E183169183325%_))
                                           (_%E183169183325%_))))
                                   (_%E183169183325%_))))
                            (_%E183167183387%_
                             (lambda ()
                               (let ((_%id183379%_ _%e183165183197%_))
                                 (if (gx#identifier? _%id183379%_)
                                     (let ((_%$e183381%_
                                            (gx#core-resolve-identifier__1
                                             _%id183379%_
                                             (gx#current-export-expander-phi))))
                                       (if _%$e183381%_
                                           ((lambda (_%bind183384%_)
                                              (_%K183162%_
                                               _%rest183163%_
                                               (cons (_%make-export__0__186511186514%_
                                                      _%bind183384%_)
                                                     _%r183164%_)))
                                            _%$e183381%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _%stx183003%_
                                            _%hd183161%_)))
                                     (_%E183168183375%_)))))
                            (_%E183166183451%_
                             (lambda ()
                               (if (eq? (gx#stx-e _%e183165183197%_) '#t)
                                   (let* ((_%current-ctx183391%_
                                           (gx#current-expander-context))
                                          (_%current-phi183393%_
                                           (gx#current-export-expander-phi))
                                          (_%phi-ctx183395%_
                                           (gx#core-context-shift
                                            _%current-ctx183391%_
                                            _%current-phi183393%_))
                                          (_%phi-bind183397%_
                                           (hash->list
                                            (##unchecked-structure-ref
                                             _%phi-ctx183395%_
                                             '2
                                             '#f
                                             '#f))))
                                     (let _%lp183400%_ ((_%bind-rest183402%_
                                                         _%phi-bind183397%_)
                                                        (_%set183403%_ '()))
                                       (let* ((_%bind-rest183404183414%_
                                               _%bind-rest183402%_)
                                              (_%else183406183422%_
                                               (lambda ()
                                                 (_%K183162%_
                                                  _%rest183163%_
                                                  (cons (##structure
                                                         gx#export-set::t
                                                         '#f
                                                         _%current-phi183393%_
                                                         _%set183403%_)
                                                        _%r183164%_))))
                                              (_%K183408183432%_
                                               (lambda (_%bind-rest183425%_
                                                        _%bind183426%_
                                                        _%key183427%_)
                                                 (if (or (##structure-direct-instance-of?
                                                          _%bind183426%_
                                                          'gx#import-binding::t)
                                                         (gx#private-feature-binding?
                                                          _%bind183426%_))
                                                     (_%lp183400%_
                                                      _%bind-rest183425%_
                                                      _%set183403%_)
                                                     (_%lp183400%_
                                                      _%bind-rest183425%_
                                                      (cons (_%make-export__2__186513186516%_
                                                             _%bind183426%_
                                                             _%current-phi183393%_
                                                             _%current-ctx183391%_)
                                                            _%set183403%_))))))
                                         (if (pair? _%bind-rest183404183414%_)
                                             (let ((_%hd183409183435%_
                                                    (##car _%bind-rest183404183414%_))
                                                   (_%tl183410183437%_
                                                    (##cdr _%bind-rest183404183414%_)))
                                               (if (pair? _%hd183409183435%_)
                                                   (let ((_%hd183411183440%_
                                                          (##car _%hd183409183435%_))
                                                         (_%tl183412183442%_
                                                          (##cdr _%hd183409183435%_)))
                                                     (let* ((_%key183445%_
                                                             _%hd183411183440%_)
                                                            (_%bind183447%_
                                                             _%tl183412183442%_)
                                                            (_%bind-rest183449%_
                                                             _%tl183410183437%_))
                                                       (_%K183408183432%_
                                                        _%bind-rest183449%_
                                                        _%bind183447%_
                                                        _%key183445%_)))
                                                   (_%else183406183422%_)))
                                             (_%else183406183422%_)))))
                                   (_%E183167183387%_)))))
                       (_%E183166183451%_))))
                  (_%export-imports183008%_
                   (lambda (_%src183038%_ _%r183039%_)
                     (letrec* ((_%current-ctx183041%_
                                (gx#current-expander-context))
                               (_%current-phi183042%_
                                (gx#current-export-expander-phi))
                               (_%import->export183043%_
                                (lambda (_%in183124%_)
                                  (let* ((_%in183125183133%_ _%in183124%_)
                                         (_%E183127183136%_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _%in183125183133%_
                                                   '((module-import
                                                      out
                                                      key
                                                      phi)))
                                            '#!void))
                                         (_%K183128183143%_
                                          (lambda (_%phi183139%_
                                                   _%key183140%_
                                                   _%out183141%_)
                                            (##structure
                                             gx#module-export::t
                                             _%current-ctx183041%_
                                             _%key183140%_
                                             _%phi183139%_
                                             _%key183140%_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _%in183125183133%_
                                         'gx#module-import::t)
                                        (let* ((_%e183129183146%_
                                                (##unchecked-structure-ref
                                                 _%in183125183133%_
                                                 '1
                                                 '#f
                                                 '#f))
                                               (_%out183149%_
                                                _%e183129183146%_)
                                               (_%e183130183151%_
                                                (##unchecked-structure-ref
                                                 _%in183125183133%_
                                                 '2
                                                 '#f
                                                 '#f))
                                               (_%key183154%_
                                                _%e183130183151%_)
                                               (_%e183131183156%_
                                                (##unchecked-structure-ref
                                                 _%in183125183133%_
                                                 '3
                                                 '#f
                                                 '#f))
                                               (_%phi183159%_
                                                _%e183131183156%_))
                                          (_%K183128183143%_
                                           _%phi183159%_
                                           _%key183154%_
                                           _%out183149%_))
                                        (_%E183127183136%_)))))
                               (_%fold-e183044%_
                                (lambda (_%in183046%_ _%r183047%_)
                                  (let* ((_%in183048183062%_ _%in183046%_)
                                         (_%else183051183070%_
                                          (lambda () _%r183047%_)))
                                    (let ((_%K183057183106%_
                                           (lambda (_%phi183102%_
                                                    _%key183103%_
                                                    _%out183104%_)
                                             (if (and (fx= _%phi183102%_
                                                           _%current-phi183042%_)
                                                      (eq? _%src183038%_
                                                           (##unchecked-structure-ref
                                                            _%out183104%_
                                                            '1
                                                            '#f
                                                            '#f)))
                                                 (cons (_%import->export183043%_
                                                        _%in183046%_)
                                                       _%r183047%_)
                                                 _%r183047%_)))
                                          (_%K183053183081%_
                                           (lambda (_%imports183074%_
                                                    _%phi183075%_
                                                    _%ctx183076%_)
                                             (if (and (fx= _%phi183075%_
                                                           _%current-phi183042%_)
                                                      (eq? _%src183038%_
                                                           _%ctx183076%_))
                                                 (foldl__0
                                                  (lambda (_%in183078%_
                                                           _%r183079%_)
                                                    (cons (_%import->export183043%_
                                                           _%in183078%_)
                                                          _%r183079%_))
                                                  _%r183047%_
                                                  _%imports183074%_)
                                                 _%r183047%_))))
                                      (let ((_%try-match183050183099%_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _%in183048183062%_
                                                    'gx#import-set::t)
                                                   (let* ((_%e183054183084%_
                                                           (##unchecked-structure-ref
                                                            _%in183048183062%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                          (_%e183055183089%_
                                                           (##unchecked-structure-ref
                                                            _%in183048183062%_
                                                            '2
                                                            '#f
                                                            '#f))
                                                          (_%e183056183094%_
                                                           (##unchecked-structure-ref
                                                            _%in183048183062%_
                                                            '3
                                                            '#f
                                                            '#f)))
                                                     (let ((_%ctx183087%_
                                                            _%e183054183084%_)
                                                           (_%phi183092%_
                                                            _%e183055183089%_)
                                                           (_%imports183097%_
                                                            _%e183056183094%_))
                                                       (_%K183053183081%_
                                                        _%imports183097%_
                                                        _%phi183092%_
                                                        _%ctx183087%_)))
                                                   (_%else183051183070%_)))))
                                        (if (##structure-direct-instance-of?
                                             _%in183048183062%_
                                             'gx#module-import::t)
                                            (let* ((_%e183058183109%_
                                                    (##unchecked-structure-ref
                                                     _%in183048183062%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                   (_%e183059183114%_
                                                    (##unchecked-structure-ref
                                                     _%in183048183062%_
                                                     '2
                                                     '#f
                                                     '#f))
                                                   (_%e183060183119%_
                                                    (##unchecked-structure-ref
                                                     _%in183048183062%_
                                                     '3
                                                     '#f
                                                     '#f)))
                                              (let ((_%out183112%_
                                                     _%e183058183109%_)
                                                    (_%key183117%_
                                                     _%e183059183114%_)
                                                    (_%phi183122%_
                                                     _%e183060183119%_))
                                                (_%K183057183106%_
                                                 _%phi183122%_
                                                 _%key183117%_
                                                 _%out183112%_)))
                                            (_%try-match183050183099%_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _%src183038%_
                              _%current-phi183042%_
                              (foldl__0
                               _%fold-e183044%_
                               '()
                               (##unchecked-structure-ref
                                _%current-ctx183041%_
                                '8
                                '#f
                                '#f)))
                             _%r183039%_))))
                  (_%export!183009%_
                   (lambda (_%rbody183025%_)
                     (letrec* ((_%current-ctx183027%_
                                (gx#current-expander-context))
                               (_%fold-e183028%_
                                (lambda (_%out183032%_ _%r183033%_)
                                  (if (##structure-direct-instance-of?
                                       _%out183032%_
                                       'gx#module-export::t)
                                      (cons _%out183032%_ _%r183033%_)
                                      (if (##structure-direct-instance-of?
                                           _%out183032%_
                                           'gx#export-set::t)
                                          (foldl__0
                                           cons
                                           _%r183033%_
                                           (##unchecked-structure-ref
                                            _%out183032%_
                                            '3
                                            '#f
                                            '#f))
                                          _%r183033%_)))))
                       (let ((_%body183030%_ (reverse _%rbody183025%_)))
                         (##unchecked-structure-set!
                          _%current-ctx183027%_
                          (foldl__0
                           _%fold-e183028%_
                           (##unchecked-structure-ref
                            _%current-ctx183027%_
                            '9
                            '#f
                            '#f)
                           _%body183030%_)
                          '9
                          '#f
                          '#f)
                         _%body183030%_))))
                  (_%expanded-export?183010%_
                   (lambda (_%e183020%_)
                     (let ((_%$e183022%_
                            (##structure-direct-instance-of?
                             _%e183020%_
                             'gx#module-export::t)))
                       (if _%$e183022%_
                           _%$e183022%_
                           (##structure-direct-instance-of?
                            _%e183020%_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _%internal-expand?183004%_)
              (let ((_%rbody183016%_
                     (gx#core-expand-import/export
                      _%stx183003%_
                      _%expanded-export?183010%_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _%expand1183007%_)))
                (if _%internal-expand?183004%_
                    (reverse _%rbody183016%_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons
                      '%#export
                      (_%export!183009%_ _%rbody183016%_))
                     (gx#stx-source _%stx183003%_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _%stx183003%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _%stx183003%_))))))
    (define gx#core-expand-export%__0
      (lambda (_%stx183501%_)
        (let ((_%internal-expand?183503%_ '#f))
          (gx#core-expand-export%__%
           _%stx183501%_
           _%internal-expand?183503%_))))
    (define gx#core-expand-export%
      (lambda _g186585_
        (let ((_g186586_ (##length _g186585_)))
          (cond ((##fx= _g186586_ 1)
                 (apply gx#core-expand-export%__0 _g186585_))
                ((##fx= _g186586_ 2)
                 (apply gx#core-expand-export%__% _g186585_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g186585_))))))
    (define gx#core-expand-export-source
      (lambda (_%hd183000%_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _%hd183000%_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_%stx182970%_)
        (let* ((_%e182971182978%_ _%stx182970%_)
               (_%E182973182982%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e182971182978%_)))
               (_%E182972182996%_
                (lambda ()
                  (if (gx#stx-pair? _%e182971182978%_)
                      (let ((_%e182974182986%_
                             (gx#syntax-e _%e182971182978%_)))
                        (let ((_%hd182975182989%_ (##car _%e182974182986%_))
                              (_%tl182976182991%_ (##cdr _%e182974182986%_)))
                          (let ((_%body182994%_ _%tl182976182991%_))
                            (if (gx#identifier-list? _%body182994%_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _%body182994%_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _%body182994%_))
                                   (gx#stx-source _%stx182970%_)))
                                (_%E182973182982%_)))))
                      (_%E182973182982%_)))))
          (_%E182972182996%_))))
    (define gx#core-bind-feature!__%
      (lambda (_%id182936%_ _%private?182937%_ _%phi182938%_ _%ctx182939%_)
        (gx#core-bind-syntax!__%
         _%id182936%_
         ((if _%private?182937%_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _%id182936%_))
         _%private?182937%_
         _%phi182938%_
         _%ctx182939%_)))
    (define gx#core-bind-feature!__0
      (lambda (_%id182944%_)
        (let* ((_%private?182946%_ '#f)
               (_%phi182948%_ (gx#current-expander-phi))
               (_%ctx182950%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id182944%_
           _%private?182946%_
           _%phi182948%_
           _%ctx182950%_))))
    (define gx#core-bind-feature!__1
      (lambda (_%id182952%_ _%private?182953%_)
        (let* ((_%phi182955%_ (gx#current-expander-phi))
               (_%ctx182957%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id182952%_
           _%private?182953%_
           _%phi182955%_
           _%ctx182957%_))))
    (define gx#core-bind-feature!__2
      (lambda (_%id182959%_ _%private?182960%_ _%phi182961%_)
        (let ((_%ctx182963%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id182959%_
           _%private?182960%_
           _%phi182961%_
           _%ctx182963%_))))
    (define gx#core-bind-feature!
      (lambda _g186587_
        (let ((_g186588_ (##length _g186587_)))
          (cond ((##fx= _g186588_ 1)
                 (apply gx#core-bind-feature!__0 _g186587_))
                ((##fx= _g186588_ 2)
                 (apply gx#core-bind-feature!__1 _g186587_))
                ((##fx= _g186588_ 3)
                 (apply gx#core-bind-feature!__2 _g186587_))
                ((##fx= _g186588_ 4)
                 (apply gx#core-bind-feature!__% _g186587_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g186587_))))))))
