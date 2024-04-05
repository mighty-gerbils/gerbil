(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1712299484)
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
      (lambda _%$args125655%_
        (apply make-instance gx#module-import::t _%$args125655%_)))
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
      (lambda _%$args125652%_
        (apply make-instance gx#module-export::t _%$args125652%_)))
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
      (lambda _%$args125649%_
        (apply make-instance gx#import-set::t _%$args125649%_)))
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
      (lambda _%$args125646%_
        (apply make-instance gx#export-set::t _%$args125646%_)))
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
      (lambda _%$args125643%_
        (apply make-instance gx#import-expander::t _%$args125643%_)))
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
      (lambda _%$args125640%_
        (apply make-instance gx#export-expander::t _%$args125640%_)))
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
      (lambda _%$args125637%_
        (apply make-instance gx#import-export-expander::t _%$args125637%_)))
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
      (lambda (_%path125634%_ _%fun125635%_)
        (call-with-input-file
         (cons 'path: (cons _%path125634%_ gx#source-file-settings))
         _%fun125635%_)))
    (define gx#module-context:::init!
      (lambda (_%self125617%_
               _%id125618%_
               _%super125619%_
               _%ns125620%_
               _%path125621%_)
        (let ((_%self125624%_ _%self125617%_))
          (if (##fx< '11 (##structure-length _%self125624%_))
              (begin
                (##unchecked-structure-set!
                 _%self125624%_
                 _%id125618%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self125624%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self125624%_
                 _%super125619%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self125624%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self125624%_ '#f '5 '#f '#f)
                (##unchecked-structure-set!
                 _%self125624%_
                 _%ns125620%_
                 '6
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self125624%_
                 _%path125621%_
                 '7
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self125624%_ '() '8 '#f '#f)
                (##unchecked-structure-set! _%self125624%_ '() '9 '#f '#f)
                (##unchecked-structure-set! _%self125624%_ '#f '10 '#f '#f)
                (##unchecked-structure-set! _%self125624%_ '#f '11 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self125624%_
                     '11
                     (##vector-length _%self125624%_))))))
    (__bind-method! gx#module-context::t ':init! gx#module-context:::init! '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_%self125450%_ _%ctx125451%_ _%root125452%_)
        (let ()
          (let* ((_%self125455%_ _%self125450%_)
                 (_%super125471%_
                  (let ((_%$e125465%_ _%root125452%_))
                    (if _%$e125465%_
                        _%$e125465%_
                        (let ((_%$e125468%_ (gx#core-context-root__0)))
                          (if _%$e125468%_
                              _%$e125468%_
                              (let ((__obj125699
                                     (##structure gx#root-context::t '#f '#f)))
                                (let ((__constructor125700
                                       (direct-method-ref
                                        gx#root-context::t
                                        __obj125699
                                        ':init!)))
                                  (if __constructor125700
                                      (__constructor125700 __obj125699)
                                      (error '"missing constructor method implementation"
                                             'class:
                                             gx#root-context::t
                                             'method:
                                             ':init!)))
                                __obj125699)))))))
            (if _%ctx125451%_
                (let ((_%id125474%_
                       (##structure-ref
                        _%ctx125451%_
                        '1
                        gx#expander-context::t
                        '#f))
                      (_%path125475%_
                       (##structure-ref
                        _%ctx125451%_
                        '7
                        gx#module-context::t
                        '#f))
                      (_%in125476%_
                       (map gx#core-module-export->import
                            (##structure-ref
                             _%ctx125451%_
                             '9
                             gx#module-context::t
                             '#f)))
                      (_%e125477%_
                       (__make-promise
                        (lambda () (gx#eval-module _%ctx125451%_)))))
                  (if (##fx< '8 (##structure-length _%self125455%_))
                      (begin
                        (##unchecked-structure-set!
                         _%self125455%_
                         _%id125474%_
                         '1
                         '#f
                         '#f)
                        (##unchecked-structure-set!
                         _%self125455%_
                         (make-hash-table-eq 'size: (##length _%in125476%_))
                         '2
                         '#f
                         '#f)
                        (##unchecked-structure-set!
                         _%self125455%_
                         _%super125471%_
                         '3
                         '#f
                         '#f)
                        (##unchecked-structure-set!
                         _%self125455%_
                         '#f
                         '4
                         '#f
                         '#f)
                        (##unchecked-structure-set!
                         _%self125455%_
                         '#f
                         '5
                         '#f
                         '#f)
                        (##unchecked-structure-set!
                         _%self125455%_
                         _%path125475%_
                         '6
                         '#f
                         '#f)
                        (##unchecked-structure-set!
                         _%self125455%_
                         _%in125476%_
                         '7
                         '#f
                         '#f)
                        (##unchecked-structure-set!
                         _%self125455%_
                         _%e125477%_
                         '8
                         '#f
                         '#f)
                        '#!void)
                      (error '"struct-instance-init!: too many arguments for struct"
                             _%self125455%_
                             '8
                             (##vector-length _%self125455%_)))
                  (##for-each
                   (lambda (_%g125478125480%_)
                     (gx#core-bind-weak-import!__%
                      _%g125478125480%_
                      _%self125455%_))
                   _%in125476%_))
                (if (##fx< '8 (##structure-length _%self125455%_))
                    (begin
                      (##unchecked-structure-set!
                       _%self125455%_
                       '#f
                       '1
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self125455%_
                       (make-hash-table-eq)
                       '2
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self125455%_
                       _%super125471%_
                       '3
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self125455%_
                       '#f
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self125455%_
                       '#f
                       '5
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self125455%_
                       '#f
                       '6
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self125455%_
                       '()
                       '7
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self125455%_
                       '#f
                       '8
                       '#f
                       '#f)
                      '#!void)
                    (error '"struct-instance-init!: too many arguments for struct"
                           _%self125455%_
                           '8
                           (##vector-length _%self125455%_))))))))
    (define gx#prelude-context:::init!__0
      (lambda (_%self125486%_ _%ctx125487%_)
        (let ((_%root125489%_ '#f))
          (gx#prelude-context:::init!__%
           _%self125486%_
           _%ctx125487%_
           _%root125489%_))))
    (define gx#prelude-context:::init!
      (lambda _g125706_
        (let ((_g125705_ (##length _g125706_)))
          (cond ((##fx= _g125705_ 2)
                 (apply (lambda (_%self125486%_ _%ctx125487%_)
                          (gx#prelude-context:::init!__0
                           _%self125486%_
                           _%ctx125487%_))
                        _g125706_))
                ((##fx= _g125705_ 3)
                 (apply (lambda (_%self125491%_ _%ctx125492%_ _%root125493%_)
                          (gx#prelude-context:::init!__%
                           _%self125491%_
                           _%ctx125492%_
                           _%root125493%_))
                        _g125706_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g125706_))))))
    (__bind-method!
     gx#prelude-context::t
     ':init!
     gx#prelude-context:::init!
     '#f)
    (define gx#import-export-expander-init!
      (lambda (_%self125324%_ _%e125325%_)
        (if (##fx< '3 (##structure-length _%self125324%_))
            (begin
              (##unchecked-structure-set!
               _%self125324%_
               _%e125325%_
               '1
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self125324%_
               (gx#current-expander-context)
               '2
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self125324%_
               (##fx- (gx#current-expander-phi) '1)
               '3
               '#f
               '#f)
              '#!void)
            (error '"struct-instance-init!: too many arguments for struct"
                   _%self125324%_
                   '3
                   (##vector-length _%self125324%_)))))
    (define gx#import-expander:::init! gx#import-export-expander-init!)
    (__bind-method!
     gx#import-expander::t
     ':init!
     gx#import-expander:::init!
     '#f)
    (define gx#export-expander:::init! gx#import-export-expander-init!)
    (__bind-method!
     gx#export-expander::t
     ':init!
     gx#export-expander:::init!
     '#f)
    (define gx#import-export-expander:::init! gx#import-export-expander-init!)
    (__bind-method!
     gx#import-export-expander::t
     ':init!
     gx#import-export-expander:::init!
     '#f)
    (define gx#import-expander::apply-import-expander
      (lambda (_%g124950124953%_ _%g124951124955%_)
        (gx#core-apply-user-expander__%
         _%g124950124953%_
         _%g124951124955%_
         'apply-import-expander)))
    (__bind-method!
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_%g124821124824%_ _%g124822124826%_)
        (gx#core-apply-user-expander__%
         _%g124821124824%_
         _%g124822124826%_
         'apply-export-expander)))
    (__bind-method!
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_%ctx124692%_)
        (let* ((_%path124694%_
                (##structure-ref _%ctx124692%_ '7 gx#module-context::t '#f))
               (_%path124696%_
                (if (pair? _%path124694%_)
                    (last _%path124694%_)
                    _%path124694%_)))
          (if (string? _%path124696%_) _%path124696%_ '#f))))
    (define gx#import-module__%
      (lambda (_%path124668%_ _%reload?124669%_ _%eval?124670%_)
        (let ((_%ctx124672%_
               ((gx#current-expander-module-import)
                _%path124668%_
                _%reload?124669%_)))
          (if (and _%ctx124672%_ _%eval?124670%_)
              (gx#eval-module _%ctx124672%_)
              '#!void)
          _%ctx124672%_)))
    (define gx#import-module__0
      (lambda (_%path124677%_)
        (let* ((_%reload?124679%_ '#f) (_%eval?124681%_ '#f))
          (gx#import-module__%
           _%path124677%_
           _%reload?124679%_
           _%eval?124681%_))))
    (define gx#import-module__1
      (lambda (_%path124683%_ _%reload?124684%_)
        (let ((_%eval?124686%_ '#f))
          (gx#import-module__%
           _%path124683%_
           _%reload?124684%_
           _%eval?124686%_))))
    (define gx#import-module
      (lambda _g125708_
        (let ((_g125707_ (##length _g125708_)))
          (cond ((##fx= _g125707_ 1)
                 (apply (lambda (_%path124677%_)
                          (gx#import-module__0 _%path124677%_))
                        _g125708_))
                ((##fx= _g125707_ 2)
                 (apply (lambda (_%path124683%_ _%reload?124684%_)
                          (gx#import-module__1
                           _%path124683%_
                           _%reload?124684%_))
                        _g125708_))
                ((##fx= _g125707_ 3)
                 (apply (lambda (_%path124688%_
                                 _%reload?124689%_
                                 _%eval?124690%_)
                          (gx#import-module__%
                           _%path124688%_
                           _%reload?124689%_
                           _%eval?124690%_))
                        _g125708_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g125708_))))))
    (define gx#eval-module
      (lambda (_%mod124665%_)
        ((gx#current-expander-module-eval) _%mod124665%_)))
    (define gx#core-eval-module
      (lambda (_%obj124645%_)
        (letrec ((_%force-e124647%_
                  (lambda (_%getf124661%_ _%e124662%_)
                    (__call-with-parameters
                     (lambda () (force (_%getf124661%_ _%e124662%_)))
                     gx#current-expander-context
                     _%e124662%_
                     gx#current-expander-phi
                     '0))))
          (let _%recur124649%_ ((_%e124651%_ _%obj124645%_))
            (if (##structure-instance-of? _%e124651%_ 'gx#module-context::t)
                (let ()
                  (let ((_%$e124654%_
                         (gx#core-context-prelude__% _%e124651%_)))
                    (if _%$e124654%_ (_%recur124649%_ _%$e124654%_) '#!void))
                  (_%force-e124647%_ gx#module-context-e _%e124651%_))
                (if (##structure-instance-of?
                     _%e124651%_
                     'gx#prelude-context::t)
                    (let ()
                      (_%force-e124647%_ gx#prelude-context-e _%e124651%_))
                    (if (gx#stx-string? _%e124651%_)
                        (let ()
                          (_%recur124649%_
                           (gx#import-module__0
                            (gx#core-resolve-module-path__0 _%e124651%_))))
                        (if (gx#core-library-module-path? _%e124651%_)
                            (let ()
                              (_%recur124649%_
                               (gx#import-module__0
                                (gx#core-resolve-library-module-path
                                 _%e124651%_))))
                            (let ()
                              (error '"cannot eval module"
                                     _%obj124645%_))))))))))
    (define gx#core-context-prelude__%
      (lambda (_%ctx124625%_)
        (let _%lp124627%_ ((_%e124629%_ _%ctx124625%_))
          (if (or (##structure-instance-of? _%e124629%_ 'gx#module-context::t)
                  (##structure-instance-of? _%e124629%_ 'gx#local-context::t))
              (let ()
                (_%lp124627%_
                 (##unchecked-structure-ref _%e124629%_ '3 '#f '#f)))
              (if (##structure-instance-of? _%e124629%_ 'gx#prelude-context::t)
                  (let () _%e124629%_)
                  (let () '#f))))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_%ctx124641%_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _%ctx124641%_))))
    (define gx#core-context-prelude
      (lambda _g125710_
        (let ((_g125709_ (##length _g125710_)))
          (cond ((##fx= _g125709_ 0)
                 (apply (lambda () (gx#core-context-prelude__0)) _g125710_))
                ((##fx= _g125709_ 1)
                 (apply (lambda (_%ctx124643%_)
                          (gx#core-context-prelude__% _%ctx124643%_))
                        _g125710_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g125710_))))))
    (define gx#core-module->prelude-context
      (lambda (_%ctx124616%_)
        (let ((_%$e124618%_ (hash-get gx#__module-registry _%ctx124616%_)))
          (if _%$e124618%_
              _%$e124618%_
              (let ((_%pre124622%_
                     (let ((__obj125701
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
                       (gx#prelude-context:::init! __obj125701 _%ctx124616%_)
                       __obj125701)))
                (hash-put! gx#__module-registry _%ctx124616%_ _%pre124622%_)
                _%pre124622%_)))))
    (define gx#core-import-module__%
      (lambda (_%rpath124488%_ _%reload?124489%_)
        (letrec ((_%import-source124491%_
                  (lambda (_%path124580%_)
                    (if (member _%path124580%_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _%path124580%_)
                        '#!void)
                    (__call-with-parameters
                     (lambda ()
                       (let ((_g125711_ (gx#core-read-module _%path124580%_)))
                         (begin
                           (let ((_g125712_
                                  (if (##values? _g125711_)
                                      (##vector-length _g125711_)
                                      1)))
                             (if (not (##fx= _g125712_ 4))
                                 (error "Context expects 4 values" _g125712_)))
                           (let ((_%pre124583%_ (##vector-ref _g125711_ 0))
                                 (_%id124584%_ (##vector-ref _g125711_ 1))
                                 (_%ns124585%_ (##vector-ref _g125711_ 2))
                                 (_%body124586%_ (##vector-ref _g125711_ 3)))
                             (let* ((_%prelude124596%_
                                     (if (##structure-instance-of?
                                          _%pre124583%_
                                          'gx#prelude-context::t)
                                         (let () _%pre124583%_)
                                         (if (##structure-instance-of?
                                              _%pre124583%_
                                              'gx#module-context::t)
                                             (let ()
                                               (gx#core-module->prelude-context
                                                _%pre124583%_))
                                             (if (string? _%pre124583%_)
                                                 (let ()
                                                   (gx#core-module->prelude-context
                                                    (gx#core-import-module__0
                                                     _%pre124583%_)))
                                                 (if (not _%pre124583%_)
                                                     (let ((_%$e124592%_
                                                            (gx#current-expander-module-prelude)))
                                                       (if _%$e124592%_
                                                           _%$e124592%_
                                                           (let ((__obj125702
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
                     (gx#prelude-context:::init! __obj125702 '#f)
                     __obj125702)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (error '"cannot import module; unknown prelude"
                                                              _%rpath124488%_
                                                              _%pre124583%_)))))))
                                    (_%ctx124598%_
                                     (let ((__obj125703
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
                                        __obj125703
                                        _%id124584%_
                                        _%prelude124596%_
                                        _%ns124585%_
                                        _%path124580%_)
                                       __obj125703))
                                    (_%body124600%_
                                     (gx#core-expand-module-begin
                                      _%body124586%_
                                      _%ctx124598%_))
                                    (_%body124602%_
                                     (gx#core-quote-syntax__%
                                      (gx#core-cons '%#begin _%body124600%_)
                                      _%path124580%_
                                      _%ctx124598%_
                                      '())))
                               (##unchecked-structure-set!
                                _%ctx124598%_
                                (__make-promise
                                 (lambda () (gx#eval-syntax* _%body124602%_)))
                                '10
                                '#f
                                '#f)
                               (##unchecked-structure-set!
                                _%ctx124598%_
                                _%body124602%_
                                '11
                                '#f
                                '#f)
                               (hash-put!
                                gx#__module-registry
                                _%path124580%_
                                _%ctx124598%_)
                               (hash-put!
                                gx#__module-registry
                                _%id124584%_
                                _%ctx124598%_)
                               _%ctx124598%_)))))
                     gx#current-expander-context
                     (gx#core-context-root__0)
                     gx#current-expander-marks
                     '()
                     gx#current-expander-phi
                     '0
                     gx#current-expander-path
                     (cons _%path124580%_ (gx#current-expander-path))
                     gx#current-import-expander-phi
                     '#f
                     gx#current-export-expander-phi
                     '#f)))
                 (_%import-submodule124492%_
                  (lambda (_%rpath124508%_)
                    (let* ((_%rpath124509124516%_ _%rpath124508%_)
                           (_%E124511124520%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%rpath124509124516%_
                                     '([origin . refs]))
                              '#!void))
                           (_%K124512124568%_
                            (lambda (_%refs124523%_ _%origin124524%_)
                              (let ((_%ctx124526%_
                                     (if _%origin124524%_
                                         (gx#core-import-module__%
                                          _%origin124524%_
                                          _%reload?124489%_)
                                         (gx#current-expander-context))))
                                (let _%lp124528%_ ((_%rest124530%_
                                                    _%refs124523%_)
                                                   (_%ctx124531%_
                                                    _%ctx124526%_))
                                  (let* ((_%rest124532124540%_ _%rest124530%_)
                                         (_%else124534124548%_
                                          (lambda () _%ctx124531%_))
                                         (_%K124536124556%_
                                          (lambda (_%rest124551%_ _%id124552%_)
                                            (let ((_%bind124554%_
                                                   (gx#resolve-identifier__%
                                                    _%id124552%_
                                                    '0
                                                    _%ctx124531%_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _%bind124554%_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _%bind124554%_
                                                         '4
                                                         '#f
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_%lp124528%_
                                                   _%rest124551%_
                                                   (##unchecked-structure-ref
                                                    _%bind124554%_
                                                    '4
                                                    '#f
                                                    '#f))
                                                  (error '"cannot import submodule; not bound as a module"
                                                         _%rpath124508%_
                                                         _%id124552%_
                                                         _%bind124554%_))))))
                                    (if (##pair? _%rest124532124540%_)
                                        (let ((_%hd124537124559%_
                                               (##car _%rest124532124540%_))
                                              (_%tl124538124561%_
                                               (##cdr _%rest124532124540%_)))
                                          (let* ((_%id124564%_
                                                  _%hd124537124559%_)
                                                 (_%rest124566%_
                                                  _%tl124538124561%_))
                                            (_%K124536124556%_
                                             _%rest124566%_
                                             _%id124564%_)))
                                        (_%else124534124548%_))))))))
                      (if (##pair? _%rpath124509124516%_)
                          (let ((_%hd124513124571%_
                                 (##car _%rpath124509124516%_))
                                (_%tl124514124573%_
                                 (##cdr _%rpath124509124516%_)))
                            (let* ((_%origin124576%_ _%hd124513124571%_)
                                   (_%refs124578%_ _%tl124514124573%_))
                              (_%K124512124568%_
                               _%refs124578%_
                               _%origin124576%_)))
                          (_%E124511124520%_))))))
          (let ((_%$e124494%_
                 (if (not _%reload?124489%_)
                     (hash-get gx#__module-registry _%rpath124488%_)
                     '#f)))
            (if _%$e124494%_
                _%$e124494%_
                (if (list? _%rpath124488%_)
                    (let () (_%import-submodule124492%_ _%rpath124488%_))
                    (if (gx#core-library-module-path? _%rpath124488%_)
                        (let ((_%ctx124499%_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _%rpath124488%_)
                                _%reload?124489%_)))
                          (hash-put!
                           gx#__module-registry
                           _%rpath124488%_
                           _%ctx124499%_)
                          _%ctx124499%_)
                        (let ()
                          (let* ((_%npath124502%_
                                  (path-normalize _%rpath124488%_))
                                 (_%$e124504%_
                                  (if (not _%reload?124489%_)
                                      (hash-get
                                       gx#__module-registry
                                       _%npath124502%_)
                                      '#f)))
                            (if _%$e124504%_
                                _%$e124504%_
                                (let ()
                                  (_%import-source124491%_
                                   _%npath124502%_))))))))))))
    (define gx#core-import-module__0
      (lambda (_%rpath124609%_)
        (let ((_%reload?124611%_ '#f))
          (gx#core-import-module__% _%rpath124609%_ _%reload?124611%_))))
    (define gx#core-import-module
      (lambda _g125714_
        (let ((_g125713_ (##length _g125714_)))
          (cond ((##fx= _g125713_ 1)
                 (apply (lambda (_%rpath124609%_)
                          (gx#core-import-module__0 _%rpath124609%_))
                        _g125714_))
                ((##fx= _g125713_ 2)
                 (apply (lambda (_%rpath124613%_ _%reload?124614%_)
                          (gx#core-import-module__%
                           _%rpath124613%_
                           _%reload?124614%_))
                        _g125714_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g125714_))))))
    (define gx#core-read-module
      (lambda (_%path124477%_)
        (__with-catch
         (lambda (_%exn124479%_)
           (if (and (datum-parsing-exception? _%exn124479%_)
                    (eq? (datum-parsing-exception-filepos _%exn124479%_) '0))
               (gx#core-read-module/lang _%path124477%_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _%path124477%_
                (__call-with-parameters
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_%g124481124483%_)
                      (display-exception _%exn124479%_ _%g124481124483%_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _%path124477%_)))))
    (define gx#core-read-module/sexp
      (lambda (_%path124329%_)
        (let _%lp124331%_ ((_%body124333%_
                            (read-syntax-from-file _%path124329%_))
                           (_%pre124334%_ '#f)
                           (_%ns124335%_ '#f)
                           (_%pkg124336%_ '#f))
          (let* ((_%e124337124361%_ _%body124333%_)
                 (_%E124353124387%_
                  (lambda ()
                    (let ((_g125715_
                           (if _%pkg124336%_
                               (values _%pre124334%_
                                       _%ns124335%_
                                       _%pkg124336%_)
                               (gx#core-read-module-package
                                _%path124329%_
                                _%pre124334%_
                                _%ns124335%_))))
                      (begin
                        (let ((_g125716_
                               (if (##values? _g125715_)
                                   (##vector-length _g125715_)
                                   1)))
                          (if (not (##fx= _g125716_ 3))
                              (error "Context expects 3 values" _g125716_)))
                        (let ((_%pre124365%_ (##vector-ref _g125715_ 0))
                              (_%ns124366%_ (##vector-ref _g125715_ 1))
                              (_%pkg124367%_ (##vector-ref _g125715_ 2)))
                          (let* ((_%prelude124373%_
                                  (if (gx#core-bound-module-prelude?
                                       _%pre124365%_)
                                      (let ()
                                        (gx#syntax-local-e__0 _%pre124365%_))
                                      (if (gx#core-library-module-path?
                                           _%pre124365%_)
                                          (let ()
                                            (gx#core-resolve-library-module-path
                                             _%pre124365%_))
                                          (if (gx#stx-string? _%pre124365%_)
                                              (let ()
                                                (gx#core-resolve-module-path__%
                                                 _%pre124365%_
                                                 _%path124329%_))
                                              (let ()
                                                (gx#stx-e _%pre124365%_))))))
                                 (_%path-id124375%_
                                  (gx#core-module-path->namespace
                                   _%path124329%_))
                                 (_%pkg-id124377%_
                                  (if _%pkg124367%_
                                      (string-append
                                       _%pkg124367%_
                                       '"/"
                                       _%path-id124375%_)
                                      _%path-id124375%_))
                                 (_%module-id124379%_
                                  (string->symbol _%pkg-id124377%_))
                                 (_%module-ns124384%_
                                  (if (eq? _%ns124366%_ '#!void)
                                      '#f
                                      (let ((_%$e124381%_ _%ns124366%_))
                                        (if _%$e124381%_
                                            _%$e124381%_
                                            _%pkg-id124377%_)))))
                            (values _%prelude124373%_
                                    _%module-id124379%_
                                    _%module-ns124384%_
                                    _%body124333%_)))))))
                 (_%E124346124419%_
                  (lambda ()
                    (if (gx#stx-pair? _%e124337124361%_)
                        (let ((_%e124354124391%_
                               (gx#syntax-e _%e124337124361%_)))
                          (let ((_%hd124355124394%_ (##car _%e124354124391%_))
                                (_%tl124356124396%_ (##cdr _%e124354124391%_)))
                            (if (eq? (gx#stx-e _%hd124355124394%_) 'package:)
                                (if (gx#stx-pair? _%tl124356124396%_)
                                    (let ((_%e124357124399%_
                                           (gx#syntax-e _%tl124356124396%_)))
                                      (let ((_%hd124358124402%_
                                             (##car _%e124357124399%_))
                                            (_%tl124359124404%_
                                             (##cdr _%e124357124399%_)))
                                        (let* ((_%pkg124407%_
                                                _%hd124358124402%_)
                                               (_%rest124409%_
                                                _%tl124359124404%_))
                                          (if '#t
                                              (let ((_%pkg124417%_
                                                     (if (gx#identifier?
                                                          _%pkg124407%_)
                                                         (let ()
                                                           (symbol->string
                                                            (gx#stx-e
                                                             _%pkg124407%_)))
                                                         (if (or (gx#stx-string?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%pkg124407%_)
                         (gx#stx-false? _%pkg124407%_))
                     (let () (gx#stx-e _%pkg124407%_))
                     (let ()
                       (gx#raise-syntax-error
                        'import
                        '"Bad syntax; Illegal package name"
                        _%pkg124407%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%lp124331%_
                                                 _%rest124409%_
                                                 _%pre124334%_
                                                 _%ns124335%_
                                                 _%pkg124417%_))
                                              (_%E124353124387%_)))))
                                    (_%E124353124387%_))
                                (_%E124353124387%_))))
                        (_%E124353124387%_))))
                 (_%E124339124449%_
                  (lambda ()
                    (if (gx#stx-pair? _%e124337124361%_)
                        (let ((_%e124347124423%_
                               (gx#syntax-e _%e124337124361%_)))
                          (let ((_%hd124348124426%_ (##car _%e124347124423%_))
                                (_%tl124349124428%_ (##cdr _%e124347124423%_)))
                            (if (eq? (gx#stx-e _%hd124348124426%_) 'namespace:)
                                (if (gx#stx-pair? _%tl124349124428%_)
                                    (let ((_%e124350124431%_
                                           (gx#syntax-e _%tl124349124428%_)))
                                      (let ((_%hd124351124434%_
                                             (##car _%e124350124431%_))
                                            (_%tl124352124436%_
                                             (##cdr _%e124350124431%_)))
                                        (let* ((_%ns124439%_
                                                _%hd124351124434%_)
                                               (_%rest124441%_
                                                _%tl124352124436%_))
                                          (if '#t
                                              (let ((_%ns124447%_
                                                     (if (gx#identifier?
                                                          _%ns124439%_)
                                                         (let ()
                                                           (symbol->string
                                                            (gx#stx-e
                                                             _%ns124439%_)))
                                                         (if (gx#stx-string?
                                                              _%ns124439%_)
                                                             (let ()
                                                               (gx#stx-e
                                                                _%ns124439%_))
                                                             (if (gx#stx-false?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%ns124439%_)
                         (let () '#!void)
                         (let ()
                           (gx#raise-syntax-error
                            'import
                            '"Bad syntax; illegal namespace"
                            _%ns124439%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%lp124331%_
                                                 _%rest124441%_
                                                 _%pre124334%_
                                                 _%ns124447%_
                                                 _%pkg124336%_))
                                              (_%E124346124419%_)))))
                                    (_%E124346124419%_))
                                (_%E124346124419%_))))
                        (_%E124346124419%_))))
                 (_%E124338124473%_
                  (lambda ()
                    (if (gx#stx-pair? _%e124337124361%_)
                        (let ((_%e124340124453%_
                               (gx#syntax-e _%e124337124361%_)))
                          (let ((_%hd124341124456%_ (##car _%e124340124453%_))
                                (_%tl124342124458%_ (##cdr _%e124340124453%_)))
                            (if (eq? (gx#stx-e _%hd124341124456%_) 'prelude:)
                                (if (gx#stx-pair? _%tl124342124458%_)
                                    (let ((_%e124343124461%_
                                           (gx#syntax-e _%tl124342124458%_)))
                                      (let ((_%hd124344124464%_
                                             (##car _%e124343124461%_))
                                            (_%tl124345124466%_
                                             (##cdr _%e124343124461%_)))
                                        (let* ((_%prelude124469%_
                                                _%hd124344124464%_)
                                               (_%rest124471%_
                                                _%tl124345124466%_))
                                          (if '#t
                                              (_%lp124331%_
                                               _%rest124471%_
                                               _%prelude124469%_
                                               _%ns124335%_
                                               _%pkg124336%_)
                                              (_%E124339124449%_)))))
                                    (_%E124339124449%_))
                                (_%E124339124449%_))))
                        (_%E124339124449%_)))))
            (_%E124338124473%_)))))
    (define gx#core-read-module/lang
      (lambda (_%path124151%_)
        (letrec ((_%default-read-module-body124153%_
                  (lambda (_%inp124321%_)
                    (let _%lp124323%_ ((_%body124325%_ '()))
                      (let ((_%next124327%_ (read-syntax__% _%inp124321%_)))
                        (if (eof-object? _%next124327%_)
                            (reverse _%body124325%_)
                            (_%lp124323%_
                             (cons _%next124327%_ _%body124325%_)))))))
                 (_%read-body124154%_
                  (lambda (_%inp124239%_
                           _%pre124240%_
                           _%ns124241%_
                           _%pkg124242%_
                           _%args124243%_)
                    (let ((_g125717_
                           (if _%pkg124242%_
                               (values _%pre124240%_
                                       _%ns124241%_
                                       _%pkg124242%_)
                               (gx#core-read-module-package
                                _%path124151%_
                                _%pre124240%_
                                _%ns124241%_))))
                      (begin
                        (let ((_g125718_
                               (if (##values? _g125717_)
                                   (##vector-length _g125717_)
                                   1)))
                          (if (not (##fx= _g125718_ 3))
                              (error "Context expects 3 values" _g125718_)))
                        (let ((_%pre124245%_ (##vector-ref _g125717_ 0))
                              (_%ns124246%_ (##vector-ref _g125717_ 1))
                              (_%pkg124247%_ (##vector-ref _g125717_ 2)))
                          (let* ((_%prelude124249%_
                                  (gx#import-module__0 _%pre124245%_))
                                 (_%read-module-body124304%_
                                  (let ((_%$e124295%_
                                         (__find (lambda (_%e124250124252%_)
                                                   (let* ((_%g124254124264%_
                                                           _%e124250124252%_)
                                                          (_%else124256124272%_
                                                           (lambda () '#f))
                                                          (_%K124258124276%_
                                                           (lambda () '#t)))
                                                     (if (##structure-direct-instance-of?
                                                          _%g124254124264%_
                                                          'gx#module-export::t)
                                                         (let* ((_%e124259124279%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##unchecked-structure-ref
                          _%g124254124264%_
                          '1
                          '#f
                          '#f))
                        (_%e124260124282%_
                         (##unchecked-structure-ref
                          _%g124254124264%_
                          '2
                          '#f
                          '#f))
                        (_%e124261124285%_
                         (##unchecked-structure-ref
                          _%g124254124264%_
                          '3
                          '#f
                          '#f)))
                   (if (##eq? _%e124261124285%_ '1)
                       (let ((_%e124262124288%_
                              (##unchecked-structure-ref
                               _%g124254124264%_
                               '4
                               '#f
                               '#f)))
                         (if ((lambda (_%g124290124292%_)
                                (eq? _%g124290124292%_ 'read-module-body))
                              _%e124262124288%_)
                             (_%K124258124276%_)
                             (_%else124256124272%_)))
                       (_%else124256124272%_)))
                 (_%else124256124272%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (##unchecked-structure-ref
                                                  _%prelude124249%_
                                                  '9
                                                  '#f
                                                  '#f))))
                                    (if _%$e124295%_
                                        ((lambda (_%xport124298%_)
                                           (let ((_%proc124301%_
                                                  (__with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _%xport124298%_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _%proc124301%_)
                                                 _%proc124301%_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _%path124151%_
                                                  _%pre124245%_
                                                  _%proc124301%_))))
                                         _%$e124295%_)
                                        (let ()
                                          _%default-read-module-body124153%_))))
                                 (_%path-id124306%_
                                  (gx#core-module-path->namespace
                                   _%path124151%_))
                                 (_%pkg-id124308%_
                                  (if _%pkg124247%_
                                      (string-append
                                       _%pkg124247%_
                                       '"/"
                                       _%path-id124306%_)
                                      _%path-id124306%_))
                                 (_%module-id124310%_
                                  (string->symbol _%pkg-id124308%_))
                                 (_%module-ns124315%_
                                  (let ((_%$e124312%_ _%ns124246%_))
                                    (if _%$e124312%_
                                        _%$e124312%_
                                        _%pkg-id124308%_)))
                                 (_%body124318%_
                                  (__call-with-parameters
                                   (lambda ()
                                     (_%read-module-body124304%_
                                      _%inp124239%_))
                                   gx#current-module-reader-path
                                   _%path124151%_
                                   gx#current-module-reader-args
                                   _%args124243%_)))
                            (values _%prelude124249%_
                                    _%module-id124310%_
                                    _%module-ns124315%_
                                    _%body124318%_)))))))
                 (_%string-e124155%_
                  (lambda (_%obj124233%_ _%what124234%_)
                    (if (string? _%obj124233%_)
                        (let () _%obj124233%_)
                        (if (symbol? _%obj124233%_)
                            (let () (symbol->string _%obj124233%_))
                            (let ()
                              (gx#raise-syntax-error
                               '#f
                               (string-append
                                '"Illegal module "
                                _%what124234%_)
                               _%path124151%_
                               _%obj124233%_))))))
                 (_%read-lang-args124156%_
                  (lambda (_%inp124188%_ _%args124189%_)
                    (let* ((_%args124190124198%_ _%args124189%_)
                           (_%else124192124206%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _%path124151%_)))
                           (_%K124194124221%_
                            (lambda (_%args124209%_ _%prelude124210%_)
                              (let* ((_%pkg124212%_
                                      (pgetq__0 'package: _%args124209%_))
                                     (_%pkg124214%_
                                      (if _%pkg124212%_
                                          (_%string-e124155%_
                                           _%pkg124212%_
                                           '"package")
                                          '#f))
                                     (_%ns124216%_
                                      (pgetq__0 'namespace: _%args124209%_))
                                     (_%ns124218%_
                                      (if _%ns124216%_
                                          (_%string-e124155%_
                                           _%ns124216%_
                                           '"namespace")
                                          '#f)))
                                (_%read-body124154%_
                                 _%inp124188%_
                                 _%prelude124210%_
                                 _%ns124218%_
                                 _%pkg124214%_
                                 _%args124209%_)))))
                      (if (##pair? _%args124190124198%_)
                          (let ((_%hd124195124224%_
                                 (##car _%args124190124198%_))
                                (_%tl124196124226%_
                                 (##cdr _%args124190124198%_)))
                            (let* ((_%prelude124229%_ _%hd124195124224%_)
                                   (_%args124231%_ _%tl124196124226%_))
                              (_%K124194124221%_
                               _%args124231%_
                               _%prelude124229%_)))
                          (_%else124192124206%_)))))
                 (_%read-lang124157%_
                  (lambda (_%inp124162%_)
                    (let* ((_%head124164%_ (read-line _%inp124162%_))
                           (_%$e124166%_
                            (string-index__0 _%head124164%_ '#\space)))
                      (if _%$e124166%_
                          ((lambda (_%ix124169%_)
                             (let ((_%lang124171%_
                                    (substring
                                     _%head124164%_
                                     '0
                                     _%ix124169%_)))
                               (if (equal? _%lang124171%_ '"#lang")
                                   (let* ((_%rest124173%_
                                           (substring
                                            _%head124164%_
                                            (##fx+ _%ix124169%_ '1)
                                            (string-length _%head124164%_)))
                                          (_%args124184%_
                                           (__with-catch
                                            (lambda (_%g124174124176%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _%path124151%_
                                               _%g124174124176%_))
                                            (lambda ()
                                              (call-with-input-string
                                               _%rest124173%_
                                               (lambda (_%g124179124181%_)
                                                 (read-all
                                                  _%g124179124181%_
                                                  read)))))))
                                     (_%read-lang-args124156%_
                                      _%inp124162%_
                                      _%args124184%_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _%path124151%_))))
                           _%$e124166%_)
                          (let ()
                            (gx#raise-syntax-error
                             '#f
                             '"Illegal module syntax"
                             _%path124151%_))))))
                 (_%read-e124158%_
                  (lambda (_%inp124160%_)
                    (if (eq? (peek-char _%inp124160%_) '#\#)
                        (_%read-lang124157%_ _%inp124160%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _%path124151%_)))))
          (gx#call-with-input-source-file _%path124151%_ _%read-e124158%_))))
    (define gx#core-read-module-package
      (lambda (_%path124099%_ _%pre124100%_ _%ns124101%_)
        (letrec ((_%string-e124103%_
                  (lambda (_%e124146%_)
                    (if (symbol? _%e124146%_)
                        (let () (symbol->string _%e124146%_))
                        (if (string? _%e124146%_)
                            (let () _%e124146%_)
                            (let ()
                              (gx#raise-syntax-error
                               '#f
                               '"Malformed package info; unexpected datum"
                               _%e124146%_)))))))
          (let _%lp124105%_ ((_%dir124107%_ (path-directory _%path124099%_))
                             (_%pkg-path124108%_ '()))
            (let ((_%gerbil.pkg124110%_
                   (path-expand '"gerbil.pkg" _%dir124107%_)))
              (if (##file-exists? _%gerbil.pkg124110%_)
                  (let ((_%plist124112%_
                         (gx#core-library-package-plist__% _%dir124107%_ '#t)))
                    (if (null? _%plist124112%_)
                        (let ((_%pkg124115%_
                               (if (not (null? _%pkg-path124108%_))
                                   (string-join _%pkg-path124108%_ '"/")
                                   '#f)))
                          (values _%pre124100%_ _%ns124101%_ _%pkg124115%_))
                        (if (list? _%plist124112%_)
                            (let ()
                              (let* ((_%root124118%_
                                      (pgetq__0 'package: _%plist124112%_))
                                     (_%pkg124122%_
                                      (let ((_%pkg-path124120%_
                                             (if _%root124118%_
                                                 (cons (_%string-e124103%_
                                                        _%root124118%_)
                                                       _%pkg-path124108%_)
                                                 _%pkg-path124108%_)))
                                        (if (not (null? _%pkg-path124120%_))
                                            (string-join
                                             _%pkg-path124120%_
                                             '"/")
                                            '#f)))
                                     (_%ns124129%_
                                      (let ((_%ns124127%_
                                             (let ((_%$e124124%_ _%ns124101%_))
                                               (if _%$e124124%_
                                                   _%$e124124%_
                                                   (pgetq__0
                                                    'namespace:
                                                    _%plist124112%_)))))
                                        (if _%ns124127%_
                                            (_%string-e124103%_ _%ns124127%_)
                                            '#f)))
                                     (_%pre124134%_
                                      (let ((_%$e124131%_ _%pre124100%_))
                                        (if _%$e124131%_
                                            _%$e124131%_
                                            (pgetq__0
                                             'prelude:
                                             _%plist124112%_)))))
                                (values _%pre124134%_
                                        _%ns124129%_
                                        _%pkg124122%_)))
                            (let ()
                              (gx#raise-syntax-error
                               '#f
                               '"Malformed package info; unexpected datum"
                               _%plist124112%_)))))
                  (let ((_%dir*124138%_
                         (path-strip-trailing-directory-separator
                          _%dir124107%_)))
                    (if (or (__string-empty? _%dir*124138%_)
                            (equal? _%dir124107%_ _%dir*124138%_))
                        (values _%pre124100%_ _%ns124101%_ '#f)
                        (let ((_%xpath124143%_
                               (path-strip-directory _%dir*124138%_))
                              (_%xdir124144%_ (path-directory _%dir*124138%_)))
                          (_%lp124105%_
                           _%xdir124144%_
                           (cons _%xpath124143%_ _%pkg-path124108%_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_%path124097%_)
        (path-strip-extension (path-strip-directory _%path124097%_))))
    (define gx#core-module-path->id
      (lambda (_%path124095%_)
        (##string->symbol (gx#core-module-path->namespace _%path124095%_))))
    (define gx#core-resolve-module-path__%
      (lambda (_%stx-path124074%_ _%rel124075%_)
        (let* ((_%path124077%_ (gx#stx-e _%stx-path124074%_))
               (_%path124079%_
                (if (__string-empty? (path-extension _%path124077%_))
                    (##string-append _%path124077%_ '".ss")
                    _%path124077%_)))
          (gx#core-resolve-path__%
           _%path124079%_
           (let ((_%$e124082%_ (gx#stx-source _%stx-path124074%_)))
             (if _%$e124082%_ _%$e124082%_ _%rel124075%_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_%stx-path124088%_)
        (let ((_%rel124090%_ '#f))
          (gx#core-resolve-module-path__% _%stx-path124088%_ _%rel124090%_))))
    (define gx#core-resolve-module-path
      (lambda _g125720_
        (let ((_g125719_ (##length _g125720_)))
          (cond ((##fx= _g125719_ 1)
                 (apply (lambda (_%stx-path124088%_)
                          (gx#core-resolve-module-path__0 _%stx-path124088%_))
                        _g125720_))
                ((##fx= _g125719_ 2)
                 (apply (lambda (_%stx-path124092%_ _%rel124093%_)
                          (gx#core-resolve-module-path__%
                           _%stx-path124092%_
                           _%rel124093%_))
                        _g125720_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g125720_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_%libpath123959%_)
        (let* ((_%spath123961%_ (symbol->string (gx#stx-e _%libpath123959%_)))
               (_%spath123963%_
                (substring
                 _%spath123961%_
                 '1
                 (##string-length _%spath123961%_)))
               (_%ext123965%_ (path-extension _%spath123963%_))
               (_%ssi123967%_
                (if (__string-empty? _%ext123965%_)
                    (##string-append _%spath123963%_ '".ssi")
                    (##string-append
                     (path-strip-extension _%spath123963%_)
                     '".ssi")))
               (_%srcs123971%_
                (if (__string-empty? _%ext123965%_)
                    (##map (lambda (_%ext123969%_)
                             (string-append _%spath123963%_ _%ext123969%_))
                           '(".ss" ".sld" ".scm"))
                    (cons _%spath123963%_ '()))))
          (let _%lp123974%_ ((_%rest123976%_ (load-path)))
            (let* ((_%rest123977123986%_ _%rest123976%_)
                   (_%E123980123990%_
                    (lambda ()
                      (error '"No clause matching"
                             _%rest123977123986%_
                             '([dir . rest])
                             '([]))
                      '#!void)))
              (let ((_%K123982124061%_
                     (lambda (_%rest124001%_ _%dir124002%_)
                       (letrec ((_%resolve124004%_
                                 (lambda (_%ssi124017%_ _%srcs124018%_)
                                   (let ((_%compiled-path124020%_
                                          (path-expand
                                           _%ssi124017%_
                                           _%dir124002%_)))
                                     (if (##file-exists?
                                          _%compiled-path124020%_)
                                         (path-normalize
                                          _%compiled-path124020%_)
                                         (let _%lpr124022%_ ((_%rest-src124024%_
                                                              _%srcs124018%_))
                                           (let* ((_%rest-src124025124033%_
                                                   _%rest-src124024%_)
                                                  (_%else124027124041%_
                                                   (lambda ()
                                                     (_%lp123974%_
                                                      _%rest124001%_)))
                                                  (_%K124029124049%_
                                                   (lambda (_%rest-src124044%_
                                                            _%src124045%_)
                                                     (let ((_%src-path124047%_
                                                            (path-expand
                                                             _%src124045%_
                                                             _%dir124002%_)))
                                                       (if (##file-exists?
                                                            _%src-path124047%_)
                                                           (path-normalize
                                                            _%src-path124047%_)
                                                           (_%lpr124022%_
                                                            _%rest-src124044%_))))))
                                             (if (##pair? _%rest-src124025124033%_)
                                                 (let ((_%hd124030124052%_
                                                        (##car _%rest-src124025124033%_))
                                                       (_%tl124031124054%_
                                                        (##cdr _%rest-src124025124033%_)))
                                                   (let* ((_%src124057%_
                                                           _%hd124030124052%_)
                                                          (_%rest-src124059%_
                                                           _%tl124031124054%_))
                                                     (_%K124029124049%_
                                                      _%rest-src124059%_
                                                      _%src124057%_)))
                                                 (_%else124027124041%_)))))))))
                         (let ((_%$e124006%_
                                (gx#core-library-package-path-prefix
                                 _%dir124002%_)))
                           (if _%$e124006%_
                               ((lambda (_%prefix124009%_)
                                  (if (string-prefix?
                                       _%prefix124009%_
                                       _%spath123963%_)
                                      (let ((_%ssi124013%_
                                             (substring
                                              _%ssi123967%_
                                              (string-length _%prefix124009%_)
                                              (##string-length _%ssi123967%_)))
                                            (_%srcs124014%_
                                             (##map (lambda (_%src124011%_)
                                                      (substring
                                                       _%src124011%_
                                                       (string-length
                                                        _%prefix124009%_)
                                                       (string-length
                                                        _%src124011%_)))
                                                    _%srcs123971%_)))
                                        (_%resolve124004%_
                                         _%ssi124013%_
                                         _%srcs124014%_))
                                      (_%lp123974%_ _%rest124001%_)))
                                _%$e124006%_)
                               (let ()
                                 (_%resolve124004%_
                                  _%ssi123967%_
                                  _%srcs123971%_)))))))
                    (_%K123981123995%_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"cannot find library module"
                        _%libpath123959%_))))
                (let ((_%try-match123979123998%_
                       (lambda ()
                         (if (##null? _%rest123977123986%_)
                             (_%K123981123995%_)
                             (_%E123980123990%_)))))
                  (if (##pair? _%rest123977123986%_)
                      (let ((_%tl123984124066%_ (##cdr _%rest123977123986%_))
                            (_%hd123983124064%_ (##car _%rest123977123986%_)))
                        (let ((_%dir124069%_ _%hd123983124064%_)
                              (_%rest124071%_ _%tl123984124066%_))
                          (_%K123982124061%_ _%rest124071%_ _%dir124069%_)))
                      (_%try-match123979123998%_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_%modpath123927%_)
        (letrec ((_%resolve123929%_
                  (lambda (_%path123950%_ _%base123951%_)
                    (let ((_%$e123953%_
                           (string-rindex__0 _%base123951%_ '#\/)))
                      (if _%$e123953%_
                          ((lambda (_%idx123956%_)
                             (gx#core-resolve-library-module-path
                              (##string->symbol
                               (string-append
                                '":"
                                (substring _%base123951%_ '0 _%idx123956%_)
                                '"/"
                                _%path123950%_))))
                           _%$e123953%_)
                          (let ()
                            (gx#core-resolve-library-module-path
                             (##string->symbol
                              (string-append '":" _%path123950%_)))))))))
          (let ((_%spath123931%_ (symbol->string (gx#stx-e _%modpath123927%_)))
                (_%mod123932%_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _%mod123932%_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"cannot resolve relative module path; not in module context"
                 _%modpath123927%_))
            (let ((_%mpath123934%_
                   (symbol->string
                    (##structure-ref
                     _%mod123932%_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _%lp123936%_ ((_%spath123938%_ _%spath123931%_)
                                 (_%mpath123939%_ _%mpath123934%_))
                (if (string-prefix? '"../" _%spath123938%_)
                    (let ((_%$e123942%_
                           (string-rindex__0 _%mpath123939%_ '#\/)))
                      (if _%$e123942%_
                          ((lambda (_%idx123945%_)
                             (_%lp123936%_
                              (substring
                               _%spath123938%_
                               '3
                               (string-length _%spath123938%_))
                              (substring _%mpath123939%_ '0 _%idx123945%_)))
                           _%$e123942%_)
                          (let ()
                            (gx#raise-syntax-error
                             '#f
                             '"cannot resolve relative module path; illegal traversal"
                             _%modpath123927%_))))
                    (if (string-prefix? '"./" _%spath123938%_)
                        (let ()
                          (_%lp123936%_
                           (substring
                            _%spath123938%_
                            '2
                            (string-length _%spath123938%_))
                           _%mpath123939%_))
                        (let ()
                          (_%resolve123929%_
                           _%spath123938%_
                           _%mpath123939%_))))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_%dir123919%_)
        (let ((_%$e123921%_
               (pgetq__0
                'package:
                (gx#core-library-package-plist__0 _%dir123919%_))))
          (if _%$e123921%_
              ((lambda (_%pkg123924%_)
                 (##string-append (symbol->string _%pkg123924%_) '"/"))
               _%$e123921%_)
              (let () '#f)))))
    (define gx#core-library-package-plist__%
      (lambda (_%dir123889%_ _%exists?123890%_)
        (let ((_%$e123892%_ (hash-get gx#__module-pkg-cache _%dir123889%_)))
          (if _%$e123892%_
              (values _%$e123892%_)
              (let ()
                (let* ((_%gerbil.pkg123896%_
                        (path-expand '"gerbil.pkg" _%dir123889%_))
                       (_%plist123906%_
                        (if (or _%exists?123890%_
                                (##file-exists? _%gerbil.pkg123896%_))
                            (let ((_%e123901%_
                                   (gx#call-with-input-source-file
                                    _%gerbil.pkg123896%_
                                    read)))
                              (if (eof-object? _%e123901%_)
                                  (let () '())
                                  (if (list? _%e123901%_)
                                      (let () _%e123901%_)
                                      (let ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Malformed package info; unexpected datum"
                                         _%gerbil.pkg123896%_
                                         _%e123901%_)))))
                            '())))
                  (hash-put!
                   gx#__module-pkg-cache
                   _%dir123889%_
                   _%plist123906%_)
                  _%plist123906%_))))))
    (define gx#core-library-package-plist__0
      (lambda (_%dir123912%_)
        (let ((_%exists?123914%_ '#f))
          (gx#core-library-package-plist__% _%dir123912%_ _%exists?123914%_))))
    (define gx#core-library-package-plist
      (lambda _g125722_
        (let ((_g125721_ (##length _g125722_)))
          (cond ((##fx= _g125721_ 1)
                 (apply (lambda (_%dir123912%_)
                          (gx#core-library-package-plist__0 _%dir123912%_))
                        _g125722_))
                ((##fx= _g125721_ 2)
                 (apply (lambda (_%dir123916%_ _%exists?123917%_)
                          (gx#core-library-package-plist__%
                           _%dir123916%_
                           _%exists?123917%_))
                        _g125722_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g125722_))))))
    (define gx#core-library-module-path?
      (lambda (_%stx123886%_)
        (gx#core-special-module-path? _%stx123886%_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_%stx123884%_)
        (gx#core-special-module-path? _%stx123884%_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_%stx123879%_ _%char123880%_)
        (if (gx#identifier? _%stx123879%_)
            (if (interned-symbol? (gx#stx-e _%stx123879%_))
                (let ((_%str123882%_
                       (symbol->string (gx#stx-e _%stx123879%_))))
                  (if (##fx> (##string-length _%str123882%_) '1)
                      (eq? (string-ref _%str123882%_ '0) _%char123880%_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_%stx123873%_)
        (gx#core-bound-identifier?__%
         _%stx123873%_
         (lambda (_%g123874123876%_)
           (gx#expander-binding?__% _%g123874123876%_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_%stx123867%_)
        (gx#core-bound-identifier?__%
         _%stx123867%_
         (lambda (_%g123868123870%_)
           (gx#expander-binding?__% _%g123868123870%_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_%stx123854%_)
        (letrec ((_%module-prelude?123856%_
                  (lambda (_%e123862%_)
                    (let ((_%$e123864%_
                           (##structure-instance-of?
                            _%e123862%_
                            'gx#module-context::t)))
                      (if _%$e123864%_
                          _%$e123864%_
                          (##structure-instance-of?
                           _%e123862%_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _%stx123854%_
           (lambda (_%g123857123859%_)
             (gx#expander-binding?__%
              _%g123857123859%_
              _%module-prelude?123856%_))))))
    (define gx#core-bind-import!__%
      (lambda (_%in123784%_ _%ctx123785%_ _%force-weak?123786%_)
        (let* ((_%in123787123796%_ _%in123784%_)
               (_%E123789123800%_
                (lambda ()
                  (error '"No clause matching"
                         _%in123787123796%_
                         '((module-import source key phi weak?)))
                  '#!void))
               (_%K123790123813%_
                (lambda (_%weak?123803%_
                         _%phi123804%_
                         _%key123805%_
                         _%source123806%_)
                  (gx#core-bind!__%
                   _%key123805%_
                   (let ((_%e123808%_
                          (gx#core-resolve-module-export _%source123806%_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref _%e123808%_ '1 '#f '#f)
                      _%key123805%_
                      _%phi123804%_
                      _%e123808%_
                      (##unchecked-structure-ref _%source123806%_ '1 '#f '#f)
                      (let ((_%$e123810%_ _%force-weak?123786%_))
                        (if _%$e123810%_ _%$e123810%_ _%weak?123803%_))))
                   gx#core-context-rebind?
                   _%phi123804%_
                   _%ctx123785%_))))
          (if (##structure-direct-instance-of?
               _%in123787123796%_
               'gx#module-import::t)
              (let* ((_%e123791123816%_
                      (##unchecked-structure-ref
                       _%in123787123796%_
                       '1
                       '#f
                       '#f))
                     (_%source123819%_ _%e123791123816%_)
                     (_%e123792123821%_
                      (##unchecked-structure-ref
                       _%in123787123796%_
                       '2
                       '#f
                       '#f))
                     (_%key123824%_ _%e123792123821%_)
                     (_%e123793123826%_
                      (##unchecked-structure-ref
                       _%in123787123796%_
                       '3
                       '#f
                       '#f))
                     (_%phi123829%_ _%e123793123826%_)
                     (_%e123794123831%_
                      (##unchecked-structure-ref
                       _%in123787123796%_
                       '4
                       '#f
                       '#f))
                     (_%weak?123834%_ _%e123794123831%_))
                (_%K123790123813%_
                 _%weak?123834%_
                 _%phi123829%_
                 _%key123824%_
                 _%source123819%_))
              (_%E123789123800%_)))))
    (define gx#core-bind-import!__0
      (lambda (_%in123839%_)
        (let* ((_%ctx123841%_ (gx#current-expander-context))
               (_%force-weak?123843%_ '#f))
          (gx#core-bind-import!__%
           _%in123839%_
           _%ctx123841%_
           _%force-weak?123843%_))))
    (define gx#core-bind-import!__1
      (lambda (_%in123845%_ _%ctx123846%_)
        (let ((_%force-weak?123848%_ '#f))
          (gx#core-bind-import!__%
           _%in123845%_
           _%ctx123846%_
           _%force-weak?123848%_))))
    (define gx#core-bind-import!
      (lambda _g125724_
        (let ((_g125723_ (##length _g125724_)))
          (cond ((##fx= _g125723_ 1)
                 (apply (lambda (_%in123839%_)
                          (gx#core-bind-import!__0 _%in123839%_))
                        _g125724_))
                ((##fx= _g125723_ 2)
                 (apply (lambda (_%in123845%_ _%ctx123846%_)
                          (gx#core-bind-import!__1 _%in123845%_ _%ctx123846%_))
                        _g125724_))
                ((##fx= _g125723_ 3)
                 (apply (lambda (_%in123850%_
                                 _%ctx123851%_
                                 _%force-weak?123852%_)
                          (gx#core-bind-import!__%
                           _%in123850%_
                           _%ctx123851%_
                           _%force-weak?123852%_))
                        _g125724_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g125724_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_%in123770%_ _%ctx123771%_)
        (gx#core-bind-import!__% _%in123770%_ _%ctx123771%_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_%in123776%_)
        (let ((_%ctx123778%_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _%in123776%_ _%ctx123778%_))))
    (define gx#core-bind-weak-import!
      (lambda _g125726_
        (let ((_g125725_ (##length _g125726_)))
          (cond ((##fx= _g125725_ 1)
                 (apply (lambda (_%in123776%_)
                          (gx#core-bind-weak-import!__0 _%in123776%_))
                        _g125726_))
                ((##fx= _g125725_ 2)
                 (apply (lambda (_%in123780%_ _%ctx123781%_)
                          (gx#core-bind-weak-import!__%
                           _%in123780%_
                           _%ctx123781%_))
                        _g125726_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g125726_))))))
    (define gx#core-resolve-module-export
      (lambda (_%out123661%_)
        (letrec ((_%subst123663%_
                  (lambda (_%key123709%_)
                    (let* ((_%key123710123718%_ _%key123709%_)
                           (_%else123712123726%_ (lambda () _%key123709%_))
                           (_%K123714123757%_
                            (lambda (_%mark123729%_ _%id123730%_)
                              (let* ((_%mark123731123737%_ _%mark123729%_)
                                     (_%E123733123741%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark123731123737%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K123734123749%_
                                      (lambda (_%subst123744%_)
                                        (let ((_%$e123746%_
                                               (if _%subst123744%_
                                                   (hash-get
                                                    _%subst123744%_
                                                    _%id123730%_)
                                                   '#f)))
                                          (if _%$e123746%_
                                              _%$e123746%_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _%key123709%_))))))
                                (if (##structure-instance-of?
                                     _%mark123731123737%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e123735123752%_
                                            (##unchecked-structure-ref
                                             _%mark123731123737%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst123755%_ _%e123735123752%_))
                                      (_%K123734123749%_ _%subst123755%_))
                                    (_%E123733123741%_))))))
                      (if (##pair? _%key123710123718%_)
                          (let ((_%hd123715123760%_
                                 (##car _%key123710123718%_))
                                (_%tl123716123762%_
                                 (##cdr _%key123710123718%_)))
                            (let* ((_%id123765%_ _%hd123715123760%_)
                                   (_%mark123767%_ _%tl123716123762%_))
                              (_%K123714123757%_ _%mark123767%_ _%id123765%_)))
                          (_%else123712123726%_))))))
          (let* ((_%out123664123674%_ _%out123661%_)
                 (_%E123666123678%_
                  (lambda ()
                    (error '"No clause matching"
                           _%out123664123674%_
                           '((module-export ctx key phi _ _)))
                    '#!void))
                 (_%K123667123685%_
                  (lambda (_%phi123681%_ _%key123682%_ _%ctx123683%_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _%ctx123683%_ _%phi123681%_)
                     (_%subst123663%_ _%key123682%_)))))
            (if (##structure-direct-instance-of?
                 _%out123664123674%_
                 'gx#module-export::t)
                (let* ((_%e123668123688%_
                        (##unchecked-structure-ref
                         _%out123664123674%_
                         '1
                         '#f
                         '#f))
                       (_%ctx123691%_ _%e123668123688%_)
                       (_%e123669123693%_
                        (##unchecked-structure-ref
                         _%out123664123674%_
                         '2
                         '#f
                         '#f))
                       (_%key123696%_ _%e123669123693%_)
                       (_%e123670123698%_
                        (##unchecked-structure-ref
                         _%out123664123674%_
                         '3
                         '#f
                         '#f))
                       (_%phi123701%_ _%e123670123698%_)
                       (_%e123671123703%_
                        (##unchecked-structure-ref
                         _%out123664123674%_
                         '4
                         '#f
                         '#f))
                       (_%e123672123706%_
                        (##unchecked-structure-ref
                         _%out123664123674%_
                         '5
                         '#f
                         '#f)))
                  (_%K123667123685%_
                   _%phi123701%_
                   _%key123696%_
                   _%ctx123691%_))
                (_%E123666123678%_))))))
    (define gx#core-module-export->import__%
      (lambda (_%out123586%_ _%rename123587%_ _%dphi123588%_)
        (let* ((_%out123589123599%_ _%out123586%_)
               (_%E123591123603%_
                (lambda ()
                  (error '"No clause matching"
                         _%out123589123599%_
                         '((module-export ctx key phi name weak?)))
                  '#!void))
               (_%K123592123615%_
                (lambda (_%weak?123606%_
                         _%name123607%_
                         _%phi123608%_
                         _%key123609%_
                         _%ctx123610%_)
                  (##structure
                   gx#module-import::t
                   _%out123586%_
                   (let ((_%$e123612%_ _%rename123587%_))
                     (if _%$e123612%_ _%$e123612%_ _%name123607%_))
                   (fx+ _%phi123608%_ _%dphi123588%_)
                   _%weak?123606%_))))
          (if (##structure-direct-instance-of?
               _%out123589123599%_
               'gx#module-export::t)
              (let* ((_%e123593123618%_
                      (##unchecked-structure-ref
                       _%out123589123599%_
                       '1
                       '#f
                       '#f))
                     (_%ctx123621%_ _%e123593123618%_)
                     (_%e123594123623%_
                      (##unchecked-structure-ref
                       _%out123589123599%_
                       '2
                       '#f
                       '#f))
                     (_%key123626%_ _%e123594123623%_)
                     (_%e123595123628%_
                      (##unchecked-structure-ref
                       _%out123589123599%_
                       '3
                       '#f
                       '#f))
                     (_%phi123631%_ _%e123595123628%_)
                     (_%e123596123633%_
                      (##unchecked-structure-ref
                       _%out123589123599%_
                       '4
                       '#f
                       '#f))
                     (_%name123636%_ _%e123596123633%_)
                     (_%e123597123638%_
                      (##unchecked-structure-ref
                       _%out123589123599%_
                       '5
                       '#f
                       '#f))
                     (_%weak?123641%_ _%e123597123638%_))
                (_%K123592123615%_
                 _%weak?123641%_
                 _%name123636%_
                 _%phi123631%_
                 _%key123626%_
                 _%ctx123621%_))
              (_%E123591123603%_)))))
    (define gx#core-module-export->import__0
      (lambda (_%out123646%_)
        (let* ((_%rename123648%_ '#f) (_%dphi123650%_ '0))
          (gx#core-module-export->import__%
           _%out123646%_
           _%rename123648%_
           _%dphi123650%_))))
    (define gx#core-module-export->import__1
      (lambda (_%out123652%_ _%rename123653%_)
        (let ((_%dphi123655%_ '0))
          (gx#core-module-export->import__%
           _%out123652%_
           _%rename123653%_
           _%dphi123655%_))))
    (define gx#core-module-export->import
      (lambda _g125728_
        (let ((_g125727_ (##length _g125728_)))
          (cond ((##fx= _g125727_ 1)
                 (apply (lambda (_%out123646%_)
                          (gx#core-module-export->import__0 _%out123646%_))
                        _g125728_))
                ((##fx= _g125727_ 2)
                 (apply (lambda (_%out123652%_ _%rename123653%_)
                          (gx#core-module-export->import__1
                           _%out123652%_
                           _%rename123653%_))
                        _g125728_))
                ((##fx= _g125727_ 3)
                 (apply (lambda (_%out123657%_ _%rename123658%_ _%dphi123659%_)
                          (gx#core-module-export->import__%
                           _%out123657%_
                           _%rename123658%_
                           _%dphi123659%_))
                        _g125728_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g125728_))))))
    (define gx#core-expand-module%
      (lambda (_%stx123485%_)
        (letrec ((_%make-context123487%_
                  (lambda (_%id123564%_)
                    (let* ((_%super123566%_ (gx#current-expander-context))
                           (_%bind-id123568%_ (gx#stx-e _%id123564%_))
                           (_%mod-id123570%_
                            (if (##structure-instance-of?
                                 _%super123566%_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##structure-ref
                                  _%super123566%_
                                  '1
                                  gx#expander-context::t
                                  '#f)
                                 '"~"
                                 _%bind-id123568%_)
                                _%bind-id123568%_))
                           (_%ns123572%_ (symbol->string _%mod-id123570%_))
                           (_%path123582%_
                            (if (##structure-instance-of?
                                 _%super123566%_
                                 'gx#module-context::t)
                                (let ((_%path123574%_
                                       (##unchecked-structure-ref
                                        _%super123566%_
                                        '7
                                        '#f
                                        '#f)))
                                  (if (or (pair? _%path123574%_)
                                          (null? _%path123574%_))
                                      (let ()
                                        (cons _%bind-id123568%_
                                              _%path123574%_))
                                      (if (not _%path123574%_)
                                          (let () _%bind-id123568%_)
                                          (let ()
                                            (cons _%bind-id123568%_
                                                  (cons _%path123574%_
                                                        '()))))))
                                _%bind-id123568%_))
                           (__obj125704
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
                       __obj125704
                       _%mod-id123570%_
                       _%super123566%_
                       _%ns123572%_
                       _%path123582%_)
                      __obj125704)))
                 (_%valid-module-id?123488%_
                  (lambda (_%id123539%_)
                    (let* ((_%str123541%_ (symbol->string _%id123539%_))
                           (_%len123543%_ (##string-length _%str123541%_)))
                      (if (##fx>= _%len123543%_ '1)
                          (let _%loop123546%_ ((_%index123548%_
                                                (##fx- (##string-length
                                                        _%str123541%_)
                                                       '1)))
                            (if (##fx>= _%index123548%_ '0)
                                (let ((_%c123550%_
                                       (string-ref
                                        _%str123541%_
                                        _%index123548%_)))
                                  (if (or (and (##char>=? _%c123550%_ '#\a)
                                               (##char<=? _%c123550%_ '#\z))
                                          (and (##char>=? _%c123550%_ '#\A)
                                               (##char<=? _%c123550%_ '#\Z))
                                          (and (##char>=? _%c123550%_ '#\0)
                                               (##char<=? _%c123550%_ '#\9))
                                          (##char=? _%c123550%_ '#\_)
                                          (##char=? _%c123550%_ '#\-))
                                      (_%loop123546%_
                                       (##fx- _%index123548%_ '1))
                                      '#f))
                                '#t))
                          '#f)))))
          (let* ((_%e123489123499%_ _%stx123485%_)
                 (_%E123491123503%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e123489123499%_)))
                 (_%E123490123535%_
                  (lambda ()
                    (if (gx#stx-pair? _%e123489123499%_)
                        (let ((_%e123492123507%_
                               (gx#syntax-e _%e123489123499%_)))
                          (let ((_%hd123493123510%_ (##car _%e123492123507%_))
                                (_%tl123494123512%_ (##cdr _%e123492123507%_)))
                            (if (gx#stx-pair? _%tl123494123512%_)
                                (let ((_%e123495123515%_
                                       (gx#syntax-e _%tl123494123512%_)))
                                  (let ((_%hd123496123518%_
                                         (##car _%e123495123515%_))
                                        (_%tl123497123520%_
                                         (##cdr _%e123495123515%_)))
                                    (let* ((_%id123523%_ _%hd123496123518%_)
                                           (_%body123525%_ _%tl123497123520%_))
                                      (if (and (gx#identifier? _%id123523%_)
                                               (gx#stx-list? _%body123525%_))
                                          (if (_%valid-module-id?123488%_
                                               (gx#stx-e
                                                (gx#datum->syntax__0 '#f 'id)))
                                              (let* ((_%ctx123527%_
                                                      (_%make-context123487%_
                                                       _%id123523%_))
                                                     (_%body123529%_
                                                      (gx#core-expand-module-begin
                                                       _%body123525%_
                                                       _%ctx123527%_))
                                                     (_%body123531%_
                                                      (gx#core-quote-syntax__1
                                                       (gx#core-cons
                                                        '%#begin
                                                        _%body123529%_)
                                                       (gx#stx-source
                                                        _%stx123485%_))))
                                                (##unchecked-structure-set!
                                                 _%ctx123527%_
                                                 (__make-promise
                                                  (lambda ()
                                                    (gx#eval-syntax*
                                                     _%body123531%_)))
                                                 '10
                                                 '#f
                                                 '#f)
                                                (##unchecked-structure-set!
                                                 _%ctx123527%_
                                                 _%body123531%_
                                                 '11
                                                 '#f
                                                 '#f)
                                                (gx#core-bind-syntax!__0
                                                 _%id123523%_
                                                 _%ctx123527%_)
                                                (gx#core-quote-syntax__1
                                                 (gx#core-list
                                                  '%#module
                                                  (gx#core-quote-syntax__0
                                                   _%id123523%_)
                                                  _%body123531%_)
                                                 (gx#stx-source
                                                  _%stx123485%_)))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"invalid module id; allowed characters are A-Z,a-z,0-9,_,-"
                                               _%stx123485%_
                                               (gx#datum->syntax__0 '#f 'id)))
                                          (_%E123491123503%_)))))
                                (_%E123491123503%_))))
                        (_%E123491123503%_)))))
            (_%E123490123535%_)))))
    (define gx#core-expand-module-begin
      (lambda (_%body123451%_ _%ctx123452%_)
        (__call-with-parameters
         (lambda ()
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_%stx123455%_
                   (gx#core-expand-head (cons '%%begin-module _%body123451%_)))
                  (_%e123456123463%_ _%stx123455%_)
                  (_%E123458123467%_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _%stx123455%_)))
                  (_%E123457123481%_
                   (lambda ()
                     (if (gx#stx-pair? _%e123456123463%_)
                         (let ((_%e123459123471%_
                                (gx#syntax-e _%e123456123463%_)))
                           (let ((_%hd123460123474%_ (##car _%e123459123471%_))
                                 (_%tl123461123476%_
                                  (##cdr _%e123459123471%_)))
                             (if (and (gx#identifier? _%hd123460123474%_)
                                      (gx#core-identifier=?
                                       _%hd123460123474%_
                                       '%#begin-module))
                                 (let ((_%body123479%_ _%tl123461123476%_))
                                   (if '#t
                                       (if (gx#sealed-syntax? _%stx123455%_)
                                           _%body123479%_
                                           (gx#core-expand-module-body
                                            _%body123479%_))
                                       (_%E123458123467%_)))
                                 (_%E123458123467%_))))
                         (_%E123458123467%_)))))
             (_%E123457123481%_)))
         gx#current-expander-context
         _%ctx123452%_
         gx#current-expander-phi
         '0)))
    (define gx#core-expand-module-body
      (lambda (_%body123247%_)
        (letrec ((_%expand-special123249%_
                  (lambda (_%hd123378%_ _%K123379%_ _%rest123380%_ _%r123381%_)
                    (let* ((_%e123382123399%_ _%hd123378%_)
                           (_%E123394123403%_
                            (lambda ()
                              (_%K123379%_
                               _%rest123380%_
                               (cons (gx#core-expand-top _%hd123378%_)
                                     _%r123381%_))))
                           (_%E123384123415%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123382123399%_)
                                  (let ((_%e123395123407%_
                                         (gx#syntax-e _%e123382123399%_)))
                                    (let ((_%hd123396123410%_
                                           (##car _%e123395123407%_))
                                          (_%tl123397123412%_
                                           (##cdr _%e123395123407%_)))
                                      (if (and (gx#identifier?
                                                _%hd123396123410%_)
                                               (gx#core-identifier=?
                                                _%hd123396123410%_
                                                '%#export))
                                          (if '#t
                                              (_%K123379%_
                                               _%rest123380%_
                                               (cons _%hd123378%_ _%r123381%_))
                                              (_%E123394123403%_))
                                          (_%E123394123403%_))))
                                  (_%E123394123403%_))))
                           (_%E123383123447%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123382123399%_)
                                  (let ((_%e123385123419%_
                                         (gx#syntax-e _%e123382123399%_)))
                                    (let ((_%hd123386123422%_
                                           (##car _%e123385123419%_))
                                          (_%tl123387123424%_
                                           (##cdr _%e123385123419%_)))
                                      (if (and (gx#identifier?
                                                _%hd123386123422%_)
                                               (gx#core-identifier=?
                                                _%hd123386123422%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl123387123424%_)
                                              (let ((_%e123388123427%_
                                                     (gx#syntax-e
                                                      _%tl123387123424%_)))
                                                (let ((_%hd123389123430%_
                                                       (##car _%e123388123427%_))
                                                      (_%tl123390123432%_
                                                       (##cdr _%e123388123427%_)))
                                                  (let ((_%hd-bind123435%_
                                                         _%hd123389123430%_))
                                                    (if (gx#stx-pair?
                                                         _%tl123390123432%_)
                                                        (let ((_%e123391123437%_
                                                               (gx#syntax-e
                                                                _%tl123390123432%_)))
                                                          (let ((_%hd123392123440%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e123391123437%_))
                        (_%tl123393123442%_ (##cdr _%e123391123437%_)))
                    (let ((_%expr123445%_ _%hd123392123440%_))
                      (if (gx#stx-null? _%tl123393123442%_)
                          (if (gx#core-bind-values? _%hd-bind123435%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind123435%_)
                                (_%K123379%_
                                 _%rest123380%_
                                 (cons _%hd123378%_ _%r123381%_)))
                              (_%E123384123415%_))
                          (_%E123384123415%_)))))
                (_%E123384123415%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E123384123415%_))
                                          (_%E123384123415%_))))
                                  (_%E123384123415%_)))))
                      (_%E123383123447%_))))
                 (_%expand-body123250%_
                  (lambda (_%rbody123252%_)
                    (let _%lp123254%_ ((_%rest123256%_ _%rbody123252%_)
                                       (_%body123257%_ '()))
                      (let* ((_%rest123258123266%_ _%rest123256%_)
                             (_%else123260123274%_ (lambda () _%body123257%_))
                             (_%K123262123366%_
                              (lambda (_%rest123277%_ _%hd123278%_)
                                (let* ((_%e123279123300%_ _%hd123278%_)
                                       (_%E123295123304%_
                                        (lambda ()
                                          (_%lp123254%_
                                           _%rest123277%_
                                           (cons (gx#core-expand-expression
                                                  _%hd123278%_)
                                                 _%body123257%_))))
                                       (_%E123291123318%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e123279123300%_)
                                              (let ((_%e123296123308%_
                                                     (gx#syntax-e
                                                      _%e123279123300%_)))
                                                (let ((_%hd123297123311%_
                                                       (##car _%e123296123308%_))
                                                      (_%tl123298123313%_
                                                       (##cdr _%e123296123308%_)))
                                                  (let ((_%form123316%_
                                                         _%hd123297123311%_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _%form123316%_
                                                         gx#special-form-binding?)
                                                        (_%lp123254%_
                                                         _%rest123277%_
                                                         (cons _%hd123278%_
                                                               _%body123257%_))
                                                        (_%E123295123304%_)))))
                                              (_%E123295123304%_))))
                                       (_%E123281123330%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e123279123300%_)
                                              (let ((_%e123292123322%_
                                                     (gx#syntax-e
                                                      _%e123279123300%_)))
                                                (let ((_%hd123293123325%_
                                                       (##car _%e123292123322%_))
                                                      (_%tl123294123327%_
                                                       (##cdr _%e123292123322%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd123293123325%_)
                                                           (gx#core-identifier=?
                                                            _%hd123293123325%_
                                                            '%#export))
                                                      (if '#t
                                                          (_%lp123254%_
                                                           _%rest123277%_
                                                           (cons (gx#core-expand-export%__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%hd123278%_)
                         _%body123257%_))
                  (_%E123291123318%_))
              (_%E123291123318%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E123291123318%_))))
                                       (_%E123280123362%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e123279123300%_)
                                              (let ((_%e123282123334%_
                                                     (gx#syntax-e
                                                      _%e123279123300%_)))
                                                (let ((_%hd123283123337%_
                                                       (##car _%e123282123334%_))
                                                      (_%tl123284123339%_
                                                       (##cdr _%e123282123334%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd123283123337%_)
                                                           (gx#core-identifier=?
                                                            _%hd123283123337%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl123284123339%_)
                                                          (let ((_%e123285123342%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl123284123339%_)))
                    (let ((_%hd123286123345%_ (##car _%e123285123342%_))
                          (_%tl123287123347%_ (##cdr _%e123285123342%_)))
                      (let ((_%hd-bind123350%_ _%hd123286123345%_))
                        (if (gx#stx-pair? _%tl123287123347%_)
                            (let ((_%e123288123352%_
                                   (gx#syntax-e _%tl123287123347%_)))
                              (let ((_%hd123289123355%_
                                     (##car _%e123288123352%_))
                                    (_%tl123290123357%_
                                     (##cdr _%e123288123352%_)))
                                (let ((_%expr123360%_ _%hd123289123355%_))
                                  (if (gx#stx-null? _%tl123290123357%_)
                                      (if '#t
                                          (_%lp123254%_
                                           _%rest123277%_
                                           (cons (gx#core-quote-syntax__1
                                                  (gx#core-list
                                                   '%#define-values
                                                   (gx#core-quote-bind-values
                                                    _%hd-bind123350%_)
                                                   (gx#core-expand-expression
                                                    _%expr123360%_))
                                                  (gx#stx-source _%hd123278%_))
                                                 _%body123257%_))
                                          (_%E123281123330%_))
                                      (_%E123281123330%_)))))
                            (_%E123281123330%_)))))
                  (_%E123281123330%_))
              (_%E123281123330%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E123281123330%_)))))
                                  (_%E123280123362%_)))))
                        (if (##pair? _%rest123258123266%_)
                            (let ((_%hd123263123369%_
                                   (##car _%rest123258123266%_))
                                  (_%tl123264123371%_
                                   (##cdr _%rest123258123266%_)))
                              (let* ((_%hd123374%_ _%hd123263123369%_)
                                     (_%rest123376%_ _%tl123264123371%_))
                                (_%K123262123366%_
                                 _%rest123376%_
                                 _%hd123374%_)))
                            (_%else123260123274%_)))))))
          (_%expand-body123250%_
           (gx#core-expand-block__%
            (cons '%#begin-module _%body123247%_)
            _%expand-special123249%_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_%stx123088%_
               _%expanded?123089%_
               _%method123090%_
               _%current-phi123091%_
               _%expand1123092%_)
        (letrec ((_%K123094%_
                  (lambda (_%rest123214%_ _%r123215%_)
                    (let* ((_%e123216123223%_ _%rest123214%_)
                           (_%E123218123227%_ (lambda () _%r123215%_))
                           (_%E123217123243%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123216123223%_)
                                  (let ((_%e123219123231%_
                                         (gx#syntax-e _%e123216123223%_)))
                                    (let ((_%hd123220123234%_
                                           (##car _%e123219123231%_))
                                          (_%tl123221123236%_
                                           (##cdr _%e123219123231%_)))
                                      (let* ((_%hd123239%_ _%hd123220123234%_)
                                             (_%rest123241%_
                                              _%tl123221123236%_))
                                        (if '#t
                                            (_%step123095%_
                                             _%hd123239%_
                                             _%rest123241%_
                                             _%r123215%_)
                                            (_%E123218123227%_)))))
                                  (_%E123218123227%_)))))
                      (_%E123217123243%_))))
                 (_%step123095%_
                  (lambda (_%hd123128%_ _%rest123129%_ _%r123130%_)
                    (let* ((_%e123131123149%_ _%hd123128%_)
                           (_%E123144123153%_
                            (lambda ()
                              (if (_%expanded?123089%_ (gx#stx-e _%hd123128%_))
                                  (_%K123094%_
                                   _%rest123129%_
                                   (cons (gx#stx-e _%hd123128%_) _%r123130%_))
                                  (_%expand1123092%_
                                   _%hd123128%_
                                   _%K123094%_
                                   _%rest123129%_
                                   _%r123130%_))))
                           (_%E123140123169%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123131123149%_)
                                  (let ((_%e123145123157%_
                                         (gx#syntax-e _%e123131123149%_)))
                                    (let ((_%hd123146123160%_
                                           (##car _%e123145123157%_))
                                          (_%tl123147123162%_
                                           (##cdr _%e123145123157%_)))
                                      (let* ((_%macro123165%_
                                              _%hd123146123160%_)
                                             (_%body123167%_
                                              _%tl123147123162%_))
                                        (if (gx#core-bound-identifier?__%
                                             _%macro123165%_
                                             gx#syntax-binding?)
                                            (_%K123094%_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _%macro123165%_)
                                                    _%hd123128%_
                                                    _%method123090%_)
                                                   _%rest123129%_)
                                             _%r123130%_)
                                            (_%E123144123153%_)))))
                                  (_%E123144123153%_))))
                           (_%E123133123183%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123131123149%_)
                                  (let ((_%e123141123173%_
                                         (gx#syntax-e _%e123131123149%_)))
                                    (let ((_%hd123142123176%_
                                           (##car _%e123141123173%_))
                                          (_%tl123143123178%_
                                           (##cdr _%e123141123173%_)))
                                      (if (eq? (gx#stx-e _%hd123142123176%_)
                                               'begin:)
                                          (let ((_%body123181%_
                                                 _%tl123143123178%_))
                                            (if '#t
                                                (_%K123094%_
                                                 (gx#stx-foldr
                                                  cons
                                                  _%rest123129%_
                                                  _%body123181%_)
                                                 _%r123130%_)
                                                (_%E123140123169%_)))
                                          (_%E123140123169%_))))
                                  (_%E123140123169%_))))
                           (_%E123132123210%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123131123149%_)
                                  (let ((_%e123134123187%_
                                         (gx#syntax-e _%e123131123149%_)))
                                    (let ((_%hd123135123190%_
                                           (##car _%e123134123187%_))
                                          (_%tl123136123192%_
                                           (##cdr _%e123134123187%_)))
                                      (if (eq? (gx#stx-e _%hd123135123190%_)
                                               'phi:)
                                          (if (gx#stx-pair? _%tl123136123192%_)
                                              (let ((_%e123137123195%_
                                                     (gx#syntax-e
                                                      _%tl123136123192%_)))
                                                (let ((_%hd123138123198%_
                                                       (##car _%e123137123195%_))
                                                      (_%tl123139123200%_
                                                       (##cdr _%e123137123195%_)))
                                                  (let* ((_%dphi123203%_
                                                          _%hd123138123198%_)
                                                         (_%body123205%_
                                                          _%tl123139123200%_))
                                                    (if (gx#stx-fixnum?
                                                         _%dphi123203%_)
                                                        (let ((_%rbody123208%_
                                                               (__call-with-parameters
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_%K123094%_ _%body123205%_ '()))
                        _%current-phi123091%_
                        (fx+ (gx#stx-e _%dphi123203%_)
                             (_%current-phi123091%_)))))
                  (_%K123094%_
                   _%rest123129%_
                   (__foldr1 cons _%r123130%_ _%rbody123208%_)))
                (_%E123133123183%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E123133123183%_))
                                          (_%E123133123183%_))))
                                  (_%E123133123183%_)))))
                      (_%E123132123210%_)))))
          (let* ((_%e123096123103%_ _%stx123088%_)
                 (_%E123098123107%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e123096123103%_)))
                 (_%E123097123124%_
                  (lambda ()
                    (if (gx#stx-pair? _%e123096123103%_)
                        (let ((_%e123099123111%_
                               (gx#syntax-e _%e123096123103%_)))
                          (let ((_%hd123100123114%_ (##car _%e123099123111%_))
                                (_%tl123101123116%_ (##cdr _%e123099123111%_)))
                            (let ((_%body123119%_ _%tl123101123116%_))
                              (if '#t
                                  (if (_%current-phi123091%_)
                                      (let () (_%K123094%_ _%body123119%_ '()))
                                      (let ()
                                        (__call-with-parameters
                                         (lambda ()
                                           (_%K123094%_ _%body123119%_ '()))
                                         _%current-phi123091%_
                                         (gx#current-expander-phi))))
                                  (_%E123098123107%_)))))
                        (_%E123098123107%_)))))
            (_%E123097123124%_)))))
    (define gx#core-expand-import%__%
      (lambda (_%stx122742%_ _%internal-expand?122743%_)
        (letrec ((_%expand1122745%_
                  (lambda (_%hd123060%_ _%K123061%_ _%rest123062%_ _%r123063%_)
                    (if (gx#core-bound-module? _%hd123060%_)
                        (let ()
                          (_%import1122746%_
                           (gx#syntax-local-e__0 _%hd123060%_)
                           _%K123061%_
                           _%rest123062%_
                           _%r123063%_))
                        (if (gx#core-library-module-path? _%hd123060%_)
                            (let ()
                              (_%import1122746%_
                               (gx#import-module__0
                                (gx#core-resolve-library-module-path
                                 _%hd123060%_))
                               _%K123061%_
                               _%rest123062%_
                               _%r123063%_))
                            (if (gx#core-library-relative-module-path?
                                 _%hd123060%_)
                                (let ()
                                  (_%import1122746%_
                                   (gx#import-module__0
                                    (gx#core-resolve-library-relative-module-path
                                     _%hd123060%_))
                                   _%K123061%_
                                   _%rest123062%_
                                   _%r123063%_))
                                (let ((_%e123069%_ (gx#stx-e _%hd123060%_)))
                                  (if (pair? _%e123069%_)
                                      (let ((_%$e123072%_
                                             (gx#stx-e (car _%e123069%_))))
                                        (if (eq? 'spec: _%$e123072%_)
                                            (_%import-spec122749%_
                                             _%hd123060%_
                                             _%K123061%_
                                             _%rest123062%_
                                             _%r123063%_)
                                            (if (eq? 'in: _%$e123072%_)
                                                (_%import-submodule122747%_
                                                 _%hd123060%_
                                                 _%K123061%_
                                                 _%rest123062%_
                                                 _%r123063%_)
                                                (if (eq? 'runtime:
                                                         _%$e123072%_)
                                                    (_%import-runtime122748%_
                                                     _%hd123060%_
                                                     _%K123061%_
                                                     _%rest123062%_
                                                     _%r123063%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _%stx122742%_
                                                     _%hd123060%_)))))
                                      (if (string? _%e123069%_)
                                          (let ()
                                            (_%import1122746%_
                                             (gx#import-module__0
                                              (gx#core-resolve-module-path__%
                                               _%hd123060%_
                                               (gx#stx-source _%stx122742%_)))
                                             _%K123061%_
                                             _%rest123062%_
                                             _%r123063%_))
                                          (if (##structure-instance-of?
                                               _%e123069%_
                                               'gx#module-context::t)
                                              (let ()
                                                (_%K123061%_
                                                 _%rest123062%_
                                                 (cons _%e123069%_
                                                       _%r123063%_)))
                                              (let ()
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; illegal import"
                                                 _%stx122742%_
                                                 _%hd123060%_)))))))))))
                 (_%import1122746%_
                  (lambda (_%ctx123049%_
                           _%K123050%_
                           _%rest123051%_
                           _%r123052%_)
                    (let ((_%dphi123054%_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_%K123050%_
                       _%rest123051%_
                       (cons (##structure
                              gx#import-set::t
                              _%ctx123049%_
                              _%dphi123054%_
                              (map (lambda (_%g123055123057%_)
                                     (gx#core-module-export->import__%
                                      _%g123055123057%_
                                      '#f
                                      _%dphi123054%_))
                                   (##unchecked-structure-ref
                                    _%ctx123049%_
                                    '9
                                    '#f
                                    '#f)))
                             _%r123052%_)))))
                 (_%import-submodule122747%_
                  (lambda (_%hd123016%_ _%K123017%_ _%rest123018%_ _%r123019%_)
                    (let* ((_%e123020123027%_ _%hd123016%_)
                           (_%E123022123031%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e123020123027%_)))
                           (_%E123021123045%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123020123027%_)
                                  (let ((_%e123023123035%_
                                         (gx#syntax-e _%e123020123027%_)))
                                    (let ((_%hd123024123038%_
                                           (##car _%e123023123035%_))
                                          (_%tl123025123040%_
                                           (##cdr _%e123023123035%_)))
                                      (let ((_%spath123043%_
                                             _%tl123025123040%_))
                                        (if '#t
                                            (_%import1122746%_
                                             (_%import-spec-source122750%_
                                              _%spath123043%_)
                                             _%K123017%_
                                             _%rest123018%_
                                             _%r123019%_)
                                            (_%E123022123031%_)))))
                                  (_%E123022123031%_)))))
                      (_%E123021123045%_))))
                 (_%import-runtime122748%_
                  (lambda (_%hd122983%_ _%K122984%_ _%rest122985%_ _%r122986%_)
                    (let* ((_%e122987122994%_ _%hd122983%_)
                           (_%E122989122998%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e122987122994%_)))
                           (_%E122988123012%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122987122994%_)
                                  (let ((_%e122990123002%_
                                         (gx#syntax-e _%e122987122994%_)))
                                    (let ((_%hd122991123005%_
                                           (##car _%e122990123002%_))
                                          (_%tl122992123007%_
                                           (##cdr _%e122990123002%_)))
                                      (let ((_%spath123010%_
                                             _%tl122992123007%_))
                                        (if '#t
                                            (_%K122984%_
                                             _%rest122985%_
                                             (cons (_%import-spec-source122750%_
                                                    _%spath123010%_)
                                                   _%r122986%_))
                                            (_%E122989122998%_)))))
                                  (_%E122989122998%_)))))
                      (_%E122988123012%_))))
                 (_%import-spec122749%_
                  (lambda (_%hd122821%_ _%K122822%_ _%rest122823%_ _%r122824%_)
                    (let* ((_%e122825122842%_ _%hd122821%_)
                           (_%E122834122846%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e122825122842%_)))
                           (_%E122827122957%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122825122842%_)
                                  (let ((_%e122835122850%_
                                         (gx#syntax-e _%e122825122842%_)))
                                    (let ((_%hd122836122853%_
                                           (##car _%e122835122850%_))
                                          (_%tl122837122855%_
                                           (##cdr _%e122835122850%_)))
                                      (if (gx#stx-pair? _%tl122837122855%_)
                                          (let ((_%e122838122858%_
                                                 (gx#syntax-e
                                                  _%tl122837122855%_)))
                                            (let ((_%hd122839122861%_
                                                   (##car _%e122838122858%_))
                                                  (_%tl122840122863%_
                                                   (##cdr _%e122838122858%_)))
                                              (let* ((_%path122866%_
                                                      _%hd122839122861%_)
                                                     (_%specs122868%_
                                                      _%tl122840122863%_))
                                                (if '#t
                                                    (let ((_%src-ctx122870%_
                                                           (_%import-spec-source122750%_
                                                            _%path122866%_))
                                                          (_%exports122871%_
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
                                                          (_%specs122872%_
                                                           (gx#syntax->list
                                                            _%specs122868%_)))
                                                      (for-each
                                                       (lambda (_%out122874%_)
                                                         (hash-put!
                                                          _%exports122871%_
                                                          (cons (##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%out122874%_
                         '3
                         '#f
                         '#f)
                        (##unchecked-structure-ref _%out122874%_ '4 '#f '#f))
                  _%out122874%_))
               (##unchecked-structure-ref _%src-ctx122870%_ '9 '#f '#f))
              (_%K122822%_
               _%rest122823%_
               (__foldl1
                (lambda (_%spec122876%_ _%r122877%_)
                  (let* ((_%e122878122894%_ _%spec122876%_)
                         (_%E122880122898%_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _%e122878122894%_)))
                         (_%E122879122953%_
                          (lambda ()
                            (if (gx#stx-pair? _%e122878122894%_)
                                (let ((_%e122881122902%_
                                       (gx#syntax-e _%e122878122894%_)))
                                  (let ((_%hd122882122905%_
                                         (##car _%e122881122902%_))
                                        (_%tl122883122907%_
                                         (##cdr _%e122881122902%_)))
                                    (let ((_%phi122910%_ _%hd122882122905%_))
                                      (if (gx#stx-pair? _%tl122883122907%_)
                                          (let ((_%e122884122912%_
                                                 (gx#syntax-e
                                                  _%tl122883122907%_)))
                                            (let ((_%hd122885122915%_
                                                   (##car _%e122884122912%_))
                                                  (_%tl122886122917%_
                                                   (##cdr _%e122884122912%_)))
                                              (let ((_%name122920%_
                                                     _%hd122885122915%_))
                                                (if (gx#stx-pair?
                                                     _%tl122886122917%_)
                                                    (let ((_%e122887122922%_
                                                           (gx#syntax-e
                                                            _%tl122886122917%_)))
                                                      (let ((_%hd122888122925%_
                                                             (##car _%e122887122922%_))
                                                            (_%tl122889122927%_
                                                             (##cdr _%e122887122922%_)))
                                                        (let ((_%src-phi122930%_
                                                               _%hd122888122925%_))
                                                          (if (gx#stx-pair?
                                                               _%tl122889122927%_)
                                                              (let ((_%e122890122932%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl122889122927%_)))
                        (let ((_%hd122891122935%_ (##car _%e122890122932%_))
                              (_%tl122892122937%_ (##cdr _%e122890122932%_)))
                          (let ((_%src-name122940%_ _%hd122891122935%_))
                            (if (gx#stx-null? _%tl122892122937%_)
                                (if (and (gx#stx-fixnum? _%src-phi122930%_)
                                         (gx#identifier? _%src-name122940%_)
                                         (gx#stx-fixnum? _%phi122910%_)
                                         (gx#identifier? _%name122920%_))
                                    (let ((_%src-phi122942%_
                                           (gx#stx-e _%src-phi122930%_))
                                          (_%src-name122943%_
                                           (gx#core-identifier-key
                                            _%src-name122940%_))
                                          (_%phi122944%_
                                           (gx#stx-e _%phi122910%_))
                                          (_%name122945%_
                                           (gx#core-identifier-key
                                            _%name122920%_)))
                                      (let ((_%$e122947%_
                                             (hash-get
                                              _%exports122871%_
                                              (cons _%src-phi122942%_
                                                    _%src-name122943%_))))
                                        (if _%$e122947%_
                                            ((lambda (_%out122950%_)
                                               (cons (gx#core-module-export->import__%
                                                      _%out122950%_
                                                      _%name122945%_
                                                      (fx- _%phi122944%_
                                                           _%src-phi122942%_))
                                                     _%r122877%_))
                                             _%$e122947%_)
                                            (let ()
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; no matching export"
                                               _%stx122742%_
                                               _%hd122821%_)))))
                                    (_%E122880122898%_))
                                (_%E122880122898%_)))))
                      (_%E122880122898%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E122880122898%_)))))
                                          (_%E122880122898%_)))))
                                (_%E122880122898%_)))))
                    (_%E122879122953%_)))
                _%r122824%_
                _%specs122872%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E122834122846%_)))))
                                          (_%E122834122846%_))))
                                  (_%E122834122846%_))))
                           (_%E122826122979%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122825122842%_)
                                  (let ((_%e122828122961%_
                                         (gx#syntax-e _%e122825122842%_)))
                                    (let ((_%hd122829122964%_
                                           (##car _%e122828122961%_))
                                          (_%tl122830122966%_
                                           (##cdr _%e122828122961%_)))
                                      (if (gx#stx-pair? _%tl122830122966%_)
                                          (let ((_%e122831122969%_
                                                 (gx#syntax-e
                                                  _%tl122830122966%_)))
                                            (let ((_%hd122832122972%_
                                                   (##car _%e122831122969%_))
                                                  (_%tl122833122974%_
                                                   (##cdr _%e122831122969%_)))
                                              (let ((_%path122977%_
                                                     _%hd122832122972%_))
                                                (if (gx#stx-null?
                                                     _%tl122833122974%_)
                                                    (if '#t
                                                        (_%K122822%_
                                                         _%rest122823%_
                                                         (cons (_%import-spec-source122750%_
                                                                _%path122977%_)
                                                               _%r122824%_))
                                                        (_%E122827122957%_))
                                                    (_%E122827122957%_)))))
                                          (_%E122827122957%_))))
                                  (_%E122827122957%_)))))
                      (_%E122826122979%_))))
                 (_%import-spec-source122750%_
                  (lambda (_%spath122819%_)
                    (gx#core-import-nested-module
                     _%spath122819%_
                     _%stx122742%_)))
                 (_%import!122751%_
                  (lambda (_%rbody122764%_)
                    (letrec* ((_%current-ctx122766%_
                               (gx#current-expander-context))
                              (_%deps122767%_ (make-hash-table-eq))
                              (_%bind!122768%_
                               (lambda (_%hd122817%_)
                                 (gx#core-bind-import!__1
                                  _%hd122817%_
                                  _%current-ctx122766%_))))
                      (let _%lp122770%_ ((_%rest122772%_ _%rbody122764%_)
                                         (_%body122773%_ '()))
                        (let* ((_%rest122774122782%_ _%rest122772%_)
                               (_%else122776122793%_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _%current-ctx122766%_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _%current-ctx122766%_
                                       (__foldl1
                                        cons
                                        (##unchecked-structure-ref
                                         _%current-ctx122766%_
                                         '8
                                         '#f
                                         '#f)
                                        _%body122773%_)
                                       '8
                                       '#f
                                       '#f)
                                      '#!void)
                                  (hash-for-each
                                   (lambda (_%ctx122790%_ _%_122791%_)
                                     (gx#eval-module _%ctx122790%_))
                                   _%deps122767%_)
                                  _%body122773%_))
                               (_%K122778122805%_
                                (lambda (_%rest122796%_ _%hd122797%_)
                                  (if (##structure-direct-instance-of?
                                       _%hd122797%_
                                       'gx#module-import::t)
                                      (let ()
                                        (_%bind!122768%_ _%hd122797%_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _%hd122797%_
                                                   '3
                                                   '#f
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _%hd122797%_
                                                            '1
                                                            '#f
                                                            '#f)
                                                           '3
                                                           '#f
                                                           '#f)))
                                            (hash-put!
                                             _%deps122767%_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _%hd122797%_
                                               '1
                                               '#f
                                               '#f)
                                              '1
                                              '#f
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _%hd122797%_
                                           'gx#import-set::t)
                                          (let ()
                                            (for-each
                                             _%bind!122768%_
                                             (##unchecked-structure-ref
                                              _%hd122797%_
                                              '3
                                              '#f
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _%hd122797%_
                                                  '2
                                                  '#f
                                                  '#f))
                                                (hash-put!
                                                 _%deps122767%_
                                                 (##unchecked-structure-ref
                                                  _%hd122797%_
                                                  '1
                                                  '#f
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_%$e122801%_
                                                 (##structure-instance-of?
                                                  _%hd122797%_
                                                  'gx#module-context::t)))
                                            (if _%$e122801%_
                                                _%$e122801%_
                                                (let ()
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Unexpected import"
                                                   _%stx122742%_
                                                   _%hd122797%_))))))
                                  (_%lp122770%_
                                   _%rest122796%_
                                   (cons _%hd122797%_ _%body122773%_)))))
                          (if (##pair? _%rest122774122782%_)
                              (let ((_%hd122779122808%_
                                     (##car _%rest122774122782%_))
                                    (_%tl122780122810%_
                                     (##cdr _%rest122774122782%_)))
                                (let* ((_%hd122813%_ _%hd122779122808%_)
                                       (_%rest122815%_ _%tl122780122810%_))
                                  (_%K122778122805%_
                                   _%rest122815%_
                                   _%hd122813%_)))
                              (_%else122776122793%_)))))))
                 (_%expanded-import?122752%_
                  (lambda (_%e122756%_)
                    (let ((_%$e122758%_
                           (##structure-direct-instance-of?
                            _%e122756%_
                            'gx#import-set::t)))
                      (if _%$e122758%_
                          _%$e122758%_
                          (let ((_%$e122761%_
                                 (##structure-direct-instance-of?
                                  _%e122756%_
                                  'gx#module-import::t)))
                            (if _%$e122761%_
                                _%$e122761%_
                                (##structure-instance-of?
                                 _%e122756%_
                                 'gx#module-context::t))))))))
          (let ((_%rbody122754%_
                 (gx#core-expand-import/export
                  _%stx122742%_
                  _%expanded-import?122752%_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _%expand1122745%_)))
            (if _%internal-expand?122743%_
                (reverse _%rbody122754%_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_%import!122751%_ _%rbody122754%_))
                 (gx#stx-source _%stx122742%_)))))))
    (define gx#core-expand-import%__0
      (lambda (_%stx123081%_)
        (let ((_%internal-expand?123083%_ '#f))
          (gx#core-expand-import%__%
           _%stx123081%_
           _%internal-expand?123083%_))))
    (define gx#core-expand-import%
      (lambda _g125730_
        (let ((_g125729_ (##length _g125730_)))
          (cond ((##fx= _g125729_ 1)
                 (apply (lambda (_%stx123081%_)
                          (gx#core-expand-import%__0 _%stx123081%_))
                        _g125730_))
                ((##fx= _g125729_ 2)
                 (apply (lambda (_%stx123085%_ _%internal-expand?123086%_)
                          (gx#core-expand-import%__%
                           _%stx123085%_
                           _%internal-expand?123086%_))
                        _g125730_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g125730_))))))
    (define gx#core-import-nested-module
      (lambda (_%spath122669%_ _%where122670%_)
        (let* ((_%e122671122678%_ _%spath122669%_)
               (_%E122673122682%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122671122678%_)))
               (_%E122672122737%_
                (lambda ()
                  (if (gx#stx-pair? _%e122671122678%_)
                      (let ((_%e122674122686%_
                             (gx#syntax-e _%e122671122678%_)))
                        (let ((_%hd122675122689%_ (##car _%e122674122686%_))
                              (_%tl122676122691%_ (##cdr _%e122674122686%_)))
                          (let* ((_%origin122694%_ _%hd122675122689%_)
                                 (_%sub122696%_ _%tl122676122691%_))
                            (if '#t
                                (let ((_%origin-ctx122698%_
                                       (if (gx#stx-false? _%origin122694%_)
                                           (gx#current-expander-context)
                                           (gx#import-module__0
                                            _%origin122694%_))))
                                  (let _%lp122700%_ ((_%rest122702%_
                                                      _%sub122696%_)
                                                     (_%ctx122703%_
                                                      _%origin-ctx122698%_))
                                    (let* ((_%e122704122711%_ _%rest122702%_)
                                           (_%E122706122715%_
                                            (lambda () _%ctx122703%_))
                                           (_%E122705122733%_
                                            (lambda ()
                                              (if (gx#stx-pair?
                                                   _%e122704122711%_)
                                                  (let ((_%e122707122719%_
                                                         (gx#syntax-e
                                                          _%e122704122711%_)))
                                                    (let ((_%hd122708122722%_
                                                           (##car _%e122707122719%_))
                                                          (_%tl122709122724%_
                                                           (##cdr _%e122707122719%_)))
                                                      (let* ((_%id122727%_
                                                              _%hd122708122722%_)
                                                             (_%rest122729%_
                                                              _%tl122709122724%_))
                                                        (if '#t
                                                            (let ((_%bind122731%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#resolve-identifier__%
                            _%id122727%_
                            '0
                            _%ctx122703%_)))
                      (if (and (##structure-direct-instance-of?
                                _%bind122731%_
                                'gx#syntax-binding::t)
                               (##structure-instance-of?
                                (##unchecked-structure-ref
                                 _%bind122731%_
                                 '4
                                 '#f
                                 '#f)
                                'gx#module-context::t))
                          '#!void
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; not bound as module"
                           _%where122670%_
                           _%spath122669%_
                           _%id122727%_))
                      (_%lp122700%_
                       _%rest122729%_
                       (##unchecked-structure-ref _%bind122731%_ '4 '#f '#f)))
                    (_%E122706122715%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E122706122715%_)))))
                                      (_%E122705122733%_))))
                                (_%E122673122682%_)))))
                      (_%E122673122682%_)))))
          (_%E122672122737%_))))
    (define gx#core-expand-import-source
      (lambda (_%hd122667%_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _%hd122667%_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_%stx122161%_ _%internal-expand?122162%_)
        (letrec* ((_%make-export__125658125659%_
                   (lambda (_%bind122615%_
                            _%phi122616%_
                            _%ctx122617%_
                            _%name122618%_)
                     (let* ((_%key122620%_
                             (##unchecked-structure-ref
                              _%bind122615%_
                              '2
                              '#f
                              '#f))
                            (_%export-key122622%_
                             (if _%name122618%_
                                 (gx#core-identifier-key _%name122618%_)
                                 _%key122620%_)))
                       (##structure
                        gx#module-export::t
                        _%ctx122617%_
                        _%key122620%_
                        _%phi122616%_
                        _%export-key122622%_
                        (let ((_%$e122625%_
                               (##structure-instance-of?
                                _%bind122615%_
                                'gx#extern-binding::t)))
                          (if _%$e122625%_
                              _%$e122625%_
                              (##structure-direct-instance-of?
                               _%bind122615%_
                               'gx#import-binding::t)))))))
                  (_%make-export__0__125660125663%_
                   (lambda (_%bind122631%_)
                     (let* ((_%phi122633%_ (gx#current-export-expander-phi))
                            (_%ctx122635%_ (gx#current-expander-context))
                            (_%name122637%_ '#f))
                       (_%make-export__125658125659%_
                        _%bind122631%_
                        _%phi122633%_
                        _%ctx122635%_
                        _%name122637%_))))
                  (_%make-export__1__125661125664%_
                   (lambda (_%bind122639%_ _%phi122640%_)
                     (let* ((_%ctx122642%_ (gx#current-expander-context))
                            (_%name122644%_ '#f))
                       (_%make-export__125658125659%_
                        _%bind122639%_
                        _%phi122640%_
                        _%ctx122642%_
                        _%name122644%_))))
                  (_%make-export__2__125662125665%_
                   (lambda (_%bind122646%_ _%phi122647%_ _%ctx122648%_)
                     (let ((_%name122650%_ '#f))
                       (_%make-export__125658125659%_
                        _%bind122646%_
                        _%phi122647%_
                        _%ctx122648%_
                        _%name122650%_))))
                  (_%make-export122164%_
                   (lambda _g125732_
                     (let ((_g125731_ (##length _g125732_)))
                       (cond ((##fx= _g125731_ 1)
                              (apply (lambda (_%bind122631%_)
                                       (_%make-export__0__125660125663%_
                                        _%bind122631%_))
                                     _g125732_))
                             ((##fx= _g125731_ 2)
                              (apply (lambda (_%bind122639%_ _%phi122640%_)
                                       (_%make-export__1__125661125664%_
                                        _%bind122639%_
                                        _%phi122640%_))
                                     _g125732_))
                             ((##fx= _g125731_ 3)
                              (apply (lambda (_%bind122646%_
                                              _%phi122647%_
                                              _%ctx122648%_)
                                       (_%make-export__2__125662125665%_
                                        _%bind122646%_
                                        _%phi122647%_
                                        _%ctx122648%_))
                                     _g125732_))
                             ((##fx= _g125731_ 4)
                              (apply (lambda (_%bind122652%_
                                              _%phi122653%_
                                              _%ctx122654%_
                                              _%name122655%_)
                                       (_%make-export__125658125659%_
                                        _%bind122652%_
                                        _%phi122653%_
                                        _%ctx122654%_
                                        _%name122655%_))
                                     _g125732_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g125732_))))))
                  (_%expand1122165%_
                   (lambda (_%hd122320%_
                            _%K122321%_
                            _%rest122322%_
                            _%r122323%_)
                     (let* ((_%e122324122356%_ _%hd122320%_)
                            (_%E122351122360%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _%stx122161%_
                                _%hd122320%_)))
                            (_%E122341122444%_
                             (lambda ()
                               (if (gx#stx-pair? _%e122324122356%_)
                                   (let ((_%e122352122364%_
                                          (gx#syntax-e _%e122324122356%_)))
                                     (let ((_%hd122353122367%_
                                            (##car _%e122352122364%_))
                                           (_%tl122354122369%_
                                            (##cdr _%e122352122364%_)))
                                       (if (eq? (gx#stx-e _%hd122353122367%_)
                                                'import:)
                                           (let ((_%in122372%_
                                                  _%tl122354122369%_))
                                             (if (gx#stx-list? _%in122372%_)
                                                 (let _%lp122374%_ ((_%in-rest122376%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%in122372%_)
                            (_%r122377%_ _%r122323%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%e122378122385%_
                                                           _%in-rest122376%_)
                                                          (_%E122380122389%_
                                                           (lambda ()
                                                             (_%K122321%_
                                                              _%rest122322%_
                                                              _%r122377%_)))
                                                          (_%E122379122440%_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%e122378122385%_)
                         (let ((_%e122381122393%_
                                (gx#syntax-e _%e122378122385%_)))
                           (let ((_%hd122382122396%_ (##car _%e122381122393%_))
                                 (_%tl122383122398%_
                                  (##cdr _%e122381122393%_)))
                             (let* ((_%hd122401%_ _%hd122382122396%_)
                                    (_%in-rest122403%_ _%tl122383122398%_))
                               (if '#t
                                   (let ((_%src122438%_
                                          (if (gx#core-bound-module?
                                               _%hd122401%_)
                                              (let ()
                                                (gx#syntax-local-e__0
                                                 _%hd122401%_))
                                              (if (gx#core-library-module-path?
                                                   _%hd122401%_)
                                                  (let ()
                                                    (gx#import-module__0
                                                     (gx#core-resolve-library-module-path
                                                      _%hd122401%_)))
                                                  (if (gx#core-library-relative-module-path?
                                                       _%hd122401%_)
                                                      (let ()
                                                        (gx#import-module__0
                                                         (gx#core-resolve-library-relative-module-path
                                                          _%hd122401%_)))
                                                      (if (gx#stx-string?
                                                           _%hd122401%_)
                                                          (let ()
                                                            (gx#import-module__0
                                                             (gx#core-resolve-module-path__%
                                                              _%hd122401%_
                                                              (gx#stx-source
                                                               _%stx122161%_))))
                                                          (let ()
                                                            (let* ((_%e122409122416%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd122401%_)
                           (_%E122411122420%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; illegal re-export"
                               _%stx122161%_
                               _%hd122401%_)))
                           (_%E122410122434%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122409122416%_)
                                  (let ((_%e122412122424%_
                                         (gx#syntax-e _%e122409122416%_)))
                                    (let ((_%hd122413122427%_
                                           (##car _%e122412122424%_))
                                          (_%tl122414122429%_
                                           (##cdr _%e122412122424%_)))
                                      (if (eq? (gx#stx-e _%hd122413122427%_)
                                               'in:)
                                          (let ((_%spath122432%_
                                                 _%tl122414122429%_))
                                            (if '#t
                                                (gx#core-import-nested-module
                                                 _%spath122432%_
                                                 _%stx122161%_)
                                                (_%E122411122420%_)))
                                          (_%E122411122420%_))))
                                  (_%E122411122420%_)))))
                      (_%E122410122434%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%lp122374%_
                                      _%in-rest122403%_
                                      (_%export-imports122166%_
                                       _%src122438%_
                                       _%r122377%_)))
                                   (_%E122380122389%_)))))
                         (_%E122380122389%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E122379122440%_)))
                                                 (_%E122351122360%_)))
                                           (_%E122351122360%_))))
                                   (_%E122351122360%_))))
                            (_%E122328122484%_
                             (lambda ()
                               (if (gx#stx-pair? _%e122324122356%_)
                                   (let ((_%e122342122448%_
                                          (gx#syntax-e _%e122324122356%_)))
                                     (let ((_%hd122343122451%_
                                            (##car _%e122342122448%_))
                                           (_%tl122344122453%_
                                            (##cdr _%e122342122448%_)))
                                       (if (eq? (gx#stx-e _%hd122343122451%_)
                                                'rename:)
                                           (if (gx#stx-pair?
                                                _%tl122344122453%_)
                                               (let ((_%e122345122456%_
                                                      (gx#syntax-e
                                                       _%tl122344122453%_)))
                                                 (let ((_%hd122346122459%_
                                                        (##car _%e122345122456%_))
                                                       (_%tl122347122461%_
                                                        (##cdr _%e122345122456%_)))
                                                   (let ((_%id122464%_
                                                          _%hd122346122459%_))
                                                     (if (gx#stx-pair?
                                                          _%tl122347122461%_)
                                                         (let ((_%e122348122466%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl122347122461%_)))
                   (let ((_%hd122349122469%_ (##car _%e122348122466%_))
                         (_%tl122350122471%_ (##cdr _%e122348122466%_)))
                     (let ((_%name122474%_ _%hd122349122469%_))
                       (if (gx#stx-null? _%tl122350122471%_)
                           (if '#t
                               (let* ((_%phi122476%_
                                       (gx#current-export-expander-phi))
                                      (_%$e122478%_
                                       (gx#core-resolve-identifier__1
                                        _%id122464%_
                                        _%phi122476%_)))
                                 (if _%$e122478%_
                                     ((lambda (_%bind122481%_)
                                        (_%K122321%_
                                         _%rest122322%_
                                         (cons (_%make-export__125658125659%_
                                                _%bind122481%_
                                                _%phi122476%_
                                                (gx#current-expander-context)
                                                _%name122474%_)
                                               _%r122323%_)))
                                      _%$e122478%_)
                                     (let ()
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Reference to unbound identifier"
                                        _%stx122161%_
                                        _%hd122320%_
                                        _%id122464%_))))
                               (_%E122341122444%_))
                           (_%E122341122444%_)))))
                 (_%E122341122444%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E122341122444%_))
                                           (_%E122341122444%_))))
                                   (_%E122341122444%_))))
                            (_%E122327122534%_
                             (lambda ()
                               (if (gx#stx-pair? _%e122324122356%_)
                                   (let ((_%e122329122488%_
                                          (gx#syntax-e _%e122324122356%_)))
                                     (let ((_%hd122330122491%_
                                            (##car _%e122329122488%_))
                                           (_%tl122331122493%_
                                            (##cdr _%e122329122488%_)))
                                       (if (eq? (gx#stx-e _%hd122330122491%_)
                                                'spec:)
                                           (if (gx#stx-pair?
                                                _%tl122331122493%_)
                                               (let ((_%e122332122496%_
                                                      (gx#syntax-e
                                                       _%tl122331122493%_)))
                                                 (let ((_%hd122333122499%_
                                                        (##car _%e122332122496%_))
                                                       (_%tl122334122501%_
                                                        (##cdr _%e122332122496%_)))
                                                   (let ((_%phi122504%_
                                                          _%hd122333122499%_))
                                                     (if (gx#stx-pair?
                                                          _%tl122334122501%_)
                                                         (let ((_%e122335122506%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl122334122501%_)))
                   (let ((_%hd122336122509%_ (##car _%e122335122506%_))
                         (_%tl122337122511%_ (##cdr _%e122335122506%_)))
                     (let ((_%id122514%_ _%hd122336122509%_))
                       (if (gx#stx-pair? _%tl122337122511%_)
                           (let ((_%e122338122516%_
                                  (gx#syntax-e _%tl122337122511%_)))
                             (let ((_%hd122339122519%_
                                    (##car _%e122338122516%_))
                                   (_%tl122340122521%_
                                    (##cdr _%e122338122516%_)))
                               (let ((_%name122524%_ _%hd122339122519%_))
                                 (if (gx#stx-null? _%tl122340122521%_)
                                     (if (and (gx#stx-fixnum? _%phi122504%_)
                                              (gx#identifier? _%id122514%_)
                                              (gx#identifier? _%name122524%_))
                                         (let* ((_%phi122526%_
                                                 (gx#stx-e _%phi122504%_))
                                                (_%$e122528%_
                                                 (gx#core-resolve-identifier__1
                                                  _%id122514%_
                                                  _%phi122526%_)))
                                           (if _%$e122528%_
                                               ((lambda (_%bind122531%_)
                                                  (_%K122321%_
                                                   _%rest122322%_
                                                   (cons (_%make-export__125658125659%_
                                                          _%bind122531%_
                                                          _%phi122526%_
                                                          (gx#current-expander-context)
                                                          _%name122524%_)
                                                         _%r122323%_)))
                                                _%$e122528%_)
                                               (let ()
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Reference to unbound identifier"
                                                  _%stx122161%_
                                                  _%hd122320%_
                                                  _%id122514%_))))
                                         (_%E122328122484%_))
                                     (_%E122328122484%_)))))
                           (_%E122328122484%_)))))
                 (_%E122328122484%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E122328122484%_))
                                           (_%E122328122484%_))))
                                   (_%E122328122484%_))))
                            (_%E122326122546%_
                             (lambda ()
                               (let ((_%id122538%_ _%e122324122356%_))
                                 (if (gx#identifier? _%id122538%_)
                                     (let ((_%$e122540%_
                                            (gx#core-resolve-identifier__1
                                             _%id122538%_
                                             (gx#current-export-expander-phi))))
                                       (if _%$e122540%_
                                           ((lambda (_%bind122543%_)
                                              (_%K122321%_
                                               _%rest122322%_
                                               (cons (_%make-export__0__125660125663%_
                                                      _%bind122543%_)
                                                     _%r122323%_)))
                                            _%$e122540%_)
                                           (let ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Reference to unbound identifier"
                                              _%stx122161%_
                                              _%hd122320%_))))
                                     (_%E122327122534%_)))))
                            (_%E122325122610%_
                             (lambda ()
                               (if (eq? (gx#stx-e _%e122324122356%_) '#t)
                                   (if '#t
                                       (let* ((_%current-ctx122550%_
                                               (gx#current-expander-context))
                                              (_%current-phi122552%_
                                               (gx#current-export-expander-phi))
                                              (_%phi-ctx122554%_
                                               (gx#core-context-shift
                                                _%current-ctx122550%_
                                                _%current-phi122552%_))
                                              (_%phi-bind122556%_
                                               (hash->list
                                                (##unchecked-structure-ref
                                                 _%phi-ctx122554%_
                                                 '2
                                                 '#f
                                                 '#f))))
                                         (let _%lp122559%_ ((_%bind-rest122561%_
                                                             _%phi-bind122556%_)
                                                            (_%set122562%_
                                                             '()))
                                           (let* ((_%bind-rest122563122573%_
                                                   _%bind-rest122561%_)
                                                  (_%else122565122581%_
                                                   (lambda ()
                                                     (_%K122321%_
                                                      _%rest122322%_
                                                      (cons (##structure
                                                             gx#export-set::t
                                                             '#f
                                                             _%current-phi122552%_
                                                             _%set122562%_)
                                                            _%r122323%_))))
                                                  (_%K122567122591%_
                                                   (lambda (_%bind-rest122584%_
                                                            _%bind122585%_
                                                            _%key122586%_)
                                                     (if (or (##structure-direct-instance-of?
                                                              _%bind122585%_
                                                              'gx#import-binding::t)
                                                             (gx#private-feature-binding?
                                                              _%bind122585%_))
                                                         (_%lp122559%_
                                                          _%bind-rest122584%_
                                                          _%set122562%_)
                                                         (_%lp122559%_
                                                          _%bind-rest122584%_
                                                          (cons (_%make-export__2__125662125665%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%bind122585%_
                         _%current-phi122552%_
                         _%current-ctx122550%_)
                        _%set122562%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _%bind-rest122563122573%_)
                                                 (let ((_%hd122568122594%_
                                                        (##car _%bind-rest122563122573%_))
                                                       (_%tl122569122596%_
                                                        (##cdr _%bind-rest122563122573%_)))
                                                   (if (##pair? _%hd122568122594%_)
                                                       (let ((_%hd122570122599%_
                                                              (##car _%hd122568122594%_))
                                                             (_%tl122571122601%_
                                                              (##cdr _%hd122568122594%_)))
                                                         (let* ((_%key122604%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd122570122599%_)
                        (_%bind122606%_ _%tl122571122601%_)
                        (_%bind-rest122608%_ _%tl122569122596%_))
                   (_%K122567122591%_
                    _%bind-rest122608%_
                    _%bind122606%_
                    _%key122604%_)))
               (_%else122565122581%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%else122565122581%_)))))
                                       (_%E122326122546%_))
                                   (_%E122326122546%_)))))
                       (_%E122325122610%_))))
                  (_%export-imports122166%_
                   (lambda (_%src122196%_ _%r122197%_)
                     (letrec* ((_%current-ctx122199%_
                                (gx#current-expander-context))
                               (_%current-phi122200%_
                                (gx#current-export-expander-phi))
                               (_%import->export122201%_
                                (lambda (_%in122282%_)
                                  (let* ((_%in122283122291%_ _%in122282%_)
                                         (_%E122285122295%_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _%in122283122291%_
                                                   '((module-import
                                                      out
                                                      key
                                                      phi)))
                                            '#!void))
                                         (_%K122286122302%_
                                          (lambda (_%phi122298%_
                                                   _%key122299%_
                                                   _%out122300%_)
                                            (##structure
                                             gx#module-export::t
                                             _%current-ctx122199%_
                                             _%key122299%_
                                             _%phi122298%_
                                             _%key122299%_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _%in122283122291%_
                                         'gx#module-import::t)
                                        (let* ((_%e122287122305%_
                                                (##unchecked-structure-ref
                                                 _%in122283122291%_
                                                 '1
                                                 '#f
                                                 '#f))
                                               (_%out122308%_
                                                _%e122287122305%_)
                                               (_%e122288122310%_
                                                (##unchecked-structure-ref
                                                 _%in122283122291%_
                                                 '2
                                                 '#f
                                                 '#f))
                                               (_%key122313%_
                                                _%e122288122310%_)
                                               (_%e122289122315%_
                                                (##unchecked-structure-ref
                                                 _%in122283122291%_
                                                 '3
                                                 '#f
                                                 '#f))
                                               (_%phi122318%_
                                                _%e122289122315%_))
                                          (_%K122286122302%_
                                           _%phi122318%_
                                           _%key122313%_
                                           _%out122308%_))
                                        (_%E122285122295%_)))))
                               (_%fold-e122202%_
                                (lambda (_%in122204%_ _%r122205%_)
                                  (let* ((_%in122206122220%_ _%in122204%_)
                                         (_%else122209122228%_
                                          (lambda () _%r122205%_)))
                                    (let ((_%K122215122264%_
                                           (lambda (_%phi122260%_
                                                    _%key122261%_
                                                    _%out122262%_)
                                             (if (and (fx= _%phi122260%_
                                                           _%current-phi122200%_)
                                                      (eq? _%src122196%_
                                                           (##unchecked-structure-ref
                                                            _%out122262%_
                                                            '1
                                                            '#f
                                                            '#f)))
                                                 (cons (_%import->export122201%_
                                                        _%in122204%_)
                                                       _%r122205%_)
                                                 _%r122205%_)))
                                          (_%K122211122239%_
                                           (lambda (_%imports122232%_
                                                    _%phi122233%_
                                                    _%ctx122234%_)
                                             (if (and (fx= _%phi122233%_
                                                           _%current-phi122200%_)
                                                      (eq? _%src122196%_
                                                           _%ctx122234%_))
                                                 (__foldl1
                                                  (lambda (_%in122236%_
                                                           _%r122237%_)
                                                    (cons (_%import->export122201%_
                                                           _%in122236%_)
                                                          _%r122237%_))
                                                  _%r122205%_
                                                  _%imports122232%_)
                                                 _%r122205%_))))
                                      (let ((_%try-match122208122257%_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _%in122206122220%_
                                                    'gx#import-set::t)
                                                   (let* ((_%e122212122242%_
                                                           (##unchecked-structure-ref
                                                            _%in122206122220%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                          (_%e122213122247%_
                                                           (##unchecked-structure-ref
                                                            _%in122206122220%_
                                                            '2
                                                            '#f
                                                            '#f))
                                                          (_%e122214122252%_
                                                           (##unchecked-structure-ref
                                                            _%in122206122220%_
                                                            '3
                                                            '#f
                                                            '#f)))
                                                     (let ((_%ctx122245%_
                                                            _%e122212122242%_)
                                                           (_%phi122250%_
                                                            _%e122213122247%_)
                                                           (_%imports122255%_
                                                            _%e122214122252%_))
                                                       (_%K122211122239%_
                                                        _%imports122255%_
                                                        _%phi122250%_
                                                        _%ctx122245%_)))
                                                   (_%else122209122228%_)))))
                                        (if (##structure-direct-instance-of?
                                             _%in122206122220%_
                                             'gx#module-import::t)
                                            (let* ((_%e122216122267%_
                                                    (##unchecked-structure-ref
                                                     _%in122206122220%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                   (_%e122217122272%_
                                                    (##unchecked-structure-ref
                                                     _%in122206122220%_
                                                     '2
                                                     '#f
                                                     '#f))
                                                   (_%e122218122277%_
                                                    (##unchecked-structure-ref
                                                     _%in122206122220%_
                                                     '3
                                                     '#f
                                                     '#f)))
                                              (let ((_%out122270%_
                                                     _%e122216122267%_)
                                                    (_%key122275%_
                                                     _%e122217122272%_)
                                                    (_%phi122280%_
                                                     _%e122218122277%_))
                                                (_%K122215122264%_
                                                 _%phi122280%_
                                                 _%key122275%_
                                                 _%out122270%_)))
                                            (_%try-match122208122257%_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _%src122196%_
                              _%current-phi122200%_
                              (__foldl1
                               _%fold-e122202%_
                               '()
                               (##unchecked-structure-ref
                                _%current-ctx122199%_
                                '8
                                '#f
                                '#f)))
                             _%r122197%_))))
                  (_%export!122167%_
                   (lambda (_%rbody122183%_)
                     (letrec* ((_%current-ctx122185%_
                                (gx#current-expander-context))
                               (_%fold-e122186%_
                                (lambda (_%out122190%_ _%r122191%_)
                                  (if (##structure-direct-instance-of?
                                       _%out122190%_
                                       'gx#module-export::t)
                                      (let () (cons _%out122190%_ _%r122191%_))
                                      (if (##structure-direct-instance-of?
                                           _%out122190%_
                                           'gx#export-set::t)
                                          (let ()
                                            (__foldl1
                                             cons
                                             _%r122191%_
                                             (##unchecked-structure-ref
                                              _%out122190%_
                                              '3
                                              '#f
                                              '#f)))
                                          (let () _%r122191%_))))))
                       (let ((_%body122188%_ (reverse _%rbody122183%_)))
                         (##unchecked-structure-set!
                          _%current-ctx122185%_
                          (__foldl1
                           _%fold-e122186%_
                           (##unchecked-structure-ref
                            _%current-ctx122185%_
                            '9
                            '#f
                            '#f)
                           _%body122188%_)
                          '9
                          '#f
                          '#f)
                         _%body122188%_))))
                  (_%expanded-export?122168%_
                   (lambda (_%e122178%_)
                     (let ((_%$e122180%_
                            (##structure-direct-instance-of?
                             _%e122178%_
                             'gx#module-export::t)))
                       (if _%$e122180%_
                           _%$e122180%_
                           (##structure-direct-instance-of?
                            _%e122178%_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _%internal-expand?122162%_)
              (let ((_%rbody122174%_
                     (gx#core-expand-import/export
                      _%stx122161%_
                      _%expanded-export?122168%_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _%expand1122165%_)))
                (if _%internal-expand?122162%_
                    (reverse _%rbody122174%_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons
                      '%#export
                      (_%export!122167%_ _%rbody122174%_))
                     (gx#stx-source _%stx122161%_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (let ()
                    (gx#core-quote-syntax__1
                     (gx#core-cons '%#begin '())
                     (gx#stx-source _%stx122161%_)))
                  (let ()
                    (gx#raise-syntax-error
                     '#f
                     '"Illegal context"
                     _%stx122161%_)))))))
    (define gx#core-expand-export%__0
      (lambda (_%stx122660%_)
        (let ((_%internal-expand?122662%_ '#f))
          (gx#core-expand-export%__%
           _%stx122660%_
           _%internal-expand?122662%_))))
    (define gx#core-expand-export%
      (lambda _g125734_
        (let ((_g125733_ (##length _g125734_)))
          (cond ((##fx= _g125733_ 1)
                 (apply (lambda (_%stx122660%_)
                          (gx#core-expand-export%__0 _%stx122660%_))
                        _g125734_))
                ((##fx= _g125733_ 2)
                 (apply (lambda (_%stx122664%_ _%internal-expand?122665%_)
                          (gx#core-expand-export%__%
                           _%stx122664%_
                           _%internal-expand?122665%_))
                        _g125734_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g125734_))))))
    (define gx#core-expand-export-source
      (lambda (_%hd122158%_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _%hd122158%_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_%stx122128%_)
        (let* ((_%e122129122136%_ _%stx122128%_)
               (_%E122131122140%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122129122136%_)))
               (_%E122130122154%_
                (lambda ()
                  (if (gx#stx-pair? _%e122129122136%_)
                      (let ((_%e122132122144%_
                             (gx#syntax-e _%e122129122136%_)))
                        (let ((_%hd122133122147%_ (##car _%e122132122144%_))
                              (_%tl122134122149%_ (##cdr _%e122132122144%_)))
                          (let ((_%body122152%_ _%tl122134122149%_))
                            (if (gx#identifier-list? _%body122152%_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _%body122152%_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _%body122152%_))
                                   (gx#stx-source _%stx122128%_)))
                                (_%E122131122140%_)))))
                      (_%E122131122140%_)))))
          (_%E122130122154%_))))
    (define gx#core-bind-feature!__%
      (lambda (_%id122094%_ _%private?122095%_ _%phi122096%_ _%ctx122097%_)
        (gx#core-bind-syntax!__%
         _%id122094%_
         ((if _%private?122095%_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _%id122094%_))
         _%private?122095%_
         _%phi122096%_
         _%ctx122097%_)))
    (define gx#core-bind-feature!__0
      (lambda (_%id122102%_)
        (let* ((_%private?122104%_ '#f)
               (_%phi122106%_ (gx#current-expander-phi))
               (_%ctx122108%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id122102%_
           _%private?122104%_
           _%phi122106%_
           _%ctx122108%_))))
    (define gx#core-bind-feature!__1
      (lambda (_%id122110%_ _%private?122111%_)
        (let* ((_%phi122113%_ (gx#current-expander-phi))
               (_%ctx122115%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id122110%_
           _%private?122111%_
           _%phi122113%_
           _%ctx122115%_))))
    (define gx#core-bind-feature!__2
      (lambda (_%id122117%_ _%private?122118%_ _%phi122119%_)
        (let ((_%ctx122121%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id122117%_
           _%private?122118%_
           _%phi122119%_
           _%ctx122121%_))))
    (define gx#core-bind-feature!
      (lambda _g125736_
        (let ((_g125735_ (##length _g125736_)))
          (cond ((##fx= _g125735_ 1)
                 (apply (lambda (_%id122102%_)
                          (gx#core-bind-feature!__0 _%id122102%_))
                        _g125736_))
                ((##fx= _g125735_ 2)
                 (apply (lambda (_%id122110%_ _%private?122111%_)
                          (gx#core-bind-feature!__1
                           _%id122110%_
                           _%private?122111%_))
                        _g125736_))
                ((##fx= _g125735_ 3)
                 (apply (lambda (_%id122117%_ _%private?122118%_ _%phi122119%_)
                          (gx#core-bind-feature!__2
                           _%id122117%_
                           _%private?122118%_
                           _%phi122119%_))
                        _g125736_))
                ((##fx= _g125735_ 4)
                 (apply (lambda (_%id122123%_
                                 _%private?122124%_
                                 _%phi122125%_
                                 _%ctx122126%_)
                          (gx#core-bind-feature!__%
                           _%id122123%_
                           _%private?122124%_
                           _%phi122125%_
                           _%ctx122126%_))
                        _g125736_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g125736_))))))))
