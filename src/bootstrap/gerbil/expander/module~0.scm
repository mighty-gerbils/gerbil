(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1773009268)
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
      (lambda _%$args186496%_
        (apply make-instance gx#module-import::t _%$args186496%_)))
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
      (lambda _%$args186493%_
        (apply make-instance gx#module-export::t _%$args186493%_)))
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
      (lambda _%$args186490%_
        (apply make-instance gx#import-set::t _%$args186490%_)))
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
      (lambda _%$args186487%_
        (apply make-instance gx#export-set::t _%$args186487%_)))
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
      (lambda _%$args186484%_
        (apply make-instance gx#import-expander::t _%$args186484%_)))
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
      (lambda _%$args186481%_
        (apply make-instance gx#export-expander::t _%$args186481%_)))
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
      (lambda _%$args186478%_
        (apply make-instance gx#import-export-expander::t _%$args186478%_)))
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
      (lambda (_%path186475%_ _%fun186476%_)
        (call-with-input-file
         (cons 'path: (cons _%path186475%_ gx#source-file-settings))
         _%fun186476%_)))
    (define gx#module-context:::init!
      (lambda (_%self186458%_
               _%id186459%_
               _%super186460%_
               _%ns186461%_
               _%path186462%_)
        (let ((_%self186465%_ _%self186458%_))
          (if (##fx< '11 (##structure-length _%self186465%_))
              (begin
                (##unchecked-structure-set!
                 _%self186465%_
                 _%id186459%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self186465%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self186465%_
                 _%super186460%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self186465%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self186465%_ '#f '5 '#f '#f)
                (##unchecked-structure-set!
                 _%self186465%_
                 _%ns186461%_
                 '6
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self186465%_
                 _%path186462%_
                 '7
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self186465%_ '() '8 '#f '#f)
                (##unchecked-structure-set! _%self186465%_ '() '9 '#f '#f)
                (##unchecked-structure-set! _%self186465%_ '#f '10 '#f '#f)
                (##unchecked-structure-set! _%self186465%_ '#f '11 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self186465%_
                     '11
                     (##structure-length _%self186465%_))))))
    (__bind-method!__%
     gx#module-context::t
     ':init!
     gx#module-context:::init!
     '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_%self186291%_ _%ctx186292%_ _%root186293%_)
        (let* ((_%self186296%_ _%self186291%_)
               (_%super186312%_
                (let ((_%$e186306%_ _%root186293%_))
                  (if _%$e186306%_
                      _%$e186306%_
                      (let ((_%$e186309%_ (gx#core-context-root__0)))
                        (if _%$e186309%_
                            _%$e186309%_
                            (let ((__obj186540
                                   (##structure gx#root-context::t '#f '#f)))
                              (let ((__constructor186541
                                     (direct-method-ref
                                      gx#root-context::t
                                      __obj186540
                                      ':init!)))
                                (if __constructor186541
                                    (__constructor186541 __obj186540)
                                    (error '"missing constructor method implementation"
                                           'class:
                                           gx#root-context::t
                                           'method:
                                           ':init!)))
                              __obj186540)))))))
          (if _%ctx186292%_
              (let ((_%id186315%_
                     (##structure-ref
                      _%ctx186292%_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_%path186316%_
                     (##structure-ref
                      _%ctx186292%_
                      '7
                      gx#module-context::t
                      '#f))
                    (_%in186317%_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _%ctx186292%_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_%e186318%_
                     (__make-atomic-promise
                      (lambda () (gx#eval-module _%ctx186292%_)))))
                (if (##fx< '8 (##structure-length _%self186296%_))
                    (begin
                      (##unchecked-structure-set!
                       _%self186296%_
                       _%id186315%_
                       '1
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self186296%_
                       (make-hash-table-eq 'size: (##length _%in186317%_))
                       '2
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self186296%_
                       _%super186312%_
                       '3
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self186296%_
                       '#f
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self186296%_
                       '#f
                       '5
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self186296%_
                       _%path186316%_
                       '6
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self186296%_
                       _%in186317%_
                       '7
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self186296%_
                       _%e186318%_
                       '8
                       '#f
                       '#f)
                      '#!void)
                    (error '"struct-instance-init!: too many arguments for struct"
                           _%self186296%_
                           '8
                           (##structure-length _%self186296%_)))
                (##for-each
                 (lambda (_%g186319186321%_)
                   (gx#core-bind-weak-import!__%
                    _%g186319186321%_
                    _%self186296%_))
                 _%in186317%_))
              (if (##fx< '8 (##structure-length _%self186296%_))
                  (begin
                    (##unchecked-structure-set! _%self186296%_ '#f '1 '#f '#f)
                    (##unchecked-structure-set!
                     _%self186296%_
                     (make-hash-table-eq)
                     '2
                     '#f
                     '#f)
                    (##unchecked-structure-set!
                     _%self186296%_
                     _%super186312%_
                     '3
                     '#f
                     '#f)
                    (##unchecked-structure-set! _%self186296%_ '#f '4 '#f '#f)
                    (##unchecked-structure-set! _%self186296%_ '#f '5 '#f '#f)
                    (##unchecked-structure-set! _%self186296%_ '#f '6 '#f '#f)
                    (##unchecked-structure-set! _%self186296%_ '() '7 '#f '#f)
                    (##unchecked-structure-set! _%self186296%_ '#f '8 '#f '#f)
                    '#!void)
                  (error '"struct-instance-init!: too many arguments for struct"
                         _%self186296%_
                         '8
                         (##structure-length _%self186296%_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_%self186327%_ _%ctx186328%_)
        (let ((_%root186330%_ '#f))
          (gx#prelude-context:::init!__%
           _%self186327%_
           _%ctx186328%_
           _%root186330%_))))
    (define gx#prelude-context:::init!
      (lambda _g186547_
        (let ((_g186548_ (##length _g186547_)))
          (cond ((##fx= _g186548_ 2)
                 (apply gx#prelude-context:::init!__0 _g186547_))
                ((##fx= _g186548_ 3)
                 (apply gx#prelude-context:::init!__% _g186547_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g186547_))))))
    (__bind-method!__%
     gx#prelude-context::t
     ':init!
     gx#prelude-context:::init!
     '#f)
    (define gx#import-export-expander-init!
      (lambda (_%self186165%_ _%e186166%_)
        (if (##fx< '3 (##structure-length _%self186165%_))
            (begin
              (##unchecked-structure-set!
               _%self186165%_
               _%e186166%_
               '1
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self186165%_
               (gx#current-expander-context)
               '2
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self186165%_
               (##fx- (gx#current-expander-phi) '1)
               '3
               '#f
               '#f)
              '#!void)
            (error '"struct-instance-init!: too many arguments for struct"
                   _%self186165%_
                   '3
                   (##structure-length _%self186165%_)))))
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
      (lambda (_%g185791185794%_ _%g185792185796%_)
        (gx#core-apply-user-expander__%
         _%g185791185794%_
         _%g185792185796%_
         'apply-import-expander)))
    (__bind-method!__%
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_%g185662185665%_ _%g185663185667%_)
        (gx#core-apply-user-expander__%
         _%g185662185665%_
         _%g185663185667%_
         'apply-export-expander)))
    (__bind-method!__%
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_%ctx185533%_)
        (let* ((_%path185535%_
                (##structure-ref _%ctx185533%_ '7 gx#module-context::t '#f))
               (_%path185537%_
                (if (pair? _%path185535%_)
                    (##last _%path185535%_)
                    _%path185535%_)))
          (if (string? _%path185537%_) _%path185537%_ '#f))))
    (define gx#import-module__%
      (lambda (_%path185509%_ _%reload?185510%_ _%eval?185511%_)
        (let ((_%ctx185513%_
               ((gx#current-expander-module-import)
                _%path185509%_
                _%reload?185510%_)))
          (if (and _%ctx185513%_ _%eval?185511%_)
              (gx#eval-module _%ctx185513%_)
              '#!void)
          _%ctx185513%_)))
    (define gx#import-module__0
      (lambda (_%path185518%_)
        (let* ((_%reload?185520%_ '#f) (_%eval?185522%_ '#f))
          (gx#import-module__%
           _%path185518%_
           _%reload?185520%_
           _%eval?185522%_))))
    (define gx#import-module__1
      (lambda (_%path185524%_ _%reload?185525%_)
        (let ((_%eval?185527%_ '#f))
          (gx#import-module__%
           _%path185524%_
           _%reload?185525%_
           _%eval?185527%_))))
    (define gx#import-module
      (lambda _g186549_
        (let ((_g186550_ (##length _g186549_)))
          (cond ((##fx= _g186550_ 1) (apply gx#import-module__0 _g186549_))
                ((##fx= _g186550_ 2) (apply gx#import-module__1 _g186549_))
                ((##fx= _g186550_ 3) (apply gx#import-module__% _g186549_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g186549_))))))
    (define gx#eval-module
      (lambda (_%mod185506%_)
        ((gx#current-expander-module-eval) _%mod185506%_)))
    (define gx#core-eval-module
      (lambda (_%obj185485%_)
        (letrec ((_%force-e185487%_
                  (lambda (_%getf185501%_ _%e185502%_)
                    (call-with-parameters__1
                     (lambda ()
                       (call-with-parameters__1
                        (lambda () (force (_%getf185501%_ _%e185502%_)))
                        gx#current-expander-phi
                        '0))
                     gx#current-expander-context
                     _%e185502%_))))
          (let _%recur185489%_ ((_%e185491%_ _%obj185485%_))
            (if (##structure-instance-of? _%e185491%_ 'gx#module-context::t)
                (let ()
                  (let ((_%$e185494%_
                         (gx#core-context-prelude__% _%e185491%_)))
                    (if _%$e185494%_ (_%recur185489%_ _%$e185494%_) '#!void))
                  (_%force-e185487%_ gx#module-context-e _%e185491%_))
                (if (##structure-instance-of?
                     _%e185491%_
                     'gx#prelude-context::t)
                    (_%force-e185487%_ gx#prelude-context-e _%e185491%_)
                    (if (gx#stx-string? _%e185491%_)
                        (_%recur185489%_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _%e185491%_)))
                        (if (gx#core-library-module-path? _%e185491%_)
                            (_%recur185489%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%e185491%_)))
                            (error '"cannot eval module" _%obj185485%_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_%ctx185465%_)
        (let _%lp185467%_ ((_%e185469%_ _%ctx185465%_))
          (if (or (##structure-instance-of? _%e185469%_ 'gx#module-context::t)
                  (##structure-instance-of? _%e185469%_ 'gx#local-context::t))
              (_%lp185467%_ (##unchecked-structure-ref _%e185469%_ '3 '#f '#f))
              (if (##structure-instance-of? _%e185469%_ 'gx#prelude-context::t)
                  _%e185469%_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_%ctx185481%_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _%ctx185481%_))))
    (define gx#core-context-prelude
      (lambda _g186551_
        (let ((_g186552_ (##length _g186551_)))
          (cond ((##fx= _g186552_ 0)
                 (apply gx#core-context-prelude__0 _g186551_))
                ((##fx= _g186552_ 1)
                 (apply gx#core-context-prelude__% _g186551_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g186551_))))))
    (define gx#core-module->prelude-context
      (lambda (_%ctx185456%_)
        (let ((_%$e185458%_ (__hash-get gx#__module-registry _%ctx185456%_)))
          (if _%$e185458%_
              _%$e185458%_
              (let ((_%pre185462%_
                     (let ((__obj186542
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
                        __obj186542
                        _%ctx185456%_)
                       __obj186542)))
                (__hash-put! gx#__module-registry _%ctx185456%_ _%pre185462%_)
                _%pre185462%_)))))
    (define gx#core-import-module__%
      (lambda (_%rpath185324%_ _%reload?185325%_)
        (letrec ((_%import-source185327%_
                  (lambda (_%path185415%_)
                    (if (member _%path185415%_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _%path185415%_)
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
                                      (let ((_g186553_
                                             (gx#core-read-module
                                              _%path185415%_)))
                                        (begin
                                          (let ((_g186554_
                                                 (if (##values? _g186553_)
                                                     (##values-length
                                                      _g186553_)
                                                     1)))
                                            (if (not (##fx= _g186554_ 4))
                                                (error "Context expects 4 values"
                                                       _g186554_)))
                                          (let ((_%pre185423%_
                                                 (##values-ref _g186553_ 0))
                                                (_%id185424%_
                                                 (##values-ref _g186553_ 1))
                                                (_%ns185425%_
                                                 (##values-ref _g186553_ 2))
                                                (_%body185426%_
                                                 (##values-ref _g186553_ 3)))
                                            (let* ((_%prelude185436%_
                                                    (if (##structure-instance-of?
                                                         _%pre185423%_
                                                         'gx#prelude-context::t)
                                                        _%pre185423%_
                                                        (if (##structure-instance-of?
                                                             _%pre185423%_
                                                             'gx#module-context::t)
                                                            (gx#core-module->prelude-context
                                                             _%pre185423%_)
                                                            (if (string? _%pre185423%_)
                                                                (gx#core-module->prelude-context
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#core-import-module__0 _%pre185423%_))
                        (if (not _%pre185423%_)
                            (let ((_%$e185432%_
                                   (gx#current-expander-module-prelude)))
                              (if _%$e185432%_
                                  _%$e185432%_
                                  (let ((__obj186543
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
                                     __obj186543
                                     '#f)
                                    __obj186543)))
                            (error '"cannot import module; unknown prelude"
                                   _%rpath185324%_
                                   _%pre185423%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%ctx185438%_
                                                    (let ((__obj186544
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
                                                       __obj186544
                                                       _%id185424%_
                                                       _%prelude185436%_
                                                       _%ns185425%_
                                                       _%path185415%_)
                                                      __obj186544))
                                                   (_%body185440%_
                                                    (gx#core-expand-module-begin
                                                     _%body185426%_
                                                     _%ctx185438%_))
                                                   (_%body185442%_
                                                    (gx#core-quote-syntax__%
                                                     (gx#core-cons
                                                      '%#begin
                                                      _%body185440%_)
                                                     _%path185415%_
                                                     _%ctx185438%_
                                                     '())))
                                              (##unchecked-structure-set!
                                               _%ctx185438%_
                                               (__make-atomic-promise
                                                (lambda ()
                                                  (gx#eval-syntax*
                                                   _%body185442%_)))
                                               '10
                                               '#f
                                               '#f)
                                              (##unchecked-structure-set!
                                               _%ctx185438%_
                                               _%body185442%_
                                               '11
                                               '#f
                                               '#f)
                                              (__hash-put!
                                               gx#__module-registry
                                               _%path185415%_
                                               _%ctx185438%_)
                                              (__hash-put!
                                               gx#__module-registry
                                               _%id185424%_
                                               _%ctx185438%_)
                                              _%ctx185438%_)))))
                                    gx#current-export-expander-phi
                                    '#f))
                                 gx#current-import-expander-phi
                                 '#f))
                              gx#current-expander-path
                              (cons _%path185415%_
                                    (gx#current-expander-path))))
                           gx#current-expander-phi
                           '0))
                        gx#current-expander-marks
                        '()))
                     gx#current-expander-context
                     (gx#core-context-root__0))))
                 (_%import-submodule185328%_
                  (lambda (_%rpath185344%_)
                    (let* ((_%rpath185345185352%_ _%rpath185344%_)
                           (_%E185347185355%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%rpath185345185352%_
                                     '([origin . refs]))
                              '#!void))
                           (_%K185348185403%_
                            (lambda (_%refs185358%_ _%origin185359%_)
                              (let ((_%ctx185361%_
                                     (if _%origin185359%_
                                         (gx#core-import-module__%
                                          _%origin185359%_
                                          _%reload?185325%_)
                                         (gx#current-expander-context))))
                                (let _%lp185363%_ ((_%rest185365%_
                                                    _%refs185358%_)
                                                   (_%ctx185366%_
                                                    _%ctx185361%_))
                                  (let* ((_%rest185367185375%_ _%rest185365%_)
                                         (_%else185369185383%_
                                          (lambda () _%ctx185366%_))
                                         (_%K185371185391%_
                                          (lambda (_%rest185386%_ _%id185387%_)
                                            (let ((_%bind185389%_
                                                   (gx#resolve-identifier__%
                                                    _%id185387%_
                                                    '0
                                                    _%ctx185366%_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _%bind185389%_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _%bind185389%_
                                                         '5
                                                         '#f
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_%lp185363%_
                                                   _%rest185386%_
                                                   (##unchecked-structure-ref
                                                    _%bind185389%_
                                                    '5
                                                    '#f
                                                    '#f))
                                                  (error '"cannot import submodule; not bound as a module"
                                                         _%rpath185344%_
                                                         _%id185387%_
                                                         _%bind185389%_))))))
                                    (if (pair? _%rest185367185375%_)
                                        (let ((_%hd185372185394%_
                                               (##car _%rest185367185375%_))
                                              (_%tl185373185396%_
                                               (##cdr _%rest185367185375%_)))
                                          (let* ((_%id185399%_
                                                  _%hd185372185394%_)
                                                 (_%rest185401%_
                                                  _%tl185373185396%_))
                                            (_%K185371185391%_
                                             _%rest185401%_
                                             _%id185399%_)))
                                        (_%else185369185383%_))))))))
                      (if (pair? _%rpath185345185352%_)
                          (let ((_%hd185349185406%_
                                 (##car _%rpath185345185352%_))
                                (_%tl185350185408%_
                                 (##cdr _%rpath185345185352%_)))
                            (let* ((_%origin185411%_ _%hd185349185406%_)
                                   (_%refs185413%_ _%tl185350185408%_))
                              (_%K185348185403%_
                               _%refs185413%_
                               _%origin185411%_)))
                          (_%E185347185355%_))))))
          (let ((_%$e185330%_
                 (if (not _%reload?185325%_)
                     (__hash-get gx#__module-registry _%rpath185324%_)
                     '#f)))
            (if _%$e185330%_
                _%$e185330%_
                (if (list? _%rpath185324%_)
                    (_%import-submodule185328%_ _%rpath185324%_)
                    (if (gx#core-library-module-path? _%rpath185324%_)
                        (let ((_%ctx185335%_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _%rpath185324%_)
                                _%reload?185325%_)))
                          (__hash-put!
                           gx#__module-registry
                           _%rpath185324%_
                           _%ctx185335%_)
                          _%ctx185335%_)
                        (let* ((_%npath185338%_
                                (path-normalize _%rpath185324%_))
                               (_%$e185340%_
                                (if (not _%reload?185325%_)
                                    (__hash-get
                                     gx#__module-registry
                                     _%npath185338%_)
                                    '#f)))
                          (if _%$e185340%_
                              _%$e185340%_
                              (_%import-source185327%_
                               _%npath185338%_))))))))))
    (define gx#core-import-module__0
      (lambda (_%rpath185449%_)
        (let ((_%reload?185451%_ '#f))
          (gx#core-import-module__% _%rpath185449%_ _%reload?185451%_))))
    (define gx#core-import-module
      (lambda _g186555_
        (let ((_g186556_ (##length _g186555_)))
          (cond ((##fx= _g186556_ 1)
                 (apply gx#core-import-module__0 _g186555_))
                ((##fx= _g186556_ 2)
                 (apply gx#core-import-module__% _g186555_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g186555_))))))
    (define gx#core-read-module
      (lambda (_%path185306%_)
        (__with-catch
         (lambda (_%exn185308%_)
           (if (datum-parsing-exception? _%exn185308%_)
               (let ((_%pos185310%_
                      (datum-parsing-exception-filepos _%exn185308%_)))
                 (if (= _%pos185310%_ '0)
                     (gx#core-read-module/lang _%path185306%_)
                     (gx#raise-syntax-error
                      'read-module
                      '"error reading module"
                      _%path185306%_
                      (call-with-parameters__1
                       (lambda ()
                         (call-with-output-string
                          '""
                          (lambda (_%g185312185314%_)
                            (display-exception__%
                             _%exn185308%_
                             _%g185312185314%_))))
                       dump-stack-trace?
                       '#f)
                      (cons 'line:
                            (cons (##filepos-line _%pos185310%_)
                                  (cons 'col:
                                        (cons (##filepos-col _%pos185310%_)
                                              '())))))))
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _%path185306%_
                (call-with-parameters__1
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_%g185317185319%_)
                      (display-exception__% _%exn185308%_ _%g185317185319%_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _%path185306%_)))))
    (define gx#core-read-module/sexp
      (lambda (_%path185158%_)
        (let _%lp185160%_ ((_%body185162%_
                            (read-syntax-from-file _%path185158%_))
                           (_%pre185163%_ '#f)
                           (_%ns185164%_ '#f)
                           (_%pkg185165%_ '#f))
          (let* ((_%e185166185190%_ _%body185162%_)
                 (_%E185182185216%_
                  (lambda ()
                    (let ((_g186557_
                           (if _%pkg185165%_
                               (values _%pre185163%_
                                       _%ns185164%_
                                       _%pkg185165%_)
                               (gx#core-read-module-package
                                _%path185158%_
                                _%pre185163%_
                                _%ns185164%_))))
                      (begin
                        (let ((_g186558_
                               (if (##values? _g186557_)
                                   (##values-length _g186557_)
                                   1)))
                          (if (not (##fx= _g186558_ 3))
                              (error "Context expects 3 values" _g186558_)))
                        (let ((_%pre185194%_ (##values-ref _g186557_ 0))
                              (_%ns185195%_ (##values-ref _g186557_ 1))
                              (_%pkg185196%_ (##values-ref _g186557_ 2)))
                          (let* ((_%prelude185202%_
                                  (if (gx#core-bound-module-prelude?
                                       _%pre185194%_)
                                      (gx#syntax-local-e__0 _%pre185194%_)
                                      (if (gx#core-library-module-path?
                                           _%pre185194%_)
                                          (gx#core-resolve-library-module-path
                                           _%pre185194%_)
                                          (if (gx#stx-string? _%pre185194%_)
                                              (gx#core-resolve-module-path__%
                                               _%pre185194%_
                                               _%path185158%_)
                                              (gx#stx-e _%pre185194%_)))))
                                 (_%path-id185204%_
                                  (gx#core-module-path->namespace
                                   _%path185158%_))
                                 (_%pkg-id185206%_
                                  (if _%pkg185196%_
                                      (##string-append
                                       _%pkg185196%_
                                       '"/"
                                       _%path-id185204%_)
                                      _%path-id185204%_))
                                 (_%module-id185208%_
                                  (##string->symbol _%pkg-id185206%_))
                                 (_%module-ns185213%_
                                  (if (eq? _%ns185195%_ '#!void)
                                      '#f
                                      (let ((_%$e185210%_ _%ns185195%_))
                                        (if _%$e185210%_
                                            _%$e185210%_
                                            _%pkg-id185206%_)))))
                            (values _%prelude185202%_
                                    _%module-id185208%_
                                    _%module-ns185213%_
                                    _%body185162%_)))))))
                 (_%E185175185248%_
                  (lambda ()
                    (if (gx#stx-pair? _%e185166185190%_)
                        (let ((_%e185183185220%_
                               (gx#syntax-e _%e185166185190%_)))
                          (let ((_%hd185184185223%_ (##car _%e185183185220%_))
                                (_%tl185185185225%_ (##cdr _%e185183185220%_)))
                            (if (eq? (gx#stx-e _%hd185184185223%_) 'package:)
                                (if (gx#stx-pair? _%tl185185185225%_)
                                    (let ((_%e185186185228%_
                                           (gx#syntax-e _%tl185185185225%_)))
                                      (let ((_%hd185187185231%_
                                             (##car _%e185186185228%_))
                                            (_%tl185188185233%_
                                             (##cdr _%e185186185228%_)))
                                        (let* ((_%pkg185236%_
                                                _%hd185187185231%_)
                                               (_%rest185238%_
                                                _%tl185188185233%_)
                                               (_%pkg185246%_
                                                (if (gx#identifier?
                                                     _%pkg185236%_)
                                                    (symbol->string
                                                     (gx#stx-e _%pkg185236%_))
                                                    (if (or (gx#stx-string?
                                                             _%pkg185236%_)
                                                            (gx#stx-false?
                                                             _%pkg185236%_))
                                                        (gx#stx-e
                                                         _%pkg185236%_)
                                                        (gx#raise-syntax-error
                                                         'import
                                                         '"Bad syntax; Illegal package name"
                                                         _%pkg185236%_)))))
                                          (_%lp185160%_
                                           _%rest185238%_
                                           _%pre185163%_
                                           _%ns185164%_
                                           _%pkg185246%_))))
                                    (_%E185182185216%_))
                                (_%E185182185216%_))))
                        (_%E185182185216%_))))
                 (_%E185168185278%_
                  (lambda ()
                    (if (gx#stx-pair? _%e185166185190%_)
                        (let ((_%e185176185252%_
                               (gx#syntax-e _%e185166185190%_)))
                          (let ((_%hd185177185255%_ (##car _%e185176185252%_))
                                (_%tl185178185257%_ (##cdr _%e185176185252%_)))
                            (if (eq? (gx#stx-e _%hd185177185255%_) 'namespace:)
                                (if (gx#stx-pair? _%tl185178185257%_)
                                    (let ((_%e185179185260%_
                                           (gx#syntax-e _%tl185178185257%_)))
                                      (let ((_%hd185180185263%_
                                             (##car _%e185179185260%_))
                                            (_%tl185181185265%_
                                             (##cdr _%e185179185260%_)))
                                        (let* ((_%ns185268%_
                                                _%hd185180185263%_)
                                               (_%rest185270%_
                                                _%tl185181185265%_)
                                               (_%ns185276%_
                                                (if (gx#identifier?
                                                     _%ns185268%_)
                                                    (symbol->string
                                                     (gx#stx-e _%ns185268%_))
                                                    (if (gx#stx-string?
                                                         _%ns185268%_)
                                                        (gx#stx-e _%ns185268%_)
                                                        (if (gx#stx-false?
                                                             _%ns185268%_)
                                                            '#!void
                                                            (gx#raise-syntax-error
                                                             'import
                                                             '"Bad syntax; illegal namespace"
                                                             _%ns185268%_))))))
                                          (_%lp185160%_
                                           _%rest185270%_
                                           _%pre185163%_
                                           _%ns185276%_
                                           _%pkg185165%_))))
                                    (_%E185175185248%_))
                                (_%E185175185248%_))))
                        (_%E185175185248%_))))
                 (_%E185167185302%_
                  (lambda ()
                    (if (gx#stx-pair? _%e185166185190%_)
                        (let ((_%e185169185282%_
                               (gx#syntax-e _%e185166185190%_)))
                          (let ((_%hd185170185285%_ (##car _%e185169185282%_))
                                (_%tl185171185287%_ (##cdr _%e185169185282%_)))
                            (if (eq? (gx#stx-e _%hd185170185285%_) 'prelude:)
                                (if (gx#stx-pair? _%tl185171185287%_)
                                    (let ((_%e185172185290%_
                                           (gx#syntax-e _%tl185171185287%_)))
                                      (let ((_%hd185173185293%_
                                             (##car _%e185172185290%_))
                                            (_%tl185174185295%_
                                             (##cdr _%e185172185290%_)))
                                        (let* ((_%prelude185298%_
                                                _%hd185173185293%_)
                                               (_%rest185300%_
                                                _%tl185174185295%_))
                                          (_%lp185160%_
                                           _%rest185300%_
                                           _%prelude185298%_
                                           _%ns185164%_
                                           _%pkg185165%_))))
                                    (_%E185168185278%_))
                                (_%E185168185278%_))))
                        (_%E185168185278%_)))))
            (_%E185167185302%_)))))
    (define gx#core-read-module/lang
      (lambda (_%path184979%_)
        (letrec ((_%default-read-module-body184981%_
                  (lambda (_%inp185150%_)
                    (let _%lp185152%_ ((_%body185154%_ '()))
                      (let ((_%next185156%_ (read-syntax__% _%inp185150%_)))
                        (if (eof-object? _%next185156%_)
                            (reverse _%body185154%_)
                            (_%lp185152%_
                             (cons _%next185156%_ _%body185154%_)))))))
                 (_%read-body184982%_
                  (lambda (_%inp185067%_
                           _%pre185068%_
                           _%ns185069%_
                           _%pkg185070%_
                           _%args185071%_)
                    (let ((_g186559_
                           (if _%pkg185070%_
                               (values _%pre185068%_
                                       _%ns185069%_
                                       _%pkg185070%_)
                               (gx#core-read-module-package
                                _%path184979%_
                                _%pre185068%_
                                _%ns185069%_))))
                      (begin
                        (let ((_g186560_
                               (if (##values? _g186559_)
                                   (##values-length _g186559_)
                                   1)))
                          (if (not (##fx= _g186560_ 3))
                              (error "Context expects 3 values" _g186560_)))
                        (let ((_%pre185073%_ (##values-ref _g186559_ 0))
                              (_%ns185074%_ (##values-ref _g186559_ 1))
                              (_%pkg185075%_ (##values-ref _g186559_ 2)))
                          (let* ((_%prelude185077%_
                                  (gx#import-module__0 _%pre185073%_))
                                 (_%read-module-body185132%_
                                  (let ((_%$e185123%_
                                         (__find (lambda (_%e185078185080%_)
                                                   (let* ((_%e185078185082185092%_
                                                           _%e185078185080%_)
                                                          (_%else185084185100%_
                                                           (lambda () '#f))
                                                          (_%K185086185104%_
                                                           (lambda () '#t)))
                                                     (if (##structure-direct-instance-of?
                                                          _%e185078185082185092%_
                                                          'gx#module-export::t)
                                                         (let* ((_%e185087185107%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##unchecked-structure-ref
                          _%e185078185082185092%_
                          '1
                          '#f
                          '#f))
                        (_%e185088185110%_
                         (##unchecked-structure-ref
                          _%e185078185082185092%_
                          '2
                          '#f
                          '#f))
                        (_%e185089185113%_
                         (##unchecked-structure-ref
                          _%e185078185082185092%_
                          '3
                          '#f
                          '#f)))
                   (if (##eq? _%e185089185113%_ '1)
                       (let ((_%e185090185116%_
                              (##unchecked-structure-ref
                               _%e185078185082185092%_
                               '4
                               '#f
                               '#f)))
                         (if ((lambda (_%g185118185120%_)
                                (eq? _%g185118185120%_ 'read-module-body))
                              _%e185090185116%_)
                             (_%K185086185104%_)
                             (_%else185084185100%_)))
                       (_%else185084185100%_)))
                 (_%else185084185100%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (##unchecked-structure-ref
                                                  _%prelude185077%_
                                                  '9
                                                  '#f
                                                  '#f))))
                                    (if _%$e185123%_
                                        ((lambda (_%xport185126%_)
                                           (let ((_%proc185129%_
                                                  (__with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _%xport185126%_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _%proc185129%_)
                                                 _%proc185129%_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _%path184979%_
                                                  _%pre185073%_
                                                  _%proc185129%_))))
                                         _%$e185123%_)
                                        _%default-read-module-body184981%_)))
                                 (_%path-id185134%_
                                  (gx#core-module-path->namespace
                                   _%path184979%_))
                                 (_%pkg-id185136%_
                                  (if _%pkg185075%_
                                      (##string-append
                                       _%pkg185075%_
                                       '"/"
                                       _%path-id185134%_)
                                      _%path-id185134%_))
                                 (_%module-id185138%_
                                  (##string->symbol _%pkg-id185136%_))
                                 (_%module-ns185143%_
                                  (let ((_%$e185140%_ _%ns185074%_))
                                    (if _%$e185140%_
                                        _%$e185140%_
                                        _%pkg-id185136%_)))
                                 (_%body185147%_
                                  (call-with-parameters__1
                                   (lambda ()
                                     (call-with-parameters__1
                                      (lambda ()
                                        (_%read-module-body185132%_
                                         _%inp185067%_))
                                      gx#current-module-reader-args
                                      _%args185071%_))
                                   gx#current-module-reader-path
                                   _%path184979%_)))
                            (values _%prelude185077%_
                                    _%module-id185138%_
                                    _%module-ns185143%_
                                    _%body185147%_)))))))
                 (_%string-e184983%_
                  (lambda (_%obj185061%_ _%what185062%_)
                    (if (string? _%obj185061%_)
                        _%obj185061%_
                        (if (symbol? _%obj185061%_)
                            (##symbol->string _%obj185061%_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _%what185062%_)
                             _%path184979%_
                             _%obj185061%_)))))
                 (_%read-lang-args184984%_
                  (lambda (_%inp185016%_ _%args185017%_)
                    (let* ((_%args185018185026%_ _%args185017%_)
                           (_%else185020185034%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _%path184979%_)))
                           (_%K185022185049%_
                            (lambda (_%args185037%_ _%prelude185038%_)
                              (let* ((_%pkg185040%_
                                      (pgetq__0 'package: _%args185037%_))
                                     (_%pkg185042%_
                                      (if _%pkg185040%_
                                          (_%string-e184983%_
                                           _%pkg185040%_
                                           '"package")
                                          '#f))
                                     (_%ns185044%_
                                      (pgetq__0 'namespace: _%args185037%_))
                                     (_%ns185046%_
                                      (if _%ns185044%_
                                          (_%string-e184983%_
                                           _%ns185044%_
                                           '"namespace")
                                          '#f)))
                                (_%read-body184982%_
                                 _%inp185016%_
                                 _%prelude185038%_
                                 _%ns185046%_
                                 _%pkg185042%_
                                 _%args185037%_)))))
                      (if (pair? _%args185018185026%_)
                          (let ((_%hd185023185052%_
                                 (##car _%args185018185026%_))
                                (_%tl185024185054%_
                                 (##cdr _%args185018185026%_)))
                            (let* ((_%prelude185057%_ _%hd185023185052%_)
                                   (_%args185059%_ _%tl185024185054%_))
                              (_%K185022185049%_
                               _%args185059%_
                               _%prelude185057%_)))
                          (_%else185020185034%_)))))
                 (_%read-lang184985%_
                  (lambda (_%inp184990%_)
                    (let* ((_%head184992%_ (read-line _%inp184990%_))
                           (_%$e184994%_
                            (string-index__0 _%head184992%_ '#\space)))
                      (if _%$e184994%_
                          ((lambda (_%ix184997%_)
                             (let ((_%lang184999%_
                                    (substring
                                     _%head184992%_
                                     '0
                                     _%ix184997%_)))
                               (if (equal? _%lang184999%_ '"#lang")
                                   (let* ((_%rest185001%_
                                           (substring
                                            _%head184992%_
                                            (##fx+ _%ix184997%_ '1)
                                            (string-length _%head184992%_)))
                                          (_%args185012%_
                                           (__with-catch
                                            (lambda (_%g185002185004%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _%path184979%_
                                               _%g185002185004%_))
                                            (lambda ()
                                              (call-with-input-string
                                               _%rest185001%_
                                               (lambda (_%g185007185009%_)
                                                 (read-all
                                                  _%g185007185009%_
                                                  read)))))))
                                     (_%read-lang-args184984%_
                                      _%inp184990%_
                                      _%args185012%_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _%path184979%_))))
                           _%$e184994%_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _%path184979%_)))))
                 (_%read-e184986%_
                  (lambda (_%inp184988%_)
                    (if (eq? (peek-char _%inp184988%_) '#\#)
                        (_%read-lang184985%_ _%inp184988%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _%path184979%_)))))
          (gx#call-with-input-source-file _%path184979%_ _%read-e184986%_))))
    (define gx#core-read-module-package
      (lambda (_%path184927%_ _%pre184928%_ _%ns184929%_)
        (letrec ((_%string-e184931%_
                  (lambda (_%e184974%_)
                    (if (symbol? _%e184974%_)
                        (##symbol->string _%e184974%_)
                        (if (string? _%e184974%_)
                            _%e184974%_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%e184974%_))))))
          (let _%lp184933%_ ((_%dir184935%_ (path-directory _%path184927%_))
                             (_%pkg-path184936%_ '()))
            (let ((_%gerbil.pkg184938%_
                   (path-expand '"gerbil.pkg" _%dir184935%_)))
              (if (##file-exists? _%gerbil.pkg184938%_)
                  (let ((_%plist184940%_
                         (gx#core-library-package-plist__% _%dir184935%_ '#t)))
                    (if (null? _%plist184940%_)
                        (let ((_%pkg184943%_
                               (if (null? _%pkg-path184936%_)
                                   '#f
                                   (string-join _%pkg-path184936%_ '"/"))))
                          (values _%pre184928%_ _%ns184929%_ _%pkg184943%_))
                        (if (list? _%plist184940%_)
                            (let* ((_%root184946%_
                                    (pgetq__0 'package: _%plist184940%_))
                                   (_%pkg184950%_
                                    (let ((_%pkg-path184948%_
                                           (if _%root184946%_
                                               (cons (_%string-e184931%_
                                                      _%root184946%_)
                                                     _%pkg-path184936%_)
                                               _%pkg-path184936%_)))
                                      (if (null? _%pkg-path184948%_)
                                          '#f
                                          (string-join
                                           _%pkg-path184948%_
                                           '"/"))))
                                   (_%ns184957%_
                                    (let ((_%ns184955%_
                                           (let ((_%$e184952%_ _%ns184929%_))
                                             (if _%$e184952%_
                                                 _%$e184952%_
                                                 (pgetq__0
                                                  'namespace:
                                                  _%plist184940%_)))))
                                      (if _%ns184955%_
                                          (_%string-e184931%_ _%ns184955%_)
                                          '#f)))
                                   (_%pre184962%_
                                    (let ((_%$e184959%_ _%pre184928%_))
                                      (if _%$e184959%_
                                          _%$e184959%_
                                          (pgetq__0
                                           'prelude:
                                           _%plist184940%_)))))
                              (values _%pre184962%_
                                      _%ns184957%_
                                      _%pkg184950%_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%plist184940%_))))
                  (let ((_%dir*184966%_
                         (path-strip-trailing-directory-separator
                          _%dir184935%_)))
                    (if (or (__string-empty? _%dir*184966%_)
                            (equal? _%dir184935%_ _%dir*184966%_))
                        (values _%pre184928%_ _%ns184929%_ '#f)
                        (let ((_%xpath184971%_
                               (path-strip-directory _%dir*184966%_))
                              (_%xdir184972%_ (path-directory _%dir*184966%_)))
                          (_%lp184933%_
                           _%xdir184972%_
                           (cons _%xpath184971%_ _%pkg-path184936%_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_%path184925%_)
        (path-strip-extension (path-strip-directory _%path184925%_))))
    (define gx#core-module-path->id
      (lambda (_%path184923%_)
        (##string->symbol (gx#core-module-path->namespace _%path184923%_))))
    (define gx#core-resolve-module-path__%
      (lambda (_%stx-path184902%_ _%rel184903%_)
        (let* ((_%path184905%_ (gx#stx-e _%stx-path184902%_))
               (_%path184907%_
                (if (__string-empty? (path-extension _%path184905%_))
                    (##string-append _%path184905%_ '".ss")
                    _%path184905%_)))
          (gx#core-resolve-path__%
           _%path184907%_
           (let ((_%$e184910%_ (gx#stx-source _%stx-path184902%_)))
             (if _%$e184910%_ _%$e184910%_ _%rel184903%_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_%stx-path184916%_)
        (let ((_%rel184918%_ '#f))
          (gx#core-resolve-module-path__% _%stx-path184916%_ _%rel184918%_))))
    (define gx#core-resolve-module-path
      (lambda _g186561_
        (let ((_g186562_ (##length _g186561_)))
          (cond ((##fx= _g186562_ 1)
                 (apply gx#core-resolve-module-path__0 _g186561_))
                ((##fx= _g186562_ 2)
                 (apply gx#core-resolve-module-path__% _g186561_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g186561_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_%libpath184787%_)
        (let* ((_%spath184789%_ (symbol->string (gx#stx-e _%libpath184787%_)))
               (_%spath184791%_
                (substring
                 _%spath184789%_
                 '1
                 (##string-length _%spath184789%_)))
               (_%ext184793%_ (path-extension _%spath184791%_))
               (_%ssi184795%_
                (if (__string-empty? _%ext184793%_)
                    (##string-append _%spath184791%_ '".ssi")
                    (##string-append
                     (path-strip-extension _%spath184791%_)
                     '".ssi")))
               (_%srcs184799%_
                (if (__string-empty? _%ext184793%_)
                    (##map (lambda (_%ext184797%_)
                             (string-append _%spath184791%_ _%ext184797%_))
                           '(".ss" ".sld" ".scm"))
                    (cons _%spath184791%_ '()))))
          (let _%lp184802%_ ((_%rest184804%_ (load-path)))
            (let* ((_%rest184805184814%_ _%rest184804%_)
                   (_%E184808184818%_
                    (lambda ()
                      (error '"No clause matching"
                             _%rest184805184814%_
                             '([dir . rest])
                             '([]))
                      '#!void)))
              (let ((_%K184810184889%_
                     (lambda (_%rest184829%_ _%dir184830%_)
                       (letrec ((_%resolve184832%_
                                 (lambda (_%ssi184845%_ _%srcs184846%_)
                                   (let ((_%compiled-path184848%_
                                          (path-expand
                                           _%ssi184845%_
                                           _%dir184830%_)))
                                     (if (##file-exists?
                                          _%compiled-path184848%_)
                                         (path-normalize
                                          _%compiled-path184848%_)
                                         (let _%lpr184850%_ ((_%rest-src184852%_
                                                              _%srcs184846%_))
                                           (let* ((_%rest-src184853184861%_
                                                   _%rest-src184852%_)
                                                  (_%else184855184869%_
                                                   (lambda ()
                                                     (_%lp184802%_
                                                      _%rest184829%_)))
                                                  (_%K184857184877%_
                                                   (lambda (_%rest-src184872%_
                                                            _%src184873%_)
                                                     (let ((_%src-path184875%_
                                                            (path-expand
                                                             _%src184873%_
                                                             _%dir184830%_)))
                                                       (if (##file-exists?
                                                            _%src-path184875%_)
                                                           (path-normalize
                                                            _%src-path184875%_)
                                                           (_%lpr184850%_
                                                            _%rest-src184872%_))))))
                                             (if (pair? _%rest-src184853184861%_)
                                                 (let ((_%hd184858184880%_
                                                        (##car _%rest-src184853184861%_))
                                                       (_%tl184859184882%_
                                                        (##cdr _%rest-src184853184861%_)))
                                                   (let* ((_%src184885%_
                                                           _%hd184858184880%_)
                                                          (_%rest-src184887%_
                                                           _%tl184859184882%_))
                                                     (_%K184857184877%_
                                                      _%rest-src184887%_
                                                      _%src184885%_)))
                                                 (_%else184855184869%_)))))))))
                         (let ((_%$e184834%_
                                (gx#core-library-package-path-prefix
                                 _%dir184830%_)))
                           (if _%$e184834%_
                               ((lambda (_%prefix184837%_)
                                  (if (string-prefix?
                                       _%prefix184837%_
                                       _%spath184791%_)
                                      (let ((_%ssi184841%_
                                             (substring
                                              _%ssi184795%_
                                              (string-length _%prefix184837%_)
                                              (##string-length _%ssi184795%_)))
                                            (_%srcs184842%_
                                             (##map (lambda (_%src184839%_)
                                                      (substring
                                                       _%src184839%_
                                                       (string-length
                                                        _%prefix184837%_)
                                                       (string-length
                                                        _%src184839%_)))
                                                    _%srcs184799%_)))
                                        (_%resolve184832%_
                                         _%ssi184841%_
                                         _%srcs184842%_))
                                      (_%lp184802%_ _%rest184829%_)))
                                _%$e184834%_)
                               (_%resolve184832%_
                                _%ssi184795%_
                                _%srcs184799%_))))))
                    (_%K184809184823%_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"cannot find library module"
                        _%libpath184787%_))))
                (let ((_%try-match184807184826%_
                       (lambda ()
                         (if (null? _%rest184805184814%_)
                             (_%K184809184823%_)
                             (_%E184808184818%_)))))
                  (if (pair? _%rest184805184814%_)
                      (let ((_%tl184812184894%_ (##cdr _%rest184805184814%_))
                            (_%hd184811184892%_ (##car _%rest184805184814%_)))
                        (let ((_%dir184897%_ _%hd184811184892%_)
                              (_%rest184899%_ _%tl184812184894%_))
                          (_%K184810184889%_ _%rest184899%_ _%dir184897%_)))
                      (_%try-match184807184826%_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_%modpath184755%_)
        (letrec ((_%resolve184757%_
                  (lambda (_%path184778%_ _%base184779%_)
                    (let ((_%$e184781%_
                           (string-rindex__0 _%base184779%_ '#\/)))
                      (if _%$e184781%_
                          ((lambda (_%idx184784%_)
                             (gx#core-resolve-library-module-path
                              (##string->symbol
                               (string-append
                                '":"
                                (substring _%base184779%_ '0 _%idx184784%_)
                                '"/"
                                _%path184778%_))))
                           _%$e184781%_)
                          (gx#core-resolve-library-module-path
                           (##string->symbol
                            (string-append '":" _%path184778%_))))))))
          (let ((_%spath184759%_ (symbol->string (gx#stx-e _%modpath184755%_)))
                (_%mod184760%_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _%mod184760%_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"cannot resolve relative module path; not in module context"
                 _%modpath184755%_))
            (let ((_%mpath184762%_
                   (symbol->string
                    (##structure-ref
                     _%mod184760%_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _%lp184764%_ ((_%spath184766%_ _%spath184759%_)
                                 (_%mpath184767%_ _%mpath184762%_))
                (if (string-prefix? '"../" _%spath184766%_)
                    (let ((_%$e184770%_
                           (string-rindex__0 _%mpath184767%_ '#\/)))
                      (if _%$e184770%_
                          ((lambda (_%idx184773%_)
                             (_%lp184764%_
                              (substring
                               _%spath184766%_
                               '3
                               (string-length _%spath184766%_))
                              (substring _%mpath184767%_ '0 _%idx184773%_)))
                           _%$e184770%_)
                          (gx#raise-syntax-error
                           '#f
                           '"cannot resolve relative module path; illegal traversal"
                           _%modpath184755%_)))
                    (if (string-prefix? '"./" _%spath184766%_)
                        (_%lp184764%_
                         (substring
                          _%spath184766%_
                          '2
                          (string-length _%spath184766%_))
                         _%mpath184767%_)
                        (_%resolve184757%_
                         _%spath184766%_
                         _%mpath184767%_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_%dir184747%_)
        (let ((_%$e184749%_
               (pgetq__0
                'package:
                (gx#core-library-package-plist__0 _%dir184747%_))))
          (if _%$e184749%_
              ((lambda (_%pkg184752%_)
                 (##string-append (symbol->string _%pkg184752%_) '"/"))
               _%$e184749%_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_%dir184717%_ _%exists?184718%_)
        (let ((_%$e184720%_ (__hash-get gx#__module-pkg-cache _%dir184717%_)))
          (if _%$e184720%_
              _%$e184720%_
              (let* ((_%gerbil.pkg184724%_
                      (path-expand '"gerbil.pkg" _%dir184717%_))
                     (_%plist184734%_
                      (if (or _%exists?184718%_
                              (##file-exists? _%gerbil.pkg184724%_))
                          (let ((_%e184729%_
                                 (gx#call-with-input-source-file
                                  _%gerbil.pkg184724%_
                                  read)))
                            (if (eof-object? _%e184729%_)
                                '()
                                (if (list? _%e184729%_)
                                    _%e184729%_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _%gerbil.pkg184724%_
                                     _%e184729%_))))
                          '())))
                (__hash-put!
                 gx#__module-pkg-cache
                 _%dir184717%_
                 _%plist184734%_)
                _%plist184734%_)))))
    (define gx#core-library-package-plist__0
      (lambda (_%dir184740%_)
        (let ((_%exists?184742%_ '#f))
          (gx#core-library-package-plist__% _%dir184740%_ _%exists?184742%_))))
    (define gx#core-library-package-plist
      (lambda _g186563_
        (let ((_g186564_ (##length _g186563_)))
          (cond ((##fx= _g186564_ 1)
                 (apply gx#core-library-package-plist__0 _g186563_))
                ((##fx= _g186564_ 2)
                 (apply gx#core-library-package-plist__% _g186563_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g186563_))))))
    (define gx#core-library-module-path?
      (lambda (_%stx184714%_)
        (gx#core-special-module-path? _%stx184714%_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_%stx184712%_)
        (gx#core-special-module-path? _%stx184712%_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_%stx184707%_ _%char184708%_)
        (if (gx#identifier? _%stx184707%_)
            (if (interned-symbol? (gx#stx-e _%stx184707%_))
                (let ((_%str184710%_
                       (symbol->string (gx#stx-e _%stx184707%_))))
                  (if (##fx> (##string-length _%str184710%_) '1)
                      (eq? (string-ref _%str184710%_ '0) _%char184708%_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_%stx184701%_)
        (gx#core-bound-identifier?__%
         _%stx184701%_
         (lambda (_%g184702184704%_)
           (gx#expander-binding?__% _%g184702184704%_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_%stx184695%_)
        (gx#core-bound-identifier?__%
         _%stx184695%_
         (lambda (_%g184696184698%_)
           (gx#expander-binding?__% _%g184696184698%_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_%stx184682%_)
        (letrec ((_%module-prelude?184684%_
                  (lambda (_%e184690%_)
                    (let ((_%$e184692%_
                           (##structure-instance-of?
                            _%e184690%_
                            'gx#module-context::t)))
                      (if _%$e184692%_
                          _%$e184692%_
                          (##structure-instance-of?
                           _%e184690%_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _%stx184682%_
           (lambda (_%g184685184687%_)
             (gx#expander-binding?__%
              _%g184685184687%_
              _%module-prelude?184684%_))))))
    (define gx#core-bind-import!__%
      (lambda (_%in184613%_ _%ctx184614%_ _%force-weak?184615%_)
        (let* ((_%in184616184625%_ _%in184613%_)
               (_%E184618184628%_
                (lambda ()
                  (error '"No clause matching"
                         _%in184616184625%_
                         '((module-import source key phi weak?)))
                  '#!void))
               (_%K184619184641%_
                (lambda (_%weak?184631%_
                         _%phi184632%_
                         _%key184633%_
                         _%source184634%_)
                  (gx#core-bind!__%
                   _%key184633%_
                   (let* ((_%e184636%_
                           (gx#core-resolve-module-export _%source184634%_))
                          (__obj186545
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
                      __obj186545
                      (##unchecked-structure-ref _%e184636%_ '1 '#f '#f)
                      _%key184633%_
                      _%phi184632%_
                      _%e184636%_
                      (##unchecked-structure-ref _%source184634%_ '1 '#f '#f)
                      (let ((_%$e184638%_ _%force-weak?184615%_))
                        (if _%$e184638%_ _%$e184638%_ _%weak?184631%_)))
                     __obj186545)
                   gx#core-context-rebind?
                   _%phi184632%_
                   _%ctx184614%_))))
          (if (##structure-direct-instance-of?
               _%in184616184625%_
               'gx#module-import::t)
              (let* ((_%e184620184644%_
                      (##unchecked-structure-ref
                       _%in184616184625%_
                       '1
                       '#f
                       '#f))
                     (_%source184647%_ _%e184620184644%_)
                     (_%e184621184649%_
                      (##unchecked-structure-ref
                       _%in184616184625%_
                       '2
                       '#f
                       '#f))
                     (_%key184652%_ _%e184621184649%_)
                     (_%e184622184654%_
                      (##unchecked-structure-ref
                       _%in184616184625%_
                       '3
                       '#f
                       '#f))
                     (_%phi184657%_ _%e184622184654%_)
                     (_%e184623184659%_
                      (##unchecked-structure-ref
                       _%in184616184625%_
                       '4
                       '#f
                       '#f))
                     (_%weak?184662%_ _%e184623184659%_))
                (_%K184619184641%_
                 _%weak?184662%_
                 _%phi184657%_
                 _%key184652%_
                 _%source184647%_))
              (_%E184618184628%_)))))
    (define gx#core-bind-import!__0
      (lambda (_%in184667%_)
        (let* ((_%ctx184669%_ (gx#current-expander-context))
               (_%force-weak?184671%_ '#f))
          (gx#core-bind-import!__%
           _%in184667%_
           _%ctx184669%_
           _%force-weak?184671%_))))
    (define gx#core-bind-import!__1
      (lambda (_%in184673%_ _%ctx184674%_)
        (let ((_%force-weak?184676%_ '#f))
          (gx#core-bind-import!__%
           _%in184673%_
           _%ctx184674%_
           _%force-weak?184676%_))))
    (define gx#core-bind-import!
      (lambda _g186565_
        (let ((_g186566_ (##length _g186565_)))
          (cond ((##fx= _g186566_ 1) (apply gx#core-bind-import!__0 _g186565_))
                ((##fx= _g186566_ 2) (apply gx#core-bind-import!__1 _g186565_))
                ((##fx= _g186566_ 3) (apply gx#core-bind-import!__% _g186565_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g186565_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_%in184599%_ _%ctx184600%_)
        (gx#core-bind-import!__% _%in184599%_ _%ctx184600%_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_%in184605%_)
        (let ((_%ctx184607%_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _%in184605%_ _%ctx184607%_))))
    (define gx#core-bind-weak-import!
      (lambda _g186567_
        (let ((_g186568_ (##length _g186567_)))
          (cond ((##fx= _g186568_ 1)
                 (apply gx#core-bind-weak-import!__0 _g186567_))
                ((##fx= _g186568_ 2)
                 (apply gx#core-bind-weak-import!__% _g186567_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g186567_))))))
    (define gx#core-resolve-module-export
      (lambda (_%out184492%_)
        (letrec ((_%subst184494%_
                  (lambda (_%key184539%_)
                    (let* ((_%key184540184548%_ _%key184539%_)
                           (_%else184542184556%_ (lambda () _%key184539%_))
                           (_%K184544184586%_
                            (lambda (_%mark184559%_ _%id184560%_)
                              (let* ((_%mark184561184567%_ _%mark184559%_)
                                     (_%E184563184570%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark184561184567%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K184564184578%_
                                      (lambda (_%subst184573%_)
                                        (let ((_%$e184575%_
                                               (if _%subst184573%_
                                                   (hash-get
                                                    _%subst184573%_
                                                    _%id184560%_)
                                                   '#f)))
                                          (if _%$e184575%_
                                              _%$e184575%_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _%key184539%_))))))
                                (if (##structure-instance-of?
                                     _%mark184561184567%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e184565184581%_
                                            (##unchecked-structure-ref
                                             _%mark184561184567%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst184584%_ _%e184565184581%_))
                                      (_%K184564184578%_ _%subst184584%_))
                                    (_%E184563184570%_))))))
                      (if (pair? _%key184540184548%_)
                          (let ((_%hd184545184589%_
                                 (##car _%key184540184548%_))
                                (_%tl184546184591%_
                                 (##cdr _%key184540184548%_)))
                            (let* ((_%id184594%_ _%hd184545184589%_)
                                   (_%mark184596%_ _%tl184546184591%_))
                              (_%K184544184586%_ _%mark184596%_ _%id184594%_)))
                          (_%else184542184556%_))))))
          (let* ((_%out184495184505%_ _%out184492%_)
                 (_%E184497184508%_
                  (lambda ()
                    (error '"No clause matching"
                           _%out184495184505%_
                           '((module-export ctx key phi _ _)))
                    '#!void))
                 (_%K184498184515%_
                  (lambda (_%phi184511%_ _%key184512%_ _%ctx184513%_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _%ctx184513%_ _%phi184511%_)
                     (_%subst184494%_ _%key184512%_)))))
            (if (##structure-direct-instance-of?
                 _%out184495184505%_
                 'gx#module-export::t)
                (let* ((_%e184499184518%_
                        (##unchecked-structure-ref
                         _%out184495184505%_
                         '1
                         '#f
                         '#f))
                       (_%ctx184521%_ _%e184499184518%_)
                       (_%e184500184523%_
                        (##unchecked-structure-ref
                         _%out184495184505%_
                         '2
                         '#f
                         '#f))
                       (_%key184526%_ _%e184500184523%_)
                       (_%e184501184528%_
                        (##unchecked-structure-ref
                         _%out184495184505%_
                         '3
                         '#f
                         '#f))
                       (_%phi184531%_ _%e184501184528%_)
                       (_%e184502184533%_
                        (##unchecked-structure-ref
                         _%out184495184505%_
                         '4
                         '#f
                         '#f))
                       (_%e184503184536%_
                        (##unchecked-structure-ref
                         _%out184495184505%_
                         '5
                         '#f
                         '#f)))
                  (_%K184498184515%_
                   _%phi184531%_
                   _%key184526%_
                   _%ctx184521%_))
                (_%E184497184508%_))))))
    (define gx#core-module-export->import__%
      (lambda (_%out184418%_ _%rename184419%_ _%dphi184420%_)
        (let* ((_%out184421184431%_ _%out184418%_)
               (_%E184423184434%_
                (lambda ()
                  (error '"No clause matching"
                         _%out184421184431%_
                         '((module-export ctx key phi name weak?)))
                  '#!void))
               (_%K184424184446%_
                (lambda (_%weak?184437%_
                         _%name184438%_
                         _%phi184439%_
                         _%key184440%_
                         _%ctx184441%_)
                  (##structure
                   gx#module-import::t
                   _%out184418%_
                   (let ((_%$e184443%_ _%rename184419%_))
                     (if _%$e184443%_ _%$e184443%_ _%name184438%_))
                   (fx+ _%phi184439%_ _%dphi184420%_)
                   _%weak?184437%_))))
          (if (##structure-direct-instance-of?
               _%out184421184431%_
               'gx#module-export::t)
              (let* ((_%e184425184449%_
                      (##unchecked-structure-ref
                       _%out184421184431%_
                       '1
                       '#f
                       '#f))
                     (_%ctx184452%_ _%e184425184449%_)
                     (_%e184426184454%_
                      (##unchecked-structure-ref
                       _%out184421184431%_
                       '2
                       '#f
                       '#f))
                     (_%key184457%_ _%e184426184454%_)
                     (_%e184427184459%_
                      (##unchecked-structure-ref
                       _%out184421184431%_
                       '3
                       '#f
                       '#f))
                     (_%phi184462%_ _%e184427184459%_)
                     (_%e184428184464%_
                      (##unchecked-structure-ref
                       _%out184421184431%_
                       '4
                       '#f
                       '#f))
                     (_%name184467%_ _%e184428184464%_)
                     (_%e184429184469%_
                      (##unchecked-structure-ref
                       _%out184421184431%_
                       '5
                       '#f
                       '#f))
                     (_%weak?184472%_ _%e184429184469%_))
                (_%K184424184446%_
                 _%weak?184472%_
                 _%name184467%_
                 _%phi184462%_
                 _%key184457%_
                 _%ctx184452%_))
              (_%E184423184434%_)))))
    (define gx#core-module-export->import__0
      (lambda (_%out184477%_)
        (let* ((_%rename184479%_ '#f) (_%dphi184481%_ '0))
          (gx#core-module-export->import__%
           _%out184477%_
           _%rename184479%_
           _%dphi184481%_))))
    (define gx#core-module-export->import__1
      (lambda (_%out184483%_ _%rename184484%_)
        (let ((_%dphi184486%_ '0))
          (gx#core-module-export->import__%
           _%out184483%_
           _%rename184484%_
           _%dphi184486%_))))
    (define gx#core-module-export->import
      (lambda _g186569_
        (let ((_g186570_ (##length _g186569_)))
          (cond ((##fx= _g186570_ 1)
                 (apply gx#core-module-export->import__0 _g186569_))
                ((##fx= _g186570_ 2)
                 (apply gx#core-module-export->import__1 _g186569_))
                ((##fx= _g186570_ 3)
                 (apply gx#core-module-export->import__% _g186569_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g186569_))))))
    (define gx#core-expand-module%
      (lambda (_%stx184317%_)
        (letrec ((_%make-context184319%_
                  (lambda (_%id184396%_)
                    (let* ((_%super184398%_ (gx#current-expander-context))
                           (_%bind-id184400%_ (gx#stx-e _%id184396%_))
                           (_%mod-id184402%_
                            (if (##structure-instance-of?
                                 _%super184398%_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##unchecked-structure-ref
                                  _%super184398%_
                                  '1
                                  '#f
                                  '#f)
                                 '"~"
                                 _%bind-id184400%_)
                                _%bind-id184400%_))
                           (_%ns184404%_ (symbol->string _%mod-id184402%_))
                           (_%path184414%_
                            (if (##structure-instance-of?
                                 _%super184398%_
                                 'gx#module-context::t)
                                (let ((_%path184406%_
                                       (##unchecked-structure-ref
                                        _%super184398%_
                                        '7
                                        '#f
                                        '#f)))
                                  (if (or (pair? _%path184406%_)
                                          (null? _%path184406%_))
                                      (cons _%bind-id184400%_ _%path184406%_)
                                      (if (not _%path184406%_)
                                          _%bind-id184400%_
                                          (cons _%bind-id184400%_
                                                (cons _%path184406%_ '())))))
                                _%bind-id184400%_))
                           (__obj186546
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
                       __obj186546
                       _%mod-id184402%_
                       _%super184398%_
                       _%ns184404%_
                       _%path184414%_)
                      __obj186546)))
                 (_%valid-module-id?184320%_
                  (lambda (_%id184371%_)
                    (let* ((_%str184373%_ (symbol->string _%id184371%_))
                           (_%len184375%_ (##string-length _%str184373%_)))
                      (if (##fx>= _%len184375%_ '1)
                          (let _%loop184378%_ ((_%index184380%_
                                                (##fx- (##string-length
                                                        _%str184373%_)
                                                       '1)))
                            (if (##fx>= _%index184380%_ '0)
                                (let ((_%c184382%_
                                       (string-ref
                                        _%str184373%_
                                        _%index184380%_)))
                                  (if (or (and (##char>=? _%c184382%_ '#\a)
                                               (##char<=? _%c184382%_ '#\z))
                                          (and (##char>=? _%c184382%_ '#\A)
                                               (##char<=? _%c184382%_ '#\Z))
                                          (and (##char>=? _%c184382%_ '#\0)
                                               (##char<=? _%c184382%_ '#\9))
                                          (##char=? _%c184382%_ '#\_)
                                          (##char=? _%c184382%_ '#\-))
                                      (_%loop184378%_
                                       (##fx- _%index184380%_ '1))
                                      '#f))
                                '#t))
                          '#f)))))
          (let* ((_%e184321184331%_ _%stx184317%_)
                 (_%E184323184335%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e184321184331%_)))
                 (_%E184322184367%_
                  (lambda ()
                    (if (gx#stx-pair? _%e184321184331%_)
                        (let ((_%e184324184339%_
                               (gx#syntax-e _%e184321184331%_)))
                          (let ((_%hd184325184342%_ (##car _%e184324184339%_))
                                (_%tl184326184344%_ (##cdr _%e184324184339%_)))
                            (if (gx#stx-pair? _%tl184326184344%_)
                                (let ((_%e184327184347%_
                                       (gx#syntax-e _%tl184326184344%_)))
                                  (let ((_%hd184328184350%_
                                         (##car _%e184327184347%_))
                                        (_%tl184329184352%_
                                         (##cdr _%e184327184347%_)))
                                    (let* ((_%id184355%_ _%hd184328184350%_)
                                           (_%body184357%_ _%tl184329184352%_))
                                      (if (and (gx#identifier? _%id184355%_)
                                               (gx#stx-list? _%body184357%_))
                                          (if (_%valid-module-id?184320%_
                                               (gx#stx-e
                                                (gx#datum->syntax__0 '#f 'id)))
                                              (let* ((_%ctx184359%_
                                                      (_%make-context184319%_
                                                       _%id184355%_))
                                                     (_%body184361%_
                                                      (gx#core-expand-module-begin
                                                       _%body184357%_
                                                       _%ctx184359%_))
                                                     (_%body184363%_
                                                      (gx#core-quote-syntax__1
                                                       (gx#core-cons
                                                        '%#begin
                                                        _%body184361%_)
                                                       (gx#stx-source
                                                        _%stx184317%_))))
                                                (##unchecked-structure-set!
                                                 _%ctx184359%_
                                                 (__make-atomic-promise
                                                  (lambda ()
                                                    (gx#eval-syntax*
                                                     _%body184363%_)))
                                                 '10
                                                 '#f
                                                 '#f)
                                                (##unchecked-structure-set!
                                                 _%ctx184359%_
                                                 _%body184363%_
                                                 '11
                                                 '#f
                                                 '#f)
                                                (gx#core-bind-syntax!__0
                                                 _%id184355%_
                                                 _%ctx184359%_)
                                                (gx#core-quote-syntax__1
                                                 (gx#core-list
                                                  '%#module
                                                  (gx#core-quote-syntax__0
                                                   _%id184355%_)
                                                  _%body184363%_)
                                                 (gx#stx-source
                                                  _%stx184317%_)))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"invalid module id; allowed characters are A-Z,a-z,0-9,_,-"
                                               _%stx184317%_
                                               (gx#datum->syntax__0 '#f 'id)))
                                          (_%E184323184335%_)))))
                                (_%E184323184335%_))))
                        (_%E184323184335%_)))))
            (_%E184322184367%_)))))
    (define gx#core-expand-module-begin
      (lambda (_%body184282%_ _%ctx184283%_)
        (call-with-parameters__1
         (lambda ()
           (call-with-parameters__1
            (lambda ()
              (gx#core-bind-feature!__1 'gerbil-module '#t)
              (let* ((_%stx184287%_
                      (gx#core-expand-head
                       (cons '%%begin-module _%body184282%_)))
                     (_%e184288184295%_ _%stx184287%_)
                     (_%E184290184299%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module body expansion"
                         _%stx184287%_)))
                     (_%E184289184313%_
                      (lambda ()
                        (if (gx#stx-pair? _%e184288184295%_)
                            (let ((_%e184291184303%_
                                   (gx#syntax-e _%e184288184295%_)))
                              (let ((_%hd184292184306%_
                                     (##car _%e184291184303%_))
                                    (_%tl184293184308%_
                                     (##cdr _%e184291184303%_)))
                                (if (and (gx#identifier? _%hd184292184306%_)
                                         (gx#core-identifier=?
                                          _%hd184292184306%_
                                          '%#begin-module))
                                    (let ((_%body184311%_ _%tl184293184308%_))
                                      (if (gx#sealed-syntax? _%stx184287%_)
                                          _%body184311%_
                                          (gx#core-expand-module-body
                                           _%body184311%_)))
                                    (_%E184290184299%_))))
                            (_%E184290184299%_)))))
                (_%E184289184313%_)))
            gx#current-expander-phi
            '0))
         gx#current-expander-context
         _%ctx184283%_)))
    (define gx#core-expand-module-body
      (lambda (_%body184078%_)
        (letrec ((_%expand-special184080%_
                  (lambda (_%hd184209%_ _%K184210%_ _%rest184211%_ _%r184212%_)
                    (let* ((_%e184213184230%_ _%hd184209%_)
                           (_%E184225184234%_
                            (lambda ()
                              (_%K184210%_
                               _%rest184211%_
                               (cons (gx#core-expand-top _%hd184209%_)
                                     _%r184212%_))))
                           (_%E184215184246%_
                            (lambda ()
                              (if (gx#stx-pair? _%e184213184230%_)
                                  (let ((_%e184226184238%_
                                         (gx#syntax-e _%e184213184230%_)))
                                    (let ((_%hd184227184241%_
                                           (##car _%e184226184238%_))
                                          (_%tl184228184243%_
                                           (##cdr _%e184226184238%_)))
                                      (if (and (gx#identifier?
                                                _%hd184227184241%_)
                                               (gx#core-identifier=?
                                                _%hd184227184241%_
                                                '%#export))
                                          (_%K184210%_
                                           _%rest184211%_
                                           (cons _%hd184209%_ _%r184212%_))
                                          (_%E184225184234%_))))
                                  (_%E184225184234%_))))
                           (_%E184214184278%_
                            (lambda ()
                              (if (gx#stx-pair? _%e184213184230%_)
                                  (let ((_%e184216184250%_
                                         (gx#syntax-e _%e184213184230%_)))
                                    (let ((_%hd184217184253%_
                                           (##car _%e184216184250%_))
                                          (_%tl184218184255%_
                                           (##cdr _%e184216184250%_)))
                                      (if (and (gx#identifier?
                                                _%hd184217184253%_)
                                               (gx#core-identifier=?
                                                _%hd184217184253%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl184218184255%_)
                                              (let ((_%e184219184258%_
                                                     (gx#syntax-e
                                                      _%tl184218184255%_)))
                                                (let ((_%hd184220184261%_
                                                       (##car _%e184219184258%_))
                                                      (_%tl184221184263%_
                                                       (##cdr _%e184219184258%_)))
                                                  (let ((_%hd-bind184266%_
                                                         _%hd184220184261%_))
                                                    (if (gx#stx-pair?
                                                         _%tl184221184263%_)
                                                        (let ((_%e184222184268%_
                                                               (gx#syntax-e
                                                                _%tl184221184263%_)))
                                                          (let ((_%hd184223184271%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e184222184268%_))
                        (_%tl184224184273%_ (##cdr _%e184222184268%_)))
                    (let ((_%expr184276%_ _%hd184223184271%_))
                      (if (gx#stx-null? _%tl184224184273%_)
                          (if (gx#core-bind-values? _%hd-bind184266%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind184266%_)
                                (_%K184210%_
                                 _%rest184211%_
                                 (cons _%hd184209%_ _%r184212%_)))
                              (_%E184215184246%_))
                          (_%E184215184246%_)))))
                (_%E184215184246%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E184215184246%_))
                                          (_%E184215184246%_))))
                                  (_%E184215184246%_)))))
                      (_%E184214184278%_))))
                 (_%expand-body184081%_
                  (lambda (_%rbody184083%_)
                    (let _%lp184085%_ ((_%rest184087%_ _%rbody184083%_)
                                       (_%body184088%_ '()))
                      (let* ((_%rest184089184097%_ _%rest184087%_)
                             (_%else184091184105%_ (lambda () _%body184088%_))
                             (_%K184093184197%_
                              (lambda (_%rest184108%_ _%hd184109%_)
                                (let* ((_%e184110184131%_ _%hd184109%_)
                                       (_%E184126184135%_
                                        (lambda ()
                                          (_%lp184085%_
                                           _%rest184108%_
                                           (cons (gx#core-expand-expression
                                                  _%hd184109%_)
                                                 _%body184088%_))))
                                       (_%E184122184149%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e184110184131%_)
                                              (let ((_%e184127184139%_
                                                     (gx#syntax-e
                                                      _%e184110184131%_)))
                                                (let ((_%hd184128184142%_
                                                       (##car _%e184127184139%_))
                                                      (_%tl184129184144%_
                                                       (##cdr _%e184127184139%_)))
                                                  (let ((_%form184147%_
                                                         _%hd184128184142%_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _%form184147%_
                                                         gx#special-form-binding?)
                                                        (_%lp184085%_
                                                         _%rest184108%_
                                                         (cons _%hd184109%_
                                                               _%body184088%_))
                                                        (_%E184126184135%_)))))
                                              (_%E184126184135%_))))
                                       (_%E184112184161%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e184110184131%_)
                                              (let ((_%e184123184153%_
                                                     (gx#syntax-e
                                                      _%e184110184131%_)))
                                                (let ((_%hd184124184156%_
                                                       (##car _%e184123184153%_))
                                                      (_%tl184125184158%_
                                                       (##cdr _%e184123184153%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd184124184156%_)
                                                           (gx#core-identifier=?
                                                            _%hd184124184156%_
                                                            '%#export))
                                                      (_%lp184085%_
                                                       _%rest184108%_
                                                       (cons (gx#core-expand-export%__0
                                                              _%hd184109%_)
                                                             _%body184088%_))
                                                      (_%E184122184149%_))))
                                              (_%E184122184149%_))))
                                       (_%E184111184193%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e184110184131%_)
                                              (let ((_%e184113184165%_
                                                     (gx#syntax-e
                                                      _%e184110184131%_)))
                                                (let ((_%hd184114184168%_
                                                       (##car _%e184113184165%_))
                                                      (_%tl184115184170%_
                                                       (##cdr _%e184113184165%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd184114184168%_)
                                                           (gx#core-identifier=?
                                                            _%hd184114184168%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl184115184170%_)
                                                          (let ((_%e184116184173%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl184115184170%_)))
                    (let ((_%hd184117184176%_ (##car _%e184116184173%_))
                          (_%tl184118184178%_ (##cdr _%e184116184173%_)))
                      (let ((_%hd-bind184181%_ _%hd184117184176%_))
                        (if (gx#stx-pair? _%tl184118184178%_)
                            (let ((_%e184119184183%_
                                   (gx#syntax-e _%tl184118184178%_)))
                              (let ((_%hd184120184186%_
                                     (##car _%e184119184183%_))
                                    (_%tl184121184188%_
                                     (##cdr _%e184119184183%_)))
                                (let ((_%expr184191%_ _%hd184120184186%_))
                                  (if (gx#stx-null? _%tl184121184188%_)
                                      (_%lp184085%_
                                       _%rest184108%_
                                       (cons (gx#core-quote-syntax__1
                                              (gx#core-list
                                               '%#define-values
                                               (gx#core-quote-bind-values
                                                _%hd-bind184181%_)
                                               (gx#core-expand-expression
                                                _%expr184191%_))
                                              (gx#stx-source _%hd184109%_))
                                             _%body184088%_))
                                      (_%E184112184161%_)))))
                            (_%E184112184161%_)))))
                  (_%E184112184161%_))
              (_%E184112184161%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E184112184161%_)))))
                                  (_%E184111184193%_)))))
                        (if (pair? _%rest184089184097%_)
                            (let ((_%hd184094184200%_
                                   (##car _%rest184089184097%_))
                                  (_%tl184095184202%_
                                   (##cdr _%rest184089184097%_)))
                              (let* ((_%hd184205%_ _%hd184094184200%_)
                                     (_%rest184207%_ _%tl184095184202%_))
                                (_%K184093184197%_
                                 _%rest184207%_
                                 _%hd184205%_)))
                            (_%else184091184105%_)))))))
          (_%expand-body184081%_
           (gx#core-expand-block__%
            (cons '%#begin-module _%body184078%_)
            _%expand-special184080%_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_%stx183919%_
               _%expanded?183920%_
               _%method183921%_
               _%current-phi183922%_
               _%expand1183923%_)
        (letrec ((_%K183925%_
                  (lambda (_%rest184045%_ _%r184046%_)
                    (let* ((_%e184047184054%_ _%rest184045%_)
                           (_%E184049184058%_ (lambda () _%r184046%_))
                           (_%E184048184074%_
                            (lambda ()
                              (if (gx#stx-pair? _%e184047184054%_)
                                  (let ((_%e184050184062%_
                                         (gx#syntax-e _%e184047184054%_)))
                                    (let ((_%hd184051184065%_
                                           (##car _%e184050184062%_))
                                          (_%tl184052184067%_
                                           (##cdr _%e184050184062%_)))
                                      (let* ((_%hd184070%_ _%hd184051184065%_)
                                             (_%rest184072%_
                                              _%tl184052184067%_))
                                        (_%step183926%_
                                         _%hd184070%_
                                         _%rest184072%_
                                         _%r184046%_))))
                                  (_%E184049184058%_)))))
                      (_%E184048184074%_))))
                 (_%step183926%_
                  (lambda (_%hd183959%_ _%rest183960%_ _%r183961%_)
                    (let* ((_%e183962183980%_ _%hd183959%_)
                           (_%E183975183984%_
                            (lambda ()
                              (if (_%expanded?183920%_ (gx#stx-e _%hd183959%_))
                                  (_%K183925%_
                                   _%rest183960%_
                                   (cons (gx#stx-e _%hd183959%_) _%r183961%_))
                                  (_%expand1183923%_
                                   _%hd183959%_
                                   _%K183925%_
                                   _%rest183960%_
                                   _%r183961%_))))
                           (_%E183971184000%_
                            (lambda ()
                              (if (gx#stx-pair? _%e183962183980%_)
                                  (let ((_%e183976183988%_
                                         (gx#syntax-e _%e183962183980%_)))
                                    (let ((_%hd183977183991%_
                                           (##car _%e183976183988%_))
                                          (_%tl183978183993%_
                                           (##cdr _%e183976183988%_)))
                                      (let* ((_%macro183996%_
                                              _%hd183977183991%_)
                                             (_%body183998%_
                                              _%tl183978183993%_))
                                        (if (gx#core-bound-identifier?__%
                                             _%macro183996%_
                                             gx#syntax-binding?)
                                            (_%K183925%_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _%macro183996%_)
                                                    _%hd183959%_
                                                    _%method183921%_)
                                                   _%rest183960%_)
                                             _%r183961%_)
                                            (_%E183975183984%_)))))
                                  (_%E183975183984%_))))
                           (_%E183964184014%_
                            (lambda ()
                              (if (gx#stx-pair? _%e183962183980%_)
                                  (let ((_%e183972184004%_
                                         (gx#syntax-e _%e183962183980%_)))
                                    (let ((_%hd183973184007%_
                                           (##car _%e183972184004%_))
                                          (_%tl183974184009%_
                                           (##cdr _%e183972184004%_)))
                                      (if (eq? (gx#stx-e _%hd183973184007%_)
                                               'begin:)
                                          (let ((_%body184012%_
                                                 _%tl183974184009%_))
                                            (_%K183925%_
                                             (gx#stx-foldr
                                              cons
                                              _%rest183960%_
                                              _%body184012%_)
                                             _%r183961%_))
                                          (_%E183971184000%_))))
                                  (_%E183971184000%_))))
                           (_%E183963184041%_
                            (lambda ()
                              (if (gx#stx-pair? _%e183962183980%_)
                                  (let ((_%e183965184018%_
                                         (gx#syntax-e _%e183962183980%_)))
                                    (let ((_%hd183966184021%_
                                           (##car _%e183965184018%_))
                                          (_%tl183967184023%_
                                           (##cdr _%e183965184018%_)))
                                      (if (eq? (gx#stx-e _%hd183966184021%_)
                                               'phi:)
                                          (if (gx#stx-pair? _%tl183967184023%_)
                                              (let ((_%e183968184026%_
                                                     (gx#syntax-e
                                                      _%tl183967184023%_)))
                                                (let ((_%hd183969184029%_
                                                       (##car _%e183968184026%_))
                                                      (_%tl183970184031%_
                                                       (##cdr _%e183968184026%_)))
                                                  (let* ((_%dphi184034%_
                                                          _%hd183969184029%_)
                                                         (_%body184036%_
                                                          _%tl183970184031%_))
                                                    (if (gx#stx-fixnum?
                                                         _%dphi184034%_)
                                                        (let ((_%rbody184039%_
                                                               (call-with-parameters__1
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_%K183925%_ _%body184036%_ '()))
                        _%current-phi183922%_
                        (fx+ (gx#stx-e _%dphi184034%_)
                             (_%current-phi183922%_)))))
                  (_%K183925%_
                   _%rest183960%_
                   (foldr__0 cons _%r183961%_ _%rbody184039%_)))
                (_%E183964184014%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E183964184014%_))
                                          (_%E183964184014%_))))
                                  (_%E183964184014%_)))))
                      (_%E183963184041%_)))))
          (let* ((_%e183927183934%_ _%stx183919%_)
                 (_%E183929183938%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e183927183934%_)))
                 (_%E183928183955%_
                  (lambda ()
                    (if (gx#stx-pair? _%e183927183934%_)
                        (let ((_%e183930183942%_
                               (gx#syntax-e _%e183927183934%_)))
                          (let ((_%hd183931183945%_ (##car _%e183930183942%_))
                                (_%tl183932183947%_ (##cdr _%e183930183942%_)))
                            (let ((_%body183950%_ _%tl183932183947%_))
                              (if (_%current-phi183922%_)
                                  (_%K183925%_ _%body183950%_ '())
                                  (call-with-parameters__1
                                   (lambda () (_%K183925%_ _%body183950%_ '()))
                                   _%current-phi183922%_
                                   (gx#current-expander-phi))))))
                        (_%E183929183938%_)))))
            (_%E183928183955%_)))))
    (define gx#core-expand-import%__%
      (lambda (_%stx183573%_ _%internal-expand?183574%_)
        (letrec ((_%expand1183576%_
                  (lambda (_%hd183891%_ _%K183892%_ _%rest183893%_ _%r183894%_)
                    (if (gx#core-bound-module? _%hd183891%_)
                        (_%import1183577%_
                         (gx#syntax-local-e__0 _%hd183891%_)
                         _%K183892%_
                         _%rest183893%_
                         _%r183894%_)
                        (if (gx#core-library-module-path? _%hd183891%_)
                            (_%import1183577%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%hd183891%_))
                             _%K183892%_
                             _%rest183893%_
                             _%r183894%_)
                            (if (gx#core-library-relative-module-path?
                                 _%hd183891%_)
                                (_%import1183577%_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _%hd183891%_))
                                 _%K183892%_
                                 _%rest183893%_
                                 _%r183894%_)
                                (let ((_%e183900%_ (gx#stx-e _%hd183891%_)))
                                  (if (pair? _%e183900%_)
                                      (let ((_%$e183903%_
                                             (gx#stx-e (##car _%e183900%_))))
                                        (if (eq? 'spec: _%$e183903%_)
                                            (_%import-spec183580%_
                                             _%hd183891%_
                                             _%K183892%_
                                             _%rest183893%_
                                             _%r183894%_)
                                            (if (eq? 'in: _%$e183903%_)
                                                (_%import-submodule183578%_
                                                 _%hd183891%_
                                                 _%K183892%_
                                                 _%rest183893%_
                                                 _%r183894%_)
                                                (if (eq? 'runtime:
                                                         _%$e183903%_)
                                                    (_%import-runtime183579%_
                                                     _%hd183891%_
                                                     _%K183892%_
                                                     _%rest183893%_
                                                     _%r183894%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _%stx183573%_
                                                     _%hd183891%_)))))
                                      (if (string? _%e183900%_)
                                          (_%import1183577%_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _%hd183891%_
                                             (gx#stx-source _%stx183573%_)))
                                           _%K183892%_
                                           _%rest183893%_
                                           _%r183894%_)
                                          (if (##structure-instance-of?
                                               _%e183900%_
                                               'gx#module-context::t)
                                              (_%K183892%_
                                               _%rest183893%_
                                               (cons _%e183900%_ _%r183894%_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _%stx183573%_
                                               _%hd183891%_))))))))))
                 (_%import1183577%_
                  (lambda (_%ctx183880%_
                           _%K183881%_
                           _%rest183882%_
                           _%r183883%_)
                    (let ((_%dphi183885%_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_%K183881%_
                       _%rest183882%_
                       (cons (##structure
                              gx#import-set::t
                              _%ctx183880%_
                              _%dphi183885%_
                              (map (lambda (_%g183886183888%_)
                                     (gx#core-module-export->import__%
                                      _%g183886183888%_
                                      '#f
                                      _%dphi183885%_))
                                   (##unchecked-structure-ref
                                    _%ctx183880%_
                                    '9
                                    '#f
                                    '#f)))
                             _%r183883%_)))))
                 (_%import-submodule183578%_
                  (lambda (_%hd183847%_ _%K183848%_ _%rest183849%_ _%r183850%_)
                    (let* ((_%e183851183858%_ _%hd183847%_)
                           (_%E183853183862%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e183851183858%_)))
                           (_%E183852183876%_
                            (lambda ()
                              (if (gx#stx-pair? _%e183851183858%_)
                                  (let ((_%e183854183866%_
                                         (gx#syntax-e _%e183851183858%_)))
                                    (let ((_%hd183855183869%_
                                           (##car _%e183854183866%_))
                                          (_%tl183856183871%_
                                           (##cdr _%e183854183866%_)))
                                      (let ((_%spath183874%_
                                             _%tl183856183871%_))
                                        (_%import1183577%_
                                         (_%import-spec-source183581%_
                                          _%spath183874%_)
                                         _%K183848%_
                                         _%rest183849%_
                                         _%r183850%_))))
                                  (_%E183853183862%_)))))
                      (_%E183852183876%_))))
                 (_%import-runtime183579%_
                  (lambda (_%hd183814%_ _%K183815%_ _%rest183816%_ _%r183817%_)
                    (let* ((_%e183818183825%_ _%hd183814%_)
                           (_%E183820183829%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e183818183825%_)))
                           (_%E183819183843%_
                            (lambda ()
                              (if (gx#stx-pair? _%e183818183825%_)
                                  (let ((_%e183821183833%_
                                         (gx#syntax-e _%e183818183825%_)))
                                    (let ((_%hd183822183836%_
                                           (##car _%e183821183833%_))
                                          (_%tl183823183838%_
                                           (##cdr _%e183821183833%_)))
                                      (let ((_%spath183841%_
                                             _%tl183823183838%_))
                                        (_%K183815%_
                                         _%rest183816%_
                                         (cons (_%import-spec-source183581%_
                                                _%spath183841%_)
                                               _%r183817%_)))))
                                  (_%E183820183829%_)))))
                      (_%E183819183843%_))))
                 (_%import-spec183580%_
                  (lambda (_%hd183652%_ _%K183653%_ _%rest183654%_ _%r183655%_)
                    (let* ((_%e183656183673%_ _%hd183652%_)
                           (_%E183665183677%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e183656183673%_)))
                           (_%E183658183788%_
                            (lambda ()
                              (if (gx#stx-pair? _%e183656183673%_)
                                  (let ((_%e183666183681%_
                                         (gx#syntax-e _%e183656183673%_)))
                                    (let ((_%hd183667183684%_
                                           (##car _%e183666183681%_))
                                          (_%tl183668183686%_
                                           (##cdr _%e183666183681%_)))
                                      (if (gx#stx-pair? _%tl183668183686%_)
                                          (let ((_%e183669183689%_
                                                 (gx#syntax-e
                                                  _%tl183668183686%_)))
                                            (let ((_%hd183670183692%_
                                                   (##car _%e183669183689%_))
                                                  (_%tl183671183694%_
                                                   (##cdr _%e183669183689%_)))
                                              (let* ((_%path183697%_
                                                      _%hd183670183692%_)
                                                     (_%specs183699%_
                                                      _%tl183671183694%_))
                                                (let ((_%src-ctx183701%_
                                                       (_%import-spec-source183581%_
                                                        _%path183697%_))
                                                      (_%exports183702%_
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
                                                      (_%specs183703%_
                                                       (gx#syntax->list
                                                        _%specs183699%_)))
                                                  (for-each
                                                   (lambda (_%out183705%_)
                                                     (__hash-put!
                                                      _%exports183702%_
                                                      (cons (##unchecked-structure-ref
                                                             _%out183705%_
                                                             '3
                                                             '#f
                                                             '#f)
                                                            (##unchecked-structure-ref
                                                             _%out183705%_
                                                             '4
                                                             '#f
                                                             '#f))
                                                      _%out183705%_))
                                                   (##unchecked-structure-ref
                                                    _%src-ctx183701%_
                                                    '9
                                                    '#f
                                                    '#f))
                                                  (_%K183653%_
                                                   _%rest183654%_
                                                   (foldl__0
                                                    (lambda (_%spec183707%_
                                                             _%r183708%_)
                                                      (let* ((_%e183709183725%_
                                                              _%spec183707%_)
                                                             (_%E183711183729%_
                                                              (lambda ()
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid syntax-case clause"
                         _%e183709183725%_)))
                     (_%E183710183784%_
                      (lambda ()
                        (if (gx#stx-pair? _%e183709183725%_)
                            (let ((_%e183712183733%_
                                   (gx#syntax-e _%e183709183725%_)))
                              (let ((_%hd183713183736%_
                                     (##car _%e183712183733%_))
                                    (_%tl183714183738%_
                                     (##cdr _%e183712183733%_)))
                                (let ((_%phi183741%_ _%hd183713183736%_))
                                  (if (gx#stx-pair? _%tl183714183738%_)
                                      (let ((_%e183715183743%_
                                             (gx#syntax-e _%tl183714183738%_)))
                                        (let ((_%hd183716183746%_
                                               (##car _%e183715183743%_))
                                              (_%tl183717183748%_
                                               (##cdr _%e183715183743%_)))
                                          (let ((_%name183751%_
                                                 _%hd183716183746%_))
                                            (if (gx#stx-pair?
                                                 _%tl183717183748%_)
                                                (let ((_%e183718183753%_
                                                       (gx#syntax-e
                                                        _%tl183717183748%_)))
                                                  (let ((_%hd183719183756%_
                                                         (##car _%e183718183753%_))
                                                        (_%tl183720183758%_
                                                         (##cdr _%e183718183753%_)))
                                                    (let ((_%src-phi183761%_
                                                           _%hd183719183756%_))
                                                      (if (gx#stx-pair?
                                                           _%tl183720183758%_)
                                                          (let ((_%e183721183763%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl183720183758%_)))
                    (let ((_%hd183722183766%_ (##car _%e183721183763%_))
                          (_%tl183723183768%_ (##cdr _%e183721183763%_)))
                      (let ((_%src-name183771%_ _%hd183722183766%_))
                        (if (gx#stx-null? _%tl183723183768%_)
                            (if (and (gx#stx-fixnum? _%src-phi183761%_)
                                     (gx#identifier? _%src-name183771%_)
                                     (gx#stx-fixnum? _%phi183741%_)
                                     (gx#identifier? _%name183751%_))
                                (let ((_%src-phi183773%_
                                       (gx#stx-e _%src-phi183761%_))
                                      (_%src-name183774%_
                                       (gx#core-identifier-key
                                        _%src-name183771%_))
                                      (_%phi183775%_ (gx#stx-e _%phi183741%_))
                                      (_%name183776%_
                                       (gx#core-identifier-key
                                        _%name183751%_)))
                                  (let ((_%$e183778%_
                                         (__hash-get
                                          _%exports183702%_
                                          (cons _%src-phi183773%_
                                                _%src-name183774%_))))
                                    (if _%$e183778%_
                                        ((lambda (_%out183781%_)
                                           (cons (gx#core-module-export->import__%
                                                  _%out183781%_
                                                  _%name183776%_
                                                  (fx- _%phi183775%_
                                                       _%src-phi183773%_))
                                                 _%r183708%_))
                                         _%$e183778%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; no matching export"
                                         _%stx183573%_
                                         _%hd183652%_))))
                                (_%E183711183729%_))
                            (_%E183711183729%_)))))
                  (_%E183711183729%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E183711183729%_)))))
                                      (_%E183711183729%_)))))
                            (_%E183711183729%_)))))
                (_%E183710183784%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r183655%_
                                                    _%specs183703%_))))))
                                          (_%E183665183677%_))))
                                  (_%E183665183677%_))))
                           (_%E183657183810%_
                            (lambda ()
                              (if (gx#stx-pair? _%e183656183673%_)
                                  (let ((_%e183659183792%_
                                         (gx#syntax-e _%e183656183673%_)))
                                    (let ((_%hd183660183795%_
                                           (##car _%e183659183792%_))
                                          (_%tl183661183797%_
                                           (##cdr _%e183659183792%_)))
                                      (if (gx#stx-pair? _%tl183661183797%_)
                                          (let ((_%e183662183800%_
                                                 (gx#syntax-e
                                                  _%tl183661183797%_)))
                                            (let ((_%hd183663183803%_
                                                   (##car _%e183662183800%_))
                                                  (_%tl183664183805%_
                                                   (##cdr _%e183662183800%_)))
                                              (let ((_%path183808%_
                                                     _%hd183663183803%_))
                                                (if (gx#stx-null?
                                                     _%tl183664183805%_)
                                                    (_%K183653%_
                                                     _%rest183654%_
                                                     (cons (_%import-spec-source183581%_
                                                            _%path183808%_)
                                                           _%r183655%_))
                                                    (_%E183658183788%_)))))
                                          (_%E183658183788%_))))
                                  (_%E183658183788%_)))))
                      (_%E183657183810%_))))
                 (_%import-spec-source183581%_
                  (lambda (_%spath183650%_)
                    (gx#core-import-nested-module
                     _%spath183650%_
                     _%stx183573%_)))
                 (_%import!183582%_
                  (lambda (_%rbody183595%_)
                    (letrec* ((_%current-ctx183597%_
                               (gx#current-expander-context))
                              (_%deps183598%_ (make-hash-table-eq))
                              (_%bind!183599%_
                               (lambda (_%hd183648%_)
                                 (gx#core-bind-import!__1
                                  _%hd183648%_
                                  _%current-ctx183597%_))))
                      (let _%lp183601%_ ((_%rest183603%_ _%rbody183595%_)
                                         (_%body183604%_ '()))
                        (let* ((_%rest183605183613%_ _%rest183603%_)
                               (_%else183607183624%_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _%current-ctx183597%_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _%current-ctx183597%_
                                       (foldl__0
                                        cons
                                        (##unchecked-structure-ref
                                         _%current-ctx183597%_
                                         '8
                                         '#f
                                         '#f)
                                        _%body183604%_)
                                       '8
                                       '#f
                                       '#f)
                                      '#!void)
                                  (__hash-for-each
                                   (lambda (_%ctx183621%_ _%_183622%_)
                                     (gx#eval-module _%ctx183621%_))
                                   _%deps183598%_)
                                  _%body183604%_))
                               (_%K183609183636%_
                                (lambda (_%rest183627%_ _%hd183628%_)
                                  (if (##structure-direct-instance-of?
                                       _%hd183628%_
                                       'gx#module-import::t)
                                      (let ()
                                        (_%bind!183599%_ _%hd183628%_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _%hd183628%_
                                                   '3
                                                   '#f
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _%hd183628%_
                                                            '1
                                                            '#f
                                                            '#f)
                                                           '3
                                                           '#f
                                                           '#f)))
                                            (__hash-put!
                                             _%deps183598%_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _%hd183628%_
                                               '1
                                               '#f
                                               '#f)
                                              '1
                                              '#f
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _%hd183628%_
                                           'gx#import-set::t)
                                          (let ()
                                            (for-each
                                             _%bind!183599%_
                                             (##unchecked-structure-ref
                                              _%hd183628%_
                                              '3
                                              '#f
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _%hd183628%_
                                                  '2
                                                  '#f
                                                  '#f))
                                                (__hash-put!
                                                 _%deps183598%_
                                                 (##unchecked-structure-ref
                                                  _%hd183628%_
                                                  '1
                                                  '#f
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_%$e183632%_
                                                 (##structure-instance-of?
                                                  _%hd183628%_
                                                  'gx#module-context::t)))
                                            (if _%$e183632%_
                                                _%$e183632%_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _%stx183573%_
                                                 _%hd183628%_)))))
                                  (_%lp183601%_
                                   _%rest183627%_
                                   (cons _%hd183628%_ _%body183604%_)))))
                          (if (pair? _%rest183605183613%_)
                              (let ((_%hd183610183639%_
                                     (##car _%rest183605183613%_))
                                    (_%tl183611183641%_
                                     (##cdr _%rest183605183613%_)))
                                (let* ((_%hd183644%_ _%hd183610183639%_)
                                       (_%rest183646%_ _%tl183611183641%_))
                                  (_%K183609183636%_
                                   _%rest183646%_
                                   _%hd183644%_)))
                              (_%else183607183624%_)))))))
                 (_%expanded-import?183583%_
                  (lambda (_%e183587%_)
                    (let ((_%$e183589%_
                           (##structure-direct-instance-of?
                            _%e183587%_
                            'gx#import-set::t)))
                      (if _%$e183589%_
                          _%$e183589%_
                          (let ((_%$e183592%_
                                 (##structure-direct-instance-of?
                                  _%e183587%_
                                  'gx#module-import::t)))
                            (if _%$e183592%_
                                _%$e183592%_
                                (##structure-instance-of?
                                 _%e183587%_
                                 'gx#module-context::t))))))))
          (let ((_%rbody183585%_
                 (gx#core-expand-import/export
                  _%stx183573%_
                  _%expanded-import?183583%_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _%expand1183576%_)))
            (if _%internal-expand?183574%_
                (reverse _%rbody183585%_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_%import!183582%_ _%rbody183585%_))
                 (gx#stx-source _%stx183573%_)))))))
    (define gx#core-expand-import%__0
      (lambda (_%stx183912%_)
        (let ((_%internal-expand?183914%_ '#f))
          (gx#core-expand-import%__%
           _%stx183912%_
           _%internal-expand?183914%_))))
    (define gx#core-expand-import%
      (lambda _g186571_
        (let ((_g186572_ (##length _g186571_)))
          (cond ((##fx= _g186572_ 1)
                 (apply gx#core-expand-import%__0 _g186571_))
                ((##fx= _g186572_ 2)
                 (apply gx#core-expand-import%__% _g186571_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g186571_))))))
    (define gx#core-import-nested-module
      (lambda (_%spath183500%_ _%where183501%_)
        (let* ((_%e183502183509%_ _%spath183500%_)
               (_%E183504183513%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e183502183509%_)))
               (_%E183503183568%_
                (lambda ()
                  (if (gx#stx-pair? _%e183502183509%_)
                      (let ((_%e183505183517%_
                             (gx#syntax-e _%e183502183509%_)))
                        (let ((_%hd183506183520%_ (##car _%e183505183517%_))
                              (_%tl183507183522%_ (##cdr _%e183505183517%_)))
                          (let* ((_%origin183525%_ _%hd183506183520%_)
                                 (_%sub183527%_ _%tl183507183522%_)
                                 (_%origin-ctx183529%_
                                  (if (gx#stx-false? _%origin183525%_)
                                      (gx#current-expander-context)
                                      (gx#import-module__0 _%origin183525%_))))
                            (let _%lp183531%_ ((_%rest183533%_ _%sub183527%_)
                                               (_%ctx183534%_
                                                _%origin-ctx183529%_))
                              (let* ((_%e183535183542%_ _%rest183533%_)
                                     (_%E183537183546%_
                                      (lambda () _%ctx183534%_))
                                     (_%E183536183564%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%e183535183542%_)
                                            (let ((_%e183538183550%_
                                                   (gx#syntax-e
                                                    _%e183535183542%_)))
                                              (let ((_%hd183539183553%_
                                                     (##car _%e183538183550%_))
                                                    (_%tl183540183555%_
                                                     (##cdr _%e183538183550%_)))
                                                (let* ((_%id183558%_
                                                        _%hd183539183553%_)
                                                       (_%rest183560%_
                                                        _%tl183540183555%_)
                                                       (_%bind183562%_
                                                        (gx#resolve-identifier__%
                                                         _%id183558%_
                                                         '0
                                                         _%ctx183534%_)))
                                                  (if (and (##structure-direct-instance-of?
                                                            _%bind183562%_
                                                            'gx#syntax-binding::t)
                                                           (##structure-instance-of?
                                                            (##unchecked-structure-ref
                                                             _%bind183562%_
                                                             '5
                                                             '#f
                                                             '#f)
                                                            'gx#module-context::t))
                                                      '#!void
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; not bound as module"
                                                       _%where183501%_
                                                       _%spath183500%_
                                                       _%id183558%_))
                                                  (_%lp183531%_
                                                   _%rest183560%_
                                                   (##unchecked-structure-ref
                                                    _%bind183562%_
                                                    '5
                                                    '#f
                                                    '#f)))))
                                            (_%E183537183546%_)))))
                                (_%E183536183564%_))))))
                      (_%E183504183513%_)))))
          (_%E183503183568%_))))
    (define gx#core-expand-import-source
      (lambda (_%hd183498%_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _%hd183498%_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_%stx182993%_ _%internal-expand?182994%_)
        (letrec* ((_%make-export__186499186500%_
                   (lambda (_%bind183446%_
                            _%phi183447%_
                            _%ctx183448%_
                            _%name183449%_)
                     (let* ((_%key183451%_
                             (##unchecked-structure-ref
                              _%bind183446%_
                              '2
                              '#f
                              '#f))
                            (_%export-key183453%_
                             (if _%name183449%_
                                 (gx#core-identifier-key _%name183449%_)
                                 _%key183451%_)))
                       (##structure
                        gx#module-export::t
                        _%ctx183448%_
                        _%key183451%_
                        _%phi183447%_
                        _%export-key183453%_
                        (let ((_%$e183456%_
                               (##structure-instance-of?
                                _%bind183446%_
                                'gx#extern-binding::t)))
                          (if _%$e183456%_
                              _%$e183456%_
                              (##structure-direct-instance-of?
                               _%bind183446%_
                               'gx#import-binding::t)))))))
                  (_%make-export__0__186501186504%_
                   (lambda (_%bind183462%_)
                     (let* ((_%phi183464%_ (gx#current-export-expander-phi))
                            (_%ctx183466%_ (gx#current-expander-context))
                            (_%name183468%_ '#f))
                       (_%make-export__186499186500%_
                        _%bind183462%_
                        _%phi183464%_
                        _%ctx183466%_
                        _%name183468%_))))
                  (_%make-export__1__186502186505%_
                   (lambda (_%bind183470%_ _%phi183471%_)
                     (let* ((_%ctx183473%_ (gx#current-expander-context))
                            (_%name183475%_ '#f))
                       (_%make-export__186499186500%_
                        _%bind183470%_
                        _%phi183471%_
                        _%ctx183473%_
                        _%name183475%_))))
                  (_%make-export__2__186503186506%_
                   (lambda (_%bind183477%_ _%phi183478%_ _%ctx183479%_)
                     (let ((_%name183481%_ '#f))
                       (_%make-export__186499186500%_
                        _%bind183477%_
                        _%phi183478%_
                        _%ctx183479%_
                        _%name183481%_))))
                  (_%make-export182996%_
                   (lambda _g186573_
                     (let ((_g186574_ (##length _g186573_)))
                       (cond ((##fx= _g186574_ 1)
                              (apply _%make-export__0__186501186504%_
                                     _g186573_))
                             ((##fx= _g186574_ 2)
                              (apply _%make-export__1__186502186505%_
                                     _g186573_))
                             ((##fx= _g186574_ 3)
                              (apply _%make-export__2__186503186506%_
                                     _g186573_))
                             ((##fx= _g186574_ 4)
                              (apply _%make-export__186499186500%_ _g186573_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g186573_))))))
                  (_%expand1182997%_
                   (lambda (_%hd183151%_
                            _%K183152%_
                            _%rest183153%_
                            _%r183154%_)
                     (let* ((_%e183155183187%_ _%hd183151%_)
                            (_%E183182183191%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _%stx182993%_
                                _%hd183151%_)))
                            (_%E183172183275%_
                             (lambda ()
                               (if (gx#stx-pair? _%e183155183187%_)
                                   (let ((_%e183183183195%_
                                          (gx#syntax-e _%e183155183187%_)))
                                     (let ((_%hd183184183198%_
                                            (##car _%e183183183195%_))
                                           (_%tl183185183200%_
                                            (##cdr _%e183183183195%_)))
                                       (if (eq? (gx#stx-e _%hd183184183198%_)
                                                'import:)
                                           (let ((_%in183203%_
                                                  _%tl183185183200%_))
                                             (if (gx#stx-list? _%in183203%_)
                                                 (let _%lp183205%_ ((_%in-rest183207%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%in183203%_)
                            (_%r183208%_ _%r183154%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%e183209183216%_
                                                           _%in-rest183207%_)
                                                          (_%E183211183220%_
                                                           (lambda ()
                                                             (_%K183152%_
                                                              _%rest183153%_
                                                              _%r183208%_)))
                                                          (_%E183210183271%_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%e183209183216%_)
                         (let ((_%e183212183224%_
                                (gx#syntax-e _%e183209183216%_)))
                           (let ((_%hd183213183227%_ (##car _%e183212183224%_))
                                 (_%tl183214183229%_
                                  (##cdr _%e183212183224%_)))
                             (let* ((_%hd183232%_ _%hd183213183227%_)
                                    (_%in-rest183234%_ _%tl183214183229%_)
                                    (_%src183269%_
                                     (if (gx#core-bound-module? _%hd183232%_)
                                         (gx#syntax-local-e__0 _%hd183232%_)
                                         (if (gx#core-library-module-path?
                                              _%hd183232%_)
                                             (gx#import-module__0
                                              (gx#core-resolve-library-module-path
                                               _%hd183232%_))
                                             (if (gx#core-library-relative-module-path?
                                                  _%hd183232%_)
                                                 (gx#import-module__0
                                                  (gx#core-resolve-library-relative-module-path
                                                   _%hd183232%_))
                                                 (if (gx#stx-string?
                                                      _%hd183232%_)
                                                     (gx#import-module__0
                                                      (gx#core-resolve-module-path__%
                                                       _%hd183232%_
                                                       (gx#stx-source
                                                        _%stx182993%_)))
                                                     (let* ((_%e183240183247%_
                                                             _%hd183232%_)
                                                            (_%E183242183251%_
                                                             (lambda ()
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; illegal re-export"
                                                                _%stx182993%_
                                                                _%hd183232%_)))
                                                            (_%E183241183265%_
                                                             (lambda ()
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%e183240183247%_)
                           (let ((_%e183243183255%_
                                  (gx#syntax-e _%e183240183247%_)))
                             (let ((_%hd183244183258%_
                                    (##car _%e183243183255%_))
                                   (_%tl183245183260%_
                                    (##cdr _%e183243183255%_)))
                               (if (eq? (gx#stx-e _%hd183244183258%_) 'in:)
                                   (let ((_%spath183263%_ _%tl183245183260%_))
                                     (gx#core-import-nested-module
                                      _%spath183263%_
                                      _%stx182993%_))
                                   (_%E183242183251%_))))
                           (_%E183242183251%_)))))
               (_%E183241183265%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (_%lp183205%_
                                _%in-rest183234%_
                                (_%export-imports182998%_
                                 _%src183269%_
                                 _%r183208%_)))))
                         (_%E183211183220%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E183210183271%_)))
                                                 (_%E183182183191%_)))
                                           (_%E183182183191%_))))
                                   (_%E183182183191%_))))
                            (_%E183159183315%_
                             (lambda ()
                               (if (gx#stx-pair? _%e183155183187%_)
                                   (let ((_%e183173183279%_
                                          (gx#syntax-e _%e183155183187%_)))
                                     (let ((_%hd183174183282%_
                                            (##car _%e183173183279%_))
                                           (_%tl183175183284%_
                                            (##cdr _%e183173183279%_)))
                                       (if (eq? (gx#stx-e _%hd183174183282%_)
                                                'rename:)
                                           (if (gx#stx-pair?
                                                _%tl183175183284%_)
                                               (let ((_%e183176183287%_
                                                      (gx#syntax-e
                                                       _%tl183175183284%_)))
                                                 (let ((_%hd183177183290%_
                                                        (##car _%e183176183287%_))
                                                       (_%tl183178183292%_
                                                        (##cdr _%e183176183287%_)))
                                                   (let ((_%id183295%_
                                                          _%hd183177183290%_))
                                                     (if (gx#stx-pair?
                                                          _%tl183178183292%_)
                                                         (let ((_%e183179183297%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl183178183292%_)))
                   (let ((_%hd183180183300%_ (##car _%e183179183297%_))
                         (_%tl183181183302%_ (##cdr _%e183179183297%_)))
                     (let ((_%name183305%_ _%hd183180183300%_))
                       (if (gx#stx-null? _%tl183181183302%_)
                           (let* ((_%phi183307%_
                                   (gx#current-export-expander-phi))
                                  (_%$e183309%_
                                   (gx#core-resolve-identifier__1
                                    _%id183295%_
                                    _%phi183307%_)))
                             (if _%$e183309%_
                                 ((lambda (_%bind183312%_)
                                    (_%K183152%_
                                     _%rest183153%_
                                     (cons (_%make-export__186499186500%_
                                            _%bind183312%_
                                            _%phi183307%_
                                            (gx#current-expander-context)
                                            _%name183305%_)
                                           _%r183154%_)))
                                  _%$e183309%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Reference to unbound identifier"
                                  _%stx182993%_
                                  _%hd183151%_
                                  _%id183295%_)))
                           (_%E183172183275%_)))))
                 (_%E183172183275%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E183172183275%_))
                                           (_%E183172183275%_))))
                                   (_%E183172183275%_))))
                            (_%E183158183365%_
                             (lambda ()
                               (if (gx#stx-pair? _%e183155183187%_)
                                   (let ((_%e183160183319%_
                                          (gx#syntax-e _%e183155183187%_)))
                                     (let ((_%hd183161183322%_
                                            (##car _%e183160183319%_))
                                           (_%tl183162183324%_
                                            (##cdr _%e183160183319%_)))
                                       (if (eq? (gx#stx-e _%hd183161183322%_)
                                                'spec:)
                                           (if (gx#stx-pair?
                                                _%tl183162183324%_)
                                               (let ((_%e183163183327%_
                                                      (gx#syntax-e
                                                       _%tl183162183324%_)))
                                                 (let ((_%hd183164183330%_
                                                        (##car _%e183163183327%_))
                                                       (_%tl183165183332%_
                                                        (##cdr _%e183163183327%_)))
                                                   (let ((_%phi183335%_
                                                          _%hd183164183330%_))
                                                     (if (gx#stx-pair?
                                                          _%tl183165183332%_)
                                                         (let ((_%e183166183337%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl183165183332%_)))
                   (let ((_%hd183167183340%_ (##car _%e183166183337%_))
                         (_%tl183168183342%_ (##cdr _%e183166183337%_)))
                     (let ((_%id183345%_ _%hd183167183340%_))
                       (if (gx#stx-pair? _%tl183168183342%_)
                           (let ((_%e183169183347%_
                                  (gx#syntax-e _%tl183168183342%_)))
                             (let ((_%hd183170183350%_
                                    (##car _%e183169183347%_))
                                   (_%tl183171183352%_
                                    (##cdr _%e183169183347%_)))
                               (let ((_%name183355%_ _%hd183170183350%_))
                                 (if (gx#stx-null? _%tl183171183352%_)
                                     (if (and (gx#stx-fixnum? _%phi183335%_)
                                              (gx#identifier? _%id183345%_)
                                              (gx#identifier? _%name183355%_))
                                         (let* ((_%phi183357%_
                                                 (gx#stx-e _%phi183335%_))
                                                (_%$e183359%_
                                                 (gx#core-resolve-identifier__1
                                                  _%id183345%_
                                                  _%phi183357%_)))
                                           (if _%$e183359%_
                                               ((lambda (_%bind183362%_)
                                                  (_%K183152%_
                                                   _%rest183153%_
                                                   (cons (_%make-export__186499186500%_
                                                          _%bind183362%_
                                                          _%phi183357%_
                                                          (gx#current-expander-context)
                                                          _%name183355%_)
                                                         _%r183154%_)))
                                                _%$e183359%_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _%stx182993%_
                                                _%hd183151%_
                                                _%id183345%_)))
                                         (_%E183159183315%_))
                                     (_%E183159183315%_)))))
                           (_%E183159183315%_)))))
                 (_%E183159183315%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E183159183315%_))
                                           (_%E183159183315%_))))
                                   (_%E183159183315%_))))
                            (_%E183157183377%_
                             (lambda ()
                               (let ((_%id183369%_ _%e183155183187%_))
                                 (if (gx#identifier? _%id183369%_)
                                     (let ((_%$e183371%_
                                            (gx#core-resolve-identifier__1
                                             _%id183369%_
                                             (gx#current-export-expander-phi))))
                                       (if _%$e183371%_
                                           ((lambda (_%bind183374%_)
                                              (_%K183152%_
                                               _%rest183153%_
                                               (cons (_%make-export__0__186501186504%_
                                                      _%bind183374%_)
                                                     _%r183154%_)))
                                            _%$e183371%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _%stx182993%_
                                            _%hd183151%_)))
                                     (_%E183158183365%_)))))
                            (_%E183156183441%_
                             (lambda ()
                               (if (eq? (gx#stx-e _%e183155183187%_) '#t)
                                   (let* ((_%current-ctx183381%_
                                           (gx#current-expander-context))
                                          (_%current-phi183383%_
                                           (gx#current-export-expander-phi))
                                          (_%phi-ctx183385%_
                                           (gx#core-context-shift
                                            _%current-ctx183381%_
                                            _%current-phi183383%_))
                                          (_%phi-bind183387%_
                                           (hash->list
                                            (##unchecked-structure-ref
                                             _%phi-ctx183385%_
                                             '2
                                             '#f
                                             '#f))))
                                     (let _%lp183390%_ ((_%bind-rest183392%_
                                                         _%phi-bind183387%_)
                                                        (_%set183393%_ '()))
                                       (let* ((_%bind-rest183394183404%_
                                               _%bind-rest183392%_)
                                              (_%else183396183412%_
                                               (lambda ()
                                                 (_%K183152%_
                                                  _%rest183153%_
                                                  (cons (##structure
                                                         gx#export-set::t
                                                         '#f
                                                         _%current-phi183383%_
                                                         _%set183393%_)
                                                        _%r183154%_))))
                                              (_%K183398183422%_
                                               (lambda (_%bind-rest183415%_
                                                        _%bind183416%_
                                                        _%key183417%_)
                                                 (if (or (##structure-direct-instance-of?
                                                          _%bind183416%_
                                                          'gx#import-binding::t)
                                                         (gx#private-feature-binding?
                                                          _%bind183416%_))
                                                     (_%lp183390%_
                                                      _%bind-rest183415%_
                                                      _%set183393%_)
                                                     (_%lp183390%_
                                                      _%bind-rest183415%_
                                                      (cons (_%make-export__2__186503186506%_
                                                             _%bind183416%_
                                                             _%current-phi183383%_
                                                             _%current-ctx183381%_)
                                                            _%set183393%_))))))
                                         (if (pair? _%bind-rest183394183404%_)
                                             (let ((_%hd183399183425%_
                                                    (##car _%bind-rest183394183404%_))
                                                   (_%tl183400183427%_
                                                    (##cdr _%bind-rest183394183404%_)))
                                               (if (pair? _%hd183399183425%_)
                                                   (let ((_%hd183401183430%_
                                                          (##car _%hd183399183425%_))
                                                         (_%tl183402183432%_
                                                          (##cdr _%hd183399183425%_)))
                                                     (let* ((_%key183435%_
                                                             _%hd183401183430%_)
                                                            (_%bind183437%_
                                                             _%tl183402183432%_)
                                                            (_%bind-rest183439%_
                                                             _%tl183400183427%_))
                                                       (_%K183398183422%_
                                                        _%bind-rest183439%_
                                                        _%bind183437%_
                                                        _%key183435%_)))
                                                   (_%else183396183412%_)))
                                             (_%else183396183412%_)))))
                                   (_%E183157183377%_)))))
                       (_%E183156183441%_))))
                  (_%export-imports182998%_
                   (lambda (_%src183028%_ _%r183029%_)
                     (letrec* ((_%current-ctx183031%_
                                (gx#current-expander-context))
                               (_%current-phi183032%_
                                (gx#current-export-expander-phi))
                               (_%import->export183033%_
                                (lambda (_%in183114%_)
                                  (let* ((_%in183115183123%_ _%in183114%_)
                                         (_%E183117183126%_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _%in183115183123%_
                                                   '((module-import
                                                      out
                                                      key
                                                      phi)))
                                            '#!void))
                                         (_%K183118183133%_
                                          (lambda (_%phi183129%_
                                                   _%key183130%_
                                                   _%out183131%_)
                                            (##structure
                                             gx#module-export::t
                                             _%current-ctx183031%_
                                             _%key183130%_
                                             _%phi183129%_
                                             _%key183130%_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _%in183115183123%_
                                         'gx#module-import::t)
                                        (let* ((_%e183119183136%_
                                                (##unchecked-structure-ref
                                                 _%in183115183123%_
                                                 '1
                                                 '#f
                                                 '#f))
                                               (_%out183139%_
                                                _%e183119183136%_)
                                               (_%e183120183141%_
                                                (##unchecked-structure-ref
                                                 _%in183115183123%_
                                                 '2
                                                 '#f
                                                 '#f))
                                               (_%key183144%_
                                                _%e183120183141%_)
                                               (_%e183121183146%_
                                                (##unchecked-structure-ref
                                                 _%in183115183123%_
                                                 '3
                                                 '#f
                                                 '#f))
                                               (_%phi183149%_
                                                _%e183121183146%_))
                                          (_%K183118183133%_
                                           _%phi183149%_
                                           _%key183144%_
                                           _%out183139%_))
                                        (_%E183117183126%_)))))
                               (_%fold-e183034%_
                                (lambda (_%in183036%_ _%r183037%_)
                                  (let* ((_%in183038183052%_ _%in183036%_)
                                         (_%else183041183060%_
                                          (lambda () _%r183037%_)))
                                    (let ((_%K183047183096%_
                                           (lambda (_%phi183092%_
                                                    _%key183093%_
                                                    _%out183094%_)
                                             (if (and (fx= _%phi183092%_
                                                           _%current-phi183032%_)
                                                      (eq? _%src183028%_
                                                           (##unchecked-structure-ref
                                                            _%out183094%_
                                                            '1
                                                            '#f
                                                            '#f)))
                                                 (cons (_%import->export183033%_
                                                        _%in183036%_)
                                                       _%r183037%_)
                                                 _%r183037%_)))
                                          (_%K183043183071%_
                                           (lambda (_%imports183064%_
                                                    _%phi183065%_
                                                    _%ctx183066%_)
                                             (if (and (fx= _%phi183065%_
                                                           _%current-phi183032%_)
                                                      (eq? _%src183028%_
                                                           _%ctx183066%_))
                                                 (foldl__0
                                                  (lambda (_%in183068%_
                                                           _%r183069%_)
                                                    (cons (_%import->export183033%_
                                                           _%in183068%_)
                                                          _%r183069%_))
                                                  _%r183037%_
                                                  _%imports183064%_)
                                                 _%r183037%_))))
                                      (let ((_%try-match183040183089%_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _%in183038183052%_
                                                    'gx#import-set::t)
                                                   (let* ((_%e183044183074%_
                                                           (##unchecked-structure-ref
                                                            _%in183038183052%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                          (_%e183045183079%_
                                                           (##unchecked-structure-ref
                                                            _%in183038183052%_
                                                            '2
                                                            '#f
                                                            '#f))
                                                          (_%e183046183084%_
                                                           (##unchecked-structure-ref
                                                            _%in183038183052%_
                                                            '3
                                                            '#f
                                                            '#f)))
                                                     (let ((_%ctx183077%_
                                                            _%e183044183074%_)
                                                           (_%phi183082%_
                                                            _%e183045183079%_)
                                                           (_%imports183087%_
                                                            _%e183046183084%_))
                                                       (_%K183043183071%_
                                                        _%imports183087%_
                                                        _%phi183082%_
                                                        _%ctx183077%_)))
                                                   (_%else183041183060%_)))))
                                        (if (##structure-direct-instance-of?
                                             _%in183038183052%_
                                             'gx#module-import::t)
                                            (let* ((_%e183048183099%_
                                                    (##unchecked-structure-ref
                                                     _%in183038183052%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                   (_%e183049183104%_
                                                    (##unchecked-structure-ref
                                                     _%in183038183052%_
                                                     '2
                                                     '#f
                                                     '#f))
                                                   (_%e183050183109%_
                                                    (##unchecked-structure-ref
                                                     _%in183038183052%_
                                                     '3
                                                     '#f
                                                     '#f)))
                                              (let ((_%out183102%_
                                                     _%e183048183099%_)
                                                    (_%key183107%_
                                                     _%e183049183104%_)
                                                    (_%phi183112%_
                                                     _%e183050183109%_))
                                                (_%K183047183096%_
                                                 _%phi183112%_
                                                 _%key183107%_
                                                 _%out183102%_)))
                                            (_%try-match183040183089%_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _%src183028%_
                              _%current-phi183032%_
                              (foldl__0
                               _%fold-e183034%_
                               '()
                               (##unchecked-structure-ref
                                _%current-ctx183031%_
                                '8
                                '#f
                                '#f)))
                             _%r183029%_))))
                  (_%export!182999%_
                   (lambda (_%rbody183015%_)
                     (letrec* ((_%current-ctx183017%_
                                (gx#current-expander-context))
                               (_%fold-e183018%_
                                (lambda (_%out183022%_ _%r183023%_)
                                  (if (##structure-direct-instance-of?
                                       _%out183022%_
                                       'gx#module-export::t)
                                      (cons _%out183022%_ _%r183023%_)
                                      (if (##structure-direct-instance-of?
                                           _%out183022%_
                                           'gx#export-set::t)
                                          (foldl__0
                                           cons
                                           _%r183023%_
                                           (##unchecked-structure-ref
                                            _%out183022%_
                                            '3
                                            '#f
                                            '#f))
                                          _%r183023%_)))))
                       (let ((_%body183020%_ (reverse _%rbody183015%_)))
                         (##unchecked-structure-set!
                          _%current-ctx183017%_
                          (foldl__0
                           _%fold-e183018%_
                           (##unchecked-structure-ref
                            _%current-ctx183017%_
                            '9
                            '#f
                            '#f)
                           _%body183020%_)
                          '9
                          '#f
                          '#f)
                         _%body183020%_))))
                  (_%expanded-export?183000%_
                   (lambda (_%e183010%_)
                     (let ((_%$e183012%_
                            (##structure-direct-instance-of?
                             _%e183010%_
                             'gx#module-export::t)))
                       (if _%$e183012%_
                           _%$e183012%_
                           (##structure-direct-instance-of?
                            _%e183010%_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _%internal-expand?182994%_)
              (let ((_%rbody183006%_
                     (gx#core-expand-import/export
                      _%stx182993%_
                      _%expanded-export?183000%_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _%expand1182997%_)))
                (if _%internal-expand?182994%_
                    (reverse _%rbody183006%_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons
                      '%#export
                      (_%export!182999%_ _%rbody183006%_))
                     (gx#stx-source _%stx182993%_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _%stx182993%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _%stx182993%_))))))
    (define gx#core-expand-export%__0
      (lambda (_%stx183491%_)
        (let ((_%internal-expand?183493%_ '#f))
          (gx#core-expand-export%__%
           _%stx183491%_
           _%internal-expand?183493%_))))
    (define gx#core-expand-export%
      (lambda _g186575_
        (let ((_g186576_ (##length _g186575_)))
          (cond ((##fx= _g186576_ 1)
                 (apply gx#core-expand-export%__0 _g186575_))
                ((##fx= _g186576_ 2)
                 (apply gx#core-expand-export%__% _g186575_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g186575_))))))
    (define gx#core-expand-export-source
      (lambda (_%hd182990%_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _%hd182990%_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_%stx182960%_)
        (let* ((_%e182961182968%_ _%stx182960%_)
               (_%E182963182972%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e182961182968%_)))
               (_%E182962182986%_
                (lambda ()
                  (if (gx#stx-pair? _%e182961182968%_)
                      (let ((_%e182964182976%_
                             (gx#syntax-e _%e182961182968%_)))
                        (let ((_%hd182965182979%_ (##car _%e182964182976%_))
                              (_%tl182966182981%_ (##cdr _%e182964182976%_)))
                          (let ((_%body182984%_ _%tl182966182981%_))
                            (if (gx#identifier-list? _%body182984%_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _%body182984%_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _%body182984%_))
                                   (gx#stx-source _%stx182960%_)))
                                (_%E182963182972%_)))))
                      (_%E182963182972%_)))))
          (_%E182962182986%_))))
    (define gx#core-bind-feature!__%
      (lambda (_%id182926%_ _%private?182927%_ _%phi182928%_ _%ctx182929%_)
        (gx#core-bind-syntax!__%
         _%id182926%_
         ((if _%private?182927%_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _%id182926%_))
         _%private?182927%_
         _%phi182928%_
         _%ctx182929%_)))
    (define gx#core-bind-feature!__0
      (lambda (_%id182934%_)
        (let* ((_%private?182936%_ '#f)
               (_%phi182938%_ (gx#current-expander-phi))
               (_%ctx182940%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id182934%_
           _%private?182936%_
           _%phi182938%_
           _%ctx182940%_))))
    (define gx#core-bind-feature!__1
      (lambda (_%id182942%_ _%private?182943%_)
        (let* ((_%phi182945%_ (gx#current-expander-phi))
               (_%ctx182947%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id182942%_
           _%private?182943%_
           _%phi182945%_
           _%ctx182947%_))))
    (define gx#core-bind-feature!__2
      (lambda (_%id182949%_ _%private?182950%_ _%phi182951%_)
        (let ((_%ctx182953%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id182949%_
           _%private?182950%_
           _%phi182951%_
           _%ctx182953%_))))
    (define gx#core-bind-feature!
      (lambda _g186577_
        (let ((_g186578_ (##length _g186577_)))
          (cond ((##fx= _g186578_ 1)
                 (apply gx#core-bind-feature!__0 _g186577_))
                ((##fx= _g186578_ 2)
                 (apply gx#core-bind-feature!__1 _g186577_))
                ((##fx= _g186578_ 3)
                 (apply gx#core-bind-feature!__2 _g186577_))
                ((##fx= _g186578_ 4)
                 (apply gx#core-bind-feature!__% _g186577_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g186577_))))))))
