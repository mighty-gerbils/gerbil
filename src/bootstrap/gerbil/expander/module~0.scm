(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1712246555)
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
      (lambda _%$args125745%_
        (apply make-instance gx#module-import::t _%$args125745%_)))
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
      (lambda _%$args125742%_
        (apply make-instance gx#module-export::t _%$args125742%_)))
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
      (lambda _%$args125739%_
        (apply make-instance gx#import-set::t _%$args125739%_)))
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
      (lambda _%$args125736%_
        (apply make-instance gx#export-set::t _%$args125736%_)))
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
      (lambda _%$args125733%_
        (apply make-instance gx#import-expander::t _%$args125733%_)))
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
      (lambda _%$args125730%_
        (apply make-instance gx#export-expander::t _%$args125730%_)))
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
      (lambda _%$args125727%_
        (apply make-instance gx#import-export-expander::t _%$args125727%_)))
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
      (lambda (_%path125724%_ _%fun125725%_)
        (call-with-input-file
         (cons 'path: (cons _%path125724%_ gx#source-file-settings))
         _%fun125725%_)))
    (define gx#module-context:::init!
      (lambda (_%self125707%_
               _%id125708%_
               _%super125709%_
               _%ns125710%_
               _%path125711%_)
        (let ((_%self125714%_ _%self125707%_))
          (if (##fx< '11 (##structure-length _%self125714%_))
              (begin
                (##unchecked-structure-set!
                 _%self125714%_
                 _%id125708%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self125714%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self125714%_
                 _%super125709%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self125714%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self125714%_ '#f '5 '#f '#f)
                (##unchecked-structure-set!
                 _%self125714%_
                 _%ns125710%_
                 '6
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self125714%_
                 _%path125711%_
                 '7
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self125714%_ '() '8 '#f '#f)
                (##unchecked-structure-set! _%self125714%_ '() '9 '#f '#f)
                (##unchecked-structure-set! _%self125714%_ '#f '10 '#f '#f)
                (##unchecked-structure-set! _%self125714%_ '#f '11 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self125714%_
                     '11
                     (##vector-length _%self125714%_))))))
    (__bind-method! gx#module-context::t ':init! gx#module-context:::init! '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_%self125540%_ _%ctx125541%_ _%root125542%_)
        (let ()
          (let* ((_%self125545%_ _%self125540%_)
                 (_%super125561%_
                  (let ((_%$e125555%_ _%root125542%_))
                    (if _%$e125555%_
                        _%$e125555%_
                        (let ((_%$e125558%_ (gx#core-context-root__0)))
                          (if _%$e125558%_
                              _%$e125558%_
                              (let ((__obj125789
                                     (##structure gx#root-context::t '#f '#f)))
                                (let ((__constructor125790
                                       (direct-method-ref
                                        gx#root-context::t
                                        __obj125789
                                        ':init!)))
                                  (if __constructor125790
                                      (__constructor125790 __obj125789)
                                      (error '"missing constructor method implementation"
                                             'class:
                                             gx#root-context::t
                                             'method:
                                             ':init!)))
                                __obj125789)))))))
            (if _%ctx125541%_
                (let ((_%id125564%_
                       (##structure-ref
                        _%ctx125541%_
                        '1
                        gx#expander-context::t
                        '#f))
                      (_%path125565%_
                       (##structure-ref
                        _%ctx125541%_
                        '7
                        gx#module-context::t
                        '#f))
                      (_%in125566%_
                       (map gx#core-module-export->import
                            (##structure-ref
                             _%ctx125541%_
                             '9
                             gx#module-context::t
                             '#f)))
                      (_%e125567%_
                       (__make-promise
                        (lambda () (gx#eval-module _%ctx125541%_)))))
                  (if (##fx< '8 (##structure-length _%self125545%_))
                      (begin
                        (##unchecked-structure-set!
                         _%self125545%_
                         _%id125564%_
                         '1
                         '#f
                         '#f)
                        (##unchecked-structure-set!
                         _%self125545%_
                         (make-hash-table-eq 'size: (##length _%in125566%_))
                         '2
                         '#f
                         '#f)
                        (##unchecked-structure-set!
                         _%self125545%_
                         _%super125561%_
                         '3
                         '#f
                         '#f)
                        (##unchecked-structure-set!
                         _%self125545%_
                         '#f
                         '4
                         '#f
                         '#f)
                        (##unchecked-structure-set!
                         _%self125545%_
                         '#f
                         '5
                         '#f
                         '#f)
                        (##unchecked-structure-set!
                         _%self125545%_
                         _%path125565%_
                         '6
                         '#f
                         '#f)
                        (##unchecked-structure-set!
                         _%self125545%_
                         _%in125566%_
                         '7
                         '#f
                         '#f)
                        (##unchecked-structure-set!
                         _%self125545%_
                         _%e125567%_
                         '8
                         '#f
                         '#f)
                        '#!void)
                      (error '"struct-instance-init!: too many arguments for struct"
                             _%self125545%_
                             '8
                             (##vector-length _%self125545%_)))
                  (##for-each
                   (lambda (_%g125568125570%_)
                     (gx#core-bind-weak-import!__%
                      _%g125568125570%_
                      _%self125545%_))
                   _%in125566%_))
                (if (##fx< '8 (##structure-length _%self125545%_))
                    (begin
                      (##unchecked-structure-set!
                       _%self125545%_
                       '#f
                       '1
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self125545%_
                       (make-hash-table-eq)
                       '2
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self125545%_
                       _%super125561%_
                       '3
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self125545%_
                       '#f
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self125545%_
                       '#f
                       '5
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self125545%_
                       '#f
                       '6
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self125545%_
                       '()
                       '7
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self125545%_
                       '#f
                       '8
                       '#f
                       '#f)
                      '#!void)
                    (error '"struct-instance-init!: too many arguments for struct"
                           _%self125545%_
                           '8
                           (##vector-length _%self125545%_))))))))
    (define gx#prelude-context:::init!__0
      (lambda (_%self125576%_ _%ctx125577%_)
        (let ((_%root125579%_ '#f))
          (gx#prelude-context:::init!__%
           _%self125576%_
           _%ctx125577%_
           _%root125579%_))))
    (define gx#prelude-context:::init!
      (lambda _g125796_
        (let ((_g125795_ (##length _g125796_)))
          (cond ((##fx= _g125795_ 2)
                 (apply (lambda (_%self125576%_ _%ctx125577%_)
                          (gx#prelude-context:::init!__0
                           _%self125576%_
                           _%ctx125577%_))
                        _g125796_))
                ((##fx= _g125795_ 3)
                 (apply (lambda (_%self125581%_ _%ctx125582%_ _%root125583%_)
                          (gx#prelude-context:::init!__%
                           _%self125581%_
                           _%ctx125582%_
                           _%root125583%_))
                        _g125796_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g125796_))))))
    (__bind-method!
     gx#prelude-context::t
     ':init!
     gx#prelude-context:::init!
     '#f)
    (define gx#import-export-expander-init!
      (lambda (_%self125414%_ _%e125415%_)
        (if (##fx< '3 (##structure-length _%self125414%_))
            (begin
              (##unchecked-structure-set!
               _%self125414%_
               _%e125415%_
               '1
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self125414%_
               (gx#current-expander-context)
               '2
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self125414%_
               (##fx- (gx#current-expander-phi) '1)
               '3
               '#f
               '#f)
              '#!void)
            (error '"struct-instance-init!: too many arguments for struct"
                   _%self125414%_
                   '3
                   (##vector-length _%self125414%_)))))
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
      (lambda (_%g125040125043%_ _%g125041125045%_)
        (gx#core-apply-user-expander__%
         _%g125040125043%_
         _%g125041125045%_
         'apply-import-expander)))
    (__bind-method!
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_%g124911124914%_ _%g124912124916%_)
        (gx#core-apply-user-expander__%
         _%g124911124914%_
         _%g124912124916%_
         'apply-export-expander)))
    (__bind-method!
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_%ctx124782%_)
        (let* ((_%path124784%_
                (##structure-ref _%ctx124782%_ '7 gx#module-context::t '#f))
               (_%path124786%_
                (if (pair? _%path124784%_)
                    (last _%path124784%_)
                    _%path124784%_)))
          (if (string? _%path124786%_) _%path124786%_ '#f))))
    (define gx#import-module__%
      (lambda (_%path124758%_ _%reload?124759%_ _%eval?124760%_)
        (let ((_%ctx124762%_
               ((gx#current-expander-module-import)
                _%path124758%_
                _%reload?124759%_)))
          (if (and _%ctx124762%_ _%eval?124760%_)
              (gx#eval-module _%ctx124762%_)
              '#!void)
          _%ctx124762%_)))
    (define gx#import-module__0
      (lambda (_%path124767%_)
        (let* ((_%reload?124769%_ '#f) (_%eval?124771%_ '#f))
          (gx#import-module__%
           _%path124767%_
           _%reload?124769%_
           _%eval?124771%_))))
    (define gx#import-module__1
      (lambda (_%path124773%_ _%reload?124774%_)
        (let ((_%eval?124776%_ '#f))
          (gx#import-module__%
           _%path124773%_
           _%reload?124774%_
           _%eval?124776%_))))
    (define gx#import-module
      (lambda _g125798_
        (let ((_g125797_ (##length _g125798_)))
          (cond ((##fx= _g125797_ 1)
                 (apply (lambda (_%path124767%_)
                          (gx#import-module__0 _%path124767%_))
                        _g125798_))
                ((##fx= _g125797_ 2)
                 (apply (lambda (_%path124773%_ _%reload?124774%_)
                          (gx#import-module__1
                           _%path124773%_
                           _%reload?124774%_))
                        _g125798_))
                ((##fx= _g125797_ 3)
                 (apply (lambda (_%path124778%_
                                 _%reload?124779%_
                                 _%eval?124780%_)
                          (gx#import-module__%
                           _%path124778%_
                           _%reload?124779%_
                           _%eval?124780%_))
                        _g125798_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g125798_))))))
    (define gx#eval-module
      (lambda (_%mod124755%_)
        ((gx#current-expander-module-eval) _%mod124755%_)))
    (define gx#core-eval-module
      (lambda (_%obj124735%_)
        (letrec ((_%force-e124737%_
                  (lambda (_%getf124751%_ _%e124752%_)
                    (__call-with-parameters
                     (lambda () (force (_%getf124751%_ _%e124752%_)))
                     gx#current-expander-context
                     _%e124752%_
                     gx#current-expander-phi
                     '0))))
          (let _%recur124739%_ ((_%e124741%_ _%obj124735%_))
            (if (##structure-instance-of? _%e124741%_ 'gx#module-context::t)
                (let ()
                  (let ((_%$e124744%_
                         (gx#core-context-prelude__% _%e124741%_)))
                    (if _%$e124744%_ (_%recur124739%_ _%$e124744%_) '#!void))
                  (_%force-e124737%_ gx#module-context-e _%e124741%_))
                (if (##structure-instance-of?
                     _%e124741%_
                     'gx#prelude-context::t)
                    (let ()
                      (_%force-e124737%_ gx#prelude-context-e _%e124741%_))
                    (if (gx#stx-string? _%e124741%_)
                        (let ()
                          (_%recur124739%_
                           (gx#import-module__0
                            (gx#core-resolve-module-path__0 _%e124741%_))))
                        (if (gx#core-library-module-path? _%e124741%_)
                            (let ()
                              (_%recur124739%_
                               (gx#import-module__0
                                (gx#core-resolve-library-module-path
                                 _%e124741%_))))
                            (let ()
                              (error '"cannot eval module"
                                     _%obj124735%_))))))))))
    (define gx#core-context-prelude__%
      (lambda (_%ctx124715%_)
        (let _%lp124717%_ ((_%e124719%_ _%ctx124715%_))
          (if (or (##structure-instance-of? _%e124719%_ 'gx#module-context::t)
                  (##structure-instance-of? _%e124719%_ 'gx#local-context::t))
              (let ()
                (_%lp124717%_
                 (##unchecked-structure-ref _%e124719%_ '3 '#f '#f)))
              (if (##structure-instance-of? _%e124719%_ 'gx#prelude-context::t)
                  (let () _%e124719%_)
                  (let () '#f))))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_%ctx124731%_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _%ctx124731%_))))
    (define gx#core-context-prelude
      (lambda _g125800_
        (let ((_g125799_ (##length _g125800_)))
          (cond ((##fx= _g125799_ 0)
                 (apply (lambda () (gx#core-context-prelude__0)) _g125800_))
                ((##fx= _g125799_ 1)
                 (apply (lambda (_%ctx124733%_)
                          (gx#core-context-prelude__% _%ctx124733%_))
                        _g125800_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g125800_))))))
    (define gx#core-module->prelude-context
      (lambda (_%ctx124706%_)
        (let ((_%$e124708%_ (hash-get gx#__module-registry _%ctx124706%_)))
          (if _%$e124708%_
              _%$e124708%_
              (let ((_%pre124712%_
                     (let ((__obj125791
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
                       (gx#prelude-context:::init! __obj125791 _%ctx124706%_)
                       __obj125791)))
                (hash-put! gx#__module-registry _%ctx124706%_ _%pre124712%_)
                _%pre124712%_)))))
    (define gx#core-import-module__%
      (lambda (_%rpath124578%_ _%reload?124579%_)
        (letrec ((_%import-source124581%_
                  (lambda (_%path124670%_)
                    (if (member _%path124670%_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _%path124670%_)
                        '#!void)
                    (__call-with-parameters
                     (lambda ()
                       (let ((_g125801_ (gx#core-read-module _%path124670%_)))
                         (begin
                           (let ((_g125802_
                                  (if (##values? _g125801_)
                                      (##vector-length _g125801_)
                                      1)))
                             (if (not (##fx= _g125802_ 4))
                                 (error "Context expects 4 values" _g125802_)))
                           (let ((_%pre124673%_ (##vector-ref _g125801_ 0))
                                 (_%id124674%_ (##vector-ref _g125801_ 1))
                                 (_%ns124675%_ (##vector-ref _g125801_ 2))
                                 (_%body124676%_ (##vector-ref _g125801_ 3)))
                             (let* ((_%prelude124686%_
                                     (if (##structure-instance-of?
                                          _%pre124673%_
                                          'gx#prelude-context::t)
                                         (let () _%pre124673%_)
                                         (if (##structure-instance-of?
                                              _%pre124673%_
                                              'gx#module-context::t)
                                             (let ()
                                               (gx#core-module->prelude-context
                                                _%pre124673%_))
                                             (if (string? _%pre124673%_)
                                                 (let ()
                                                   (gx#core-module->prelude-context
                                                    (gx#core-import-module__0
                                                     _%pre124673%_)))
                                                 (if (not _%pre124673%_)
                                                     (let ((_%$e124682%_
                                                            (gx#current-expander-module-prelude)))
                                                       (if _%$e124682%_
                                                           _%$e124682%_
                                                           (let ((__obj125792
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
                     (gx#prelude-context:::init! __obj125792 '#f)
                     __obj125792)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (error '"cannot import module; unknown prelude"
                                                              _%rpath124578%_
                                                              _%pre124673%_)))))))
                                    (_%ctx124688%_
                                     (let ((__obj125793
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
                                        __obj125793
                                        _%id124674%_
                                        _%prelude124686%_
                                        _%ns124675%_
                                        _%path124670%_)
                                       __obj125793))
                                    (_%body124690%_
                                     (gx#core-expand-module-begin
                                      _%body124676%_
                                      _%ctx124688%_))
                                    (_%body124692%_
                                     (gx#core-quote-syntax__%
                                      (gx#core-cons '%#begin _%body124690%_)
                                      _%path124670%_
                                      _%ctx124688%_
                                      '())))
                               (##unchecked-structure-set!
                                _%ctx124688%_
                                (__make-promise
                                 (lambda () (gx#eval-syntax* _%body124692%_)))
                                '10
                                '#f
                                '#f)
                               (##unchecked-structure-set!
                                _%ctx124688%_
                                _%body124692%_
                                '11
                                '#f
                                '#f)
                               (hash-put!
                                gx#__module-registry
                                _%path124670%_
                                _%ctx124688%_)
                               (hash-put!
                                gx#__module-registry
                                _%id124674%_
                                _%ctx124688%_)
                               _%ctx124688%_)))))
                     gx#current-expander-context
                     (gx#core-context-root__0)
                     gx#current-expander-marks
                     '()
                     gx#current-expander-phi
                     '0
                     gx#current-expander-path
                     (cons _%path124670%_ (gx#current-expander-path))
                     gx#current-import-expander-phi
                     '#f
                     gx#current-export-expander-phi
                     '#f)))
                 (_%import-submodule124582%_
                  (lambda (_%rpath124598%_)
                    (let* ((_%rpath124599124606%_ _%rpath124598%_)
                           (_%E124601124610%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%rpath124599124606%_
                                     '([origin . refs]))
                              '#!void))
                           (_%K124602124658%_
                            (lambda (_%refs124613%_ _%origin124614%_)
                              (let ((_%ctx124616%_
                                     (if _%origin124614%_
                                         (gx#core-import-module__%
                                          _%origin124614%_
                                          _%reload?124579%_)
                                         (gx#current-expander-context))))
                                (let _%lp124618%_ ((_%rest124620%_
                                                    _%refs124613%_)
                                                   (_%ctx124621%_
                                                    _%ctx124616%_))
                                  (let* ((_%rest124622124630%_ _%rest124620%_)
                                         (_%else124624124638%_
                                          (lambda () _%ctx124621%_))
                                         (_%K124626124646%_
                                          (lambda (_%rest124641%_ _%id124642%_)
                                            (let ((_%bind124644%_
                                                   (gx#resolve-identifier__%
                                                    _%id124642%_
                                                    '0
                                                    _%ctx124621%_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _%bind124644%_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _%bind124644%_
                                                         '4
                                                         '#f
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_%lp124618%_
                                                   _%rest124641%_
                                                   (##unchecked-structure-ref
                                                    _%bind124644%_
                                                    '4
                                                    '#f
                                                    '#f))
                                                  (error '"cannot import submodule; not bound as a module"
                                                         _%rpath124598%_
                                                         _%id124642%_
                                                         _%bind124644%_))))))
                                    (if (##pair? _%rest124622124630%_)
                                        (let ((_%hd124627124649%_
                                               (##car _%rest124622124630%_))
                                              (_%tl124628124651%_
                                               (##cdr _%rest124622124630%_)))
                                          (let* ((_%id124654%_
                                                  _%hd124627124649%_)
                                                 (_%rest124656%_
                                                  _%tl124628124651%_))
                                            (_%K124626124646%_
                                             _%rest124656%_
                                             _%id124654%_)))
                                        (_%else124624124638%_))))))))
                      (if (##pair? _%rpath124599124606%_)
                          (let ((_%hd124603124661%_
                                 (##car _%rpath124599124606%_))
                                (_%tl124604124663%_
                                 (##cdr _%rpath124599124606%_)))
                            (let* ((_%origin124666%_ _%hd124603124661%_)
                                   (_%refs124668%_ _%tl124604124663%_))
                              (_%K124602124658%_
                               _%refs124668%_
                               _%origin124666%_)))
                          (_%E124601124610%_))))))
          (let ((_%$e124584%_
                 (if (not _%reload?124579%_)
                     (hash-get gx#__module-registry _%rpath124578%_)
                     '#f)))
            (if _%$e124584%_
                _%$e124584%_
                (if (list? _%rpath124578%_)
                    (let () (_%import-submodule124582%_ _%rpath124578%_))
                    (if (gx#core-library-module-path? _%rpath124578%_)
                        (let ((_%ctx124589%_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _%rpath124578%_)
                                _%reload?124579%_)))
                          (hash-put!
                           gx#__module-registry
                           _%rpath124578%_
                           _%ctx124589%_)
                          _%ctx124589%_)
                        (let ()
                          (let* ((_%npath124592%_
                                  (path-normalize _%rpath124578%_))
                                 (_%$e124594%_
                                  (if (not _%reload?124579%_)
                                      (hash-get
                                       gx#__module-registry
                                       _%npath124592%_)
                                      '#f)))
                            (if _%$e124594%_
                                _%$e124594%_
                                (let ()
                                  (_%import-source124581%_
                                   _%npath124592%_))))))))))))
    (define gx#core-import-module__0
      (lambda (_%rpath124699%_)
        (let ((_%reload?124701%_ '#f))
          (gx#core-import-module__% _%rpath124699%_ _%reload?124701%_))))
    (define gx#core-import-module
      (lambda _g125804_
        (let ((_g125803_ (##length _g125804_)))
          (cond ((##fx= _g125803_ 1)
                 (apply (lambda (_%rpath124699%_)
                          (gx#core-import-module__0 _%rpath124699%_))
                        _g125804_))
                ((##fx= _g125803_ 2)
                 (apply (lambda (_%rpath124703%_ _%reload?124704%_)
                          (gx#core-import-module__%
                           _%rpath124703%_
                           _%reload?124704%_))
                        _g125804_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g125804_))))))
    (define gx#core-read-module
      (lambda (_%path124567%_)
        (__with-catch
         (lambda (_%exn124569%_)
           (if (and (datum-parsing-exception? _%exn124569%_)
                    (eq? (datum-parsing-exception-filepos _%exn124569%_) '0))
               (gx#core-read-module/lang _%path124567%_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _%path124567%_
                (__call-with-parameters
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_%g124571124573%_)
                      (display-exception _%exn124569%_ _%g124571124573%_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _%path124567%_)))))
    (define gx#core-read-module/sexp
      (lambda (_%path124419%_)
        (let _%lp124421%_ ((_%body124423%_
                            (read-syntax-from-file _%path124419%_))
                           (_%pre124424%_ '#f)
                           (_%ns124425%_ '#f)
                           (_%pkg124426%_ '#f))
          (let* ((_%e124427124451%_ _%body124423%_)
                 (_%E124443124477%_
                  (lambda ()
                    (let ((_g125805_
                           (if _%pkg124426%_
                               (values _%pre124424%_
                                       _%ns124425%_
                                       _%pkg124426%_)
                               (gx#core-read-module-package
                                _%path124419%_
                                _%pre124424%_
                                _%ns124425%_))))
                      (begin
                        (let ((_g125806_
                               (if (##values? _g125805_)
                                   (##vector-length _g125805_)
                                   1)))
                          (if (not (##fx= _g125806_ 3))
                              (error "Context expects 3 values" _g125806_)))
                        (let ((_%pre124455%_ (##vector-ref _g125805_ 0))
                              (_%ns124456%_ (##vector-ref _g125805_ 1))
                              (_%pkg124457%_ (##vector-ref _g125805_ 2)))
                          (let* ((_%prelude124463%_
                                  (if (gx#core-bound-module-prelude?
                                       _%pre124455%_)
                                      (let ()
                                        (gx#syntax-local-e__0 _%pre124455%_))
                                      (if (gx#core-library-module-path?
                                           _%pre124455%_)
                                          (let ()
                                            (gx#core-resolve-library-module-path
                                             _%pre124455%_))
                                          (if (gx#stx-string? _%pre124455%_)
                                              (let ()
                                                (gx#core-resolve-module-path__%
                                                 _%pre124455%_
                                                 _%path124419%_))
                                              (let ()
                                                (gx#stx-e _%pre124455%_))))))
                                 (_%path-id124465%_
                                  (gx#core-module-path->namespace
                                   _%path124419%_))
                                 (_%pkg-id124467%_
                                  (if _%pkg124457%_
                                      (string-append
                                       _%pkg124457%_
                                       '"/"
                                       _%path-id124465%_)
                                      _%path-id124465%_))
                                 (_%module-id124469%_
                                  (string->symbol _%pkg-id124467%_))
                                 (_%module-ns124474%_
                                  (if (eq? _%ns124456%_ '#!void)
                                      '#f
                                      (let ((_%$e124471%_ _%ns124456%_))
                                        (if _%$e124471%_
                                            _%$e124471%_
                                            _%pkg-id124467%_)))))
                            (values _%prelude124463%_
                                    _%module-id124469%_
                                    _%module-ns124474%_
                                    _%body124423%_)))))))
                 (_%E124436124509%_
                  (lambda ()
                    (if (gx#stx-pair? _%e124427124451%_)
                        (let ((_%e124444124481%_
                               (gx#syntax-e _%e124427124451%_)))
                          (let ((_%hd124445124484%_ (##car _%e124444124481%_))
                                (_%tl124446124486%_ (##cdr _%e124444124481%_)))
                            (if (eq? (gx#stx-e _%hd124445124484%_) 'package:)
                                (if (gx#stx-pair? _%tl124446124486%_)
                                    (let ((_%e124447124489%_
                                           (gx#syntax-e _%tl124446124486%_)))
                                      (let ((_%hd124448124492%_
                                             (##car _%e124447124489%_))
                                            (_%tl124449124494%_
                                             (##cdr _%e124447124489%_)))
                                        (let* ((_%pkg124497%_
                                                _%hd124448124492%_)
                                               (_%rest124499%_
                                                _%tl124449124494%_))
                                          (if '#t
                                              (let ((_%pkg124507%_
                                                     (if (gx#identifier?
                                                          _%pkg124497%_)
                                                         (let ()
                                                           (symbol->string
                                                            (gx#stx-e
                                                             _%pkg124497%_)))
                                                         (if (or (gx#stx-string?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%pkg124497%_)
                         (gx#stx-false? _%pkg124497%_))
                     (let () (gx#stx-e _%pkg124497%_))
                     (let ()
                       (gx#raise-syntax-error
                        'import
                        '"Bad syntax; Illegal package name"
                        _%pkg124497%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%lp124421%_
                                                 _%rest124499%_
                                                 _%pre124424%_
                                                 _%ns124425%_
                                                 _%pkg124507%_))
                                              (_%E124443124477%_)))))
                                    (_%E124443124477%_))
                                (_%E124443124477%_))))
                        (_%E124443124477%_))))
                 (_%E124429124539%_
                  (lambda ()
                    (if (gx#stx-pair? _%e124427124451%_)
                        (let ((_%e124437124513%_
                               (gx#syntax-e _%e124427124451%_)))
                          (let ((_%hd124438124516%_ (##car _%e124437124513%_))
                                (_%tl124439124518%_ (##cdr _%e124437124513%_)))
                            (if (eq? (gx#stx-e _%hd124438124516%_) 'namespace:)
                                (if (gx#stx-pair? _%tl124439124518%_)
                                    (let ((_%e124440124521%_
                                           (gx#syntax-e _%tl124439124518%_)))
                                      (let ((_%hd124441124524%_
                                             (##car _%e124440124521%_))
                                            (_%tl124442124526%_
                                             (##cdr _%e124440124521%_)))
                                        (let* ((_%ns124529%_
                                                _%hd124441124524%_)
                                               (_%rest124531%_
                                                _%tl124442124526%_))
                                          (if '#t
                                              (let ((_%ns124537%_
                                                     (if (gx#identifier?
                                                          _%ns124529%_)
                                                         (let ()
                                                           (symbol->string
                                                            (gx#stx-e
                                                             _%ns124529%_)))
                                                         (if (gx#stx-string?
                                                              _%ns124529%_)
                                                             (let ()
                                                               (gx#stx-e
                                                                _%ns124529%_))
                                                             (if (gx#stx-false?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%ns124529%_)
                         (let () '#!void)
                         (let ()
                           (gx#raise-syntax-error
                            'import
                            '"Bad syntax; illegal namespace"
                            _%ns124529%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%lp124421%_
                                                 _%rest124531%_
                                                 _%pre124424%_
                                                 _%ns124537%_
                                                 _%pkg124426%_))
                                              (_%E124436124509%_)))))
                                    (_%E124436124509%_))
                                (_%E124436124509%_))))
                        (_%E124436124509%_))))
                 (_%E124428124563%_
                  (lambda ()
                    (if (gx#stx-pair? _%e124427124451%_)
                        (let ((_%e124430124543%_
                               (gx#syntax-e _%e124427124451%_)))
                          (let ((_%hd124431124546%_ (##car _%e124430124543%_))
                                (_%tl124432124548%_ (##cdr _%e124430124543%_)))
                            (if (eq? (gx#stx-e _%hd124431124546%_) 'prelude:)
                                (if (gx#stx-pair? _%tl124432124548%_)
                                    (let ((_%e124433124551%_
                                           (gx#syntax-e _%tl124432124548%_)))
                                      (let ((_%hd124434124554%_
                                             (##car _%e124433124551%_))
                                            (_%tl124435124556%_
                                             (##cdr _%e124433124551%_)))
                                        (let* ((_%prelude124559%_
                                                _%hd124434124554%_)
                                               (_%rest124561%_
                                                _%tl124435124556%_))
                                          (if '#t
                                              (_%lp124421%_
                                               _%rest124561%_
                                               _%prelude124559%_
                                               _%ns124425%_
                                               _%pkg124426%_)
                                              (_%E124429124539%_)))))
                                    (_%E124429124539%_))
                                (_%E124429124539%_))))
                        (_%E124429124539%_)))))
            (_%E124428124563%_)))))
    (define gx#core-read-module/lang
      (lambda (_%path124241%_)
        (letrec ((_%default-read-module-body124243%_
                  (lambda (_%inp124411%_)
                    (let _%lp124413%_ ((_%body124415%_ '()))
                      (let ((_%next124417%_ (read-syntax__% _%inp124411%_)))
                        (if (eof-object? _%next124417%_)
                            (reverse _%body124415%_)
                            (_%lp124413%_
                             (cons _%next124417%_ _%body124415%_)))))))
                 (_%read-body124244%_
                  (lambda (_%inp124329%_
                           _%pre124330%_
                           _%ns124331%_
                           _%pkg124332%_
                           _%args124333%_)
                    (let ((_g125807_
                           (if _%pkg124332%_
                               (values _%pre124330%_
                                       _%ns124331%_
                                       _%pkg124332%_)
                               (gx#core-read-module-package
                                _%path124241%_
                                _%pre124330%_
                                _%ns124331%_))))
                      (begin
                        (let ((_g125808_
                               (if (##values? _g125807_)
                                   (##vector-length _g125807_)
                                   1)))
                          (if (not (##fx= _g125808_ 3))
                              (error "Context expects 3 values" _g125808_)))
                        (let ((_%pre124335%_ (##vector-ref _g125807_ 0))
                              (_%ns124336%_ (##vector-ref _g125807_ 1))
                              (_%pkg124337%_ (##vector-ref _g125807_ 2)))
                          (let* ((_%prelude124339%_
                                  (gx#import-module__0 _%pre124335%_))
                                 (_%read-module-body124394%_
                                  (let ((_%$e124385%_
                                         (__find (lambda (_%e124340124342%_)
                                                   (let* ((_%g124344124354%_
                                                           _%e124340124342%_)
                                                          (_%else124346124362%_
                                                           (lambda () '#f))
                                                          (_%K124348124366%_
                                                           (lambda () '#t)))
                                                     (if (##structure-direct-instance-of?
                                                          _%g124344124354%_
                                                          'gx#module-export::t)
                                                         (let* ((_%e124349124369%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##unchecked-structure-ref
                          _%g124344124354%_
                          '1
                          '#f
                          '#f))
                        (_%e124350124372%_
                         (##unchecked-structure-ref
                          _%g124344124354%_
                          '2
                          '#f
                          '#f))
                        (_%e124351124375%_
                         (##unchecked-structure-ref
                          _%g124344124354%_
                          '3
                          '#f
                          '#f)))
                   (if (##eq? _%e124351124375%_ '1)
                       (let ((_%e124352124378%_
                              (##unchecked-structure-ref
                               _%g124344124354%_
                               '4
                               '#f
                               '#f)))
                         (if ((lambda (_%g124380124382%_)
                                (eq? _%g124380124382%_ 'read-module-body))
                              _%e124352124378%_)
                             (_%K124348124366%_)
                             (_%else124346124362%_)))
                       (_%else124346124362%_)))
                 (_%else124346124362%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (##unchecked-structure-ref
                                                  _%prelude124339%_
                                                  '9
                                                  '#f
                                                  '#f))))
                                    (if _%$e124385%_
                                        ((lambda (_%xport124388%_)
                                           (let ((_%proc124391%_
                                                  (__with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _%xport124388%_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _%proc124391%_)
                                                 _%proc124391%_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _%path124241%_
                                                  _%pre124335%_
                                                  _%proc124391%_))))
                                         _%$e124385%_)
                                        (let ()
                                          _%default-read-module-body124243%_))))
                                 (_%path-id124396%_
                                  (gx#core-module-path->namespace
                                   _%path124241%_))
                                 (_%pkg-id124398%_
                                  (if _%pkg124337%_
                                      (string-append
                                       _%pkg124337%_
                                       '"/"
                                       _%path-id124396%_)
                                      _%path-id124396%_))
                                 (_%module-id124400%_
                                  (string->symbol _%pkg-id124398%_))
                                 (_%module-ns124405%_
                                  (let ((_%$e124402%_ _%ns124336%_))
                                    (if _%$e124402%_
                                        _%$e124402%_
                                        _%pkg-id124398%_)))
                                 (_%body124408%_
                                  (__call-with-parameters
                                   (lambda ()
                                     (_%read-module-body124394%_
                                      _%inp124329%_))
                                   gx#current-module-reader-path
                                   _%path124241%_
                                   gx#current-module-reader-args
                                   _%args124333%_)))
                            (values _%prelude124339%_
                                    _%module-id124400%_
                                    _%module-ns124405%_
                                    _%body124408%_)))))))
                 (_%string-e124245%_
                  (lambda (_%obj124323%_ _%what124324%_)
                    (if (string? _%obj124323%_)
                        (let () _%obj124323%_)
                        (if (symbol? _%obj124323%_)
                            (let () (symbol->string _%obj124323%_))
                            (let ()
                              (gx#raise-syntax-error
                               '#f
                               (string-append
                                '"Illegal module "
                                _%what124324%_)
                               _%path124241%_
                               _%obj124323%_))))))
                 (_%read-lang-args124246%_
                  (lambda (_%inp124278%_ _%args124279%_)
                    (let* ((_%args124280124288%_ _%args124279%_)
                           (_%else124282124296%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _%path124241%_)))
                           (_%K124284124311%_
                            (lambda (_%args124299%_ _%prelude124300%_)
                              (let* ((_%pkg124302%_
                                      (pgetq__0 'package: _%args124299%_))
                                     (_%pkg124304%_
                                      (if _%pkg124302%_
                                          (_%string-e124245%_
                                           _%pkg124302%_
                                           '"package")
                                          '#f))
                                     (_%ns124306%_
                                      (pgetq__0 'namespace: _%args124299%_))
                                     (_%ns124308%_
                                      (if _%ns124306%_
                                          (_%string-e124245%_
                                           _%ns124306%_
                                           '"namespace")
                                          '#f)))
                                (_%read-body124244%_
                                 _%inp124278%_
                                 _%prelude124300%_
                                 _%ns124308%_
                                 _%pkg124304%_
                                 _%args124299%_)))))
                      (if (##pair? _%args124280124288%_)
                          (let ((_%hd124285124314%_
                                 (##car _%args124280124288%_))
                                (_%tl124286124316%_
                                 (##cdr _%args124280124288%_)))
                            (let* ((_%prelude124319%_ _%hd124285124314%_)
                                   (_%args124321%_ _%tl124286124316%_))
                              (_%K124284124311%_
                               _%args124321%_
                               _%prelude124319%_)))
                          (_%else124282124296%_)))))
                 (_%read-lang124247%_
                  (lambda (_%inp124252%_)
                    (let* ((_%head124254%_ (read-line _%inp124252%_))
                           (_%$e124256%_
                            (string-index__0 _%head124254%_ '#\space)))
                      (if _%$e124256%_
                          ((lambda (_%ix124259%_)
                             (let ((_%lang124261%_
                                    (substring
                                     _%head124254%_
                                     '0
                                     _%ix124259%_)))
                               (if (equal? _%lang124261%_ '"#lang")
                                   (let* ((_%rest124263%_
                                           (substring
                                            _%head124254%_
                                            (##fx+ _%ix124259%_ '1)
                                            (##string-length _%head124254%_)))
                                          (_%args124274%_
                                           (__with-catch
                                            (lambda (_%g124264124266%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _%path124241%_
                                               _%g124264124266%_))
                                            (lambda ()
                                              (call-with-input-string
                                               _%rest124263%_
                                               (lambda (_%g124269124271%_)
                                                 (read-all
                                                  _%g124269124271%_
                                                  read)))))))
                                     (_%read-lang-args124246%_
                                      _%inp124252%_
                                      _%args124274%_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _%path124241%_))))
                           _%$e124256%_)
                          (let ()
                            (gx#raise-syntax-error
                             '#f
                             '"Illegal module syntax"
                             _%path124241%_))))))
                 (_%read-e124248%_
                  (lambda (_%inp124250%_)
                    (if (eq? (peek-char _%inp124250%_) '#\#)
                        (_%read-lang124247%_ _%inp124250%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _%path124241%_)))))
          (gx#call-with-input-source-file _%path124241%_ _%read-e124248%_))))
    (define gx#core-read-module-package
      (lambda (_%path124189%_ _%pre124190%_ _%ns124191%_)
        (letrec ((_%string-e124193%_
                  (lambda (_%e124236%_)
                    (if (symbol? _%e124236%_)
                        (let () (symbol->string _%e124236%_))
                        (if (string? _%e124236%_)
                            (let () _%e124236%_)
                            (let ()
                              (gx#raise-syntax-error
                               '#f
                               '"Malformed package info; unexpected datum"
                               _%e124236%_)))))))
          (let _%lp124195%_ ((_%dir124197%_ (path-directory _%path124189%_))
                             (_%pkg-path124198%_ '()))
            (let ((_%gerbil.pkg124200%_
                   (path-expand '"gerbil.pkg" _%dir124197%_)))
              (if (##file-exists? _%gerbil.pkg124200%_)
                  (let ((_%plist124202%_
                         (gx#core-library-package-plist__% _%dir124197%_ '#t)))
                    (if (null? _%plist124202%_)
                        (let ((_%pkg124205%_
                               (if (not (null? _%pkg-path124198%_))
                                   (string-join _%pkg-path124198%_ '"/")
                                   '#f)))
                          (values _%pre124190%_ _%ns124191%_ _%pkg124205%_))
                        (if (list? _%plist124202%_)
                            (let ()
                              (let* ((_%root124208%_
                                      (pgetq__0 'package: _%plist124202%_))
                                     (_%pkg124212%_
                                      (let ((_%pkg-path124210%_
                                             (if _%root124208%_
                                                 (cons (_%string-e124193%_
                                                        _%root124208%_)
                                                       _%pkg-path124198%_)
                                                 _%pkg-path124198%_)))
                                        (if (not (null? _%pkg-path124210%_))
                                            (string-join
                                             _%pkg-path124210%_
                                             '"/")
                                            '#f)))
                                     (_%ns124219%_
                                      (let ((_%ns124217%_
                                             (let ((_%$e124214%_ _%ns124191%_))
                                               (if _%$e124214%_
                                                   _%$e124214%_
                                                   (pgetq__0
                                                    'namespace:
                                                    _%plist124202%_)))))
                                        (if _%ns124217%_
                                            (_%string-e124193%_ _%ns124217%_)
                                            '#f)))
                                     (_%pre124224%_
                                      (let ((_%$e124221%_ _%pre124190%_))
                                        (if _%$e124221%_
                                            _%$e124221%_
                                            (pgetq__0
                                             'prelude:
                                             _%plist124202%_)))))
                                (values _%pre124224%_
                                        _%ns124219%_
                                        _%pkg124212%_)))
                            (let ()
                              (gx#raise-syntax-error
                               '#f
                               '"Malformed package info; unexpected datum"
                               _%plist124202%_)))))
                  (let ((_%dir*124228%_
                         (path-strip-trailing-directory-separator
                          _%dir124197%_)))
                    (if (or (__string-empty? _%dir*124228%_)
                            (equal? _%dir124197%_ _%dir*124228%_))
                        (values _%pre124190%_ _%ns124191%_ '#f)
                        (let ((_%xpath124233%_
                               (path-strip-directory _%dir*124228%_))
                              (_%xdir124234%_ (path-directory _%dir*124228%_)))
                          (_%lp124195%_
                           _%xdir124234%_
                           (cons _%xpath124233%_ _%pkg-path124198%_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_%path124187%_)
        (path-strip-extension (path-strip-directory _%path124187%_))))
    (define gx#core-module-path->id
      (lambda (_%path124185%_)
        (##string->symbol (gx#core-module-path->namespace _%path124185%_))))
    (define gx#core-resolve-module-path__%
      (lambda (_%stx-path124164%_ _%rel124165%_)
        (let* ((_%path124167%_ (gx#stx-e _%stx-path124164%_))
               (_%path124169%_
                (if (__string-empty? (path-extension _%path124167%_))
                    (##string-append _%path124167%_ '".ss")
                    _%path124167%_)))
          (gx#core-resolve-path__%
           _%path124169%_
           (let ((_%$e124172%_ (gx#stx-source _%stx-path124164%_)))
             (if _%$e124172%_ _%$e124172%_ _%rel124165%_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_%stx-path124178%_)
        (let ((_%rel124180%_ '#f))
          (gx#core-resolve-module-path__% _%stx-path124178%_ _%rel124180%_))))
    (define gx#core-resolve-module-path
      (lambda _g125810_
        (let ((_g125809_ (##length _g125810_)))
          (cond ((##fx= _g125809_ 1)
                 (apply (lambda (_%stx-path124178%_)
                          (gx#core-resolve-module-path__0 _%stx-path124178%_))
                        _g125810_))
                ((##fx= _g125809_ 2)
                 (apply (lambda (_%stx-path124182%_ _%rel124183%_)
                          (gx#core-resolve-module-path__%
                           _%stx-path124182%_
                           _%rel124183%_))
                        _g125810_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g125810_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_%libpath124049%_)
        (let* ((_%spath124051%_ (symbol->string (gx#stx-e _%libpath124049%_)))
               (_%spath124053%_
                (substring
                 _%spath124051%_
                 '1
                 (##string-length _%spath124051%_)))
               (_%ext124055%_ (path-extension _%spath124053%_))
               (_%ssi124057%_
                (if (__string-empty? _%ext124055%_)
                    (##string-append _%spath124053%_ '".ssi")
                    (##string-append
                     (path-strip-extension _%spath124053%_)
                     '".ssi")))
               (_%srcs124061%_
                (if (__string-empty? _%ext124055%_)
                    (##map (lambda (_%ext124059%_)
                             (string-append _%spath124053%_ _%ext124059%_))
                           '(".ss" ".sld" ".scm"))
                    (cons _%spath124053%_ '()))))
          (let _%lp124064%_ ((_%rest124066%_ (load-path)))
            (let* ((_%rest124067124076%_ _%rest124066%_)
                   (_%E124070124080%_
                    (lambda ()
                      (error '"No clause matching"
                             _%rest124067124076%_
                             '([dir . rest])
                             '([]))
                      '#!void)))
              (let ((_%K124072124151%_
                     (lambda (_%rest124091%_ _%dir124092%_)
                       (letrec ((_%resolve124094%_
                                 (lambda (_%ssi124107%_ _%srcs124108%_)
                                   (let ((_%compiled-path124110%_
                                          (path-expand
                                           _%ssi124107%_
                                           _%dir124092%_)))
                                     (if (##file-exists?
                                          _%compiled-path124110%_)
                                         (path-normalize
                                          _%compiled-path124110%_)
                                         (let _%lpr124112%_ ((_%rest-src124114%_
                                                              _%srcs124108%_))
                                           (let* ((_%rest-src124115124123%_
                                                   _%rest-src124114%_)
                                                  (_%else124117124131%_
                                                   (lambda ()
                                                     (_%lp124064%_
                                                      _%rest124091%_)))
                                                  (_%K124119124139%_
                                                   (lambda (_%rest-src124134%_
                                                            _%src124135%_)
                                                     (let ((_%src-path124137%_
                                                            (path-expand
                                                             _%src124135%_
                                                             _%dir124092%_)))
                                                       (if (##file-exists?
                                                            _%src-path124137%_)
                                                           (path-normalize
                                                            _%src-path124137%_)
                                                           (_%lpr124112%_
                                                            _%rest-src124134%_))))))
                                             (if (##pair? _%rest-src124115124123%_)
                                                 (let ((_%hd124120124142%_
                                                        (##car _%rest-src124115124123%_))
                                                       (_%tl124121124144%_
                                                        (##cdr _%rest-src124115124123%_)))
                                                   (let* ((_%src124147%_
                                                           _%hd124120124142%_)
                                                          (_%rest-src124149%_
                                                           _%tl124121124144%_))
                                                     (_%K124119124139%_
                                                      _%rest-src124149%_
                                                      _%src124147%_)))
                                                 (_%else124117124131%_)))))))))
                         (let ((_%$e124096%_
                                (gx#core-library-package-path-prefix
                                 _%dir124092%_)))
                           (if _%$e124096%_
                               ((lambda (_%prefix124099%_)
                                  (if (string-prefix?
                                       _%prefix124099%_
                                       _%spath124053%_)
                                      (let ((_%ssi124103%_
                                             (substring
                                              _%ssi124057%_
                                              (string-length _%prefix124099%_)
                                              (##string-length _%ssi124057%_)))
                                            (_%srcs124104%_
                                             (##map (lambda (_%src124101%_)
                                                      (substring
                                                       _%src124101%_
                                                       (string-length
                                                        _%prefix124099%_)
                                                       (string-length
                                                        _%src124101%_)))
                                                    _%srcs124061%_)))
                                        (_%resolve124094%_
                                         _%ssi124103%_
                                         _%srcs124104%_))
                                      (_%lp124064%_ _%rest124091%_)))
                                _%$e124096%_)
                               (let ()
                                 (_%resolve124094%_
                                  _%ssi124057%_
                                  _%srcs124061%_)))))))
                    (_%K124071124085%_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"cannot find library module"
                        _%libpath124049%_))))
                (let ((_%try-match124069124088%_
                       (lambda ()
                         (if (##null? _%rest124067124076%_)
                             (_%K124071124085%_)
                             (_%E124070124080%_)))))
                  (if (##pair? _%rest124067124076%_)
                      (let ((_%tl124074124156%_ (##cdr _%rest124067124076%_))
                            (_%hd124073124154%_ (##car _%rest124067124076%_)))
                        (let ((_%dir124159%_ _%hd124073124154%_)
                              (_%rest124161%_ _%tl124074124156%_))
                          (_%K124072124151%_ _%rest124161%_ _%dir124159%_)))
                      (_%try-match124069124088%_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_%modpath124017%_)
        (letrec ((_%resolve124019%_
                  (lambda (_%path124040%_ _%base124041%_)
                    (let ((_%$e124043%_
                           (string-rindex__0 _%base124041%_ '#\/)))
                      (if _%$e124043%_
                          ((lambda (_%idx124046%_)
                             (gx#core-resolve-library-module-path
                              (##string->symbol
                               (string-append
                                '":"
                                (substring _%base124041%_ '0 _%idx124046%_)
                                '"/"
                                _%path124040%_))))
                           _%$e124043%_)
                          (let ()
                            (gx#core-resolve-library-module-path
                             (##string->symbol
                              (string-append '":" _%path124040%_)))))))))
          (let ((_%spath124021%_ (symbol->string (gx#stx-e _%modpath124017%_)))
                (_%mod124022%_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _%mod124022%_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"cannot resolve relative module path; not in module context"
                 _%modpath124017%_))
            (let ((_%mpath124024%_
                   (symbol->string
                    (##structure-ref
                     _%mod124022%_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _%lp124026%_ ((_%spath124028%_ _%spath124021%_)
                                 (_%mpath124029%_ _%mpath124024%_))
                (if (string-prefix? '"../" _%spath124028%_)
                    (let ((_%$e124032%_
                           (string-rindex__0 _%mpath124029%_ '#\/)))
                      (if _%$e124032%_
                          ((lambda (_%idx124035%_)
                             (_%lp124026%_
                              (substring
                               _%spath124028%_
                               '3
                               (string-length _%spath124028%_))
                              (substring _%mpath124029%_ '0 _%idx124035%_)))
                           _%$e124032%_)
                          (let ()
                            (gx#raise-syntax-error
                             '#f
                             '"cannot resolve relative module path; illegal traversal"
                             _%modpath124017%_))))
                    (if (string-prefix? '"./" _%spath124028%_)
                        (let ()
                          (_%lp124026%_
                           (substring
                            _%spath124028%_
                            '2
                            (string-length _%spath124028%_))
                           _%mpath124029%_))
                        (let ()
                          (_%resolve124019%_
                           _%spath124028%_
                           _%mpath124029%_))))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_%dir124009%_)
        (let ((_%$e124011%_
               (pgetq__0
                'package:
                (gx#core-library-package-plist__0 _%dir124009%_))))
          (if _%$e124011%_
              ((lambda (_%pkg124014%_)
                 (##string-append (symbol->string _%pkg124014%_) '"/"))
               _%$e124011%_)
              (let () '#f)))))
    (define gx#core-library-package-plist__%
      (lambda (_%dir123979%_ _%exists?123980%_)
        (let ((_%$e123982%_ (hash-get gx#__module-pkg-cache _%dir123979%_)))
          (if _%$e123982%_
              (values _%$e123982%_)
              (let ()
                (let* ((_%gerbil.pkg123986%_
                        (path-expand '"gerbil.pkg" _%dir123979%_))
                       (_%plist123996%_
                        (if (or _%exists?123980%_
                                (##file-exists? _%gerbil.pkg123986%_))
                            (let ((_%e123991%_
                                   (gx#call-with-input-source-file
                                    _%gerbil.pkg123986%_
                                    read)))
                              (if (eof-object? _%e123991%_)
                                  (let () '())
                                  (if (list? _%e123991%_)
                                      (let () _%e123991%_)
                                      (let ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Malformed package info; unexpected datum"
                                         _%gerbil.pkg123986%_
                                         _%e123991%_)))))
                            '())))
                  (hash-put!
                   gx#__module-pkg-cache
                   _%dir123979%_
                   _%plist123996%_)
                  _%plist123996%_))))))
    (define gx#core-library-package-plist__0
      (lambda (_%dir124002%_)
        (let ((_%exists?124004%_ '#f))
          (gx#core-library-package-plist__% _%dir124002%_ _%exists?124004%_))))
    (define gx#core-library-package-plist
      (lambda _g125812_
        (let ((_g125811_ (##length _g125812_)))
          (cond ((##fx= _g125811_ 1)
                 (apply (lambda (_%dir124002%_)
                          (gx#core-library-package-plist__0 _%dir124002%_))
                        _g125812_))
                ((##fx= _g125811_ 2)
                 (apply (lambda (_%dir124006%_ _%exists?124007%_)
                          (gx#core-library-package-plist__%
                           _%dir124006%_
                           _%exists?124007%_))
                        _g125812_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g125812_))))))
    (define gx#core-library-module-path?
      (lambda (_%stx123976%_)
        (gx#core-special-module-path? _%stx123976%_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_%stx123974%_)
        (gx#core-special-module-path? _%stx123974%_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_%stx123969%_ _%char123970%_)
        (if (gx#identifier? _%stx123969%_)
            (if (interned-symbol? (gx#stx-e _%stx123969%_))
                (let ((_%str123972%_
                       (symbol->string (gx#stx-e _%stx123969%_))))
                  (if (##fx> (##string-length _%str123972%_) '1)
                      (eq? (string-ref _%str123972%_ '0) _%char123970%_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_%stx123963%_)
        (gx#core-bound-identifier?__%
         _%stx123963%_
         (lambda (_%g123964123966%_)
           (gx#expander-binding?__% _%g123964123966%_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_%stx123957%_)
        (gx#core-bound-identifier?__%
         _%stx123957%_
         (lambda (_%g123958123960%_)
           (gx#expander-binding?__% _%g123958123960%_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_%stx123944%_)
        (letrec ((_%module-prelude?123946%_
                  (lambda (_%e123952%_)
                    (let ((_%$e123954%_
                           (##structure-instance-of?
                            _%e123952%_
                            'gx#module-context::t)))
                      (if _%$e123954%_
                          _%$e123954%_
                          (##structure-instance-of?
                           _%e123952%_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _%stx123944%_
           (lambda (_%g123947123949%_)
             (gx#expander-binding?__%
              _%g123947123949%_
              _%module-prelude?123946%_))))))
    (define gx#core-bind-import!__%
      (lambda (_%in123874%_ _%ctx123875%_ _%force-weak?123876%_)
        (let* ((_%in123877123886%_ _%in123874%_)
               (_%E123879123890%_
                (lambda ()
                  (error '"No clause matching"
                         _%in123877123886%_
                         '((module-import source key phi weak?)))
                  '#!void))
               (_%K123880123903%_
                (lambda (_%weak?123893%_
                         _%phi123894%_
                         _%key123895%_
                         _%source123896%_)
                  (gx#core-bind!__%
                   _%key123895%_
                   (let ((_%e123898%_
                          (gx#core-resolve-module-export _%source123896%_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref _%e123898%_ '1 '#f '#f)
                      _%key123895%_
                      _%phi123894%_
                      _%e123898%_
                      (##unchecked-structure-ref _%source123896%_ '1 '#f '#f)
                      (let ((_%$e123900%_ _%force-weak?123876%_))
                        (if _%$e123900%_ _%$e123900%_ _%weak?123893%_))))
                   gx#core-context-rebind?
                   _%phi123894%_
                   _%ctx123875%_))))
          (if (##structure-direct-instance-of?
               _%in123877123886%_
               'gx#module-import::t)
              (let* ((_%e123881123906%_
                      (##unchecked-structure-ref
                       _%in123877123886%_
                       '1
                       '#f
                       '#f))
                     (_%source123909%_ _%e123881123906%_)
                     (_%e123882123911%_
                      (##unchecked-structure-ref
                       _%in123877123886%_
                       '2
                       '#f
                       '#f))
                     (_%key123914%_ _%e123882123911%_)
                     (_%e123883123916%_
                      (##unchecked-structure-ref
                       _%in123877123886%_
                       '3
                       '#f
                       '#f))
                     (_%phi123919%_ _%e123883123916%_)
                     (_%e123884123921%_
                      (##unchecked-structure-ref
                       _%in123877123886%_
                       '4
                       '#f
                       '#f))
                     (_%weak?123924%_ _%e123884123921%_))
                (_%K123880123903%_
                 _%weak?123924%_
                 _%phi123919%_
                 _%key123914%_
                 _%source123909%_))
              (_%E123879123890%_)))))
    (define gx#core-bind-import!__0
      (lambda (_%in123929%_)
        (let* ((_%ctx123931%_ (gx#current-expander-context))
               (_%force-weak?123933%_ '#f))
          (gx#core-bind-import!__%
           _%in123929%_
           _%ctx123931%_
           _%force-weak?123933%_))))
    (define gx#core-bind-import!__1
      (lambda (_%in123935%_ _%ctx123936%_)
        (let ((_%force-weak?123938%_ '#f))
          (gx#core-bind-import!__%
           _%in123935%_
           _%ctx123936%_
           _%force-weak?123938%_))))
    (define gx#core-bind-import!
      (lambda _g125814_
        (let ((_g125813_ (##length _g125814_)))
          (cond ((##fx= _g125813_ 1)
                 (apply (lambda (_%in123929%_)
                          (gx#core-bind-import!__0 _%in123929%_))
                        _g125814_))
                ((##fx= _g125813_ 2)
                 (apply (lambda (_%in123935%_ _%ctx123936%_)
                          (gx#core-bind-import!__1 _%in123935%_ _%ctx123936%_))
                        _g125814_))
                ((##fx= _g125813_ 3)
                 (apply (lambda (_%in123940%_
                                 _%ctx123941%_
                                 _%force-weak?123942%_)
                          (gx#core-bind-import!__%
                           _%in123940%_
                           _%ctx123941%_
                           _%force-weak?123942%_))
                        _g125814_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g125814_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_%in123860%_ _%ctx123861%_)
        (gx#core-bind-import!__% _%in123860%_ _%ctx123861%_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_%in123866%_)
        (let ((_%ctx123868%_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _%in123866%_ _%ctx123868%_))))
    (define gx#core-bind-weak-import!
      (lambda _g125816_
        (let ((_g125815_ (##length _g125816_)))
          (cond ((##fx= _g125815_ 1)
                 (apply (lambda (_%in123866%_)
                          (gx#core-bind-weak-import!__0 _%in123866%_))
                        _g125816_))
                ((##fx= _g125815_ 2)
                 (apply (lambda (_%in123870%_ _%ctx123871%_)
                          (gx#core-bind-weak-import!__%
                           _%in123870%_
                           _%ctx123871%_))
                        _g125816_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g125816_))))))
    (define gx#core-resolve-module-export
      (lambda (_%out123751%_)
        (letrec ((_%subst123753%_
                  (lambda (_%key123799%_)
                    (let* ((_%key123800123808%_ _%key123799%_)
                           (_%else123802123816%_ (lambda () _%key123799%_))
                           (_%K123804123847%_
                            (lambda (_%mark123819%_ _%id123820%_)
                              (let* ((_%mark123821123827%_ _%mark123819%_)
                                     (_%E123823123831%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark123821123827%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K123824123839%_
                                      (lambda (_%subst123834%_)
                                        (let ((_%$e123836%_
                                               (if _%subst123834%_
                                                   (hash-get
                                                    _%subst123834%_
                                                    _%id123820%_)
                                                   '#f)))
                                          (if _%$e123836%_
                                              _%$e123836%_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _%key123799%_))))))
                                (if (##structure-instance-of?
                                     _%mark123821123827%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e123825123842%_
                                            (##unchecked-structure-ref
                                             _%mark123821123827%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst123845%_ _%e123825123842%_))
                                      (_%K123824123839%_ _%subst123845%_))
                                    (_%E123823123831%_))))))
                      (if (##pair? _%key123800123808%_)
                          (let ((_%hd123805123850%_
                                 (##car _%key123800123808%_))
                                (_%tl123806123852%_
                                 (##cdr _%key123800123808%_)))
                            (let* ((_%id123855%_ _%hd123805123850%_)
                                   (_%mark123857%_ _%tl123806123852%_))
                              (_%K123804123847%_ _%mark123857%_ _%id123855%_)))
                          (_%else123802123816%_))))))
          (let* ((_%out123754123764%_ _%out123751%_)
                 (_%E123756123768%_
                  (lambda ()
                    (error '"No clause matching"
                           _%out123754123764%_
                           '((module-export ctx key phi _ _)))
                    '#!void))
                 (_%K123757123775%_
                  (lambda (_%phi123771%_ _%key123772%_ _%ctx123773%_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _%ctx123773%_ _%phi123771%_)
                     (_%subst123753%_ _%key123772%_)))))
            (if (##structure-direct-instance-of?
                 _%out123754123764%_
                 'gx#module-export::t)
                (let* ((_%e123758123778%_
                        (##unchecked-structure-ref
                         _%out123754123764%_
                         '1
                         '#f
                         '#f))
                       (_%ctx123781%_ _%e123758123778%_)
                       (_%e123759123783%_
                        (##unchecked-structure-ref
                         _%out123754123764%_
                         '2
                         '#f
                         '#f))
                       (_%key123786%_ _%e123759123783%_)
                       (_%e123760123788%_
                        (##unchecked-structure-ref
                         _%out123754123764%_
                         '3
                         '#f
                         '#f))
                       (_%phi123791%_ _%e123760123788%_)
                       (_%e123761123793%_
                        (##unchecked-structure-ref
                         _%out123754123764%_
                         '4
                         '#f
                         '#f))
                       (_%e123762123796%_
                        (##unchecked-structure-ref
                         _%out123754123764%_
                         '5
                         '#f
                         '#f)))
                  (_%K123757123775%_
                   _%phi123791%_
                   _%key123786%_
                   _%ctx123781%_))
                (_%E123756123768%_))))))
    (define gx#core-module-export->import__%
      (lambda (_%out123676%_ _%rename123677%_ _%dphi123678%_)
        (let* ((_%out123679123689%_ _%out123676%_)
               (_%E123681123693%_
                (lambda ()
                  (error '"No clause matching"
                         _%out123679123689%_
                         '((module-export ctx key phi name weak?)))
                  '#!void))
               (_%K123682123705%_
                (lambda (_%weak?123696%_
                         _%name123697%_
                         _%phi123698%_
                         _%key123699%_
                         _%ctx123700%_)
                  (##structure
                   gx#module-import::t
                   _%out123676%_
                   (let ((_%$e123702%_ _%rename123677%_))
                     (if _%$e123702%_ _%$e123702%_ _%name123697%_))
                   (fx+ _%phi123698%_ _%dphi123678%_)
                   _%weak?123696%_))))
          (if (##structure-direct-instance-of?
               _%out123679123689%_
               'gx#module-export::t)
              (let* ((_%e123683123708%_
                      (##unchecked-structure-ref
                       _%out123679123689%_
                       '1
                       '#f
                       '#f))
                     (_%ctx123711%_ _%e123683123708%_)
                     (_%e123684123713%_
                      (##unchecked-structure-ref
                       _%out123679123689%_
                       '2
                       '#f
                       '#f))
                     (_%key123716%_ _%e123684123713%_)
                     (_%e123685123718%_
                      (##unchecked-structure-ref
                       _%out123679123689%_
                       '3
                       '#f
                       '#f))
                     (_%phi123721%_ _%e123685123718%_)
                     (_%e123686123723%_
                      (##unchecked-structure-ref
                       _%out123679123689%_
                       '4
                       '#f
                       '#f))
                     (_%name123726%_ _%e123686123723%_)
                     (_%e123687123728%_
                      (##unchecked-structure-ref
                       _%out123679123689%_
                       '5
                       '#f
                       '#f))
                     (_%weak?123731%_ _%e123687123728%_))
                (_%K123682123705%_
                 _%weak?123731%_
                 _%name123726%_
                 _%phi123721%_
                 _%key123716%_
                 _%ctx123711%_))
              (_%E123681123693%_)))))
    (define gx#core-module-export->import__0
      (lambda (_%out123736%_)
        (let* ((_%rename123738%_ '#f) (_%dphi123740%_ '0))
          (gx#core-module-export->import__%
           _%out123736%_
           _%rename123738%_
           _%dphi123740%_))))
    (define gx#core-module-export->import__1
      (lambda (_%out123742%_ _%rename123743%_)
        (let ((_%dphi123745%_ '0))
          (gx#core-module-export->import__%
           _%out123742%_
           _%rename123743%_
           _%dphi123745%_))))
    (define gx#core-module-export->import
      (lambda _g125818_
        (let ((_g125817_ (##length _g125818_)))
          (cond ((##fx= _g125817_ 1)
                 (apply (lambda (_%out123736%_)
                          (gx#core-module-export->import__0 _%out123736%_))
                        _g125818_))
                ((##fx= _g125817_ 2)
                 (apply (lambda (_%out123742%_ _%rename123743%_)
                          (gx#core-module-export->import__1
                           _%out123742%_
                           _%rename123743%_))
                        _g125818_))
                ((##fx= _g125817_ 3)
                 (apply (lambda (_%out123747%_ _%rename123748%_ _%dphi123749%_)
                          (gx#core-module-export->import__%
                           _%out123747%_
                           _%rename123748%_
                           _%dphi123749%_))
                        _g125818_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g125818_))))))
    (define gx#core-expand-module%
      (lambda (_%stx123575%_)
        (letrec ((_%make-context123577%_
                  (lambda (_%id123654%_)
                    (let* ((_%super123656%_ (gx#current-expander-context))
                           (_%bind-id123658%_ (gx#stx-e _%id123654%_))
                           (_%mod-id123660%_
                            (if (##structure-instance-of?
                                 _%super123656%_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##structure-ref
                                  _%super123656%_
                                  '1
                                  gx#expander-context::t
                                  '#f)
                                 '"~"
                                 _%bind-id123658%_)
                                _%bind-id123658%_))
                           (_%ns123662%_ (symbol->string _%mod-id123660%_))
                           (_%path123672%_
                            (if (##structure-instance-of?
                                 _%super123656%_
                                 'gx#module-context::t)
                                (let ((_%path123664%_
                                       (##unchecked-structure-ref
                                        _%super123656%_
                                        '7
                                        '#f
                                        '#f)))
                                  (if (or (pair? _%path123664%_)
                                          (null? _%path123664%_))
                                      (let ()
                                        (cons _%bind-id123658%_
                                              _%path123664%_))
                                      (if (not _%path123664%_)
                                          (let () _%bind-id123658%_)
                                          (let ()
                                            (cons _%bind-id123658%_
                                                  (cons _%path123664%_
                                                        '()))))))
                                _%bind-id123658%_))
                           (__obj125794
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
                       __obj125794
                       _%mod-id123660%_
                       _%super123656%_
                       _%ns123662%_
                       _%path123672%_)
                      __obj125794)))
                 (_%valid-module-id?123578%_
                  (lambda (_%id123629%_)
                    (let* ((_%str123631%_ (symbol->string _%id123629%_))
                           (_%len123633%_ (##string-length _%str123631%_)))
                      (if (##fx>= _%len123633%_ '1)
                          (let _%loop123636%_ ((_%index123638%_
                                                (##fx- (##string-length
                                                        _%str123631%_)
                                                       '1)))
                            (if (##fx>= _%index123638%_ '0)
                                (let ((_%c123640%_
                                       (string-ref
                                        _%str123631%_
                                        _%index123638%_)))
                                  (if (or (and (##char>=? _%c123640%_ '#\a)
                                               (##char<=? _%c123640%_ '#\z))
                                          (and (##char>=? _%c123640%_ '#\A)
                                               (##char<=? _%c123640%_ '#\Z))
                                          (and (##char>=? _%c123640%_ '#\0)
                                               (##char<=? _%c123640%_ '#\9))
                                          (##char=? _%c123640%_ '#\_)
                                          (##char=? _%c123640%_ '#\-))
                                      (_%loop123636%_
                                       (##fx- _%index123638%_ '1))
                                      '#f))
                                '#t))
                          '#f)))))
          (let* ((_%e123579123589%_ _%stx123575%_)
                 (_%E123581123593%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e123579123589%_)))
                 (_%E123580123625%_
                  (lambda ()
                    (if (gx#stx-pair? _%e123579123589%_)
                        (let ((_%e123582123597%_
                               (gx#syntax-e _%e123579123589%_)))
                          (let ((_%hd123583123600%_ (##car _%e123582123597%_))
                                (_%tl123584123602%_ (##cdr _%e123582123597%_)))
                            (if (gx#stx-pair? _%tl123584123602%_)
                                (let ((_%e123585123605%_
                                       (gx#syntax-e _%tl123584123602%_)))
                                  (let ((_%hd123586123608%_
                                         (##car _%e123585123605%_))
                                        (_%tl123587123610%_
                                         (##cdr _%e123585123605%_)))
                                    (let* ((_%id123613%_ _%hd123586123608%_)
                                           (_%body123615%_ _%tl123587123610%_))
                                      (if (and (gx#identifier? _%id123613%_)
                                               (gx#stx-list? _%body123615%_))
                                          (if (_%valid-module-id?123578%_
                                               (gx#stx-e
                                                (gx#datum->syntax__0 '#f 'id)))
                                              (let* ((_%ctx123617%_
                                                      (_%make-context123577%_
                                                       _%id123613%_))
                                                     (_%body123619%_
                                                      (gx#core-expand-module-begin
                                                       _%body123615%_
                                                       _%ctx123617%_))
                                                     (_%body123621%_
                                                      (gx#core-quote-syntax__1
                                                       (gx#core-cons
                                                        '%#begin
                                                        _%body123619%_)
                                                       (gx#stx-source
                                                        _%stx123575%_))))
                                                (##unchecked-structure-set!
                                                 _%ctx123617%_
                                                 (__make-promise
                                                  (lambda ()
                                                    (gx#eval-syntax*
                                                     _%body123621%_)))
                                                 '10
                                                 '#f
                                                 '#f)
                                                (##unchecked-structure-set!
                                                 _%ctx123617%_
                                                 _%body123621%_
                                                 '11
                                                 '#f
                                                 '#f)
                                                (gx#core-bind-syntax!__0
                                                 _%id123613%_
                                                 _%ctx123617%_)
                                                (gx#core-quote-syntax__1
                                                 (gx#core-list
                                                  '%#module
                                                  (gx#core-quote-syntax__0
                                                   _%id123613%_)
                                                  _%body123621%_)
                                                 (gx#stx-source
                                                  _%stx123575%_)))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"invalid module id; allowed characters are A-Z,a-z,0-9,_,-"
                                               _%stx123575%_
                                               (gx#datum->syntax__0 '#f 'id)))
                                          (_%E123581123593%_)))))
                                (_%E123581123593%_))))
                        (_%E123581123593%_)))))
            (_%E123580123625%_)))))
    (define gx#core-expand-module-begin
      (lambda (_%body123541%_ _%ctx123542%_)
        (__call-with-parameters
         (lambda ()
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_%stx123545%_
                   (gx#core-expand-head (cons '%%begin-module _%body123541%_)))
                  (_%e123546123553%_ _%stx123545%_)
                  (_%E123548123557%_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _%stx123545%_)))
                  (_%E123547123571%_
                   (lambda ()
                     (if (gx#stx-pair? _%e123546123553%_)
                         (let ((_%e123549123561%_
                                (gx#syntax-e _%e123546123553%_)))
                           (let ((_%hd123550123564%_ (##car _%e123549123561%_))
                                 (_%tl123551123566%_
                                  (##cdr _%e123549123561%_)))
                             (if (and (gx#identifier? _%hd123550123564%_)
                                      (gx#core-identifier=?
                                       _%hd123550123564%_
                                       '%#begin-module))
                                 (let ((_%body123569%_ _%tl123551123566%_))
                                   (if '#t
                                       (if (gx#sealed-syntax? _%stx123545%_)
                                           _%body123569%_
                                           (gx#core-expand-module-body
                                            _%body123569%_))
                                       (_%E123548123557%_)))
                                 (_%E123548123557%_))))
                         (_%E123548123557%_)))))
             (_%E123547123571%_)))
         gx#current-expander-context
         _%ctx123542%_
         gx#current-expander-phi
         '0)))
    (define gx#core-expand-module-body
      (lambda (_%body123337%_)
        (letrec ((_%expand-special123339%_
                  (lambda (_%hd123468%_ _%K123469%_ _%rest123470%_ _%r123471%_)
                    (let* ((_%e123472123489%_ _%hd123468%_)
                           (_%E123484123493%_
                            (lambda ()
                              (_%K123469%_
                               _%rest123470%_
                               (cons (gx#core-expand-top _%hd123468%_)
                                     _%r123471%_))))
                           (_%E123474123505%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123472123489%_)
                                  (let ((_%e123485123497%_
                                         (gx#syntax-e _%e123472123489%_)))
                                    (let ((_%hd123486123500%_
                                           (##car _%e123485123497%_))
                                          (_%tl123487123502%_
                                           (##cdr _%e123485123497%_)))
                                      (if (and (gx#identifier?
                                                _%hd123486123500%_)
                                               (gx#core-identifier=?
                                                _%hd123486123500%_
                                                '%#export))
                                          (if '#t
                                              (_%K123469%_
                                               _%rest123470%_
                                               (cons _%hd123468%_ _%r123471%_))
                                              (_%E123484123493%_))
                                          (_%E123484123493%_))))
                                  (_%E123484123493%_))))
                           (_%E123473123537%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123472123489%_)
                                  (let ((_%e123475123509%_
                                         (gx#syntax-e _%e123472123489%_)))
                                    (let ((_%hd123476123512%_
                                           (##car _%e123475123509%_))
                                          (_%tl123477123514%_
                                           (##cdr _%e123475123509%_)))
                                      (if (and (gx#identifier?
                                                _%hd123476123512%_)
                                               (gx#core-identifier=?
                                                _%hd123476123512%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl123477123514%_)
                                              (let ((_%e123478123517%_
                                                     (gx#syntax-e
                                                      _%tl123477123514%_)))
                                                (let ((_%hd123479123520%_
                                                       (##car _%e123478123517%_))
                                                      (_%tl123480123522%_
                                                       (##cdr _%e123478123517%_)))
                                                  (let ((_%hd-bind123525%_
                                                         _%hd123479123520%_))
                                                    (if (gx#stx-pair?
                                                         _%tl123480123522%_)
                                                        (let ((_%e123481123527%_
                                                               (gx#syntax-e
                                                                _%tl123480123522%_)))
                                                          (let ((_%hd123482123530%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e123481123527%_))
                        (_%tl123483123532%_ (##cdr _%e123481123527%_)))
                    (let ((_%expr123535%_ _%hd123482123530%_))
                      (if (gx#stx-null? _%tl123483123532%_)
                          (if (gx#core-bind-values? _%hd-bind123525%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind123525%_)
                                (_%K123469%_
                                 _%rest123470%_
                                 (cons _%hd123468%_ _%r123471%_)))
                              (_%E123474123505%_))
                          (_%E123474123505%_)))))
                (_%E123474123505%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E123474123505%_))
                                          (_%E123474123505%_))))
                                  (_%E123474123505%_)))))
                      (_%E123473123537%_))))
                 (_%expand-body123340%_
                  (lambda (_%rbody123342%_)
                    (let _%lp123344%_ ((_%rest123346%_ _%rbody123342%_)
                                       (_%body123347%_ '()))
                      (let* ((_%rest123348123356%_ _%rest123346%_)
                             (_%else123350123364%_ (lambda () _%body123347%_))
                             (_%K123352123456%_
                              (lambda (_%rest123367%_ _%hd123368%_)
                                (let* ((_%e123369123390%_ _%hd123368%_)
                                       (_%E123385123394%_
                                        (lambda ()
                                          (_%lp123344%_
                                           _%rest123367%_
                                           (cons (gx#core-expand-expression
                                                  _%hd123368%_)
                                                 _%body123347%_))))
                                       (_%E123381123408%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e123369123390%_)
                                              (let ((_%e123386123398%_
                                                     (gx#syntax-e
                                                      _%e123369123390%_)))
                                                (let ((_%hd123387123401%_
                                                       (##car _%e123386123398%_))
                                                      (_%tl123388123403%_
                                                       (##cdr _%e123386123398%_)))
                                                  (let ((_%form123406%_
                                                         _%hd123387123401%_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _%form123406%_
                                                         gx#special-form-binding?)
                                                        (_%lp123344%_
                                                         _%rest123367%_
                                                         (cons _%hd123368%_
                                                               _%body123347%_))
                                                        (_%E123385123394%_)))))
                                              (_%E123385123394%_))))
                                       (_%E123371123420%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e123369123390%_)
                                              (let ((_%e123382123412%_
                                                     (gx#syntax-e
                                                      _%e123369123390%_)))
                                                (let ((_%hd123383123415%_
                                                       (##car _%e123382123412%_))
                                                      (_%tl123384123417%_
                                                       (##cdr _%e123382123412%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd123383123415%_)
                                                           (gx#core-identifier=?
                                                            _%hd123383123415%_
                                                            '%#export))
                                                      (if '#t
                                                          (_%lp123344%_
                                                           _%rest123367%_
                                                           (cons (gx#core-expand-export%__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%hd123368%_)
                         _%body123347%_))
                  (_%E123381123408%_))
              (_%E123381123408%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E123381123408%_))))
                                       (_%E123370123452%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e123369123390%_)
                                              (let ((_%e123372123424%_
                                                     (gx#syntax-e
                                                      _%e123369123390%_)))
                                                (let ((_%hd123373123427%_
                                                       (##car _%e123372123424%_))
                                                      (_%tl123374123429%_
                                                       (##cdr _%e123372123424%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd123373123427%_)
                                                           (gx#core-identifier=?
                                                            _%hd123373123427%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl123374123429%_)
                                                          (let ((_%e123375123432%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl123374123429%_)))
                    (let ((_%hd123376123435%_ (##car _%e123375123432%_))
                          (_%tl123377123437%_ (##cdr _%e123375123432%_)))
                      (let ((_%hd-bind123440%_ _%hd123376123435%_))
                        (if (gx#stx-pair? _%tl123377123437%_)
                            (let ((_%e123378123442%_
                                   (gx#syntax-e _%tl123377123437%_)))
                              (let ((_%hd123379123445%_
                                     (##car _%e123378123442%_))
                                    (_%tl123380123447%_
                                     (##cdr _%e123378123442%_)))
                                (let ((_%expr123450%_ _%hd123379123445%_))
                                  (if (gx#stx-null? _%tl123380123447%_)
                                      (if '#t
                                          (_%lp123344%_
                                           _%rest123367%_
                                           (cons (gx#core-quote-syntax__1
                                                  (gx#core-list
                                                   '%#define-values
                                                   (gx#core-quote-bind-values
                                                    _%hd-bind123440%_)
                                                   (gx#core-expand-expression
                                                    _%expr123450%_))
                                                  (gx#stx-source _%hd123368%_))
                                                 _%body123347%_))
                                          (_%E123371123420%_))
                                      (_%E123371123420%_)))))
                            (_%E123371123420%_)))))
                  (_%E123371123420%_))
              (_%E123371123420%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E123371123420%_)))))
                                  (_%E123370123452%_)))))
                        (if (##pair? _%rest123348123356%_)
                            (let ((_%hd123353123459%_
                                   (##car _%rest123348123356%_))
                                  (_%tl123354123461%_
                                   (##cdr _%rest123348123356%_)))
                              (let* ((_%hd123464%_ _%hd123353123459%_)
                                     (_%rest123466%_ _%tl123354123461%_))
                                (_%K123352123456%_
                                 _%rest123466%_
                                 _%hd123464%_)))
                            (_%else123350123364%_)))))))
          (_%expand-body123340%_
           (gx#core-expand-block__%
            (cons '%#begin-module _%body123337%_)
            _%expand-special123339%_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_%stx123178%_
               _%expanded?123179%_
               _%method123180%_
               _%current-phi123181%_
               _%expand1123182%_)
        (letrec ((_%K123184%_
                  (lambda (_%rest123304%_ _%r123305%_)
                    (let* ((_%e123306123313%_ _%rest123304%_)
                           (_%E123308123317%_ (lambda () _%r123305%_))
                           (_%E123307123333%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123306123313%_)
                                  (let ((_%e123309123321%_
                                         (gx#syntax-e _%e123306123313%_)))
                                    (let ((_%hd123310123324%_
                                           (##car _%e123309123321%_))
                                          (_%tl123311123326%_
                                           (##cdr _%e123309123321%_)))
                                      (let* ((_%hd123329%_ _%hd123310123324%_)
                                             (_%rest123331%_
                                              _%tl123311123326%_))
                                        (if '#t
                                            (_%step123185%_
                                             _%hd123329%_
                                             _%rest123331%_
                                             _%r123305%_)
                                            (_%E123308123317%_)))))
                                  (_%E123308123317%_)))))
                      (_%E123307123333%_))))
                 (_%step123185%_
                  (lambda (_%hd123218%_ _%rest123219%_ _%r123220%_)
                    (let* ((_%e123221123239%_ _%hd123218%_)
                           (_%E123234123243%_
                            (lambda ()
                              (if (_%expanded?123179%_ (gx#stx-e _%hd123218%_))
                                  (_%K123184%_
                                   _%rest123219%_
                                   (cons (gx#stx-e _%hd123218%_) _%r123220%_))
                                  (_%expand1123182%_
                                   _%hd123218%_
                                   _%K123184%_
                                   _%rest123219%_
                                   _%r123220%_))))
                           (_%E123230123259%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123221123239%_)
                                  (let ((_%e123235123247%_
                                         (gx#syntax-e _%e123221123239%_)))
                                    (let ((_%hd123236123250%_
                                           (##car _%e123235123247%_))
                                          (_%tl123237123252%_
                                           (##cdr _%e123235123247%_)))
                                      (let* ((_%macro123255%_
                                              _%hd123236123250%_)
                                             (_%body123257%_
                                              _%tl123237123252%_))
                                        (if (gx#core-bound-identifier?__%
                                             _%macro123255%_
                                             gx#syntax-binding?)
                                            (_%K123184%_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _%macro123255%_)
                                                    _%hd123218%_
                                                    _%method123180%_)
                                                   _%rest123219%_)
                                             _%r123220%_)
                                            (_%E123234123243%_)))))
                                  (_%E123234123243%_))))
                           (_%E123223123273%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123221123239%_)
                                  (let ((_%e123231123263%_
                                         (gx#syntax-e _%e123221123239%_)))
                                    (let ((_%hd123232123266%_
                                           (##car _%e123231123263%_))
                                          (_%tl123233123268%_
                                           (##cdr _%e123231123263%_)))
                                      (if (eq? (gx#stx-e _%hd123232123266%_)
                                               'begin:)
                                          (let ((_%body123271%_
                                                 _%tl123233123268%_))
                                            (if '#t
                                                (_%K123184%_
                                                 (gx#stx-foldr
                                                  cons
                                                  _%rest123219%_
                                                  _%body123271%_)
                                                 _%r123220%_)
                                                (_%E123230123259%_)))
                                          (_%E123230123259%_))))
                                  (_%E123230123259%_))))
                           (_%E123222123300%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123221123239%_)
                                  (let ((_%e123224123277%_
                                         (gx#syntax-e _%e123221123239%_)))
                                    (let ((_%hd123225123280%_
                                           (##car _%e123224123277%_))
                                          (_%tl123226123282%_
                                           (##cdr _%e123224123277%_)))
                                      (if (eq? (gx#stx-e _%hd123225123280%_)
                                               'phi:)
                                          (if (gx#stx-pair? _%tl123226123282%_)
                                              (let ((_%e123227123285%_
                                                     (gx#syntax-e
                                                      _%tl123226123282%_)))
                                                (let ((_%hd123228123288%_
                                                       (##car _%e123227123285%_))
                                                      (_%tl123229123290%_
                                                       (##cdr _%e123227123285%_)))
                                                  (let* ((_%dphi123293%_
                                                          _%hd123228123288%_)
                                                         (_%body123295%_
                                                          _%tl123229123290%_))
                                                    (if (gx#stx-fixnum?
                                                         _%dphi123293%_)
                                                        (let ((_%rbody123298%_
                                                               (__call-with-parameters
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_%K123184%_ _%body123295%_ '()))
                        _%current-phi123181%_
                        (fx+ (gx#stx-e _%dphi123293%_)
                             (_%current-phi123181%_)))))
                  (_%K123184%_
                   _%rest123219%_
                   (__foldr1 cons _%r123220%_ _%rbody123298%_)))
                (_%E123223123273%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E123223123273%_))
                                          (_%E123223123273%_))))
                                  (_%E123223123273%_)))))
                      (_%E123222123300%_)))))
          (let* ((_%e123186123193%_ _%stx123178%_)
                 (_%E123188123197%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e123186123193%_)))
                 (_%E123187123214%_
                  (lambda ()
                    (if (gx#stx-pair? _%e123186123193%_)
                        (let ((_%e123189123201%_
                               (gx#syntax-e _%e123186123193%_)))
                          (let ((_%hd123190123204%_ (##car _%e123189123201%_))
                                (_%tl123191123206%_ (##cdr _%e123189123201%_)))
                            (let ((_%body123209%_ _%tl123191123206%_))
                              (if '#t
                                  (if (_%current-phi123181%_)
                                      (let () (_%K123184%_ _%body123209%_ '()))
                                      (let ()
                                        (__call-with-parameters
                                         (lambda ()
                                           (_%K123184%_ _%body123209%_ '()))
                                         _%current-phi123181%_
                                         (gx#current-expander-phi))))
                                  (_%E123188123197%_)))))
                        (_%E123188123197%_)))))
            (_%E123187123214%_)))))
    (define gx#core-expand-import%__%
      (lambda (_%stx122832%_ _%internal-expand?122833%_)
        (letrec ((_%expand1122835%_
                  (lambda (_%hd123150%_ _%K123151%_ _%rest123152%_ _%r123153%_)
                    (if (gx#core-bound-module? _%hd123150%_)
                        (let ()
                          (_%import1122836%_
                           (gx#syntax-local-e__0 _%hd123150%_)
                           _%K123151%_
                           _%rest123152%_
                           _%r123153%_))
                        (if (gx#core-library-module-path? _%hd123150%_)
                            (let ()
                              (_%import1122836%_
                               (gx#import-module__0
                                (gx#core-resolve-library-module-path
                                 _%hd123150%_))
                               _%K123151%_
                               _%rest123152%_
                               _%r123153%_))
                            (if (gx#core-library-relative-module-path?
                                 _%hd123150%_)
                                (let ()
                                  (_%import1122836%_
                                   (gx#import-module__0
                                    (gx#core-resolve-library-relative-module-path
                                     _%hd123150%_))
                                   _%K123151%_
                                   _%rest123152%_
                                   _%r123153%_))
                                (let ((_%e123159%_ (gx#stx-e _%hd123150%_)))
                                  (if (pair? _%e123159%_)
                                      (let ((_%$e123162%_
                                             (gx#stx-e (car _%e123159%_))))
                                        (if (eq? 'spec: _%$e123162%_)
                                            (_%import-spec122839%_
                                             _%hd123150%_
                                             _%K123151%_
                                             _%rest123152%_
                                             _%r123153%_)
                                            (if (eq? 'in: _%$e123162%_)
                                                (_%import-submodule122837%_
                                                 _%hd123150%_
                                                 _%K123151%_
                                                 _%rest123152%_
                                                 _%r123153%_)
                                                (if (eq? 'runtime:
                                                         _%$e123162%_)
                                                    (_%import-runtime122838%_
                                                     _%hd123150%_
                                                     _%K123151%_
                                                     _%rest123152%_
                                                     _%r123153%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _%stx122832%_
                                                     _%hd123150%_)))))
                                      (if (string? _%e123159%_)
                                          (let ()
                                            (_%import1122836%_
                                             (gx#import-module__0
                                              (gx#core-resolve-module-path__%
                                               _%hd123150%_
                                               (gx#stx-source _%stx122832%_)))
                                             _%K123151%_
                                             _%rest123152%_
                                             _%r123153%_))
                                          (if (##structure-instance-of?
                                               _%e123159%_
                                               'gx#module-context::t)
                                              (let ()
                                                (_%K123151%_
                                                 _%rest123152%_
                                                 (cons _%e123159%_
                                                       _%r123153%_)))
                                              (let ()
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; illegal import"
                                                 _%stx122832%_
                                                 _%hd123150%_)))))))))))
                 (_%import1122836%_
                  (lambda (_%ctx123139%_
                           _%K123140%_
                           _%rest123141%_
                           _%r123142%_)
                    (let ((_%dphi123144%_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_%K123140%_
                       _%rest123141%_
                       (cons (##structure
                              gx#import-set::t
                              _%ctx123139%_
                              _%dphi123144%_
                              (map (lambda (_%g123145123147%_)
                                     (gx#core-module-export->import__%
                                      _%g123145123147%_
                                      '#f
                                      _%dphi123144%_))
                                   (##unchecked-structure-ref
                                    _%ctx123139%_
                                    '9
                                    '#f
                                    '#f)))
                             _%r123142%_)))))
                 (_%import-submodule122837%_
                  (lambda (_%hd123106%_ _%K123107%_ _%rest123108%_ _%r123109%_)
                    (let* ((_%e123110123117%_ _%hd123106%_)
                           (_%E123112123121%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e123110123117%_)))
                           (_%E123111123135%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123110123117%_)
                                  (let ((_%e123113123125%_
                                         (gx#syntax-e _%e123110123117%_)))
                                    (let ((_%hd123114123128%_
                                           (##car _%e123113123125%_))
                                          (_%tl123115123130%_
                                           (##cdr _%e123113123125%_)))
                                      (let ((_%spath123133%_
                                             _%tl123115123130%_))
                                        (if '#t
                                            (_%import1122836%_
                                             (_%import-spec-source122840%_
                                              _%spath123133%_)
                                             _%K123107%_
                                             _%rest123108%_
                                             _%r123109%_)
                                            (_%E123112123121%_)))))
                                  (_%E123112123121%_)))))
                      (_%E123111123135%_))))
                 (_%import-runtime122838%_
                  (lambda (_%hd123073%_ _%K123074%_ _%rest123075%_ _%r123076%_)
                    (let* ((_%e123077123084%_ _%hd123073%_)
                           (_%E123079123088%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e123077123084%_)))
                           (_%E123078123102%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123077123084%_)
                                  (let ((_%e123080123092%_
                                         (gx#syntax-e _%e123077123084%_)))
                                    (let ((_%hd123081123095%_
                                           (##car _%e123080123092%_))
                                          (_%tl123082123097%_
                                           (##cdr _%e123080123092%_)))
                                      (let ((_%spath123100%_
                                             _%tl123082123097%_))
                                        (if '#t
                                            (_%K123074%_
                                             _%rest123075%_
                                             (cons (_%import-spec-source122840%_
                                                    _%spath123100%_)
                                                   _%r123076%_))
                                            (_%E123079123088%_)))))
                                  (_%E123079123088%_)))))
                      (_%E123078123102%_))))
                 (_%import-spec122839%_
                  (lambda (_%hd122911%_ _%K122912%_ _%rest122913%_ _%r122914%_)
                    (let* ((_%e122915122932%_ _%hd122911%_)
                           (_%E122924122936%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e122915122932%_)))
                           (_%E122917123047%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122915122932%_)
                                  (let ((_%e122925122940%_
                                         (gx#syntax-e _%e122915122932%_)))
                                    (let ((_%hd122926122943%_
                                           (##car _%e122925122940%_))
                                          (_%tl122927122945%_
                                           (##cdr _%e122925122940%_)))
                                      (if (gx#stx-pair? _%tl122927122945%_)
                                          (let ((_%e122928122948%_
                                                 (gx#syntax-e
                                                  _%tl122927122945%_)))
                                            (let ((_%hd122929122951%_
                                                   (##car _%e122928122948%_))
                                                  (_%tl122930122953%_
                                                   (##cdr _%e122928122948%_)))
                                              (let* ((_%path122956%_
                                                      _%hd122929122951%_)
                                                     (_%specs122958%_
                                                      _%tl122930122953%_))
                                                (if '#t
                                                    (let ((_%src-ctx122960%_
                                                           (_%import-spec-source122840%_
                                                            _%path122956%_))
                                                          (_%exports122961%_
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
                                                          (_%specs122962%_
                                                           (gx#syntax->list
                                                            _%specs122958%_)))
                                                      (for-each
                                                       (lambda (_%out122964%_)
                                                         (hash-put!
                                                          _%exports122961%_
                                                          (cons (##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%out122964%_
                         '3
                         '#f
                         '#f)
                        (##unchecked-structure-ref _%out122964%_ '4 '#f '#f))
                  _%out122964%_))
               (##unchecked-structure-ref _%src-ctx122960%_ '9 '#f '#f))
              (_%K122912%_
               _%rest122913%_
               (__foldl1
                (lambda (_%spec122966%_ _%r122967%_)
                  (let* ((_%e122968122984%_ _%spec122966%_)
                         (_%E122970122988%_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _%e122968122984%_)))
                         (_%E122969123043%_
                          (lambda ()
                            (if (gx#stx-pair? _%e122968122984%_)
                                (let ((_%e122971122992%_
                                       (gx#syntax-e _%e122968122984%_)))
                                  (let ((_%hd122972122995%_
                                         (##car _%e122971122992%_))
                                        (_%tl122973122997%_
                                         (##cdr _%e122971122992%_)))
                                    (let ((_%phi123000%_ _%hd122972122995%_))
                                      (if (gx#stx-pair? _%tl122973122997%_)
                                          (let ((_%e122974123002%_
                                                 (gx#syntax-e
                                                  _%tl122973122997%_)))
                                            (let ((_%hd122975123005%_
                                                   (##car _%e122974123002%_))
                                                  (_%tl122976123007%_
                                                   (##cdr _%e122974123002%_)))
                                              (let ((_%name123010%_
                                                     _%hd122975123005%_))
                                                (if (gx#stx-pair?
                                                     _%tl122976123007%_)
                                                    (let ((_%e122977123012%_
                                                           (gx#syntax-e
                                                            _%tl122976123007%_)))
                                                      (let ((_%hd122978123015%_
                                                             (##car _%e122977123012%_))
                                                            (_%tl122979123017%_
                                                             (##cdr _%e122977123012%_)))
                                                        (let ((_%src-phi123020%_
                                                               _%hd122978123015%_))
                                                          (if (gx#stx-pair?
                                                               _%tl122979123017%_)
                                                              (let ((_%e122980123022%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl122979123017%_)))
                        (let ((_%hd122981123025%_ (##car _%e122980123022%_))
                              (_%tl122982123027%_ (##cdr _%e122980123022%_)))
                          (let ((_%src-name123030%_ _%hd122981123025%_))
                            (if (gx#stx-null? _%tl122982123027%_)
                                (if (and (gx#stx-fixnum? _%src-phi123020%_)
                                         (gx#identifier? _%src-name123030%_)
                                         (gx#stx-fixnum? _%phi123000%_)
                                         (gx#identifier? _%name123010%_))
                                    (let ((_%src-phi123032%_
                                           (gx#stx-e _%src-phi123020%_))
                                          (_%src-name123033%_
                                           (gx#core-identifier-key
                                            _%src-name123030%_))
                                          (_%phi123034%_
                                           (gx#stx-e _%phi123000%_))
                                          (_%name123035%_
                                           (gx#core-identifier-key
                                            _%name123010%_)))
                                      (let ((_%$e123037%_
                                             (hash-get
                                              _%exports122961%_
                                              (cons _%src-phi123032%_
                                                    _%src-name123033%_))))
                                        (if _%$e123037%_
                                            ((lambda (_%out123040%_)
                                               (cons (gx#core-module-export->import__%
                                                      _%out123040%_
                                                      _%name123035%_
                                                      (fx- _%phi123034%_
                                                           _%src-phi123032%_))
                                                     _%r122967%_))
                                             _%$e123037%_)
                                            (let ()
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; no matching export"
                                               _%stx122832%_
                                               _%hd122911%_)))))
                                    (_%E122970122988%_))
                                (_%E122970122988%_)))))
                      (_%E122970122988%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E122970122988%_)))))
                                          (_%E122970122988%_)))))
                                (_%E122970122988%_)))))
                    (_%E122969123043%_)))
                _%r122914%_
                _%specs122962%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E122924122936%_)))))
                                          (_%E122924122936%_))))
                                  (_%E122924122936%_))))
                           (_%E122916123069%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122915122932%_)
                                  (let ((_%e122918123051%_
                                         (gx#syntax-e _%e122915122932%_)))
                                    (let ((_%hd122919123054%_
                                           (##car _%e122918123051%_))
                                          (_%tl122920123056%_
                                           (##cdr _%e122918123051%_)))
                                      (if (gx#stx-pair? _%tl122920123056%_)
                                          (let ((_%e122921123059%_
                                                 (gx#syntax-e
                                                  _%tl122920123056%_)))
                                            (let ((_%hd122922123062%_
                                                   (##car _%e122921123059%_))
                                                  (_%tl122923123064%_
                                                   (##cdr _%e122921123059%_)))
                                              (let ((_%path123067%_
                                                     _%hd122922123062%_))
                                                (if (gx#stx-null?
                                                     _%tl122923123064%_)
                                                    (if '#t
                                                        (_%K122912%_
                                                         _%rest122913%_
                                                         (cons (_%import-spec-source122840%_
                                                                _%path123067%_)
                                                               _%r122914%_))
                                                        (_%E122917123047%_))
                                                    (_%E122917123047%_)))))
                                          (_%E122917123047%_))))
                                  (_%E122917123047%_)))))
                      (_%E122916123069%_))))
                 (_%import-spec-source122840%_
                  (lambda (_%spath122909%_)
                    (gx#core-import-nested-module
                     _%spath122909%_
                     _%stx122832%_)))
                 (_%import!122841%_
                  (lambda (_%rbody122854%_)
                    (letrec* ((_%current-ctx122856%_
                               (gx#current-expander-context))
                              (_%deps122857%_ (make-hash-table-eq))
                              (_%bind!122858%_
                               (lambda (_%hd122907%_)
                                 (gx#core-bind-import!__1
                                  _%hd122907%_
                                  _%current-ctx122856%_))))
                      (let _%lp122860%_ ((_%rest122862%_ _%rbody122854%_)
                                         (_%body122863%_ '()))
                        (let* ((_%rest122864122872%_ _%rest122862%_)
                               (_%else122866122883%_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _%current-ctx122856%_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _%current-ctx122856%_
                                       (__foldl1
                                        cons
                                        (##unchecked-structure-ref
                                         _%current-ctx122856%_
                                         '8
                                         '#f
                                         '#f)
                                        _%body122863%_)
                                       '8
                                       '#f
                                       '#f)
                                      '#!void)
                                  (hash-for-each
                                   (lambda (_%ctx122880%_ _%_122881%_)
                                     (gx#eval-module _%ctx122880%_))
                                   _%deps122857%_)
                                  _%body122863%_))
                               (_%K122868122895%_
                                (lambda (_%rest122886%_ _%hd122887%_)
                                  (if (##structure-direct-instance-of?
                                       _%hd122887%_
                                       'gx#module-import::t)
                                      (let ()
                                        (_%bind!122858%_ _%hd122887%_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _%hd122887%_
                                                   '3
                                                   '#f
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _%hd122887%_
                                                            '1
                                                            '#f
                                                            '#f)
                                                           '3
                                                           '#f
                                                           '#f)))
                                            (hash-put!
                                             _%deps122857%_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _%hd122887%_
                                               '1
                                               '#f
                                               '#f)
                                              '1
                                              '#f
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _%hd122887%_
                                           'gx#import-set::t)
                                          (let ()
                                            (for-each
                                             _%bind!122858%_
                                             (##unchecked-structure-ref
                                              _%hd122887%_
                                              '3
                                              '#f
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _%hd122887%_
                                                  '2
                                                  '#f
                                                  '#f))
                                                (hash-put!
                                                 _%deps122857%_
                                                 (##unchecked-structure-ref
                                                  _%hd122887%_
                                                  '1
                                                  '#f
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_%$e122891%_
                                                 (##structure-instance-of?
                                                  _%hd122887%_
                                                  'gx#module-context::t)))
                                            (if _%$e122891%_
                                                _%$e122891%_
                                                (let ()
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Unexpected import"
                                                   _%stx122832%_
                                                   _%hd122887%_))))))
                                  (_%lp122860%_
                                   _%rest122886%_
                                   (cons _%hd122887%_ _%body122863%_)))))
                          (if (##pair? _%rest122864122872%_)
                              (let ((_%hd122869122898%_
                                     (##car _%rest122864122872%_))
                                    (_%tl122870122900%_
                                     (##cdr _%rest122864122872%_)))
                                (let* ((_%hd122903%_ _%hd122869122898%_)
                                       (_%rest122905%_ _%tl122870122900%_))
                                  (_%K122868122895%_
                                   _%rest122905%_
                                   _%hd122903%_)))
                              (_%else122866122883%_)))))))
                 (_%expanded-import?122842%_
                  (lambda (_%e122846%_)
                    (let ((_%$e122848%_
                           (##structure-direct-instance-of?
                            _%e122846%_
                            'gx#import-set::t)))
                      (if _%$e122848%_
                          _%$e122848%_
                          (let ((_%$e122851%_
                                 (##structure-direct-instance-of?
                                  _%e122846%_
                                  'gx#module-import::t)))
                            (if _%$e122851%_
                                _%$e122851%_
                                (##structure-instance-of?
                                 _%e122846%_
                                 'gx#module-context::t))))))))
          (let ((_%rbody122844%_
                 (gx#core-expand-import/export
                  _%stx122832%_
                  _%expanded-import?122842%_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _%expand1122835%_)))
            (if _%internal-expand?122833%_
                (reverse _%rbody122844%_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_%import!122841%_ _%rbody122844%_))
                 (gx#stx-source _%stx122832%_)))))))
    (define gx#core-expand-import%__0
      (lambda (_%stx123171%_)
        (let ((_%internal-expand?123173%_ '#f))
          (gx#core-expand-import%__%
           _%stx123171%_
           _%internal-expand?123173%_))))
    (define gx#core-expand-import%
      (lambda _g125820_
        (let ((_g125819_ (##length _g125820_)))
          (cond ((##fx= _g125819_ 1)
                 (apply (lambda (_%stx123171%_)
                          (gx#core-expand-import%__0 _%stx123171%_))
                        _g125820_))
                ((##fx= _g125819_ 2)
                 (apply (lambda (_%stx123175%_ _%internal-expand?123176%_)
                          (gx#core-expand-import%__%
                           _%stx123175%_
                           _%internal-expand?123176%_))
                        _g125820_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g125820_))))))
    (define gx#core-import-nested-module
      (lambda (_%spath122759%_ _%where122760%_)
        (let* ((_%e122761122768%_ _%spath122759%_)
               (_%E122763122772%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122761122768%_)))
               (_%E122762122827%_
                (lambda ()
                  (if (gx#stx-pair? _%e122761122768%_)
                      (let ((_%e122764122776%_
                             (gx#syntax-e _%e122761122768%_)))
                        (let ((_%hd122765122779%_ (##car _%e122764122776%_))
                              (_%tl122766122781%_ (##cdr _%e122764122776%_)))
                          (let* ((_%origin122784%_ _%hd122765122779%_)
                                 (_%sub122786%_ _%tl122766122781%_))
                            (if '#t
                                (let ((_%origin-ctx122788%_
                                       (if (gx#stx-false? _%origin122784%_)
                                           (gx#current-expander-context)
                                           (gx#import-module__0
                                            _%origin122784%_))))
                                  (let _%lp122790%_ ((_%rest122792%_
                                                      _%sub122786%_)
                                                     (_%ctx122793%_
                                                      _%origin-ctx122788%_))
                                    (let* ((_%e122794122801%_ _%rest122792%_)
                                           (_%E122796122805%_
                                            (lambda () _%ctx122793%_))
                                           (_%E122795122823%_
                                            (lambda ()
                                              (if (gx#stx-pair?
                                                   _%e122794122801%_)
                                                  (let ((_%e122797122809%_
                                                         (gx#syntax-e
                                                          _%e122794122801%_)))
                                                    (let ((_%hd122798122812%_
                                                           (##car _%e122797122809%_))
                                                          (_%tl122799122814%_
                                                           (##cdr _%e122797122809%_)))
                                                      (let* ((_%id122817%_
                                                              _%hd122798122812%_)
                                                             (_%rest122819%_
                                                              _%tl122799122814%_))
                                                        (if '#t
                                                            (let ((_%bind122821%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#resolve-identifier__%
                            _%id122817%_
                            '0
                            _%ctx122793%_)))
                      (if (and (##structure-direct-instance-of?
                                _%bind122821%_
                                'gx#syntax-binding::t)
                               (##structure-instance-of?
                                (##unchecked-structure-ref
                                 _%bind122821%_
                                 '4
                                 '#f
                                 '#f)
                                'gx#module-context::t))
                          '#!void
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; not bound as module"
                           _%where122760%_
                           _%spath122759%_
                           _%id122817%_))
                      (_%lp122790%_
                       _%rest122819%_
                       (##unchecked-structure-ref _%bind122821%_ '4 '#f '#f)))
                    (_%E122796122805%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E122796122805%_)))))
                                      (_%E122795122823%_))))
                                (_%E122763122772%_)))))
                      (_%E122763122772%_)))))
          (_%E122762122827%_))))
    (define gx#core-expand-import-source
      (lambda (_%hd122757%_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _%hd122757%_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_%stx122251%_ _%internal-expand?122252%_)
        (letrec* ((_%make-export__125748125749%_
                   (lambda (_%bind122705%_
                            _%phi122706%_
                            _%ctx122707%_
                            _%name122708%_)
                     (let* ((_%key122710%_
                             (##unchecked-structure-ref
                              _%bind122705%_
                              '2
                              '#f
                              '#f))
                            (_%export-key122712%_
                             (if _%name122708%_
                                 (gx#core-identifier-key _%name122708%_)
                                 _%key122710%_)))
                       (##structure
                        gx#module-export::t
                        _%ctx122707%_
                        _%key122710%_
                        _%phi122706%_
                        _%export-key122712%_
                        (let ((_%$e122715%_
                               (##structure-instance-of?
                                _%bind122705%_
                                'gx#extern-binding::t)))
                          (if _%$e122715%_
                              _%$e122715%_
                              (##structure-direct-instance-of?
                               _%bind122705%_
                               'gx#import-binding::t)))))))
                  (_%make-export__0__125750125753%_
                   (lambda (_%bind122721%_)
                     (let* ((_%phi122723%_ (gx#current-export-expander-phi))
                            (_%ctx122725%_ (gx#current-expander-context))
                            (_%name122727%_ '#f))
                       (_%make-export__125748125749%_
                        _%bind122721%_
                        _%phi122723%_
                        _%ctx122725%_
                        _%name122727%_))))
                  (_%make-export__1__125751125754%_
                   (lambda (_%bind122729%_ _%phi122730%_)
                     (let* ((_%ctx122732%_ (gx#current-expander-context))
                            (_%name122734%_ '#f))
                       (_%make-export__125748125749%_
                        _%bind122729%_
                        _%phi122730%_
                        _%ctx122732%_
                        _%name122734%_))))
                  (_%make-export__2__125752125755%_
                   (lambda (_%bind122736%_ _%phi122737%_ _%ctx122738%_)
                     (let ((_%name122740%_ '#f))
                       (_%make-export__125748125749%_
                        _%bind122736%_
                        _%phi122737%_
                        _%ctx122738%_
                        _%name122740%_))))
                  (_%make-export122254%_
                   (lambda _g125822_
                     (let ((_g125821_ (##length _g125822_)))
                       (cond ((##fx= _g125821_ 1)
                              (apply (lambda (_%bind122721%_)
                                       (_%make-export__0__125750125753%_
                                        _%bind122721%_))
                                     _g125822_))
                             ((##fx= _g125821_ 2)
                              (apply (lambda (_%bind122729%_ _%phi122730%_)
                                       (_%make-export__1__125751125754%_
                                        _%bind122729%_
                                        _%phi122730%_))
                                     _g125822_))
                             ((##fx= _g125821_ 3)
                              (apply (lambda (_%bind122736%_
                                              _%phi122737%_
                                              _%ctx122738%_)
                                       (_%make-export__2__125752125755%_
                                        _%bind122736%_
                                        _%phi122737%_
                                        _%ctx122738%_))
                                     _g125822_))
                             ((##fx= _g125821_ 4)
                              (apply (lambda (_%bind122742%_
                                              _%phi122743%_
                                              _%ctx122744%_
                                              _%name122745%_)
                                       (_%make-export__125748125749%_
                                        _%bind122742%_
                                        _%phi122743%_
                                        _%ctx122744%_
                                        _%name122745%_))
                                     _g125822_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g125822_))))))
                  (_%expand1122255%_
                   (lambda (_%hd122410%_
                            _%K122411%_
                            _%rest122412%_
                            _%r122413%_)
                     (let* ((_%e122414122446%_ _%hd122410%_)
                            (_%E122441122450%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _%stx122251%_
                                _%hd122410%_)))
                            (_%E122431122534%_
                             (lambda ()
                               (if (gx#stx-pair? _%e122414122446%_)
                                   (let ((_%e122442122454%_
                                          (gx#syntax-e _%e122414122446%_)))
                                     (let ((_%hd122443122457%_
                                            (##car _%e122442122454%_))
                                           (_%tl122444122459%_
                                            (##cdr _%e122442122454%_)))
                                       (if (eq? (gx#stx-e _%hd122443122457%_)
                                                'import:)
                                           (let ((_%in122462%_
                                                  _%tl122444122459%_))
                                             (if (gx#stx-list? _%in122462%_)
                                                 (let _%lp122464%_ ((_%in-rest122466%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%in122462%_)
                            (_%r122467%_ _%r122413%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%e122468122475%_
                                                           _%in-rest122466%_)
                                                          (_%E122470122479%_
                                                           (lambda ()
                                                             (_%K122411%_
                                                              _%rest122412%_
                                                              _%r122467%_)))
                                                          (_%E122469122530%_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%e122468122475%_)
                         (let ((_%e122471122483%_
                                (gx#syntax-e _%e122468122475%_)))
                           (let ((_%hd122472122486%_ (##car _%e122471122483%_))
                                 (_%tl122473122488%_
                                  (##cdr _%e122471122483%_)))
                             (let* ((_%hd122491%_ _%hd122472122486%_)
                                    (_%in-rest122493%_ _%tl122473122488%_))
                               (if '#t
                                   (let ((_%src122528%_
                                          (if (gx#core-bound-module?
                                               _%hd122491%_)
                                              (let ()
                                                (gx#syntax-local-e__0
                                                 _%hd122491%_))
                                              (if (gx#core-library-module-path?
                                                   _%hd122491%_)
                                                  (let ()
                                                    (gx#import-module__0
                                                     (gx#core-resolve-library-module-path
                                                      _%hd122491%_)))
                                                  (if (gx#core-library-relative-module-path?
                                                       _%hd122491%_)
                                                      (let ()
                                                        (gx#import-module__0
                                                         (gx#core-resolve-library-relative-module-path
                                                          _%hd122491%_)))
                                                      (if (gx#stx-string?
                                                           _%hd122491%_)
                                                          (let ()
                                                            (gx#import-module__0
                                                             (gx#core-resolve-module-path__%
                                                              _%hd122491%_
                                                              (gx#stx-source
                                                               _%stx122251%_))))
                                                          (let ()
                                                            (let* ((_%e122499122506%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd122491%_)
                           (_%E122501122510%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; illegal re-export"
                               _%stx122251%_
                               _%hd122491%_)))
                           (_%E122500122524%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122499122506%_)
                                  (let ((_%e122502122514%_
                                         (gx#syntax-e _%e122499122506%_)))
                                    (let ((_%hd122503122517%_
                                           (##car _%e122502122514%_))
                                          (_%tl122504122519%_
                                           (##cdr _%e122502122514%_)))
                                      (if (eq? (gx#stx-e _%hd122503122517%_)
                                               'in:)
                                          (let ((_%spath122522%_
                                                 _%tl122504122519%_))
                                            (if '#t
                                                (gx#core-import-nested-module
                                                 _%spath122522%_
                                                 _%stx122251%_)
                                                (_%E122501122510%_)))
                                          (_%E122501122510%_))))
                                  (_%E122501122510%_)))))
                      (_%E122500122524%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%lp122464%_
                                      _%in-rest122493%_
                                      (_%export-imports122256%_
                                       _%src122528%_
                                       _%r122467%_)))
                                   (_%E122470122479%_)))))
                         (_%E122470122479%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E122469122530%_)))
                                                 (_%E122441122450%_)))
                                           (_%E122441122450%_))))
                                   (_%E122441122450%_))))
                            (_%E122418122574%_
                             (lambda ()
                               (if (gx#stx-pair? _%e122414122446%_)
                                   (let ((_%e122432122538%_
                                          (gx#syntax-e _%e122414122446%_)))
                                     (let ((_%hd122433122541%_
                                            (##car _%e122432122538%_))
                                           (_%tl122434122543%_
                                            (##cdr _%e122432122538%_)))
                                       (if (eq? (gx#stx-e _%hd122433122541%_)
                                                'rename:)
                                           (if (gx#stx-pair?
                                                _%tl122434122543%_)
                                               (let ((_%e122435122546%_
                                                      (gx#syntax-e
                                                       _%tl122434122543%_)))
                                                 (let ((_%hd122436122549%_
                                                        (##car _%e122435122546%_))
                                                       (_%tl122437122551%_
                                                        (##cdr _%e122435122546%_)))
                                                   (let ((_%id122554%_
                                                          _%hd122436122549%_))
                                                     (if (gx#stx-pair?
                                                          _%tl122437122551%_)
                                                         (let ((_%e122438122556%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl122437122551%_)))
                   (let ((_%hd122439122559%_ (##car _%e122438122556%_))
                         (_%tl122440122561%_ (##cdr _%e122438122556%_)))
                     (let ((_%name122564%_ _%hd122439122559%_))
                       (if (gx#stx-null? _%tl122440122561%_)
                           (if '#t
                               (let* ((_%phi122566%_
                                       (gx#current-export-expander-phi))
                                      (_%$e122568%_
                                       (gx#core-resolve-identifier__1
                                        _%id122554%_
                                        _%phi122566%_)))
                                 (if _%$e122568%_
                                     ((lambda (_%bind122571%_)
                                        (_%K122411%_
                                         _%rest122412%_
                                         (cons (_%make-export__125748125749%_
                                                _%bind122571%_
                                                _%phi122566%_
                                                (gx#current-expander-context)
                                                _%name122564%_)
                                               _%r122413%_)))
                                      _%$e122568%_)
                                     (let ()
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Reference to unbound identifier"
                                        _%stx122251%_
                                        _%hd122410%_
                                        _%id122554%_))))
                               (_%E122431122534%_))
                           (_%E122431122534%_)))))
                 (_%E122431122534%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E122431122534%_))
                                           (_%E122431122534%_))))
                                   (_%E122431122534%_))))
                            (_%E122417122624%_
                             (lambda ()
                               (if (gx#stx-pair? _%e122414122446%_)
                                   (let ((_%e122419122578%_
                                          (gx#syntax-e _%e122414122446%_)))
                                     (let ((_%hd122420122581%_
                                            (##car _%e122419122578%_))
                                           (_%tl122421122583%_
                                            (##cdr _%e122419122578%_)))
                                       (if (eq? (gx#stx-e _%hd122420122581%_)
                                                'spec:)
                                           (if (gx#stx-pair?
                                                _%tl122421122583%_)
                                               (let ((_%e122422122586%_
                                                      (gx#syntax-e
                                                       _%tl122421122583%_)))
                                                 (let ((_%hd122423122589%_
                                                        (##car _%e122422122586%_))
                                                       (_%tl122424122591%_
                                                        (##cdr _%e122422122586%_)))
                                                   (let ((_%phi122594%_
                                                          _%hd122423122589%_))
                                                     (if (gx#stx-pair?
                                                          _%tl122424122591%_)
                                                         (let ((_%e122425122596%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl122424122591%_)))
                   (let ((_%hd122426122599%_ (##car _%e122425122596%_))
                         (_%tl122427122601%_ (##cdr _%e122425122596%_)))
                     (let ((_%id122604%_ _%hd122426122599%_))
                       (if (gx#stx-pair? _%tl122427122601%_)
                           (let ((_%e122428122606%_
                                  (gx#syntax-e _%tl122427122601%_)))
                             (let ((_%hd122429122609%_
                                    (##car _%e122428122606%_))
                                   (_%tl122430122611%_
                                    (##cdr _%e122428122606%_)))
                               (let ((_%name122614%_ _%hd122429122609%_))
                                 (if (gx#stx-null? _%tl122430122611%_)
                                     (if (and (gx#stx-fixnum? _%phi122594%_)
                                              (gx#identifier? _%id122604%_)
                                              (gx#identifier? _%name122614%_))
                                         (let* ((_%phi122616%_
                                                 (gx#stx-e _%phi122594%_))
                                                (_%$e122618%_
                                                 (gx#core-resolve-identifier__1
                                                  _%id122604%_
                                                  _%phi122616%_)))
                                           (if _%$e122618%_
                                               ((lambda (_%bind122621%_)
                                                  (_%K122411%_
                                                   _%rest122412%_
                                                   (cons (_%make-export__125748125749%_
                                                          _%bind122621%_
                                                          _%phi122616%_
                                                          (gx#current-expander-context)
                                                          _%name122614%_)
                                                         _%r122413%_)))
                                                _%$e122618%_)
                                               (let ()
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Reference to unbound identifier"
                                                  _%stx122251%_
                                                  _%hd122410%_
                                                  _%id122604%_))))
                                         (_%E122418122574%_))
                                     (_%E122418122574%_)))))
                           (_%E122418122574%_)))))
                 (_%E122418122574%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E122418122574%_))
                                           (_%E122418122574%_))))
                                   (_%E122418122574%_))))
                            (_%E122416122636%_
                             (lambda ()
                               (let ((_%id122628%_ _%e122414122446%_))
                                 (if (gx#identifier? _%id122628%_)
                                     (let ((_%$e122630%_
                                            (gx#core-resolve-identifier__1
                                             _%id122628%_
                                             (gx#current-export-expander-phi))))
                                       (if _%$e122630%_
                                           ((lambda (_%bind122633%_)
                                              (_%K122411%_
                                               _%rest122412%_
                                               (cons (_%make-export__0__125750125753%_
                                                      _%bind122633%_)
                                                     _%r122413%_)))
                                            _%$e122630%_)
                                           (let ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Reference to unbound identifier"
                                              _%stx122251%_
                                              _%hd122410%_))))
                                     (_%E122417122624%_)))))
                            (_%E122415122700%_
                             (lambda ()
                               (if (eq? (gx#stx-e _%e122414122446%_) '#t)
                                   (if '#t
                                       (let* ((_%current-ctx122640%_
                                               (gx#current-expander-context))
                                              (_%current-phi122642%_
                                               (gx#current-export-expander-phi))
                                              (_%phi-ctx122644%_
                                               (gx#core-context-shift
                                                _%current-ctx122640%_
                                                _%current-phi122642%_))
                                              (_%phi-bind122646%_
                                               (hash->list
                                                (##unchecked-structure-ref
                                                 _%phi-ctx122644%_
                                                 '2
                                                 '#f
                                                 '#f))))
                                         (let _%lp122649%_ ((_%bind-rest122651%_
                                                             _%phi-bind122646%_)
                                                            (_%set122652%_
                                                             '()))
                                           (let* ((_%bind-rest122653122663%_
                                                   _%bind-rest122651%_)
                                                  (_%else122655122671%_
                                                   (lambda ()
                                                     (_%K122411%_
                                                      _%rest122412%_
                                                      (cons (##structure
                                                             gx#export-set::t
                                                             '#f
                                                             _%current-phi122642%_
                                                             _%set122652%_)
                                                            _%r122413%_))))
                                                  (_%K122657122681%_
                                                   (lambda (_%bind-rest122674%_
                                                            _%bind122675%_
                                                            _%key122676%_)
                                                     (if (or (##structure-direct-instance-of?
                                                              _%bind122675%_
                                                              'gx#import-binding::t)
                                                             (gx#private-feature-binding?
                                                              _%bind122675%_))
                                                         (_%lp122649%_
                                                          _%bind-rest122674%_
                                                          _%set122652%_)
                                                         (_%lp122649%_
                                                          _%bind-rest122674%_
                                                          (cons (_%make-export__2__125752125755%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%bind122675%_
                         _%current-phi122642%_
                         _%current-ctx122640%_)
                        _%set122652%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _%bind-rest122653122663%_)
                                                 (let ((_%hd122658122684%_
                                                        (##car _%bind-rest122653122663%_))
                                                       (_%tl122659122686%_
                                                        (##cdr _%bind-rest122653122663%_)))
                                                   (if (##pair? _%hd122658122684%_)
                                                       (let ((_%hd122660122689%_
                                                              (##car _%hd122658122684%_))
                                                             (_%tl122661122691%_
                                                              (##cdr _%hd122658122684%_)))
                                                         (let* ((_%key122694%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd122660122689%_)
                        (_%bind122696%_ _%tl122661122691%_)
                        (_%bind-rest122698%_ _%tl122659122686%_))
                   (_%K122657122681%_
                    _%bind-rest122698%_
                    _%bind122696%_
                    _%key122694%_)))
               (_%else122655122671%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%else122655122671%_)))))
                                       (_%E122416122636%_))
                                   (_%E122416122636%_)))))
                       (_%E122415122700%_))))
                  (_%export-imports122256%_
                   (lambda (_%src122286%_ _%r122287%_)
                     (letrec* ((_%current-ctx122289%_
                                (gx#current-expander-context))
                               (_%current-phi122290%_
                                (gx#current-export-expander-phi))
                               (_%import->export122291%_
                                (lambda (_%in122372%_)
                                  (let* ((_%in122373122381%_ _%in122372%_)
                                         (_%E122375122385%_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _%in122373122381%_
                                                   '((module-import
                                                      out
                                                      key
                                                      phi)))
                                            '#!void))
                                         (_%K122376122392%_
                                          (lambda (_%phi122388%_
                                                   _%key122389%_
                                                   _%out122390%_)
                                            (##structure
                                             gx#module-export::t
                                             _%current-ctx122289%_
                                             _%key122389%_
                                             _%phi122388%_
                                             _%key122389%_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _%in122373122381%_
                                         'gx#module-import::t)
                                        (let* ((_%e122377122395%_
                                                (##unchecked-structure-ref
                                                 _%in122373122381%_
                                                 '1
                                                 '#f
                                                 '#f))
                                               (_%out122398%_
                                                _%e122377122395%_)
                                               (_%e122378122400%_
                                                (##unchecked-structure-ref
                                                 _%in122373122381%_
                                                 '2
                                                 '#f
                                                 '#f))
                                               (_%key122403%_
                                                _%e122378122400%_)
                                               (_%e122379122405%_
                                                (##unchecked-structure-ref
                                                 _%in122373122381%_
                                                 '3
                                                 '#f
                                                 '#f))
                                               (_%phi122408%_
                                                _%e122379122405%_))
                                          (_%K122376122392%_
                                           _%phi122408%_
                                           _%key122403%_
                                           _%out122398%_))
                                        (_%E122375122385%_)))))
                               (_%fold-e122292%_
                                (lambda (_%in122294%_ _%r122295%_)
                                  (let* ((_%in122296122310%_ _%in122294%_)
                                         (_%else122299122318%_
                                          (lambda () _%r122295%_)))
                                    (let ((_%K122305122354%_
                                           (lambda (_%phi122350%_
                                                    _%key122351%_
                                                    _%out122352%_)
                                             (if (and (fx= _%phi122350%_
                                                           _%current-phi122290%_)
                                                      (eq? _%src122286%_
                                                           (##unchecked-structure-ref
                                                            _%out122352%_
                                                            '1
                                                            '#f
                                                            '#f)))
                                                 (cons (_%import->export122291%_
                                                        _%in122294%_)
                                                       _%r122295%_)
                                                 _%r122295%_)))
                                          (_%K122301122329%_
                                           (lambda (_%imports122322%_
                                                    _%phi122323%_
                                                    _%ctx122324%_)
                                             (if (and (fx= _%phi122323%_
                                                           _%current-phi122290%_)
                                                      (eq? _%src122286%_
                                                           _%ctx122324%_))
                                                 (__foldl1
                                                  (lambda (_%in122326%_
                                                           _%r122327%_)
                                                    (cons (_%import->export122291%_
                                                           _%in122326%_)
                                                          _%r122327%_))
                                                  _%r122295%_
                                                  _%imports122322%_)
                                                 _%r122295%_))))
                                      (let ((_%try-match122298122347%_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _%in122296122310%_
                                                    'gx#import-set::t)
                                                   (let* ((_%e122302122332%_
                                                           (##unchecked-structure-ref
                                                            _%in122296122310%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                          (_%e122303122337%_
                                                           (##unchecked-structure-ref
                                                            _%in122296122310%_
                                                            '2
                                                            '#f
                                                            '#f))
                                                          (_%e122304122342%_
                                                           (##unchecked-structure-ref
                                                            _%in122296122310%_
                                                            '3
                                                            '#f
                                                            '#f)))
                                                     (let ((_%ctx122335%_
                                                            _%e122302122332%_)
                                                           (_%phi122340%_
                                                            _%e122303122337%_)
                                                           (_%imports122345%_
                                                            _%e122304122342%_))
                                                       (_%K122301122329%_
                                                        _%imports122345%_
                                                        _%phi122340%_
                                                        _%ctx122335%_)))
                                                   (_%else122299122318%_)))))
                                        (if (##structure-direct-instance-of?
                                             _%in122296122310%_
                                             'gx#module-import::t)
                                            (let* ((_%e122306122357%_
                                                    (##unchecked-structure-ref
                                                     _%in122296122310%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                   (_%e122307122362%_
                                                    (##unchecked-structure-ref
                                                     _%in122296122310%_
                                                     '2
                                                     '#f
                                                     '#f))
                                                   (_%e122308122367%_
                                                    (##unchecked-structure-ref
                                                     _%in122296122310%_
                                                     '3
                                                     '#f
                                                     '#f)))
                                              (let ((_%out122360%_
                                                     _%e122306122357%_)
                                                    (_%key122365%_
                                                     _%e122307122362%_)
                                                    (_%phi122370%_
                                                     _%e122308122367%_))
                                                (_%K122305122354%_
                                                 _%phi122370%_
                                                 _%key122365%_
                                                 _%out122360%_)))
                                            (_%try-match122298122347%_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _%src122286%_
                              _%current-phi122290%_
                              (__foldl1
                               _%fold-e122292%_
                               '()
                               (##unchecked-structure-ref
                                _%current-ctx122289%_
                                '8
                                '#f
                                '#f)))
                             _%r122287%_))))
                  (_%export!122257%_
                   (lambda (_%rbody122273%_)
                     (letrec* ((_%current-ctx122275%_
                                (gx#current-expander-context))
                               (_%fold-e122276%_
                                (lambda (_%out122280%_ _%r122281%_)
                                  (if (##structure-direct-instance-of?
                                       _%out122280%_
                                       'gx#module-export::t)
                                      (let () (cons _%out122280%_ _%r122281%_))
                                      (if (##structure-direct-instance-of?
                                           _%out122280%_
                                           'gx#export-set::t)
                                          (let ()
                                            (__foldl1
                                             cons
                                             _%r122281%_
                                             (##unchecked-structure-ref
                                              _%out122280%_
                                              '3
                                              '#f
                                              '#f)))
                                          (let () _%r122281%_))))))
                       (let ((_%body122278%_ (reverse _%rbody122273%_)))
                         (##unchecked-structure-set!
                          _%current-ctx122275%_
                          (__foldl1
                           _%fold-e122276%_
                           (##unchecked-structure-ref
                            _%current-ctx122275%_
                            '9
                            '#f
                            '#f)
                           _%body122278%_)
                          '9
                          '#f
                          '#f)
                         _%body122278%_))))
                  (_%expanded-export?122258%_
                   (lambda (_%e122268%_)
                     (let ((_%$e122270%_
                            (##structure-direct-instance-of?
                             _%e122268%_
                             'gx#module-export::t)))
                       (if _%$e122270%_
                           _%$e122270%_
                           (##structure-direct-instance-of?
                            _%e122268%_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _%internal-expand?122252%_)
              (let ((_%rbody122264%_
                     (gx#core-expand-import/export
                      _%stx122251%_
                      _%expanded-export?122258%_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _%expand1122255%_)))
                (if _%internal-expand?122252%_
                    (reverse _%rbody122264%_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons
                      '%#export
                      (_%export!122257%_ _%rbody122264%_))
                     (gx#stx-source _%stx122251%_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (let ()
                    (gx#core-quote-syntax__1
                     (gx#core-cons '%#begin '())
                     (gx#stx-source _%stx122251%_)))
                  (let ()
                    (gx#raise-syntax-error
                     '#f
                     '"Illegal context"
                     _%stx122251%_)))))))
    (define gx#core-expand-export%__0
      (lambda (_%stx122750%_)
        (let ((_%internal-expand?122752%_ '#f))
          (gx#core-expand-export%__%
           _%stx122750%_
           _%internal-expand?122752%_))))
    (define gx#core-expand-export%
      (lambda _g125824_
        (let ((_g125823_ (##length _g125824_)))
          (cond ((##fx= _g125823_ 1)
                 (apply (lambda (_%stx122750%_)
                          (gx#core-expand-export%__0 _%stx122750%_))
                        _g125824_))
                ((##fx= _g125823_ 2)
                 (apply (lambda (_%stx122754%_ _%internal-expand?122755%_)
                          (gx#core-expand-export%__%
                           _%stx122754%_
                           _%internal-expand?122755%_))
                        _g125824_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g125824_))))))
    (define gx#core-expand-export-source
      (lambda (_%hd122248%_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _%hd122248%_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_%stx122218%_)
        (let* ((_%e122219122226%_ _%stx122218%_)
               (_%E122221122230%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122219122226%_)))
               (_%E122220122244%_
                (lambda ()
                  (if (gx#stx-pair? _%e122219122226%_)
                      (let ((_%e122222122234%_
                             (gx#syntax-e _%e122219122226%_)))
                        (let ((_%hd122223122237%_ (##car _%e122222122234%_))
                              (_%tl122224122239%_ (##cdr _%e122222122234%_)))
                          (let ((_%body122242%_ _%tl122224122239%_))
                            (if (gx#identifier-list? _%body122242%_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _%body122242%_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _%body122242%_))
                                   (gx#stx-source _%stx122218%_)))
                                (_%E122221122230%_)))))
                      (_%E122221122230%_)))))
          (_%E122220122244%_))))
    (define gx#core-bind-feature!__%
      (lambda (_%id122184%_ _%private?122185%_ _%phi122186%_ _%ctx122187%_)
        (gx#core-bind-syntax!__%
         _%id122184%_
         ((if _%private?122185%_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _%id122184%_))
         _%private?122185%_
         _%phi122186%_
         _%ctx122187%_)))
    (define gx#core-bind-feature!__0
      (lambda (_%id122192%_)
        (let* ((_%private?122194%_ '#f)
               (_%phi122196%_ (gx#current-expander-phi))
               (_%ctx122198%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id122192%_
           _%private?122194%_
           _%phi122196%_
           _%ctx122198%_))))
    (define gx#core-bind-feature!__1
      (lambda (_%id122200%_ _%private?122201%_)
        (let* ((_%phi122203%_ (gx#current-expander-phi))
               (_%ctx122205%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id122200%_
           _%private?122201%_
           _%phi122203%_
           _%ctx122205%_))))
    (define gx#core-bind-feature!__2
      (lambda (_%id122207%_ _%private?122208%_ _%phi122209%_)
        (let ((_%ctx122211%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id122207%_
           _%private?122208%_
           _%phi122209%_
           _%ctx122211%_))))
    (define gx#core-bind-feature!
      (lambda _g125826_
        (let ((_g125825_ (##length _g125826_)))
          (cond ((##fx= _g125825_ 1)
                 (apply (lambda (_%id122192%_)
                          (gx#core-bind-feature!__0 _%id122192%_))
                        _g125826_))
                ((##fx= _g125825_ 2)
                 (apply (lambda (_%id122200%_ _%private?122201%_)
                          (gx#core-bind-feature!__1
                           _%id122200%_
                           _%private?122201%_))
                        _g125826_))
                ((##fx= _g125825_ 3)
                 (apply (lambda (_%id122207%_ _%private?122208%_ _%phi122209%_)
                          (gx#core-bind-feature!__2
                           _%id122207%_
                           _%private?122208%_
                           _%phi122209%_))
                        _g125826_))
                ((##fx= _g125825_ 4)
                 (apply (lambda (_%id122213%_
                                 _%private?122214%_
                                 _%phi122215%_
                                 _%ctx122216%_)
                          (gx#core-bind-feature!__%
                           _%id122213%_
                           _%private?122214%_
                           _%phi122215%_
                           _%ctx122216%_))
                        _g125826_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g125826_))))))))
