(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1712757955)
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
      (lambda _%$args125438%_
        (apply make-instance gx#module-import::t _%$args125438%_)))
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
      (lambda _%$args125435%_
        (apply make-instance gx#module-export::t _%$args125435%_)))
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
      (lambda _%$args125432%_
        (apply make-instance gx#import-set::t _%$args125432%_)))
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
      (lambda _%$args125429%_
        (apply make-instance gx#export-set::t _%$args125429%_)))
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
      (lambda _%$args125426%_
        (apply make-instance gx#import-expander::t _%$args125426%_)))
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
      (lambda _%$args125423%_
        (apply make-instance gx#export-expander::t _%$args125423%_)))
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
      (lambda _%$args125420%_
        (apply make-instance gx#import-export-expander::t _%$args125420%_)))
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
      (lambda (_%path125417%_ _%fun125418%_)
        (call-with-input-file
         (cons 'path: (cons _%path125417%_ gx#source-file-settings))
         _%fun125418%_)))
    (define gx#module-context:::init!
      (lambda (_%self125400%_
               _%id125401%_
               _%super125402%_
               _%ns125403%_
               _%path125404%_)
        (let ((_%self125407%_ _%self125400%_))
          (if (##fx< '11 (##structure-length _%self125407%_))
              (begin
                (##unchecked-structure-set!
                 _%self125407%_
                 _%id125401%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self125407%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self125407%_
                 _%super125402%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self125407%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self125407%_ '#f '5 '#f '#f)
                (##unchecked-structure-set!
                 _%self125407%_
                 _%ns125403%_
                 '6
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self125407%_
                 _%path125404%_
                 '7
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self125407%_ '() '8 '#f '#f)
                (##unchecked-structure-set! _%self125407%_ '() '9 '#f '#f)
                (##unchecked-structure-set! _%self125407%_ '#f '10 '#f '#f)
                (##unchecked-structure-set! _%self125407%_ '#f '11 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self125407%_
                     '11
                     (##vector-length _%self125407%_))))))
    (__bind-method! gx#module-context::t ':init! gx#module-context:::init! '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_%self125233%_ _%ctx125234%_ _%root125235%_)
        (let* ((_%self125238%_ _%self125233%_)
               (_%super125254%_
                (let ((_%$e125248%_ _%root125235%_))
                  (if _%$e125248%_
                      _%$e125248%_
                      (let ((_%$e125251%_ (gx#core-context-root__0)))
                        (if _%$e125251%_
                            _%$e125251%_
                            (let ((__obj125482
                                   (##structure gx#root-context::t '#f '#f)))
                              (let ((__constructor125483
                                     (direct-method-ref
                                      gx#root-context::t
                                      __obj125482
                                      ':init!)))
                                (if __constructor125483
                                    (__constructor125483 __obj125482)
                                    (error '"missing constructor method implementation"
                                           'class:
                                           gx#root-context::t
                                           'method:
                                           ':init!)))
                              __obj125482)))))))
          (if _%ctx125234%_
              (let ((_%id125257%_
                     (##structure-ref
                      _%ctx125234%_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_%path125258%_
                     (##structure-ref
                      _%ctx125234%_
                      '7
                      gx#module-context::t
                      '#f))
                    (_%in125259%_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _%ctx125234%_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_%e125260%_
                     (__make-promise
                      (lambda () (gx#eval-module _%ctx125234%_)))))
                (if (##fx< '8 (##structure-length _%self125238%_))
                    (begin
                      (##unchecked-structure-set!
                       _%self125238%_
                       _%id125257%_
                       '1
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self125238%_
                       (make-hash-table-eq 'size: (##length _%in125259%_))
                       '2
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self125238%_
                       _%super125254%_
                       '3
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self125238%_
                       '#f
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self125238%_
                       '#f
                       '5
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self125238%_
                       _%path125258%_
                       '6
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self125238%_
                       _%in125259%_
                       '7
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self125238%_
                       _%e125260%_
                       '8
                       '#f
                       '#f)
                      '#!void)
                    (error '"struct-instance-init!: too many arguments for struct"
                           _%self125238%_
                           '8
                           (##vector-length _%self125238%_)))
                (##for-each
                 (lambda (_%g125261125263%_)
                   (gx#core-bind-weak-import!__%
                    _%g125261125263%_
                    _%self125238%_))
                 _%in125259%_))
              (if (##fx< '8 (##structure-length _%self125238%_))
                  (begin
                    (##unchecked-structure-set! _%self125238%_ '#f '1 '#f '#f)
                    (##unchecked-structure-set!
                     _%self125238%_
                     (make-hash-table-eq)
                     '2
                     '#f
                     '#f)
                    (##unchecked-structure-set!
                     _%self125238%_
                     _%super125254%_
                     '3
                     '#f
                     '#f)
                    (##unchecked-structure-set! _%self125238%_ '#f '4 '#f '#f)
                    (##unchecked-structure-set! _%self125238%_ '#f '5 '#f '#f)
                    (##unchecked-structure-set! _%self125238%_ '#f '6 '#f '#f)
                    (##unchecked-structure-set! _%self125238%_ '() '7 '#f '#f)
                    (##unchecked-structure-set! _%self125238%_ '#f '8 '#f '#f)
                    '#!void)
                  (error '"struct-instance-init!: too many arguments for struct"
                         _%self125238%_
                         '8
                         (##vector-length _%self125238%_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_%self125269%_ _%ctx125270%_)
        (let ((_%root125272%_ '#f))
          (gx#prelude-context:::init!__%
           _%self125269%_
           _%ctx125270%_
           _%root125272%_))))
    (define gx#prelude-context:::init!
      (lambda _g125489_
        (let ((_g125488_ (##length _g125489_)))
          (cond ((##fx= _g125488_ 2)
                 (apply gx#prelude-context:::init!__0 _g125489_))
                ((##fx= _g125488_ 3)
                 (apply gx#prelude-context:::init!__% _g125489_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g125489_))))))
    (__bind-method!
     gx#prelude-context::t
     ':init!
     gx#prelude-context:::init!
     '#f)
    (define gx#import-export-expander-init!
      (lambda (_%self125107%_ _%e125108%_)
        (if (##fx< '3 (##structure-length _%self125107%_))
            (begin
              (##unchecked-structure-set!
               _%self125107%_
               _%e125108%_
               '1
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self125107%_
               (gx#current-expander-context)
               '2
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self125107%_
               (##fx- (gx#current-expander-phi) '1)
               '3
               '#f
               '#f)
              '#!void)
            (error '"struct-instance-init!: too many arguments for struct"
                   _%self125107%_
                   '3
                   (##vector-length _%self125107%_)))))
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
      (lambda (_%g124733124736%_ _%g124734124738%_)
        (gx#core-apply-user-expander__%
         _%g124733124736%_
         _%g124734124738%_
         'apply-import-expander)))
    (__bind-method!
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_%g124604124607%_ _%g124605124609%_)
        (gx#core-apply-user-expander__%
         _%g124604124607%_
         _%g124605124609%_
         'apply-export-expander)))
    (__bind-method!
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_%ctx124475%_)
        (let* ((_%path124477%_
                (##structure-ref _%ctx124475%_ '7 gx#module-context::t '#f))
               (_%path124479%_
                (if (pair? _%path124477%_)
                    (last _%path124477%_)
                    _%path124477%_)))
          (if (string? _%path124479%_) _%path124479%_ '#f))))
    (define gx#import-module__%
      (lambda (_%path124451%_ _%reload?124452%_ _%eval?124453%_)
        (let ((_%ctx124455%_
               ((gx#current-expander-module-import)
                _%path124451%_
                _%reload?124452%_)))
          (if (and _%ctx124455%_ _%eval?124453%_)
              (gx#eval-module _%ctx124455%_)
              '#!void)
          _%ctx124455%_)))
    (define gx#import-module__0
      (lambda (_%path124460%_)
        (let* ((_%reload?124462%_ '#f) (_%eval?124464%_ '#f))
          (gx#import-module__%
           _%path124460%_
           _%reload?124462%_
           _%eval?124464%_))))
    (define gx#import-module__1
      (lambda (_%path124466%_ _%reload?124467%_)
        (let ((_%eval?124469%_ '#f))
          (gx#import-module__%
           _%path124466%_
           _%reload?124467%_
           _%eval?124469%_))))
    (define gx#import-module
      (lambda _g125491_
        (let ((_g125490_ (##length _g125491_)))
          (cond ((##fx= _g125490_ 1) (apply gx#import-module__0 _g125491_))
                ((##fx= _g125490_ 2) (apply gx#import-module__1 _g125491_))
                ((##fx= _g125490_ 3) (apply gx#import-module__% _g125491_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g125491_))))))
    (define gx#eval-module
      (lambda (_%mod124448%_)
        ((gx#current-expander-module-eval) _%mod124448%_)))
    (define gx#core-eval-module
      (lambda (_%obj124428%_)
        (letrec ((_%force-e124430%_
                  (lambda (_%getf124444%_ _%e124445%_)
                    (__call-with-parameters
                     (lambda () (force (_%getf124444%_ _%e124445%_)))
                     gx#current-expander-context
                     _%e124445%_
                     gx#current-expander-phi
                     '0))))
          (let _%recur124432%_ ((_%e124434%_ _%obj124428%_))
            (if (##structure-instance-of? _%e124434%_ 'gx#module-context::t)
                (let ()
                  (let ((_%$e124437%_
                         (gx#core-context-prelude__% _%e124434%_)))
                    (if _%$e124437%_ (_%recur124432%_ _%$e124437%_) '#!void))
                  (_%force-e124430%_ gx#module-context-e _%e124434%_))
                (if (##structure-instance-of?
                     _%e124434%_
                     'gx#prelude-context::t)
                    (_%force-e124430%_ gx#prelude-context-e _%e124434%_)
                    (if (gx#stx-string? _%e124434%_)
                        (_%recur124432%_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _%e124434%_)))
                        (if (gx#core-library-module-path? _%e124434%_)
                            (_%recur124432%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%e124434%_)))
                            (error '"cannot eval module" _%obj124428%_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_%ctx124408%_)
        (let _%lp124410%_ ((_%e124412%_ _%ctx124408%_))
          (if (or (##structure-instance-of? _%e124412%_ 'gx#module-context::t)
                  (##structure-instance-of? _%e124412%_ 'gx#local-context::t))
              (_%lp124410%_ (##unchecked-structure-ref _%e124412%_ '3 '#f '#f))
              (if (##structure-instance-of? _%e124412%_ 'gx#prelude-context::t)
                  _%e124412%_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_%ctx124424%_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _%ctx124424%_))))
    (define gx#core-context-prelude
      (lambda _g125493_
        (let ((_g125492_ (##length _g125493_)))
          (cond ((##fx= _g125492_ 0)
                 (apply gx#core-context-prelude__0 _g125493_))
                ((##fx= _g125492_ 1)
                 (apply gx#core-context-prelude__% _g125493_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g125493_))))))
    (define gx#core-module->prelude-context
      (lambda (_%ctx124399%_)
        (let ((_%$e124401%_ (hash-get gx#__module-registry _%ctx124399%_)))
          (if _%$e124401%_
              _%$e124401%_
              (let ((_%pre124405%_
                     (let ((__obj125484
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
                       (gx#prelude-context:::init! __obj125484 _%ctx124399%_)
                       __obj125484)))
                (hash-put! gx#__module-registry _%ctx124399%_ _%pre124405%_)
                _%pre124405%_)))))
    (define gx#core-import-module__%
      (lambda (_%rpath124271%_ _%reload?124272%_)
        (letrec ((_%import-source124274%_
                  (lambda (_%path124363%_)
                    (if (member _%path124363%_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _%path124363%_)
                        '#!void)
                    (__call-with-parameters
                     (lambda ()
                       (let ((_g125494_ (gx#core-read-module _%path124363%_)))
                         (begin
                           (let ((_g125495_
                                  (if (##values? _g125494_)
                                      (##vector-length _g125494_)
                                      1)))
                             (if (not (##fx= _g125495_ 4))
                                 (error "Context expects 4 values" _g125495_)))
                           (let ((_%pre124366%_ (##vector-ref _g125494_ 0))
                                 (_%id124367%_ (##vector-ref _g125494_ 1))
                                 (_%ns124368%_ (##vector-ref _g125494_ 2))
                                 (_%body124369%_ (##vector-ref _g125494_ 3)))
                             (let* ((_%prelude124379%_
                                     (if (##structure-instance-of?
                                          _%pre124366%_
                                          'gx#prelude-context::t)
                                         _%pre124366%_
                                         (if (##structure-instance-of?
                                              _%pre124366%_
                                              'gx#module-context::t)
                                             (gx#core-module->prelude-context
                                              _%pre124366%_)
                                             (if (string? _%pre124366%_)
                                                 (gx#core-module->prelude-context
                                                  (gx#core-import-module__0
                                                   _%pre124366%_))
                                                 (if (not _%pre124366%_)
                                                     (let ((_%$e124375%_
                                                            (gx#current-expander-module-prelude)))
                                                       (if _%$e124375%_
                                                           _%$e124375%_
                                                           (let ((__obj125485
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
                     (gx#prelude-context:::init! __obj125485 '#f)
                     __obj125485)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error '"cannot import module; unknown prelude"
                                                            _%rpath124271%_
                                                            _%pre124366%_))))))
                                    (_%ctx124381%_
                                     (let ((__obj125486
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
                                        __obj125486
                                        _%id124367%_
                                        _%prelude124379%_
                                        _%ns124368%_
                                        _%path124363%_)
                                       __obj125486))
                                    (_%body124383%_
                                     (gx#core-expand-module-begin
                                      _%body124369%_
                                      _%ctx124381%_))
                                    (_%body124385%_
                                     (gx#core-quote-syntax__%
                                      (gx#core-cons '%#begin _%body124383%_)
                                      _%path124363%_
                                      _%ctx124381%_
                                      '())))
                               (##unchecked-structure-set!
                                _%ctx124381%_
                                (__make-promise
                                 (lambda () (gx#eval-syntax* _%body124385%_)))
                                '10
                                '#f
                                '#f)
                               (##unchecked-structure-set!
                                _%ctx124381%_
                                _%body124385%_
                                '11
                                '#f
                                '#f)
                               (hash-put!
                                gx#__module-registry
                                _%path124363%_
                                _%ctx124381%_)
                               (hash-put!
                                gx#__module-registry
                                _%id124367%_
                                _%ctx124381%_)
                               _%ctx124381%_)))))
                     gx#current-expander-context
                     (gx#core-context-root__0)
                     gx#current-expander-marks
                     '()
                     gx#current-expander-phi
                     '0
                     gx#current-expander-path
                     (cons _%path124363%_ (gx#current-expander-path))
                     gx#current-import-expander-phi
                     '#f
                     gx#current-export-expander-phi
                     '#f)))
                 (_%import-submodule124275%_
                  (lambda (_%rpath124291%_)
                    (let* ((_%rpath124292124299%_ _%rpath124291%_)
                           (_%E124294124303%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%rpath124292124299%_
                                     '([origin . refs]))
                              '#!void))
                           (_%K124295124351%_
                            (lambda (_%refs124306%_ _%origin124307%_)
                              (let ((_%ctx124309%_
                                     (if _%origin124307%_
                                         (gx#core-import-module__%
                                          _%origin124307%_
                                          _%reload?124272%_)
                                         (gx#current-expander-context))))
                                (let _%lp124311%_ ((_%rest124313%_
                                                    _%refs124306%_)
                                                   (_%ctx124314%_
                                                    _%ctx124309%_))
                                  (let* ((_%rest124315124323%_ _%rest124313%_)
                                         (_%else124317124331%_
                                          (lambda () _%ctx124314%_))
                                         (_%K124319124339%_
                                          (lambda (_%rest124334%_ _%id124335%_)
                                            (let ((_%bind124337%_
                                                   (gx#resolve-identifier__%
                                                    _%id124335%_
                                                    '0
                                                    _%ctx124314%_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _%bind124337%_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _%bind124337%_
                                                         '4
                                                         '#f
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_%lp124311%_
                                                   _%rest124334%_
                                                   (##unchecked-structure-ref
                                                    _%bind124337%_
                                                    '4
                                                    '#f
                                                    '#f))
                                                  (error '"cannot import submodule; not bound as a module"
                                                         _%rpath124291%_
                                                         _%id124335%_
                                                         _%bind124337%_))))))
                                    (if (##pair? _%rest124315124323%_)
                                        (let ((_%hd124320124342%_
                                               (##car _%rest124315124323%_))
                                              (_%tl124321124344%_
                                               (##cdr _%rest124315124323%_)))
                                          (let* ((_%id124347%_
                                                  _%hd124320124342%_)
                                                 (_%rest124349%_
                                                  _%tl124321124344%_))
                                            (_%K124319124339%_
                                             _%rest124349%_
                                             _%id124347%_)))
                                        (_%else124317124331%_))))))))
                      (if (##pair? _%rpath124292124299%_)
                          (let ((_%hd124296124354%_
                                 (##car _%rpath124292124299%_))
                                (_%tl124297124356%_
                                 (##cdr _%rpath124292124299%_)))
                            (let* ((_%origin124359%_ _%hd124296124354%_)
                                   (_%refs124361%_ _%tl124297124356%_))
                              (_%K124295124351%_
                               _%refs124361%_
                               _%origin124359%_)))
                          (_%E124294124303%_))))))
          (let ((_%$e124277%_
                 (if (not _%reload?124272%_)
                     (hash-get gx#__module-registry _%rpath124271%_)
                     '#f)))
            (if _%$e124277%_
                _%$e124277%_
                (if (list? _%rpath124271%_)
                    (_%import-submodule124275%_ _%rpath124271%_)
                    (if (gx#core-library-module-path? _%rpath124271%_)
                        (let ((_%ctx124282%_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _%rpath124271%_)
                                _%reload?124272%_)))
                          (hash-put!
                           gx#__module-registry
                           _%rpath124271%_
                           _%ctx124282%_)
                          _%ctx124282%_)
                        (let* ((_%npath124285%_
                                (path-normalize _%rpath124271%_))
                               (_%$e124287%_
                                (if (not _%reload?124272%_)
                                    (hash-get
                                     gx#__module-registry
                                     _%npath124285%_)
                                    '#f)))
                          (if _%$e124287%_
                              _%$e124287%_
                              (_%import-source124274%_
                               _%npath124285%_))))))))))
    (define gx#core-import-module__0
      (lambda (_%rpath124392%_)
        (let ((_%reload?124394%_ '#f))
          (gx#core-import-module__% _%rpath124392%_ _%reload?124394%_))))
    (define gx#core-import-module
      (lambda _g125497_
        (let ((_g125496_ (##length _g125497_)))
          (cond ((##fx= _g125496_ 1)
                 (apply gx#core-import-module__0 _g125497_))
                ((##fx= _g125496_ 2)
                 (apply gx#core-import-module__% _g125497_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g125497_))))))
    (define gx#core-read-module
      (lambda (_%path124260%_)
        (__with-catch
         (lambda (_%exn124262%_)
           (if (and (datum-parsing-exception? _%exn124262%_)
                    (eq? (datum-parsing-exception-filepos _%exn124262%_) '0))
               (gx#core-read-module/lang _%path124260%_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _%path124260%_
                (__call-with-parameters
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_%g124264124266%_)
                      (display-exception _%exn124262%_ _%g124264124266%_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _%path124260%_)))))
    (define gx#core-read-module/sexp
      (lambda (_%path124112%_)
        (let _%lp124114%_ ((_%body124116%_
                            (read-syntax-from-file _%path124112%_))
                           (_%pre124117%_ '#f)
                           (_%ns124118%_ '#f)
                           (_%pkg124119%_ '#f))
          (let* ((_%e124120124144%_ _%body124116%_)
                 (_%E124136124170%_
                  (lambda ()
                    (let ((_g125498_
                           (if _%pkg124119%_
                               (values _%pre124117%_
                                       _%ns124118%_
                                       _%pkg124119%_)
                               (gx#core-read-module-package
                                _%path124112%_
                                _%pre124117%_
                                _%ns124118%_))))
                      (begin
                        (let ((_g125499_
                               (if (##values? _g125498_)
                                   (##vector-length _g125498_)
                                   1)))
                          (if (not (##fx= _g125499_ 3))
                              (error "Context expects 3 values" _g125499_)))
                        (let ((_%pre124148%_ (##vector-ref _g125498_ 0))
                              (_%ns124149%_ (##vector-ref _g125498_ 1))
                              (_%pkg124150%_ (##vector-ref _g125498_ 2)))
                          (let* ((_%prelude124156%_
                                  (if (gx#core-bound-module-prelude?
                                       _%pre124148%_)
                                      (gx#syntax-local-e__0 _%pre124148%_)
                                      (if (gx#core-library-module-path?
                                           _%pre124148%_)
                                          (gx#core-resolve-library-module-path
                                           _%pre124148%_)
                                          (if (gx#stx-string? _%pre124148%_)
                                              (gx#core-resolve-module-path__%
                                               _%pre124148%_
                                               _%path124112%_)
                                              (gx#stx-e _%pre124148%_)))))
                                 (_%path-id124158%_
                                  (gx#core-module-path->namespace
                                   _%path124112%_))
                                 (_%pkg-id124160%_
                                  (if _%pkg124150%_
                                      (##string-append
                                       _%pkg124150%_
                                       '"/"
                                       _%path-id124158%_)
                                      _%path-id124158%_))
                                 (_%module-id124162%_
                                  (##string->symbol _%pkg-id124160%_))
                                 (_%module-ns124167%_
                                  (if (eq? _%ns124149%_ '#!void)
                                      '#f
                                      (let ((_%$e124164%_ _%ns124149%_))
                                        (if _%$e124164%_
                                            _%$e124164%_
                                            _%pkg-id124160%_)))))
                            (values _%prelude124156%_
                                    _%module-id124162%_
                                    _%module-ns124167%_
                                    _%body124116%_)))))))
                 (_%E124129124202%_
                  (lambda ()
                    (if (gx#stx-pair? _%e124120124144%_)
                        (let ((_%e124137124174%_
                               (gx#syntax-e _%e124120124144%_)))
                          (let ((_%hd124138124177%_ (##car _%e124137124174%_))
                                (_%tl124139124179%_ (##cdr _%e124137124174%_)))
                            (if (eq? (gx#stx-e _%hd124138124177%_) 'package:)
                                (if (gx#stx-pair? _%tl124139124179%_)
                                    (let ((_%e124140124182%_
                                           (gx#syntax-e _%tl124139124179%_)))
                                      (let ((_%hd124141124185%_
                                             (##car _%e124140124182%_))
                                            (_%tl124142124187%_
                                             (##cdr _%e124140124182%_)))
                                        (let* ((_%pkg124190%_
                                                _%hd124141124185%_)
                                               (_%rest124192%_
                                                _%tl124142124187%_))
                                          (if '#t
                                              (let ((_%pkg124200%_
                                                     (if (gx#identifier?
                                                          _%pkg124190%_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _%pkg124190%_))
                                                         (if (or (gx#stx-string?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%pkg124190%_)
                         (gx#stx-false? _%pkg124190%_))
                     (gx#stx-e _%pkg124190%_)
                     (gx#raise-syntax-error
                      'import
                      '"Bad syntax; Illegal package name"
                      _%pkg124190%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%lp124114%_
                                                 _%rest124192%_
                                                 _%pre124117%_
                                                 _%ns124118%_
                                                 _%pkg124200%_))
                                              (_%E124136124170%_)))))
                                    (_%E124136124170%_))
                                (_%E124136124170%_))))
                        (_%E124136124170%_))))
                 (_%E124122124232%_
                  (lambda ()
                    (if (gx#stx-pair? _%e124120124144%_)
                        (let ((_%e124130124206%_
                               (gx#syntax-e _%e124120124144%_)))
                          (let ((_%hd124131124209%_ (##car _%e124130124206%_))
                                (_%tl124132124211%_ (##cdr _%e124130124206%_)))
                            (if (eq? (gx#stx-e _%hd124131124209%_) 'namespace:)
                                (if (gx#stx-pair? _%tl124132124211%_)
                                    (let ((_%e124133124214%_
                                           (gx#syntax-e _%tl124132124211%_)))
                                      (let ((_%hd124134124217%_
                                             (##car _%e124133124214%_))
                                            (_%tl124135124219%_
                                             (##cdr _%e124133124214%_)))
                                        (let* ((_%ns124222%_
                                                _%hd124134124217%_)
                                               (_%rest124224%_
                                                _%tl124135124219%_))
                                          (if '#t
                                              (let ((_%ns124230%_
                                                     (if (gx#identifier?
                                                          _%ns124222%_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _%ns124222%_))
                                                         (if (gx#stx-string?
                                                              _%ns124222%_)
                                                             (gx#stx-e
                                                              _%ns124222%_)
                                                             (if (gx#stx-false?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%ns124222%_)
                         '#!void
                         (gx#raise-syntax-error
                          'import
                          '"Bad syntax; illegal namespace"
                          _%ns124222%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%lp124114%_
                                                 _%rest124224%_
                                                 _%pre124117%_
                                                 _%ns124230%_
                                                 _%pkg124119%_))
                                              (_%E124129124202%_)))))
                                    (_%E124129124202%_))
                                (_%E124129124202%_))))
                        (_%E124129124202%_))))
                 (_%E124121124256%_
                  (lambda ()
                    (if (gx#stx-pair? _%e124120124144%_)
                        (let ((_%e124123124236%_
                               (gx#syntax-e _%e124120124144%_)))
                          (let ((_%hd124124124239%_ (##car _%e124123124236%_))
                                (_%tl124125124241%_ (##cdr _%e124123124236%_)))
                            (if (eq? (gx#stx-e _%hd124124124239%_) 'prelude:)
                                (if (gx#stx-pair? _%tl124125124241%_)
                                    (let ((_%e124126124244%_
                                           (gx#syntax-e _%tl124125124241%_)))
                                      (let ((_%hd124127124247%_
                                             (##car _%e124126124244%_))
                                            (_%tl124128124249%_
                                             (##cdr _%e124126124244%_)))
                                        (let* ((_%prelude124252%_
                                                _%hd124127124247%_)
                                               (_%rest124254%_
                                                _%tl124128124249%_))
                                          (if '#t
                                              (_%lp124114%_
                                               _%rest124254%_
                                               _%prelude124252%_
                                               _%ns124118%_
                                               _%pkg124119%_)
                                              (_%E124122124232%_)))))
                                    (_%E124122124232%_))
                                (_%E124122124232%_))))
                        (_%E124122124232%_)))))
            (_%E124121124256%_)))))
    (define gx#core-read-module/lang
      (lambda (_%path123934%_)
        (letrec ((_%default-read-module-body123936%_
                  (lambda (_%inp124104%_)
                    (let _%lp124106%_ ((_%body124108%_ '()))
                      (let ((_%next124110%_ (read-syntax__% _%inp124104%_)))
                        (if (eof-object? _%next124110%_)
                            (reverse _%body124108%_)
                            (_%lp124106%_
                             (cons _%next124110%_ _%body124108%_)))))))
                 (_%read-body123937%_
                  (lambda (_%inp124022%_
                           _%pre124023%_
                           _%ns124024%_
                           _%pkg124025%_
                           _%args124026%_)
                    (let ((_g125500_
                           (if _%pkg124025%_
                               (values _%pre124023%_
                                       _%ns124024%_
                                       _%pkg124025%_)
                               (gx#core-read-module-package
                                _%path123934%_
                                _%pre124023%_
                                _%ns124024%_))))
                      (begin
                        (let ((_g125501_
                               (if (##values? _g125500_)
                                   (##vector-length _g125500_)
                                   1)))
                          (if (not (##fx= _g125501_ 3))
                              (error "Context expects 3 values" _g125501_)))
                        (let ((_%pre124028%_ (##vector-ref _g125500_ 0))
                              (_%ns124029%_ (##vector-ref _g125500_ 1))
                              (_%pkg124030%_ (##vector-ref _g125500_ 2)))
                          (let* ((_%prelude124032%_
                                  (gx#import-module__0 _%pre124028%_))
                                 (_%read-module-body124087%_
                                  (let ((_%$e124078%_
                                         (__find (lambda (_%e124033124035%_)
                                                   (let* ((_%g124037124047%_
                                                           _%e124033124035%_)
                                                          (_%else124039124055%_
                                                           (lambda () '#f))
                                                          (_%K124041124059%_
                                                           (lambda () '#t)))
                                                     (if (##structure-direct-instance-of?
                                                          _%g124037124047%_
                                                          'gx#module-export::t)
                                                         (let* ((_%e124042124062%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##unchecked-structure-ref
                          _%g124037124047%_
                          '1
                          '#f
                          '#f))
                        (_%e124043124065%_
                         (##unchecked-structure-ref
                          _%g124037124047%_
                          '2
                          '#f
                          '#f))
                        (_%e124044124068%_
                         (##unchecked-structure-ref
                          _%g124037124047%_
                          '3
                          '#f
                          '#f)))
                   (if (##eq? _%e124044124068%_ '1)
                       (let ((_%e124045124071%_
                              (##unchecked-structure-ref
                               _%g124037124047%_
                               '4
                               '#f
                               '#f)))
                         (if ((lambda (_%g124073124075%_)
                                (eq? _%g124073124075%_ 'read-module-body))
                              _%e124045124071%_)
                             (_%K124041124059%_)
                             (_%else124039124055%_)))
                       (_%else124039124055%_)))
                 (_%else124039124055%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (##unchecked-structure-ref
                                                  _%prelude124032%_
                                                  '9
                                                  '#f
                                                  '#f))))
                                    (if _%$e124078%_
                                        ((lambda (_%xport124081%_)
                                           (let ((_%proc124084%_
                                                  (__with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _%xport124081%_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _%proc124084%_)
                                                 _%proc124084%_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _%path123934%_
                                                  _%pre124028%_
                                                  _%proc124084%_))))
                                         _%$e124078%_)
                                        _%default-read-module-body123936%_)))
                                 (_%path-id124089%_
                                  (gx#core-module-path->namespace
                                   _%path123934%_))
                                 (_%pkg-id124091%_
                                  (if _%pkg124030%_
                                      (##string-append
                                       _%pkg124030%_
                                       '"/"
                                       _%path-id124089%_)
                                      _%path-id124089%_))
                                 (_%module-id124093%_
                                  (##string->symbol _%pkg-id124091%_))
                                 (_%module-ns124098%_
                                  (let ((_%$e124095%_ _%ns124029%_))
                                    (if _%$e124095%_
                                        _%$e124095%_
                                        _%pkg-id124091%_)))
                                 (_%body124101%_
                                  (__call-with-parameters
                                   (lambda ()
                                     (_%read-module-body124087%_
                                      _%inp124022%_))
                                   gx#current-module-reader-path
                                   _%path123934%_
                                   gx#current-module-reader-args
                                   _%args124026%_)))
                            (values _%prelude124032%_
                                    _%module-id124093%_
                                    _%module-ns124098%_
                                    _%body124101%_)))))))
                 (_%string-e123938%_
                  (lambda (_%obj124016%_ _%what124017%_)
                    (if (string? _%obj124016%_)
                        _%obj124016%_
                        (if (symbol? _%obj124016%_)
                            (symbol->string _%obj124016%_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _%what124017%_)
                             _%path123934%_
                             _%obj124016%_)))))
                 (_%read-lang-args123939%_
                  (lambda (_%inp123971%_ _%args123972%_)
                    (let* ((_%args123973123981%_ _%args123972%_)
                           (_%else123975123989%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _%path123934%_)))
                           (_%K123977124004%_
                            (lambda (_%args123992%_ _%prelude123993%_)
                              (let* ((_%pkg123995%_
                                      (pgetq__0 'package: _%args123992%_))
                                     (_%pkg123997%_
                                      (if _%pkg123995%_
                                          (_%string-e123938%_
                                           _%pkg123995%_
                                           '"package")
                                          '#f))
                                     (_%ns123999%_
                                      (pgetq__0 'namespace: _%args123992%_))
                                     (_%ns124001%_
                                      (if _%ns123999%_
                                          (_%string-e123938%_
                                           _%ns123999%_
                                           '"namespace")
                                          '#f)))
                                (_%read-body123937%_
                                 _%inp123971%_
                                 _%prelude123993%_
                                 _%ns124001%_
                                 _%pkg123997%_
                                 _%args123992%_)))))
                      (if (##pair? _%args123973123981%_)
                          (let ((_%hd123978124007%_
                                 (##car _%args123973123981%_))
                                (_%tl123979124009%_
                                 (##cdr _%args123973123981%_)))
                            (let* ((_%prelude124012%_ _%hd123978124007%_)
                                   (_%args124014%_ _%tl123979124009%_))
                              (_%K123977124004%_
                               _%args124014%_
                               _%prelude124012%_)))
                          (_%else123975123989%_)))))
                 (_%read-lang123940%_
                  (lambda (_%inp123945%_)
                    (let* ((_%head123947%_ (read-line _%inp123945%_))
                           (_%$e123949%_
                            (string-index__0 _%head123947%_ '#\space)))
                      (if _%$e123949%_
                          ((lambda (_%ix123952%_)
                             (let ((_%lang123954%_
                                    (substring
                                     _%head123947%_
                                     '0
                                     _%ix123952%_)))
                               (if (equal? _%lang123954%_ '"#lang")
                                   (let* ((_%rest123956%_
                                           (substring
                                            _%head123947%_
                                            (##fx+ _%ix123952%_ '1)
                                            (string-length _%head123947%_)))
                                          (_%args123967%_
                                           (__with-catch
                                            (lambda (_%g123957123959%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _%path123934%_
                                               _%g123957123959%_))
                                            (lambda ()
                                              (call-with-input-string
                                               _%rest123956%_
                                               (lambda (_%g123962123964%_)
                                                 (read-all
                                                  _%g123962123964%_
                                                  read)))))))
                                     (_%read-lang-args123939%_
                                      _%inp123945%_
                                      _%args123967%_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _%path123934%_))))
                           _%$e123949%_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _%path123934%_)))))
                 (_%read-e123941%_
                  (lambda (_%inp123943%_)
                    (if (eq? (peek-char _%inp123943%_) '#\#)
                        (_%read-lang123940%_ _%inp123943%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _%path123934%_)))))
          (gx#call-with-input-source-file _%path123934%_ _%read-e123941%_))))
    (define gx#core-read-module-package
      (lambda (_%path123882%_ _%pre123883%_ _%ns123884%_)
        (letrec ((_%string-e123886%_
                  (lambda (_%e123929%_)
                    (if (symbol? _%e123929%_)
                        (symbol->string _%e123929%_)
                        (if (string? _%e123929%_)
                            _%e123929%_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%e123929%_))))))
          (let _%lp123888%_ ((_%dir123890%_ (path-directory _%path123882%_))
                             (_%pkg-path123891%_ '()))
            (let ((_%gerbil.pkg123893%_
                   (path-expand '"gerbil.pkg" _%dir123890%_)))
              (if (##file-exists? _%gerbil.pkg123893%_)
                  (let ((_%plist123895%_
                         (gx#core-library-package-plist__% _%dir123890%_ '#t)))
                    (if (null? _%plist123895%_)
                        (let ((_%pkg123898%_
                               (if (not (null? _%pkg-path123891%_))
                                   (string-join _%pkg-path123891%_ '"/")
                                   '#f)))
                          (values _%pre123883%_ _%ns123884%_ _%pkg123898%_))
                        (if (list? _%plist123895%_)
                            (let* ((_%root123901%_
                                    (pgetq__0 'package: _%plist123895%_))
                                   (_%pkg123905%_
                                    (let ((_%pkg-path123903%_
                                           (if _%root123901%_
                                               (cons (_%string-e123886%_
                                                      _%root123901%_)
                                                     _%pkg-path123891%_)
                                               _%pkg-path123891%_)))
                                      (if (not (null? _%pkg-path123903%_))
                                          (string-join _%pkg-path123903%_ '"/")
                                          '#f)))
                                   (_%ns123912%_
                                    (let ((_%ns123910%_
                                           (let ((_%$e123907%_ _%ns123884%_))
                                             (if _%$e123907%_
                                                 _%$e123907%_
                                                 (pgetq__0
                                                  'namespace:
                                                  _%plist123895%_)))))
                                      (if _%ns123910%_
                                          (_%string-e123886%_ _%ns123910%_)
                                          '#f)))
                                   (_%pre123917%_
                                    (let ((_%$e123914%_ _%pre123883%_))
                                      (if _%$e123914%_
                                          _%$e123914%_
                                          (pgetq__0
                                           'prelude:
                                           _%plist123895%_)))))
                              (values _%pre123917%_
                                      _%ns123912%_
                                      _%pkg123905%_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%plist123895%_))))
                  (let ((_%dir*123921%_
                         (path-strip-trailing-directory-separator
                          _%dir123890%_)))
                    (if (or (__string-empty? _%dir*123921%_)
                            (equal? _%dir123890%_ _%dir*123921%_))
                        (values _%pre123883%_ _%ns123884%_ '#f)
                        (let ((_%xpath123926%_
                               (path-strip-directory _%dir*123921%_))
                              (_%xdir123927%_ (path-directory _%dir*123921%_)))
                          (_%lp123888%_
                           _%xdir123927%_
                           (cons _%xpath123926%_ _%pkg-path123891%_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_%path123880%_)
        (path-strip-extension (path-strip-directory _%path123880%_))))
    (define gx#core-module-path->id
      (lambda (_%path123878%_)
        (##string->symbol (gx#core-module-path->namespace _%path123878%_))))
    (define gx#core-resolve-module-path__%
      (lambda (_%stx-path123857%_ _%rel123858%_)
        (let* ((_%path123860%_ (gx#stx-e _%stx-path123857%_))
               (_%path123862%_
                (if (__string-empty? (path-extension _%path123860%_))
                    (##string-append _%path123860%_ '".ss")
                    _%path123860%_)))
          (gx#core-resolve-path__%
           _%path123862%_
           (let ((_%$e123865%_ (gx#stx-source _%stx-path123857%_)))
             (if _%$e123865%_ _%$e123865%_ _%rel123858%_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_%stx-path123871%_)
        (let ((_%rel123873%_ '#f))
          (gx#core-resolve-module-path__% _%stx-path123871%_ _%rel123873%_))))
    (define gx#core-resolve-module-path
      (lambda _g125503_
        (let ((_g125502_ (##length _g125503_)))
          (cond ((##fx= _g125502_ 1)
                 (apply gx#core-resolve-module-path__0 _g125503_))
                ((##fx= _g125502_ 2)
                 (apply gx#core-resolve-module-path__% _g125503_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g125503_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_%libpath123742%_)
        (let* ((_%spath123744%_ (symbol->string (gx#stx-e _%libpath123742%_)))
               (_%spath123746%_
                (substring
                 _%spath123744%_
                 '1
                 (##string-length _%spath123744%_)))
               (_%ext123748%_ (path-extension _%spath123746%_))
               (_%ssi123750%_
                (if (__string-empty? _%ext123748%_)
                    (##string-append _%spath123746%_ '".ssi")
                    (##string-append
                     (path-strip-extension _%spath123746%_)
                     '".ssi")))
               (_%srcs123754%_
                (if (__string-empty? _%ext123748%_)
                    (##map (lambda (_%ext123752%_)
                             (string-append _%spath123746%_ _%ext123752%_))
                           '(".ss" ".sld" ".scm"))
                    (cons _%spath123746%_ '()))))
          (let _%lp123757%_ ((_%rest123759%_ (load-path)))
            (let* ((_%rest123760123769%_ _%rest123759%_)
                   (_%E123763123773%_
                    (lambda ()
                      (error '"No clause matching"
                             _%rest123760123769%_
                             '([dir . rest])
                             '([]))
                      '#!void)))
              (let ((_%K123765123844%_
                     (lambda (_%rest123784%_ _%dir123785%_)
                       (letrec ((_%resolve123787%_
                                 (lambda (_%ssi123800%_ _%srcs123801%_)
                                   (let ((_%compiled-path123803%_
                                          (path-expand
                                           _%ssi123800%_
                                           _%dir123785%_)))
                                     (if (##file-exists?
                                          _%compiled-path123803%_)
                                         (path-normalize
                                          _%compiled-path123803%_)
                                         (let _%lpr123805%_ ((_%rest-src123807%_
                                                              _%srcs123801%_))
                                           (let* ((_%rest-src123808123816%_
                                                   _%rest-src123807%_)
                                                  (_%else123810123824%_
                                                   (lambda ()
                                                     (_%lp123757%_
                                                      _%rest123784%_)))
                                                  (_%K123812123832%_
                                                   (lambda (_%rest-src123827%_
                                                            _%src123828%_)
                                                     (let ((_%src-path123830%_
                                                            (path-expand
                                                             _%src123828%_
                                                             _%dir123785%_)))
                                                       (if (##file-exists?
                                                            _%src-path123830%_)
                                                           (path-normalize
                                                            _%src-path123830%_)
                                                           (_%lpr123805%_
                                                            _%rest-src123827%_))))))
                                             (if (##pair? _%rest-src123808123816%_)
                                                 (let ((_%hd123813123835%_
                                                        (##car _%rest-src123808123816%_))
                                                       (_%tl123814123837%_
                                                        (##cdr _%rest-src123808123816%_)))
                                                   (let* ((_%src123840%_
                                                           _%hd123813123835%_)
                                                          (_%rest-src123842%_
                                                           _%tl123814123837%_))
                                                     (_%K123812123832%_
                                                      _%rest-src123842%_
                                                      _%src123840%_)))
                                                 (_%else123810123824%_)))))))))
                         (let ((_%$e123789%_
                                (gx#core-library-package-path-prefix
                                 _%dir123785%_)))
                           (if _%$e123789%_
                               ((lambda (_%prefix123792%_)
                                  (if (string-prefix?
                                       _%prefix123792%_
                                       _%spath123746%_)
                                      (let ((_%ssi123796%_
                                             (substring
                                              _%ssi123750%_
                                              (string-length _%prefix123792%_)
                                              (##string-length _%ssi123750%_)))
                                            (_%srcs123797%_
                                             (##map (lambda (_%src123794%_)
                                                      (substring
                                                       _%src123794%_
                                                       (string-length
                                                        _%prefix123792%_)
                                                       (string-length
                                                        _%src123794%_)))
                                                    _%srcs123754%_)))
                                        (_%resolve123787%_
                                         _%ssi123796%_
                                         _%srcs123797%_))
                                      (_%lp123757%_ _%rest123784%_)))
                                _%$e123789%_)
                               (_%resolve123787%_
                                _%ssi123750%_
                                _%srcs123754%_))))))
                    (_%K123764123778%_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"cannot find library module"
                        _%libpath123742%_))))
                (let ((_%try-match123762123781%_
                       (lambda ()
                         (if (##null? _%rest123760123769%_)
                             (_%K123764123778%_)
                             (_%E123763123773%_)))))
                  (if (##pair? _%rest123760123769%_)
                      (let ((_%tl123767123849%_ (##cdr _%rest123760123769%_))
                            (_%hd123766123847%_ (##car _%rest123760123769%_)))
                        (let ((_%dir123852%_ _%hd123766123847%_)
                              (_%rest123854%_ _%tl123767123849%_))
                          (_%K123765123844%_ _%rest123854%_ _%dir123852%_)))
                      (_%try-match123762123781%_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_%modpath123710%_)
        (letrec ((_%resolve123712%_
                  (lambda (_%path123733%_ _%base123734%_)
                    (let ((_%$e123736%_
                           (string-rindex__0 _%base123734%_ '#\/)))
                      (if _%$e123736%_
                          ((lambda (_%idx123739%_)
                             (gx#core-resolve-library-module-path
                              (##string->symbol
                               (string-append
                                '":"
                                (substring _%base123734%_ '0 _%idx123739%_)
                                '"/"
                                _%path123733%_))))
                           _%$e123736%_)
                          (gx#core-resolve-library-module-path
                           (##string->symbol
                            (string-append '":" _%path123733%_))))))))
          (let ((_%spath123714%_ (symbol->string (gx#stx-e _%modpath123710%_)))
                (_%mod123715%_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _%mod123715%_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"cannot resolve relative module path; not in module context"
                 _%modpath123710%_))
            (let ((_%mpath123717%_
                   (symbol->string
                    (##structure-ref
                     _%mod123715%_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _%lp123719%_ ((_%spath123721%_ _%spath123714%_)
                                 (_%mpath123722%_ _%mpath123717%_))
                (if (string-prefix? '"../" _%spath123721%_)
                    (let ((_%$e123725%_
                           (string-rindex__0 _%mpath123722%_ '#\/)))
                      (if _%$e123725%_
                          ((lambda (_%idx123728%_)
                             (_%lp123719%_
                              (substring
                               _%spath123721%_
                               '3
                               (string-length _%spath123721%_))
                              (substring _%mpath123722%_ '0 _%idx123728%_)))
                           _%$e123725%_)
                          (gx#raise-syntax-error
                           '#f
                           '"cannot resolve relative module path; illegal traversal"
                           _%modpath123710%_)))
                    (if (string-prefix? '"./" _%spath123721%_)
                        (_%lp123719%_
                         (substring
                          _%spath123721%_
                          '2
                          (string-length _%spath123721%_))
                         _%mpath123722%_)
                        (_%resolve123712%_
                         _%spath123721%_
                         _%mpath123722%_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_%dir123702%_)
        (let ((_%$e123704%_
               (pgetq__0
                'package:
                (gx#core-library-package-plist__0 _%dir123702%_))))
          (if _%$e123704%_
              ((lambda (_%pkg123707%_)
                 (##string-append (symbol->string _%pkg123707%_) '"/"))
               _%$e123704%_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_%dir123672%_ _%exists?123673%_)
        (let ((_%$e123675%_ (hash-get gx#__module-pkg-cache _%dir123672%_)))
          (if _%$e123675%_
              (values _%$e123675%_)
              (let* ((_%gerbil.pkg123679%_
                      (path-expand '"gerbil.pkg" _%dir123672%_))
                     (_%plist123689%_
                      (if (or _%exists?123673%_
                              (##file-exists? _%gerbil.pkg123679%_))
                          (let ((_%e123684%_
                                 (gx#call-with-input-source-file
                                  _%gerbil.pkg123679%_
                                  read)))
                            (if (eof-object? _%e123684%_)
                                '()
                                (if (list? _%e123684%_)
                                    _%e123684%_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _%gerbil.pkg123679%_
                                     _%e123684%_))))
                          '())))
                (hash-put! gx#__module-pkg-cache _%dir123672%_ _%plist123689%_)
                _%plist123689%_)))))
    (define gx#core-library-package-plist__0
      (lambda (_%dir123695%_)
        (let ((_%exists?123697%_ '#f))
          (gx#core-library-package-plist__% _%dir123695%_ _%exists?123697%_))))
    (define gx#core-library-package-plist
      (lambda _g125505_
        (let ((_g125504_ (##length _g125505_)))
          (cond ((##fx= _g125504_ 1)
                 (apply gx#core-library-package-plist__0 _g125505_))
                ((##fx= _g125504_ 2)
                 (apply gx#core-library-package-plist__% _g125505_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g125505_))))))
    (define gx#core-library-module-path?
      (lambda (_%stx123669%_)
        (gx#core-special-module-path? _%stx123669%_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_%stx123667%_)
        (gx#core-special-module-path? _%stx123667%_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_%stx123662%_ _%char123663%_)
        (if (gx#identifier? _%stx123662%_)
            (if (interned-symbol? (gx#stx-e _%stx123662%_))
                (let ((_%str123665%_
                       (symbol->string (gx#stx-e _%stx123662%_))))
                  (if (##fx> (##string-length _%str123665%_) '1)
                      (eq? (string-ref _%str123665%_ '0) _%char123663%_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_%stx123656%_)
        (gx#core-bound-identifier?__%
         _%stx123656%_
         (lambda (_%g123657123659%_)
           (gx#expander-binding?__% _%g123657123659%_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_%stx123650%_)
        (gx#core-bound-identifier?__%
         _%stx123650%_
         (lambda (_%g123651123653%_)
           (gx#expander-binding?__% _%g123651123653%_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_%stx123637%_)
        (letrec ((_%module-prelude?123639%_
                  (lambda (_%e123645%_)
                    (let ((_%$e123647%_
                           (##structure-instance-of?
                            _%e123645%_
                            'gx#module-context::t)))
                      (if _%$e123647%_
                          _%$e123647%_
                          (##structure-instance-of?
                           _%e123645%_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _%stx123637%_
           (lambda (_%g123640123642%_)
             (gx#expander-binding?__%
              _%g123640123642%_
              _%module-prelude?123639%_))))))
    (define gx#core-bind-import!__%
      (lambda (_%in123567%_ _%ctx123568%_ _%force-weak?123569%_)
        (let* ((_%in123570123579%_ _%in123567%_)
               (_%E123572123583%_
                (lambda ()
                  (error '"No clause matching"
                         _%in123570123579%_
                         '((module-import source key phi weak?)))
                  '#!void))
               (_%K123573123596%_
                (lambda (_%weak?123586%_
                         _%phi123587%_
                         _%key123588%_
                         _%source123589%_)
                  (gx#core-bind!__%
                   _%key123588%_
                   (let ((_%e123591%_
                          (gx#core-resolve-module-export _%source123589%_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref _%e123591%_ '1 '#f '#f)
                      _%key123588%_
                      _%phi123587%_
                      _%e123591%_
                      (##unchecked-structure-ref _%source123589%_ '1 '#f '#f)
                      (let ((_%$e123593%_ _%force-weak?123569%_))
                        (if _%$e123593%_ _%$e123593%_ _%weak?123586%_))))
                   gx#core-context-rebind?
                   _%phi123587%_
                   _%ctx123568%_))))
          (if (##structure-direct-instance-of?
               _%in123570123579%_
               'gx#module-import::t)
              (let* ((_%e123574123599%_
                      (##unchecked-structure-ref
                       _%in123570123579%_
                       '1
                       '#f
                       '#f))
                     (_%source123602%_ _%e123574123599%_)
                     (_%e123575123604%_
                      (##unchecked-structure-ref
                       _%in123570123579%_
                       '2
                       '#f
                       '#f))
                     (_%key123607%_ _%e123575123604%_)
                     (_%e123576123609%_
                      (##unchecked-structure-ref
                       _%in123570123579%_
                       '3
                       '#f
                       '#f))
                     (_%phi123612%_ _%e123576123609%_)
                     (_%e123577123614%_
                      (##unchecked-structure-ref
                       _%in123570123579%_
                       '4
                       '#f
                       '#f))
                     (_%weak?123617%_ _%e123577123614%_))
                (_%K123573123596%_
                 _%weak?123617%_
                 _%phi123612%_
                 _%key123607%_
                 _%source123602%_))
              (_%E123572123583%_)))))
    (define gx#core-bind-import!__0
      (lambda (_%in123622%_)
        (let* ((_%ctx123624%_ (gx#current-expander-context))
               (_%force-weak?123626%_ '#f))
          (gx#core-bind-import!__%
           _%in123622%_
           _%ctx123624%_
           _%force-weak?123626%_))))
    (define gx#core-bind-import!__1
      (lambda (_%in123628%_ _%ctx123629%_)
        (let ((_%force-weak?123631%_ '#f))
          (gx#core-bind-import!__%
           _%in123628%_
           _%ctx123629%_
           _%force-weak?123631%_))))
    (define gx#core-bind-import!
      (lambda _g125507_
        (let ((_g125506_ (##length _g125507_)))
          (cond ((##fx= _g125506_ 1) (apply gx#core-bind-import!__0 _g125507_))
                ((##fx= _g125506_ 2) (apply gx#core-bind-import!__1 _g125507_))
                ((##fx= _g125506_ 3) (apply gx#core-bind-import!__% _g125507_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g125507_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_%in123553%_ _%ctx123554%_)
        (gx#core-bind-import!__% _%in123553%_ _%ctx123554%_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_%in123559%_)
        (let ((_%ctx123561%_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _%in123559%_ _%ctx123561%_))))
    (define gx#core-bind-weak-import!
      (lambda _g125509_
        (let ((_g125508_ (##length _g125509_)))
          (cond ((##fx= _g125508_ 1)
                 (apply gx#core-bind-weak-import!__0 _g125509_))
                ((##fx= _g125508_ 2)
                 (apply gx#core-bind-weak-import!__% _g125509_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g125509_))))))
    (define gx#core-resolve-module-export
      (lambda (_%out123444%_)
        (letrec ((_%subst123446%_
                  (lambda (_%key123492%_)
                    (let* ((_%key123493123501%_ _%key123492%_)
                           (_%else123495123509%_ (lambda () _%key123492%_))
                           (_%K123497123540%_
                            (lambda (_%mark123512%_ _%id123513%_)
                              (let* ((_%mark123514123520%_ _%mark123512%_)
                                     (_%E123516123524%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark123514123520%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K123517123532%_
                                      (lambda (_%subst123527%_)
                                        (let ((_%$e123529%_
                                               (if _%subst123527%_
                                                   (hash-get
                                                    _%subst123527%_
                                                    _%id123513%_)
                                                   '#f)))
                                          (if _%$e123529%_
                                              _%$e123529%_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _%key123492%_))))))
                                (if (##structure-instance-of?
                                     _%mark123514123520%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e123518123535%_
                                            (##unchecked-structure-ref
                                             _%mark123514123520%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst123538%_ _%e123518123535%_))
                                      (_%K123517123532%_ _%subst123538%_))
                                    (_%E123516123524%_))))))
                      (if (##pair? _%key123493123501%_)
                          (let ((_%hd123498123543%_
                                 (##car _%key123493123501%_))
                                (_%tl123499123545%_
                                 (##cdr _%key123493123501%_)))
                            (let* ((_%id123548%_ _%hd123498123543%_)
                                   (_%mark123550%_ _%tl123499123545%_))
                              (_%K123497123540%_ _%mark123550%_ _%id123548%_)))
                          (_%else123495123509%_))))))
          (let* ((_%out123447123457%_ _%out123444%_)
                 (_%E123449123461%_
                  (lambda ()
                    (error '"No clause matching"
                           _%out123447123457%_
                           '((module-export ctx key phi _ _)))
                    '#!void))
                 (_%K123450123468%_
                  (lambda (_%phi123464%_ _%key123465%_ _%ctx123466%_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _%ctx123466%_ _%phi123464%_)
                     (_%subst123446%_ _%key123465%_)))))
            (if (##structure-direct-instance-of?
                 _%out123447123457%_
                 'gx#module-export::t)
                (let* ((_%e123451123471%_
                        (##unchecked-structure-ref
                         _%out123447123457%_
                         '1
                         '#f
                         '#f))
                       (_%ctx123474%_ _%e123451123471%_)
                       (_%e123452123476%_
                        (##unchecked-structure-ref
                         _%out123447123457%_
                         '2
                         '#f
                         '#f))
                       (_%key123479%_ _%e123452123476%_)
                       (_%e123453123481%_
                        (##unchecked-structure-ref
                         _%out123447123457%_
                         '3
                         '#f
                         '#f))
                       (_%phi123484%_ _%e123453123481%_)
                       (_%e123454123486%_
                        (##unchecked-structure-ref
                         _%out123447123457%_
                         '4
                         '#f
                         '#f))
                       (_%e123455123489%_
                        (##unchecked-structure-ref
                         _%out123447123457%_
                         '5
                         '#f
                         '#f)))
                  (_%K123450123468%_
                   _%phi123484%_
                   _%key123479%_
                   _%ctx123474%_))
                (_%E123449123461%_))))))
    (define gx#core-module-export->import__%
      (lambda (_%out123369%_ _%rename123370%_ _%dphi123371%_)
        (let* ((_%out123372123382%_ _%out123369%_)
               (_%E123374123386%_
                (lambda ()
                  (error '"No clause matching"
                         _%out123372123382%_
                         '((module-export ctx key phi name weak?)))
                  '#!void))
               (_%K123375123398%_
                (lambda (_%weak?123389%_
                         _%name123390%_
                         _%phi123391%_
                         _%key123392%_
                         _%ctx123393%_)
                  (##structure
                   gx#module-import::t
                   _%out123369%_
                   (let ((_%$e123395%_ _%rename123370%_))
                     (if _%$e123395%_ _%$e123395%_ _%name123390%_))
                   (fx+ _%phi123391%_ _%dphi123371%_)
                   _%weak?123389%_))))
          (if (##structure-direct-instance-of?
               _%out123372123382%_
               'gx#module-export::t)
              (let* ((_%e123376123401%_
                      (##unchecked-structure-ref
                       _%out123372123382%_
                       '1
                       '#f
                       '#f))
                     (_%ctx123404%_ _%e123376123401%_)
                     (_%e123377123406%_
                      (##unchecked-structure-ref
                       _%out123372123382%_
                       '2
                       '#f
                       '#f))
                     (_%key123409%_ _%e123377123406%_)
                     (_%e123378123411%_
                      (##unchecked-structure-ref
                       _%out123372123382%_
                       '3
                       '#f
                       '#f))
                     (_%phi123414%_ _%e123378123411%_)
                     (_%e123379123416%_
                      (##unchecked-structure-ref
                       _%out123372123382%_
                       '4
                       '#f
                       '#f))
                     (_%name123419%_ _%e123379123416%_)
                     (_%e123380123421%_
                      (##unchecked-structure-ref
                       _%out123372123382%_
                       '5
                       '#f
                       '#f))
                     (_%weak?123424%_ _%e123380123421%_))
                (_%K123375123398%_
                 _%weak?123424%_
                 _%name123419%_
                 _%phi123414%_
                 _%key123409%_
                 _%ctx123404%_))
              (_%E123374123386%_)))))
    (define gx#core-module-export->import__0
      (lambda (_%out123429%_)
        (let* ((_%rename123431%_ '#f) (_%dphi123433%_ '0))
          (gx#core-module-export->import__%
           _%out123429%_
           _%rename123431%_
           _%dphi123433%_))))
    (define gx#core-module-export->import__1
      (lambda (_%out123435%_ _%rename123436%_)
        (let ((_%dphi123438%_ '0))
          (gx#core-module-export->import__%
           _%out123435%_
           _%rename123436%_
           _%dphi123438%_))))
    (define gx#core-module-export->import
      (lambda _g125511_
        (let ((_g125510_ (##length _g125511_)))
          (cond ((##fx= _g125510_ 1)
                 (apply gx#core-module-export->import__0 _g125511_))
                ((##fx= _g125510_ 2)
                 (apply gx#core-module-export->import__1 _g125511_))
                ((##fx= _g125510_ 3)
                 (apply gx#core-module-export->import__% _g125511_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g125511_))))))
    (define gx#core-expand-module%
      (lambda (_%stx123268%_)
        (letrec ((_%make-context123270%_
                  (lambda (_%id123347%_)
                    (let* ((_%super123349%_ (gx#current-expander-context))
                           (_%bind-id123351%_ (gx#stx-e _%id123347%_))
                           (_%mod-id123353%_
                            (if (##structure-instance-of?
                                 _%super123349%_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##structure-ref
                                  _%super123349%_
                                  '1
                                  gx#expander-context::t
                                  '#f)
                                 '"~"
                                 _%bind-id123351%_)
                                _%bind-id123351%_))
                           (_%ns123355%_ (symbol->string _%mod-id123353%_))
                           (_%path123365%_
                            (if (##structure-instance-of?
                                 _%super123349%_
                                 'gx#module-context::t)
                                (let ((_%path123357%_
                                       (##unchecked-structure-ref
                                        _%super123349%_
                                        '7
                                        '#f
                                        '#f)))
                                  (if (or (pair? _%path123357%_)
                                          (null? _%path123357%_))
                                      (cons _%bind-id123351%_ _%path123357%_)
                                      (if (not _%path123357%_)
                                          _%bind-id123351%_
                                          (cons _%bind-id123351%_
                                                (cons _%path123357%_ '())))))
                                _%bind-id123351%_))
                           (__obj125487
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
                       __obj125487
                       _%mod-id123353%_
                       _%super123349%_
                       _%ns123355%_
                       _%path123365%_)
                      __obj125487)))
                 (_%valid-module-id?123271%_
                  (lambda (_%id123322%_)
                    (let* ((_%str123324%_ (symbol->string _%id123322%_))
                           (_%len123326%_ (##string-length _%str123324%_)))
                      (if (##fx>= _%len123326%_ '1)
                          (let _%loop123329%_ ((_%index123331%_
                                                (##fx- (##string-length
                                                        _%str123324%_)
                                                       '1)))
                            (if (##fx>= _%index123331%_ '0)
                                (let ((_%c123333%_
                                       (string-ref
                                        _%str123324%_
                                        _%index123331%_)))
                                  (if (or (and (##char>=? _%c123333%_ '#\a)
                                               (##char<=? _%c123333%_ '#\z))
                                          (and (##char>=? _%c123333%_ '#\A)
                                               (##char<=? _%c123333%_ '#\Z))
                                          (and (##char>=? _%c123333%_ '#\0)
                                               (##char<=? _%c123333%_ '#\9))
                                          (##char=? _%c123333%_ '#\_)
                                          (##char=? _%c123333%_ '#\-))
                                      (_%loop123329%_
                                       (##fx- _%index123331%_ '1))
                                      '#f))
                                '#t))
                          '#f)))))
          (let* ((_%e123272123282%_ _%stx123268%_)
                 (_%E123274123286%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e123272123282%_)))
                 (_%E123273123318%_
                  (lambda ()
                    (if (gx#stx-pair? _%e123272123282%_)
                        (let ((_%e123275123290%_
                               (gx#syntax-e _%e123272123282%_)))
                          (let ((_%hd123276123293%_ (##car _%e123275123290%_))
                                (_%tl123277123295%_ (##cdr _%e123275123290%_)))
                            (if (gx#stx-pair? _%tl123277123295%_)
                                (let ((_%e123278123298%_
                                       (gx#syntax-e _%tl123277123295%_)))
                                  (let ((_%hd123279123301%_
                                         (##car _%e123278123298%_))
                                        (_%tl123280123303%_
                                         (##cdr _%e123278123298%_)))
                                    (let* ((_%id123306%_ _%hd123279123301%_)
                                           (_%body123308%_ _%tl123280123303%_))
                                      (if (and (gx#identifier? _%id123306%_)
                                               (gx#stx-list? _%body123308%_))
                                          (if (_%valid-module-id?123271%_
                                               (gx#stx-e
                                                (gx#datum->syntax__0 '#f 'id)))
                                              (let* ((_%ctx123310%_
                                                      (_%make-context123270%_
                                                       _%id123306%_))
                                                     (_%body123312%_
                                                      (gx#core-expand-module-begin
                                                       _%body123308%_
                                                       _%ctx123310%_))
                                                     (_%body123314%_
                                                      (gx#core-quote-syntax__1
                                                       (gx#core-cons
                                                        '%#begin
                                                        _%body123312%_)
                                                       (gx#stx-source
                                                        _%stx123268%_))))
                                                (##unchecked-structure-set!
                                                 _%ctx123310%_
                                                 (__make-promise
                                                  (lambda ()
                                                    (gx#eval-syntax*
                                                     _%body123314%_)))
                                                 '10
                                                 '#f
                                                 '#f)
                                                (##unchecked-structure-set!
                                                 _%ctx123310%_
                                                 _%body123314%_
                                                 '11
                                                 '#f
                                                 '#f)
                                                (gx#core-bind-syntax!__0
                                                 _%id123306%_
                                                 _%ctx123310%_)
                                                (gx#core-quote-syntax__1
                                                 (gx#core-list
                                                  '%#module
                                                  (gx#core-quote-syntax__0
                                                   _%id123306%_)
                                                  _%body123314%_)
                                                 (gx#stx-source
                                                  _%stx123268%_)))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"invalid module id; allowed characters are A-Z,a-z,0-9,_,-"
                                               _%stx123268%_
                                               (gx#datum->syntax__0 '#f 'id)))
                                          (_%E123274123286%_)))))
                                (_%E123274123286%_))))
                        (_%E123274123286%_)))))
            (_%E123273123318%_)))))
    (define gx#core-expand-module-begin
      (lambda (_%body123234%_ _%ctx123235%_)
        (__call-with-parameters
         (lambda ()
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_%stx123238%_
                   (gx#core-expand-head (cons '%%begin-module _%body123234%_)))
                  (_%e123239123246%_ _%stx123238%_)
                  (_%E123241123250%_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _%stx123238%_)))
                  (_%E123240123264%_
                   (lambda ()
                     (if (gx#stx-pair? _%e123239123246%_)
                         (let ((_%e123242123254%_
                                (gx#syntax-e _%e123239123246%_)))
                           (let ((_%hd123243123257%_ (##car _%e123242123254%_))
                                 (_%tl123244123259%_
                                  (##cdr _%e123242123254%_)))
                             (if (and (gx#identifier? _%hd123243123257%_)
                                      (gx#core-identifier=?
                                       _%hd123243123257%_
                                       '%#begin-module))
                                 (let ((_%body123262%_ _%tl123244123259%_))
                                   (if '#t
                                       (if (gx#sealed-syntax? _%stx123238%_)
                                           _%body123262%_
                                           (gx#core-expand-module-body
                                            _%body123262%_))
                                       (_%E123241123250%_)))
                                 (_%E123241123250%_))))
                         (_%E123241123250%_)))))
             (_%E123240123264%_)))
         gx#current-expander-context
         _%ctx123235%_
         gx#current-expander-phi
         '0)))
    (define gx#core-expand-module-body
      (lambda (_%body123030%_)
        (letrec ((_%expand-special123032%_
                  (lambda (_%hd123161%_ _%K123162%_ _%rest123163%_ _%r123164%_)
                    (let* ((_%e123165123182%_ _%hd123161%_)
                           (_%E123177123186%_
                            (lambda ()
                              (_%K123162%_
                               _%rest123163%_
                               (cons (gx#core-expand-top _%hd123161%_)
                                     _%r123164%_))))
                           (_%E123167123198%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123165123182%_)
                                  (let ((_%e123178123190%_
                                         (gx#syntax-e _%e123165123182%_)))
                                    (let ((_%hd123179123193%_
                                           (##car _%e123178123190%_))
                                          (_%tl123180123195%_
                                           (##cdr _%e123178123190%_)))
                                      (if (and (gx#identifier?
                                                _%hd123179123193%_)
                                               (gx#core-identifier=?
                                                _%hd123179123193%_
                                                '%#export))
                                          (if '#t
                                              (_%K123162%_
                                               _%rest123163%_
                                               (cons _%hd123161%_ _%r123164%_))
                                              (_%E123177123186%_))
                                          (_%E123177123186%_))))
                                  (_%E123177123186%_))))
                           (_%E123166123230%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123165123182%_)
                                  (let ((_%e123168123202%_
                                         (gx#syntax-e _%e123165123182%_)))
                                    (let ((_%hd123169123205%_
                                           (##car _%e123168123202%_))
                                          (_%tl123170123207%_
                                           (##cdr _%e123168123202%_)))
                                      (if (and (gx#identifier?
                                                _%hd123169123205%_)
                                               (gx#core-identifier=?
                                                _%hd123169123205%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl123170123207%_)
                                              (let ((_%e123171123210%_
                                                     (gx#syntax-e
                                                      _%tl123170123207%_)))
                                                (let ((_%hd123172123213%_
                                                       (##car _%e123171123210%_))
                                                      (_%tl123173123215%_
                                                       (##cdr _%e123171123210%_)))
                                                  (let ((_%hd-bind123218%_
                                                         _%hd123172123213%_))
                                                    (if (gx#stx-pair?
                                                         _%tl123173123215%_)
                                                        (let ((_%e123174123220%_
                                                               (gx#syntax-e
                                                                _%tl123173123215%_)))
                                                          (let ((_%hd123175123223%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e123174123220%_))
                        (_%tl123176123225%_ (##cdr _%e123174123220%_)))
                    (let ((_%expr123228%_ _%hd123175123223%_))
                      (if (gx#stx-null? _%tl123176123225%_)
                          (if (gx#core-bind-values? _%hd-bind123218%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind123218%_)
                                (_%K123162%_
                                 _%rest123163%_
                                 (cons _%hd123161%_ _%r123164%_)))
                              (_%E123167123198%_))
                          (_%E123167123198%_)))))
                (_%E123167123198%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E123167123198%_))
                                          (_%E123167123198%_))))
                                  (_%E123167123198%_)))))
                      (_%E123166123230%_))))
                 (_%expand-body123033%_
                  (lambda (_%rbody123035%_)
                    (let _%lp123037%_ ((_%rest123039%_ _%rbody123035%_)
                                       (_%body123040%_ '()))
                      (let* ((_%rest123041123049%_ _%rest123039%_)
                             (_%else123043123057%_ (lambda () _%body123040%_))
                             (_%K123045123149%_
                              (lambda (_%rest123060%_ _%hd123061%_)
                                (let* ((_%e123062123083%_ _%hd123061%_)
                                       (_%E123078123087%_
                                        (lambda ()
                                          (_%lp123037%_
                                           _%rest123060%_
                                           (cons (gx#core-expand-expression
                                                  _%hd123061%_)
                                                 _%body123040%_))))
                                       (_%E123074123101%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e123062123083%_)
                                              (let ((_%e123079123091%_
                                                     (gx#syntax-e
                                                      _%e123062123083%_)))
                                                (let ((_%hd123080123094%_
                                                       (##car _%e123079123091%_))
                                                      (_%tl123081123096%_
                                                       (##cdr _%e123079123091%_)))
                                                  (let ((_%form123099%_
                                                         _%hd123080123094%_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _%form123099%_
                                                         gx#special-form-binding?)
                                                        (_%lp123037%_
                                                         _%rest123060%_
                                                         (cons _%hd123061%_
                                                               _%body123040%_))
                                                        (_%E123078123087%_)))))
                                              (_%E123078123087%_))))
                                       (_%E123064123113%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e123062123083%_)
                                              (let ((_%e123075123105%_
                                                     (gx#syntax-e
                                                      _%e123062123083%_)))
                                                (let ((_%hd123076123108%_
                                                       (##car _%e123075123105%_))
                                                      (_%tl123077123110%_
                                                       (##cdr _%e123075123105%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd123076123108%_)
                                                           (gx#core-identifier=?
                                                            _%hd123076123108%_
                                                            '%#export))
                                                      (if '#t
                                                          (_%lp123037%_
                                                           _%rest123060%_
                                                           (cons (gx#core-expand-export%__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%hd123061%_)
                         _%body123040%_))
                  (_%E123074123101%_))
              (_%E123074123101%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E123074123101%_))))
                                       (_%E123063123145%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e123062123083%_)
                                              (let ((_%e123065123117%_
                                                     (gx#syntax-e
                                                      _%e123062123083%_)))
                                                (let ((_%hd123066123120%_
                                                       (##car _%e123065123117%_))
                                                      (_%tl123067123122%_
                                                       (##cdr _%e123065123117%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd123066123120%_)
                                                           (gx#core-identifier=?
                                                            _%hd123066123120%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl123067123122%_)
                                                          (let ((_%e123068123125%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl123067123122%_)))
                    (let ((_%hd123069123128%_ (##car _%e123068123125%_))
                          (_%tl123070123130%_ (##cdr _%e123068123125%_)))
                      (let ((_%hd-bind123133%_ _%hd123069123128%_))
                        (if (gx#stx-pair? _%tl123070123130%_)
                            (let ((_%e123071123135%_
                                   (gx#syntax-e _%tl123070123130%_)))
                              (let ((_%hd123072123138%_
                                     (##car _%e123071123135%_))
                                    (_%tl123073123140%_
                                     (##cdr _%e123071123135%_)))
                                (let ((_%expr123143%_ _%hd123072123138%_))
                                  (if (gx#stx-null? _%tl123073123140%_)
                                      (if '#t
                                          (_%lp123037%_
                                           _%rest123060%_
                                           (cons (gx#core-quote-syntax__1
                                                  (gx#core-list
                                                   '%#define-values
                                                   (gx#core-quote-bind-values
                                                    _%hd-bind123133%_)
                                                   (gx#core-expand-expression
                                                    _%expr123143%_))
                                                  (gx#stx-source _%hd123061%_))
                                                 _%body123040%_))
                                          (_%E123064123113%_))
                                      (_%E123064123113%_)))))
                            (_%E123064123113%_)))))
                  (_%E123064123113%_))
              (_%E123064123113%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E123064123113%_)))))
                                  (_%E123063123145%_)))))
                        (if (##pair? _%rest123041123049%_)
                            (let ((_%hd123046123152%_
                                   (##car _%rest123041123049%_))
                                  (_%tl123047123154%_
                                   (##cdr _%rest123041123049%_)))
                              (let* ((_%hd123157%_ _%hd123046123152%_)
                                     (_%rest123159%_ _%tl123047123154%_))
                                (_%K123045123149%_
                                 _%rest123159%_
                                 _%hd123157%_)))
                            (_%else123043123057%_)))))))
          (_%expand-body123033%_
           (gx#core-expand-block__%
            (cons '%#begin-module _%body123030%_)
            _%expand-special123032%_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_%stx122871%_
               _%expanded?122872%_
               _%method122873%_
               _%current-phi122874%_
               _%expand1122875%_)
        (letrec ((_%K122877%_
                  (lambda (_%rest122997%_ _%r122998%_)
                    (let* ((_%e122999123006%_ _%rest122997%_)
                           (_%E123001123010%_ (lambda () _%r122998%_))
                           (_%E123000123026%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122999123006%_)
                                  (let ((_%e123002123014%_
                                         (gx#syntax-e _%e122999123006%_)))
                                    (let ((_%hd123003123017%_
                                           (##car _%e123002123014%_))
                                          (_%tl123004123019%_
                                           (##cdr _%e123002123014%_)))
                                      (let* ((_%hd123022%_ _%hd123003123017%_)
                                             (_%rest123024%_
                                              _%tl123004123019%_))
                                        (if '#t
                                            (_%step122878%_
                                             _%hd123022%_
                                             _%rest123024%_
                                             _%r122998%_)
                                            (_%E123001123010%_)))))
                                  (_%E123001123010%_)))))
                      (_%E123000123026%_))))
                 (_%step122878%_
                  (lambda (_%hd122911%_ _%rest122912%_ _%r122913%_)
                    (let* ((_%e122914122932%_ _%hd122911%_)
                           (_%E122927122936%_
                            (lambda ()
                              (if (_%expanded?122872%_ (gx#stx-e _%hd122911%_))
                                  (_%K122877%_
                                   _%rest122912%_
                                   (cons (gx#stx-e _%hd122911%_) _%r122913%_))
                                  (_%expand1122875%_
                                   _%hd122911%_
                                   _%K122877%_
                                   _%rest122912%_
                                   _%r122913%_))))
                           (_%E122923122952%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122914122932%_)
                                  (let ((_%e122928122940%_
                                         (gx#syntax-e _%e122914122932%_)))
                                    (let ((_%hd122929122943%_
                                           (##car _%e122928122940%_))
                                          (_%tl122930122945%_
                                           (##cdr _%e122928122940%_)))
                                      (let* ((_%macro122948%_
                                              _%hd122929122943%_)
                                             (_%body122950%_
                                              _%tl122930122945%_))
                                        (if (gx#core-bound-identifier?__%
                                             _%macro122948%_
                                             gx#syntax-binding?)
                                            (_%K122877%_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _%macro122948%_)
                                                    _%hd122911%_
                                                    _%method122873%_)
                                                   _%rest122912%_)
                                             _%r122913%_)
                                            (_%E122927122936%_)))))
                                  (_%E122927122936%_))))
                           (_%E122916122966%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122914122932%_)
                                  (let ((_%e122924122956%_
                                         (gx#syntax-e _%e122914122932%_)))
                                    (let ((_%hd122925122959%_
                                           (##car _%e122924122956%_))
                                          (_%tl122926122961%_
                                           (##cdr _%e122924122956%_)))
                                      (if (eq? (gx#stx-e _%hd122925122959%_)
                                               'begin:)
                                          (let ((_%body122964%_
                                                 _%tl122926122961%_))
                                            (if '#t
                                                (_%K122877%_
                                                 (gx#stx-foldr
                                                  cons
                                                  _%rest122912%_
                                                  _%body122964%_)
                                                 _%r122913%_)
                                                (_%E122923122952%_)))
                                          (_%E122923122952%_))))
                                  (_%E122923122952%_))))
                           (_%E122915122993%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122914122932%_)
                                  (let ((_%e122917122970%_
                                         (gx#syntax-e _%e122914122932%_)))
                                    (let ((_%hd122918122973%_
                                           (##car _%e122917122970%_))
                                          (_%tl122919122975%_
                                           (##cdr _%e122917122970%_)))
                                      (if (eq? (gx#stx-e _%hd122918122973%_)
                                               'phi:)
                                          (if (gx#stx-pair? _%tl122919122975%_)
                                              (let ((_%e122920122978%_
                                                     (gx#syntax-e
                                                      _%tl122919122975%_)))
                                                (let ((_%hd122921122981%_
                                                       (##car _%e122920122978%_))
                                                      (_%tl122922122983%_
                                                       (##cdr _%e122920122978%_)))
                                                  (let* ((_%dphi122986%_
                                                          _%hd122921122981%_)
                                                         (_%body122988%_
                                                          _%tl122922122983%_))
                                                    (if (gx#stx-fixnum?
                                                         _%dphi122986%_)
                                                        (let ((_%rbody122991%_
                                                               (__call-with-parameters
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_%K122877%_ _%body122988%_ '()))
                        _%current-phi122874%_
                        (fx+ (gx#stx-e _%dphi122986%_)
                             (_%current-phi122874%_)))))
                  (_%K122877%_
                   _%rest122912%_
                   (__foldr1 cons _%r122913%_ _%rbody122991%_)))
                (_%E122916122966%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E122916122966%_))
                                          (_%E122916122966%_))))
                                  (_%E122916122966%_)))))
                      (_%E122915122993%_)))))
          (let* ((_%e122879122886%_ _%stx122871%_)
                 (_%E122881122890%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e122879122886%_)))
                 (_%E122880122907%_
                  (lambda ()
                    (if (gx#stx-pair? _%e122879122886%_)
                        (let ((_%e122882122894%_
                               (gx#syntax-e _%e122879122886%_)))
                          (let ((_%hd122883122897%_ (##car _%e122882122894%_))
                                (_%tl122884122899%_ (##cdr _%e122882122894%_)))
                            (let ((_%body122902%_ _%tl122884122899%_))
                              (if '#t
                                  (if (_%current-phi122874%_)
                                      (_%K122877%_ _%body122902%_ '())
                                      (__call-with-parameters
                                       (lambda ()
                                         (_%K122877%_ _%body122902%_ '()))
                                       _%current-phi122874%_
                                       (gx#current-expander-phi)))
                                  (_%E122881122890%_)))))
                        (_%E122881122890%_)))))
            (_%E122880122907%_)))))
    (define gx#core-expand-import%__%
      (lambda (_%stx122525%_ _%internal-expand?122526%_)
        (letrec ((_%expand1122528%_
                  (lambda (_%hd122843%_ _%K122844%_ _%rest122845%_ _%r122846%_)
                    (if (gx#core-bound-module? _%hd122843%_)
                        (_%import1122529%_
                         (gx#syntax-local-e__0 _%hd122843%_)
                         _%K122844%_
                         _%rest122845%_
                         _%r122846%_)
                        (if (gx#core-library-module-path? _%hd122843%_)
                            (_%import1122529%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%hd122843%_))
                             _%K122844%_
                             _%rest122845%_
                             _%r122846%_)
                            (if (gx#core-library-relative-module-path?
                                 _%hd122843%_)
                                (_%import1122529%_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _%hd122843%_))
                                 _%K122844%_
                                 _%rest122845%_
                                 _%r122846%_)
                                (let ((_%e122852%_ (gx#stx-e _%hd122843%_)))
                                  (if (pair? _%e122852%_)
                                      (let ((_%$e122855%_
                                             (gx#stx-e (car _%e122852%_))))
                                        (if (eq? 'spec: _%$e122855%_)
                                            (_%import-spec122532%_
                                             _%hd122843%_
                                             _%K122844%_
                                             _%rest122845%_
                                             _%r122846%_)
                                            (if (eq? 'in: _%$e122855%_)
                                                (_%import-submodule122530%_
                                                 _%hd122843%_
                                                 _%K122844%_
                                                 _%rest122845%_
                                                 _%r122846%_)
                                                (if (eq? 'runtime:
                                                         _%$e122855%_)
                                                    (_%import-runtime122531%_
                                                     _%hd122843%_
                                                     _%K122844%_
                                                     _%rest122845%_
                                                     _%r122846%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _%stx122525%_
                                                     _%hd122843%_)))))
                                      (if (string? _%e122852%_)
                                          (_%import1122529%_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _%hd122843%_
                                             (gx#stx-source _%stx122525%_)))
                                           _%K122844%_
                                           _%rest122845%_
                                           _%r122846%_)
                                          (if (##structure-instance-of?
                                               _%e122852%_
                                               'gx#module-context::t)
                                              (_%K122844%_
                                               _%rest122845%_
                                               (cons _%e122852%_ _%r122846%_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _%stx122525%_
                                               _%hd122843%_))))))))))
                 (_%import1122529%_
                  (lambda (_%ctx122832%_
                           _%K122833%_
                           _%rest122834%_
                           _%r122835%_)
                    (let ((_%dphi122837%_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_%K122833%_
                       _%rest122834%_
                       (cons (##structure
                              gx#import-set::t
                              _%ctx122832%_
                              _%dphi122837%_
                              (map (lambda (_%g122838122840%_)
                                     (gx#core-module-export->import__%
                                      _%g122838122840%_
                                      '#f
                                      _%dphi122837%_))
                                   (##unchecked-structure-ref
                                    _%ctx122832%_
                                    '9
                                    '#f
                                    '#f)))
                             _%r122835%_)))))
                 (_%import-submodule122530%_
                  (lambda (_%hd122799%_ _%K122800%_ _%rest122801%_ _%r122802%_)
                    (let* ((_%e122803122810%_ _%hd122799%_)
                           (_%E122805122814%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e122803122810%_)))
                           (_%E122804122828%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122803122810%_)
                                  (let ((_%e122806122818%_
                                         (gx#syntax-e _%e122803122810%_)))
                                    (let ((_%hd122807122821%_
                                           (##car _%e122806122818%_))
                                          (_%tl122808122823%_
                                           (##cdr _%e122806122818%_)))
                                      (let ((_%spath122826%_
                                             _%tl122808122823%_))
                                        (if '#t
                                            (_%import1122529%_
                                             (_%import-spec-source122533%_
                                              _%spath122826%_)
                                             _%K122800%_
                                             _%rest122801%_
                                             _%r122802%_)
                                            (_%E122805122814%_)))))
                                  (_%E122805122814%_)))))
                      (_%E122804122828%_))))
                 (_%import-runtime122531%_
                  (lambda (_%hd122766%_ _%K122767%_ _%rest122768%_ _%r122769%_)
                    (let* ((_%e122770122777%_ _%hd122766%_)
                           (_%E122772122781%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e122770122777%_)))
                           (_%E122771122795%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122770122777%_)
                                  (let ((_%e122773122785%_
                                         (gx#syntax-e _%e122770122777%_)))
                                    (let ((_%hd122774122788%_
                                           (##car _%e122773122785%_))
                                          (_%tl122775122790%_
                                           (##cdr _%e122773122785%_)))
                                      (let ((_%spath122793%_
                                             _%tl122775122790%_))
                                        (if '#t
                                            (_%K122767%_
                                             _%rest122768%_
                                             (cons (_%import-spec-source122533%_
                                                    _%spath122793%_)
                                                   _%r122769%_))
                                            (_%E122772122781%_)))))
                                  (_%E122772122781%_)))))
                      (_%E122771122795%_))))
                 (_%import-spec122532%_
                  (lambda (_%hd122604%_ _%K122605%_ _%rest122606%_ _%r122607%_)
                    (let* ((_%e122608122625%_ _%hd122604%_)
                           (_%E122617122629%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e122608122625%_)))
                           (_%E122610122740%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122608122625%_)
                                  (let ((_%e122618122633%_
                                         (gx#syntax-e _%e122608122625%_)))
                                    (let ((_%hd122619122636%_
                                           (##car _%e122618122633%_))
                                          (_%tl122620122638%_
                                           (##cdr _%e122618122633%_)))
                                      (if (gx#stx-pair? _%tl122620122638%_)
                                          (let ((_%e122621122641%_
                                                 (gx#syntax-e
                                                  _%tl122620122638%_)))
                                            (let ((_%hd122622122644%_
                                                   (##car _%e122621122641%_))
                                                  (_%tl122623122646%_
                                                   (##cdr _%e122621122641%_)))
                                              (let* ((_%path122649%_
                                                      _%hd122622122644%_)
                                                     (_%specs122651%_
                                                      _%tl122623122646%_))
                                                (if '#t
                                                    (let ((_%src-ctx122653%_
                                                           (_%import-spec-source122533%_
                                                            _%path122649%_))
                                                          (_%exports122654%_
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
                                                          (_%specs122655%_
                                                           (gx#syntax->list
                                                            _%specs122651%_)))
                                                      (for-each
                                                       (lambda (_%out122657%_)
                                                         (hash-put!
                                                          _%exports122654%_
                                                          (cons (##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%out122657%_
                         '3
                         '#f
                         '#f)
                        (##unchecked-structure-ref _%out122657%_ '4 '#f '#f))
                  _%out122657%_))
               (##unchecked-structure-ref _%src-ctx122653%_ '9 '#f '#f))
              (_%K122605%_
               _%rest122606%_
               (__foldl1
                (lambda (_%spec122659%_ _%r122660%_)
                  (let* ((_%e122661122677%_ _%spec122659%_)
                         (_%E122663122681%_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _%e122661122677%_)))
                         (_%E122662122736%_
                          (lambda ()
                            (if (gx#stx-pair? _%e122661122677%_)
                                (let ((_%e122664122685%_
                                       (gx#syntax-e _%e122661122677%_)))
                                  (let ((_%hd122665122688%_
                                         (##car _%e122664122685%_))
                                        (_%tl122666122690%_
                                         (##cdr _%e122664122685%_)))
                                    (let ((_%phi122693%_ _%hd122665122688%_))
                                      (if (gx#stx-pair? _%tl122666122690%_)
                                          (let ((_%e122667122695%_
                                                 (gx#syntax-e
                                                  _%tl122666122690%_)))
                                            (let ((_%hd122668122698%_
                                                   (##car _%e122667122695%_))
                                                  (_%tl122669122700%_
                                                   (##cdr _%e122667122695%_)))
                                              (let ((_%name122703%_
                                                     _%hd122668122698%_))
                                                (if (gx#stx-pair?
                                                     _%tl122669122700%_)
                                                    (let ((_%e122670122705%_
                                                           (gx#syntax-e
                                                            _%tl122669122700%_)))
                                                      (let ((_%hd122671122708%_
                                                             (##car _%e122670122705%_))
                                                            (_%tl122672122710%_
                                                             (##cdr _%e122670122705%_)))
                                                        (let ((_%src-phi122713%_
                                                               _%hd122671122708%_))
                                                          (if (gx#stx-pair?
                                                               _%tl122672122710%_)
                                                              (let ((_%e122673122715%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl122672122710%_)))
                        (let ((_%hd122674122718%_ (##car _%e122673122715%_))
                              (_%tl122675122720%_ (##cdr _%e122673122715%_)))
                          (let ((_%src-name122723%_ _%hd122674122718%_))
                            (if (gx#stx-null? _%tl122675122720%_)
                                (if (and (gx#stx-fixnum? _%src-phi122713%_)
                                         (gx#identifier? _%src-name122723%_)
                                         (gx#stx-fixnum? _%phi122693%_)
                                         (gx#identifier? _%name122703%_))
                                    (let ((_%src-phi122725%_
                                           (gx#stx-e _%src-phi122713%_))
                                          (_%src-name122726%_
                                           (gx#core-identifier-key
                                            _%src-name122723%_))
                                          (_%phi122727%_
                                           (gx#stx-e _%phi122693%_))
                                          (_%name122728%_
                                           (gx#core-identifier-key
                                            _%name122703%_)))
                                      (let ((_%$e122730%_
                                             (hash-get
                                              _%exports122654%_
                                              (cons _%src-phi122725%_
                                                    _%src-name122726%_))))
                                        (if _%$e122730%_
                                            ((lambda (_%out122733%_)
                                               (cons (gx#core-module-export->import__%
                                                      _%out122733%_
                                                      _%name122728%_
                                                      (fx- _%phi122727%_
                                                           _%src-phi122725%_))
                                                     _%r122660%_))
                                             _%$e122730%_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; no matching export"
                                             _%stx122525%_
                                             _%hd122604%_))))
                                    (_%E122663122681%_))
                                (_%E122663122681%_)))))
                      (_%E122663122681%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E122663122681%_)))))
                                          (_%E122663122681%_)))))
                                (_%E122663122681%_)))))
                    (_%E122662122736%_)))
                _%r122607%_
                _%specs122655%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E122617122629%_)))))
                                          (_%E122617122629%_))))
                                  (_%E122617122629%_))))
                           (_%E122609122762%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122608122625%_)
                                  (let ((_%e122611122744%_
                                         (gx#syntax-e _%e122608122625%_)))
                                    (let ((_%hd122612122747%_
                                           (##car _%e122611122744%_))
                                          (_%tl122613122749%_
                                           (##cdr _%e122611122744%_)))
                                      (if (gx#stx-pair? _%tl122613122749%_)
                                          (let ((_%e122614122752%_
                                                 (gx#syntax-e
                                                  _%tl122613122749%_)))
                                            (let ((_%hd122615122755%_
                                                   (##car _%e122614122752%_))
                                                  (_%tl122616122757%_
                                                   (##cdr _%e122614122752%_)))
                                              (let ((_%path122760%_
                                                     _%hd122615122755%_))
                                                (if (gx#stx-null?
                                                     _%tl122616122757%_)
                                                    (if '#t
                                                        (_%K122605%_
                                                         _%rest122606%_
                                                         (cons (_%import-spec-source122533%_
                                                                _%path122760%_)
                                                               _%r122607%_))
                                                        (_%E122610122740%_))
                                                    (_%E122610122740%_)))))
                                          (_%E122610122740%_))))
                                  (_%E122610122740%_)))))
                      (_%E122609122762%_))))
                 (_%import-spec-source122533%_
                  (lambda (_%spath122602%_)
                    (gx#core-import-nested-module
                     _%spath122602%_
                     _%stx122525%_)))
                 (_%import!122534%_
                  (lambda (_%rbody122547%_)
                    (letrec* ((_%current-ctx122549%_
                               (gx#current-expander-context))
                              (_%deps122550%_ (make-hash-table-eq))
                              (_%bind!122551%_
                               (lambda (_%hd122600%_)
                                 (gx#core-bind-import!__1
                                  _%hd122600%_
                                  _%current-ctx122549%_))))
                      (let _%lp122553%_ ((_%rest122555%_ _%rbody122547%_)
                                         (_%body122556%_ '()))
                        (let* ((_%rest122557122565%_ _%rest122555%_)
                               (_%else122559122576%_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _%current-ctx122549%_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _%current-ctx122549%_
                                       (__foldl1
                                        cons
                                        (##unchecked-structure-ref
                                         _%current-ctx122549%_
                                         '8
                                         '#f
                                         '#f)
                                        _%body122556%_)
                                       '8
                                       '#f
                                       '#f)
                                      '#!void)
                                  (hash-for-each
                                   (lambda (_%ctx122573%_ _%_122574%_)
                                     (gx#eval-module _%ctx122573%_))
                                   _%deps122550%_)
                                  _%body122556%_))
                               (_%K122561122588%_
                                (lambda (_%rest122579%_ _%hd122580%_)
                                  (if (##structure-direct-instance-of?
                                       _%hd122580%_
                                       'gx#module-import::t)
                                      (let ()
                                        (_%bind!122551%_ _%hd122580%_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _%hd122580%_
                                                   '3
                                                   '#f
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _%hd122580%_
                                                            '1
                                                            '#f
                                                            '#f)
                                                           '3
                                                           '#f
                                                           '#f)))
                                            (hash-put!
                                             _%deps122550%_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _%hd122580%_
                                               '1
                                               '#f
                                               '#f)
                                              '1
                                              '#f
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _%hd122580%_
                                           'gx#import-set::t)
                                          (let ()
                                            (for-each
                                             _%bind!122551%_
                                             (##unchecked-structure-ref
                                              _%hd122580%_
                                              '3
                                              '#f
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _%hd122580%_
                                                  '2
                                                  '#f
                                                  '#f))
                                                (hash-put!
                                                 _%deps122550%_
                                                 (##unchecked-structure-ref
                                                  _%hd122580%_
                                                  '1
                                                  '#f
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_%$e122584%_
                                                 (##structure-instance-of?
                                                  _%hd122580%_
                                                  'gx#module-context::t)))
                                            (if _%$e122584%_
                                                _%$e122584%_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _%stx122525%_
                                                 _%hd122580%_)))))
                                  (_%lp122553%_
                                   _%rest122579%_
                                   (cons _%hd122580%_ _%body122556%_)))))
                          (if (##pair? _%rest122557122565%_)
                              (let ((_%hd122562122591%_
                                     (##car _%rest122557122565%_))
                                    (_%tl122563122593%_
                                     (##cdr _%rest122557122565%_)))
                                (let* ((_%hd122596%_ _%hd122562122591%_)
                                       (_%rest122598%_ _%tl122563122593%_))
                                  (_%K122561122588%_
                                   _%rest122598%_
                                   _%hd122596%_)))
                              (_%else122559122576%_)))))))
                 (_%expanded-import?122535%_
                  (lambda (_%e122539%_)
                    (let ((_%$e122541%_
                           (##structure-direct-instance-of?
                            _%e122539%_
                            'gx#import-set::t)))
                      (if _%$e122541%_
                          _%$e122541%_
                          (let ((_%$e122544%_
                                 (##structure-direct-instance-of?
                                  _%e122539%_
                                  'gx#module-import::t)))
                            (if _%$e122544%_
                                _%$e122544%_
                                (##structure-instance-of?
                                 _%e122539%_
                                 'gx#module-context::t))))))))
          (let ((_%rbody122537%_
                 (gx#core-expand-import/export
                  _%stx122525%_
                  _%expanded-import?122535%_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _%expand1122528%_)))
            (if _%internal-expand?122526%_
                (reverse _%rbody122537%_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_%import!122534%_ _%rbody122537%_))
                 (gx#stx-source _%stx122525%_)))))))
    (define gx#core-expand-import%__0
      (lambda (_%stx122864%_)
        (let ((_%internal-expand?122866%_ '#f))
          (gx#core-expand-import%__%
           _%stx122864%_
           _%internal-expand?122866%_))))
    (define gx#core-expand-import%
      (lambda _g125513_
        (let ((_g125512_ (##length _g125513_)))
          (cond ((##fx= _g125512_ 1)
                 (apply gx#core-expand-import%__0 _g125513_))
                ((##fx= _g125512_ 2)
                 (apply gx#core-expand-import%__% _g125513_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g125513_))))))
    (define gx#core-import-nested-module
      (lambda (_%spath122452%_ _%where122453%_)
        (let* ((_%e122454122461%_ _%spath122452%_)
               (_%E122456122465%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122454122461%_)))
               (_%E122455122520%_
                (lambda ()
                  (if (gx#stx-pair? _%e122454122461%_)
                      (let ((_%e122457122469%_
                             (gx#syntax-e _%e122454122461%_)))
                        (let ((_%hd122458122472%_ (##car _%e122457122469%_))
                              (_%tl122459122474%_ (##cdr _%e122457122469%_)))
                          (let* ((_%origin122477%_ _%hd122458122472%_)
                                 (_%sub122479%_ _%tl122459122474%_))
                            (if '#t
                                (let ((_%origin-ctx122481%_
                                       (if (gx#stx-false? _%origin122477%_)
                                           (gx#current-expander-context)
                                           (gx#import-module__0
                                            _%origin122477%_))))
                                  (let _%lp122483%_ ((_%rest122485%_
                                                      _%sub122479%_)
                                                     (_%ctx122486%_
                                                      _%origin-ctx122481%_))
                                    (let* ((_%e122487122494%_ _%rest122485%_)
                                           (_%E122489122498%_
                                            (lambda () _%ctx122486%_))
                                           (_%E122488122516%_
                                            (lambda ()
                                              (if (gx#stx-pair?
                                                   _%e122487122494%_)
                                                  (let ((_%e122490122502%_
                                                         (gx#syntax-e
                                                          _%e122487122494%_)))
                                                    (let ((_%hd122491122505%_
                                                           (##car _%e122490122502%_))
                                                          (_%tl122492122507%_
                                                           (##cdr _%e122490122502%_)))
                                                      (let* ((_%id122510%_
                                                              _%hd122491122505%_)
                                                             (_%rest122512%_
                                                              _%tl122492122507%_))
                                                        (if '#t
                                                            (let ((_%bind122514%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#resolve-identifier__%
                            _%id122510%_
                            '0
                            _%ctx122486%_)))
                      (if (and (##structure-direct-instance-of?
                                _%bind122514%_
                                'gx#syntax-binding::t)
                               (##structure-instance-of?
                                (##unchecked-structure-ref
                                 _%bind122514%_
                                 '4
                                 '#f
                                 '#f)
                                'gx#module-context::t))
                          '#!void
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; not bound as module"
                           _%where122453%_
                           _%spath122452%_
                           _%id122510%_))
                      (_%lp122483%_
                       _%rest122512%_
                       (##unchecked-structure-ref _%bind122514%_ '4 '#f '#f)))
                    (_%E122489122498%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E122489122498%_)))))
                                      (_%E122488122516%_))))
                                (_%E122456122465%_)))))
                      (_%E122456122465%_)))))
          (_%E122455122520%_))))
    (define gx#core-expand-import-source
      (lambda (_%hd122450%_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _%hd122450%_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_%stx121944%_ _%internal-expand?121945%_)
        (letrec* ((_%make-export__125441125442%_
                   (lambda (_%bind122398%_
                            _%phi122399%_
                            _%ctx122400%_
                            _%name122401%_)
                     (let* ((_%key122403%_
                             (##unchecked-structure-ref
                              _%bind122398%_
                              '2
                              '#f
                              '#f))
                            (_%export-key122405%_
                             (if _%name122401%_
                                 (gx#core-identifier-key _%name122401%_)
                                 _%key122403%_)))
                       (##structure
                        gx#module-export::t
                        _%ctx122400%_
                        _%key122403%_
                        _%phi122399%_
                        _%export-key122405%_
                        (let ((_%$e122408%_
                               (##structure-instance-of?
                                _%bind122398%_
                                'gx#extern-binding::t)))
                          (if _%$e122408%_
                              _%$e122408%_
                              (##structure-direct-instance-of?
                               _%bind122398%_
                               'gx#import-binding::t)))))))
                  (_%make-export__0__125443125446%_
                   (lambda (_%bind122414%_)
                     (let* ((_%phi122416%_ (gx#current-export-expander-phi))
                            (_%ctx122418%_ (gx#current-expander-context))
                            (_%name122420%_ '#f))
                       (_%make-export__125441125442%_
                        _%bind122414%_
                        _%phi122416%_
                        _%ctx122418%_
                        _%name122420%_))))
                  (_%make-export__1__125444125447%_
                   (lambda (_%bind122422%_ _%phi122423%_)
                     (let* ((_%ctx122425%_ (gx#current-expander-context))
                            (_%name122427%_ '#f))
                       (_%make-export__125441125442%_
                        _%bind122422%_
                        _%phi122423%_
                        _%ctx122425%_
                        _%name122427%_))))
                  (_%make-export__2__125445125448%_
                   (lambda (_%bind122429%_ _%phi122430%_ _%ctx122431%_)
                     (let ((_%name122433%_ '#f))
                       (_%make-export__125441125442%_
                        _%bind122429%_
                        _%phi122430%_
                        _%ctx122431%_
                        _%name122433%_))))
                  (_%make-export121947%_
                   (lambda _g125515_
                     (let ((_g125514_ (##length _g125515_)))
                       (cond ((##fx= _g125514_ 1)
                              (apply _%make-export__0__125443125446%_
                                     _g125515_))
                             ((##fx= _g125514_ 2)
                              (apply _%make-export__1__125444125447%_
                                     _g125515_))
                             ((##fx= _g125514_ 3)
                              (apply _%make-export__2__125445125448%_
                                     _g125515_))
                             ((##fx= _g125514_ 4)
                              (apply _%make-export__125441125442%_ _g125515_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g125515_))))))
                  (_%expand1121948%_
                   (lambda (_%hd122103%_
                            _%K122104%_
                            _%rest122105%_
                            _%r122106%_)
                     (let* ((_%e122107122139%_ _%hd122103%_)
                            (_%E122134122143%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _%stx121944%_
                                _%hd122103%_)))
                            (_%E122124122227%_
                             (lambda ()
                               (if (gx#stx-pair? _%e122107122139%_)
                                   (let ((_%e122135122147%_
                                          (gx#syntax-e _%e122107122139%_)))
                                     (let ((_%hd122136122150%_
                                            (##car _%e122135122147%_))
                                           (_%tl122137122152%_
                                            (##cdr _%e122135122147%_)))
                                       (if (eq? (gx#stx-e _%hd122136122150%_)
                                                'import:)
                                           (let ((_%in122155%_
                                                  _%tl122137122152%_))
                                             (if (gx#stx-list? _%in122155%_)
                                                 (let _%lp122157%_ ((_%in-rest122159%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%in122155%_)
                            (_%r122160%_ _%r122106%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%e122161122168%_
                                                           _%in-rest122159%_)
                                                          (_%E122163122172%_
                                                           (lambda ()
                                                             (_%K122104%_
                                                              _%rest122105%_
                                                              _%r122160%_)))
                                                          (_%E122162122223%_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%e122161122168%_)
                         (let ((_%e122164122176%_
                                (gx#syntax-e _%e122161122168%_)))
                           (let ((_%hd122165122179%_ (##car _%e122164122176%_))
                                 (_%tl122166122181%_
                                  (##cdr _%e122164122176%_)))
                             (let* ((_%hd122184%_ _%hd122165122179%_)
                                    (_%in-rest122186%_ _%tl122166122181%_))
                               (if '#t
                                   (let ((_%src122221%_
                                          (if (gx#core-bound-module?
                                               _%hd122184%_)
                                              (gx#syntax-local-e__0
                                               _%hd122184%_)
                                              (if (gx#core-library-module-path?
                                                   _%hd122184%_)
                                                  (gx#import-module__0
                                                   (gx#core-resolve-library-module-path
                                                    _%hd122184%_))
                                                  (if (gx#core-library-relative-module-path?
                                                       _%hd122184%_)
                                                      (gx#import-module__0
                                                       (gx#core-resolve-library-relative-module-path
                                                        _%hd122184%_))
                                                      (if (gx#stx-string?
                                                           _%hd122184%_)
                                                          (gx#import-module__0
                                                           (gx#core-resolve-module-path__%
                                                            _%hd122184%_
                                                            (gx#stx-source
                                                             _%stx121944%_)))
                                                          (let* ((_%e122192122199%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%hd122184%_)
                         (_%E122194122203%_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; illegal re-export"
                             _%stx121944%_
                             _%hd122184%_)))
                         (_%E122193122217%_
                          (lambda ()
                            (if (gx#stx-pair? _%e122192122199%_)
                                (let ((_%e122195122207%_
                                       (gx#syntax-e _%e122192122199%_)))
                                  (let ((_%hd122196122210%_
                                         (##car _%e122195122207%_))
                                        (_%tl122197122212%_
                                         (##cdr _%e122195122207%_)))
                                    (if (eq? (gx#stx-e _%hd122196122210%_)
                                             'in:)
                                        (let ((_%spath122215%_
                                               _%tl122197122212%_))
                                          (if '#t
                                              (gx#core-import-nested-module
                                               _%spath122215%_
                                               _%stx121944%_)
                                              (_%E122194122203%_)))
                                        (_%E122194122203%_))))
                                (_%E122194122203%_)))))
                    (_%E122193122217%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%lp122157%_
                                      _%in-rest122186%_
                                      (_%export-imports121949%_
                                       _%src122221%_
                                       _%r122160%_)))
                                   (_%E122163122172%_)))))
                         (_%E122163122172%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E122162122223%_)))
                                                 (_%E122134122143%_)))
                                           (_%E122134122143%_))))
                                   (_%E122134122143%_))))
                            (_%E122111122267%_
                             (lambda ()
                               (if (gx#stx-pair? _%e122107122139%_)
                                   (let ((_%e122125122231%_
                                          (gx#syntax-e _%e122107122139%_)))
                                     (let ((_%hd122126122234%_
                                            (##car _%e122125122231%_))
                                           (_%tl122127122236%_
                                            (##cdr _%e122125122231%_)))
                                       (if (eq? (gx#stx-e _%hd122126122234%_)
                                                'rename:)
                                           (if (gx#stx-pair?
                                                _%tl122127122236%_)
                                               (let ((_%e122128122239%_
                                                      (gx#syntax-e
                                                       _%tl122127122236%_)))
                                                 (let ((_%hd122129122242%_
                                                        (##car _%e122128122239%_))
                                                       (_%tl122130122244%_
                                                        (##cdr _%e122128122239%_)))
                                                   (let ((_%id122247%_
                                                          _%hd122129122242%_))
                                                     (if (gx#stx-pair?
                                                          _%tl122130122244%_)
                                                         (let ((_%e122131122249%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl122130122244%_)))
                   (let ((_%hd122132122252%_ (##car _%e122131122249%_))
                         (_%tl122133122254%_ (##cdr _%e122131122249%_)))
                     (let ((_%name122257%_ _%hd122132122252%_))
                       (if (gx#stx-null? _%tl122133122254%_)
                           (if '#t
                               (let* ((_%phi122259%_
                                       (gx#current-export-expander-phi))
                                      (_%$e122261%_
                                       (gx#core-resolve-identifier__1
                                        _%id122247%_
                                        _%phi122259%_)))
                                 (if _%$e122261%_
                                     ((lambda (_%bind122264%_)
                                        (_%K122104%_
                                         _%rest122105%_
                                         (cons (_%make-export__125441125442%_
                                                _%bind122264%_
                                                _%phi122259%_
                                                (gx#current-expander-context)
                                                _%name122257%_)
                                               _%r122106%_)))
                                      _%$e122261%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Reference to unbound identifier"
                                      _%stx121944%_
                                      _%hd122103%_
                                      _%id122247%_)))
                               (_%E122124122227%_))
                           (_%E122124122227%_)))))
                 (_%E122124122227%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E122124122227%_))
                                           (_%E122124122227%_))))
                                   (_%E122124122227%_))))
                            (_%E122110122317%_
                             (lambda ()
                               (if (gx#stx-pair? _%e122107122139%_)
                                   (let ((_%e122112122271%_
                                          (gx#syntax-e _%e122107122139%_)))
                                     (let ((_%hd122113122274%_
                                            (##car _%e122112122271%_))
                                           (_%tl122114122276%_
                                            (##cdr _%e122112122271%_)))
                                       (if (eq? (gx#stx-e _%hd122113122274%_)
                                                'spec:)
                                           (if (gx#stx-pair?
                                                _%tl122114122276%_)
                                               (let ((_%e122115122279%_
                                                      (gx#syntax-e
                                                       _%tl122114122276%_)))
                                                 (let ((_%hd122116122282%_
                                                        (##car _%e122115122279%_))
                                                       (_%tl122117122284%_
                                                        (##cdr _%e122115122279%_)))
                                                   (let ((_%phi122287%_
                                                          _%hd122116122282%_))
                                                     (if (gx#stx-pair?
                                                          _%tl122117122284%_)
                                                         (let ((_%e122118122289%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl122117122284%_)))
                   (let ((_%hd122119122292%_ (##car _%e122118122289%_))
                         (_%tl122120122294%_ (##cdr _%e122118122289%_)))
                     (let ((_%id122297%_ _%hd122119122292%_))
                       (if (gx#stx-pair? _%tl122120122294%_)
                           (let ((_%e122121122299%_
                                  (gx#syntax-e _%tl122120122294%_)))
                             (let ((_%hd122122122302%_
                                    (##car _%e122121122299%_))
                                   (_%tl122123122304%_
                                    (##cdr _%e122121122299%_)))
                               (let ((_%name122307%_ _%hd122122122302%_))
                                 (if (gx#stx-null? _%tl122123122304%_)
                                     (if (and (gx#stx-fixnum? _%phi122287%_)
                                              (gx#identifier? _%id122297%_)
                                              (gx#identifier? _%name122307%_))
                                         (let* ((_%phi122309%_
                                                 (gx#stx-e _%phi122287%_))
                                                (_%$e122311%_
                                                 (gx#core-resolve-identifier__1
                                                  _%id122297%_
                                                  _%phi122309%_)))
                                           (if _%$e122311%_
                                               ((lambda (_%bind122314%_)
                                                  (_%K122104%_
                                                   _%rest122105%_
                                                   (cons (_%make-export__125441125442%_
                                                          _%bind122314%_
                                                          _%phi122309%_
                                                          (gx#current-expander-context)
                                                          _%name122307%_)
                                                         _%r122106%_)))
                                                _%$e122311%_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _%stx121944%_
                                                _%hd122103%_
                                                _%id122297%_)))
                                         (_%E122111122267%_))
                                     (_%E122111122267%_)))))
                           (_%E122111122267%_)))))
                 (_%E122111122267%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E122111122267%_))
                                           (_%E122111122267%_))))
                                   (_%E122111122267%_))))
                            (_%E122109122329%_
                             (lambda ()
                               (let ((_%id122321%_ _%e122107122139%_))
                                 (if (gx#identifier? _%id122321%_)
                                     (let ((_%$e122323%_
                                            (gx#core-resolve-identifier__1
                                             _%id122321%_
                                             (gx#current-export-expander-phi))))
                                       (if _%$e122323%_
                                           ((lambda (_%bind122326%_)
                                              (_%K122104%_
                                               _%rest122105%_
                                               (cons (_%make-export__0__125443125446%_
                                                      _%bind122326%_)
                                                     _%r122106%_)))
                                            _%$e122323%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _%stx121944%_
                                            _%hd122103%_)))
                                     (_%E122110122317%_)))))
                            (_%E122108122393%_
                             (lambda ()
                               (if (eq? (gx#stx-e _%e122107122139%_) '#t)
                                   (if '#t
                                       (let* ((_%current-ctx122333%_
                                               (gx#current-expander-context))
                                              (_%current-phi122335%_
                                               (gx#current-export-expander-phi))
                                              (_%phi-ctx122337%_
                                               (gx#core-context-shift
                                                _%current-ctx122333%_
                                                _%current-phi122335%_))
                                              (_%phi-bind122339%_
                                               (hash->list
                                                (##unchecked-structure-ref
                                                 _%phi-ctx122337%_
                                                 '2
                                                 '#f
                                                 '#f))))
                                         (let _%lp122342%_ ((_%bind-rest122344%_
                                                             _%phi-bind122339%_)
                                                            (_%set122345%_
                                                             '()))
                                           (let* ((_%bind-rest122346122356%_
                                                   _%bind-rest122344%_)
                                                  (_%else122348122364%_
                                                   (lambda ()
                                                     (_%K122104%_
                                                      _%rest122105%_
                                                      (cons (##structure
                                                             gx#export-set::t
                                                             '#f
                                                             _%current-phi122335%_
                                                             _%set122345%_)
                                                            _%r122106%_))))
                                                  (_%K122350122374%_
                                                   (lambda (_%bind-rest122367%_
                                                            _%bind122368%_
                                                            _%key122369%_)
                                                     (if (or (##structure-direct-instance-of?
                                                              _%bind122368%_
                                                              'gx#import-binding::t)
                                                             (gx#private-feature-binding?
                                                              _%bind122368%_))
                                                         (_%lp122342%_
                                                          _%bind-rest122367%_
                                                          _%set122345%_)
                                                         (_%lp122342%_
                                                          _%bind-rest122367%_
                                                          (cons (_%make-export__2__125445125448%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%bind122368%_
                         _%current-phi122335%_
                         _%current-ctx122333%_)
                        _%set122345%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _%bind-rest122346122356%_)
                                                 (let ((_%hd122351122377%_
                                                        (##car _%bind-rest122346122356%_))
                                                       (_%tl122352122379%_
                                                        (##cdr _%bind-rest122346122356%_)))
                                                   (if (##pair? _%hd122351122377%_)
                                                       (let ((_%hd122353122382%_
                                                              (##car _%hd122351122377%_))
                                                             (_%tl122354122384%_
                                                              (##cdr _%hd122351122377%_)))
                                                         (let* ((_%key122387%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd122353122382%_)
                        (_%bind122389%_ _%tl122354122384%_)
                        (_%bind-rest122391%_ _%tl122352122379%_))
                   (_%K122350122374%_
                    _%bind-rest122391%_
                    _%bind122389%_
                    _%key122387%_)))
               (_%else122348122364%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%else122348122364%_)))))
                                       (_%E122109122329%_))
                                   (_%E122109122329%_)))))
                       (_%E122108122393%_))))
                  (_%export-imports121949%_
                   (lambda (_%src121979%_ _%r121980%_)
                     (letrec* ((_%current-ctx121982%_
                                (gx#current-expander-context))
                               (_%current-phi121983%_
                                (gx#current-export-expander-phi))
                               (_%import->export121984%_
                                (lambda (_%in122065%_)
                                  (let* ((_%in122066122074%_ _%in122065%_)
                                         (_%E122068122078%_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _%in122066122074%_
                                                   '((module-import
                                                      out
                                                      key
                                                      phi)))
                                            '#!void))
                                         (_%K122069122085%_
                                          (lambda (_%phi122081%_
                                                   _%key122082%_
                                                   _%out122083%_)
                                            (##structure
                                             gx#module-export::t
                                             _%current-ctx121982%_
                                             _%key122082%_
                                             _%phi122081%_
                                             _%key122082%_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _%in122066122074%_
                                         'gx#module-import::t)
                                        (let* ((_%e122070122088%_
                                                (##unchecked-structure-ref
                                                 _%in122066122074%_
                                                 '1
                                                 '#f
                                                 '#f))
                                               (_%out122091%_
                                                _%e122070122088%_)
                                               (_%e122071122093%_
                                                (##unchecked-structure-ref
                                                 _%in122066122074%_
                                                 '2
                                                 '#f
                                                 '#f))
                                               (_%key122096%_
                                                _%e122071122093%_)
                                               (_%e122072122098%_
                                                (##unchecked-structure-ref
                                                 _%in122066122074%_
                                                 '3
                                                 '#f
                                                 '#f))
                                               (_%phi122101%_
                                                _%e122072122098%_))
                                          (_%K122069122085%_
                                           _%phi122101%_
                                           _%key122096%_
                                           _%out122091%_))
                                        (_%E122068122078%_)))))
                               (_%fold-e121985%_
                                (lambda (_%in121987%_ _%r121988%_)
                                  (let* ((_%in121989122003%_ _%in121987%_)
                                         (_%else121992122011%_
                                          (lambda () _%r121988%_)))
                                    (let ((_%K121998122047%_
                                           (lambda (_%phi122043%_
                                                    _%key122044%_
                                                    _%out122045%_)
                                             (if (and (fx= _%phi122043%_
                                                           _%current-phi121983%_)
                                                      (eq? _%src121979%_
                                                           (##unchecked-structure-ref
                                                            _%out122045%_
                                                            '1
                                                            '#f
                                                            '#f)))
                                                 (cons (_%import->export121984%_
                                                        _%in121987%_)
                                                       _%r121988%_)
                                                 _%r121988%_)))
                                          (_%K121994122022%_
                                           (lambda (_%imports122015%_
                                                    _%phi122016%_
                                                    _%ctx122017%_)
                                             (if (and (fx= _%phi122016%_
                                                           _%current-phi121983%_)
                                                      (eq? _%src121979%_
                                                           _%ctx122017%_))
                                                 (__foldl1
                                                  (lambda (_%in122019%_
                                                           _%r122020%_)
                                                    (cons (_%import->export121984%_
                                                           _%in122019%_)
                                                          _%r122020%_))
                                                  _%r121988%_
                                                  _%imports122015%_)
                                                 _%r121988%_))))
                                      (let ((_%try-match121991122040%_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _%in121989122003%_
                                                    'gx#import-set::t)
                                                   (let* ((_%e121995122025%_
                                                           (##unchecked-structure-ref
                                                            _%in121989122003%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                          (_%e121996122030%_
                                                           (##unchecked-structure-ref
                                                            _%in121989122003%_
                                                            '2
                                                            '#f
                                                            '#f))
                                                          (_%e121997122035%_
                                                           (##unchecked-structure-ref
                                                            _%in121989122003%_
                                                            '3
                                                            '#f
                                                            '#f)))
                                                     (let ((_%ctx122028%_
                                                            _%e121995122025%_)
                                                           (_%phi122033%_
                                                            _%e121996122030%_)
                                                           (_%imports122038%_
                                                            _%e121997122035%_))
                                                       (_%K121994122022%_
                                                        _%imports122038%_
                                                        _%phi122033%_
                                                        _%ctx122028%_)))
                                                   (_%else121992122011%_)))))
                                        (if (##structure-direct-instance-of?
                                             _%in121989122003%_
                                             'gx#module-import::t)
                                            (let* ((_%e121999122050%_
                                                    (##unchecked-structure-ref
                                                     _%in121989122003%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                   (_%e122000122055%_
                                                    (##unchecked-structure-ref
                                                     _%in121989122003%_
                                                     '2
                                                     '#f
                                                     '#f))
                                                   (_%e122001122060%_
                                                    (##unchecked-structure-ref
                                                     _%in121989122003%_
                                                     '3
                                                     '#f
                                                     '#f)))
                                              (let ((_%out122053%_
                                                     _%e121999122050%_)
                                                    (_%key122058%_
                                                     _%e122000122055%_)
                                                    (_%phi122063%_
                                                     _%e122001122060%_))
                                                (_%K121998122047%_
                                                 _%phi122063%_
                                                 _%key122058%_
                                                 _%out122053%_)))
                                            (_%try-match121991122040%_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _%src121979%_
                              _%current-phi121983%_
                              (__foldl1
                               _%fold-e121985%_
                               '()
                               (##unchecked-structure-ref
                                _%current-ctx121982%_
                                '8
                                '#f
                                '#f)))
                             _%r121980%_))))
                  (_%export!121950%_
                   (lambda (_%rbody121966%_)
                     (letrec* ((_%current-ctx121968%_
                                (gx#current-expander-context))
                               (_%fold-e121969%_
                                (lambda (_%out121973%_ _%r121974%_)
                                  (if (##structure-direct-instance-of?
                                       _%out121973%_
                                       'gx#module-export::t)
                                      (cons _%out121973%_ _%r121974%_)
                                      (if (##structure-direct-instance-of?
                                           _%out121973%_
                                           'gx#export-set::t)
                                          (__foldl1
                                           cons
                                           _%r121974%_
                                           (##unchecked-structure-ref
                                            _%out121973%_
                                            '3
                                            '#f
                                            '#f))
                                          _%r121974%_)))))
                       (let ((_%body121971%_ (reverse _%rbody121966%_)))
                         (##unchecked-structure-set!
                          _%current-ctx121968%_
                          (__foldl1
                           _%fold-e121969%_
                           (##unchecked-structure-ref
                            _%current-ctx121968%_
                            '9
                            '#f
                            '#f)
                           _%body121971%_)
                          '9
                          '#f
                          '#f)
                         _%body121971%_))))
                  (_%expanded-export?121951%_
                   (lambda (_%e121961%_)
                     (let ((_%$e121963%_
                            (##structure-direct-instance-of?
                             _%e121961%_
                             'gx#module-export::t)))
                       (if _%$e121963%_
                           _%$e121963%_
                           (##structure-direct-instance-of?
                            _%e121961%_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _%internal-expand?121945%_)
              (let ((_%rbody121957%_
                     (gx#core-expand-import/export
                      _%stx121944%_
                      _%expanded-export?121951%_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _%expand1121948%_)))
                (if _%internal-expand?121945%_
                    (reverse _%rbody121957%_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons
                      '%#export
                      (_%export!121950%_ _%rbody121957%_))
                     (gx#stx-source _%stx121944%_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _%stx121944%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _%stx121944%_))))))
    (define gx#core-expand-export%__0
      (lambda (_%stx122443%_)
        (let ((_%internal-expand?122445%_ '#f))
          (gx#core-expand-export%__%
           _%stx122443%_
           _%internal-expand?122445%_))))
    (define gx#core-expand-export%
      (lambda _g125517_
        (let ((_g125516_ (##length _g125517_)))
          (cond ((##fx= _g125516_ 1)
                 (apply gx#core-expand-export%__0 _g125517_))
                ((##fx= _g125516_ 2)
                 (apply gx#core-expand-export%__% _g125517_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g125517_))))))
    (define gx#core-expand-export-source
      (lambda (_%hd121941%_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _%hd121941%_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_%stx121911%_)
        (let* ((_%e121912121919%_ _%stx121911%_)
               (_%E121914121923%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121912121919%_)))
               (_%E121913121937%_
                (lambda ()
                  (if (gx#stx-pair? _%e121912121919%_)
                      (let ((_%e121915121927%_
                             (gx#syntax-e _%e121912121919%_)))
                        (let ((_%hd121916121930%_ (##car _%e121915121927%_))
                              (_%tl121917121932%_ (##cdr _%e121915121927%_)))
                          (let ((_%body121935%_ _%tl121917121932%_))
                            (if (gx#identifier-list? _%body121935%_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _%body121935%_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _%body121935%_))
                                   (gx#stx-source _%stx121911%_)))
                                (_%E121914121923%_)))))
                      (_%E121914121923%_)))))
          (_%E121913121937%_))))
    (define gx#core-bind-feature!__%
      (lambda (_%id121877%_ _%private?121878%_ _%phi121879%_ _%ctx121880%_)
        (gx#core-bind-syntax!__%
         _%id121877%_
         ((if _%private?121878%_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _%id121877%_))
         _%private?121878%_
         _%phi121879%_
         _%ctx121880%_)))
    (define gx#core-bind-feature!__0
      (lambda (_%id121885%_)
        (let* ((_%private?121887%_ '#f)
               (_%phi121889%_ (gx#current-expander-phi))
               (_%ctx121891%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id121885%_
           _%private?121887%_
           _%phi121889%_
           _%ctx121891%_))))
    (define gx#core-bind-feature!__1
      (lambda (_%id121893%_ _%private?121894%_)
        (let* ((_%phi121896%_ (gx#current-expander-phi))
               (_%ctx121898%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id121893%_
           _%private?121894%_
           _%phi121896%_
           _%ctx121898%_))))
    (define gx#core-bind-feature!__2
      (lambda (_%id121900%_ _%private?121901%_ _%phi121902%_)
        (let ((_%ctx121904%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id121900%_
           _%private?121901%_
           _%phi121902%_
           _%ctx121904%_))))
    (define gx#core-bind-feature!
      (lambda _g125519_
        (let ((_g125518_ (##length _g125519_)))
          (cond ((##fx= _g125518_ 1)
                 (apply gx#core-bind-feature!__0 _g125519_))
                ((##fx= _g125518_ 2)
                 (apply gx#core-bind-feature!__1 _g125519_))
                ((##fx= _g125518_ 3)
                 (apply gx#core-bind-feature!__2 _g125519_))
                ((##fx= _g125518_ 4)
                 (apply gx#core-bind-feature!__% _g125519_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g125519_))))))))
