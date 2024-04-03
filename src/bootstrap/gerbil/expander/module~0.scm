(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1712146027)
  (begin
    (declare (not safe))
    (define gx#__module-registry (make-hash-table))
    (define gx#__module-pkg-cache (make-hash-table))
    (define gx#module-import::t
      (make-class-type
       'gx#module-import::t
       'module-import
       (list)
       '(source name phi weak?)
       (cons (cons 'struct: '#t)
             (cons (cons 'final: '#t) '((print: source name phi weak?))))
       '#f))
    (define gx#module-import? (__make-class-predicate gx#module-import::t))
    (define gx#make-module-import
      (lambda _%$args125140%_
        (apply make-instance gx#module-import::t _%$args125140%_)))
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
      (make-class-type
       'gx#module-export::t
       'module-export
       (list)
       '(context key phi name weak?)
       (cons (cons 'struct: '#t)
             (cons (cons 'final: '#t) '((transparent: . #t))))
       '#f))
    (define gx#module-export? (__make-class-predicate gx#module-export::t))
    (define gx#make-module-export
      (lambda _%$args125137%_
        (apply make-instance gx#module-export::t _%$args125137%_)))
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
      (make-class-type
       'gx#import-set::t
       'import-set
       (list)
       '(source phi imports)
       (cons (cons 'struct: '#t)
             (cons (cons 'final: '#t) '((print: source phi))))
       '#f))
    (define gx#import-set? (__make-class-predicate gx#import-set::t))
    (define gx#make-import-set
      (lambda _%$args125134%_
        (apply make-instance gx#import-set::t _%$args125134%_)))
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
      (make-class-type
       'gx#export-set::t
       'export-set
       (list)
       '(source phi exports)
       (cons (cons 'struct: '#t)
             (cons (cons 'final: '#t) '((print: source phi))))
       '#f))
    (define gx#export-set? (__make-class-predicate gx#export-set::t))
    (define gx#make-export-set
      (lambda _%$args125131%_
        (apply make-instance gx#export-set::t _%$args125131%_)))
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
      (make-class-type
       'gx#import-expander::t
       'import-expander
       (list gx#user-expander::t)
       '()
       '()
       ':init!))
    (define gx#import-expander? (__make-class-predicate gx#import-expander::t))
    (define gx#make-import-expander
      (lambda _%$args125128%_
        (apply make-instance gx#import-expander::t _%$args125128%_)))
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
      (make-class-type
       'gx#export-expander::t
       'export-expander
       (list gx#user-expander::t)
       '()
       '()
       ':init!))
    (define gx#export-expander? (__make-class-predicate gx#export-expander::t))
    (define gx#make-export-expander
      (lambda _%$args125125%_
        (apply make-instance gx#export-expander::t _%$args125125%_)))
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
      (make-class-type
       'gx#import-export-expander::t
       'import-export-expander
       (list gx#import-expander::t gx#export-expander::t)
       '()
       '()
       ':init!))
    (define gx#import-export-expander?
      (__make-class-predicate gx#import-export-expander::t))
    (define gx#make-import-export-expander
      (lambda _%$args125122%_
        (apply make-instance gx#import-export-expander::t _%$args125122%_)))
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
      (lambda (_%path125119%_ _%fun125120%_)
        (call-with-input-file
         (cons 'path: (cons _%path125119%_ gx#source-file-settings))
         _%fun125120%_)))
    (define gx#module-context:::init!
      (lambda (_%self125102%_
               _%id125103%_
               _%super125104%_
               _%ns125105%_
               _%path125106%_)
        (let ((_%self125109%_ _%self125102%_))
          (if (##fx< '11 (##structure-length _%self125109%_))
              (begin
                (##unchecked-structure-set!
                 _%self125109%_
                 _%id125103%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self125109%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self125109%_
                 _%super125104%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self125109%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self125109%_ '#f '5 '#f '#f)
                (##unchecked-structure-set!
                 _%self125109%_
                 _%ns125105%_
                 '6
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self125109%_
                 _%path125106%_
                 '7
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self125109%_ '() '8 '#f '#f)
                (##unchecked-structure-set! _%self125109%_ '() '9 '#f '#f)
                (##unchecked-structure-set! _%self125109%_ '#f '10 '#f '#f)
                (##unchecked-structure-set! _%self125109%_ '#f '11 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self125109%_
                     '11
                     (##vector-length _%self125109%_))))))
    (__bind-method! gx#module-context::t ':init! gx#module-context:::init! '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_%self124935%_ _%ctx124936%_ _%root124937%_)
        (let ()
          (let* ((_%self124940%_ _%self124935%_)
                 (_%super124956%_
                  (let ((_%$e124950%_ _%root124937%_))
                    (if _%$e124950%_
                        _%$e124950%_
                        (let ((_%$e124953%_ (gx#core-context-root__0)))
                          (if _%$e124953%_
                              _%$e124953%_
                              (let ((__obj125184
                                     (##structure gx#root-context::t '#f '#f)))
                                (let ((__constructor125185
                                       (direct-method-ref
                                        gx#root-context::t
                                        __obj125184
                                        ':init!)))
                                  (if __constructor125185
                                      (__constructor125185 __obj125184)
                                      (error '"missing constructor method implementation"
                                             'class:
                                             gx#root-context::t
                                             'method:
                                             ':init!)))
                                __obj125184)))))))
            (if _%ctx124936%_
                (let ((_%id124959%_
                       (##structure-ref
                        _%ctx124936%_
                        '1
                        gx#expander-context::t
                        '#f))
                      (_%path124960%_
                       (##structure-ref
                        _%ctx124936%_
                        '7
                        gx#module-context::t
                        '#f))
                      (_%in124961%_
                       (map gx#core-module-export->import
                            (##structure-ref
                             _%ctx124936%_
                             '9
                             gx#module-context::t
                             '#f)))
                      (_%e124962%_
                       (__make-promise
                        (lambda () (gx#eval-module _%ctx124936%_)))))
                  (if (##fx< '8 (##structure-length _%self124940%_))
                      (begin
                        (##unchecked-structure-set!
                         _%self124940%_
                         _%id124959%_
                         '1
                         '#f
                         '#f)
                        (##unchecked-structure-set!
                         _%self124940%_
                         (make-hash-table-eq 'size: (##length _%in124961%_))
                         '2
                         '#f
                         '#f)
                        (##unchecked-structure-set!
                         _%self124940%_
                         _%super124956%_
                         '3
                         '#f
                         '#f)
                        (##unchecked-structure-set!
                         _%self124940%_
                         '#f
                         '4
                         '#f
                         '#f)
                        (##unchecked-structure-set!
                         _%self124940%_
                         '#f
                         '5
                         '#f
                         '#f)
                        (##unchecked-structure-set!
                         _%self124940%_
                         _%path124960%_
                         '6
                         '#f
                         '#f)
                        (##unchecked-structure-set!
                         _%self124940%_
                         _%in124961%_
                         '7
                         '#f
                         '#f)
                        (##unchecked-structure-set!
                         _%self124940%_
                         _%e124962%_
                         '8
                         '#f
                         '#f)
                        '#!void)
                      (error '"struct-instance-init!: too many arguments for struct"
                             _%self124940%_
                             '8
                             (##vector-length _%self124940%_)))
                  (##for-each
                   (lambda (_%g124963124965%_)
                     (gx#core-bind-weak-import!__%
                      _%g124963124965%_
                      _%self124940%_))
                   _%in124961%_))
                (if (##fx< '8 (##structure-length _%self124940%_))
                    (begin
                      (##unchecked-structure-set!
                       _%self124940%_
                       '#f
                       '1
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self124940%_
                       (make-hash-table-eq)
                       '2
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self124940%_
                       _%super124956%_
                       '3
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self124940%_
                       '#f
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self124940%_
                       '#f
                       '5
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self124940%_
                       '#f
                       '6
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self124940%_
                       '()
                       '7
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self124940%_
                       '#f
                       '8
                       '#f
                       '#f)
                      '#!void)
                    (error '"struct-instance-init!: too many arguments for struct"
                           _%self124940%_
                           '8
                           (##vector-length _%self124940%_))))))))
    (define gx#prelude-context:::init!__0
      (lambda (_%self124971%_ _%ctx124972%_)
        (let ((_%root124974%_ '#f))
          (gx#prelude-context:::init!__%
           _%self124971%_
           _%ctx124972%_
           _%root124974%_))))
    (define gx#prelude-context:::init!
      (lambda _g125191_
        (let ((_g125190_ (##length _g125191_)))
          (cond ((##fx= _g125190_ 2)
                 (apply (lambda (_%self124971%_ _%ctx124972%_)
                          (gx#prelude-context:::init!__0
                           _%self124971%_
                           _%ctx124972%_))
                        _g125191_))
                ((##fx= _g125190_ 3)
                 (apply (lambda (_%self124976%_ _%ctx124977%_ _%root124978%_)
                          (gx#prelude-context:::init!__%
                           _%self124976%_
                           _%ctx124977%_
                           _%root124978%_))
                        _g125191_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g125191_))))))
    (__bind-method!
     gx#prelude-context::t
     ':init!
     gx#prelude-context:::init!
     '#f)
    (define gx#import-export-expander-init!
      (lambda (_%self124809%_ _%e124810%_)
        (if (##fx< '3 (##structure-length _%self124809%_))
            (begin
              (##unchecked-structure-set!
               _%self124809%_
               _%e124810%_
               '1
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self124809%_
               (gx#current-expander-context)
               '2
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self124809%_
               (##fx- (gx#current-expander-phi) '1)
               '3
               '#f
               '#f)
              '#!void)
            (error '"struct-instance-init!: too many arguments for struct"
                   _%self124809%_
                   '3
                   (##vector-length _%self124809%_)))))
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
      (lambda (_%g124435124438%_ _%g124436124440%_)
        (gx#core-apply-user-expander__%
         _%g124435124438%_
         _%g124436124440%_
         'apply-import-expander)))
    (__bind-method!
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_%g124306124309%_ _%g124307124311%_)
        (gx#core-apply-user-expander__%
         _%g124306124309%_
         _%g124307124311%_
         'apply-export-expander)))
    (__bind-method!
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_%ctx124177%_)
        (let* ((_%path124179%_
                (##structure-ref _%ctx124177%_ '7 gx#module-context::t '#f))
               (_%path124181%_
                (if (pair? _%path124179%_)
                    (last _%path124179%_)
                    _%path124179%_)))
          (if (string? _%path124181%_) _%path124181%_ '#f))))
    (define gx#import-module__%
      (lambda (_%path124153%_ _%reload?124154%_ _%eval?124155%_)
        (let ((_%ctx124157%_
               ((gx#current-expander-module-import)
                _%path124153%_
                _%reload?124154%_)))
          (if (and _%ctx124157%_ _%eval?124155%_)
              (gx#eval-module _%ctx124157%_)
              '#!void)
          _%ctx124157%_)))
    (define gx#import-module__0
      (lambda (_%path124162%_)
        (let* ((_%reload?124164%_ '#f) (_%eval?124166%_ '#f))
          (gx#import-module__%
           _%path124162%_
           _%reload?124164%_
           _%eval?124166%_))))
    (define gx#import-module__1
      (lambda (_%path124168%_ _%reload?124169%_)
        (let ((_%eval?124171%_ '#f))
          (gx#import-module__%
           _%path124168%_
           _%reload?124169%_
           _%eval?124171%_))))
    (define gx#import-module
      (lambda _g125193_
        (let ((_g125192_ (##length _g125193_)))
          (cond ((##fx= _g125192_ 1)
                 (apply (lambda (_%path124162%_)
                          (gx#import-module__0 _%path124162%_))
                        _g125193_))
                ((##fx= _g125192_ 2)
                 (apply (lambda (_%path124168%_ _%reload?124169%_)
                          (gx#import-module__1
                           _%path124168%_
                           _%reload?124169%_))
                        _g125193_))
                ((##fx= _g125192_ 3)
                 (apply (lambda (_%path124173%_
                                 _%reload?124174%_
                                 _%eval?124175%_)
                          (gx#import-module__%
                           _%path124173%_
                           _%reload?124174%_
                           _%eval?124175%_))
                        _g125193_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g125193_))))))
    (define gx#eval-module
      (lambda (_%mod124150%_)
        ((gx#current-expander-module-eval) _%mod124150%_)))
    (define gx#core-eval-module
      (lambda (_%obj124130%_)
        (letrec ((_%force-e124132%_
                  (lambda (_%getf124146%_ _%e124147%_)
                    (__call-with-parameters
                     (lambda () (force (_%getf124146%_ _%e124147%_)))
                     gx#current-expander-context
                     _%e124147%_
                     gx#current-expander-phi
                     '0))))
          (let _%recur124134%_ ((_%e124136%_ _%obj124130%_))
            (if (##structure-instance-of? _%e124136%_ 'gx#module-context::t)
                (let ()
                  (let ((_%$e124139%_
                         (gx#core-context-prelude__% _%e124136%_)))
                    (if _%$e124139%_ (_%recur124134%_ _%$e124139%_) '#!void))
                  (_%force-e124132%_ gx#module-context-e _%e124136%_))
                (if (##structure-instance-of?
                     _%e124136%_
                     'gx#prelude-context::t)
                    (let ()
                      (_%force-e124132%_ gx#prelude-context-e _%e124136%_))
                    (if (gx#stx-string? _%e124136%_)
                        (let ()
                          (_%recur124134%_
                           (gx#import-module__0
                            (gx#core-resolve-module-path__0 _%e124136%_))))
                        (if (gx#core-library-module-path? _%e124136%_)
                            (let ()
                              (_%recur124134%_
                               (gx#import-module__0
                                (gx#core-resolve-library-module-path
                                 _%e124136%_))))
                            (let ()
                              (error '"cannot eval module"
                                     _%obj124130%_))))))))))
    (define gx#core-context-prelude__%
      (lambda (_%ctx124110%_)
        (let _%lp124112%_ ((_%e124114%_ _%ctx124110%_))
          (if (or (##structure-instance-of? _%e124114%_ 'gx#module-context::t)
                  (##structure-instance-of? _%e124114%_ 'gx#local-context::t))
              (let ()
                (_%lp124112%_
                 (##unchecked-structure-ref _%e124114%_ '3 '#f '#f)))
              (if (##structure-instance-of? _%e124114%_ 'gx#prelude-context::t)
                  (let () _%e124114%_)
                  (let () '#f))))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_%ctx124126%_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _%ctx124126%_))))
    (define gx#core-context-prelude
      (lambda _g125195_
        (let ((_g125194_ (##length _g125195_)))
          (cond ((##fx= _g125194_ 0)
                 (apply (lambda () (gx#core-context-prelude__0)) _g125195_))
                ((##fx= _g125194_ 1)
                 (apply (lambda (_%ctx124128%_)
                          (gx#core-context-prelude__% _%ctx124128%_))
                        _g125195_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g125195_))))))
    (define gx#core-module->prelude-context
      (lambda (_%ctx124101%_)
        (let ((_%$e124103%_ (hash-get gx#__module-registry _%ctx124101%_)))
          (if _%$e124103%_
              _%$e124103%_
              (let ((_%pre124107%_
                     (let ((__obj125186
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
                       (gx#prelude-context:::init! __obj125186 _%ctx124101%_)
                       __obj125186)))
                (hash-put! gx#__module-registry _%ctx124101%_ _%pre124107%_)
                _%pre124107%_)))))
    (define gx#core-import-module__%
      (lambda (_%rpath123973%_ _%reload?123974%_)
        (letrec ((_%import-source123976%_
                  (lambda (_%path124065%_)
                    (if (member _%path124065%_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _%path124065%_)
                        '#!void)
                    (__call-with-parameters
                     (lambda ()
                       (let ((_g125196_ (gx#core-read-module _%path124065%_)))
                         (begin
                           (let ((_g125197_
                                  (if (##values? _g125196_)
                                      (##vector-length _g125196_)
                                      1)))
                             (if (not (##fx= _g125197_ 4))
                                 (error "Context expects 4 values" _g125197_)))
                           (let ((_%pre124068%_ (##vector-ref _g125196_ 0))
                                 (_%id124069%_ (##vector-ref _g125196_ 1))
                                 (_%ns124070%_ (##vector-ref _g125196_ 2))
                                 (_%body124071%_ (##vector-ref _g125196_ 3)))
                             (let* ((_%prelude124081%_
                                     (if (##structure-instance-of?
                                          _%pre124068%_
                                          'gx#prelude-context::t)
                                         (let () _%pre124068%_)
                                         (if (##structure-instance-of?
                                              _%pre124068%_
                                              'gx#module-context::t)
                                             (let ()
                                               (gx#core-module->prelude-context
                                                _%pre124068%_))
                                             (if (string? _%pre124068%_)
                                                 (let ()
                                                   (gx#core-module->prelude-context
                                                    (gx#core-import-module__0
                                                     _%pre124068%_)))
                                                 (if (not _%pre124068%_)
                                                     (let ((_%$e124077%_
                                                            (gx#current-expander-module-prelude)))
                                                       (if _%$e124077%_
                                                           _%$e124077%_
                                                           (let ((__obj125187
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
                     (gx#prelude-context:::init! __obj125187 '#f)
                     __obj125187)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (error '"cannot import module; unknown prelude"
                                                              _%rpath123973%_
                                                              _%pre124068%_)))))))
                                    (_%ctx124083%_
                                     (let ((__obj125188
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
                                        __obj125188
                                        _%id124069%_
                                        _%prelude124081%_
                                        _%ns124070%_
                                        _%path124065%_)
                                       __obj125188))
                                    (_%body124085%_
                                     (gx#core-expand-module-begin
                                      _%body124071%_
                                      _%ctx124083%_))
                                    (_%body124087%_
                                     (gx#core-quote-syntax__%
                                      (gx#core-cons '%#begin _%body124085%_)
                                      _%path124065%_
                                      _%ctx124083%_
                                      '())))
                               (##unchecked-structure-set!
                                _%ctx124083%_
                                (__make-promise
                                 (lambda () (gx#eval-syntax* _%body124087%_)))
                                '10
                                '#f
                                '#f)
                               (##unchecked-structure-set!
                                _%ctx124083%_
                                _%body124087%_
                                '11
                                '#f
                                '#f)
                               (hash-put!
                                gx#__module-registry
                                _%path124065%_
                                _%ctx124083%_)
                               (hash-put!
                                gx#__module-registry
                                _%id124069%_
                                _%ctx124083%_)
                               _%ctx124083%_)))))
                     gx#current-expander-context
                     (gx#core-context-root__0)
                     gx#current-expander-marks
                     '()
                     gx#current-expander-phi
                     '0
                     gx#current-expander-path
                     (cons _%path124065%_ (gx#current-expander-path))
                     gx#current-import-expander-phi
                     '#f
                     gx#current-export-expander-phi
                     '#f)))
                 (_%import-submodule123977%_
                  (lambda (_%rpath123993%_)
                    (let* ((_%rpath123994124001%_ _%rpath123993%_)
                           (_%E123996124005%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%rpath123994124001%_
                                     '([origin . refs]))
                              '#!void))
                           (_%K123997124053%_
                            (lambda (_%refs124008%_ _%origin124009%_)
                              (let ((_%ctx124011%_
                                     (if _%origin124009%_
                                         (gx#core-import-module__%
                                          _%origin124009%_
                                          _%reload?123974%_)
                                         (gx#current-expander-context))))
                                (let _%lp124013%_ ((_%rest124015%_
                                                    _%refs124008%_)
                                                   (_%ctx124016%_
                                                    _%ctx124011%_))
                                  (let* ((_%rest124017124025%_ _%rest124015%_)
                                         (_%else124019124033%_
                                          (lambda () _%ctx124016%_))
                                         (_%K124021124041%_
                                          (lambda (_%rest124036%_ _%id124037%_)
                                            (let ((_%bind124039%_
                                                   (gx#resolve-identifier__%
                                                    _%id124037%_
                                                    '0
                                                    _%ctx124016%_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _%bind124039%_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _%bind124039%_
                                                         '4
                                                         '#f
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_%lp124013%_
                                                   _%rest124036%_
                                                   (##unchecked-structure-ref
                                                    _%bind124039%_
                                                    '4
                                                    '#f
                                                    '#f))
                                                  (error '"cannot import submodule; not bound as a module"
                                                         _%rpath123993%_
                                                         _%id124037%_
                                                         _%bind124039%_))))))
                                    (if (##pair? _%rest124017124025%_)
                                        (let ((_%hd124022124044%_
                                               (##car _%rest124017124025%_))
                                              (_%tl124023124046%_
                                               (##cdr _%rest124017124025%_)))
                                          (let* ((_%id124049%_
                                                  _%hd124022124044%_)
                                                 (_%rest124051%_
                                                  _%tl124023124046%_))
                                            (_%K124021124041%_
                                             _%rest124051%_
                                             _%id124049%_)))
                                        (_%else124019124033%_))))))))
                      (if (##pair? _%rpath123994124001%_)
                          (let ((_%hd123998124056%_
                                 (##car _%rpath123994124001%_))
                                (_%tl123999124058%_
                                 (##cdr _%rpath123994124001%_)))
                            (let* ((_%origin124061%_ _%hd123998124056%_)
                                   (_%refs124063%_ _%tl123999124058%_))
                              (_%K123997124053%_
                               _%refs124063%_
                               _%origin124061%_)))
                          (_%E123996124005%_))))))
          (let ((_%$e123979%_
                 (if (not _%reload?123974%_)
                     (hash-get gx#__module-registry _%rpath123973%_)
                     '#f)))
            (if _%$e123979%_
                _%$e123979%_
                (if (list? _%rpath123973%_)
                    (let () (_%import-submodule123977%_ _%rpath123973%_))
                    (if (gx#core-library-module-path? _%rpath123973%_)
                        (let ((_%ctx123984%_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _%rpath123973%_)
                                _%reload?123974%_)))
                          (hash-put!
                           gx#__module-registry
                           _%rpath123973%_
                           _%ctx123984%_)
                          _%ctx123984%_)
                        (let ()
                          (let* ((_%npath123987%_
                                  (path-normalize _%rpath123973%_))
                                 (_%$e123989%_
                                  (if (not _%reload?123974%_)
                                      (hash-get
                                       gx#__module-registry
                                       _%npath123987%_)
                                      '#f)))
                            (if _%$e123989%_
                                _%$e123989%_
                                (let ()
                                  (_%import-source123976%_
                                   _%npath123987%_))))))))))))
    (define gx#core-import-module__0
      (lambda (_%rpath124094%_)
        (let ((_%reload?124096%_ '#f))
          (gx#core-import-module__% _%rpath124094%_ _%reload?124096%_))))
    (define gx#core-import-module
      (lambda _g125199_
        (let ((_g125198_ (##length _g125199_)))
          (cond ((##fx= _g125198_ 1)
                 (apply (lambda (_%rpath124094%_)
                          (gx#core-import-module__0 _%rpath124094%_))
                        _g125199_))
                ((##fx= _g125198_ 2)
                 (apply (lambda (_%rpath124098%_ _%reload?124099%_)
                          (gx#core-import-module__%
                           _%rpath124098%_
                           _%reload?124099%_))
                        _g125199_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g125199_))))))
    (define gx#core-read-module
      (lambda (_%path123962%_)
        (__with-catch
         (lambda (_%exn123964%_)
           (if (and (datum-parsing-exception? _%exn123964%_)
                    (eq? (datum-parsing-exception-filepos _%exn123964%_) '0))
               (gx#core-read-module/lang _%path123962%_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _%path123962%_
                (__call-with-parameters
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_%g123966123968%_)
                      (display-exception _%exn123964%_ _%g123966123968%_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _%path123962%_)))))
    (define gx#core-read-module/sexp
      (lambda (_%path123814%_)
        (let _%lp123816%_ ((_%body123818%_
                            (read-syntax-from-file _%path123814%_))
                           (_%pre123819%_ '#f)
                           (_%ns123820%_ '#f)
                           (_%pkg123821%_ '#f))
          (let* ((_%e123822123846%_ _%body123818%_)
                 (_%E123838123872%_
                  (lambda ()
                    (let ((_g125200_
                           (if _%pkg123821%_
                               (values _%pre123819%_
                                       _%ns123820%_
                                       _%pkg123821%_)
                               (gx#core-read-module-package
                                _%path123814%_
                                _%pre123819%_
                                _%ns123820%_))))
                      (begin
                        (let ((_g125201_
                               (if (##values? _g125200_)
                                   (##vector-length _g125200_)
                                   1)))
                          (if (not (##fx= _g125201_ 3))
                              (error "Context expects 3 values" _g125201_)))
                        (let ((_%pre123850%_ (##vector-ref _g125200_ 0))
                              (_%ns123851%_ (##vector-ref _g125200_ 1))
                              (_%pkg123852%_ (##vector-ref _g125200_ 2)))
                          (let* ((_%prelude123858%_
                                  (if (gx#core-bound-module-prelude?
                                       _%pre123850%_)
                                      (let ()
                                        (gx#syntax-local-e__0 _%pre123850%_))
                                      (if (gx#core-library-module-path?
                                           _%pre123850%_)
                                          (let ()
                                            (gx#core-resolve-library-module-path
                                             _%pre123850%_))
                                          (if (gx#stx-string? _%pre123850%_)
                                              (let ()
                                                (gx#core-resolve-module-path__%
                                                 _%pre123850%_
                                                 _%path123814%_))
                                              (let ()
                                                (gx#stx-e _%pre123850%_))))))
                                 (_%path-id123860%_
                                  (gx#core-module-path->namespace
                                   _%path123814%_))
                                 (_%pkg-id123862%_
                                  (if _%pkg123852%_
                                      (string-append
                                       _%pkg123852%_
                                       '"/"
                                       _%path-id123860%_)
                                      _%path-id123860%_))
                                 (_%module-id123864%_
                                  (string->symbol _%pkg-id123862%_))
                                 (_%module-ns123869%_
                                  (if (eq? _%ns123851%_ '#!void)
                                      '#f
                                      (let ((_%$e123866%_ _%ns123851%_))
                                        (if _%$e123866%_
                                            _%$e123866%_
                                            _%pkg-id123862%_)))))
                            (values _%prelude123858%_
                                    _%module-id123864%_
                                    _%module-ns123869%_
                                    _%body123818%_)))))))
                 (_%E123831123904%_
                  (lambda ()
                    (if (gx#stx-pair? _%e123822123846%_)
                        (let ((_%e123839123876%_
                               (gx#syntax-e _%e123822123846%_)))
                          (let ((_%hd123840123879%_ (##car _%e123839123876%_))
                                (_%tl123841123881%_ (##cdr _%e123839123876%_)))
                            (if (eq? (gx#stx-e _%hd123840123879%_) 'package:)
                                (if (gx#stx-pair? _%tl123841123881%_)
                                    (let ((_%e123842123884%_
                                           (gx#syntax-e _%tl123841123881%_)))
                                      (let ((_%hd123843123887%_
                                             (##car _%e123842123884%_))
                                            (_%tl123844123889%_
                                             (##cdr _%e123842123884%_)))
                                        (let* ((_%pkg123892%_
                                                _%hd123843123887%_)
                                               (_%rest123894%_
                                                _%tl123844123889%_))
                                          (if '#t
                                              (let ((_%pkg123902%_
                                                     (if (gx#identifier?
                                                          _%pkg123892%_)
                                                         (let ()
                                                           (symbol->string
                                                            (gx#stx-e
                                                             _%pkg123892%_)))
                                                         (if (or (gx#stx-string?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%pkg123892%_)
                         (gx#stx-false? _%pkg123892%_))
                     (let () (gx#stx-e _%pkg123892%_))
                     (let ()
                       (gx#raise-syntax-error
                        'import
                        '"Bad syntax; Illegal package name"
                        _%pkg123892%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%lp123816%_
                                                 _%rest123894%_
                                                 _%pre123819%_
                                                 _%ns123820%_
                                                 _%pkg123902%_))
                                              (_%E123838123872%_)))))
                                    (_%E123838123872%_))
                                (_%E123838123872%_))))
                        (_%E123838123872%_))))
                 (_%E123824123934%_
                  (lambda ()
                    (if (gx#stx-pair? _%e123822123846%_)
                        (let ((_%e123832123908%_
                               (gx#syntax-e _%e123822123846%_)))
                          (let ((_%hd123833123911%_ (##car _%e123832123908%_))
                                (_%tl123834123913%_ (##cdr _%e123832123908%_)))
                            (if (eq? (gx#stx-e _%hd123833123911%_) 'namespace:)
                                (if (gx#stx-pair? _%tl123834123913%_)
                                    (let ((_%e123835123916%_
                                           (gx#syntax-e _%tl123834123913%_)))
                                      (let ((_%hd123836123919%_
                                             (##car _%e123835123916%_))
                                            (_%tl123837123921%_
                                             (##cdr _%e123835123916%_)))
                                        (let* ((_%ns123924%_
                                                _%hd123836123919%_)
                                               (_%rest123926%_
                                                _%tl123837123921%_))
                                          (if '#t
                                              (let ((_%ns123932%_
                                                     (if (gx#identifier?
                                                          _%ns123924%_)
                                                         (let ()
                                                           (symbol->string
                                                            (gx#stx-e
                                                             _%ns123924%_)))
                                                         (if (gx#stx-string?
                                                              _%ns123924%_)
                                                             (let ()
                                                               (gx#stx-e
                                                                _%ns123924%_))
                                                             (if (gx#stx-false?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%ns123924%_)
                         (let () '#!void)
                         (let ()
                           (gx#raise-syntax-error
                            'import
                            '"Bad syntax; illegal namespace"
                            _%ns123924%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%lp123816%_
                                                 _%rest123926%_
                                                 _%pre123819%_
                                                 _%ns123932%_
                                                 _%pkg123821%_))
                                              (_%E123831123904%_)))))
                                    (_%E123831123904%_))
                                (_%E123831123904%_))))
                        (_%E123831123904%_))))
                 (_%E123823123958%_
                  (lambda ()
                    (if (gx#stx-pair? _%e123822123846%_)
                        (let ((_%e123825123938%_
                               (gx#syntax-e _%e123822123846%_)))
                          (let ((_%hd123826123941%_ (##car _%e123825123938%_))
                                (_%tl123827123943%_ (##cdr _%e123825123938%_)))
                            (if (eq? (gx#stx-e _%hd123826123941%_) 'prelude:)
                                (if (gx#stx-pair? _%tl123827123943%_)
                                    (let ((_%e123828123946%_
                                           (gx#syntax-e _%tl123827123943%_)))
                                      (let ((_%hd123829123949%_
                                             (##car _%e123828123946%_))
                                            (_%tl123830123951%_
                                             (##cdr _%e123828123946%_)))
                                        (let* ((_%prelude123954%_
                                                _%hd123829123949%_)
                                               (_%rest123956%_
                                                _%tl123830123951%_))
                                          (if '#t
                                              (_%lp123816%_
                                               _%rest123956%_
                                               _%prelude123954%_
                                               _%ns123820%_
                                               _%pkg123821%_)
                                              (_%E123824123934%_)))))
                                    (_%E123824123934%_))
                                (_%E123824123934%_))))
                        (_%E123824123934%_)))))
            (_%E123823123958%_)))))
    (define gx#core-read-module/lang
      (lambda (_%path123636%_)
        (letrec ((_%default-read-module-body123638%_
                  (lambda (_%inp123806%_)
                    (let _%lp123808%_ ((_%body123810%_ '()))
                      (let ((_%next123812%_ (read-syntax__% _%inp123806%_)))
                        (if (eof-object? _%next123812%_)
                            (reverse _%body123810%_)
                            (_%lp123808%_
                             (cons _%next123812%_ _%body123810%_)))))))
                 (_%read-body123639%_
                  (lambda (_%inp123724%_
                           _%pre123725%_
                           _%ns123726%_
                           _%pkg123727%_
                           _%args123728%_)
                    (let ((_g125202_
                           (if _%pkg123727%_
                               (values _%pre123725%_
                                       _%ns123726%_
                                       _%pkg123727%_)
                               (gx#core-read-module-package
                                _%path123636%_
                                _%pre123725%_
                                _%ns123726%_))))
                      (begin
                        (let ((_g125203_
                               (if (##values? _g125202_)
                                   (##vector-length _g125202_)
                                   1)))
                          (if (not (##fx= _g125203_ 3))
                              (error "Context expects 3 values" _g125203_)))
                        (let ((_%pre123730%_ (##vector-ref _g125202_ 0))
                              (_%ns123731%_ (##vector-ref _g125202_ 1))
                              (_%pkg123732%_ (##vector-ref _g125202_ 2)))
                          (let* ((_%prelude123734%_
                                  (gx#import-module__0 _%pre123730%_))
                                 (_%read-module-body123789%_
                                  (let ((_%$e123780%_
                                         (__find (lambda (_%e123735123737%_)
                                                   (let* ((_%g123739123749%_
                                                           _%e123735123737%_)
                                                          (_%else123741123757%_
                                                           (lambda () '#f))
                                                          (_%K123743123761%_
                                                           (lambda () '#t)))
                                                     (if (##structure-direct-instance-of?
                                                          _%g123739123749%_
                                                          'gx#module-export::t)
                                                         (let* ((_%e123744123764%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##unchecked-structure-ref
                          _%g123739123749%_
                          '1
                          '#f
                          '#f))
                        (_%e123745123767%_
                         (##unchecked-structure-ref
                          _%g123739123749%_
                          '2
                          '#f
                          '#f))
                        (_%e123746123770%_
                         (##unchecked-structure-ref
                          _%g123739123749%_
                          '3
                          '#f
                          '#f)))
                   (if (##eq? _%e123746123770%_ '1)
                       (let ((_%e123747123773%_
                              (##unchecked-structure-ref
                               _%g123739123749%_
                               '4
                               '#f
                               '#f)))
                         (if ((lambda (_%g123775123777%_)
                                (eq? _%g123775123777%_ 'read-module-body))
                              _%e123747123773%_)
                             (_%K123743123761%_)
                             (_%else123741123757%_)))
                       (_%else123741123757%_)))
                 (_%else123741123757%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (##unchecked-structure-ref
                                                  _%prelude123734%_
                                                  '9
                                                  '#f
                                                  '#f))))
                                    (if _%$e123780%_
                                        ((lambda (_%xport123783%_)
                                           (let ((_%proc123786%_
                                                  (__with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _%xport123783%_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _%proc123786%_)
                                                 _%proc123786%_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _%path123636%_
                                                  _%pre123730%_
                                                  _%proc123786%_))))
                                         _%$e123780%_)
                                        (let ()
                                          _%default-read-module-body123638%_))))
                                 (_%path-id123791%_
                                  (gx#core-module-path->namespace
                                   _%path123636%_))
                                 (_%pkg-id123793%_
                                  (if _%pkg123732%_
                                      (string-append
                                       _%pkg123732%_
                                       '"/"
                                       _%path-id123791%_)
                                      _%path-id123791%_))
                                 (_%module-id123795%_
                                  (string->symbol _%pkg-id123793%_))
                                 (_%module-ns123800%_
                                  (let ((_%$e123797%_ _%ns123731%_))
                                    (if _%$e123797%_
                                        _%$e123797%_
                                        _%pkg-id123793%_)))
                                 (_%body123803%_
                                  (__call-with-parameters
                                   (lambda ()
                                     (_%read-module-body123789%_
                                      _%inp123724%_))
                                   gx#current-module-reader-path
                                   _%path123636%_
                                   gx#current-module-reader-args
                                   _%args123728%_)))
                            (values _%prelude123734%_
                                    _%module-id123795%_
                                    _%module-ns123800%_
                                    _%body123803%_)))))))
                 (_%string-e123640%_
                  (lambda (_%obj123718%_ _%what123719%_)
                    (if (string? _%obj123718%_)
                        (let () _%obj123718%_)
                        (if (symbol? _%obj123718%_)
                            (let () (symbol->string _%obj123718%_))
                            (let ()
                              (gx#raise-syntax-error
                               '#f
                               (string-append
                                '"Illegal module "
                                _%what123719%_)
                               _%path123636%_
                               _%obj123718%_))))))
                 (_%read-lang-args123641%_
                  (lambda (_%inp123673%_ _%args123674%_)
                    (let* ((_%args123675123683%_ _%args123674%_)
                           (_%else123677123691%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _%path123636%_)))
                           (_%K123679123706%_
                            (lambda (_%args123694%_ _%prelude123695%_)
                              (let* ((_%pkg123697%_
                                      (pgetq__0 'package: _%args123694%_))
                                     (_%pkg123699%_
                                      (if _%pkg123697%_
                                          (_%string-e123640%_
                                           _%pkg123697%_
                                           '"package")
                                          '#f))
                                     (_%ns123701%_
                                      (pgetq__0 'namespace: _%args123694%_))
                                     (_%ns123703%_
                                      (if _%ns123701%_
                                          (_%string-e123640%_
                                           _%ns123701%_
                                           '"namespace")
                                          '#f)))
                                (_%read-body123639%_
                                 _%inp123673%_
                                 _%prelude123695%_
                                 _%ns123703%_
                                 _%pkg123699%_
                                 _%args123694%_)))))
                      (if (##pair? _%args123675123683%_)
                          (let ((_%hd123680123709%_
                                 (##car _%args123675123683%_))
                                (_%tl123681123711%_
                                 (##cdr _%args123675123683%_)))
                            (let* ((_%prelude123714%_ _%hd123680123709%_)
                                   (_%args123716%_ _%tl123681123711%_))
                              (_%K123679123706%_
                               _%args123716%_
                               _%prelude123714%_)))
                          (_%else123677123691%_)))))
                 (_%read-lang123642%_
                  (lambda (_%inp123647%_)
                    (let* ((_%head123649%_ (read-line _%inp123647%_))
                           (_%$e123651%_
                            (string-index__0 _%head123649%_ '#\space)))
                      (if _%$e123651%_
                          ((lambda (_%ix123654%_)
                             (let ((_%lang123656%_
                                    (substring
                                     _%head123649%_
                                     '0
                                     _%ix123654%_)))
                               (if (equal? _%lang123656%_ '"#lang")
                                   (let* ((_%rest123658%_
                                           (substring
                                            _%head123649%_
                                            (##fx+ _%ix123654%_ '1)
                                            (##string-length _%head123649%_)))
                                          (_%args123669%_
                                           (__with-catch
                                            (lambda (_%g123659123661%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _%path123636%_
                                               _%g123659123661%_))
                                            (lambda ()
                                              (call-with-input-string
                                               _%rest123658%_
                                               (lambda (_%g123664123666%_)
                                                 (read-all
                                                  _%g123664123666%_
                                                  read)))))))
                                     (_%read-lang-args123641%_
                                      _%inp123647%_
                                      _%args123669%_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _%path123636%_))))
                           _%$e123651%_)
                          (let ()
                            (gx#raise-syntax-error
                             '#f
                             '"Illegal module syntax"
                             _%path123636%_))))))
                 (_%read-e123643%_
                  (lambda (_%inp123645%_)
                    (if (eq? (peek-char _%inp123645%_) '#\#)
                        (_%read-lang123642%_ _%inp123645%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _%path123636%_)))))
          (gx#call-with-input-source-file _%path123636%_ _%read-e123643%_))))
    (define gx#core-read-module-package
      (lambda (_%path123584%_ _%pre123585%_ _%ns123586%_)
        (letrec ((_%string-e123588%_
                  (lambda (_%e123631%_)
                    (if (symbol? _%e123631%_)
                        (let () (symbol->string _%e123631%_))
                        (if (string? _%e123631%_)
                            (let () _%e123631%_)
                            (let ()
                              (gx#raise-syntax-error
                               '#f
                               '"Malformed package info; unexpected datum"
                               _%e123631%_)))))))
          (let _%lp123590%_ ((_%dir123592%_ (path-directory _%path123584%_))
                             (_%pkg-path123593%_ '()))
            (let ((_%gerbil.pkg123595%_
                   (path-expand '"gerbil.pkg" _%dir123592%_)))
              (if (##file-exists? _%gerbil.pkg123595%_)
                  (let ((_%plist123597%_
                         (gx#core-library-package-plist__% _%dir123592%_ '#t)))
                    (if (null? _%plist123597%_)
                        (let ((_%pkg123600%_
                               (if (not (null? _%pkg-path123593%_))
                                   (string-join _%pkg-path123593%_ '"/")
                                   '#f)))
                          (values _%pre123585%_ _%ns123586%_ _%pkg123600%_))
                        (if (list? _%plist123597%_)
                            (let ()
                              (let* ((_%root123603%_
                                      (pgetq__0 'package: _%plist123597%_))
                                     (_%pkg123607%_
                                      (let ((_%pkg-path123605%_
                                             (if _%root123603%_
                                                 (cons (_%string-e123588%_
                                                        _%root123603%_)
                                                       _%pkg-path123593%_)
                                                 _%pkg-path123593%_)))
                                        (if (not (null? _%pkg-path123605%_))
                                            (string-join
                                             _%pkg-path123605%_
                                             '"/")
                                            '#f)))
                                     (_%ns123614%_
                                      (let ((_%ns123612%_
                                             (let ((_%$e123609%_ _%ns123586%_))
                                               (if _%$e123609%_
                                                   _%$e123609%_
                                                   (pgetq__0
                                                    'namespace:
                                                    _%plist123597%_)))))
                                        (if _%ns123612%_
                                            (_%string-e123588%_ _%ns123612%_)
                                            '#f)))
                                     (_%pre123619%_
                                      (let ((_%$e123616%_ _%pre123585%_))
                                        (if _%$e123616%_
                                            _%$e123616%_
                                            (pgetq__0
                                             'prelude:
                                             _%plist123597%_)))))
                                (values _%pre123619%_
                                        _%ns123614%_
                                        _%pkg123607%_)))
                            (let ()
                              (gx#raise-syntax-error
                               '#f
                               '"Malformed package info; unexpected datum"
                               _%plist123597%_)))))
                  (let ((_%dir*123623%_
                         (path-strip-trailing-directory-separator
                          _%dir123592%_)))
                    (if (or (__string-empty? _%dir*123623%_)
                            (equal? _%dir123592%_ _%dir*123623%_))
                        (values _%pre123585%_ _%ns123586%_ '#f)
                        (let ((_%xpath123628%_
                               (path-strip-directory _%dir*123623%_))
                              (_%xdir123629%_ (path-directory _%dir*123623%_)))
                          (_%lp123590%_
                           _%xdir123629%_
                           (cons _%xpath123628%_ _%pkg-path123593%_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_%path123582%_)
        (path-strip-extension (path-strip-directory _%path123582%_))))
    (define gx#core-module-path->id
      (lambda (_%path123580%_)
        (##string->symbol (gx#core-module-path->namespace _%path123580%_))))
    (define gx#core-resolve-module-path__%
      (lambda (_%stx-path123559%_ _%rel123560%_)
        (let* ((_%path123562%_ (gx#stx-e _%stx-path123559%_))
               (_%path123564%_
                (if (__string-empty? (path-extension _%path123562%_))
                    (##string-append _%path123562%_ '".ss")
                    _%path123562%_)))
          (gx#core-resolve-path__%
           _%path123564%_
           (let ((_%$e123567%_ (gx#stx-source _%stx-path123559%_)))
             (if _%$e123567%_ _%$e123567%_ _%rel123560%_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_%stx-path123573%_)
        (let ((_%rel123575%_ '#f))
          (gx#core-resolve-module-path__% _%stx-path123573%_ _%rel123575%_))))
    (define gx#core-resolve-module-path
      (lambda _g125205_
        (let ((_g125204_ (##length _g125205_)))
          (cond ((##fx= _g125204_ 1)
                 (apply (lambda (_%stx-path123573%_)
                          (gx#core-resolve-module-path__0 _%stx-path123573%_))
                        _g125205_))
                ((##fx= _g125204_ 2)
                 (apply (lambda (_%stx-path123577%_ _%rel123578%_)
                          (gx#core-resolve-module-path__%
                           _%stx-path123577%_
                           _%rel123578%_))
                        _g125205_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g125205_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_%libpath123444%_)
        (let* ((_%spath123446%_ (symbol->string (gx#stx-e _%libpath123444%_)))
               (_%spath123448%_
                (substring
                 _%spath123446%_
                 '1
                 (##string-length _%spath123446%_)))
               (_%ext123450%_ (path-extension _%spath123448%_))
               (_%ssi123452%_
                (if (__string-empty? _%ext123450%_)
                    (##string-append _%spath123448%_ '".ssi")
                    (##string-append
                     (path-strip-extension _%spath123448%_)
                     '".ssi")))
               (_%srcs123456%_
                (if (__string-empty? _%ext123450%_)
                    (##map (lambda (_%ext123454%_)
                             (string-append _%spath123448%_ _%ext123454%_))
                           '(".ss" ".sld" ".scm"))
                    (cons _%spath123448%_ '()))))
          (let _%lp123459%_ ((_%rest123461%_ (load-path)))
            (let* ((_%rest123462123471%_ _%rest123461%_)
                   (_%E123465123475%_
                    (lambda ()
                      (error '"No clause matching"
                             _%rest123462123471%_
                             '([dir . rest])
                             '([]))
                      '#!void)))
              (let ((_%K123467123546%_
                     (lambda (_%rest123486%_ _%dir123487%_)
                       (letrec ((_%resolve123489%_
                                 (lambda (_%ssi123502%_ _%srcs123503%_)
                                   (let ((_%compiled-path123505%_
                                          (path-expand
                                           _%ssi123502%_
                                           _%dir123487%_)))
                                     (if (##file-exists?
                                          _%compiled-path123505%_)
                                         (path-normalize
                                          _%compiled-path123505%_)
                                         (let _%lpr123507%_ ((_%rest-src123509%_
                                                              _%srcs123503%_))
                                           (let* ((_%rest-src123510123518%_
                                                   _%rest-src123509%_)
                                                  (_%else123512123526%_
                                                   (lambda ()
                                                     (_%lp123459%_
                                                      _%rest123486%_)))
                                                  (_%K123514123534%_
                                                   (lambda (_%rest-src123529%_
                                                            _%src123530%_)
                                                     (let ((_%src-path123532%_
                                                            (path-expand
                                                             _%src123530%_
                                                             _%dir123487%_)))
                                                       (if (##file-exists?
                                                            _%src-path123532%_)
                                                           (path-normalize
                                                            _%src-path123532%_)
                                                           (_%lpr123507%_
                                                            _%rest-src123529%_))))))
                                             (if (##pair? _%rest-src123510123518%_)
                                                 (let ((_%hd123515123537%_
                                                        (##car _%rest-src123510123518%_))
                                                       (_%tl123516123539%_
                                                        (##cdr _%rest-src123510123518%_)))
                                                   (let* ((_%src123542%_
                                                           _%hd123515123537%_)
                                                          (_%rest-src123544%_
                                                           _%tl123516123539%_))
                                                     (_%K123514123534%_
                                                      _%rest-src123544%_
                                                      _%src123542%_)))
                                                 (_%else123512123526%_)))))))))
                         (let ((_%$e123491%_
                                (gx#core-library-package-path-prefix
                                 _%dir123487%_)))
                           (if _%$e123491%_
                               ((lambda (_%prefix123494%_)
                                  (if (string-prefix?
                                       _%prefix123494%_
                                       _%spath123448%_)
                                      (let ((_%ssi123498%_
                                             (substring
                                              _%ssi123452%_
                                              (string-length _%prefix123494%_)
                                              (##string-length _%ssi123452%_)))
                                            (_%srcs123499%_
                                             (##map (lambda (_%src123496%_)
                                                      (substring
                                                       _%src123496%_
                                                       (string-length
                                                        _%prefix123494%_)
                                                       (string-length
                                                        _%src123496%_)))
                                                    _%srcs123456%_)))
                                        (_%resolve123489%_
                                         _%ssi123498%_
                                         _%srcs123499%_))
                                      (_%lp123459%_ _%rest123486%_)))
                                _%$e123491%_)
                               (let ()
                                 (_%resolve123489%_
                                  _%ssi123452%_
                                  _%srcs123456%_)))))))
                    (_%K123466123480%_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"cannot find library module"
                        _%libpath123444%_))))
                (let ((_%try-match123464123483%_
                       (lambda ()
                         (if (##null? _%rest123462123471%_)
                             (_%K123466123480%_)
                             (_%E123465123475%_)))))
                  (if (##pair? _%rest123462123471%_)
                      (let ((_%tl123469123551%_ (##cdr _%rest123462123471%_))
                            (_%hd123468123549%_ (##car _%rest123462123471%_)))
                        (let ((_%dir123554%_ _%hd123468123549%_)
                              (_%rest123556%_ _%tl123469123551%_))
                          (_%K123467123546%_ _%rest123556%_ _%dir123554%_)))
                      (_%try-match123464123483%_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_%modpath123412%_)
        (letrec ((_%resolve123414%_
                  (lambda (_%path123435%_ _%base123436%_)
                    (let ((_%$e123438%_
                           (string-rindex__0 _%base123436%_ '#\/)))
                      (if _%$e123438%_
                          ((lambda (_%idx123441%_)
                             (gx#core-resolve-library-module-path
                              (##string->symbol
                               (string-append
                                '":"
                                (substring _%base123436%_ '0 _%idx123441%_)
                                '"/"
                                _%path123435%_))))
                           _%$e123438%_)
                          (let ()
                            (gx#core-resolve-library-module-path
                             (##string->symbol
                              (string-append '":" _%path123435%_)))))))))
          (let ((_%spath123416%_ (symbol->string (gx#stx-e _%modpath123412%_)))
                (_%mod123417%_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _%mod123417%_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"cannot resolve relative module path; not in module context"
                 _%modpath123412%_))
            (let ((_%mpath123419%_
                   (symbol->string
                    (##structure-ref
                     _%mod123417%_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _%lp123421%_ ((_%spath123423%_ _%spath123416%_)
                                 (_%mpath123424%_ _%mpath123419%_))
                (if (string-prefix? '"../" _%spath123423%_)
                    (let ((_%$e123427%_
                           (string-rindex__0 _%mpath123424%_ '#\/)))
                      (if _%$e123427%_
                          ((lambda (_%idx123430%_)
                             (_%lp123421%_
                              (substring
                               _%spath123423%_
                               '3
                               (string-length _%spath123423%_))
                              (substring _%mpath123424%_ '0 _%idx123430%_)))
                           _%$e123427%_)
                          (let ()
                            (gx#raise-syntax-error
                             '#f
                             '"cannot resolve relative module path; illegal traversal"
                             _%modpath123412%_))))
                    (if (string-prefix? '"./" _%spath123423%_)
                        (let ()
                          (_%lp123421%_
                           (substring
                            _%spath123423%_
                            '2
                            (string-length _%spath123423%_))
                           _%mpath123424%_))
                        (let ()
                          (_%resolve123414%_
                           _%spath123423%_
                           _%mpath123424%_))))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_%dir123404%_)
        (let ((_%$e123406%_
               (pgetq__0
                'package:
                (gx#core-library-package-plist__0 _%dir123404%_))))
          (if _%$e123406%_
              ((lambda (_%pkg123409%_)
                 (##string-append (symbol->string _%pkg123409%_) '"/"))
               _%$e123406%_)
              (let () '#f)))))
    (define gx#core-library-package-plist__%
      (lambda (_%dir123374%_ _%exists?123375%_)
        (let ((_%$e123377%_ (hash-get gx#__module-pkg-cache _%dir123374%_)))
          (if _%$e123377%_
              (values _%$e123377%_)
              (let ()
                (let* ((_%gerbil.pkg123381%_
                        (path-expand '"gerbil.pkg" _%dir123374%_))
                       (_%plist123391%_
                        (if (or _%exists?123375%_
                                (##file-exists? _%gerbil.pkg123381%_))
                            (let ((_%e123386%_
                                   (gx#call-with-input-source-file
                                    _%gerbil.pkg123381%_
                                    read)))
                              (if (eof-object? _%e123386%_)
                                  (let () '())
                                  (if (list? _%e123386%_)
                                      (let () _%e123386%_)
                                      (let ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Malformed package info; unexpected datum"
                                         _%gerbil.pkg123381%_
                                         _%e123386%_)))))
                            '())))
                  (hash-put!
                   gx#__module-pkg-cache
                   _%dir123374%_
                   _%plist123391%_)
                  _%plist123391%_))))))
    (define gx#core-library-package-plist__0
      (lambda (_%dir123397%_)
        (let ((_%exists?123399%_ '#f))
          (gx#core-library-package-plist__% _%dir123397%_ _%exists?123399%_))))
    (define gx#core-library-package-plist
      (lambda _g125207_
        (let ((_g125206_ (##length _g125207_)))
          (cond ((##fx= _g125206_ 1)
                 (apply (lambda (_%dir123397%_)
                          (gx#core-library-package-plist__0 _%dir123397%_))
                        _g125207_))
                ((##fx= _g125206_ 2)
                 (apply (lambda (_%dir123401%_ _%exists?123402%_)
                          (gx#core-library-package-plist__%
                           _%dir123401%_
                           _%exists?123402%_))
                        _g125207_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g125207_))))))
    (define gx#core-library-module-path?
      (lambda (_%stx123371%_)
        (gx#core-special-module-path? _%stx123371%_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_%stx123369%_)
        (gx#core-special-module-path? _%stx123369%_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_%stx123364%_ _%char123365%_)
        (if (gx#identifier? _%stx123364%_)
            (if (interned-symbol? (gx#stx-e _%stx123364%_))
                (let ((_%str123367%_
                       (symbol->string (gx#stx-e _%stx123364%_))))
                  (if (##fx> (##string-length _%str123367%_) '1)
                      (eq? (string-ref _%str123367%_ '0) _%char123365%_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_%stx123358%_)
        (gx#core-bound-identifier?__%
         _%stx123358%_
         (lambda (_%g123359123361%_)
           (gx#expander-binding?__% _%g123359123361%_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_%stx123352%_)
        (gx#core-bound-identifier?__%
         _%stx123352%_
         (lambda (_%g123353123355%_)
           (gx#expander-binding?__% _%g123353123355%_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_%stx123339%_)
        (letrec ((_%module-prelude?123341%_
                  (lambda (_%e123347%_)
                    (let ((_%$e123349%_
                           (##structure-instance-of?
                            _%e123347%_
                            'gx#module-context::t)))
                      (if _%$e123349%_
                          _%$e123349%_
                          (##structure-instance-of?
                           _%e123347%_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _%stx123339%_
           (lambda (_%g123342123344%_)
             (gx#expander-binding?__%
              _%g123342123344%_
              _%module-prelude?123341%_))))))
    (define gx#core-bind-import!__%
      (lambda (_%in123269%_ _%ctx123270%_ _%force-weak?123271%_)
        (let* ((_%in123272123281%_ _%in123269%_)
               (_%E123274123285%_
                (lambda ()
                  (error '"No clause matching"
                         _%in123272123281%_
                         '((module-import source key phi weak?)))
                  '#!void))
               (_%K123275123298%_
                (lambda (_%weak?123288%_
                         _%phi123289%_
                         _%key123290%_
                         _%source123291%_)
                  (gx#core-bind!__%
                   _%key123290%_
                   (let ((_%e123293%_
                          (gx#core-resolve-module-export _%source123291%_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref _%e123293%_ '1 '#f '#f)
                      _%key123290%_
                      _%phi123289%_
                      _%e123293%_
                      (##unchecked-structure-ref _%source123291%_ '1 '#f '#f)
                      (let ((_%$e123295%_ _%force-weak?123271%_))
                        (if _%$e123295%_ _%$e123295%_ _%weak?123288%_))))
                   gx#core-context-rebind?
                   _%phi123289%_
                   _%ctx123270%_))))
          (if (##structure-direct-instance-of?
               _%in123272123281%_
               'gx#module-import::t)
              (let* ((_%e123276123301%_
                      (##unchecked-structure-ref
                       _%in123272123281%_
                       '1
                       '#f
                       '#f))
                     (_%source123304%_ _%e123276123301%_)
                     (_%e123277123306%_
                      (##unchecked-structure-ref
                       _%in123272123281%_
                       '2
                       '#f
                       '#f))
                     (_%key123309%_ _%e123277123306%_)
                     (_%e123278123311%_
                      (##unchecked-structure-ref
                       _%in123272123281%_
                       '3
                       '#f
                       '#f))
                     (_%phi123314%_ _%e123278123311%_)
                     (_%e123279123316%_
                      (##unchecked-structure-ref
                       _%in123272123281%_
                       '4
                       '#f
                       '#f))
                     (_%weak?123319%_ _%e123279123316%_))
                (_%K123275123298%_
                 _%weak?123319%_
                 _%phi123314%_
                 _%key123309%_
                 _%source123304%_))
              (_%E123274123285%_)))))
    (define gx#core-bind-import!__0
      (lambda (_%in123324%_)
        (let* ((_%ctx123326%_ (gx#current-expander-context))
               (_%force-weak?123328%_ '#f))
          (gx#core-bind-import!__%
           _%in123324%_
           _%ctx123326%_
           _%force-weak?123328%_))))
    (define gx#core-bind-import!__1
      (lambda (_%in123330%_ _%ctx123331%_)
        (let ((_%force-weak?123333%_ '#f))
          (gx#core-bind-import!__%
           _%in123330%_
           _%ctx123331%_
           _%force-weak?123333%_))))
    (define gx#core-bind-import!
      (lambda _g125209_
        (let ((_g125208_ (##length _g125209_)))
          (cond ((##fx= _g125208_ 1)
                 (apply (lambda (_%in123324%_)
                          (gx#core-bind-import!__0 _%in123324%_))
                        _g125209_))
                ((##fx= _g125208_ 2)
                 (apply (lambda (_%in123330%_ _%ctx123331%_)
                          (gx#core-bind-import!__1 _%in123330%_ _%ctx123331%_))
                        _g125209_))
                ((##fx= _g125208_ 3)
                 (apply (lambda (_%in123335%_
                                 _%ctx123336%_
                                 _%force-weak?123337%_)
                          (gx#core-bind-import!__%
                           _%in123335%_
                           _%ctx123336%_
                           _%force-weak?123337%_))
                        _g125209_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g125209_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_%in123255%_ _%ctx123256%_)
        (gx#core-bind-import!__% _%in123255%_ _%ctx123256%_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_%in123261%_)
        (let ((_%ctx123263%_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _%in123261%_ _%ctx123263%_))))
    (define gx#core-bind-weak-import!
      (lambda _g125211_
        (let ((_g125210_ (##length _g125211_)))
          (cond ((##fx= _g125210_ 1)
                 (apply (lambda (_%in123261%_)
                          (gx#core-bind-weak-import!__0 _%in123261%_))
                        _g125211_))
                ((##fx= _g125210_ 2)
                 (apply (lambda (_%in123265%_ _%ctx123266%_)
                          (gx#core-bind-weak-import!__%
                           _%in123265%_
                           _%ctx123266%_))
                        _g125211_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g125211_))))))
    (define gx#core-resolve-module-export
      (lambda (_%out123146%_)
        (letrec ((_%subst123148%_
                  (lambda (_%key123194%_)
                    (let* ((_%key123195123203%_ _%key123194%_)
                           (_%else123197123211%_ (lambda () _%key123194%_))
                           (_%K123199123242%_
                            (lambda (_%mark123214%_ _%id123215%_)
                              (let* ((_%mark123216123222%_ _%mark123214%_)
                                     (_%E123218123226%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark123216123222%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K123219123234%_
                                      (lambda (_%subst123229%_)
                                        (let ((_%$e123231%_
                                               (if _%subst123229%_
                                                   (hash-get
                                                    _%subst123229%_
                                                    _%id123215%_)
                                                   '#f)))
                                          (if _%$e123231%_
                                              _%$e123231%_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _%key123194%_))))))
                                (if (##structure-instance-of?
                                     _%mark123216123222%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e123220123237%_
                                            (##unchecked-structure-ref
                                             _%mark123216123222%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst123240%_ _%e123220123237%_))
                                      (_%K123219123234%_ _%subst123240%_))
                                    (_%E123218123226%_))))))
                      (if (##pair? _%key123195123203%_)
                          (let ((_%hd123200123245%_
                                 (##car _%key123195123203%_))
                                (_%tl123201123247%_
                                 (##cdr _%key123195123203%_)))
                            (let* ((_%id123250%_ _%hd123200123245%_)
                                   (_%mark123252%_ _%tl123201123247%_))
                              (_%K123199123242%_ _%mark123252%_ _%id123250%_)))
                          (_%else123197123211%_))))))
          (let* ((_%out123149123159%_ _%out123146%_)
                 (_%E123151123163%_
                  (lambda ()
                    (error '"No clause matching"
                           _%out123149123159%_
                           '((module-export ctx key phi _ _)))
                    '#!void))
                 (_%K123152123170%_
                  (lambda (_%phi123166%_ _%key123167%_ _%ctx123168%_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _%ctx123168%_ _%phi123166%_)
                     (_%subst123148%_ _%key123167%_)))))
            (if (##structure-direct-instance-of?
                 _%out123149123159%_
                 'gx#module-export::t)
                (let* ((_%e123153123173%_
                        (##unchecked-structure-ref
                         _%out123149123159%_
                         '1
                         '#f
                         '#f))
                       (_%ctx123176%_ _%e123153123173%_)
                       (_%e123154123178%_
                        (##unchecked-structure-ref
                         _%out123149123159%_
                         '2
                         '#f
                         '#f))
                       (_%key123181%_ _%e123154123178%_)
                       (_%e123155123183%_
                        (##unchecked-structure-ref
                         _%out123149123159%_
                         '3
                         '#f
                         '#f))
                       (_%phi123186%_ _%e123155123183%_)
                       (_%e123156123188%_
                        (##unchecked-structure-ref
                         _%out123149123159%_
                         '4
                         '#f
                         '#f))
                       (_%e123157123191%_
                        (##unchecked-structure-ref
                         _%out123149123159%_
                         '5
                         '#f
                         '#f)))
                  (_%K123152123170%_
                   _%phi123186%_
                   _%key123181%_
                   _%ctx123176%_))
                (_%E123151123163%_))))))
    (define gx#core-module-export->import__%
      (lambda (_%out123071%_ _%rename123072%_ _%dphi123073%_)
        (let* ((_%out123074123084%_ _%out123071%_)
               (_%E123076123088%_
                (lambda ()
                  (error '"No clause matching"
                         _%out123074123084%_
                         '((module-export ctx key phi name weak?)))
                  '#!void))
               (_%K123077123100%_
                (lambda (_%weak?123091%_
                         _%name123092%_
                         _%phi123093%_
                         _%key123094%_
                         _%ctx123095%_)
                  (##structure
                   gx#module-import::t
                   _%out123071%_
                   (let ((_%$e123097%_ _%rename123072%_))
                     (if _%$e123097%_ _%$e123097%_ _%name123092%_))
                   (fx+ _%phi123093%_ _%dphi123073%_)
                   _%weak?123091%_))))
          (if (##structure-direct-instance-of?
               _%out123074123084%_
               'gx#module-export::t)
              (let* ((_%e123078123103%_
                      (##unchecked-structure-ref
                       _%out123074123084%_
                       '1
                       '#f
                       '#f))
                     (_%ctx123106%_ _%e123078123103%_)
                     (_%e123079123108%_
                      (##unchecked-structure-ref
                       _%out123074123084%_
                       '2
                       '#f
                       '#f))
                     (_%key123111%_ _%e123079123108%_)
                     (_%e123080123113%_
                      (##unchecked-structure-ref
                       _%out123074123084%_
                       '3
                       '#f
                       '#f))
                     (_%phi123116%_ _%e123080123113%_)
                     (_%e123081123118%_
                      (##unchecked-structure-ref
                       _%out123074123084%_
                       '4
                       '#f
                       '#f))
                     (_%name123121%_ _%e123081123118%_)
                     (_%e123082123123%_
                      (##unchecked-structure-ref
                       _%out123074123084%_
                       '5
                       '#f
                       '#f))
                     (_%weak?123126%_ _%e123082123123%_))
                (_%K123077123100%_
                 _%weak?123126%_
                 _%name123121%_
                 _%phi123116%_
                 _%key123111%_
                 _%ctx123106%_))
              (_%E123076123088%_)))))
    (define gx#core-module-export->import__0
      (lambda (_%out123131%_)
        (let* ((_%rename123133%_ '#f) (_%dphi123135%_ '0))
          (gx#core-module-export->import__%
           _%out123131%_
           _%rename123133%_
           _%dphi123135%_))))
    (define gx#core-module-export->import__1
      (lambda (_%out123137%_ _%rename123138%_)
        (let ((_%dphi123140%_ '0))
          (gx#core-module-export->import__%
           _%out123137%_
           _%rename123138%_
           _%dphi123140%_))))
    (define gx#core-module-export->import
      (lambda _g125213_
        (let ((_g125212_ (##length _g125213_)))
          (cond ((##fx= _g125212_ 1)
                 (apply (lambda (_%out123131%_)
                          (gx#core-module-export->import__0 _%out123131%_))
                        _g125213_))
                ((##fx= _g125212_ 2)
                 (apply (lambda (_%out123137%_ _%rename123138%_)
                          (gx#core-module-export->import__1
                           _%out123137%_
                           _%rename123138%_))
                        _g125213_))
                ((##fx= _g125212_ 3)
                 (apply (lambda (_%out123142%_ _%rename123143%_ _%dphi123144%_)
                          (gx#core-module-export->import__%
                           _%out123142%_
                           _%rename123143%_
                           _%dphi123144%_))
                        _g125213_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g125213_))))))
    (define gx#core-expand-module%
      (lambda (_%stx122970%_)
        (letrec ((_%make-context122972%_
                  (lambda (_%id123049%_)
                    (let* ((_%super123051%_ (gx#current-expander-context))
                           (_%bind-id123053%_ (gx#stx-e _%id123049%_))
                           (_%mod-id123055%_
                            (if (##structure-instance-of?
                                 _%super123051%_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##structure-ref
                                  _%super123051%_
                                  '1
                                  gx#expander-context::t
                                  '#f)
                                 '"~"
                                 _%bind-id123053%_)
                                _%bind-id123053%_))
                           (_%ns123057%_ (symbol->string _%mod-id123055%_))
                           (_%path123067%_
                            (if (##structure-instance-of?
                                 _%super123051%_
                                 'gx#module-context::t)
                                (let ((_%path123059%_
                                       (##unchecked-structure-ref
                                        _%super123051%_
                                        '7
                                        '#f
                                        '#f)))
                                  (if (or (pair? _%path123059%_)
                                          (null? _%path123059%_))
                                      (let ()
                                        (cons _%bind-id123053%_
                                              _%path123059%_))
                                      (if (not _%path123059%_)
                                          (let () _%bind-id123053%_)
                                          (let ()
                                            (cons _%bind-id123053%_
                                                  (cons _%path123059%_
                                                        '()))))))
                                _%bind-id123053%_))
                           (__obj125189
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
                       __obj125189
                       _%mod-id123055%_
                       _%super123051%_
                       _%ns123057%_
                       _%path123067%_)
                      __obj125189)))
                 (_%valid-module-id?122973%_
                  (lambda (_%id123024%_)
                    (let* ((_%str123026%_ (symbol->string _%id123024%_))
                           (_%len123028%_ (##string-length _%str123026%_)))
                      (if (##fx>= _%len123028%_ '1)
                          (let _%loop123031%_ ((_%index123033%_
                                                (##fx- (##string-length
                                                        _%str123026%_)
                                                       '1)))
                            (if (##fx>= _%index123033%_ '0)
                                (let ((_%c123035%_
                                       (string-ref
                                        _%str123026%_
                                        _%index123033%_)))
                                  (if (or (and (##char>=? _%c123035%_ '#\a)
                                               (##char<=? _%c123035%_ '#\z))
                                          (and (##char>=? _%c123035%_ '#\A)
                                               (##char<=? _%c123035%_ '#\Z))
                                          (and (##char>=? _%c123035%_ '#\0)
                                               (##char<=? _%c123035%_ '#\9))
                                          (##char=? _%c123035%_ '#\_)
                                          (##char=? _%c123035%_ '#\-))
                                      (_%loop123031%_
                                       (##fx- _%index123033%_ '1))
                                      '#f))
                                '#t))
                          '#f)))))
          (let* ((_%e122974122984%_ _%stx122970%_)
                 (_%E122976122988%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e122974122984%_)))
                 (_%E122975123020%_
                  (lambda ()
                    (if (gx#stx-pair? _%e122974122984%_)
                        (let ((_%e122977122992%_
                               (gx#syntax-e _%e122974122984%_)))
                          (let ((_%hd122978122995%_ (##car _%e122977122992%_))
                                (_%tl122979122997%_ (##cdr _%e122977122992%_)))
                            (if (gx#stx-pair? _%tl122979122997%_)
                                (let ((_%e122980123000%_
                                       (gx#syntax-e _%tl122979122997%_)))
                                  (let ((_%hd122981123003%_
                                         (##car _%e122980123000%_))
                                        (_%tl122982123005%_
                                         (##cdr _%e122980123000%_)))
                                    (let* ((_%id123008%_ _%hd122981123003%_)
                                           (_%body123010%_ _%tl122982123005%_))
                                      (if (and (gx#identifier? _%id123008%_)
                                               (gx#stx-list? _%body123010%_))
                                          (if (_%valid-module-id?122973%_
                                               (gx#stx-e
                                                (gx#datum->syntax__0 '#f 'id)))
                                              (let* ((_%ctx123012%_
                                                      (_%make-context122972%_
                                                       _%id123008%_))
                                                     (_%body123014%_
                                                      (gx#core-expand-module-begin
                                                       _%body123010%_
                                                       _%ctx123012%_))
                                                     (_%body123016%_
                                                      (gx#core-quote-syntax__1
                                                       (gx#core-cons
                                                        '%#begin
                                                        _%body123014%_)
                                                       (gx#stx-source
                                                        _%stx122970%_))))
                                                (##unchecked-structure-set!
                                                 _%ctx123012%_
                                                 (__make-promise
                                                  (lambda ()
                                                    (gx#eval-syntax*
                                                     _%body123016%_)))
                                                 '10
                                                 '#f
                                                 '#f)
                                                (##unchecked-structure-set!
                                                 _%ctx123012%_
                                                 _%body123016%_
                                                 '11
                                                 '#f
                                                 '#f)
                                                (gx#core-bind-syntax!__0
                                                 _%id123008%_
                                                 _%ctx123012%_)
                                                (gx#core-quote-syntax__1
                                                 (gx#core-list
                                                  '%#module
                                                  (gx#core-quote-syntax__0
                                                   _%id123008%_)
                                                  _%body123016%_)
                                                 (gx#stx-source
                                                  _%stx122970%_)))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"invalid module id; allowed characters are A-Z,a-z,0-9,_,-"
                                               _%stx122970%_
                                               (gx#datum->syntax__0 '#f 'id)))
                                          (_%E122976122988%_)))))
                                (_%E122976122988%_))))
                        (_%E122976122988%_)))))
            (_%E122975123020%_)))))
    (define gx#core-expand-module-begin
      (lambda (_%body122936%_ _%ctx122937%_)
        (__call-with-parameters
         (lambda ()
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_%stx122940%_
                   (gx#core-expand-head (cons '%%begin-module _%body122936%_)))
                  (_%e122941122948%_ _%stx122940%_)
                  (_%E122943122952%_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _%stx122940%_)))
                  (_%E122942122966%_
                   (lambda ()
                     (if (gx#stx-pair? _%e122941122948%_)
                         (let ((_%e122944122956%_
                                (gx#syntax-e _%e122941122948%_)))
                           (let ((_%hd122945122959%_ (##car _%e122944122956%_))
                                 (_%tl122946122961%_
                                  (##cdr _%e122944122956%_)))
                             (if (and (gx#identifier? _%hd122945122959%_)
                                      (gx#core-identifier=?
                                       _%hd122945122959%_
                                       '%#begin-module))
                                 (let ((_%body122964%_ _%tl122946122961%_))
                                   (if '#t
                                       (if (gx#sealed-syntax? _%stx122940%_)
                                           _%body122964%_
                                           (gx#core-expand-module-body
                                            _%body122964%_))
                                       (_%E122943122952%_)))
                                 (_%E122943122952%_))))
                         (_%E122943122952%_)))))
             (_%E122942122966%_)))
         gx#current-expander-context
         _%ctx122937%_
         gx#current-expander-phi
         '0)))
    (define gx#core-expand-module-body
      (lambda (_%body122732%_)
        (letrec ((_%expand-special122734%_
                  (lambda (_%hd122863%_ _%K122864%_ _%rest122865%_ _%r122866%_)
                    (let* ((_%e122867122884%_ _%hd122863%_)
                           (_%E122879122888%_
                            (lambda ()
                              (_%K122864%_
                               _%rest122865%_
                               (cons (gx#core-expand-top _%hd122863%_)
                                     _%r122866%_))))
                           (_%E122869122900%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122867122884%_)
                                  (let ((_%e122880122892%_
                                         (gx#syntax-e _%e122867122884%_)))
                                    (let ((_%hd122881122895%_
                                           (##car _%e122880122892%_))
                                          (_%tl122882122897%_
                                           (##cdr _%e122880122892%_)))
                                      (if (and (gx#identifier?
                                                _%hd122881122895%_)
                                               (gx#core-identifier=?
                                                _%hd122881122895%_
                                                '%#export))
                                          (if '#t
                                              (_%K122864%_
                                               _%rest122865%_
                                               (cons _%hd122863%_ _%r122866%_))
                                              (_%E122879122888%_))
                                          (_%E122879122888%_))))
                                  (_%E122879122888%_))))
                           (_%E122868122932%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122867122884%_)
                                  (let ((_%e122870122904%_
                                         (gx#syntax-e _%e122867122884%_)))
                                    (let ((_%hd122871122907%_
                                           (##car _%e122870122904%_))
                                          (_%tl122872122909%_
                                           (##cdr _%e122870122904%_)))
                                      (if (and (gx#identifier?
                                                _%hd122871122907%_)
                                               (gx#core-identifier=?
                                                _%hd122871122907%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl122872122909%_)
                                              (let ((_%e122873122912%_
                                                     (gx#syntax-e
                                                      _%tl122872122909%_)))
                                                (let ((_%hd122874122915%_
                                                       (##car _%e122873122912%_))
                                                      (_%tl122875122917%_
                                                       (##cdr _%e122873122912%_)))
                                                  (let ((_%hd-bind122920%_
                                                         _%hd122874122915%_))
                                                    (if (gx#stx-pair?
                                                         _%tl122875122917%_)
                                                        (let ((_%e122876122922%_
                                                               (gx#syntax-e
                                                                _%tl122875122917%_)))
                                                          (let ((_%hd122877122925%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e122876122922%_))
                        (_%tl122878122927%_ (##cdr _%e122876122922%_)))
                    (let ((_%expr122930%_ _%hd122877122925%_))
                      (if (gx#stx-null? _%tl122878122927%_)
                          (if (gx#core-bind-values? _%hd-bind122920%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind122920%_)
                                (_%K122864%_
                                 _%rest122865%_
                                 (cons _%hd122863%_ _%r122866%_)))
                              (_%E122869122900%_))
                          (_%E122869122900%_)))))
                (_%E122869122900%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E122869122900%_))
                                          (_%E122869122900%_))))
                                  (_%E122869122900%_)))))
                      (_%E122868122932%_))))
                 (_%expand-body122735%_
                  (lambda (_%rbody122737%_)
                    (let _%lp122739%_ ((_%rest122741%_ _%rbody122737%_)
                                       (_%body122742%_ '()))
                      (let* ((_%rest122743122751%_ _%rest122741%_)
                             (_%else122745122759%_ (lambda () _%body122742%_))
                             (_%K122747122851%_
                              (lambda (_%rest122762%_ _%hd122763%_)
                                (let* ((_%e122764122785%_ _%hd122763%_)
                                       (_%E122780122789%_
                                        (lambda ()
                                          (_%lp122739%_
                                           _%rest122762%_
                                           (cons (gx#core-expand-expression
                                                  _%hd122763%_)
                                                 _%body122742%_))))
                                       (_%E122776122803%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e122764122785%_)
                                              (let ((_%e122781122793%_
                                                     (gx#syntax-e
                                                      _%e122764122785%_)))
                                                (let ((_%hd122782122796%_
                                                       (##car _%e122781122793%_))
                                                      (_%tl122783122798%_
                                                       (##cdr _%e122781122793%_)))
                                                  (let ((_%form122801%_
                                                         _%hd122782122796%_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _%form122801%_
                                                         gx#special-form-binding?)
                                                        (_%lp122739%_
                                                         _%rest122762%_
                                                         (cons _%hd122763%_
                                                               _%body122742%_))
                                                        (_%E122780122789%_)))))
                                              (_%E122780122789%_))))
                                       (_%E122766122815%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e122764122785%_)
                                              (let ((_%e122777122807%_
                                                     (gx#syntax-e
                                                      _%e122764122785%_)))
                                                (let ((_%hd122778122810%_
                                                       (##car _%e122777122807%_))
                                                      (_%tl122779122812%_
                                                       (##cdr _%e122777122807%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd122778122810%_)
                                                           (gx#core-identifier=?
                                                            _%hd122778122810%_
                                                            '%#export))
                                                      (if '#t
                                                          (_%lp122739%_
                                                           _%rest122762%_
                                                           (cons (gx#core-expand-export%__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%hd122763%_)
                         _%body122742%_))
                  (_%E122776122803%_))
              (_%E122776122803%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E122776122803%_))))
                                       (_%E122765122847%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e122764122785%_)
                                              (let ((_%e122767122819%_
                                                     (gx#syntax-e
                                                      _%e122764122785%_)))
                                                (let ((_%hd122768122822%_
                                                       (##car _%e122767122819%_))
                                                      (_%tl122769122824%_
                                                       (##cdr _%e122767122819%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd122768122822%_)
                                                           (gx#core-identifier=?
                                                            _%hd122768122822%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl122769122824%_)
                                                          (let ((_%e122770122827%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl122769122824%_)))
                    (let ((_%hd122771122830%_ (##car _%e122770122827%_))
                          (_%tl122772122832%_ (##cdr _%e122770122827%_)))
                      (let ((_%hd-bind122835%_ _%hd122771122830%_))
                        (if (gx#stx-pair? _%tl122772122832%_)
                            (let ((_%e122773122837%_
                                   (gx#syntax-e _%tl122772122832%_)))
                              (let ((_%hd122774122840%_
                                     (##car _%e122773122837%_))
                                    (_%tl122775122842%_
                                     (##cdr _%e122773122837%_)))
                                (let ((_%expr122845%_ _%hd122774122840%_))
                                  (if (gx#stx-null? _%tl122775122842%_)
                                      (if '#t
                                          (_%lp122739%_
                                           _%rest122762%_
                                           (cons (gx#core-quote-syntax__1
                                                  (gx#core-list
                                                   '%#define-values
                                                   (gx#core-quote-bind-values
                                                    _%hd-bind122835%_)
                                                   (gx#core-expand-expression
                                                    _%expr122845%_))
                                                  (gx#stx-source _%hd122763%_))
                                                 _%body122742%_))
                                          (_%E122766122815%_))
                                      (_%E122766122815%_)))))
                            (_%E122766122815%_)))))
                  (_%E122766122815%_))
              (_%E122766122815%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E122766122815%_)))))
                                  (_%E122765122847%_)))))
                        (if (##pair? _%rest122743122751%_)
                            (let ((_%hd122748122854%_
                                   (##car _%rest122743122751%_))
                                  (_%tl122749122856%_
                                   (##cdr _%rest122743122751%_)))
                              (let* ((_%hd122859%_ _%hd122748122854%_)
                                     (_%rest122861%_ _%tl122749122856%_))
                                (_%K122747122851%_
                                 _%rest122861%_
                                 _%hd122859%_)))
                            (_%else122745122759%_)))))))
          (_%expand-body122735%_
           (gx#core-expand-block__%
            (cons '%#begin-module _%body122732%_)
            _%expand-special122734%_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_%stx122573%_
               _%expanded?122574%_
               _%method122575%_
               _%current-phi122576%_
               _%expand1122577%_)
        (letrec ((_%K122579%_
                  (lambda (_%rest122699%_ _%r122700%_)
                    (let* ((_%e122701122708%_ _%rest122699%_)
                           (_%E122703122712%_ (lambda () _%r122700%_))
                           (_%E122702122728%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122701122708%_)
                                  (let ((_%e122704122716%_
                                         (gx#syntax-e _%e122701122708%_)))
                                    (let ((_%hd122705122719%_
                                           (##car _%e122704122716%_))
                                          (_%tl122706122721%_
                                           (##cdr _%e122704122716%_)))
                                      (let* ((_%hd122724%_ _%hd122705122719%_)
                                             (_%rest122726%_
                                              _%tl122706122721%_))
                                        (if '#t
                                            (_%step122580%_
                                             _%hd122724%_
                                             _%rest122726%_
                                             _%r122700%_)
                                            (_%E122703122712%_)))))
                                  (_%E122703122712%_)))))
                      (_%E122702122728%_))))
                 (_%step122580%_
                  (lambda (_%hd122613%_ _%rest122614%_ _%r122615%_)
                    (let* ((_%e122616122634%_ _%hd122613%_)
                           (_%E122629122638%_
                            (lambda ()
                              (if (_%expanded?122574%_ (gx#stx-e _%hd122613%_))
                                  (_%K122579%_
                                   _%rest122614%_
                                   (cons (gx#stx-e _%hd122613%_) _%r122615%_))
                                  (_%expand1122577%_
                                   _%hd122613%_
                                   _%K122579%_
                                   _%rest122614%_
                                   _%r122615%_))))
                           (_%E122625122654%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122616122634%_)
                                  (let ((_%e122630122642%_
                                         (gx#syntax-e _%e122616122634%_)))
                                    (let ((_%hd122631122645%_
                                           (##car _%e122630122642%_))
                                          (_%tl122632122647%_
                                           (##cdr _%e122630122642%_)))
                                      (let* ((_%macro122650%_
                                              _%hd122631122645%_)
                                             (_%body122652%_
                                              _%tl122632122647%_))
                                        (if (gx#core-bound-identifier?__%
                                             _%macro122650%_
                                             gx#syntax-binding?)
                                            (_%K122579%_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _%macro122650%_)
                                                    _%hd122613%_
                                                    _%method122575%_)
                                                   _%rest122614%_)
                                             _%r122615%_)
                                            (_%E122629122638%_)))))
                                  (_%E122629122638%_))))
                           (_%E122618122668%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122616122634%_)
                                  (let ((_%e122626122658%_
                                         (gx#syntax-e _%e122616122634%_)))
                                    (let ((_%hd122627122661%_
                                           (##car _%e122626122658%_))
                                          (_%tl122628122663%_
                                           (##cdr _%e122626122658%_)))
                                      (if (eq? (gx#stx-e _%hd122627122661%_)
                                               'begin:)
                                          (let ((_%body122666%_
                                                 _%tl122628122663%_))
                                            (if '#t
                                                (_%K122579%_
                                                 (gx#stx-foldr
                                                  cons
                                                  _%rest122614%_
                                                  _%body122666%_)
                                                 _%r122615%_)
                                                (_%E122625122654%_)))
                                          (_%E122625122654%_))))
                                  (_%E122625122654%_))))
                           (_%E122617122695%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122616122634%_)
                                  (let ((_%e122619122672%_
                                         (gx#syntax-e _%e122616122634%_)))
                                    (let ((_%hd122620122675%_
                                           (##car _%e122619122672%_))
                                          (_%tl122621122677%_
                                           (##cdr _%e122619122672%_)))
                                      (if (eq? (gx#stx-e _%hd122620122675%_)
                                               'phi:)
                                          (if (gx#stx-pair? _%tl122621122677%_)
                                              (let ((_%e122622122680%_
                                                     (gx#syntax-e
                                                      _%tl122621122677%_)))
                                                (let ((_%hd122623122683%_
                                                       (##car _%e122622122680%_))
                                                      (_%tl122624122685%_
                                                       (##cdr _%e122622122680%_)))
                                                  (let* ((_%dphi122688%_
                                                          _%hd122623122683%_)
                                                         (_%body122690%_
                                                          _%tl122624122685%_))
                                                    (if (gx#stx-fixnum?
                                                         _%dphi122688%_)
                                                        (let ((_%rbody122693%_
                                                               (__call-with-parameters
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_%K122579%_ _%body122690%_ '()))
                        _%current-phi122576%_
                        (fx+ (gx#stx-e _%dphi122688%_)
                             (_%current-phi122576%_)))))
                  (_%K122579%_
                   _%rest122614%_
                   (__foldr1 cons _%r122615%_ _%rbody122693%_)))
                (_%E122618122668%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E122618122668%_))
                                          (_%E122618122668%_))))
                                  (_%E122618122668%_)))))
                      (_%E122617122695%_)))))
          (let* ((_%e122581122588%_ _%stx122573%_)
                 (_%E122583122592%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e122581122588%_)))
                 (_%E122582122609%_
                  (lambda ()
                    (if (gx#stx-pair? _%e122581122588%_)
                        (let ((_%e122584122596%_
                               (gx#syntax-e _%e122581122588%_)))
                          (let ((_%hd122585122599%_ (##car _%e122584122596%_))
                                (_%tl122586122601%_ (##cdr _%e122584122596%_)))
                            (let ((_%body122604%_ _%tl122586122601%_))
                              (if '#t
                                  (if (_%current-phi122576%_)
                                      (let () (_%K122579%_ _%body122604%_ '()))
                                      (let ()
                                        (__call-with-parameters
                                         (lambda ()
                                           (_%K122579%_ _%body122604%_ '()))
                                         _%current-phi122576%_
                                         (gx#current-expander-phi))))
                                  (_%E122583122592%_)))))
                        (_%E122583122592%_)))))
            (_%E122582122609%_)))))
    (define gx#core-expand-import%__%
      (lambda (_%stx122227%_ _%internal-expand?122228%_)
        (letrec ((_%expand1122230%_
                  (lambda (_%hd122545%_ _%K122546%_ _%rest122547%_ _%r122548%_)
                    (if (gx#core-bound-module? _%hd122545%_)
                        (let ()
                          (_%import1122231%_
                           (gx#syntax-local-e__0 _%hd122545%_)
                           _%K122546%_
                           _%rest122547%_
                           _%r122548%_))
                        (if (gx#core-library-module-path? _%hd122545%_)
                            (let ()
                              (_%import1122231%_
                               (gx#import-module__0
                                (gx#core-resolve-library-module-path
                                 _%hd122545%_))
                               _%K122546%_
                               _%rest122547%_
                               _%r122548%_))
                            (if (gx#core-library-relative-module-path?
                                 _%hd122545%_)
                                (let ()
                                  (_%import1122231%_
                                   (gx#import-module__0
                                    (gx#core-resolve-library-relative-module-path
                                     _%hd122545%_))
                                   _%K122546%_
                                   _%rest122547%_
                                   _%r122548%_))
                                (let ((_%e122554%_ (gx#stx-e _%hd122545%_)))
                                  (if (pair? _%e122554%_)
                                      (let ((_%$e122557%_
                                             (gx#stx-e (car _%e122554%_))))
                                        (if (eq? 'spec: _%$e122557%_)
                                            (_%import-spec122234%_
                                             _%hd122545%_
                                             _%K122546%_
                                             _%rest122547%_
                                             _%r122548%_)
                                            (if (eq? 'in: _%$e122557%_)
                                                (_%import-submodule122232%_
                                                 _%hd122545%_
                                                 _%K122546%_
                                                 _%rest122547%_
                                                 _%r122548%_)
                                                (if (eq? 'runtime:
                                                         _%$e122557%_)
                                                    (_%import-runtime122233%_
                                                     _%hd122545%_
                                                     _%K122546%_
                                                     _%rest122547%_
                                                     _%r122548%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _%stx122227%_
                                                     _%hd122545%_)))))
                                      (if (string? _%e122554%_)
                                          (let ()
                                            (_%import1122231%_
                                             (gx#import-module__0
                                              (gx#core-resolve-module-path__%
                                               _%hd122545%_
                                               (gx#stx-source _%stx122227%_)))
                                             _%K122546%_
                                             _%rest122547%_
                                             _%r122548%_))
                                          (if (##structure-instance-of?
                                               _%e122554%_
                                               'gx#module-context::t)
                                              (let ()
                                                (_%K122546%_
                                                 _%rest122547%_
                                                 (cons _%e122554%_
                                                       _%r122548%_)))
                                              (let ()
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; illegal import"
                                                 _%stx122227%_
                                                 _%hd122545%_)))))))))))
                 (_%import1122231%_
                  (lambda (_%ctx122534%_
                           _%K122535%_
                           _%rest122536%_
                           _%r122537%_)
                    (let ((_%dphi122539%_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_%K122535%_
                       _%rest122536%_
                       (cons (##structure
                              gx#import-set::t
                              _%ctx122534%_
                              _%dphi122539%_
                              (map (lambda (_%g122540122542%_)
                                     (gx#core-module-export->import__%
                                      _%g122540122542%_
                                      '#f
                                      _%dphi122539%_))
                                   (##unchecked-structure-ref
                                    _%ctx122534%_
                                    '9
                                    '#f
                                    '#f)))
                             _%r122537%_)))))
                 (_%import-submodule122232%_
                  (lambda (_%hd122501%_ _%K122502%_ _%rest122503%_ _%r122504%_)
                    (let* ((_%e122505122512%_ _%hd122501%_)
                           (_%E122507122516%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e122505122512%_)))
                           (_%E122506122530%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122505122512%_)
                                  (let ((_%e122508122520%_
                                         (gx#syntax-e _%e122505122512%_)))
                                    (let ((_%hd122509122523%_
                                           (##car _%e122508122520%_))
                                          (_%tl122510122525%_
                                           (##cdr _%e122508122520%_)))
                                      (let ((_%spath122528%_
                                             _%tl122510122525%_))
                                        (if '#t
                                            (_%import1122231%_
                                             (_%import-spec-source122235%_
                                              _%spath122528%_)
                                             _%K122502%_
                                             _%rest122503%_
                                             _%r122504%_)
                                            (_%E122507122516%_)))))
                                  (_%E122507122516%_)))))
                      (_%E122506122530%_))))
                 (_%import-runtime122233%_
                  (lambda (_%hd122468%_ _%K122469%_ _%rest122470%_ _%r122471%_)
                    (let* ((_%e122472122479%_ _%hd122468%_)
                           (_%E122474122483%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e122472122479%_)))
                           (_%E122473122497%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122472122479%_)
                                  (let ((_%e122475122487%_
                                         (gx#syntax-e _%e122472122479%_)))
                                    (let ((_%hd122476122490%_
                                           (##car _%e122475122487%_))
                                          (_%tl122477122492%_
                                           (##cdr _%e122475122487%_)))
                                      (let ((_%spath122495%_
                                             _%tl122477122492%_))
                                        (if '#t
                                            (_%K122469%_
                                             _%rest122470%_
                                             (cons (_%import-spec-source122235%_
                                                    _%spath122495%_)
                                                   _%r122471%_))
                                            (_%E122474122483%_)))))
                                  (_%E122474122483%_)))))
                      (_%E122473122497%_))))
                 (_%import-spec122234%_
                  (lambda (_%hd122306%_ _%K122307%_ _%rest122308%_ _%r122309%_)
                    (let* ((_%e122310122327%_ _%hd122306%_)
                           (_%E122319122331%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e122310122327%_)))
                           (_%E122312122442%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122310122327%_)
                                  (let ((_%e122320122335%_
                                         (gx#syntax-e _%e122310122327%_)))
                                    (let ((_%hd122321122338%_
                                           (##car _%e122320122335%_))
                                          (_%tl122322122340%_
                                           (##cdr _%e122320122335%_)))
                                      (if (gx#stx-pair? _%tl122322122340%_)
                                          (let ((_%e122323122343%_
                                                 (gx#syntax-e
                                                  _%tl122322122340%_)))
                                            (let ((_%hd122324122346%_
                                                   (##car _%e122323122343%_))
                                                  (_%tl122325122348%_
                                                   (##cdr _%e122323122343%_)))
                                              (let* ((_%path122351%_
                                                      _%hd122324122346%_)
                                                     (_%specs122353%_
                                                      _%tl122325122348%_))
                                                (if '#t
                                                    (let ((_%src-ctx122355%_
                                                           (_%import-spec-source122235%_
                                                            _%path122351%_))
                                                          (_%exports122356%_
                                                           (make-hash-table))
                                                          (_%specs122357%_
                                                           (gx#syntax->list
                                                            _%specs122353%_)))
                                                      (for-each
                                                       (lambda (_%out122359%_)
                                                         (hash-put!
                                                          _%exports122356%_
                                                          (cons (##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%out122359%_
                         '3
                         '#f
                         '#f)
                        (##unchecked-structure-ref _%out122359%_ '4 '#f '#f))
                  _%out122359%_))
               (##unchecked-structure-ref _%src-ctx122355%_ '9 '#f '#f))
              (_%K122307%_
               _%rest122308%_
               (__foldl1
                (lambda (_%spec122361%_ _%r122362%_)
                  (let* ((_%e122363122379%_ _%spec122361%_)
                         (_%E122365122383%_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _%e122363122379%_)))
                         (_%E122364122438%_
                          (lambda ()
                            (if (gx#stx-pair? _%e122363122379%_)
                                (let ((_%e122366122387%_
                                       (gx#syntax-e _%e122363122379%_)))
                                  (let ((_%hd122367122390%_
                                         (##car _%e122366122387%_))
                                        (_%tl122368122392%_
                                         (##cdr _%e122366122387%_)))
                                    (let ((_%phi122395%_ _%hd122367122390%_))
                                      (if (gx#stx-pair? _%tl122368122392%_)
                                          (let ((_%e122369122397%_
                                                 (gx#syntax-e
                                                  _%tl122368122392%_)))
                                            (let ((_%hd122370122400%_
                                                   (##car _%e122369122397%_))
                                                  (_%tl122371122402%_
                                                   (##cdr _%e122369122397%_)))
                                              (let ((_%name122405%_
                                                     _%hd122370122400%_))
                                                (if (gx#stx-pair?
                                                     _%tl122371122402%_)
                                                    (let ((_%e122372122407%_
                                                           (gx#syntax-e
                                                            _%tl122371122402%_)))
                                                      (let ((_%hd122373122410%_
                                                             (##car _%e122372122407%_))
                                                            (_%tl122374122412%_
                                                             (##cdr _%e122372122407%_)))
                                                        (let ((_%src-phi122415%_
                                                               _%hd122373122410%_))
                                                          (if (gx#stx-pair?
                                                               _%tl122374122412%_)
                                                              (let ((_%e122375122417%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl122374122412%_)))
                        (let ((_%hd122376122420%_ (##car _%e122375122417%_))
                              (_%tl122377122422%_ (##cdr _%e122375122417%_)))
                          (let ((_%src-name122425%_ _%hd122376122420%_))
                            (if (gx#stx-null? _%tl122377122422%_)
                                (if (and (gx#stx-fixnum? _%src-phi122415%_)
                                         (gx#identifier? _%src-name122425%_)
                                         (gx#stx-fixnum? _%phi122395%_)
                                         (gx#identifier? _%name122405%_))
                                    (let ((_%src-phi122427%_
                                           (gx#stx-e _%src-phi122415%_))
                                          (_%src-name122428%_
                                           (gx#core-identifier-key
                                            _%src-name122425%_))
                                          (_%phi122429%_
                                           (gx#stx-e _%phi122395%_))
                                          (_%name122430%_
                                           (gx#core-identifier-key
                                            _%name122405%_)))
                                      (let ((_%$e122432%_
                                             (hash-get
                                              _%exports122356%_
                                              (cons _%src-phi122427%_
                                                    _%src-name122428%_))))
                                        (if _%$e122432%_
                                            ((lambda (_%out122435%_)
                                               (cons (gx#core-module-export->import__%
                                                      _%out122435%_
                                                      _%name122430%_
                                                      (fx- _%phi122429%_
                                                           _%src-phi122427%_))
                                                     _%r122362%_))
                                             _%$e122432%_)
                                            (let ()
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; no matching export"
                                               _%stx122227%_
                                               _%hd122306%_)))))
                                    (_%E122365122383%_))
                                (_%E122365122383%_)))))
                      (_%E122365122383%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E122365122383%_)))))
                                          (_%E122365122383%_)))))
                                (_%E122365122383%_)))))
                    (_%E122364122438%_)))
                _%r122309%_
                _%specs122357%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E122319122331%_)))))
                                          (_%E122319122331%_))))
                                  (_%E122319122331%_))))
                           (_%E122311122464%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122310122327%_)
                                  (let ((_%e122313122446%_
                                         (gx#syntax-e _%e122310122327%_)))
                                    (let ((_%hd122314122449%_
                                           (##car _%e122313122446%_))
                                          (_%tl122315122451%_
                                           (##cdr _%e122313122446%_)))
                                      (if (gx#stx-pair? _%tl122315122451%_)
                                          (let ((_%e122316122454%_
                                                 (gx#syntax-e
                                                  _%tl122315122451%_)))
                                            (let ((_%hd122317122457%_
                                                   (##car _%e122316122454%_))
                                                  (_%tl122318122459%_
                                                   (##cdr _%e122316122454%_)))
                                              (let ((_%path122462%_
                                                     _%hd122317122457%_))
                                                (if (gx#stx-null?
                                                     _%tl122318122459%_)
                                                    (if '#t
                                                        (_%K122307%_
                                                         _%rest122308%_
                                                         (cons (_%import-spec-source122235%_
                                                                _%path122462%_)
                                                               _%r122309%_))
                                                        (_%E122312122442%_))
                                                    (_%E122312122442%_)))))
                                          (_%E122312122442%_))))
                                  (_%E122312122442%_)))))
                      (_%E122311122464%_))))
                 (_%import-spec-source122235%_
                  (lambda (_%spath122304%_)
                    (gx#core-import-nested-module
                     _%spath122304%_
                     _%stx122227%_)))
                 (_%import!122236%_
                  (lambda (_%rbody122249%_)
                    (letrec* ((_%current-ctx122251%_
                               (gx#current-expander-context))
                              (_%deps122252%_ (make-hash-table-eq))
                              (_%bind!122253%_
                               (lambda (_%hd122302%_)
                                 (gx#core-bind-import!__1
                                  _%hd122302%_
                                  _%current-ctx122251%_))))
                      (let _%lp122255%_ ((_%rest122257%_ _%rbody122249%_)
                                         (_%body122258%_ '()))
                        (let* ((_%rest122259122267%_ _%rest122257%_)
                               (_%else122261122278%_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _%current-ctx122251%_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _%current-ctx122251%_
                                       (__foldl1
                                        cons
                                        (##unchecked-structure-ref
                                         _%current-ctx122251%_
                                         '8
                                         '#f
                                         '#f)
                                        _%body122258%_)
                                       '8
                                       '#f
                                       '#f)
                                      '#!void)
                                  (hash-for-each
                                   (lambda (_%ctx122275%_ _%_122276%_)
                                     (gx#eval-module _%ctx122275%_))
                                   _%deps122252%_)
                                  _%body122258%_))
                               (_%K122263122290%_
                                (lambda (_%rest122281%_ _%hd122282%_)
                                  (if (##structure-direct-instance-of?
                                       _%hd122282%_
                                       'gx#module-import::t)
                                      (let ()
                                        (_%bind!122253%_ _%hd122282%_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _%hd122282%_
                                                   '3
                                                   '#f
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _%hd122282%_
                                                            '1
                                                            '#f
                                                            '#f)
                                                           '3
                                                           '#f
                                                           '#f)))
                                            (hash-put!
                                             _%deps122252%_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _%hd122282%_
                                               '1
                                               '#f
                                               '#f)
                                              '1
                                              '#f
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _%hd122282%_
                                           'gx#import-set::t)
                                          (let ()
                                            (for-each
                                             _%bind!122253%_
                                             (##unchecked-structure-ref
                                              _%hd122282%_
                                              '3
                                              '#f
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _%hd122282%_
                                                  '2
                                                  '#f
                                                  '#f))
                                                (hash-put!
                                                 _%deps122252%_
                                                 (##unchecked-structure-ref
                                                  _%hd122282%_
                                                  '1
                                                  '#f
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_%$e122286%_
                                                 (##structure-instance-of?
                                                  _%hd122282%_
                                                  'gx#module-context::t)))
                                            (if _%$e122286%_
                                                _%$e122286%_
                                                (let ()
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Unexpected import"
                                                   _%stx122227%_
                                                   _%hd122282%_))))))
                                  (_%lp122255%_
                                   _%rest122281%_
                                   (cons _%hd122282%_ _%body122258%_)))))
                          (if (##pair? _%rest122259122267%_)
                              (let ((_%hd122264122293%_
                                     (##car _%rest122259122267%_))
                                    (_%tl122265122295%_
                                     (##cdr _%rest122259122267%_)))
                                (let* ((_%hd122298%_ _%hd122264122293%_)
                                       (_%rest122300%_ _%tl122265122295%_))
                                  (_%K122263122290%_
                                   _%rest122300%_
                                   _%hd122298%_)))
                              (_%else122261122278%_)))))))
                 (_%expanded-import?122237%_
                  (lambda (_%e122241%_)
                    (let ((_%$e122243%_
                           (##structure-direct-instance-of?
                            _%e122241%_
                            'gx#import-set::t)))
                      (if _%$e122243%_
                          _%$e122243%_
                          (let ((_%$e122246%_
                                 (##structure-direct-instance-of?
                                  _%e122241%_
                                  'gx#module-import::t)))
                            (if _%$e122246%_
                                _%$e122246%_
                                (##structure-instance-of?
                                 _%e122241%_
                                 'gx#module-context::t))))))))
          (let ((_%rbody122239%_
                 (gx#core-expand-import/export
                  _%stx122227%_
                  _%expanded-import?122237%_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _%expand1122230%_)))
            (if _%internal-expand?122228%_
                (reverse _%rbody122239%_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_%import!122236%_ _%rbody122239%_))
                 (gx#stx-source _%stx122227%_)))))))
    (define gx#core-expand-import%__0
      (lambda (_%stx122566%_)
        (let ((_%internal-expand?122568%_ '#f))
          (gx#core-expand-import%__%
           _%stx122566%_
           _%internal-expand?122568%_))))
    (define gx#core-expand-import%
      (lambda _g125215_
        (let ((_g125214_ (##length _g125215_)))
          (cond ((##fx= _g125214_ 1)
                 (apply (lambda (_%stx122566%_)
                          (gx#core-expand-import%__0 _%stx122566%_))
                        _g125215_))
                ((##fx= _g125214_ 2)
                 (apply (lambda (_%stx122570%_ _%internal-expand?122571%_)
                          (gx#core-expand-import%__%
                           _%stx122570%_
                           _%internal-expand?122571%_))
                        _g125215_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g125215_))))))
    (define gx#core-import-nested-module
      (lambda (_%spath122154%_ _%where122155%_)
        (let* ((_%e122156122163%_ _%spath122154%_)
               (_%E122158122167%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122156122163%_)))
               (_%E122157122222%_
                (lambda ()
                  (if (gx#stx-pair? _%e122156122163%_)
                      (let ((_%e122159122171%_
                             (gx#syntax-e _%e122156122163%_)))
                        (let ((_%hd122160122174%_ (##car _%e122159122171%_))
                              (_%tl122161122176%_ (##cdr _%e122159122171%_)))
                          (let* ((_%origin122179%_ _%hd122160122174%_)
                                 (_%sub122181%_ _%tl122161122176%_))
                            (if '#t
                                (let ((_%origin-ctx122183%_
                                       (if (gx#stx-false? _%origin122179%_)
                                           (gx#current-expander-context)
                                           (gx#import-module__0
                                            _%origin122179%_))))
                                  (let _%lp122185%_ ((_%rest122187%_
                                                      _%sub122181%_)
                                                     (_%ctx122188%_
                                                      _%origin-ctx122183%_))
                                    (let* ((_%e122189122196%_ _%rest122187%_)
                                           (_%E122191122200%_
                                            (lambda () _%ctx122188%_))
                                           (_%E122190122218%_
                                            (lambda ()
                                              (if (gx#stx-pair?
                                                   _%e122189122196%_)
                                                  (let ((_%e122192122204%_
                                                         (gx#syntax-e
                                                          _%e122189122196%_)))
                                                    (let ((_%hd122193122207%_
                                                           (##car _%e122192122204%_))
                                                          (_%tl122194122209%_
                                                           (##cdr _%e122192122204%_)))
                                                      (let* ((_%id122212%_
                                                              _%hd122193122207%_)
                                                             (_%rest122214%_
                                                              _%tl122194122209%_))
                                                        (if '#t
                                                            (let ((_%bind122216%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#resolve-identifier__%
                            _%id122212%_
                            '0
                            _%ctx122188%_)))
                      (if (and (##structure-direct-instance-of?
                                _%bind122216%_
                                'gx#syntax-binding::t)
                               (##structure-instance-of?
                                (##unchecked-structure-ref
                                 _%bind122216%_
                                 '4
                                 '#f
                                 '#f)
                                'gx#module-context::t))
                          '#!void
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; not bound as module"
                           _%where122155%_
                           _%spath122154%_
                           _%id122212%_))
                      (_%lp122185%_
                       _%rest122214%_
                       (##unchecked-structure-ref _%bind122216%_ '4 '#f '#f)))
                    (_%E122191122200%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E122191122200%_)))))
                                      (_%E122190122218%_))))
                                (_%E122158122167%_)))))
                      (_%E122158122167%_)))))
          (_%E122157122222%_))))
    (define gx#core-expand-import-source
      (lambda (_%hd122152%_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _%hd122152%_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_%stx121646%_ _%internal-expand?121647%_)
        (letrec* ((_%make-export__125143125144%_
                   (lambda (_%bind122100%_
                            _%phi122101%_
                            _%ctx122102%_
                            _%name122103%_)
                     (let* ((_%key122105%_
                             (##unchecked-structure-ref
                              _%bind122100%_
                              '2
                              '#f
                              '#f))
                            (_%export-key122107%_
                             (if _%name122103%_
                                 (gx#core-identifier-key _%name122103%_)
                                 _%key122105%_)))
                       (##structure
                        gx#module-export::t
                        _%ctx122102%_
                        _%key122105%_
                        _%phi122101%_
                        _%export-key122107%_
                        (let ((_%$e122110%_
                               (##structure-instance-of?
                                _%bind122100%_
                                'gx#extern-binding::t)))
                          (if _%$e122110%_
                              _%$e122110%_
                              (##structure-direct-instance-of?
                               _%bind122100%_
                               'gx#import-binding::t)))))))
                  (_%make-export__0__125145125148%_
                   (lambda (_%bind122116%_)
                     (let* ((_%phi122118%_ (gx#current-export-expander-phi))
                            (_%ctx122120%_ (gx#current-expander-context))
                            (_%name122122%_ '#f))
                       (_%make-export__125143125144%_
                        _%bind122116%_
                        _%phi122118%_
                        _%ctx122120%_
                        _%name122122%_))))
                  (_%make-export__1__125146125149%_
                   (lambda (_%bind122124%_ _%phi122125%_)
                     (let* ((_%ctx122127%_ (gx#current-expander-context))
                            (_%name122129%_ '#f))
                       (_%make-export__125143125144%_
                        _%bind122124%_
                        _%phi122125%_
                        _%ctx122127%_
                        _%name122129%_))))
                  (_%make-export__2__125147125150%_
                   (lambda (_%bind122131%_ _%phi122132%_ _%ctx122133%_)
                     (let ((_%name122135%_ '#f))
                       (_%make-export__125143125144%_
                        _%bind122131%_
                        _%phi122132%_
                        _%ctx122133%_
                        _%name122135%_))))
                  (_%make-export121649%_
                   (lambda _g125217_
                     (let ((_g125216_ (##length _g125217_)))
                       (cond ((##fx= _g125216_ 1)
                              (apply (lambda (_%bind122116%_)
                                       (_%make-export__0__125145125148%_
                                        _%bind122116%_))
                                     _g125217_))
                             ((##fx= _g125216_ 2)
                              (apply (lambda (_%bind122124%_ _%phi122125%_)
                                       (_%make-export__1__125146125149%_
                                        _%bind122124%_
                                        _%phi122125%_))
                                     _g125217_))
                             ((##fx= _g125216_ 3)
                              (apply (lambda (_%bind122131%_
                                              _%phi122132%_
                                              _%ctx122133%_)
                                       (_%make-export__2__125147125150%_
                                        _%bind122131%_
                                        _%phi122132%_
                                        _%ctx122133%_))
                                     _g125217_))
                             ((##fx= _g125216_ 4)
                              (apply (lambda (_%bind122137%_
                                              _%phi122138%_
                                              _%ctx122139%_
                                              _%name122140%_)
                                       (_%make-export__125143125144%_
                                        _%bind122137%_
                                        _%phi122138%_
                                        _%ctx122139%_
                                        _%name122140%_))
                                     _g125217_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g125217_))))))
                  (_%expand1121650%_
                   (lambda (_%hd121805%_
                            _%K121806%_
                            _%rest121807%_
                            _%r121808%_)
                     (let* ((_%e121809121841%_ _%hd121805%_)
                            (_%E121836121845%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _%stx121646%_
                                _%hd121805%_)))
                            (_%E121826121929%_
                             (lambda ()
                               (if (gx#stx-pair? _%e121809121841%_)
                                   (let ((_%e121837121849%_
                                          (gx#syntax-e _%e121809121841%_)))
                                     (let ((_%hd121838121852%_
                                            (##car _%e121837121849%_))
                                           (_%tl121839121854%_
                                            (##cdr _%e121837121849%_)))
                                       (if (eq? (gx#stx-e _%hd121838121852%_)
                                                'import:)
                                           (let ((_%in121857%_
                                                  _%tl121839121854%_))
                                             (if (gx#stx-list? _%in121857%_)
                                                 (let _%lp121859%_ ((_%in-rest121861%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%in121857%_)
                            (_%r121862%_ _%r121808%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%e121863121870%_
                                                           _%in-rest121861%_)
                                                          (_%E121865121874%_
                                                           (lambda ()
                                                             (_%K121806%_
                                                              _%rest121807%_
                                                              _%r121862%_)))
                                                          (_%E121864121925%_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%e121863121870%_)
                         (let ((_%e121866121878%_
                                (gx#syntax-e _%e121863121870%_)))
                           (let ((_%hd121867121881%_ (##car _%e121866121878%_))
                                 (_%tl121868121883%_
                                  (##cdr _%e121866121878%_)))
                             (let* ((_%hd121886%_ _%hd121867121881%_)
                                    (_%in-rest121888%_ _%tl121868121883%_))
                               (if '#t
                                   (let ((_%src121923%_
                                          (if (gx#core-bound-module?
                                               _%hd121886%_)
                                              (let ()
                                                (gx#syntax-local-e__0
                                                 _%hd121886%_))
                                              (if (gx#core-library-module-path?
                                                   _%hd121886%_)
                                                  (let ()
                                                    (gx#import-module__0
                                                     (gx#core-resolve-library-module-path
                                                      _%hd121886%_)))
                                                  (if (gx#core-library-relative-module-path?
                                                       _%hd121886%_)
                                                      (let ()
                                                        (gx#import-module__0
                                                         (gx#core-resolve-library-relative-module-path
                                                          _%hd121886%_)))
                                                      (if (gx#stx-string?
                                                           _%hd121886%_)
                                                          (let ()
                                                            (gx#import-module__0
                                                             (gx#core-resolve-module-path__%
                                                              _%hd121886%_
                                                              (gx#stx-source
                                                               _%stx121646%_))))
                                                          (let ()
                                                            (let* ((_%e121894121901%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd121886%_)
                           (_%E121896121905%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; illegal re-export"
                               _%stx121646%_
                               _%hd121886%_)))
                           (_%E121895121919%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121894121901%_)
                                  (let ((_%e121897121909%_
                                         (gx#syntax-e _%e121894121901%_)))
                                    (let ((_%hd121898121912%_
                                           (##car _%e121897121909%_))
                                          (_%tl121899121914%_
                                           (##cdr _%e121897121909%_)))
                                      (if (eq? (gx#stx-e _%hd121898121912%_)
                                               'in:)
                                          (let ((_%spath121917%_
                                                 _%tl121899121914%_))
                                            (if '#t
                                                (gx#core-import-nested-module
                                                 _%spath121917%_
                                                 _%stx121646%_)
                                                (_%E121896121905%_)))
                                          (_%E121896121905%_))))
                                  (_%E121896121905%_)))))
                      (_%E121895121919%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%lp121859%_
                                      _%in-rest121888%_
                                      (_%export-imports121651%_
                                       _%src121923%_
                                       _%r121862%_)))
                                   (_%E121865121874%_)))))
                         (_%E121865121874%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E121864121925%_)))
                                                 (_%E121836121845%_)))
                                           (_%E121836121845%_))))
                                   (_%E121836121845%_))))
                            (_%E121813121969%_
                             (lambda ()
                               (if (gx#stx-pair? _%e121809121841%_)
                                   (let ((_%e121827121933%_
                                          (gx#syntax-e _%e121809121841%_)))
                                     (let ((_%hd121828121936%_
                                            (##car _%e121827121933%_))
                                           (_%tl121829121938%_
                                            (##cdr _%e121827121933%_)))
                                       (if (eq? (gx#stx-e _%hd121828121936%_)
                                                'rename:)
                                           (if (gx#stx-pair?
                                                _%tl121829121938%_)
                                               (let ((_%e121830121941%_
                                                      (gx#syntax-e
                                                       _%tl121829121938%_)))
                                                 (let ((_%hd121831121944%_
                                                        (##car _%e121830121941%_))
                                                       (_%tl121832121946%_
                                                        (##cdr _%e121830121941%_)))
                                                   (let ((_%id121949%_
                                                          _%hd121831121944%_))
                                                     (if (gx#stx-pair?
                                                          _%tl121832121946%_)
                                                         (let ((_%e121833121951%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl121832121946%_)))
                   (let ((_%hd121834121954%_ (##car _%e121833121951%_))
                         (_%tl121835121956%_ (##cdr _%e121833121951%_)))
                     (let ((_%name121959%_ _%hd121834121954%_))
                       (if (gx#stx-null? _%tl121835121956%_)
                           (if '#t
                               (let* ((_%phi121961%_
                                       (gx#current-export-expander-phi))
                                      (_%$e121963%_
                                       (gx#core-resolve-identifier__1
                                        _%id121949%_
                                        _%phi121961%_)))
                                 (if _%$e121963%_
                                     ((lambda (_%bind121966%_)
                                        (_%K121806%_
                                         _%rest121807%_
                                         (cons (_%make-export__125143125144%_
                                                _%bind121966%_
                                                _%phi121961%_
                                                (gx#current-expander-context)
                                                _%name121959%_)
                                               _%r121808%_)))
                                      _%$e121963%_)
                                     (let ()
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Reference to unbound identifier"
                                        _%stx121646%_
                                        _%hd121805%_
                                        _%id121949%_))))
                               (_%E121826121929%_))
                           (_%E121826121929%_)))))
                 (_%E121826121929%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E121826121929%_))
                                           (_%E121826121929%_))))
                                   (_%E121826121929%_))))
                            (_%E121812122019%_
                             (lambda ()
                               (if (gx#stx-pair? _%e121809121841%_)
                                   (let ((_%e121814121973%_
                                          (gx#syntax-e _%e121809121841%_)))
                                     (let ((_%hd121815121976%_
                                            (##car _%e121814121973%_))
                                           (_%tl121816121978%_
                                            (##cdr _%e121814121973%_)))
                                       (if (eq? (gx#stx-e _%hd121815121976%_)
                                                'spec:)
                                           (if (gx#stx-pair?
                                                _%tl121816121978%_)
                                               (let ((_%e121817121981%_
                                                      (gx#syntax-e
                                                       _%tl121816121978%_)))
                                                 (let ((_%hd121818121984%_
                                                        (##car _%e121817121981%_))
                                                       (_%tl121819121986%_
                                                        (##cdr _%e121817121981%_)))
                                                   (let ((_%phi121989%_
                                                          _%hd121818121984%_))
                                                     (if (gx#stx-pair?
                                                          _%tl121819121986%_)
                                                         (let ((_%e121820121991%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl121819121986%_)))
                   (let ((_%hd121821121994%_ (##car _%e121820121991%_))
                         (_%tl121822121996%_ (##cdr _%e121820121991%_)))
                     (let ((_%id121999%_ _%hd121821121994%_))
                       (if (gx#stx-pair? _%tl121822121996%_)
                           (let ((_%e121823122001%_
                                  (gx#syntax-e _%tl121822121996%_)))
                             (let ((_%hd121824122004%_
                                    (##car _%e121823122001%_))
                                   (_%tl121825122006%_
                                    (##cdr _%e121823122001%_)))
                               (let ((_%name122009%_ _%hd121824122004%_))
                                 (if (gx#stx-null? _%tl121825122006%_)
                                     (if (and (gx#stx-fixnum? _%phi121989%_)
                                              (gx#identifier? _%id121999%_)
                                              (gx#identifier? _%name122009%_))
                                         (let* ((_%phi122011%_
                                                 (gx#stx-e _%phi121989%_))
                                                (_%$e122013%_
                                                 (gx#core-resolve-identifier__1
                                                  _%id121999%_
                                                  _%phi122011%_)))
                                           (if _%$e122013%_
                                               ((lambda (_%bind122016%_)
                                                  (_%K121806%_
                                                   _%rest121807%_
                                                   (cons (_%make-export__125143125144%_
                                                          _%bind122016%_
                                                          _%phi122011%_
                                                          (gx#current-expander-context)
                                                          _%name122009%_)
                                                         _%r121808%_)))
                                                _%$e122013%_)
                                               (let ()
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Reference to unbound identifier"
                                                  _%stx121646%_
                                                  _%hd121805%_
                                                  _%id121999%_))))
                                         (_%E121813121969%_))
                                     (_%E121813121969%_)))))
                           (_%E121813121969%_)))))
                 (_%E121813121969%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E121813121969%_))
                                           (_%E121813121969%_))))
                                   (_%E121813121969%_))))
                            (_%E121811122031%_
                             (lambda ()
                               (let ((_%id122023%_ _%e121809121841%_))
                                 (if (gx#identifier? _%id122023%_)
                                     (let ((_%$e122025%_
                                            (gx#core-resolve-identifier__1
                                             _%id122023%_
                                             (gx#current-export-expander-phi))))
                                       (if _%$e122025%_
                                           ((lambda (_%bind122028%_)
                                              (_%K121806%_
                                               _%rest121807%_
                                               (cons (_%make-export__0__125145125148%_
                                                      _%bind122028%_)
                                                     _%r121808%_)))
                                            _%$e122025%_)
                                           (let ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Reference to unbound identifier"
                                              _%stx121646%_
                                              _%hd121805%_))))
                                     (_%E121812122019%_)))))
                            (_%E121810122095%_
                             (lambda ()
                               (if (eq? (gx#stx-e _%e121809121841%_) '#t)
                                   (if '#t
                                       (let* ((_%current-ctx122035%_
                                               (gx#current-expander-context))
                                              (_%current-phi122037%_
                                               (gx#current-export-expander-phi))
                                              (_%phi-ctx122039%_
                                               (gx#core-context-shift
                                                _%current-ctx122035%_
                                                _%current-phi122037%_))
                                              (_%phi-bind122041%_
                                               (hash->list
                                                (##unchecked-structure-ref
                                                 _%phi-ctx122039%_
                                                 '2
                                                 '#f
                                                 '#f))))
                                         (let _%lp122044%_ ((_%bind-rest122046%_
                                                             _%phi-bind122041%_)
                                                            (_%set122047%_
                                                             '()))
                                           (let* ((_%bind-rest122048122058%_
                                                   _%bind-rest122046%_)
                                                  (_%else122050122066%_
                                                   (lambda ()
                                                     (_%K121806%_
                                                      _%rest121807%_
                                                      (cons (##structure
                                                             gx#export-set::t
                                                             '#f
                                                             _%current-phi122037%_
                                                             _%set122047%_)
                                                            _%r121808%_))))
                                                  (_%K122052122076%_
                                                   (lambda (_%bind-rest122069%_
                                                            _%bind122070%_
                                                            _%key122071%_)
                                                     (if (or (##structure-direct-instance-of?
                                                              _%bind122070%_
                                                              'gx#import-binding::t)
                                                             (gx#private-feature-binding?
                                                              _%bind122070%_))
                                                         (_%lp122044%_
                                                          _%bind-rest122069%_
                                                          _%set122047%_)
                                                         (_%lp122044%_
                                                          _%bind-rest122069%_
                                                          (cons (_%make-export__2__125147125150%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%bind122070%_
                         _%current-phi122037%_
                         _%current-ctx122035%_)
                        _%set122047%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _%bind-rest122048122058%_)
                                                 (let ((_%hd122053122079%_
                                                        (##car _%bind-rest122048122058%_))
                                                       (_%tl122054122081%_
                                                        (##cdr _%bind-rest122048122058%_)))
                                                   (if (##pair? _%hd122053122079%_)
                                                       (let ((_%hd122055122084%_
                                                              (##car _%hd122053122079%_))
                                                             (_%tl122056122086%_
                                                              (##cdr _%hd122053122079%_)))
                                                         (let* ((_%key122089%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd122055122084%_)
                        (_%bind122091%_ _%tl122056122086%_)
                        (_%bind-rest122093%_ _%tl122054122081%_))
                   (_%K122052122076%_
                    _%bind-rest122093%_
                    _%bind122091%_
                    _%key122089%_)))
               (_%else122050122066%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%else122050122066%_)))))
                                       (_%E121811122031%_))
                                   (_%E121811122031%_)))))
                       (_%E121810122095%_))))
                  (_%export-imports121651%_
                   (lambda (_%src121681%_ _%r121682%_)
                     (letrec* ((_%current-ctx121684%_
                                (gx#current-expander-context))
                               (_%current-phi121685%_
                                (gx#current-export-expander-phi))
                               (_%import->export121686%_
                                (lambda (_%in121767%_)
                                  (let* ((_%in121768121776%_ _%in121767%_)
                                         (_%E121770121780%_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _%in121768121776%_
                                                   '((module-import
                                                      out
                                                      key
                                                      phi)))
                                            '#!void))
                                         (_%K121771121787%_
                                          (lambda (_%phi121783%_
                                                   _%key121784%_
                                                   _%out121785%_)
                                            (##structure
                                             gx#module-export::t
                                             _%current-ctx121684%_
                                             _%key121784%_
                                             _%phi121783%_
                                             _%key121784%_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _%in121768121776%_
                                         'gx#module-import::t)
                                        (let* ((_%e121772121790%_
                                                (##unchecked-structure-ref
                                                 _%in121768121776%_
                                                 '1
                                                 '#f
                                                 '#f))
                                               (_%out121793%_
                                                _%e121772121790%_)
                                               (_%e121773121795%_
                                                (##unchecked-structure-ref
                                                 _%in121768121776%_
                                                 '2
                                                 '#f
                                                 '#f))
                                               (_%key121798%_
                                                _%e121773121795%_)
                                               (_%e121774121800%_
                                                (##unchecked-structure-ref
                                                 _%in121768121776%_
                                                 '3
                                                 '#f
                                                 '#f))
                                               (_%phi121803%_
                                                _%e121774121800%_))
                                          (_%K121771121787%_
                                           _%phi121803%_
                                           _%key121798%_
                                           _%out121793%_))
                                        (_%E121770121780%_)))))
                               (_%fold-e121687%_
                                (lambda (_%in121689%_ _%r121690%_)
                                  (let* ((_%in121691121705%_ _%in121689%_)
                                         (_%else121694121713%_
                                          (lambda () _%r121690%_)))
                                    (let ((_%K121700121749%_
                                           (lambda (_%phi121745%_
                                                    _%key121746%_
                                                    _%out121747%_)
                                             (if (and (fx= _%phi121745%_
                                                           _%current-phi121685%_)
                                                      (eq? _%src121681%_
                                                           (##unchecked-structure-ref
                                                            _%out121747%_
                                                            '1
                                                            '#f
                                                            '#f)))
                                                 (cons (_%import->export121686%_
                                                        _%in121689%_)
                                                       _%r121690%_)
                                                 _%r121690%_)))
                                          (_%K121696121724%_
                                           (lambda (_%imports121717%_
                                                    _%phi121718%_
                                                    _%ctx121719%_)
                                             (if (and (fx= _%phi121718%_
                                                           _%current-phi121685%_)
                                                      (eq? _%src121681%_
                                                           _%ctx121719%_))
                                                 (__foldl1
                                                  (lambda (_%in121721%_
                                                           _%r121722%_)
                                                    (cons (_%import->export121686%_
                                                           _%in121721%_)
                                                          _%r121722%_))
                                                  _%r121690%_
                                                  _%imports121717%_)
                                                 _%r121690%_))))
                                      (let ((_%try-match121693121742%_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _%in121691121705%_
                                                    'gx#import-set::t)
                                                   (let* ((_%e121697121727%_
                                                           (##unchecked-structure-ref
                                                            _%in121691121705%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                          (_%e121698121732%_
                                                           (##unchecked-structure-ref
                                                            _%in121691121705%_
                                                            '2
                                                            '#f
                                                            '#f))
                                                          (_%e121699121737%_
                                                           (##unchecked-structure-ref
                                                            _%in121691121705%_
                                                            '3
                                                            '#f
                                                            '#f)))
                                                     (let ((_%ctx121730%_
                                                            _%e121697121727%_)
                                                           (_%phi121735%_
                                                            _%e121698121732%_)
                                                           (_%imports121740%_
                                                            _%e121699121737%_))
                                                       (_%K121696121724%_
                                                        _%imports121740%_
                                                        _%phi121735%_
                                                        _%ctx121730%_)))
                                                   (_%else121694121713%_)))))
                                        (if (##structure-direct-instance-of?
                                             _%in121691121705%_
                                             'gx#module-import::t)
                                            (let* ((_%e121701121752%_
                                                    (##unchecked-structure-ref
                                                     _%in121691121705%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                   (_%e121702121757%_
                                                    (##unchecked-structure-ref
                                                     _%in121691121705%_
                                                     '2
                                                     '#f
                                                     '#f))
                                                   (_%e121703121762%_
                                                    (##unchecked-structure-ref
                                                     _%in121691121705%_
                                                     '3
                                                     '#f
                                                     '#f)))
                                              (let ((_%out121755%_
                                                     _%e121701121752%_)
                                                    (_%key121760%_
                                                     _%e121702121757%_)
                                                    (_%phi121765%_
                                                     _%e121703121762%_))
                                                (_%K121700121749%_
                                                 _%phi121765%_
                                                 _%key121760%_
                                                 _%out121755%_)))
                                            (_%try-match121693121742%_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _%src121681%_
                              _%current-phi121685%_
                              (__foldl1
                               _%fold-e121687%_
                               '()
                               (##unchecked-structure-ref
                                _%current-ctx121684%_
                                '8
                                '#f
                                '#f)))
                             _%r121682%_))))
                  (_%export!121652%_
                   (lambda (_%rbody121668%_)
                     (letrec* ((_%current-ctx121670%_
                                (gx#current-expander-context))
                               (_%fold-e121671%_
                                (lambda (_%out121675%_ _%r121676%_)
                                  (if (##structure-direct-instance-of?
                                       _%out121675%_
                                       'gx#module-export::t)
                                      (let () (cons _%out121675%_ _%r121676%_))
                                      (if (##structure-direct-instance-of?
                                           _%out121675%_
                                           'gx#export-set::t)
                                          (let ()
                                            (__foldl1
                                             cons
                                             _%r121676%_
                                             (##unchecked-structure-ref
                                              _%out121675%_
                                              '3
                                              '#f
                                              '#f)))
                                          (let () _%r121676%_))))))
                       (let ((_%body121673%_ (reverse _%rbody121668%_)))
                         (##unchecked-structure-set!
                          _%current-ctx121670%_
                          (__foldl1
                           _%fold-e121671%_
                           (##unchecked-structure-ref
                            _%current-ctx121670%_
                            '9
                            '#f
                            '#f)
                           _%body121673%_)
                          '9
                          '#f
                          '#f)
                         _%body121673%_))))
                  (_%expanded-export?121653%_
                   (lambda (_%e121663%_)
                     (let ((_%$e121665%_
                            (##structure-direct-instance-of?
                             _%e121663%_
                             'gx#module-export::t)))
                       (if _%$e121665%_
                           _%$e121665%_
                           (##structure-direct-instance-of?
                            _%e121663%_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _%internal-expand?121647%_)
              (let ((_%rbody121659%_
                     (gx#core-expand-import/export
                      _%stx121646%_
                      _%expanded-export?121653%_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _%expand1121650%_)))
                (if _%internal-expand?121647%_
                    (reverse _%rbody121659%_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons
                      '%#export
                      (_%export!121652%_ _%rbody121659%_))
                     (gx#stx-source _%stx121646%_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (let ()
                    (gx#core-quote-syntax__1
                     (gx#core-cons '%#begin '())
                     (gx#stx-source _%stx121646%_)))
                  (let ()
                    (gx#raise-syntax-error
                     '#f
                     '"Illegal context"
                     _%stx121646%_)))))))
    (define gx#core-expand-export%__0
      (lambda (_%stx122145%_)
        (let ((_%internal-expand?122147%_ '#f))
          (gx#core-expand-export%__%
           _%stx122145%_
           _%internal-expand?122147%_))))
    (define gx#core-expand-export%
      (lambda _g125219_
        (let ((_g125218_ (##length _g125219_)))
          (cond ((##fx= _g125218_ 1)
                 (apply (lambda (_%stx122145%_)
                          (gx#core-expand-export%__0 _%stx122145%_))
                        _g125219_))
                ((##fx= _g125218_ 2)
                 (apply (lambda (_%stx122149%_ _%internal-expand?122150%_)
                          (gx#core-expand-export%__%
                           _%stx122149%_
                           _%internal-expand?122150%_))
                        _g125219_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g125219_))))))
    (define gx#core-expand-export-source
      (lambda (_%hd121643%_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _%hd121643%_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_%stx121613%_)
        (let* ((_%e121614121621%_ _%stx121613%_)
               (_%E121616121625%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121614121621%_)))
               (_%E121615121639%_
                (lambda ()
                  (if (gx#stx-pair? _%e121614121621%_)
                      (let ((_%e121617121629%_
                             (gx#syntax-e _%e121614121621%_)))
                        (let ((_%hd121618121632%_ (##car _%e121617121629%_))
                              (_%tl121619121634%_ (##cdr _%e121617121629%_)))
                          (let ((_%body121637%_ _%tl121619121634%_))
                            (if (gx#identifier-list? _%body121637%_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _%body121637%_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _%body121637%_))
                                   (gx#stx-source _%stx121613%_)))
                                (_%E121616121625%_)))))
                      (_%E121616121625%_)))))
          (_%E121615121639%_))))
    (define gx#core-bind-feature!__%
      (lambda (_%id121579%_ _%private?121580%_ _%phi121581%_ _%ctx121582%_)
        (gx#core-bind-syntax!__%
         _%id121579%_
         ((if _%private?121580%_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _%id121579%_))
         _%private?121580%_
         _%phi121581%_
         _%ctx121582%_)))
    (define gx#core-bind-feature!__0
      (lambda (_%id121587%_)
        (let* ((_%private?121589%_ '#f)
               (_%phi121591%_ (gx#current-expander-phi))
               (_%ctx121593%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id121587%_
           _%private?121589%_
           _%phi121591%_
           _%ctx121593%_))))
    (define gx#core-bind-feature!__1
      (lambda (_%id121595%_ _%private?121596%_)
        (let* ((_%phi121598%_ (gx#current-expander-phi))
               (_%ctx121600%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id121595%_
           _%private?121596%_
           _%phi121598%_
           _%ctx121600%_))))
    (define gx#core-bind-feature!__2
      (lambda (_%id121602%_ _%private?121603%_ _%phi121604%_)
        (let ((_%ctx121606%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id121602%_
           _%private?121603%_
           _%phi121604%_
           _%ctx121606%_))))
    (define gx#core-bind-feature!
      (lambda _g125221_
        (let ((_g125220_ (##length _g125221_)))
          (cond ((##fx= _g125220_ 1)
                 (apply (lambda (_%id121587%_)
                          (gx#core-bind-feature!__0 _%id121587%_))
                        _g125221_))
                ((##fx= _g125220_ 2)
                 (apply (lambda (_%id121595%_ _%private?121596%_)
                          (gx#core-bind-feature!__1
                           _%id121595%_
                           _%private?121596%_))
                        _g125221_))
                ((##fx= _g125220_ 3)
                 (apply (lambda (_%id121602%_ _%private?121603%_ _%phi121604%_)
                          (gx#core-bind-feature!__2
                           _%id121602%_
                           _%private?121603%_
                           _%phi121604%_))
                        _g125221_))
                ((##fx= _g125220_ 4)
                 (apply (lambda (_%id121608%_
                                 _%private?121609%_
                                 _%phi121610%_
                                 _%ctx121611%_)
                          (gx#core-bind-feature!__%
                           _%id121608%_
                           _%private?121609%_
                           _%phi121610%_
                           _%ctx121611%_))
                        _g125221_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g125221_))))))))
