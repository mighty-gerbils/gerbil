(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1712121898)
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
      (lambda _%$args125112%_
        (apply make-instance gx#module-import::t _%$args125112%_)))
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
      (lambda _%$args125109%_
        (apply make-instance gx#module-export::t _%$args125109%_)))
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
      (lambda _%$args125106%_
        (apply make-instance gx#import-set::t _%$args125106%_)))
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
      (lambda _%$args125103%_
        (apply make-instance gx#export-set::t _%$args125103%_)))
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
      (lambda _%$args125100%_
        (apply make-instance gx#import-expander::t _%$args125100%_)))
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
      (lambda _%$args125097%_
        (apply make-instance gx#export-expander::t _%$args125097%_)))
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
      (lambda _%$args125094%_
        (apply make-instance gx#import-export-expander::t _%$args125094%_)))
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
      (lambda (_%path125091%_ _%fun125092%_)
        (call-with-input-file
         (cons 'path: (cons _%path125091%_ gx#source-file-settings))
         _%fun125092%_)))
    (define gx#module-context:::init!
      (lambda (_%self125074%_
               _%id125075%_
               _%super125076%_
               _%ns125077%_
               _%path125078%_)
        (let ()
          (let ((_%self125081%_ _%self125074%_))
            (let ()
              (if (##fx< '11 (##structure-length _%self125081%_))
                  (begin
                    (##unchecked-structure-set!
                     _%self125081%_
                     _%id125075%_
                     '1
                     '#f
                     '#f)
                    (##unchecked-structure-set!
                     _%self125081%_
                     (make-hash-table-eq)
                     '2
                     '#f
                     '#f)
                    (##unchecked-structure-set!
                     _%self125081%_
                     _%super125076%_
                     '3
                     '#f
                     '#f)
                    (##unchecked-structure-set! _%self125081%_ '#f '4 '#f '#f)
                    (##unchecked-structure-set! _%self125081%_ '#f '5 '#f '#f)
                    (##unchecked-structure-set!
                     _%self125081%_
                     _%ns125077%_
                     '6
                     '#f
                     '#f)
                    (##unchecked-structure-set!
                     _%self125081%_
                     _%path125078%_
                     '7
                     '#f
                     '#f)
                    (##unchecked-structure-set! _%self125081%_ '() '8 '#f '#f)
                    (##unchecked-structure-set! _%self125081%_ '() '9 '#f '#f)
                    (##unchecked-structure-set! _%self125081%_ '#f '10 '#f '#f)
                    (##unchecked-structure-set! _%self125081%_ '#f '11 '#f '#f)
                    '#!void)
                  (error '"struct-instance-init!: too many arguments for struct"
                         _%self125081%_
                         '11
                         (##vector-length _%self125081%_))))))))
    (__bind-method! gx#module-context::t ':init! gx#module-context:::init! '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_%self124907%_ _%ctx124908%_ _%root124909%_)
        (let ()
          (let ((_%self124912%_ _%self124907%_))
            (let ()
              (let ((_%super124928%_
                     (let ((_%$e124922%_ _%root124909%_))
                       (if _%$e124922%_
                           _%$e124922%_
                           (let ((_%$e124925%_ (gx#core-context-root__0)))
                             (if _%$e124925%_
                                 _%$e124925%_
                                 (let ((__obj125156
                                        (##structure
                                         gx#root-context::t
                                         '#f
                                         '#f)))
                                   (let ((__constructor125157
                                          (direct-method-ref
                                           gx#root-context::t
                                           __obj125156
                                           ':init!)))
                                     (if __constructor125157
                                         (__constructor125157 __obj125156)
                                         (error '"missing constructor method implementation"
                                                'class:
                                                gx#root-context::t
                                                'method:
                                                ':init!)))
                                   __obj125156)))))))
                (if _%ctx124908%_
                    (let ((_%id124931%_
                           (##structure-ref
                            _%ctx124908%_
                            '1
                            gx#expander-context::t
                            '#f))
                          (_%path124932%_
                           (##structure-ref
                            _%ctx124908%_
                            '7
                            gx#module-context::t
                            '#f))
                          (_%in124933%_
                           (map gx#core-module-export->import
                                (##structure-ref
                                 _%ctx124908%_
                                 '9
                                 gx#module-context::t
                                 '#f)))
                          (_%e124934%_
                           (__make-promise
                            (lambda () (gx#eval-module _%ctx124908%_)))))
                      (if (##fx< '8 (##structure-length _%self124912%_))
                          (begin
                            (##unchecked-structure-set!
                             _%self124912%_
                             _%id124931%_
                             '1
                             '#f
                             '#f)
                            (##unchecked-structure-set!
                             _%self124912%_
                             (make-hash-table-eq
                              'size:
                              (##length _%in124933%_))
                             '2
                             '#f
                             '#f)
                            (##unchecked-structure-set!
                             _%self124912%_
                             _%super124928%_
                             '3
                             '#f
                             '#f)
                            (##unchecked-structure-set!
                             _%self124912%_
                             '#f
                             '4
                             '#f
                             '#f)
                            (##unchecked-structure-set!
                             _%self124912%_
                             '#f
                             '5
                             '#f
                             '#f)
                            (##unchecked-structure-set!
                             _%self124912%_
                             _%path124932%_
                             '6
                             '#f
                             '#f)
                            (##unchecked-structure-set!
                             _%self124912%_
                             _%in124933%_
                             '7
                             '#f
                             '#f)
                            (##unchecked-structure-set!
                             _%self124912%_
                             _%e124934%_
                             '8
                             '#f
                             '#f)
                            '#!void)
                          (error '"struct-instance-init!: too many arguments for struct"
                                 _%self124912%_
                                 '8
                                 (##vector-length _%self124912%_)))
                      (##for-each
                       (lambda (_%g124935124937%_)
                         (gx#core-bind-weak-import!__%
                          _%g124935124937%_
                          _%self124912%_))
                       _%in124933%_))
                    (if (##fx< '8 (##structure-length _%self124912%_))
                        (begin
                          (##unchecked-structure-set!
                           _%self124912%_
                           '#f
                           '1
                           '#f
                           '#f)
                          (##unchecked-structure-set!
                           _%self124912%_
                           (make-hash-table-eq)
                           '2
                           '#f
                           '#f)
                          (##unchecked-structure-set!
                           _%self124912%_
                           _%super124928%_
                           '3
                           '#f
                           '#f)
                          (##unchecked-structure-set!
                           _%self124912%_
                           '#f
                           '4
                           '#f
                           '#f)
                          (##unchecked-structure-set!
                           _%self124912%_
                           '#f
                           '5
                           '#f
                           '#f)
                          (##unchecked-structure-set!
                           _%self124912%_
                           '#f
                           '6
                           '#f
                           '#f)
                          (##unchecked-structure-set!
                           _%self124912%_
                           '()
                           '7
                           '#f
                           '#f)
                          (##unchecked-structure-set!
                           _%self124912%_
                           '#f
                           '8
                           '#f
                           '#f)
                          '#!void)
                        (error '"struct-instance-init!: too many arguments for struct"
                               _%self124912%_
                               '8
                               (##vector-length _%self124912%_))))))))))
    (define gx#prelude-context:::init!__0
      (lambda (_%self124943%_ _%ctx124944%_)
        (let ((_%root124946%_ '#f))
          (gx#prelude-context:::init!__%
           _%self124943%_
           _%ctx124944%_
           _%root124946%_))))
    (define gx#prelude-context:::init!
      (lambda _g125163_
        (let ((_g125162_ (##length _g125163_)))
          (cond ((##fx= _g125162_ 2)
                 (apply (lambda (_%self124943%_ _%ctx124944%_)
                          (gx#prelude-context:::init!__0
                           _%self124943%_
                           _%ctx124944%_))
                        _g125163_))
                ((##fx= _g125162_ 3)
                 (apply (lambda (_%self124948%_ _%ctx124949%_ _%root124950%_)
                          (gx#prelude-context:::init!__%
                           _%self124948%_
                           _%ctx124949%_
                           _%root124950%_))
                        _g125163_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g125163_))))))
    (__bind-method!
     gx#prelude-context::t
     ':init!
     gx#prelude-context:::init!
     '#f)
    (define gx#import-export-expander-init!
      (lambda (_%self124781%_ _%e124782%_)
        (if (##fx< '3 (##structure-length _%self124781%_))
            (begin
              (##unchecked-structure-set!
               _%self124781%_
               _%e124782%_
               '1
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self124781%_
               (gx#current-expander-context)
               '2
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self124781%_
               (##fx- (gx#current-expander-phi) '1)
               '3
               '#f
               '#f)
              '#!void)
            (error '"struct-instance-init!: too many arguments for struct"
                   _%self124781%_
                   '3
                   (##vector-length _%self124781%_)))))
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
      (lambda (_%g124407124410%_ _%g124408124412%_)
        (gx#core-apply-user-expander__%
         _%g124407124410%_
         _%g124408124412%_
         'apply-import-expander)))
    (__bind-method!
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_%g124278124281%_ _%g124279124283%_)
        (gx#core-apply-user-expander__%
         _%g124278124281%_
         _%g124279124283%_
         'apply-export-expander)))
    (__bind-method!
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_%ctx124149%_)
        (let* ((_%path124151%_
                (##structure-ref _%ctx124149%_ '7 gx#module-context::t '#f))
               (_%path124153%_
                (if (pair? _%path124151%_)
                    (last _%path124151%_)
                    _%path124151%_)))
          (if (string? _%path124153%_) _%path124153%_ '#f))))
    (define gx#import-module__%
      (lambda (_%path124125%_ _%reload?124126%_ _%eval?124127%_)
        (let ((_%ctx124129%_
               ((gx#current-expander-module-import)
                _%path124125%_
                _%reload?124126%_)))
          (if (and _%ctx124129%_ _%eval?124127%_)
              (gx#eval-module _%ctx124129%_)
              '#!void)
          _%ctx124129%_)))
    (define gx#import-module__0
      (lambda (_%path124134%_)
        (let* ((_%reload?124136%_ '#f) (_%eval?124138%_ '#f))
          (gx#import-module__%
           _%path124134%_
           _%reload?124136%_
           _%eval?124138%_))))
    (define gx#import-module__1
      (lambda (_%path124140%_ _%reload?124141%_)
        (let ((_%eval?124143%_ '#f))
          (gx#import-module__%
           _%path124140%_
           _%reload?124141%_
           _%eval?124143%_))))
    (define gx#import-module
      (lambda _g125165_
        (let ((_g125164_ (##length _g125165_)))
          (cond ((##fx= _g125164_ 1)
                 (apply (lambda (_%path124134%_)
                          (gx#import-module__0 _%path124134%_))
                        _g125165_))
                ((##fx= _g125164_ 2)
                 (apply (lambda (_%path124140%_ _%reload?124141%_)
                          (gx#import-module__1
                           _%path124140%_
                           _%reload?124141%_))
                        _g125165_))
                ((##fx= _g125164_ 3)
                 (apply (lambda (_%path124145%_
                                 _%reload?124146%_
                                 _%eval?124147%_)
                          (gx#import-module__%
                           _%path124145%_
                           _%reload?124146%_
                           _%eval?124147%_))
                        _g125165_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g125165_))))))
    (define gx#eval-module
      (lambda (_%mod124122%_)
        ((gx#current-expander-module-eval) _%mod124122%_)))
    (define gx#core-eval-module
      (lambda (_%obj124102%_)
        (letrec ((_%force-e124104%_
                  (lambda (_%getf124118%_ _%e124119%_)
                    (__call-with-parameters
                     (lambda () (force (_%getf124118%_ _%e124119%_)))
                     gx#current-expander-context
                     _%e124119%_
                     gx#current-expander-phi
                     '0))))
          (let _%recur124106%_ ((_%e124108%_ _%obj124102%_))
            (if (##structure-instance-of? _%e124108%_ 'gx#module-context::t)
                (let ()
                  (let ((_%$e124111%_
                         (gx#core-context-prelude__% _%e124108%_)))
                    (if _%$e124111%_ (_%recur124106%_ _%$e124111%_) '#!void))
                  (_%force-e124104%_ gx#module-context-e _%e124108%_))
                (if (##structure-instance-of?
                     _%e124108%_
                     'gx#prelude-context::t)
                    (let ()
                      (_%force-e124104%_ gx#prelude-context-e _%e124108%_))
                    (if (gx#stx-string? _%e124108%_)
                        (let ()
                          (_%recur124106%_
                           (gx#import-module__0
                            (gx#core-resolve-module-path__0 _%e124108%_))))
                        (if (gx#core-library-module-path? _%e124108%_)
                            (let ()
                              (_%recur124106%_
                               (gx#import-module__0
                                (gx#core-resolve-library-module-path
                                 _%e124108%_))))
                            (let ()
                              (error '"Cannot eval module"
                                     _%obj124102%_))))))))))
    (define gx#core-context-prelude__%
      (lambda (_%ctx124082%_)
        (let _%lp124084%_ ((_%e124086%_ _%ctx124082%_))
          (if (or (##structure-instance-of? _%e124086%_ 'gx#module-context::t)
                  (##structure-instance-of? _%e124086%_ 'gx#local-context::t))
              (let ()
                (_%lp124084%_
                 (##unchecked-structure-ref _%e124086%_ '3 '#f '#f)))
              (if (##structure-instance-of? _%e124086%_ 'gx#prelude-context::t)
                  (let () _%e124086%_)
                  (let () '#f))))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_%ctx124098%_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _%ctx124098%_))))
    (define gx#core-context-prelude
      (lambda _g125167_
        (let ((_g125166_ (##length _g125167_)))
          (cond ((##fx= _g125166_ 0)
                 (apply (lambda () (gx#core-context-prelude__0)) _g125167_))
                ((##fx= _g125166_ 1)
                 (apply (lambda (_%ctx124100%_)
                          (gx#core-context-prelude__% _%ctx124100%_))
                        _g125167_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g125167_))))))
    (define gx#core-module->prelude-context
      (lambda (_%ctx124073%_)
        (let ((_%$e124075%_ (hash-get gx#__module-registry _%ctx124073%_)))
          (if _%$e124075%_
              _%$e124075%_
              (let ()
                (let ((_%pre124079%_
                       (let ((__obj125158
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
                         (gx#prelude-context:::init! __obj125158 _%ctx124073%_)
                         __obj125158)))
                  (hash-put! gx#__module-registry _%ctx124073%_ _%pre124079%_)
                  _%pre124079%_))))))
    (define gx#core-import-module__%
      (lambda (_%rpath123945%_ _%reload?123946%_)
        (letrec ((_%import-source123948%_
                  (lambda (_%path124037%_)
                    (if (member _%path124037%_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _%path124037%_)
                        '#!void)
                    (__call-with-parameters
                     (lambda ()
                       (let ((_g125168_ (gx#core-read-module _%path124037%_)))
                         (begin
                           (let ((_g125169_
                                  (if (##values? _g125168_)
                                      (##vector-length _g125168_)
                                      1)))
                             (if (not (##fx= _g125169_ 4))
                                 (error "Context expects 4 values" _g125169_)))
                           (let ((_%pre124040%_ (##vector-ref _g125168_ 0))
                                 (_%id124041%_ (##vector-ref _g125168_ 1))
                                 (_%ns124042%_ (##vector-ref _g125168_ 2))
                                 (_%body124043%_ (##vector-ref _g125168_ 3)))
                             (let* ((_%prelude124053%_
                                     (if (##structure-instance-of?
                                          _%pre124040%_
                                          'gx#prelude-context::t)
                                         (let () _%pre124040%_)
                                         (if (##structure-instance-of?
                                              _%pre124040%_
                                              'gx#module-context::t)
                                             (let ()
                                               (gx#core-module->prelude-context
                                                _%pre124040%_))
                                             (if (string? _%pre124040%_)
                                                 (let ()
                                                   (gx#core-module->prelude-context
                                                    (gx#core-import-module__0
                                                     _%pre124040%_)))
                                                 (if (not _%pre124040%_)
                                                     (let ()
                                                       (let ((_%$e124049%_
                                                              (gx#current-expander-module-prelude)))
                                                         (if _%$e124049%_
                                                             _%$e124049%_
                                                             (let ((__obj125159
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
                       (gx#prelude-context:::init! __obj125159 '#f)
                       __obj125159))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (error '"Cannot import module; unknown prelude"
                                                              _%rpath123945%_
                                                              _%pre124040%_)))))))
                                    (_%ctx124055%_
                                     (let ((__obj125160
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
                                        __obj125160
                                        _%id124041%_
                                        _%prelude124053%_
                                        _%ns124042%_
                                        _%path124037%_)
                                       __obj125160))
                                    (_%body124057%_
                                     (gx#core-expand-module-begin
                                      _%body124043%_
                                      _%ctx124055%_))
                                    (_%body124059%_
                                     (gx#core-quote-syntax__%
                                      (gx#core-cons '%#begin _%body124057%_)
                                      _%path124037%_
                                      _%ctx124055%_
                                      '())))
                               (##unchecked-structure-set!
                                _%ctx124055%_
                                (__make-promise
                                 (lambda () (gx#eval-syntax* _%body124059%_)))
                                '10
                                '#f
                                '#f)
                               (##unchecked-structure-set!
                                _%ctx124055%_
                                _%body124059%_
                                '11
                                '#f
                                '#f)
                               (hash-put!
                                gx#__module-registry
                                _%path124037%_
                                _%ctx124055%_)
                               (hash-put!
                                gx#__module-registry
                                _%id124041%_
                                _%ctx124055%_)
                               _%ctx124055%_)))))
                     gx#current-expander-context
                     (gx#core-context-root__0)
                     gx#current-expander-marks
                     '()
                     gx#current-expander-phi
                     '0
                     gx#current-expander-path
                     (cons _%path124037%_ (gx#current-expander-path))
                     gx#current-import-expander-phi
                     '#f
                     gx#current-export-expander-phi
                     '#f)))
                 (_%import-submodule123949%_
                  (lambda (_%rpath123965%_)
                    (let* ((_%rpath123966123973%_ _%rpath123965%_)
                           (_%E123968123977%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%rpath123966123973%_
                                     '([origin . refs]))
                              '#!void))
                           (_%K123969124025%_
                            (lambda (_%refs123980%_ _%origin123981%_)
                              (let ((_%ctx123983%_
                                     (if _%origin123981%_
                                         (gx#core-import-module__%
                                          _%origin123981%_
                                          _%reload?123946%_)
                                         (gx#current-expander-context))))
                                (let _%lp123985%_ ((_%rest123987%_
                                                    _%refs123980%_)
                                                   (_%ctx123988%_
                                                    _%ctx123983%_))
                                  (let* ((_%rest123989123997%_ _%rest123987%_)
                                         (_%else123991124005%_
                                          (lambda () _%ctx123988%_))
                                         (_%K123993124013%_
                                          (lambda (_%rest124008%_ _%id124009%_)
                                            (let ((_%bind124011%_
                                                   (gx#resolve-identifier__%
                                                    _%id124009%_
                                                    '0
                                                    _%ctx123988%_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _%bind124011%_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _%bind124011%_
                                                         '4
                                                         '#f
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_%lp123985%_
                                                   _%rest124008%_
                                                   (##unchecked-structure-ref
                                                    _%bind124011%_
                                                    '4
                                                    '#f
                                                    '#f))
                                                  (error '"Cannot import submodule; not bound as a module"
                                                         _%rpath123965%_
                                                         _%id124009%_
                                                         _%bind124011%_))))))
                                    (if (##pair? _%rest123989123997%_)
                                        (let ((_%hd123994124016%_
                                               (##car _%rest123989123997%_))
                                              (_%tl123995124018%_
                                               (##cdr _%rest123989123997%_)))
                                          (let* ((_%id124021%_
                                                  _%hd123994124016%_)
                                                 (_%rest124023%_
                                                  _%tl123995124018%_))
                                            (_%K123993124013%_
                                             _%rest124023%_
                                             _%id124021%_)))
                                        (_%else123991124005%_))))))))
                      (if (##pair? _%rpath123966123973%_)
                          (let ((_%hd123970124028%_
                                 (##car _%rpath123966123973%_))
                                (_%tl123971124030%_
                                 (##cdr _%rpath123966123973%_)))
                            (let* ((_%origin124033%_ _%hd123970124028%_)
                                   (_%refs124035%_ _%tl123971124030%_))
                              (_%K123969124025%_
                               _%refs124035%_
                               _%origin124033%_)))
                          (_%E123968123977%_))))))
          (let ((_%$e123951%_
                 (if (not _%reload?123946%_)
                     (hash-get gx#__module-registry _%rpath123945%_)
                     '#f)))
            (if _%$e123951%_
                (values _%$e123951%_)
                (if (list? _%rpath123945%_)
                    (let () (_%import-submodule123949%_ _%rpath123945%_))
                    (if (gx#core-library-module-path? _%rpath123945%_)
                        (let ()
                          (let ((_%ctx123956%_
                                 (gx#core-import-module__%
                                  (gx#core-resolve-library-module-path
                                   _%rpath123945%_)
                                  _%reload?123946%_)))
                            (hash-put!
                             gx#__module-registry
                             _%rpath123945%_
                             _%ctx123956%_)
                            _%ctx123956%_))
                        (let ()
                          (let* ((_%npath123959%_
                                  (path-normalize _%rpath123945%_))
                                 (_%$e123961%_
                                  (if (not _%reload?123946%_)
                                      (hash-get
                                       gx#__module-registry
                                       _%npath123959%_)
                                      '#f)))
                            (if _%$e123961%_
                                _%$e123961%_
                                (let ()
                                  (_%import-source123948%_
                                   _%npath123959%_))))))))))))
    (define gx#core-import-module__0
      (lambda (_%rpath124066%_)
        (let ((_%reload?124068%_ '#f))
          (gx#core-import-module__% _%rpath124066%_ _%reload?124068%_))))
    (define gx#core-import-module
      (lambda _g125171_
        (let ((_g125170_ (##length _g125171_)))
          (cond ((##fx= _g125170_ 1)
                 (apply (lambda (_%rpath124066%_)
                          (gx#core-import-module__0 _%rpath124066%_))
                        _g125171_))
                ((##fx= _g125170_ 2)
                 (apply (lambda (_%rpath124070%_ _%reload?124071%_)
                          (gx#core-import-module__%
                           _%rpath124070%_
                           _%reload?124071%_))
                        _g125171_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g125171_))))))
    (define gx#core-read-module
      (lambda (_%path123934%_)
        (__with-catch
         (lambda (_%exn123936%_)
           (if (and (datum-parsing-exception? _%exn123936%_)
                    (eq? (datum-parsing-exception-filepos _%exn123936%_) '0))
               (gx#core-read-module/lang _%path123934%_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _%path123934%_
                (__call-with-parameters
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_%g123938123940%_)
                      (display-exception _%exn123936%_ _%g123938123940%_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _%path123934%_)))))
    (define gx#core-read-module/sexp
      (lambda (_%path123786%_)
        (let _%lp123788%_ ((_%body123790%_
                            (read-syntax-from-file _%path123786%_))
                           (_%pre123791%_ '#f)
                           (_%ns123792%_ '#f)
                           (_%pkg123793%_ '#f))
          (let* ((_%e123794123818%_ _%body123790%_)
                 (_%E123810123844%_
                  (lambda ()
                    (let ((_g125172_
                           (if _%pkg123793%_
                               (values _%pre123791%_
                                       _%ns123792%_
                                       _%pkg123793%_)
                               (gx#core-read-module-package
                                _%path123786%_
                                _%pre123791%_
                                _%ns123792%_))))
                      (begin
                        (let ((_g125173_
                               (if (##values? _g125172_)
                                   (##vector-length _g125172_)
                                   1)))
                          (if (not (##fx= _g125173_ 3))
                              (error "Context expects 3 values" _g125173_)))
                        (let ((_%pre123822%_ (##vector-ref _g125172_ 0))
                              (_%ns123823%_ (##vector-ref _g125172_ 1))
                              (_%pkg123824%_ (##vector-ref _g125172_ 2)))
                          (let* ((_%prelude123830%_
                                  (if (gx#core-bound-module-prelude?
                                       _%pre123822%_)
                                      (let ()
                                        (gx#syntax-local-e__0 _%pre123822%_))
                                      (if (gx#core-library-module-path?
                                           _%pre123822%_)
                                          (let ()
                                            (gx#core-resolve-library-module-path
                                             _%pre123822%_))
                                          (if (gx#stx-string? _%pre123822%_)
                                              (let ()
                                                (gx#core-resolve-module-path__%
                                                 _%pre123822%_
                                                 _%path123786%_))
                                              (let ()
                                                (gx#stx-e _%pre123822%_))))))
                                 (_%path-id123832%_
                                  (gx#core-module-path->namespace
                                   _%path123786%_))
                                 (_%pkg-id123834%_
                                  (if _%pkg123824%_
                                      (string-append
                                       _%pkg123824%_
                                       '"/"
                                       _%path-id123832%_)
                                      _%path-id123832%_))
                                 (_%module-id123836%_
                                  (string->symbol _%pkg-id123834%_))
                                 (_%module-ns123841%_
                                  (if (eq? _%ns123823%_ '#!void)
                                      '#f
                                      (let ((_%$e123838%_ _%ns123823%_))
                                        (if _%$e123838%_
                                            _%$e123838%_
                                            _%pkg-id123834%_)))))
                            (values _%prelude123830%_
                                    _%module-id123836%_
                                    _%module-ns123841%_
                                    _%body123790%_)))))))
                 (_%E123803123876%_
                  (lambda ()
                    (if (gx#stx-pair? _%e123794123818%_)
                        (let ((_%e123811123848%_
                               (gx#syntax-e _%e123794123818%_)))
                          (let ((_%hd123812123851%_ (##car _%e123811123848%_))
                                (_%tl123813123853%_ (##cdr _%e123811123848%_)))
                            (if (eq? (gx#stx-e _%hd123812123851%_) 'package:)
                                (if (gx#stx-pair? _%tl123813123853%_)
                                    (let ((_%e123814123856%_
                                           (gx#syntax-e _%tl123813123853%_)))
                                      (let ((_%hd123815123859%_
                                             (##car _%e123814123856%_))
                                            (_%tl123816123861%_
                                             (##cdr _%e123814123856%_)))
                                        (let* ((_%pkg123864%_
                                                _%hd123815123859%_)
                                               (_%rest123866%_
                                                _%tl123816123861%_))
                                          (if '#t
                                              (let ((_%pkg123874%_
                                                     (if (gx#identifier?
                                                          _%pkg123864%_)
                                                         (let ()
                                                           (symbol->string
                                                            (gx#stx-e
                                                             _%pkg123864%_)))
                                                         (if (or (gx#stx-string?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%pkg123864%_)
                         (gx#stx-false? _%pkg123864%_))
                     (let () (gx#stx-e _%pkg123864%_))
                     (let ()
                       (gx#raise-syntax-error
                        'import
                        '"Bad syntax; Illegal package name"
                        _%pkg123864%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%lp123788%_
                                                 _%rest123866%_
                                                 _%pre123791%_
                                                 _%ns123792%_
                                                 _%pkg123874%_))
                                              (_%E123810123844%_)))))
                                    (_%E123810123844%_))
                                (_%E123810123844%_))))
                        (_%E123810123844%_))))
                 (_%E123796123906%_
                  (lambda ()
                    (if (gx#stx-pair? _%e123794123818%_)
                        (let ((_%e123804123880%_
                               (gx#syntax-e _%e123794123818%_)))
                          (let ((_%hd123805123883%_ (##car _%e123804123880%_))
                                (_%tl123806123885%_ (##cdr _%e123804123880%_)))
                            (if (eq? (gx#stx-e _%hd123805123883%_) 'namespace:)
                                (if (gx#stx-pair? _%tl123806123885%_)
                                    (let ((_%e123807123888%_
                                           (gx#syntax-e _%tl123806123885%_)))
                                      (let ((_%hd123808123891%_
                                             (##car _%e123807123888%_))
                                            (_%tl123809123893%_
                                             (##cdr _%e123807123888%_)))
                                        (let* ((_%ns123896%_
                                                _%hd123808123891%_)
                                               (_%rest123898%_
                                                _%tl123809123893%_))
                                          (if '#t
                                              (let ((_%ns123904%_
                                                     (if (gx#identifier?
                                                          _%ns123896%_)
                                                         (let ()
                                                           (symbol->string
                                                            (gx#stx-e
                                                             _%ns123896%_)))
                                                         (if (gx#stx-string?
                                                              _%ns123896%_)
                                                             (let ()
                                                               (gx#stx-e
                                                                _%ns123896%_))
                                                             (if (gx#stx-false?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%ns123896%_)
                         (let () '#!void)
                         (let ()
                           (gx#raise-syntax-error
                            'import
                            '"Bad syntax; illegal namespace"
                            _%ns123896%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%lp123788%_
                                                 _%rest123898%_
                                                 _%pre123791%_
                                                 _%ns123904%_
                                                 _%pkg123793%_))
                                              (_%E123803123876%_)))))
                                    (_%E123803123876%_))
                                (_%E123803123876%_))))
                        (_%E123803123876%_))))
                 (_%E123795123930%_
                  (lambda ()
                    (if (gx#stx-pair? _%e123794123818%_)
                        (let ((_%e123797123910%_
                               (gx#syntax-e _%e123794123818%_)))
                          (let ((_%hd123798123913%_ (##car _%e123797123910%_))
                                (_%tl123799123915%_ (##cdr _%e123797123910%_)))
                            (if (eq? (gx#stx-e _%hd123798123913%_) 'prelude:)
                                (if (gx#stx-pair? _%tl123799123915%_)
                                    (let ((_%e123800123918%_
                                           (gx#syntax-e _%tl123799123915%_)))
                                      (let ((_%hd123801123921%_
                                             (##car _%e123800123918%_))
                                            (_%tl123802123923%_
                                             (##cdr _%e123800123918%_)))
                                        (let* ((_%prelude123926%_
                                                _%hd123801123921%_)
                                               (_%rest123928%_
                                                _%tl123802123923%_))
                                          (if '#t
                                              (_%lp123788%_
                                               _%rest123928%_
                                               _%prelude123926%_
                                               _%ns123792%_
                                               _%pkg123793%_)
                                              (_%E123796123906%_)))))
                                    (_%E123796123906%_))
                                (_%E123796123906%_))))
                        (_%E123796123906%_)))))
            (_%E123795123930%_)))))
    (define gx#core-read-module/lang
      (lambda (_%path123608%_)
        (letrec ((_%default-read-module-body123610%_
                  (lambda (_%inp123778%_)
                    (let _%lp123780%_ ((_%body123782%_ '()))
                      (let ((_%next123784%_ (read-syntax__% _%inp123778%_)))
                        (if (eof-object? _%next123784%_)
                            (reverse _%body123782%_)
                            (_%lp123780%_
                             (cons _%next123784%_ _%body123782%_)))))))
                 (_%read-body123611%_
                  (lambda (_%inp123696%_
                           _%pre123697%_
                           _%ns123698%_
                           _%pkg123699%_
                           _%args123700%_)
                    (let ((_g125174_
                           (if _%pkg123699%_
                               (values _%pre123697%_
                                       _%ns123698%_
                                       _%pkg123699%_)
                               (gx#core-read-module-package
                                _%path123608%_
                                _%pre123697%_
                                _%ns123698%_))))
                      (begin
                        (let ((_g125175_
                               (if (##values? _g125174_)
                                   (##vector-length _g125174_)
                                   1)))
                          (if (not (##fx= _g125175_ 3))
                              (error "Context expects 3 values" _g125175_)))
                        (let ((_%pre123702%_ (##vector-ref _g125174_ 0))
                              (_%ns123703%_ (##vector-ref _g125174_ 1))
                              (_%pkg123704%_ (##vector-ref _g125174_ 2)))
                          (let* ((_%prelude123706%_
                                  (gx#import-module__0 _%pre123702%_))
                                 (_%read-module-body123761%_
                                  (let ((_%$e123752%_
                                         (__find (lambda (_%e123707123709%_)
                                                   (let* ((_%g123711123721%_
                                                           _%e123707123709%_)
                                                          (_%else123713123729%_
                                                           (lambda () '#f))
                                                          (_%K123715123733%_
                                                           (lambda () '#t)))
                                                     (if (##structure-direct-instance-of?
                                                          _%g123711123721%_
                                                          'gx#module-export::t)
                                                         (let* ((_%e123716123736%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##unchecked-structure-ref
                          _%g123711123721%_
                          '1
                          '#f
                          '#f))
                        (_%e123717123739%_
                         (##unchecked-structure-ref
                          _%g123711123721%_
                          '2
                          '#f
                          '#f))
                        (_%e123718123742%_
                         (##unchecked-structure-ref
                          _%g123711123721%_
                          '3
                          '#f
                          '#f)))
                   (if (##eq? _%e123718123742%_ '1)
                       (let ((_%e123719123745%_
                              (##unchecked-structure-ref
                               _%g123711123721%_
                               '4
                               '#f
                               '#f)))
                         (if ((lambda (_%g123747123749%_)
                                (eq? _%g123747123749%_ 'read-module-body))
                              _%e123719123745%_)
                             (_%K123715123733%_)
                             (_%else123713123729%_)))
                       (_%else123713123729%_)))
                 (_%else123713123729%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (##unchecked-structure-ref
                                                  _%prelude123706%_
                                                  '9
                                                  '#f
                                                  '#f))))
                                    (if _%$e123752%_
                                        ((lambda (_%xport123755%_)
                                           (let ((_%proc123758%_
                                                  (__with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _%xport123755%_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _%proc123758%_)
                                                 _%proc123758%_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _%path123608%_
                                                  _%pre123702%_
                                                  _%proc123758%_))))
                                         _%$e123752%_)
                                        (let ()
                                          _%default-read-module-body123610%_))))
                                 (_%path-id123763%_
                                  (gx#core-module-path->namespace
                                   _%path123608%_))
                                 (_%pkg-id123765%_
                                  (if _%pkg123704%_
                                      (string-append
                                       _%pkg123704%_
                                       '"/"
                                       _%path-id123763%_)
                                      _%path-id123763%_))
                                 (_%module-id123767%_
                                  (string->symbol _%pkg-id123765%_))
                                 (_%module-ns123772%_
                                  (let ((_%$e123769%_ _%ns123703%_))
                                    (if _%$e123769%_
                                        _%$e123769%_
                                        _%pkg-id123765%_)))
                                 (_%body123775%_
                                  (__call-with-parameters
                                   (lambda ()
                                     (_%read-module-body123761%_
                                      _%inp123696%_))
                                   gx#current-module-reader-path
                                   _%path123608%_
                                   gx#current-module-reader-args
                                   _%args123700%_)))
                            (values _%prelude123706%_
                                    _%module-id123767%_
                                    _%module-ns123772%_
                                    _%body123775%_)))))))
                 (_%string-e123612%_
                  (lambda (_%obj123690%_ _%what123691%_)
                    (if (string? _%obj123690%_)
                        (let () _%obj123690%_)
                        (if (symbol? _%obj123690%_)
                            (let () (symbol->string _%obj123690%_))
                            (let ()
                              (gx#raise-syntax-error
                               '#f
                               (string-append
                                '"Illegal module "
                                _%what123691%_)
                               _%path123608%_
                               _%obj123690%_))))))
                 (_%read-lang-args123613%_
                  (lambda (_%inp123645%_ _%args123646%_)
                    (let* ((_%args123647123655%_ _%args123646%_)
                           (_%else123649123663%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _%path123608%_)))
                           (_%K123651123678%_
                            (lambda (_%args123666%_ _%prelude123667%_)
                              (let* ((_%pkg123669%_
                                      (pgetq__0 'package: _%args123666%_))
                                     (_%pkg123671%_
                                      (if _%pkg123669%_
                                          (_%string-e123612%_
                                           _%pkg123669%_
                                           '"package")
                                          '#f))
                                     (_%ns123673%_
                                      (pgetq__0 'namespace: _%args123666%_))
                                     (_%ns123675%_
                                      (if _%ns123673%_
                                          (_%string-e123612%_
                                           _%ns123673%_
                                           '"namespace")
                                          '#f)))
                                (_%read-body123611%_
                                 _%inp123645%_
                                 _%prelude123667%_
                                 _%ns123675%_
                                 _%pkg123671%_
                                 _%args123666%_)))))
                      (if (##pair? _%args123647123655%_)
                          (let ((_%hd123652123681%_
                                 (##car _%args123647123655%_))
                                (_%tl123653123683%_
                                 (##cdr _%args123647123655%_)))
                            (let* ((_%prelude123686%_ _%hd123652123681%_)
                                   (_%args123688%_ _%tl123653123683%_))
                              (_%K123651123678%_
                               _%args123688%_
                               _%prelude123686%_)))
                          (_%else123649123663%_)))))
                 (_%read-lang123614%_
                  (lambda (_%inp123619%_)
                    (let* ((_%head123621%_ (read-line _%inp123619%_))
                           (_%$e123623%_
                            (string-index__0 _%head123621%_ '#\space)))
                      (if _%$e123623%_
                          ((lambda (_%ix123626%_)
                             (let ((_%lang123628%_
                                    (substring
                                     _%head123621%_
                                     '0
                                     _%ix123626%_)))
                               (if (equal? _%lang123628%_ '"#lang")
                                   (let* ((_%rest123630%_
                                           (substring
                                            _%head123621%_
                                            (##fx+ _%ix123626%_ '1)
                                            (##string-length _%head123621%_)))
                                          (_%args123641%_
                                           (__with-catch
                                            (lambda (_%g123631123633%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _%path123608%_
                                               _%g123631123633%_))
                                            (lambda ()
                                              (call-with-input-string
                                               _%rest123630%_
                                               (lambda (_%g123636123638%_)
                                                 (read-all
                                                  _%g123636123638%_
                                                  read)))))))
                                     (_%read-lang-args123613%_
                                      _%inp123619%_
                                      _%args123641%_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _%path123608%_))))
                           _%$e123623%_)
                          (let ()
                            (gx#raise-syntax-error
                             '#f
                             '"Illegal module syntax"
                             _%path123608%_))))))
                 (_%read-e123615%_
                  (lambda (_%inp123617%_)
                    (if (eq? (peek-char _%inp123617%_) '#\#)
                        (_%read-lang123614%_ _%inp123617%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _%path123608%_)))))
          (gx#call-with-input-source-file _%path123608%_ _%read-e123615%_))))
    (define gx#core-read-module-package
      (lambda (_%path123556%_ _%pre123557%_ _%ns123558%_)
        (letrec ((_%string-e123560%_
                  (lambda (_%e123603%_)
                    (if (symbol? _%e123603%_)
                        (let () (symbol->string _%e123603%_))
                        (if (string? _%e123603%_)
                            (let () _%e123603%_)
                            (let ()
                              (gx#raise-syntax-error
                               '#f
                               '"Malformed package info; unexpected datum"
                               _%e123603%_)))))))
          (let _%lp123562%_ ((_%dir123564%_ (path-directory _%path123556%_))
                             (_%pkg-path123565%_ '()))
            (let ((_%gerbil.pkg123567%_
                   (path-expand '"gerbil.pkg" _%dir123564%_)))
              (if (##file-exists? _%gerbil.pkg123567%_)
                  (let ((_%plist123569%_
                         (gx#core-library-package-plist__% _%dir123564%_ '#t)))
                    (if (null? _%plist123569%_)
                        (let ()
                          (let ((_%pkg123572%_
                                 (if (not (null? _%pkg-path123565%_))
                                     (string-join _%pkg-path123565%_ '"/")
                                     '#f)))
                            (values _%pre123557%_ _%ns123558%_ _%pkg123572%_)))
                        (if (list? _%plist123569%_)
                            (let ()
                              (let* ((_%root123575%_
                                      (pgetq__0 'package: _%plist123569%_))
                                     (_%pkg123579%_
                                      (let ((_%pkg-path123577%_
                                             (if _%root123575%_
                                                 (cons (_%string-e123560%_
                                                        _%root123575%_)
                                                       _%pkg-path123565%_)
                                                 _%pkg-path123565%_)))
                                        (if (not (null? _%pkg-path123577%_))
                                            (string-join
                                             _%pkg-path123577%_
                                             '"/")
                                            '#f)))
                                     (_%ns123586%_
                                      (let ((_%ns123584%_
                                             (let ((_%$e123581%_ _%ns123558%_))
                                               (if _%$e123581%_
                                                   _%$e123581%_
                                                   (pgetq__0
                                                    'namespace:
                                                    _%plist123569%_)))))
                                        (if _%ns123584%_
                                            (_%string-e123560%_ _%ns123584%_)
                                            '#f)))
                                     (_%pre123591%_
                                      (let ((_%$e123588%_ _%pre123557%_))
                                        (if _%$e123588%_
                                            _%$e123588%_
                                            (pgetq__0
                                             'prelude:
                                             _%plist123569%_)))))
                                (values _%pre123591%_
                                        _%ns123586%_
                                        _%pkg123579%_)))
                            (let ()
                              (gx#raise-syntax-error
                               '#f
                               '"Malformed package info; unexpected datum"
                               _%plist123569%_)))))
                  (let ((_%dir*123595%_
                         (path-strip-trailing-directory-separator
                          _%dir123564%_)))
                    (if (or (__string-empty? _%dir*123595%_)
                            (equal? _%dir123564%_ _%dir*123595%_))
                        (values _%pre123557%_ _%ns123558%_ '#f)
                        (let ((_%xpath123600%_
                               (path-strip-directory _%dir*123595%_))
                              (_%xdir123601%_ (path-directory _%dir*123595%_)))
                          (_%lp123562%_
                           _%xdir123601%_
                           (cons _%xpath123600%_ _%pkg-path123565%_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_%path123554%_)
        (path-strip-extension (path-strip-directory _%path123554%_))))
    (define gx#core-module-path->id
      (lambda (_%path123552%_)
        (##string->symbol (gx#core-module-path->namespace _%path123552%_))))
    (define gx#core-resolve-module-path__%
      (lambda (_%stx-path123531%_ _%rel123532%_)
        (let* ((_%path123534%_ (gx#stx-e _%stx-path123531%_))
               (_%path123536%_
                (if (__string-empty? (path-extension _%path123534%_))
                    (##string-append _%path123534%_ '".ss")
                    _%path123534%_)))
          (gx#core-resolve-path__%
           _%path123536%_
           (let ((_%$e123539%_ (gx#stx-source _%stx-path123531%_)))
             (if _%$e123539%_ _%$e123539%_ _%rel123532%_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_%stx-path123545%_)
        (let ((_%rel123547%_ '#f))
          (gx#core-resolve-module-path__% _%stx-path123545%_ _%rel123547%_))))
    (define gx#core-resolve-module-path
      (lambda _g125177_
        (let ((_g125176_ (##length _g125177_)))
          (cond ((##fx= _g125176_ 1)
                 (apply (lambda (_%stx-path123545%_)
                          (gx#core-resolve-module-path__0 _%stx-path123545%_))
                        _g125177_))
                ((##fx= _g125176_ 2)
                 (apply (lambda (_%stx-path123549%_ _%rel123550%_)
                          (gx#core-resolve-module-path__%
                           _%stx-path123549%_
                           _%rel123550%_))
                        _g125177_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g125177_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_%libpath123416%_)
        (let* ((_%spath123418%_ (symbol->string (gx#stx-e _%libpath123416%_)))
               (_%spath123420%_
                (substring
                 _%spath123418%_
                 '1
                 (##string-length _%spath123418%_)))
               (_%ext123422%_ (path-extension _%spath123420%_))
               (_%ssi123424%_
                (if (__string-empty? _%ext123422%_)
                    (##string-append _%spath123420%_ '".ssi")
                    (##string-append
                     (path-strip-extension _%spath123420%_)
                     '".ssi")))
               (_%srcs123428%_
                (if (__string-empty? _%ext123422%_)
                    (##map (lambda (_%ext123426%_)
                             (string-append _%spath123420%_ _%ext123426%_))
                           '(".ss" ".sld" ".scm"))
                    (cons _%spath123420%_ '()))))
          (let _%lp123431%_ ((_%rest123433%_ (load-path)))
            (let* ((_%rest123434123443%_ _%rest123433%_)
                   (_%E123437123447%_
                    (lambda ()
                      (error '"No clause matching"
                             _%rest123434123443%_
                             '([dir . rest])
                             '([]))
                      '#!void)))
              (let ((_%K123439123518%_
                     (lambda (_%rest123458%_ _%dir123459%_)
                       (letrec ((_%resolve123461%_
                                 (lambda (_%ssi123474%_ _%srcs123475%_)
                                   (let ((_%compiled-path123477%_
                                          (path-expand
                                           _%ssi123474%_
                                           _%dir123459%_)))
                                     (if (##file-exists?
                                          _%compiled-path123477%_)
                                         (path-normalize
                                          _%compiled-path123477%_)
                                         (let _%lpr123479%_ ((_%rest-src123481%_
                                                              _%srcs123475%_))
                                           (let* ((_%rest-src123482123490%_
                                                   _%rest-src123481%_)
                                                  (_%else123484123498%_
                                                   (lambda ()
                                                     (_%lp123431%_
                                                      _%rest123458%_)))
                                                  (_%K123486123506%_
                                                   (lambda (_%rest-src123501%_
                                                            _%src123502%_)
                                                     (let ((_%src-path123504%_
                                                            (path-expand
                                                             _%src123502%_
                                                             _%dir123459%_)))
                                                       (if (##file-exists?
                                                            _%src-path123504%_)
                                                           (path-normalize
                                                            _%src-path123504%_)
                                                           (_%lpr123479%_
                                                            _%rest-src123501%_))))))
                                             (if (##pair? _%rest-src123482123490%_)
                                                 (let ((_%hd123487123509%_
                                                        (##car _%rest-src123482123490%_))
                                                       (_%tl123488123511%_
                                                        (##cdr _%rest-src123482123490%_)))
                                                   (let* ((_%src123514%_
                                                           _%hd123487123509%_)
                                                          (_%rest-src123516%_
                                                           _%tl123488123511%_))
                                                     (_%K123486123506%_
                                                      _%rest-src123516%_
                                                      _%src123514%_)))
                                                 (_%else123484123498%_)))))))))
                         (let ((_%$e123463%_
                                (gx#core-library-package-path-prefix
                                 _%dir123459%_)))
                           (if _%$e123463%_
                               ((lambda (_%prefix123466%_)
                                  (if (string-prefix?
                                       _%prefix123466%_
                                       _%spath123420%_)
                                      (let ((_%ssi123470%_
                                             (substring
                                              _%ssi123424%_
                                              (string-length _%prefix123466%_)
                                              (##string-length _%ssi123424%_)))
                                            (_%srcs123471%_
                                             (##map (lambda (_%src123468%_)
                                                      (substring
                                                       _%src123468%_
                                                       (string-length
                                                        _%prefix123466%_)
                                                       (string-length
                                                        _%src123468%_)))
                                                    _%srcs123428%_)))
                                        (_%resolve123461%_
                                         _%ssi123470%_
                                         _%srcs123471%_))
                                      (_%lp123431%_ _%rest123458%_)))
                                _%$e123463%_)
                               (let ()
                                 (_%resolve123461%_
                                  _%ssi123424%_
                                  _%srcs123428%_)))))))
                    (_%K123438123452%_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"Cannot find library module"
                        _%libpath123416%_))))
                (let ((_%try-match123436123455%_
                       (lambda ()
                         (if (##null? _%rest123434123443%_)
                             (_%K123438123452%_)
                             (_%E123437123447%_)))))
                  (if (##pair? _%rest123434123443%_)
                      (let ((_%tl123441123523%_ (##cdr _%rest123434123443%_))
                            (_%hd123440123521%_ (##car _%rest123434123443%_)))
                        (let ((_%dir123526%_ _%hd123440123521%_)
                              (_%rest123528%_ _%tl123441123523%_))
                          (_%K123439123518%_ _%rest123528%_ _%dir123526%_)))
                      (_%try-match123436123455%_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_%modpath123384%_)
        (letrec ((_%resolve123386%_
                  (lambda (_%path123407%_ _%base123408%_)
                    (let ((_%$e123410%_
                           (string-rindex__0 _%base123408%_ '#\/)))
                      (if _%$e123410%_
                          ((lambda (_%idx123413%_)
                             (gx#core-resolve-library-module-path
                              (##string->symbol
                               (string-append
                                '":"
                                (substring _%base123408%_ '0 _%idx123413%_)
                                '"/"
                                _%path123407%_))))
                           _%$e123410%_)
                          (let ()
                            (gx#core-resolve-library-module-path
                             (##string->symbol
                              (string-append '":" _%path123407%_)))))))))
          (let ((_%spath123388%_ (symbol->string (gx#stx-e _%modpath123384%_)))
                (_%mod123389%_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _%mod123389%_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"Cannot resolve relative module path; not in module context"
                 _%modpath123384%_))
            (let ((_%mpath123391%_
                   (symbol->string
                    (##structure-ref
                     _%mod123389%_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _%lp123393%_ ((_%spath123395%_ _%spath123388%_)
                                 (_%mpath123396%_ _%mpath123391%_))
                (if (string-prefix? '"../" _%spath123395%_)
                    (let ()
                      (let ((_%$e123399%_
                             (string-rindex__0 _%mpath123396%_ '#\/)))
                        (if _%$e123399%_
                            ((lambda (_%idx123402%_)
                               (_%lp123393%_
                                (substring
                                 _%spath123395%_
                                 '3
                                 (string-length _%spath123395%_))
                                (substring _%mpath123396%_ '0 _%idx123402%_)))
                             _%$e123399%_)
                            (let ()
                              (gx#raise-syntax-error
                               '#f
                               '"Cannot resolve relative module path; illegal traversal"
                               _%modpath123384%_)))))
                    (if (string-prefix? '"./" _%spath123395%_)
                        (let ()
                          (_%lp123393%_
                           (substring
                            _%spath123395%_
                            '2
                            (string-length _%spath123395%_))
                           _%mpath123396%_))
                        (let ()
                          (_%resolve123386%_
                           _%spath123395%_
                           _%mpath123396%_))))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_%dir123376%_)
        (let ((_%$e123378%_
               (pgetq__0
                'package:
                (gx#core-library-package-plist__0 _%dir123376%_))))
          (if _%$e123378%_
              ((lambda (_%pkg123381%_)
                 (##string-append (symbol->string _%pkg123381%_) '"/"))
               _%$e123378%_)
              (let () '#f)))))
    (define gx#core-library-package-plist__%
      (lambda (_%dir123346%_ _%exists?123347%_)
        (let ((_%$e123349%_ (hash-get gx#__module-pkg-cache _%dir123346%_)))
          (if _%$e123349%_
              (values _%$e123349%_)
              (let ()
                (let* ((_%gerbil.pkg123353%_
                        (path-expand '"gerbil.pkg" _%dir123346%_))
                       (_%plist123363%_
                        (if (or _%exists?123347%_
                                (##file-exists? _%gerbil.pkg123353%_))
                            (let ((_%e123358%_
                                   (gx#call-with-input-source-file
                                    _%gerbil.pkg123353%_
                                    read)))
                              (if (eof-object? _%e123358%_)
                                  (let () '())
                                  (if (list? _%e123358%_)
                                      (let () _%e123358%_)
                                      (let ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Malformed package info; unexpected datum"
                                         _%gerbil.pkg123353%_
                                         _%e123358%_)))))
                            '())))
                  (hash-put!
                   gx#__module-pkg-cache
                   _%dir123346%_
                   _%plist123363%_)
                  _%plist123363%_))))))
    (define gx#core-library-package-plist__0
      (lambda (_%dir123369%_)
        (let ((_%exists?123371%_ '#f))
          (gx#core-library-package-plist__% _%dir123369%_ _%exists?123371%_))))
    (define gx#core-library-package-plist
      (lambda _g125179_
        (let ((_g125178_ (##length _g125179_)))
          (cond ((##fx= _g125178_ 1)
                 (apply (lambda (_%dir123369%_)
                          (gx#core-library-package-plist__0 _%dir123369%_))
                        _g125179_))
                ((##fx= _g125178_ 2)
                 (apply (lambda (_%dir123373%_ _%exists?123374%_)
                          (gx#core-library-package-plist__%
                           _%dir123373%_
                           _%exists?123374%_))
                        _g125179_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g125179_))))))
    (define gx#core-library-module-path?
      (lambda (_%stx123343%_)
        (gx#core-special-module-path? _%stx123343%_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_%stx123341%_)
        (gx#core-special-module-path? _%stx123341%_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_%stx123336%_ _%char123337%_)
        (if (gx#identifier? _%stx123336%_)
            (if (interned-symbol? (gx#stx-e _%stx123336%_))
                (let ((_%str123339%_
                       (symbol->string (gx#stx-e _%stx123336%_))))
                  (if (##fx> (##string-length _%str123339%_) '1)
                      (eq? (string-ref _%str123339%_ '0) _%char123337%_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_%stx123330%_)
        (gx#core-bound-identifier?__%
         _%stx123330%_
         (lambda (_%g123331123333%_)
           (gx#expander-binding?__% _%g123331123333%_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_%stx123324%_)
        (gx#core-bound-identifier?__%
         _%stx123324%_
         (lambda (_%g123325123327%_)
           (gx#expander-binding?__% _%g123325123327%_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_%stx123311%_)
        (letrec ((_%module-prelude?123313%_
                  (lambda (_%e123319%_)
                    (let ((_%$e123321%_
                           (##structure-instance-of?
                            _%e123319%_
                            'gx#module-context::t)))
                      (if _%$e123321%_
                          _%$e123321%_
                          (##structure-instance-of?
                           _%e123319%_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _%stx123311%_
           (lambda (_%g123314123316%_)
             (gx#expander-binding?__%
              _%g123314123316%_
              _%module-prelude?123313%_))))))
    (define gx#core-bind-import!__%
      (lambda (_%in123241%_ _%ctx123242%_ _%force-weak?123243%_)
        (let* ((_%in123244123253%_ _%in123241%_)
               (_%E123246123257%_
                (lambda ()
                  (error '"No clause matching"
                         _%in123244123253%_
                         '((module-import source key phi weak?)))
                  '#!void))
               (_%K123247123270%_
                (lambda (_%weak?123260%_
                         _%phi123261%_
                         _%key123262%_
                         _%source123263%_)
                  (gx#core-bind!__%
                   _%key123262%_
                   (let ((_%e123265%_
                          (gx#core-resolve-module-export _%source123263%_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref _%e123265%_ '1 '#f '#f)
                      _%key123262%_
                      _%phi123261%_
                      _%e123265%_
                      (##unchecked-structure-ref _%source123263%_ '1 '#f '#f)
                      (let ((_%$e123267%_ _%force-weak?123243%_))
                        (if _%$e123267%_ _%$e123267%_ _%weak?123260%_))))
                   gx#core-context-rebind?
                   _%phi123261%_
                   _%ctx123242%_))))
          (if (##structure-direct-instance-of?
               _%in123244123253%_
               'gx#module-import::t)
              (let* ((_%e123248123273%_
                      (##unchecked-structure-ref
                       _%in123244123253%_
                       '1
                       '#f
                       '#f))
                     (_%source123276%_ _%e123248123273%_)
                     (_%e123249123278%_
                      (##unchecked-structure-ref
                       _%in123244123253%_
                       '2
                       '#f
                       '#f))
                     (_%key123281%_ _%e123249123278%_)
                     (_%e123250123283%_
                      (##unchecked-structure-ref
                       _%in123244123253%_
                       '3
                       '#f
                       '#f))
                     (_%phi123286%_ _%e123250123283%_)
                     (_%e123251123288%_
                      (##unchecked-structure-ref
                       _%in123244123253%_
                       '4
                       '#f
                       '#f))
                     (_%weak?123291%_ _%e123251123288%_))
                (_%K123247123270%_
                 _%weak?123291%_
                 _%phi123286%_
                 _%key123281%_
                 _%source123276%_))
              (_%E123246123257%_)))))
    (define gx#core-bind-import!__0
      (lambda (_%in123296%_)
        (let* ((_%ctx123298%_ (gx#current-expander-context))
               (_%force-weak?123300%_ '#f))
          (gx#core-bind-import!__%
           _%in123296%_
           _%ctx123298%_
           _%force-weak?123300%_))))
    (define gx#core-bind-import!__1
      (lambda (_%in123302%_ _%ctx123303%_)
        (let ((_%force-weak?123305%_ '#f))
          (gx#core-bind-import!__%
           _%in123302%_
           _%ctx123303%_
           _%force-weak?123305%_))))
    (define gx#core-bind-import!
      (lambda _g125181_
        (let ((_g125180_ (##length _g125181_)))
          (cond ((##fx= _g125180_ 1)
                 (apply (lambda (_%in123296%_)
                          (gx#core-bind-import!__0 _%in123296%_))
                        _g125181_))
                ((##fx= _g125180_ 2)
                 (apply (lambda (_%in123302%_ _%ctx123303%_)
                          (gx#core-bind-import!__1 _%in123302%_ _%ctx123303%_))
                        _g125181_))
                ((##fx= _g125180_ 3)
                 (apply (lambda (_%in123307%_
                                 _%ctx123308%_
                                 _%force-weak?123309%_)
                          (gx#core-bind-import!__%
                           _%in123307%_
                           _%ctx123308%_
                           _%force-weak?123309%_))
                        _g125181_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g125181_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_%in123227%_ _%ctx123228%_)
        (gx#core-bind-import!__% _%in123227%_ _%ctx123228%_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_%in123233%_)
        (let ((_%ctx123235%_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _%in123233%_ _%ctx123235%_))))
    (define gx#core-bind-weak-import!
      (lambda _g125183_
        (let ((_g125182_ (##length _g125183_)))
          (cond ((##fx= _g125182_ 1)
                 (apply (lambda (_%in123233%_)
                          (gx#core-bind-weak-import!__0 _%in123233%_))
                        _g125183_))
                ((##fx= _g125182_ 2)
                 (apply (lambda (_%in123237%_ _%ctx123238%_)
                          (gx#core-bind-weak-import!__%
                           _%in123237%_
                           _%ctx123238%_))
                        _g125183_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g125183_))))))
    (define gx#core-resolve-module-export
      (lambda (_%out123118%_)
        (letrec ((_%subst123120%_
                  (lambda (_%key123166%_)
                    (let* ((_%key123167123175%_ _%key123166%_)
                           (_%else123169123183%_ (lambda () _%key123166%_))
                           (_%K123171123214%_
                            (lambda (_%mark123186%_ _%id123187%_)
                              (let* ((_%mark123188123194%_ _%mark123186%_)
                                     (_%E123190123198%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark123188123194%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K123191123206%_
                                      (lambda (_%subst123201%_)
                                        (let ((_%$e123203%_
                                               (if _%subst123201%_
                                                   (hash-get
                                                    _%subst123201%_
                                                    _%id123187%_)
                                                   '#f)))
                                          (if _%$e123203%_
                                              _%$e123203%_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _%key123166%_))))))
                                (if (##structure-instance-of?
                                     _%mark123188123194%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e123192123209%_
                                            (##unchecked-structure-ref
                                             _%mark123188123194%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst123212%_ _%e123192123209%_))
                                      (_%K123191123206%_ _%subst123212%_))
                                    (_%E123190123198%_))))))
                      (if (##pair? _%key123167123175%_)
                          (let ((_%hd123172123217%_
                                 (##car _%key123167123175%_))
                                (_%tl123173123219%_
                                 (##cdr _%key123167123175%_)))
                            (let* ((_%id123222%_ _%hd123172123217%_)
                                   (_%mark123224%_ _%tl123173123219%_))
                              (_%K123171123214%_ _%mark123224%_ _%id123222%_)))
                          (_%else123169123183%_))))))
          (let* ((_%out123121123131%_ _%out123118%_)
                 (_%E123123123135%_
                  (lambda ()
                    (error '"No clause matching"
                           _%out123121123131%_
                           '((module-export ctx key phi _ _)))
                    '#!void))
                 (_%K123124123142%_
                  (lambda (_%phi123138%_ _%key123139%_ _%ctx123140%_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _%ctx123140%_ _%phi123138%_)
                     (_%subst123120%_ _%key123139%_)))))
            (if (##structure-direct-instance-of?
                 _%out123121123131%_
                 'gx#module-export::t)
                (let* ((_%e123125123145%_
                        (##unchecked-structure-ref
                         _%out123121123131%_
                         '1
                         '#f
                         '#f))
                       (_%ctx123148%_ _%e123125123145%_)
                       (_%e123126123150%_
                        (##unchecked-structure-ref
                         _%out123121123131%_
                         '2
                         '#f
                         '#f))
                       (_%key123153%_ _%e123126123150%_)
                       (_%e123127123155%_
                        (##unchecked-structure-ref
                         _%out123121123131%_
                         '3
                         '#f
                         '#f))
                       (_%phi123158%_ _%e123127123155%_)
                       (_%e123128123160%_
                        (##unchecked-structure-ref
                         _%out123121123131%_
                         '4
                         '#f
                         '#f))
                       (_%e123129123163%_
                        (##unchecked-structure-ref
                         _%out123121123131%_
                         '5
                         '#f
                         '#f)))
                  (_%K123124123142%_
                   _%phi123158%_
                   _%key123153%_
                   _%ctx123148%_))
                (_%E123123123135%_))))))
    (define gx#core-module-export->import__%
      (lambda (_%out123043%_ _%rename123044%_ _%dphi123045%_)
        (let* ((_%out123046123056%_ _%out123043%_)
               (_%E123048123060%_
                (lambda ()
                  (error '"No clause matching"
                         _%out123046123056%_
                         '((module-export ctx key phi name weak?)))
                  '#!void))
               (_%K123049123072%_
                (lambda (_%weak?123063%_
                         _%name123064%_
                         _%phi123065%_
                         _%key123066%_
                         _%ctx123067%_)
                  (##structure
                   gx#module-import::t
                   _%out123043%_
                   (let ((_%$e123069%_ _%rename123044%_))
                     (if _%$e123069%_ _%$e123069%_ _%name123064%_))
                   (fx+ _%phi123065%_ _%dphi123045%_)
                   _%weak?123063%_))))
          (if (##structure-direct-instance-of?
               _%out123046123056%_
               'gx#module-export::t)
              (let* ((_%e123050123075%_
                      (##unchecked-structure-ref
                       _%out123046123056%_
                       '1
                       '#f
                       '#f))
                     (_%ctx123078%_ _%e123050123075%_)
                     (_%e123051123080%_
                      (##unchecked-structure-ref
                       _%out123046123056%_
                       '2
                       '#f
                       '#f))
                     (_%key123083%_ _%e123051123080%_)
                     (_%e123052123085%_
                      (##unchecked-structure-ref
                       _%out123046123056%_
                       '3
                       '#f
                       '#f))
                     (_%phi123088%_ _%e123052123085%_)
                     (_%e123053123090%_
                      (##unchecked-structure-ref
                       _%out123046123056%_
                       '4
                       '#f
                       '#f))
                     (_%name123093%_ _%e123053123090%_)
                     (_%e123054123095%_
                      (##unchecked-structure-ref
                       _%out123046123056%_
                       '5
                       '#f
                       '#f))
                     (_%weak?123098%_ _%e123054123095%_))
                (_%K123049123072%_
                 _%weak?123098%_
                 _%name123093%_
                 _%phi123088%_
                 _%key123083%_
                 _%ctx123078%_))
              (_%E123048123060%_)))))
    (define gx#core-module-export->import__0
      (lambda (_%out123103%_)
        (let* ((_%rename123105%_ '#f) (_%dphi123107%_ '0))
          (gx#core-module-export->import__%
           _%out123103%_
           _%rename123105%_
           _%dphi123107%_))))
    (define gx#core-module-export->import__1
      (lambda (_%out123109%_ _%rename123110%_)
        (let ((_%dphi123112%_ '0))
          (gx#core-module-export->import__%
           _%out123109%_
           _%rename123110%_
           _%dphi123112%_))))
    (define gx#core-module-export->import
      (lambda _g125185_
        (let ((_g125184_ (##length _g125185_)))
          (cond ((##fx= _g125184_ 1)
                 (apply (lambda (_%out123103%_)
                          (gx#core-module-export->import__0 _%out123103%_))
                        _g125185_))
                ((##fx= _g125184_ 2)
                 (apply (lambda (_%out123109%_ _%rename123110%_)
                          (gx#core-module-export->import__1
                           _%out123109%_
                           _%rename123110%_))
                        _g125185_))
                ((##fx= _g125184_ 3)
                 (apply (lambda (_%out123114%_ _%rename123115%_ _%dphi123116%_)
                          (gx#core-module-export->import__%
                           _%out123114%_
                           _%rename123115%_
                           _%dphi123116%_))
                        _g125185_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g125185_))))))
    (define gx#core-expand-module%
      (lambda (_%stx122942%_)
        (letrec ((_%make-context122944%_
                  (lambda (_%id123021%_)
                    (let* ((_%super123023%_ (gx#current-expander-context))
                           (_%bind-id123025%_ (gx#stx-e _%id123021%_))
                           (_%mod-id123027%_
                            (if (##structure-instance-of?
                                 _%super123023%_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##structure-ref
                                  _%super123023%_
                                  '1
                                  gx#expander-context::t
                                  '#f)
                                 '"~"
                                 _%bind-id123025%_)
                                _%bind-id123025%_))
                           (_%ns123029%_ (symbol->string _%mod-id123027%_))
                           (_%path123039%_
                            (if (##structure-instance-of?
                                 _%super123023%_
                                 'gx#module-context::t)
                                (let ((_%path123031%_
                                       (##unchecked-structure-ref
                                        _%super123023%_
                                        '7
                                        '#f
                                        '#f)))
                                  (if (or (pair? _%path123031%_)
                                          (null? _%path123031%_))
                                      (let ()
                                        (cons _%bind-id123025%_
                                              _%path123031%_))
                                      (if (not _%path123031%_)
                                          (let () _%bind-id123025%_)
                                          (let ()
                                            (cons _%bind-id123025%_
                                                  (cons _%path123031%_
                                                        '()))))))
                                _%bind-id123025%_)))
                      (let ((__obj125161
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
                         __obj125161
                         _%mod-id123027%_
                         _%super123023%_
                         _%ns123029%_
                         _%path123039%_)
                        __obj125161))))
                 (_%valid-module-id?122945%_
                  (lambda (_%id122996%_)
                    (let* ((_%str122998%_ (symbol->string _%id122996%_))
                           (_%len123000%_ (##string-length _%str122998%_)))
                      (if (##fx>= _%len123000%_ '1)
                          (let _%loop123003%_ ((_%index123005%_
                                                (##fx- (##string-length
                                                        _%str122998%_)
                                                       '1)))
                            (if (##fx>= _%index123005%_ '0)
                                (let ((_%c123007%_
                                       (string-ref
                                        _%str122998%_
                                        _%index123005%_)))
                                  (if (or (and (##char>=? _%c123007%_ '#\a)
                                               (##char<=? _%c123007%_ '#\z))
                                          (and (##char>=? _%c123007%_ '#\A)
                                               (##char<=? _%c123007%_ '#\Z))
                                          (and (##char>=? _%c123007%_ '#\0)
                                               (##char<=? _%c123007%_ '#\9))
                                          (##char=? _%c123007%_ '#\_)
                                          (##char=? _%c123007%_ '#\-))
                                      (_%loop123003%_
                                       (##fx- _%index123005%_ '1))
                                      '#f))
                                '#t))
                          '#f)))))
          (let* ((_%e122946122956%_ _%stx122942%_)
                 (_%E122948122960%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e122946122956%_)))
                 (_%E122947122992%_
                  (lambda ()
                    (if (gx#stx-pair? _%e122946122956%_)
                        (let ((_%e122949122964%_
                               (gx#syntax-e _%e122946122956%_)))
                          (let ((_%hd122950122967%_ (##car _%e122949122964%_))
                                (_%tl122951122969%_ (##cdr _%e122949122964%_)))
                            (if (gx#stx-pair? _%tl122951122969%_)
                                (let ((_%e122952122972%_
                                       (gx#syntax-e _%tl122951122969%_)))
                                  (let ((_%hd122953122975%_
                                         (##car _%e122952122972%_))
                                        (_%tl122954122977%_
                                         (##cdr _%e122952122972%_)))
                                    (let* ((_%id122980%_ _%hd122953122975%_)
                                           (_%body122982%_ _%tl122954122977%_))
                                      (if (and (gx#identifier? _%id122980%_)
                                               (gx#stx-list? _%body122982%_))
                                          (if (_%valid-module-id?122945%_
                                               (gx#stx-e
                                                (gx#datum->syntax__0 '#f 'id)))
                                              (let* ((_%ctx122984%_
                                                      (_%make-context122944%_
                                                       _%id122980%_))
                                                     (_%body122986%_
                                                      (gx#core-expand-module-begin
                                                       _%body122982%_
                                                       _%ctx122984%_))
                                                     (_%body122988%_
                                                      (gx#core-quote-syntax__1
                                                       (gx#core-cons
                                                        '%#begin
                                                        _%body122986%_)
                                                       (gx#stx-source
                                                        _%stx122942%_))))
                                                (##unchecked-structure-set!
                                                 _%ctx122984%_
                                                 (__make-promise
                                                  (lambda ()
                                                    (gx#eval-syntax*
                                                     _%body122988%_)))
                                                 '10
                                                 '#f
                                                 '#f)
                                                (##unchecked-structure-set!
                                                 _%ctx122984%_
                                                 _%body122988%_
                                                 '11
                                                 '#f
                                                 '#f)
                                                (gx#core-bind-syntax!__0
                                                 _%id122980%_
                                                 _%ctx122984%_)
                                                (gx#core-quote-syntax__1
                                                 (gx#core-list
                                                  '%#module
                                                  (gx#core-quote-syntax__0
                                                   _%id122980%_)
                                                  _%body122988%_)
                                                 (gx#stx-source
                                                  _%stx122942%_)))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"invalid module id; allowed characters are A-Z,a-z,0-9,_,-"
                                               _%stx122942%_
                                               (gx#datum->syntax__0 '#f 'id)))
                                          (_%E122948122960%_)))))
                                (_%E122948122960%_))))
                        (_%E122948122960%_)))))
            (_%E122947122992%_)))))
    (define gx#core-expand-module-begin
      (lambda (_%body122908%_ _%ctx122909%_)
        (__call-with-parameters
         (lambda ()
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_%stx122912%_
                   (gx#core-expand-head (cons '%%begin-module _%body122908%_)))
                  (_%e122913122920%_ _%stx122912%_)
                  (_%E122915122924%_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _%stx122912%_)))
                  (_%E122914122938%_
                   (lambda ()
                     (if (gx#stx-pair? _%e122913122920%_)
                         (let ((_%e122916122928%_
                                (gx#syntax-e _%e122913122920%_)))
                           (let ((_%hd122917122931%_ (##car _%e122916122928%_))
                                 (_%tl122918122933%_
                                  (##cdr _%e122916122928%_)))
                             (if (and (gx#identifier? _%hd122917122931%_)
                                      (gx#core-identifier=?
                                       _%hd122917122931%_
                                       '%#begin-module))
                                 (let ((_%body122936%_ _%tl122918122933%_))
                                   (if '#t
                                       (if (gx#sealed-syntax? _%stx122912%_)
                                           _%body122936%_
                                           (gx#core-expand-module-body
                                            _%body122936%_))
                                       (_%E122915122924%_)))
                                 (_%E122915122924%_))))
                         (_%E122915122924%_)))))
             (_%E122914122938%_)))
         gx#current-expander-context
         _%ctx122909%_
         gx#current-expander-phi
         '0)))
    (define gx#core-expand-module-body
      (lambda (_%body122704%_)
        (letrec ((_%expand-special122706%_
                  (lambda (_%hd122835%_ _%K122836%_ _%rest122837%_ _%r122838%_)
                    (let* ((_%e122839122856%_ _%hd122835%_)
                           (_%E122851122860%_
                            (lambda ()
                              (_%K122836%_
                               _%rest122837%_
                               (cons (gx#core-expand-top _%hd122835%_)
                                     _%r122838%_))))
                           (_%E122841122872%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122839122856%_)
                                  (let ((_%e122852122864%_
                                         (gx#syntax-e _%e122839122856%_)))
                                    (let ((_%hd122853122867%_
                                           (##car _%e122852122864%_))
                                          (_%tl122854122869%_
                                           (##cdr _%e122852122864%_)))
                                      (if (and (gx#identifier?
                                                _%hd122853122867%_)
                                               (gx#core-identifier=?
                                                _%hd122853122867%_
                                                '%#export))
                                          (if '#t
                                              (_%K122836%_
                                               _%rest122837%_
                                               (cons _%hd122835%_ _%r122838%_))
                                              (_%E122851122860%_))
                                          (_%E122851122860%_))))
                                  (_%E122851122860%_))))
                           (_%E122840122904%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122839122856%_)
                                  (let ((_%e122842122876%_
                                         (gx#syntax-e _%e122839122856%_)))
                                    (let ((_%hd122843122879%_
                                           (##car _%e122842122876%_))
                                          (_%tl122844122881%_
                                           (##cdr _%e122842122876%_)))
                                      (if (and (gx#identifier?
                                                _%hd122843122879%_)
                                               (gx#core-identifier=?
                                                _%hd122843122879%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl122844122881%_)
                                              (let ((_%e122845122884%_
                                                     (gx#syntax-e
                                                      _%tl122844122881%_)))
                                                (let ((_%hd122846122887%_
                                                       (##car _%e122845122884%_))
                                                      (_%tl122847122889%_
                                                       (##cdr _%e122845122884%_)))
                                                  (let ((_%hd-bind122892%_
                                                         _%hd122846122887%_))
                                                    (if (gx#stx-pair?
                                                         _%tl122847122889%_)
                                                        (let ((_%e122848122894%_
                                                               (gx#syntax-e
                                                                _%tl122847122889%_)))
                                                          (let ((_%hd122849122897%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e122848122894%_))
                        (_%tl122850122899%_ (##cdr _%e122848122894%_)))
                    (let ((_%expr122902%_ _%hd122849122897%_))
                      (if (gx#stx-null? _%tl122850122899%_)
                          (if (gx#core-bind-values? _%hd-bind122892%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind122892%_)
                                (_%K122836%_
                                 _%rest122837%_
                                 (cons _%hd122835%_ _%r122838%_)))
                              (_%E122841122872%_))
                          (_%E122841122872%_)))))
                (_%E122841122872%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E122841122872%_))
                                          (_%E122841122872%_))))
                                  (_%E122841122872%_)))))
                      (_%E122840122904%_))))
                 (_%expand-body122707%_
                  (lambda (_%rbody122709%_)
                    (let _%lp122711%_ ((_%rest122713%_ _%rbody122709%_)
                                       (_%body122714%_ '()))
                      (let* ((_%rest122715122723%_ _%rest122713%_)
                             (_%else122717122731%_ (lambda () _%body122714%_))
                             (_%K122719122823%_
                              (lambda (_%rest122734%_ _%hd122735%_)
                                (let* ((_%e122736122757%_ _%hd122735%_)
                                       (_%E122752122761%_
                                        (lambda ()
                                          (_%lp122711%_
                                           _%rest122734%_
                                           (cons (gx#core-expand-expression
                                                  _%hd122735%_)
                                                 _%body122714%_))))
                                       (_%E122748122775%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e122736122757%_)
                                              (let ((_%e122753122765%_
                                                     (gx#syntax-e
                                                      _%e122736122757%_)))
                                                (let ((_%hd122754122768%_
                                                       (##car _%e122753122765%_))
                                                      (_%tl122755122770%_
                                                       (##cdr _%e122753122765%_)))
                                                  (let ((_%form122773%_
                                                         _%hd122754122768%_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _%form122773%_
                                                         gx#special-form-binding?)
                                                        (_%lp122711%_
                                                         _%rest122734%_
                                                         (cons _%hd122735%_
                                                               _%body122714%_))
                                                        (_%E122752122761%_)))))
                                              (_%E122752122761%_))))
                                       (_%E122738122787%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e122736122757%_)
                                              (let ((_%e122749122779%_
                                                     (gx#syntax-e
                                                      _%e122736122757%_)))
                                                (let ((_%hd122750122782%_
                                                       (##car _%e122749122779%_))
                                                      (_%tl122751122784%_
                                                       (##cdr _%e122749122779%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd122750122782%_)
                                                           (gx#core-identifier=?
                                                            _%hd122750122782%_
                                                            '%#export))
                                                      (if '#t
                                                          (_%lp122711%_
                                                           _%rest122734%_
                                                           (cons (gx#core-expand-export%__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%hd122735%_)
                         _%body122714%_))
                  (_%E122748122775%_))
              (_%E122748122775%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E122748122775%_))))
                                       (_%E122737122819%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e122736122757%_)
                                              (let ((_%e122739122791%_
                                                     (gx#syntax-e
                                                      _%e122736122757%_)))
                                                (let ((_%hd122740122794%_
                                                       (##car _%e122739122791%_))
                                                      (_%tl122741122796%_
                                                       (##cdr _%e122739122791%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd122740122794%_)
                                                           (gx#core-identifier=?
                                                            _%hd122740122794%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl122741122796%_)
                                                          (let ((_%e122742122799%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl122741122796%_)))
                    (let ((_%hd122743122802%_ (##car _%e122742122799%_))
                          (_%tl122744122804%_ (##cdr _%e122742122799%_)))
                      (let ((_%hd-bind122807%_ _%hd122743122802%_))
                        (if (gx#stx-pair? _%tl122744122804%_)
                            (let ((_%e122745122809%_
                                   (gx#syntax-e _%tl122744122804%_)))
                              (let ((_%hd122746122812%_
                                     (##car _%e122745122809%_))
                                    (_%tl122747122814%_
                                     (##cdr _%e122745122809%_)))
                                (let ((_%expr122817%_ _%hd122746122812%_))
                                  (if (gx#stx-null? _%tl122747122814%_)
                                      (if '#t
                                          (_%lp122711%_
                                           _%rest122734%_
                                           (cons (gx#core-quote-syntax__1
                                                  (gx#core-list
                                                   '%#define-values
                                                   (gx#core-quote-bind-values
                                                    _%hd-bind122807%_)
                                                   (gx#core-expand-expression
                                                    _%expr122817%_))
                                                  (gx#stx-source _%hd122735%_))
                                                 _%body122714%_))
                                          (_%E122738122787%_))
                                      (_%E122738122787%_)))))
                            (_%E122738122787%_)))))
                  (_%E122738122787%_))
              (_%E122738122787%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E122738122787%_)))))
                                  (_%E122737122819%_)))))
                        (if (##pair? _%rest122715122723%_)
                            (let ((_%hd122720122826%_
                                   (##car _%rest122715122723%_))
                                  (_%tl122721122828%_
                                   (##cdr _%rest122715122723%_)))
                              (let* ((_%hd122831%_ _%hd122720122826%_)
                                     (_%rest122833%_ _%tl122721122828%_))
                                (_%K122719122823%_
                                 _%rest122833%_
                                 _%hd122831%_)))
                            (_%else122717122731%_)))))))
          (_%expand-body122707%_
           (gx#core-expand-block__%
            (cons '%#begin-module _%body122704%_)
            _%expand-special122706%_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_%stx122545%_
               _%expanded?122546%_
               _%method122547%_
               _%current-phi122548%_
               _%expand1122549%_)
        (letrec ((_%K122551%_
                  (lambda (_%rest122671%_ _%r122672%_)
                    (let* ((_%e122673122680%_ _%rest122671%_)
                           (_%E122675122684%_ (lambda () _%r122672%_))
                           (_%E122674122700%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122673122680%_)
                                  (let ((_%e122676122688%_
                                         (gx#syntax-e _%e122673122680%_)))
                                    (let ((_%hd122677122691%_
                                           (##car _%e122676122688%_))
                                          (_%tl122678122693%_
                                           (##cdr _%e122676122688%_)))
                                      (let* ((_%hd122696%_ _%hd122677122691%_)
                                             (_%rest122698%_
                                              _%tl122678122693%_))
                                        (if '#t
                                            (_%step122552%_
                                             _%hd122696%_
                                             _%rest122698%_
                                             _%r122672%_)
                                            (_%E122675122684%_)))))
                                  (_%E122675122684%_)))))
                      (_%E122674122700%_))))
                 (_%step122552%_
                  (lambda (_%hd122585%_ _%rest122586%_ _%r122587%_)
                    (let* ((_%e122588122606%_ _%hd122585%_)
                           (_%E122601122610%_
                            (lambda ()
                              (if (_%expanded?122546%_ (gx#stx-e _%hd122585%_))
                                  (_%K122551%_
                                   _%rest122586%_
                                   (cons (gx#stx-e _%hd122585%_) _%r122587%_))
                                  (_%expand1122549%_
                                   _%hd122585%_
                                   _%K122551%_
                                   _%rest122586%_
                                   _%r122587%_))))
                           (_%E122597122626%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122588122606%_)
                                  (let ((_%e122602122614%_
                                         (gx#syntax-e _%e122588122606%_)))
                                    (let ((_%hd122603122617%_
                                           (##car _%e122602122614%_))
                                          (_%tl122604122619%_
                                           (##cdr _%e122602122614%_)))
                                      (let* ((_%macro122622%_
                                              _%hd122603122617%_)
                                             (_%body122624%_
                                              _%tl122604122619%_))
                                        (if (gx#core-bound-identifier?__%
                                             _%macro122622%_
                                             gx#syntax-binding?)
                                            (_%K122551%_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _%macro122622%_)
                                                    _%hd122585%_
                                                    _%method122547%_)
                                                   _%rest122586%_)
                                             _%r122587%_)
                                            (_%E122601122610%_)))))
                                  (_%E122601122610%_))))
                           (_%E122590122640%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122588122606%_)
                                  (let ((_%e122598122630%_
                                         (gx#syntax-e _%e122588122606%_)))
                                    (let ((_%hd122599122633%_
                                           (##car _%e122598122630%_))
                                          (_%tl122600122635%_
                                           (##cdr _%e122598122630%_)))
                                      (if (eq? (gx#stx-e _%hd122599122633%_)
                                               'begin:)
                                          (let ((_%body122638%_
                                                 _%tl122600122635%_))
                                            (if '#t
                                                (_%K122551%_
                                                 (gx#stx-foldr
                                                  cons
                                                  _%rest122586%_
                                                  _%body122638%_)
                                                 _%r122587%_)
                                                (_%E122597122626%_)))
                                          (_%E122597122626%_))))
                                  (_%E122597122626%_))))
                           (_%E122589122667%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122588122606%_)
                                  (let ((_%e122591122644%_
                                         (gx#syntax-e _%e122588122606%_)))
                                    (let ((_%hd122592122647%_
                                           (##car _%e122591122644%_))
                                          (_%tl122593122649%_
                                           (##cdr _%e122591122644%_)))
                                      (if (eq? (gx#stx-e _%hd122592122647%_)
                                               'phi:)
                                          (if (gx#stx-pair? _%tl122593122649%_)
                                              (let ((_%e122594122652%_
                                                     (gx#syntax-e
                                                      _%tl122593122649%_)))
                                                (let ((_%hd122595122655%_
                                                       (##car _%e122594122652%_))
                                                      (_%tl122596122657%_
                                                       (##cdr _%e122594122652%_)))
                                                  (let* ((_%dphi122660%_
                                                          _%hd122595122655%_)
                                                         (_%body122662%_
                                                          _%tl122596122657%_))
                                                    (if (gx#stx-fixnum?
                                                         _%dphi122660%_)
                                                        (let ((_%rbody122665%_
                                                               (__call-with-parameters
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_%K122551%_ _%body122662%_ '()))
                        _%current-phi122548%_
                        (fx+ (gx#stx-e _%dphi122660%_)
                             (_%current-phi122548%_)))))
                  (_%K122551%_
                   _%rest122586%_
                   (__foldr1 cons _%r122587%_ _%rbody122665%_)))
                (_%E122590122640%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E122590122640%_))
                                          (_%E122590122640%_))))
                                  (_%E122590122640%_)))))
                      (_%E122589122667%_)))))
          (let* ((_%e122553122560%_ _%stx122545%_)
                 (_%E122555122564%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e122553122560%_)))
                 (_%E122554122581%_
                  (lambda ()
                    (if (gx#stx-pair? _%e122553122560%_)
                        (let ((_%e122556122568%_
                               (gx#syntax-e _%e122553122560%_)))
                          (let ((_%hd122557122571%_ (##car _%e122556122568%_))
                                (_%tl122558122573%_ (##cdr _%e122556122568%_)))
                            (let ((_%body122576%_ _%tl122558122573%_))
                              (if '#t
                                  (if (_%current-phi122548%_)
                                      (let () (_%K122551%_ _%body122576%_ '()))
                                      (let ()
                                        (__call-with-parameters
                                         (lambda ()
                                           (_%K122551%_ _%body122576%_ '()))
                                         _%current-phi122548%_
                                         (gx#current-expander-phi))))
                                  (_%E122555122564%_)))))
                        (_%E122555122564%_)))))
            (_%E122554122581%_)))))
    (define gx#core-expand-import%__%
      (lambda (_%stx122199%_ _%internal-expand?122200%_)
        (letrec ((_%expand1122202%_
                  (lambda (_%hd122517%_ _%K122518%_ _%rest122519%_ _%r122520%_)
                    (if (gx#core-bound-module? _%hd122517%_)
                        (let ()
                          (_%import1122203%_
                           (gx#syntax-local-e__0 _%hd122517%_)
                           _%K122518%_
                           _%rest122519%_
                           _%r122520%_))
                        (if (gx#core-library-module-path? _%hd122517%_)
                            (let ()
                              (_%import1122203%_
                               (gx#import-module__0
                                (gx#core-resolve-library-module-path
                                 _%hd122517%_))
                               _%K122518%_
                               _%rest122519%_
                               _%r122520%_))
                            (if (gx#core-library-relative-module-path?
                                 _%hd122517%_)
                                (let ()
                                  (_%import1122203%_
                                   (gx#import-module__0
                                    (gx#core-resolve-library-relative-module-path
                                     _%hd122517%_))
                                   _%K122518%_
                                   _%rest122519%_
                                   _%r122520%_))
                                (let ()
                                  (let ((_%e122526%_ (gx#stx-e _%hd122517%_)))
                                    (if (pair? _%e122526%_)
                                        (let ()
                                          (let ((_%$e122529%_
                                                 (gx#stx-e (car _%e122526%_))))
                                            (if (eq? 'spec: _%$e122529%_)
                                                (_%import-spec122206%_
                                                 _%hd122517%_
                                                 _%K122518%_
                                                 _%rest122519%_
                                                 _%r122520%_)
                                                (if (eq? 'in: _%$e122529%_)
                                                    (_%import-submodule122204%_
                                                     _%hd122517%_
                                                     _%K122518%_
                                                     _%rest122519%_
                                                     _%r122520%_)
                                                    (if (eq? 'runtime:
                                                             _%$e122529%_)
                                                        (_%import-runtime122205%_
                                                         _%hd122517%_
                                                         _%K122518%_
                                                         _%rest122519%_
                                                         _%r122520%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; illegal import"
                                                         _%stx122199%_
                                                         _%hd122517%_))))))
                                        (if (string? _%e122526%_)
                                            (let ()
                                              (_%import1122203%_
                                               (gx#import-module__0
                                                (gx#core-resolve-module-path__%
                                                 _%hd122517%_
                                                 (gx#stx-source
                                                  _%stx122199%_)))
                                               _%K122518%_
                                               _%rest122519%_
                                               _%r122520%_))
                                            (if (##structure-instance-of?
                                                 _%e122526%_
                                                 'gx#module-context::t)
                                                (let ()
                                                  (_%K122518%_
                                                   _%rest122519%_
                                                   (cons _%e122526%_
                                                         _%r122520%_)))
                                                (let ()
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; illegal import"
                                                   _%stx122199%_
                                                   _%hd122517%_))))))))))))
                 (_%import1122203%_
                  (lambda (_%ctx122506%_
                           _%K122507%_
                           _%rest122508%_
                           _%r122509%_)
                    (let ((_%dphi122511%_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_%K122507%_
                       _%rest122508%_
                       (cons (##structure
                              gx#import-set::t
                              _%ctx122506%_
                              _%dphi122511%_
                              (map (lambda (_%g122512122514%_)
                                     (gx#core-module-export->import__%
                                      _%g122512122514%_
                                      '#f
                                      _%dphi122511%_))
                                   (##unchecked-structure-ref
                                    _%ctx122506%_
                                    '9
                                    '#f
                                    '#f)))
                             _%r122509%_)))))
                 (_%import-submodule122204%_
                  (lambda (_%hd122473%_ _%K122474%_ _%rest122475%_ _%r122476%_)
                    (let* ((_%e122477122484%_ _%hd122473%_)
                           (_%E122479122488%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e122477122484%_)))
                           (_%E122478122502%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122477122484%_)
                                  (let ((_%e122480122492%_
                                         (gx#syntax-e _%e122477122484%_)))
                                    (let ((_%hd122481122495%_
                                           (##car _%e122480122492%_))
                                          (_%tl122482122497%_
                                           (##cdr _%e122480122492%_)))
                                      (let ((_%spath122500%_
                                             _%tl122482122497%_))
                                        (if '#t
                                            (_%import1122203%_
                                             (_%import-spec-source122207%_
                                              _%spath122500%_)
                                             _%K122474%_
                                             _%rest122475%_
                                             _%r122476%_)
                                            (_%E122479122488%_)))))
                                  (_%E122479122488%_)))))
                      (_%E122478122502%_))))
                 (_%import-runtime122205%_
                  (lambda (_%hd122440%_ _%K122441%_ _%rest122442%_ _%r122443%_)
                    (let* ((_%e122444122451%_ _%hd122440%_)
                           (_%E122446122455%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e122444122451%_)))
                           (_%E122445122469%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122444122451%_)
                                  (let ((_%e122447122459%_
                                         (gx#syntax-e _%e122444122451%_)))
                                    (let ((_%hd122448122462%_
                                           (##car _%e122447122459%_))
                                          (_%tl122449122464%_
                                           (##cdr _%e122447122459%_)))
                                      (let ((_%spath122467%_
                                             _%tl122449122464%_))
                                        (if '#t
                                            (_%K122441%_
                                             _%rest122442%_
                                             (cons (_%import-spec-source122207%_
                                                    _%spath122467%_)
                                                   _%r122443%_))
                                            (_%E122446122455%_)))))
                                  (_%E122446122455%_)))))
                      (_%E122445122469%_))))
                 (_%import-spec122206%_
                  (lambda (_%hd122278%_ _%K122279%_ _%rest122280%_ _%r122281%_)
                    (let* ((_%e122282122299%_ _%hd122278%_)
                           (_%E122291122303%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e122282122299%_)))
                           (_%E122284122414%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122282122299%_)
                                  (let ((_%e122292122307%_
                                         (gx#syntax-e _%e122282122299%_)))
                                    (let ((_%hd122293122310%_
                                           (##car _%e122292122307%_))
                                          (_%tl122294122312%_
                                           (##cdr _%e122292122307%_)))
                                      (if (gx#stx-pair? _%tl122294122312%_)
                                          (let ((_%e122295122315%_
                                                 (gx#syntax-e
                                                  _%tl122294122312%_)))
                                            (let ((_%hd122296122318%_
                                                   (##car _%e122295122315%_))
                                                  (_%tl122297122320%_
                                                   (##cdr _%e122295122315%_)))
                                              (let* ((_%path122323%_
                                                      _%hd122296122318%_)
                                                     (_%specs122325%_
                                                      _%tl122297122320%_))
                                                (if '#t
                                                    (let ((_%src-ctx122327%_
                                                           (_%import-spec-source122207%_
                                                            _%path122323%_))
                                                          (_%exports122328%_
                                                           (make-hash-table))
                                                          (_%specs122329%_
                                                           (gx#syntax->list
                                                            _%specs122325%_)))
                                                      (for-each
                                                       (lambda (_%out122331%_)
                                                         (hash-put!
                                                          _%exports122328%_
                                                          (cons (##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%out122331%_
                         '3
                         '#f
                         '#f)
                        (##unchecked-structure-ref _%out122331%_ '4 '#f '#f))
                  _%out122331%_))
               (##unchecked-structure-ref _%src-ctx122327%_ '9 '#f '#f))
              (_%K122279%_
               _%rest122280%_
               (__foldl1
                (lambda (_%spec122333%_ _%r122334%_)
                  (let* ((_%e122335122351%_ _%spec122333%_)
                         (_%E122337122355%_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _%e122335122351%_)))
                         (_%E122336122410%_
                          (lambda ()
                            (if (gx#stx-pair? _%e122335122351%_)
                                (let ((_%e122338122359%_
                                       (gx#syntax-e _%e122335122351%_)))
                                  (let ((_%hd122339122362%_
                                         (##car _%e122338122359%_))
                                        (_%tl122340122364%_
                                         (##cdr _%e122338122359%_)))
                                    (let ((_%phi122367%_ _%hd122339122362%_))
                                      (if (gx#stx-pair? _%tl122340122364%_)
                                          (let ((_%e122341122369%_
                                                 (gx#syntax-e
                                                  _%tl122340122364%_)))
                                            (let ((_%hd122342122372%_
                                                   (##car _%e122341122369%_))
                                                  (_%tl122343122374%_
                                                   (##cdr _%e122341122369%_)))
                                              (let ((_%name122377%_
                                                     _%hd122342122372%_))
                                                (if (gx#stx-pair?
                                                     _%tl122343122374%_)
                                                    (let ((_%e122344122379%_
                                                           (gx#syntax-e
                                                            _%tl122343122374%_)))
                                                      (let ((_%hd122345122382%_
                                                             (##car _%e122344122379%_))
                                                            (_%tl122346122384%_
                                                             (##cdr _%e122344122379%_)))
                                                        (let ((_%src-phi122387%_
                                                               _%hd122345122382%_))
                                                          (if (gx#stx-pair?
                                                               _%tl122346122384%_)
                                                              (let ((_%e122347122389%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl122346122384%_)))
                        (let ((_%hd122348122392%_ (##car _%e122347122389%_))
                              (_%tl122349122394%_ (##cdr _%e122347122389%_)))
                          (let ((_%src-name122397%_ _%hd122348122392%_))
                            (if (gx#stx-null? _%tl122349122394%_)
                                (if (and (gx#stx-fixnum? _%src-phi122387%_)
                                         (gx#identifier? _%src-name122397%_)
                                         (gx#stx-fixnum? _%phi122367%_)
                                         (gx#identifier? _%name122377%_))
                                    (let ((_%src-phi122399%_
                                           (gx#stx-e _%src-phi122387%_))
                                          (_%src-name122400%_
                                           (gx#core-identifier-key
                                            _%src-name122397%_))
                                          (_%phi122401%_
                                           (gx#stx-e _%phi122367%_))
                                          (_%name122402%_
                                           (gx#core-identifier-key
                                            _%name122377%_)))
                                      (let ((_%$e122404%_
                                             (hash-get
                                              _%exports122328%_
                                              (cons _%src-phi122399%_
                                                    _%src-name122400%_))))
                                        (if _%$e122404%_
                                            ((lambda (_%out122407%_)
                                               (cons (gx#core-module-export->import__%
                                                      _%out122407%_
                                                      _%name122402%_
                                                      (fx- _%phi122401%_
                                                           _%src-phi122399%_))
                                                     _%r122334%_))
                                             _%$e122404%_)
                                            (let ()
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; no matching export"
                                               _%stx122199%_
                                               _%hd122278%_)))))
                                    (_%E122337122355%_))
                                (_%E122337122355%_)))))
                      (_%E122337122355%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E122337122355%_)))))
                                          (_%E122337122355%_)))))
                                (_%E122337122355%_)))))
                    (_%E122336122410%_)))
                _%r122281%_
                _%specs122329%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E122291122303%_)))))
                                          (_%E122291122303%_))))
                                  (_%E122291122303%_))))
                           (_%E122283122436%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122282122299%_)
                                  (let ((_%e122285122418%_
                                         (gx#syntax-e _%e122282122299%_)))
                                    (let ((_%hd122286122421%_
                                           (##car _%e122285122418%_))
                                          (_%tl122287122423%_
                                           (##cdr _%e122285122418%_)))
                                      (if (gx#stx-pair? _%tl122287122423%_)
                                          (let ((_%e122288122426%_
                                                 (gx#syntax-e
                                                  _%tl122287122423%_)))
                                            (let ((_%hd122289122429%_
                                                   (##car _%e122288122426%_))
                                                  (_%tl122290122431%_
                                                   (##cdr _%e122288122426%_)))
                                              (let ((_%path122434%_
                                                     _%hd122289122429%_))
                                                (if (gx#stx-null?
                                                     _%tl122290122431%_)
                                                    (if '#t
                                                        (_%K122279%_
                                                         _%rest122280%_
                                                         (cons (_%import-spec-source122207%_
                                                                _%path122434%_)
                                                               _%r122281%_))
                                                        (_%E122284122414%_))
                                                    (_%E122284122414%_)))))
                                          (_%E122284122414%_))))
                                  (_%E122284122414%_)))))
                      (_%E122283122436%_))))
                 (_%import-spec-source122207%_
                  (lambda (_%spath122276%_)
                    (gx#core-import-nested-module
                     _%spath122276%_
                     _%stx122199%_)))
                 (_%import!122208%_
                  (lambda (_%rbody122221%_)
                    (letrec* ((_%current-ctx122223%_
                               (gx#current-expander-context))
                              (_%deps122224%_ (make-hash-table-eq))
                              (_%bind!122225%_
                               (lambda (_%hd122274%_)
                                 (gx#core-bind-import!__1
                                  _%hd122274%_
                                  _%current-ctx122223%_))))
                      (let _%lp122227%_ ((_%rest122229%_ _%rbody122221%_)
                                         (_%body122230%_ '()))
                        (let* ((_%rest122231122239%_ _%rest122229%_)
                               (_%else122233122250%_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _%current-ctx122223%_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _%current-ctx122223%_
                                       (__foldl1
                                        cons
                                        (##unchecked-structure-ref
                                         _%current-ctx122223%_
                                         '8
                                         '#f
                                         '#f)
                                        _%body122230%_)
                                       '8
                                       '#f
                                       '#f)
                                      '#!void)
                                  (hash-for-each
                                   (lambda (_%ctx122247%_ _%_122248%_)
                                     (gx#eval-module _%ctx122247%_))
                                   _%deps122224%_)
                                  _%body122230%_))
                               (_%K122235122262%_
                                (lambda (_%rest122253%_ _%hd122254%_)
                                  (if (##structure-direct-instance-of?
                                       _%hd122254%_
                                       'gx#module-import::t)
                                      (let ()
                                        (_%bind!122225%_ _%hd122254%_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _%hd122254%_
                                                   '3
                                                   '#f
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _%hd122254%_
                                                            '1
                                                            '#f
                                                            '#f)
                                                           '3
                                                           '#f
                                                           '#f)))
                                            (hash-put!
                                             _%deps122224%_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _%hd122254%_
                                               '1
                                               '#f
                                               '#f)
                                              '1
                                              '#f
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _%hd122254%_
                                           'gx#import-set::t)
                                          (let ()
                                            (for-each
                                             _%bind!122225%_
                                             (##unchecked-structure-ref
                                              _%hd122254%_
                                              '3
                                              '#f
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _%hd122254%_
                                                  '2
                                                  '#f
                                                  '#f))
                                                (hash-put!
                                                 _%deps122224%_
                                                 (##unchecked-structure-ref
                                                  _%hd122254%_
                                                  '1
                                                  '#f
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_%$e122258%_
                                                 (##structure-instance-of?
                                                  _%hd122254%_
                                                  'gx#module-context::t)))
                                            (if _%$e122258%_
                                                _%$e122258%_
                                                (let ()
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Unexpected import"
                                                   _%stx122199%_
                                                   _%hd122254%_))))))
                                  (_%lp122227%_
                                   _%rest122253%_
                                   (cons _%hd122254%_ _%body122230%_)))))
                          (if (##pair? _%rest122231122239%_)
                              (let ((_%hd122236122265%_
                                     (##car _%rest122231122239%_))
                                    (_%tl122237122267%_
                                     (##cdr _%rest122231122239%_)))
                                (let* ((_%hd122270%_ _%hd122236122265%_)
                                       (_%rest122272%_ _%tl122237122267%_))
                                  (_%K122235122262%_
                                   _%rest122272%_
                                   _%hd122270%_)))
                              (_%else122233122250%_)))))))
                 (_%expanded-import?122209%_
                  (lambda (_%e122213%_)
                    (let ((_%$e122215%_
                           (##structure-direct-instance-of?
                            _%e122213%_
                            'gx#import-set::t)))
                      (if _%$e122215%_
                          _%$e122215%_
                          (let ((_%$e122218%_
                                 (##structure-direct-instance-of?
                                  _%e122213%_
                                  'gx#module-import::t)))
                            (if _%$e122218%_
                                _%$e122218%_
                                (##structure-instance-of?
                                 _%e122213%_
                                 'gx#module-context::t))))))))
          (let ((_%rbody122211%_
                 (gx#core-expand-import/export
                  _%stx122199%_
                  _%expanded-import?122209%_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _%expand1122202%_)))
            (if _%internal-expand?122200%_
                (reverse _%rbody122211%_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_%import!122208%_ _%rbody122211%_))
                 (gx#stx-source _%stx122199%_)))))))
    (define gx#core-expand-import%__0
      (lambda (_%stx122538%_)
        (let ((_%internal-expand?122540%_ '#f))
          (gx#core-expand-import%__%
           _%stx122538%_
           _%internal-expand?122540%_))))
    (define gx#core-expand-import%
      (lambda _g125187_
        (let ((_g125186_ (##length _g125187_)))
          (cond ((##fx= _g125186_ 1)
                 (apply (lambda (_%stx122538%_)
                          (gx#core-expand-import%__0 _%stx122538%_))
                        _g125187_))
                ((##fx= _g125186_ 2)
                 (apply (lambda (_%stx122542%_ _%internal-expand?122543%_)
                          (gx#core-expand-import%__%
                           _%stx122542%_
                           _%internal-expand?122543%_))
                        _g125187_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g125187_))))))
    (define gx#core-import-nested-module
      (lambda (_%spath122126%_ _%where122127%_)
        (let* ((_%e122128122135%_ _%spath122126%_)
               (_%E122130122139%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122128122135%_)))
               (_%E122129122194%_
                (lambda ()
                  (if (gx#stx-pair? _%e122128122135%_)
                      (let ((_%e122131122143%_
                             (gx#syntax-e _%e122128122135%_)))
                        (let ((_%hd122132122146%_ (##car _%e122131122143%_))
                              (_%tl122133122148%_ (##cdr _%e122131122143%_)))
                          (let* ((_%origin122151%_ _%hd122132122146%_)
                                 (_%sub122153%_ _%tl122133122148%_))
                            (if '#t
                                (let ((_%origin-ctx122155%_
                                       (if (gx#stx-false? _%origin122151%_)
                                           (gx#current-expander-context)
                                           (gx#import-module__0
                                            _%origin122151%_))))
                                  (let _%lp122157%_ ((_%rest122159%_
                                                      _%sub122153%_)
                                                     (_%ctx122160%_
                                                      _%origin-ctx122155%_))
                                    (let* ((_%e122161122168%_ _%rest122159%_)
                                           (_%E122163122172%_
                                            (lambda () _%ctx122160%_))
                                           (_%E122162122190%_
                                            (lambda ()
                                              (if (gx#stx-pair?
                                                   _%e122161122168%_)
                                                  (let ((_%e122164122176%_
                                                         (gx#syntax-e
                                                          _%e122161122168%_)))
                                                    (let ((_%hd122165122179%_
                                                           (##car _%e122164122176%_))
                                                          (_%tl122166122181%_
                                                           (##cdr _%e122164122176%_)))
                                                      (let* ((_%id122184%_
                                                              _%hd122165122179%_)
                                                             (_%rest122186%_
                                                              _%tl122166122181%_))
                                                        (if '#t
                                                            (let ((_%bind122188%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#resolve-identifier__%
                            _%id122184%_
                            '0
                            _%ctx122160%_)))
                      (if (and (##structure-direct-instance-of?
                                _%bind122188%_
                                'gx#syntax-binding::t)
                               (##structure-instance-of?
                                (##unchecked-structure-ref
                                 _%bind122188%_
                                 '4
                                 '#f
                                 '#f)
                                'gx#module-context::t))
                          '#!void
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; not bound as module"
                           _%where122127%_
                           _%spath122126%_
                           _%id122184%_))
                      (_%lp122157%_
                       _%rest122186%_
                       (##unchecked-structure-ref _%bind122188%_ '4 '#f '#f)))
                    (_%E122163122172%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E122163122172%_)))))
                                      (_%E122162122190%_))))
                                (_%E122130122139%_)))))
                      (_%E122130122139%_)))))
          (_%E122129122194%_))))
    (define gx#core-expand-import-source
      (lambda (_%hd122124%_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _%hd122124%_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_%stx121618%_ _%internal-expand?121619%_)
        (letrec* ((_%make-export__125115125116%_
                   (lambda (_%bind122072%_
                            _%phi122073%_
                            _%ctx122074%_
                            _%name122075%_)
                     (let* ((_%key122077%_
                             (##unchecked-structure-ref
                              _%bind122072%_
                              '2
                              '#f
                              '#f))
                            (_%export-key122079%_
                             (if _%name122075%_
                                 (gx#core-identifier-key _%name122075%_)
                                 _%key122077%_)))
                       (##structure
                        gx#module-export::t
                        _%ctx122074%_
                        _%key122077%_
                        _%phi122073%_
                        _%export-key122079%_
                        (let ((_%$e122082%_
                               (##structure-instance-of?
                                _%bind122072%_
                                'gx#extern-binding::t)))
                          (if _%$e122082%_
                              _%$e122082%_
                              (##structure-direct-instance-of?
                               _%bind122072%_
                               'gx#import-binding::t)))))))
                  (_%make-export__0__125117125120%_
                   (lambda (_%bind122088%_)
                     (let* ((_%phi122090%_ (gx#current-export-expander-phi))
                            (_%ctx122092%_ (gx#current-expander-context))
                            (_%name122094%_ '#f))
                       (_%make-export__125115125116%_
                        _%bind122088%_
                        _%phi122090%_
                        _%ctx122092%_
                        _%name122094%_))))
                  (_%make-export__1__125118125121%_
                   (lambda (_%bind122096%_ _%phi122097%_)
                     (let* ((_%ctx122099%_ (gx#current-expander-context))
                            (_%name122101%_ '#f))
                       (_%make-export__125115125116%_
                        _%bind122096%_
                        _%phi122097%_
                        _%ctx122099%_
                        _%name122101%_))))
                  (_%make-export__2__125119125122%_
                   (lambda (_%bind122103%_ _%phi122104%_ _%ctx122105%_)
                     (let ((_%name122107%_ '#f))
                       (_%make-export__125115125116%_
                        _%bind122103%_
                        _%phi122104%_
                        _%ctx122105%_
                        _%name122107%_))))
                  (_%make-export121621%_
                   (lambda _g125189_
                     (let ((_g125188_ (##length _g125189_)))
                       (cond ((##fx= _g125188_ 1)
                              (apply (lambda (_%bind122088%_)
                                       (_%make-export__0__125117125120%_
                                        _%bind122088%_))
                                     _g125189_))
                             ((##fx= _g125188_ 2)
                              (apply (lambda (_%bind122096%_ _%phi122097%_)
                                       (_%make-export__1__125118125121%_
                                        _%bind122096%_
                                        _%phi122097%_))
                                     _g125189_))
                             ((##fx= _g125188_ 3)
                              (apply (lambda (_%bind122103%_
                                              _%phi122104%_
                                              _%ctx122105%_)
                                       (_%make-export__2__125119125122%_
                                        _%bind122103%_
                                        _%phi122104%_
                                        _%ctx122105%_))
                                     _g125189_))
                             ((##fx= _g125188_ 4)
                              (apply (lambda (_%bind122109%_
                                              _%phi122110%_
                                              _%ctx122111%_
                                              _%name122112%_)
                                       (_%make-export__125115125116%_
                                        _%bind122109%_
                                        _%phi122110%_
                                        _%ctx122111%_
                                        _%name122112%_))
                                     _g125189_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g125189_))))))
                  (_%expand1121622%_
                   (lambda (_%hd121777%_
                            _%K121778%_
                            _%rest121779%_
                            _%r121780%_)
                     (let* ((_%e121781121813%_ _%hd121777%_)
                            (_%E121808121817%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _%stx121618%_
                                _%hd121777%_)))
                            (_%E121798121901%_
                             (lambda ()
                               (if (gx#stx-pair? _%e121781121813%_)
                                   (let ((_%e121809121821%_
                                          (gx#syntax-e _%e121781121813%_)))
                                     (let ((_%hd121810121824%_
                                            (##car _%e121809121821%_))
                                           (_%tl121811121826%_
                                            (##cdr _%e121809121821%_)))
                                       (if (eq? (gx#stx-e _%hd121810121824%_)
                                                'import:)
                                           (let ((_%in121829%_
                                                  _%tl121811121826%_))
                                             (if (gx#stx-list? _%in121829%_)
                                                 (let _%lp121831%_ ((_%in-rest121833%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%in121829%_)
                            (_%r121834%_ _%r121780%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%e121835121842%_
                                                           _%in-rest121833%_)
                                                          (_%E121837121846%_
                                                           (lambda ()
                                                             (_%K121778%_
                                                              _%rest121779%_
                                                              _%r121834%_)))
                                                          (_%E121836121897%_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%e121835121842%_)
                         (let ((_%e121838121850%_
                                (gx#syntax-e _%e121835121842%_)))
                           (let ((_%hd121839121853%_ (##car _%e121838121850%_))
                                 (_%tl121840121855%_
                                  (##cdr _%e121838121850%_)))
                             (let* ((_%hd121858%_ _%hd121839121853%_)
                                    (_%in-rest121860%_ _%tl121840121855%_))
                               (if '#t
                                   (let ((_%src121895%_
                                          (if (gx#core-bound-module?
                                               _%hd121858%_)
                                              (let ()
                                                (gx#syntax-local-e__0
                                                 _%hd121858%_))
                                              (if (gx#core-library-module-path?
                                                   _%hd121858%_)
                                                  (let ()
                                                    (gx#import-module__0
                                                     (gx#core-resolve-library-module-path
                                                      _%hd121858%_)))
                                                  (if (gx#core-library-relative-module-path?
                                                       _%hd121858%_)
                                                      (let ()
                                                        (gx#import-module__0
                                                         (gx#core-resolve-library-relative-module-path
                                                          _%hd121858%_)))
                                                      (if (gx#stx-string?
                                                           _%hd121858%_)
                                                          (let ()
                                                            (gx#import-module__0
                                                             (gx#core-resolve-module-path__%
                                                              _%hd121858%_
                                                              (gx#stx-source
                                                               _%stx121618%_))))
                                                          (let ()
                                                            (let* ((_%e121866121873%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd121858%_)
                           (_%E121868121877%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; illegal re-export"
                               _%stx121618%_
                               _%hd121858%_)))
                           (_%E121867121891%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121866121873%_)
                                  (let ((_%e121869121881%_
                                         (gx#syntax-e _%e121866121873%_)))
                                    (let ((_%hd121870121884%_
                                           (##car _%e121869121881%_))
                                          (_%tl121871121886%_
                                           (##cdr _%e121869121881%_)))
                                      (if (eq? (gx#stx-e _%hd121870121884%_)
                                               'in:)
                                          (let ((_%spath121889%_
                                                 _%tl121871121886%_))
                                            (if '#t
                                                (gx#core-import-nested-module
                                                 _%spath121889%_
                                                 _%stx121618%_)
                                                (_%E121868121877%_)))
                                          (_%E121868121877%_))))
                                  (_%E121868121877%_)))))
                      (_%E121867121891%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%lp121831%_
                                      _%in-rest121860%_
                                      (_%export-imports121623%_
                                       _%src121895%_
                                       _%r121834%_)))
                                   (_%E121837121846%_)))))
                         (_%E121837121846%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E121836121897%_)))
                                                 (_%E121808121817%_)))
                                           (_%E121808121817%_))))
                                   (_%E121808121817%_))))
                            (_%E121785121941%_
                             (lambda ()
                               (if (gx#stx-pair? _%e121781121813%_)
                                   (let ((_%e121799121905%_
                                          (gx#syntax-e _%e121781121813%_)))
                                     (let ((_%hd121800121908%_
                                            (##car _%e121799121905%_))
                                           (_%tl121801121910%_
                                            (##cdr _%e121799121905%_)))
                                       (if (eq? (gx#stx-e _%hd121800121908%_)
                                                'rename:)
                                           (if (gx#stx-pair?
                                                _%tl121801121910%_)
                                               (let ((_%e121802121913%_
                                                      (gx#syntax-e
                                                       _%tl121801121910%_)))
                                                 (let ((_%hd121803121916%_
                                                        (##car _%e121802121913%_))
                                                       (_%tl121804121918%_
                                                        (##cdr _%e121802121913%_)))
                                                   (let ((_%id121921%_
                                                          _%hd121803121916%_))
                                                     (if (gx#stx-pair?
                                                          _%tl121804121918%_)
                                                         (let ((_%e121805121923%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl121804121918%_)))
                   (let ((_%hd121806121926%_ (##car _%e121805121923%_))
                         (_%tl121807121928%_ (##cdr _%e121805121923%_)))
                     (let ((_%name121931%_ _%hd121806121926%_))
                       (if (gx#stx-null? _%tl121807121928%_)
                           (if '#t
                               (let* ((_%phi121933%_
                                       (gx#current-export-expander-phi))
                                      (_%$e121935%_
                                       (gx#core-resolve-identifier__1
                                        _%id121921%_
                                        _%phi121933%_)))
                                 (if _%$e121935%_
                                     ((lambda (_%bind121938%_)
                                        (_%K121778%_
                                         _%rest121779%_
                                         (cons (_%make-export__125115125116%_
                                                _%bind121938%_
                                                _%phi121933%_
                                                (gx#current-expander-context)
                                                _%name121931%_)
                                               _%r121780%_)))
                                      _%$e121935%_)
                                     (let ()
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Reference to unbound identifier"
                                        _%stx121618%_
                                        _%hd121777%_
                                        _%id121921%_))))
                               (_%E121798121901%_))
                           (_%E121798121901%_)))))
                 (_%E121798121901%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E121798121901%_))
                                           (_%E121798121901%_))))
                                   (_%E121798121901%_))))
                            (_%E121784121991%_
                             (lambda ()
                               (if (gx#stx-pair? _%e121781121813%_)
                                   (let ((_%e121786121945%_
                                          (gx#syntax-e _%e121781121813%_)))
                                     (let ((_%hd121787121948%_
                                            (##car _%e121786121945%_))
                                           (_%tl121788121950%_
                                            (##cdr _%e121786121945%_)))
                                       (if (eq? (gx#stx-e _%hd121787121948%_)
                                                'spec:)
                                           (if (gx#stx-pair?
                                                _%tl121788121950%_)
                                               (let ((_%e121789121953%_
                                                      (gx#syntax-e
                                                       _%tl121788121950%_)))
                                                 (let ((_%hd121790121956%_
                                                        (##car _%e121789121953%_))
                                                       (_%tl121791121958%_
                                                        (##cdr _%e121789121953%_)))
                                                   (let ((_%phi121961%_
                                                          _%hd121790121956%_))
                                                     (if (gx#stx-pair?
                                                          _%tl121791121958%_)
                                                         (let ((_%e121792121963%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl121791121958%_)))
                   (let ((_%hd121793121966%_ (##car _%e121792121963%_))
                         (_%tl121794121968%_ (##cdr _%e121792121963%_)))
                     (let ((_%id121971%_ _%hd121793121966%_))
                       (if (gx#stx-pair? _%tl121794121968%_)
                           (let ((_%e121795121973%_
                                  (gx#syntax-e _%tl121794121968%_)))
                             (let ((_%hd121796121976%_
                                    (##car _%e121795121973%_))
                                   (_%tl121797121978%_
                                    (##cdr _%e121795121973%_)))
                               (let ((_%name121981%_ _%hd121796121976%_))
                                 (if (gx#stx-null? _%tl121797121978%_)
                                     (if (and (gx#stx-fixnum? _%phi121961%_)
                                              (gx#identifier? _%id121971%_)
                                              (gx#identifier? _%name121981%_))
                                         (let* ((_%phi121983%_
                                                 (gx#stx-e _%phi121961%_))
                                                (_%$e121985%_
                                                 (gx#core-resolve-identifier__1
                                                  _%id121971%_
                                                  _%phi121983%_)))
                                           (if _%$e121985%_
                                               ((lambda (_%bind121988%_)
                                                  (_%K121778%_
                                                   _%rest121779%_
                                                   (cons (_%make-export__125115125116%_
                                                          _%bind121988%_
                                                          _%phi121983%_
                                                          (gx#current-expander-context)
                                                          _%name121981%_)
                                                         _%r121780%_)))
                                                _%$e121985%_)
                                               (let ()
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Reference to unbound identifier"
                                                  _%stx121618%_
                                                  _%hd121777%_
                                                  _%id121971%_))))
                                         (_%E121785121941%_))
                                     (_%E121785121941%_)))))
                           (_%E121785121941%_)))))
                 (_%E121785121941%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E121785121941%_))
                                           (_%E121785121941%_))))
                                   (_%E121785121941%_))))
                            (_%E121783122003%_
                             (lambda ()
                               (let ((_%id121995%_ _%e121781121813%_))
                                 (if (gx#identifier? _%id121995%_)
                                     (let ((_%$e121997%_
                                            (gx#core-resolve-identifier__1
                                             _%id121995%_
                                             (gx#current-export-expander-phi))))
                                       (if _%$e121997%_
                                           ((lambda (_%bind122000%_)
                                              (_%K121778%_
                                               _%rest121779%_
                                               (cons (_%make-export__0__125117125120%_
                                                      _%bind122000%_)
                                                     _%r121780%_)))
                                            _%$e121997%_)
                                           (let ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Reference to unbound identifier"
                                              _%stx121618%_
                                              _%hd121777%_))))
                                     (_%E121784121991%_)))))
                            (_%E121782122067%_
                             (lambda ()
                               (if (eq? (gx#stx-e _%e121781121813%_) '#t)
                                   (if '#t
                                       (let* ((_%current-ctx122007%_
                                               (gx#current-expander-context))
                                              (_%current-phi122009%_
                                               (gx#current-export-expander-phi))
                                              (_%phi-ctx122011%_
                                               (gx#core-context-shift
                                                _%current-ctx122007%_
                                                _%current-phi122009%_))
                                              (_%phi-bind122013%_
                                               (hash->list
                                                (##unchecked-structure-ref
                                                 _%phi-ctx122011%_
                                                 '2
                                                 '#f
                                                 '#f))))
                                         (let _%lp122016%_ ((_%bind-rest122018%_
                                                             _%phi-bind122013%_)
                                                            (_%set122019%_
                                                             '()))
                                           (let* ((_%bind-rest122020122030%_
                                                   _%bind-rest122018%_)
                                                  (_%else122022122038%_
                                                   (lambda ()
                                                     (_%K121778%_
                                                      _%rest121779%_
                                                      (cons (##structure
                                                             gx#export-set::t
                                                             '#f
                                                             _%current-phi122009%_
                                                             _%set122019%_)
                                                            _%r121780%_))))
                                                  (_%K122024122048%_
                                                   (lambda (_%bind-rest122041%_
                                                            _%bind122042%_
                                                            _%key122043%_)
                                                     (if (or (##structure-direct-instance-of?
                                                              _%bind122042%_
                                                              'gx#import-binding::t)
                                                             (gx#private-feature-binding?
                                                              _%bind122042%_))
                                                         (_%lp122016%_
                                                          _%bind-rest122041%_
                                                          _%set122019%_)
                                                         (_%lp122016%_
                                                          _%bind-rest122041%_
                                                          (cons (_%make-export__2__125119125122%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%bind122042%_
                         _%current-phi122009%_
                         _%current-ctx122007%_)
                        _%set122019%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _%bind-rest122020122030%_)
                                                 (let ((_%hd122025122051%_
                                                        (##car _%bind-rest122020122030%_))
                                                       (_%tl122026122053%_
                                                        (##cdr _%bind-rest122020122030%_)))
                                                   (if (##pair? _%hd122025122051%_)
                                                       (let ((_%hd122027122056%_
                                                              (##car _%hd122025122051%_))
                                                             (_%tl122028122058%_
                                                              (##cdr _%hd122025122051%_)))
                                                         (let* ((_%key122061%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd122027122056%_)
                        (_%bind122063%_ _%tl122028122058%_)
                        (_%bind-rest122065%_ _%tl122026122053%_))
                   (_%K122024122048%_
                    _%bind-rest122065%_
                    _%bind122063%_
                    _%key122061%_)))
               (_%else122022122038%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%else122022122038%_)))))
                                       (_%E121783122003%_))
                                   (_%E121783122003%_)))))
                       (_%E121782122067%_))))
                  (_%export-imports121623%_
                   (lambda (_%src121653%_ _%r121654%_)
                     (letrec* ((_%current-ctx121656%_
                                (gx#current-expander-context))
                               (_%current-phi121657%_
                                (gx#current-export-expander-phi))
                               (_%import->export121658%_
                                (lambda (_%in121739%_)
                                  (let* ((_%in121740121748%_ _%in121739%_)
                                         (_%E121742121752%_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _%in121740121748%_
                                                   '((module-import
                                                      out
                                                      key
                                                      phi)))
                                            '#!void))
                                         (_%K121743121759%_
                                          (lambda (_%phi121755%_
                                                   _%key121756%_
                                                   _%out121757%_)
                                            (##structure
                                             gx#module-export::t
                                             _%current-ctx121656%_
                                             _%key121756%_
                                             _%phi121755%_
                                             _%key121756%_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _%in121740121748%_
                                         'gx#module-import::t)
                                        (let* ((_%e121744121762%_
                                                (##unchecked-structure-ref
                                                 _%in121740121748%_
                                                 '1
                                                 '#f
                                                 '#f))
                                               (_%out121765%_
                                                _%e121744121762%_)
                                               (_%e121745121767%_
                                                (##unchecked-structure-ref
                                                 _%in121740121748%_
                                                 '2
                                                 '#f
                                                 '#f))
                                               (_%key121770%_
                                                _%e121745121767%_)
                                               (_%e121746121772%_
                                                (##unchecked-structure-ref
                                                 _%in121740121748%_
                                                 '3
                                                 '#f
                                                 '#f))
                                               (_%phi121775%_
                                                _%e121746121772%_))
                                          (_%K121743121759%_
                                           _%phi121775%_
                                           _%key121770%_
                                           _%out121765%_))
                                        (_%E121742121752%_)))))
                               (_%fold-e121659%_
                                (lambda (_%in121661%_ _%r121662%_)
                                  (let* ((_%in121663121677%_ _%in121661%_)
                                         (_%else121666121685%_
                                          (lambda () _%r121662%_)))
                                    (let ((_%K121672121721%_
                                           (lambda (_%phi121717%_
                                                    _%key121718%_
                                                    _%out121719%_)
                                             (if (and (fx= _%phi121717%_
                                                           _%current-phi121657%_)
                                                      (eq? _%src121653%_
                                                           (##unchecked-structure-ref
                                                            _%out121719%_
                                                            '1
                                                            '#f
                                                            '#f)))
                                                 (cons (_%import->export121658%_
                                                        _%in121661%_)
                                                       _%r121662%_)
                                                 _%r121662%_)))
                                          (_%K121668121696%_
                                           (lambda (_%imports121689%_
                                                    _%phi121690%_
                                                    _%ctx121691%_)
                                             (if (and (fx= _%phi121690%_
                                                           _%current-phi121657%_)
                                                      (eq? _%src121653%_
                                                           _%ctx121691%_))
                                                 (__foldl1
                                                  (lambda (_%in121693%_
                                                           _%r121694%_)
                                                    (cons (_%import->export121658%_
                                                           _%in121693%_)
                                                          _%r121694%_))
                                                  _%r121662%_
                                                  _%imports121689%_)
                                                 _%r121662%_))))
                                      (let ((_%try-match121665121714%_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _%in121663121677%_
                                                    'gx#import-set::t)
                                                   (let* ((_%e121669121699%_
                                                           (##unchecked-structure-ref
                                                            _%in121663121677%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                          (_%e121670121704%_
                                                           (##unchecked-structure-ref
                                                            _%in121663121677%_
                                                            '2
                                                            '#f
                                                            '#f))
                                                          (_%e121671121709%_
                                                           (##unchecked-structure-ref
                                                            _%in121663121677%_
                                                            '3
                                                            '#f
                                                            '#f)))
                                                     (let ((_%ctx121702%_
                                                            _%e121669121699%_)
                                                           (_%phi121707%_
                                                            _%e121670121704%_)
                                                           (_%imports121712%_
                                                            _%e121671121709%_))
                                                       (_%K121668121696%_
                                                        _%imports121712%_
                                                        _%phi121707%_
                                                        _%ctx121702%_)))
                                                   (_%else121666121685%_)))))
                                        (if (##structure-direct-instance-of?
                                             _%in121663121677%_
                                             'gx#module-import::t)
                                            (let* ((_%e121673121724%_
                                                    (##unchecked-structure-ref
                                                     _%in121663121677%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                   (_%e121674121729%_
                                                    (##unchecked-structure-ref
                                                     _%in121663121677%_
                                                     '2
                                                     '#f
                                                     '#f))
                                                   (_%e121675121734%_
                                                    (##unchecked-structure-ref
                                                     _%in121663121677%_
                                                     '3
                                                     '#f
                                                     '#f)))
                                              (let ((_%out121727%_
                                                     _%e121673121724%_)
                                                    (_%key121732%_
                                                     _%e121674121729%_)
                                                    (_%phi121737%_
                                                     _%e121675121734%_))
                                                (_%K121672121721%_
                                                 _%phi121737%_
                                                 _%key121732%_
                                                 _%out121727%_)))
                                            (_%try-match121665121714%_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _%src121653%_
                              _%current-phi121657%_
                              (__foldl1
                               _%fold-e121659%_
                               '()
                               (##unchecked-structure-ref
                                _%current-ctx121656%_
                                '8
                                '#f
                                '#f)))
                             _%r121654%_))))
                  (_%export!121624%_
                   (lambda (_%rbody121640%_)
                     (letrec* ((_%current-ctx121642%_
                                (gx#current-expander-context))
                               (_%fold-e121643%_
                                (lambda (_%out121647%_ _%r121648%_)
                                  (if (##structure-direct-instance-of?
                                       _%out121647%_
                                       'gx#module-export::t)
                                      (let () (cons _%out121647%_ _%r121648%_))
                                      (if (##structure-direct-instance-of?
                                           _%out121647%_
                                           'gx#export-set::t)
                                          (let ()
                                            (__foldl1
                                             cons
                                             _%r121648%_
                                             (##unchecked-structure-ref
                                              _%out121647%_
                                              '3
                                              '#f
                                              '#f)))
                                          (let () _%r121648%_))))))
                       (let ((_%body121645%_ (reverse _%rbody121640%_)))
                         (##unchecked-structure-set!
                          _%current-ctx121642%_
                          (__foldl1
                           _%fold-e121643%_
                           (##unchecked-structure-ref
                            _%current-ctx121642%_
                            '9
                            '#f
                            '#f)
                           _%body121645%_)
                          '9
                          '#f
                          '#f)
                         _%body121645%_))))
                  (_%expanded-export?121625%_
                   (lambda (_%e121635%_)
                     (let ((_%$e121637%_
                            (##structure-direct-instance-of?
                             _%e121635%_
                             'gx#module-export::t)))
                       (if _%$e121637%_
                           _%$e121637%_
                           (##structure-direct-instance-of?
                            _%e121635%_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _%internal-expand?121619%_)
              (let ()
                (let ((_%rbody121631%_
                       (gx#core-expand-import/export
                        _%stx121618%_
                        _%expanded-export?121625%_
                        'apply-export-expander
                        gx#current-export-expander-phi
                        _%expand1121622%_)))
                  (if _%internal-expand?121619%_
                      (reverse _%rbody121631%_)
                      (gx#core-quote-syntax__1
                       (gx#core-cons
                        '%#export
                        (_%export!121624%_ _%rbody121631%_))
                       (gx#stx-source _%stx121618%_)))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (let ()
                    (gx#core-quote-syntax__1
                     (gx#core-cons '%#begin '())
                     (gx#stx-source _%stx121618%_)))
                  (let ()
                    (gx#raise-syntax-error
                     '#f
                     '"Illegal context"
                     _%stx121618%_)))))))
    (define gx#core-expand-export%__0
      (lambda (_%stx122117%_)
        (let ((_%internal-expand?122119%_ '#f))
          (gx#core-expand-export%__%
           _%stx122117%_
           _%internal-expand?122119%_))))
    (define gx#core-expand-export%
      (lambda _g125191_
        (let ((_g125190_ (##length _g125191_)))
          (cond ((##fx= _g125190_ 1)
                 (apply (lambda (_%stx122117%_)
                          (gx#core-expand-export%__0 _%stx122117%_))
                        _g125191_))
                ((##fx= _g125190_ 2)
                 (apply (lambda (_%stx122121%_ _%internal-expand?122122%_)
                          (gx#core-expand-export%__%
                           _%stx122121%_
                           _%internal-expand?122122%_))
                        _g125191_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g125191_))))))
    (define gx#core-expand-export-source
      (lambda (_%hd121615%_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _%hd121615%_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_%stx121585%_)
        (let* ((_%e121586121593%_ _%stx121585%_)
               (_%E121588121597%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121586121593%_)))
               (_%E121587121611%_
                (lambda ()
                  (if (gx#stx-pair? _%e121586121593%_)
                      (let ((_%e121589121601%_
                             (gx#syntax-e _%e121586121593%_)))
                        (let ((_%hd121590121604%_ (##car _%e121589121601%_))
                              (_%tl121591121606%_ (##cdr _%e121589121601%_)))
                          (let ((_%body121609%_ _%tl121591121606%_))
                            (if (gx#identifier-list? _%body121609%_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _%body121609%_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _%body121609%_))
                                   (gx#stx-source _%stx121585%_)))
                                (_%E121588121597%_)))))
                      (_%E121588121597%_)))))
          (_%E121587121611%_))))
    (define gx#core-bind-feature!__%
      (lambda (_%id121551%_ _%private?121552%_ _%phi121553%_ _%ctx121554%_)
        (gx#core-bind-syntax!__%
         _%id121551%_
         ((if _%private?121552%_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _%id121551%_))
         _%private?121552%_
         _%phi121553%_
         _%ctx121554%_)))
    (define gx#core-bind-feature!__0
      (lambda (_%id121559%_)
        (let* ((_%private?121561%_ '#f)
               (_%phi121563%_ (gx#current-expander-phi))
               (_%ctx121565%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id121559%_
           _%private?121561%_
           _%phi121563%_
           _%ctx121565%_))))
    (define gx#core-bind-feature!__1
      (lambda (_%id121567%_ _%private?121568%_)
        (let* ((_%phi121570%_ (gx#current-expander-phi))
               (_%ctx121572%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id121567%_
           _%private?121568%_
           _%phi121570%_
           _%ctx121572%_))))
    (define gx#core-bind-feature!__2
      (lambda (_%id121574%_ _%private?121575%_ _%phi121576%_)
        (let ((_%ctx121578%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id121574%_
           _%private?121575%_
           _%phi121576%_
           _%ctx121578%_))))
    (define gx#core-bind-feature!
      (lambda _g125193_
        (let ((_g125192_ (##length _g125193_)))
          (cond ((##fx= _g125192_ 1)
                 (apply (lambda (_%id121559%_)
                          (gx#core-bind-feature!__0 _%id121559%_))
                        _g125193_))
                ((##fx= _g125192_ 2)
                 (apply (lambda (_%id121567%_ _%private?121568%_)
                          (gx#core-bind-feature!__1
                           _%id121567%_
                           _%private?121568%_))
                        _g125193_))
                ((##fx= _g125192_ 3)
                 (apply (lambda (_%id121574%_ _%private?121575%_ _%phi121576%_)
                          (gx#core-bind-feature!__2
                           _%id121574%_
                           _%private?121575%_
                           _%phi121576%_))
                        _g125193_))
                ((##fx= _g125192_ 4)
                 (apply (lambda (_%id121580%_
                                 _%private?121581%_
                                 _%phi121582%_
                                 _%ctx121583%_)
                          (gx#core-bind-feature!__%
                           _%id121580%_
                           _%private?121581%_
                           _%phi121582%_
                           _%ctx121583%_))
                        _g125193_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g125193_))))))))
