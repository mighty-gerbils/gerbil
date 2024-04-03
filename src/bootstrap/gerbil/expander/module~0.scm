(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1712124235)
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
      (lambda _%$args125147%_
        (apply make-instance gx#module-import::t _%$args125147%_)))
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
      (lambda _%$args125144%_
        (apply make-instance gx#module-export::t _%$args125144%_)))
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
      (lambda _%$args125141%_
        (apply make-instance gx#import-set::t _%$args125141%_)))
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
      (lambda _%$args125138%_
        (apply make-instance gx#export-set::t _%$args125138%_)))
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
      (lambda _%$args125135%_
        (apply make-instance gx#import-expander::t _%$args125135%_)))
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
      (lambda _%$args125132%_
        (apply make-instance gx#export-expander::t _%$args125132%_)))
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
      (lambda _%$args125129%_
        (apply make-instance gx#import-export-expander::t _%$args125129%_)))
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
      (lambda (_%path125126%_ _%fun125127%_)
        (call-with-input-file
         (cons 'path: (cons _%path125126%_ gx#source-file-settings))
         _%fun125127%_)))
    (define gx#module-context:::init!
      (lambda (_%self125109%_
               _%id125110%_
               _%super125111%_
               _%ns125112%_
               _%path125113%_)
        (let ()
          (let ((_%self125116%_ _%self125109%_))
            (let ()
              (if (##fx< '11 (##structure-length _%self125116%_))
                  (begin
                    (##unchecked-structure-set!
                     _%self125116%_
                     _%id125110%_
                     '1
                     '#f
                     '#f)
                    (##unchecked-structure-set!
                     _%self125116%_
                     (make-hash-table-eq)
                     '2
                     '#f
                     '#f)
                    (##unchecked-structure-set!
                     _%self125116%_
                     _%super125111%_
                     '3
                     '#f
                     '#f)
                    (##unchecked-structure-set! _%self125116%_ '#f '4 '#f '#f)
                    (##unchecked-structure-set! _%self125116%_ '#f '5 '#f '#f)
                    (##unchecked-structure-set!
                     _%self125116%_
                     _%ns125112%_
                     '6
                     '#f
                     '#f)
                    (##unchecked-structure-set!
                     _%self125116%_
                     _%path125113%_
                     '7
                     '#f
                     '#f)
                    (##unchecked-structure-set! _%self125116%_ '() '8 '#f '#f)
                    (##unchecked-structure-set! _%self125116%_ '() '9 '#f '#f)
                    (##unchecked-structure-set! _%self125116%_ '#f '10 '#f '#f)
                    (##unchecked-structure-set! _%self125116%_ '#f '11 '#f '#f)
                    '#!void)
                  (error '"struct-instance-init!: too many arguments for struct"
                         _%self125116%_
                         '11
                         (##vector-length _%self125116%_))))))))
    (__bind-method! gx#module-context::t ':init! gx#module-context:::init! '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_%self124942%_ _%ctx124943%_ _%root124944%_)
        (let ()
          (let ((_%self124947%_ _%self124942%_))
            (let ()
              (let ((_%super124963%_
                     (let ((_%$e124957%_ _%root124944%_))
                       (if _%$e124957%_
                           _%$e124957%_
                           (let ((_%$e124960%_ (gx#core-context-root__0)))
                             (if _%$e124960%_
                                 _%$e124960%_
                                 (let ((__obj125191
                                        (##structure
                                         gx#root-context::t
                                         '#f
                                         '#f)))
                                   (let ((__constructor125192
                                          (direct-method-ref
                                           gx#root-context::t
                                           __obj125191
                                           ':init!)))
                                     (if __constructor125192
                                         (__constructor125192 __obj125191)
                                         (error '"missing constructor method implementation"
                                                'class:
                                                gx#root-context::t
                                                'method:
                                                ':init!)))
                                   __obj125191)))))))
                (if _%ctx124943%_
                    (let ((_%id124966%_
                           (##structure-ref
                            _%ctx124943%_
                            '1
                            gx#expander-context::t
                            '#f))
                          (_%path124967%_
                           (##structure-ref
                            _%ctx124943%_
                            '7
                            gx#module-context::t
                            '#f))
                          (_%in124968%_
                           (map gx#core-module-export->import
                                (##structure-ref
                                 _%ctx124943%_
                                 '9
                                 gx#module-context::t
                                 '#f)))
                          (_%e124969%_
                           (__make-promise
                            (lambda () (gx#eval-module _%ctx124943%_)))))
                      (if (##fx< '8 (##structure-length _%self124947%_))
                          (begin
                            (##unchecked-structure-set!
                             _%self124947%_
                             _%id124966%_
                             '1
                             '#f
                             '#f)
                            (##unchecked-structure-set!
                             _%self124947%_
                             (make-hash-table-eq
                              'size:
                              (##length _%in124968%_))
                             '2
                             '#f
                             '#f)
                            (##unchecked-structure-set!
                             _%self124947%_
                             _%super124963%_
                             '3
                             '#f
                             '#f)
                            (##unchecked-structure-set!
                             _%self124947%_
                             '#f
                             '4
                             '#f
                             '#f)
                            (##unchecked-structure-set!
                             _%self124947%_
                             '#f
                             '5
                             '#f
                             '#f)
                            (##unchecked-structure-set!
                             _%self124947%_
                             _%path124967%_
                             '6
                             '#f
                             '#f)
                            (##unchecked-structure-set!
                             _%self124947%_
                             _%in124968%_
                             '7
                             '#f
                             '#f)
                            (##unchecked-structure-set!
                             _%self124947%_
                             _%e124969%_
                             '8
                             '#f
                             '#f)
                            '#!void)
                          (error '"struct-instance-init!: too many arguments for struct"
                                 _%self124947%_
                                 '8
                                 (##vector-length _%self124947%_)))
                      (##for-each
                       (lambda (_%g124970124972%_)
                         (gx#core-bind-weak-import!__%
                          _%g124970124972%_
                          _%self124947%_))
                       _%in124968%_))
                    (if (##fx< '8 (##structure-length _%self124947%_))
                        (begin
                          (##unchecked-structure-set!
                           _%self124947%_
                           '#f
                           '1
                           '#f
                           '#f)
                          (##unchecked-structure-set!
                           _%self124947%_
                           (make-hash-table-eq)
                           '2
                           '#f
                           '#f)
                          (##unchecked-structure-set!
                           _%self124947%_
                           _%super124963%_
                           '3
                           '#f
                           '#f)
                          (##unchecked-structure-set!
                           _%self124947%_
                           '#f
                           '4
                           '#f
                           '#f)
                          (##unchecked-structure-set!
                           _%self124947%_
                           '#f
                           '5
                           '#f
                           '#f)
                          (##unchecked-structure-set!
                           _%self124947%_
                           '#f
                           '6
                           '#f
                           '#f)
                          (##unchecked-structure-set!
                           _%self124947%_
                           '()
                           '7
                           '#f
                           '#f)
                          (##unchecked-structure-set!
                           _%self124947%_
                           '#f
                           '8
                           '#f
                           '#f)
                          '#!void)
                        (error '"struct-instance-init!: too many arguments for struct"
                               _%self124947%_
                               '8
                               (##vector-length _%self124947%_))))))))))
    (define gx#prelude-context:::init!__0
      (lambda (_%self124978%_ _%ctx124979%_)
        (let ((_%root124981%_ '#f))
          (gx#prelude-context:::init!__%
           _%self124978%_
           _%ctx124979%_
           _%root124981%_))))
    (define gx#prelude-context:::init!
      (lambda _g125198_
        (let ((_g125197_ (##length _g125198_)))
          (cond ((##fx= _g125197_ 2)
                 (apply (lambda (_%self124978%_ _%ctx124979%_)
                          (gx#prelude-context:::init!__0
                           _%self124978%_
                           _%ctx124979%_))
                        _g125198_))
                ((##fx= _g125197_ 3)
                 (apply (lambda (_%self124983%_ _%ctx124984%_ _%root124985%_)
                          (gx#prelude-context:::init!__%
                           _%self124983%_
                           _%ctx124984%_
                           _%root124985%_))
                        _g125198_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g125198_))))))
    (__bind-method!
     gx#prelude-context::t
     ':init!
     gx#prelude-context:::init!
     '#f)
    (define gx#import-export-expander-init!
      (lambda (_%self124816%_ _%e124817%_)
        (if (##fx< '3 (##structure-length _%self124816%_))
            (begin
              (##unchecked-structure-set!
               _%self124816%_
               _%e124817%_
               '1
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self124816%_
               (gx#current-expander-context)
               '2
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self124816%_
               (##fx- (gx#current-expander-phi) '1)
               '3
               '#f
               '#f)
              '#!void)
            (error '"struct-instance-init!: too many arguments for struct"
                   _%self124816%_
                   '3
                   (##vector-length _%self124816%_)))))
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
      (lambda (_%g124442124445%_ _%g124443124447%_)
        (gx#core-apply-user-expander__%
         _%g124442124445%_
         _%g124443124447%_
         'apply-import-expander)))
    (__bind-method!
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_%g124313124316%_ _%g124314124318%_)
        (gx#core-apply-user-expander__%
         _%g124313124316%_
         _%g124314124318%_
         'apply-export-expander)))
    (__bind-method!
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_%ctx124184%_)
        (let* ((_%path124186%_
                (##structure-ref _%ctx124184%_ '7 gx#module-context::t '#f))
               (_%path124188%_
                (if (pair? _%path124186%_)
                    (last _%path124186%_)
                    _%path124186%_)))
          (if (string? _%path124188%_) _%path124188%_ '#f))))
    (define gx#import-module__%
      (lambda (_%path124160%_ _%reload?124161%_ _%eval?124162%_)
        (let ((_%ctx124164%_
               ((gx#current-expander-module-import)
                _%path124160%_
                _%reload?124161%_)))
          (if (and _%ctx124164%_ _%eval?124162%_)
              (gx#eval-module _%ctx124164%_)
              '#!void)
          _%ctx124164%_)))
    (define gx#import-module__0
      (lambda (_%path124169%_)
        (let* ((_%reload?124171%_ '#f) (_%eval?124173%_ '#f))
          (gx#import-module__%
           _%path124169%_
           _%reload?124171%_
           _%eval?124173%_))))
    (define gx#import-module__1
      (lambda (_%path124175%_ _%reload?124176%_)
        (let ((_%eval?124178%_ '#f))
          (gx#import-module__%
           _%path124175%_
           _%reload?124176%_
           _%eval?124178%_))))
    (define gx#import-module
      (lambda _g125200_
        (let ((_g125199_ (##length _g125200_)))
          (cond ((##fx= _g125199_ 1)
                 (apply (lambda (_%path124169%_)
                          (gx#import-module__0 _%path124169%_))
                        _g125200_))
                ((##fx= _g125199_ 2)
                 (apply (lambda (_%path124175%_ _%reload?124176%_)
                          (gx#import-module__1
                           _%path124175%_
                           _%reload?124176%_))
                        _g125200_))
                ((##fx= _g125199_ 3)
                 (apply (lambda (_%path124180%_
                                 _%reload?124181%_
                                 _%eval?124182%_)
                          (gx#import-module__%
                           _%path124180%_
                           _%reload?124181%_
                           _%eval?124182%_))
                        _g125200_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g125200_))))))
    (define gx#eval-module
      (lambda (_%mod124157%_)
        ((gx#current-expander-module-eval) _%mod124157%_)))
    (define gx#core-eval-module
      (lambda (_%obj124137%_)
        (letrec ((_%force-e124139%_
                  (lambda (_%getf124153%_ _%e124154%_)
                    (__call-with-parameters
                     (lambda () (force (_%getf124153%_ _%e124154%_)))
                     gx#current-expander-context
                     _%e124154%_
                     gx#current-expander-phi
                     '0))))
          (let _%recur124141%_ ((_%e124143%_ _%obj124137%_))
            (if (##structure-instance-of? _%e124143%_ 'gx#module-context::t)
                (let ()
                  (let ((_%$e124146%_
                         (gx#core-context-prelude__% _%e124143%_)))
                    (if _%$e124146%_ (_%recur124141%_ _%$e124146%_) '#!void))
                  (_%force-e124139%_ gx#module-context-e _%e124143%_))
                (if (##structure-instance-of?
                     _%e124143%_
                     'gx#prelude-context::t)
                    (let ()
                      (_%force-e124139%_ gx#prelude-context-e _%e124143%_))
                    (if (gx#stx-string? _%e124143%_)
                        (let ()
                          (_%recur124141%_
                           (gx#import-module__0
                            (gx#core-resolve-module-path__0 _%e124143%_))))
                        (if (gx#core-library-module-path? _%e124143%_)
                            (let ()
                              (_%recur124141%_
                               (gx#import-module__0
                                (gx#core-resolve-library-module-path
                                 _%e124143%_))))
                            (let ()
                              (error '"Cannot eval module"
                                     _%obj124137%_))))))))))
    (define gx#core-context-prelude__%
      (lambda (_%ctx124117%_)
        (let _%lp124119%_ ((_%e124121%_ _%ctx124117%_))
          (if (or (##structure-instance-of? _%e124121%_ 'gx#module-context::t)
                  (##structure-instance-of? _%e124121%_ 'gx#local-context::t))
              (let ()
                (_%lp124119%_
                 (##unchecked-structure-ref _%e124121%_ '3 '#f '#f)))
              (if (##structure-instance-of? _%e124121%_ 'gx#prelude-context::t)
                  (let () _%e124121%_)
                  (let () '#f))))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_%ctx124133%_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _%ctx124133%_))))
    (define gx#core-context-prelude
      (lambda _g125202_
        (let ((_g125201_ (##length _g125202_)))
          (cond ((##fx= _g125201_ 0)
                 (apply (lambda () (gx#core-context-prelude__0)) _g125202_))
                ((##fx= _g125201_ 1)
                 (apply (lambda (_%ctx124135%_)
                          (gx#core-context-prelude__% _%ctx124135%_))
                        _g125202_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g125202_))))))
    (define gx#core-module->prelude-context
      (lambda (_%ctx124108%_)
        (let ((_%$e124110%_ (hash-get gx#__module-registry _%ctx124108%_)))
          (if _%$e124110%_
              _%$e124110%_
              (let ()
                (let ((_%pre124114%_
                       (let ((__obj125193
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
                         (gx#prelude-context:::init! __obj125193 _%ctx124108%_)
                         __obj125193)))
                  (hash-put! gx#__module-registry _%ctx124108%_ _%pre124114%_)
                  _%pre124114%_))))))
    (define gx#core-import-module__%
      (lambda (_%rpath123980%_ _%reload?123981%_)
        (letrec ((_%import-source123983%_
                  (lambda (_%path124072%_)
                    (if (member _%path124072%_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _%path124072%_)
                        '#!void)
                    (__call-with-parameters
                     (lambda ()
                       (let ((_g125203_ (gx#core-read-module _%path124072%_)))
                         (begin
                           (let ((_g125204_
                                  (if (##values? _g125203_)
                                      (##vector-length _g125203_)
                                      1)))
                             (if (not (##fx= _g125204_ 4))
                                 (error "Context expects 4 values" _g125204_)))
                           (let ((_%pre124075%_ (##vector-ref _g125203_ 0))
                                 (_%id124076%_ (##vector-ref _g125203_ 1))
                                 (_%ns124077%_ (##vector-ref _g125203_ 2))
                                 (_%body124078%_ (##vector-ref _g125203_ 3)))
                             (let* ((_%prelude124088%_
                                     (if (##structure-instance-of?
                                          _%pre124075%_
                                          'gx#prelude-context::t)
                                         (let () _%pre124075%_)
                                         (if (##structure-instance-of?
                                              _%pre124075%_
                                              'gx#module-context::t)
                                             (let ()
                                               (gx#core-module->prelude-context
                                                _%pre124075%_))
                                             (if (string? _%pre124075%_)
                                                 (let ()
                                                   (gx#core-module->prelude-context
                                                    (gx#core-import-module__0
                                                     _%pre124075%_)))
                                                 (if (not _%pre124075%_)
                                                     (let ()
                                                       (let ((_%$e124084%_
                                                              (gx#current-expander-module-prelude)))
                                                         (if _%$e124084%_
                                                             _%$e124084%_
                                                             (let ((__obj125194
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
                       (gx#prelude-context:::init! __obj125194 '#f)
                       __obj125194))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (error '"Cannot import module; unknown prelude"
                                                              _%rpath123980%_
                                                              _%pre124075%_)))))))
                                    (_%ctx124090%_
                                     (let ((__obj125195
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
                                        __obj125195
                                        _%id124076%_
                                        _%prelude124088%_
                                        _%ns124077%_
                                        _%path124072%_)
                                       __obj125195))
                                    (_%body124092%_
                                     (gx#core-expand-module-begin
                                      _%body124078%_
                                      _%ctx124090%_))
                                    (_%body124094%_
                                     (gx#core-quote-syntax__%
                                      (gx#core-cons '%#begin _%body124092%_)
                                      _%path124072%_
                                      _%ctx124090%_
                                      '())))
                               (##unchecked-structure-set!
                                _%ctx124090%_
                                (__make-promise
                                 (lambda () (gx#eval-syntax* _%body124094%_)))
                                '10
                                '#f
                                '#f)
                               (##unchecked-structure-set!
                                _%ctx124090%_
                                _%body124094%_
                                '11
                                '#f
                                '#f)
                               (hash-put!
                                gx#__module-registry
                                _%path124072%_
                                _%ctx124090%_)
                               (hash-put!
                                gx#__module-registry
                                _%id124076%_
                                _%ctx124090%_)
                               _%ctx124090%_)))))
                     gx#current-expander-context
                     (gx#core-context-root__0)
                     gx#current-expander-marks
                     '()
                     gx#current-expander-phi
                     '0
                     gx#current-expander-path
                     (cons _%path124072%_ (gx#current-expander-path))
                     gx#current-import-expander-phi
                     '#f
                     gx#current-export-expander-phi
                     '#f)))
                 (_%import-submodule123984%_
                  (lambda (_%rpath124000%_)
                    (let* ((_%rpath124001124008%_ _%rpath124000%_)
                           (_%E124003124012%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%rpath124001124008%_
                                     '([origin . refs]))
                              '#!void))
                           (_%K124004124060%_
                            (lambda (_%refs124015%_ _%origin124016%_)
                              (let ((_%ctx124018%_
                                     (if _%origin124016%_
                                         (gx#core-import-module__%
                                          _%origin124016%_
                                          _%reload?123981%_)
                                         (gx#current-expander-context))))
                                (let _%lp124020%_ ((_%rest124022%_
                                                    _%refs124015%_)
                                                   (_%ctx124023%_
                                                    _%ctx124018%_))
                                  (let* ((_%rest124024124032%_ _%rest124022%_)
                                         (_%else124026124040%_
                                          (lambda () _%ctx124023%_))
                                         (_%K124028124048%_
                                          (lambda (_%rest124043%_ _%id124044%_)
                                            (let ((_%bind124046%_
                                                   (gx#resolve-identifier__%
                                                    _%id124044%_
                                                    '0
                                                    _%ctx124023%_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _%bind124046%_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _%bind124046%_
                                                         '4
                                                         '#f
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_%lp124020%_
                                                   _%rest124043%_
                                                   (##unchecked-structure-ref
                                                    _%bind124046%_
                                                    '4
                                                    '#f
                                                    '#f))
                                                  (error '"Cannot import submodule; not bound as a module"
                                                         _%rpath124000%_
                                                         _%id124044%_
                                                         _%bind124046%_))))))
                                    (if (##pair? _%rest124024124032%_)
                                        (let ((_%hd124029124051%_
                                               (##car _%rest124024124032%_))
                                              (_%tl124030124053%_
                                               (##cdr _%rest124024124032%_)))
                                          (let* ((_%id124056%_
                                                  _%hd124029124051%_)
                                                 (_%rest124058%_
                                                  _%tl124030124053%_))
                                            (_%K124028124048%_
                                             _%rest124058%_
                                             _%id124056%_)))
                                        (_%else124026124040%_))))))))
                      (if (##pair? _%rpath124001124008%_)
                          (let ((_%hd124005124063%_
                                 (##car _%rpath124001124008%_))
                                (_%tl124006124065%_
                                 (##cdr _%rpath124001124008%_)))
                            (let* ((_%origin124068%_ _%hd124005124063%_)
                                   (_%refs124070%_ _%tl124006124065%_))
                              (_%K124004124060%_
                               _%refs124070%_
                               _%origin124068%_)))
                          (_%E124003124012%_))))))
          (let ((_%$e123986%_
                 (if (not _%reload?123981%_)
                     (hash-get gx#__module-registry _%rpath123980%_)
                     '#f)))
            (if _%$e123986%_
                (values _%$e123986%_)
                (if (list? _%rpath123980%_)
                    (let () (_%import-submodule123984%_ _%rpath123980%_))
                    (if (gx#core-library-module-path? _%rpath123980%_)
                        (let ()
                          (let ((_%ctx123991%_
                                 (gx#core-import-module__%
                                  (gx#core-resolve-library-module-path
                                   _%rpath123980%_)
                                  _%reload?123981%_)))
                            (hash-put!
                             gx#__module-registry
                             _%rpath123980%_
                             _%ctx123991%_)
                            _%ctx123991%_))
                        (let ()
                          (let* ((_%npath123994%_
                                  (path-normalize _%rpath123980%_))
                                 (_%$e123996%_
                                  (if (not _%reload?123981%_)
                                      (hash-get
                                       gx#__module-registry
                                       _%npath123994%_)
                                      '#f)))
                            (if _%$e123996%_
                                _%$e123996%_
                                (let ()
                                  (_%import-source123983%_
                                   _%npath123994%_))))))))))))
    (define gx#core-import-module__0
      (lambda (_%rpath124101%_)
        (let ((_%reload?124103%_ '#f))
          (gx#core-import-module__% _%rpath124101%_ _%reload?124103%_))))
    (define gx#core-import-module
      (lambda _g125206_
        (let ((_g125205_ (##length _g125206_)))
          (cond ((##fx= _g125205_ 1)
                 (apply (lambda (_%rpath124101%_)
                          (gx#core-import-module__0 _%rpath124101%_))
                        _g125206_))
                ((##fx= _g125205_ 2)
                 (apply (lambda (_%rpath124105%_ _%reload?124106%_)
                          (gx#core-import-module__%
                           _%rpath124105%_
                           _%reload?124106%_))
                        _g125206_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g125206_))))))
    (define gx#core-read-module
      (lambda (_%path123969%_)
        (__with-catch
         (lambda (_%exn123971%_)
           (if (and (datum-parsing-exception? _%exn123971%_)
                    (eq? (datum-parsing-exception-filepos _%exn123971%_) '0))
               (gx#core-read-module/lang _%path123969%_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _%path123969%_
                (__call-with-parameters
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_%g123973123975%_)
                      (display-exception _%exn123971%_ _%g123973123975%_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _%path123969%_)))))
    (define gx#core-read-module/sexp
      (lambda (_%path123821%_)
        (let _%lp123823%_ ((_%body123825%_
                            (read-syntax-from-file _%path123821%_))
                           (_%pre123826%_ '#f)
                           (_%ns123827%_ '#f)
                           (_%pkg123828%_ '#f))
          (let* ((_%e123829123853%_ _%body123825%_)
                 (_%E123845123879%_
                  (lambda ()
                    (let ((_g125207_
                           (if _%pkg123828%_
                               (values _%pre123826%_
                                       _%ns123827%_
                                       _%pkg123828%_)
                               (gx#core-read-module-package
                                _%path123821%_
                                _%pre123826%_
                                _%ns123827%_))))
                      (begin
                        (let ((_g125208_
                               (if (##values? _g125207_)
                                   (##vector-length _g125207_)
                                   1)))
                          (if (not (##fx= _g125208_ 3))
                              (error "Context expects 3 values" _g125208_)))
                        (let ((_%pre123857%_ (##vector-ref _g125207_ 0))
                              (_%ns123858%_ (##vector-ref _g125207_ 1))
                              (_%pkg123859%_ (##vector-ref _g125207_ 2)))
                          (let* ((_%prelude123865%_
                                  (if (gx#core-bound-module-prelude?
                                       _%pre123857%_)
                                      (let ()
                                        (gx#syntax-local-e__0 _%pre123857%_))
                                      (if (gx#core-library-module-path?
                                           _%pre123857%_)
                                          (let ()
                                            (gx#core-resolve-library-module-path
                                             _%pre123857%_))
                                          (if (gx#stx-string? _%pre123857%_)
                                              (let ()
                                                (gx#core-resolve-module-path__%
                                                 _%pre123857%_
                                                 _%path123821%_))
                                              (let ()
                                                (gx#stx-e _%pre123857%_))))))
                                 (_%path-id123867%_
                                  (gx#core-module-path->namespace
                                   _%path123821%_))
                                 (_%pkg-id123869%_
                                  (if _%pkg123859%_
                                      (string-append
                                       _%pkg123859%_
                                       '"/"
                                       _%path-id123867%_)
                                      _%path-id123867%_))
                                 (_%module-id123871%_
                                  (string->symbol _%pkg-id123869%_))
                                 (_%module-ns123876%_
                                  (if (eq? _%ns123858%_ '#!void)
                                      '#f
                                      (let ((_%$e123873%_ _%ns123858%_))
                                        (if _%$e123873%_
                                            _%$e123873%_
                                            _%pkg-id123869%_)))))
                            (values _%prelude123865%_
                                    _%module-id123871%_
                                    _%module-ns123876%_
                                    _%body123825%_)))))))
                 (_%E123838123911%_
                  (lambda ()
                    (if (gx#stx-pair? _%e123829123853%_)
                        (let ((_%e123846123883%_
                               (gx#syntax-e _%e123829123853%_)))
                          (let ((_%hd123847123886%_ (##car _%e123846123883%_))
                                (_%tl123848123888%_ (##cdr _%e123846123883%_)))
                            (if (eq? (gx#stx-e _%hd123847123886%_) 'package:)
                                (if (gx#stx-pair? _%tl123848123888%_)
                                    (let ((_%e123849123891%_
                                           (gx#syntax-e _%tl123848123888%_)))
                                      (let ((_%hd123850123894%_
                                             (##car _%e123849123891%_))
                                            (_%tl123851123896%_
                                             (##cdr _%e123849123891%_)))
                                        (let* ((_%pkg123899%_
                                                _%hd123850123894%_)
                                               (_%rest123901%_
                                                _%tl123851123896%_))
                                          (if '#t
                                              (let ((_%pkg123909%_
                                                     (if (gx#identifier?
                                                          _%pkg123899%_)
                                                         (let ()
                                                           (symbol->string
                                                            (gx#stx-e
                                                             _%pkg123899%_)))
                                                         (if (or (gx#stx-string?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%pkg123899%_)
                         (gx#stx-false? _%pkg123899%_))
                     (let () (gx#stx-e _%pkg123899%_))
                     (let ()
                       (gx#raise-syntax-error
                        'import
                        '"Bad syntax; Illegal package name"
                        _%pkg123899%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%lp123823%_
                                                 _%rest123901%_
                                                 _%pre123826%_
                                                 _%ns123827%_
                                                 _%pkg123909%_))
                                              (_%E123845123879%_)))))
                                    (_%E123845123879%_))
                                (_%E123845123879%_))))
                        (_%E123845123879%_))))
                 (_%E123831123941%_
                  (lambda ()
                    (if (gx#stx-pair? _%e123829123853%_)
                        (let ((_%e123839123915%_
                               (gx#syntax-e _%e123829123853%_)))
                          (let ((_%hd123840123918%_ (##car _%e123839123915%_))
                                (_%tl123841123920%_ (##cdr _%e123839123915%_)))
                            (if (eq? (gx#stx-e _%hd123840123918%_) 'namespace:)
                                (if (gx#stx-pair? _%tl123841123920%_)
                                    (let ((_%e123842123923%_
                                           (gx#syntax-e _%tl123841123920%_)))
                                      (let ((_%hd123843123926%_
                                             (##car _%e123842123923%_))
                                            (_%tl123844123928%_
                                             (##cdr _%e123842123923%_)))
                                        (let* ((_%ns123931%_
                                                _%hd123843123926%_)
                                               (_%rest123933%_
                                                _%tl123844123928%_))
                                          (if '#t
                                              (let ((_%ns123939%_
                                                     (if (gx#identifier?
                                                          _%ns123931%_)
                                                         (let ()
                                                           (symbol->string
                                                            (gx#stx-e
                                                             _%ns123931%_)))
                                                         (if (gx#stx-string?
                                                              _%ns123931%_)
                                                             (let ()
                                                               (gx#stx-e
                                                                _%ns123931%_))
                                                             (if (gx#stx-false?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%ns123931%_)
                         (let () '#!void)
                         (let ()
                           (gx#raise-syntax-error
                            'import
                            '"Bad syntax; illegal namespace"
                            _%ns123931%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%lp123823%_
                                                 _%rest123933%_
                                                 _%pre123826%_
                                                 _%ns123939%_
                                                 _%pkg123828%_))
                                              (_%E123838123911%_)))))
                                    (_%E123838123911%_))
                                (_%E123838123911%_))))
                        (_%E123838123911%_))))
                 (_%E123830123965%_
                  (lambda ()
                    (if (gx#stx-pair? _%e123829123853%_)
                        (let ((_%e123832123945%_
                               (gx#syntax-e _%e123829123853%_)))
                          (let ((_%hd123833123948%_ (##car _%e123832123945%_))
                                (_%tl123834123950%_ (##cdr _%e123832123945%_)))
                            (if (eq? (gx#stx-e _%hd123833123948%_) 'prelude:)
                                (if (gx#stx-pair? _%tl123834123950%_)
                                    (let ((_%e123835123953%_
                                           (gx#syntax-e _%tl123834123950%_)))
                                      (let ((_%hd123836123956%_
                                             (##car _%e123835123953%_))
                                            (_%tl123837123958%_
                                             (##cdr _%e123835123953%_)))
                                        (let* ((_%prelude123961%_
                                                _%hd123836123956%_)
                                               (_%rest123963%_
                                                _%tl123837123958%_))
                                          (if '#t
                                              (_%lp123823%_
                                               _%rest123963%_
                                               _%prelude123961%_
                                               _%ns123827%_
                                               _%pkg123828%_)
                                              (_%E123831123941%_)))))
                                    (_%E123831123941%_))
                                (_%E123831123941%_))))
                        (_%E123831123941%_)))))
            (_%E123830123965%_)))))
    (define gx#core-read-module/lang
      (lambda (_%path123643%_)
        (letrec ((_%default-read-module-body123645%_
                  (lambda (_%inp123813%_)
                    (let _%lp123815%_ ((_%body123817%_ '()))
                      (let ((_%next123819%_ (read-syntax__% _%inp123813%_)))
                        (if (eof-object? _%next123819%_)
                            (reverse _%body123817%_)
                            (_%lp123815%_
                             (cons _%next123819%_ _%body123817%_)))))))
                 (_%read-body123646%_
                  (lambda (_%inp123731%_
                           _%pre123732%_
                           _%ns123733%_
                           _%pkg123734%_
                           _%args123735%_)
                    (let ((_g125209_
                           (if _%pkg123734%_
                               (values _%pre123732%_
                                       _%ns123733%_
                                       _%pkg123734%_)
                               (gx#core-read-module-package
                                _%path123643%_
                                _%pre123732%_
                                _%ns123733%_))))
                      (begin
                        (let ((_g125210_
                               (if (##values? _g125209_)
                                   (##vector-length _g125209_)
                                   1)))
                          (if (not (##fx= _g125210_ 3))
                              (error "Context expects 3 values" _g125210_)))
                        (let ((_%pre123737%_ (##vector-ref _g125209_ 0))
                              (_%ns123738%_ (##vector-ref _g125209_ 1))
                              (_%pkg123739%_ (##vector-ref _g125209_ 2)))
                          (let* ((_%prelude123741%_
                                  (gx#import-module__0 _%pre123737%_))
                                 (_%read-module-body123796%_
                                  (let ((_%$e123787%_
                                         (__find (lambda (_%e123742123744%_)
                                                   (let* ((_%g123746123756%_
                                                           _%e123742123744%_)
                                                          (_%else123748123764%_
                                                           (lambda () '#f))
                                                          (_%K123750123768%_
                                                           (lambda () '#t)))
                                                     (if (##structure-direct-instance-of?
                                                          _%g123746123756%_
                                                          'gx#module-export::t)
                                                         (let* ((_%e123751123771%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##unchecked-structure-ref
                          _%g123746123756%_
                          '1
                          '#f
                          '#f))
                        (_%e123752123774%_
                         (##unchecked-structure-ref
                          _%g123746123756%_
                          '2
                          '#f
                          '#f))
                        (_%e123753123777%_
                         (##unchecked-structure-ref
                          _%g123746123756%_
                          '3
                          '#f
                          '#f)))
                   (if (##eq? _%e123753123777%_ '1)
                       (let ((_%e123754123780%_
                              (##unchecked-structure-ref
                               _%g123746123756%_
                               '4
                               '#f
                               '#f)))
                         (if ((lambda (_%g123782123784%_)
                                (eq? _%g123782123784%_ 'read-module-body))
                              _%e123754123780%_)
                             (_%K123750123768%_)
                             (_%else123748123764%_)))
                       (_%else123748123764%_)))
                 (_%else123748123764%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (##unchecked-structure-ref
                                                  _%prelude123741%_
                                                  '9
                                                  '#f
                                                  '#f))))
                                    (if _%$e123787%_
                                        ((lambda (_%xport123790%_)
                                           (let ((_%proc123793%_
                                                  (__with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _%xport123790%_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _%proc123793%_)
                                                 _%proc123793%_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _%path123643%_
                                                  _%pre123737%_
                                                  _%proc123793%_))))
                                         _%$e123787%_)
                                        (let ()
                                          _%default-read-module-body123645%_))))
                                 (_%path-id123798%_
                                  (gx#core-module-path->namespace
                                   _%path123643%_))
                                 (_%pkg-id123800%_
                                  (if _%pkg123739%_
                                      (string-append
                                       _%pkg123739%_
                                       '"/"
                                       _%path-id123798%_)
                                      _%path-id123798%_))
                                 (_%module-id123802%_
                                  (string->symbol _%pkg-id123800%_))
                                 (_%module-ns123807%_
                                  (let ((_%$e123804%_ _%ns123738%_))
                                    (if _%$e123804%_
                                        _%$e123804%_
                                        _%pkg-id123800%_)))
                                 (_%body123810%_
                                  (__call-with-parameters
                                   (lambda ()
                                     (_%read-module-body123796%_
                                      _%inp123731%_))
                                   gx#current-module-reader-path
                                   _%path123643%_
                                   gx#current-module-reader-args
                                   _%args123735%_)))
                            (values _%prelude123741%_
                                    _%module-id123802%_
                                    _%module-ns123807%_
                                    _%body123810%_)))))))
                 (_%string-e123647%_
                  (lambda (_%obj123725%_ _%what123726%_)
                    (if (string? _%obj123725%_)
                        (let () _%obj123725%_)
                        (if (symbol? _%obj123725%_)
                            (let () (symbol->string _%obj123725%_))
                            (let ()
                              (gx#raise-syntax-error
                               '#f
                               (string-append
                                '"Illegal module "
                                _%what123726%_)
                               _%path123643%_
                               _%obj123725%_))))))
                 (_%read-lang-args123648%_
                  (lambda (_%inp123680%_ _%args123681%_)
                    (let* ((_%args123682123690%_ _%args123681%_)
                           (_%else123684123698%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _%path123643%_)))
                           (_%K123686123713%_
                            (lambda (_%args123701%_ _%prelude123702%_)
                              (let* ((_%pkg123704%_
                                      (pgetq__0 'package: _%args123701%_))
                                     (_%pkg123706%_
                                      (if _%pkg123704%_
                                          (_%string-e123647%_
                                           _%pkg123704%_
                                           '"package")
                                          '#f))
                                     (_%ns123708%_
                                      (pgetq__0 'namespace: _%args123701%_))
                                     (_%ns123710%_
                                      (if _%ns123708%_
                                          (_%string-e123647%_
                                           _%ns123708%_
                                           '"namespace")
                                          '#f)))
                                (_%read-body123646%_
                                 _%inp123680%_
                                 _%prelude123702%_
                                 _%ns123710%_
                                 _%pkg123706%_
                                 _%args123701%_)))))
                      (if (##pair? _%args123682123690%_)
                          (let ((_%hd123687123716%_
                                 (##car _%args123682123690%_))
                                (_%tl123688123718%_
                                 (##cdr _%args123682123690%_)))
                            (let* ((_%prelude123721%_ _%hd123687123716%_)
                                   (_%args123723%_ _%tl123688123718%_))
                              (_%K123686123713%_
                               _%args123723%_
                               _%prelude123721%_)))
                          (_%else123684123698%_)))))
                 (_%read-lang123649%_
                  (lambda (_%inp123654%_)
                    (let* ((_%head123656%_ (read-line _%inp123654%_))
                           (_%$e123658%_
                            (string-index__0 _%head123656%_ '#\space)))
                      (if _%$e123658%_
                          ((lambda (_%ix123661%_)
                             (let ((_%lang123663%_
                                    (substring
                                     _%head123656%_
                                     '0
                                     _%ix123661%_)))
                               (if (equal? _%lang123663%_ '"#lang")
                                   (let* ((_%rest123665%_
                                           (substring
                                            _%head123656%_
                                            (##fx+ _%ix123661%_ '1)
                                            (##string-length _%head123656%_)))
                                          (_%args123676%_
                                           (__with-catch
                                            (lambda (_%g123666123668%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _%path123643%_
                                               _%g123666123668%_))
                                            (lambda ()
                                              (call-with-input-string
                                               _%rest123665%_
                                               (lambda (_%g123671123673%_)
                                                 (read-all
                                                  _%g123671123673%_
                                                  read)))))))
                                     (_%read-lang-args123648%_
                                      _%inp123654%_
                                      _%args123676%_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _%path123643%_))))
                           _%$e123658%_)
                          (let ()
                            (gx#raise-syntax-error
                             '#f
                             '"Illegal module syntax"
                             _%path123643%_))))))
                 (_%read-e123650%_
                  (lambda (_%inp123652%_)
                    (if (eq? (peek-char _%inp123652%_) '#\#)
                        (_%read-lang123649%_ _%inp123652%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _%path123643%_)))))
          (gx#call-with-input-source-file _%path123643%_ _%read-e123650%_))))
    (define gx#core-read-module-package
      (lambda (_%path123591%_ _%pre123592%_ _%ns123593%_)
        (letrec ((_%string-e123595%_
                  (lambda (_%e123638%_)
                    (if (symbol? _%e123638%_)
                        (let () (symbol->string _%e123638%_))
                        (if (string? _%e123638%_)
                            (let () _%e123638%_)
                            (let ()
                              (gx#raise-syntax-error
                               '#f
                               '"Malformed package info; unexpected datum"
                               _%e123638%_)))))))
          (let _%lp123597%_ ((_%dir123599%_ (path-directory _%path123591%_))
                             (_%pkg-path123600%_ '()))
            (let ((_%gerbil.pkg123602%_
                   (path-expand '"gerbil.pkg" _%dir123599%_)))
              (if (##file-exists? _%gerbil.pkg123602%_)
                  (let ((_%plist123604%_
                         (gx#core-library-package-plist__% _%dir123599%_ '#t)))
                    (if (null? _%plist123604%_)
                        (let ()
                          (let ((_%pkg123607%_
                                 (if (not (null? _%pkg-path123600%_))
                                     (string-join _%pkg-path123600%_ '"/")
                                     '#f)))
                            (values _%pre123592%_ _%ns123593%_ _%pkg123607%_)))
                        (if (list? _%plist123604%_)
                            (let ()
                              (let* ((_%root123610%_
                                      (pgetq__0 'package: _%plist123604%_))
                                     (_%pkg123614%_
                                      (let ((_%pkg-path123612%_
                                             (if _%root123610%_
                                                 (cons (_%string-e123595%_
                                                        _%root123610%_)
                                                       _%pkg-path123600%_)
                                                 _%pkg-path123600%_)))
                                        (if (not (null? _%pkg-path123612%_))
                                            (string-join
                                             _%pkg-path123612%_
                                             '"/")
                                            '#f)))
                                     (_%ns123621%_
                                      (let ((_%ns123619%_
                                             (let ((_%$e123616%_ _%ns123593%_))
                                               (if _%$e123616%_
                                                   _%$e123616%_
                                                   (pgetq__0
                                                    'namespace:
                                                    _%plist123604%_)))))
                                        (if _%ns123619%_
                                            (_%string-e123595%_ _%ns123619%_)
                                            '#f)))
                                     (_%pre123626%_
                                      (let ((_%$e123623%_ _%pre123592%_))
                                        (if _%$e123623%_
                                            _%$e123623%_
                                            (pgetq__0
                                             'prelude:
                                             _%plist123604%_)))))
                                (values _%pre123626%_
                                        _%ns123621%_
                                        _%pkg123614%_)))
                            (let ()
                              (gx#raise-syntax-error
                               '#f
                               '"Malformed package info; unexpected datum"
                               _%plist123604%_)))))
                  (let ((_%dir*123630%_
                         (path-strip-trailing-directory-separator
                          _%dir123599%_)))
                    (if (or (__string-empty? _%dir*123630%_)
                            (equal? _%dir123599%_ _%dir*123630%_))
                        (values _%pre123592%_ _%ns123593%_ '#f)
                        (let ((_%xpath123635%_
                               (path-strip-directory _%dir*123630%_))
                              (_%xdir123636%_ (path-directory _%dir*123630%_)))
                          (_%lp123597%_
                           _%xdir123636%_
                           (cons _%xpath123635%_ _%pkg-path123600%_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_%path123589%_)
        (path-strip-extension (path-strip-directory _%path123589%_))))
    (define gx#core-module-path->id
      (lambda (_%path123587%_)
        (##string->symbol (gx#core-module-path->namespace _%path123587%_))))
    (define gx#core-resolve-module-path__%
      (lambda (_%stx-path123566%_ _%rel123567%_)
        (let* ((_%path123569%_ (gx#stx-e _%stx-path123566%_))
               (_%path123571%_
                (if (__string-empty? (path-extension _%path123569%_))
                    (##string-append _%path123569%_ '".ss")
                    _%path123569%_)))
          (gx#core-resolve-path__%
           _%path123571%_
           (let ((_%$e123574%_ (gx#stx-source _%stx-path123566%_)))
             (if _%$e123574%_ _%$e123574%_ _%rel123567%_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_%stx-path123580%_)
        (let ((_%rel123582%_ '#f))
          (gx#core-resolve-module-path__% _%stx-path123580%_ _%rel123582%_))))
    (define gx#core-resolve-module-path
      (lambda _g125212_
        (let ((_g125211_ (##length _g125212_)))
          (cond ((##fx= _g125211_ 1)
                 (apply (lambda (_%stx-path123580%_)
                          (gx#core-resolve-module-path__0 _%stx-path123580%_))
                        _g125212_))
                ((##fx= _g125211_ 2)
                 (apply (lambda (_%stx-path123584%_ _%rel123585%_)
                          (gx#core-resolve-module-path__%
                           _%stx-path123584%_
                           _%rel123585%_))
                        _g125212_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g125212_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_%libpath123451%_)
        (let* ((_%spath123453%_ (symbol->string (gx#stx-e _%libpath123451%_)))
               (_%spath123455%_
                (substring
                 _%spath123453%_
                 '1
                 (##string-length _%spath123453%_)))
               (_%ext123457%_ (path-extension _%spath123455%_))
               (_%ssi123459%_
                (if (__string-empty? _%ext123457%_)
                    (##string-append _%spath123455%_ '".ssi")
                    (##string-append
                     (path-strip-extension _%spath123455%_)
                     '".ssi")))
               (_%srcs123463%_
                (if (__string-empty? _%ext123457%_)
                    (##map (lambda (_%ext123461%_)
                             (string-append _%spath123455%_ _%ext123461%_))
                           '(".ss" ".sld" ".scm"))
                    (cons _%spath123455%_ '()))))
          (let _%lp123466%_ ((_%rest123468%_ (load-path)))
            (let* ((_%rest123469123478%_ _%rest123468%_)
                   (_%E123472123482%_
                    (lambda ()
                      (error '"No clause matching"
                             _%rest123469123478%_
                             '([dir . rest])
                             '([]))
                      '#!void)))
              (let ((_%K123474123553%_
                     (lambda (_%rest123493%_ _%dir123494%_)
                       (letrec ((_%resolve123496%_
                                 (lambda (_%ssi123509%_ _%srcs123510%_)
                                   (let ((_%compiled-path123512%_
                                          (path-expand
                                           _%ssi123509%_
                                           _%dir123494%_)))
                                     (if (##file-exists?
                                          _%compiled-path123512%_)
                                         (path-normalize
                                          _%compiled-path123512%_)
                                         (let _%lpr123514%_ ((_%rest-src123516%_
                                                              _%srcs123510%_))
                                           (let* ((_%rest-src123517123525%_
                                                   _%rest-src123516%_)
                                                  (_%else123519123533%_
                                                   (lambda ()
                                                     (_%lp123466%_
                                                      _%rest123493%_)))
                                                  (_%K123521123541%_
                                                   (lambda (_%rest-src123536%_
                                                            _%src123537%_)
                                                     (let ((_%src-path123539%_
                                                            (path-expand
                                                             _%src123537%_
                                                             _%dir123494%_)))
                                                       (if (##file-exists?
                                                            _%src-path123539%_)
                                                           (path-normalize
                                                            _%src-path123539%_)
                                                           (_%lpr123514%_
                                                            _%rest-src123536%_))))))
                                             (if (##pair? _%rest-src123517123525%_)
                                                 (let ((_%hd123522123544%_
                                                        (##car _%rest-src123517123525%_))
                                                       (_%tl123523123546%_
                                                        (##cdr _%rest-src123517123525%_)))
                                                   (let* ((_%src123549%_
                                                           _%hd123522123544%_)
                                                          (_%rest-src123551%_
                                                           _%tl123523123546%_))
                                                     (_%K123521123541%_
                                                      _%rest-src123551%_
                                                      _%src123549%_)))
                                                 (_%else123519123533%_)))))))))
                         (let ((_%$e123498%_
                                (gx#core-library-package-path-prefix
                                 _%dir123494%_)))
                           (if _%$e123498%_
                               ((lambda (_%prefix123501%_)
                                  (if (string-prefix?
                                       _%prefix123501%_
                                       _%spath123455%_)
                                      (let ((_%ssi123505%_
                                             (substring
                                              _%ssi123459%_
                                              (string-length _%prefix123501%_)
                                              (##string-length _%ssi123459%_)))
                                            (_%srcs123506%_
                                             (##map (lambda (_%src123503%_)
                                                      (substring
                                                       _%src123503%_
                                                       (string-length
                                                        _%prefix123501%_)
                                                       (string-length
                                                        _%src123503%_)))
                                                    _%srcs123463%_)))
                                        (_%resolve123496%_
                                         _%ssi123505%_
                                         _%srcs123506%_))
                                      (_%lp123466%_ _%rest123493%_)))
                                _%$e123498%_)
                               (let ()
                                 (_%resolve123496%_
                                  _%ssi123459%_
                                  _%srcs123463%_)))))))
                    (_%K123473123487%_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"Cannot find library module"
                        _%libpath123451%_))))
                (let ((_%try-match123471123490%_
                       (lambda ()
                         (if (##null? _%rest123469123478%_)
                             (_%K123473123487%_)
                             (_%E123472123482%_)))))
                  (if (##pair? _%rest123469123478%_)
                      (let ((_%tl123476123558%_ (##cdr _%rest123469123478%_))
                            (_%hd123475123556%_ (##car _%rest123469123478%_)))
                        (let ((_%dir123561%_ _%hd123475123556%_)
                              (_%rest123563%_ _%tl123476123558%_))
                          (_%K123474123553%_ _%rest123563%_ _%dir123561%_)))
                      (_%try-match123471123490%_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_%modpath123419%_)
        (letrec ((_%resolve123421%_
                  (lambda (_%path123442%_ _%base123443%_)
                    (let ((_%$e123445%_
                           (string-rindex__0 _%base123443%_ '#\/)))
                      (if _%$e123445%_
                          ((lambda (_%idx123448%_)
                             (gx#core-resolve-library-module-path
                              (##string->symbol
                               (string-append
                                '":"
                                (substring _%base123443%_ '0 _%idx123448%_)
                                '"/"
                                _%path123442%_))))
                           _%$e123445%_)
                          (let ()
                            (gx#core-resolve-library-module-path
                             (##string->symbol
                              (string-append '":" _%path123442%_)))))))))
          (let ((_%spath123423%_ (symbol->string (gx#stx-e _%modpath123419%_)))
                (_%mod123424%_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _%mod123424%_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"Cannot resolve relative module path; not in module context"
                 _%modpath123419%_))
            (let ((_%mpath123426%_
                   (symbol->string
                    (##structure-ref
                     _%mod123424%_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _%lp123428%_ ((_%spath123430%_ _%spath123423%_)
                                 (_%mpath123431%_ _%mpath123426%_))
                (if (string-prefix? '"../" _%spath123430%_)
                    (let ()
                      (let ((_%$e123434%_
                             (string-rindex__0 _%mpath123431%_ '#\/)))
                        (if _%$e123434%_
                            ((lambda (_%idx123437%_)
                               (_%lp123428%_
                                (substring
                                 _%spath123430%_
                                 '3
                                 (string-length _%spath123430%_))
                                (substring _%mpath123431%_ '0 _%idx123437%_)))
                             _%$e123434%_)
                            (let ()
                              (gx#raise-syntax-error
                               '#f
                               '"Cannot resolve relative module path; illegal traversal"
                               _%modpath123419%_)))))
                    (if (string-prefix? '"./" _%spath123430%_)
                        (let ()
                          (_%lp123428%_
                           (substring
                            _%spath123430%_
                            '2
                            (string-length _%spath123430%_))
                           _%mpath123431%_))
                        (let ()
                          (_%resolve123421%_
                           _%spath123430%_
                           _%mpath123431%_))))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_%dir123411%_)
        (let ((_%$e123413%_
               (pgetq__0
                'package:
                (gx#core-library-package-plist__0 _%dir123411%_))))
          (if _%$e123413%_
              ((lambda (_%pkg123416%_)
                 (##string-append (symbol->string _%pkg123416%_) '"/"))
               _%$e123413%_)
              (let () '#f)))))
    (define gx#core-library-package-plist__%
      (lambda (_%dir123381%_ _%exists?123382%_)
        (let ((_%$e123384%_ (hash-get gx#__module-pkg-cache _%dir123381%_)))
          (if _%$e123384%_
              (values _%$e123384%_)
              (let ()
                (let* ((_%gerbil.pkg123388%_
                        (path-expand '"gerbil.pkg" _%dir123381%_))
                       (_%plist123398%_
                        (if (or _%exists?123382%_
                                (##file-exists? _%gerbil.pkg123388%_))
                            (let ((_%e123393%_
                                   (gx#call-with-input-source-file
                                    _%gerbil.pkg123388%_
                                    read)))
                              (if (eof-object? _%e123393%_)
                                  (let () '())
                                  (if (list? _%e123393%_)
                                      (let () _%e123393%_)
                                      (let ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Malformed package info; unexpected datum"
                                         _%gerbil.pkg123388%_
                                         _%e123393%_)))))
                            '())))
                  (hash-put!
                   gx#__module-pkg-cache
                   _%dir123381%_
                   _%plist123398%_)
                  _%plist123398%_))))))
    (define gx#core-library-package-plist__0
      (lambda (_%dir123404%_)
        (let ((_%exists?123406%_ '#f))
          (gx#core-library-package-plist__% _%dir123404%_ _%exists?123406%_))))
    (define gx#core-library-package-plist
      (lambda _g125214_
        (let ((_g125213_ (##length _g125214_)))
          (cond ((##fx= _g125213_ 1)
                 (apply (lambda (_%dir123404%_)
                          (gx#core-library-package-plist__0 _%dir123404%_))
                        _g125214_))
                ((##fx= _g125213_ 2)
                 (apply (lambda (_%dir123408%_ _%exists?123409%_)
                          (gx#core-library-package-plist__%
                           _%dir123408%_
                           _%exists?123409%_))
                        _g125214_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g125214_))))))
    (define gx#core-library-module-path?
      (lambda (_%stx123378%_)
        (gx#core-special-module-path? _%stx123378%_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_%stx123376%_)
        (gx#core-special-module-path? _%stx123376%_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_%stx123371%_ _%char123372%_)
        (if (gx#identifier? _%stx123371%_)
            (if (interned-symbol? (gx#stx-e _%stx123371%_))
                (let ((_%str123374%_
                       (symbol->string (gx#stx-e _%stx123371%_))))
                  (if (##fx> (##string-length _%str123374%_) '1)
                      (eq? (string-ref _%str123374%_ '0) _%char123372%_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_%stx123365%_)
        (gx#core-bound-identifier?__%
         _%stx123365%_
         (lambda (_%g123366123368%_)
           (gx#expander-binding?__% _%g123366123368%_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_%stx123359%_)
        (gx#core-bound-identifier?__%
         _%stx123359%_
         (lambda (_%g123360123362%_)
           (gx#expander-binding?__% _%g123360123362%_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_%stx123346%_)
        (letrec ((_%module-prelude?123348%_
                  (lambda (_%e123354%_)
                    (let ((_%$e123356%_
                           (##structure-instance-of?
                            _%e123354%_
                            'gx#module-context::t)))
                      (if _%$e123356%_
                          _%$e123356%_
                          (##structure-instance-of?
                           _%e123354%_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _%stx123346%_
           (lambda (_%g123349123351%_)
             (gx#expander-binding?__%
              _%g123349123351%_
              _%module-prelude?123348%_))))))
    (define gx#core-bind-import!__%
      (lambda (_%in123276%_ _%ctx123277%_ _%force-weak?123278%_)
        (let* ((_%in123279123288%_ _%in123276%_)
               (_%E123281123292%_
                (lambda ()
                  (error '"No clause matching"
                         _%in123279123288%_
                         '((module-import source key phi weak?)))
                  '#!void))
               (_%K123282123305%_
                (lambda (_%weak?123295%_
                         _%phi123296%_
                         _%key123297%_
                         _%source123298%_)
                  (gx#core-bind!__%
                   _%key123297%_
                   (let ((_%e123300%_
                          (gx#core-resolve-module-export _%source123298%_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref _%e123300%_ '1 '#f '#f)
                      _%key123297%_
                      _%phi123296%_
                      _%e123300%_
                      (##unchecked-structure-ref _%source123298%_ '1 '#f '#f)
                      (let ((_%$e123302%_ _%force-weak?123278%_))
                        (if _%$e123302%_ _%$e123302%_ _%weak?123295%_))))
                   gx#core-context-rebind?
                   _%phi123296%_
                   _%ctx123277%_))))
          (if (##structure-direct-instance-of?
               _%in123279123288%_
               'gx#module-import::t)
              (let* ((_%e123283123308%_
                      (##unchecked-structure-ref
                       _%in123279123288%_
                       '1
                       '#f
                       '#f))
                     (_%source123311%_ _%e123283123308%_)
                     (_%e123284123313%_
                      (##unchecked-structure-ref
                       _%in123279123288%_
                       '2
                       '#f
                       '#f))
                     (_%key123316%_ _%e123284123313%_)
                     (_%e123285123318%_
                      (##unchecked-structure-ref
                       _%in123279123288%_
                       '3
                       '#f
                       '#f))
                     (_%phi123321%_ _%e123285123318%_)
                     (_%e123286123323%_
                      (##unchecked-structure-ref
                       _%in123279123288%_
                       '4
                       '#f
                       '#f))
                     (_%weak?123326%_ _%e123286123323%_))
                (_%K123282123305%_
                 _%weak?123326%_
                 _%phi123321%_
                 _%key123316%_
                 _%source123311%_))
              (_%E123281123292%_)))))
    (define gx#core-bind-import!__0
      (lambda (_%in123331%_)
        (let* ((_%ctx123333%_ (gx#current-expander-context))
               (_%force-weak?123335%_ '#f))
          (gx#core-bind-import!__%
           _%in123331%_
           _%ctx123333%_
           _%force-weak?123335%_))))
    (define gx#core-bind-import!__1
      (lambda (_%in123337%_ _%ctx123338%_)
        (let ((_%force-weak?123340%_ '#f))
          (gx#core-bind-import!__%
           _%in123337%_
           _%ctx123338%_
           _%force-weak?123340%_))))
    (define gx#core-bind-import!
      (lambda _g125216_
        (let ((_g125215_ (##length _g125216_)))
          (cond ((##fx= _g125215_ 1)
                 (apply (lambda (_%in123331%_)
                          (gx#core-bind-import!__0 _%in123331%_))
                        _g125216_))
                ((##fx= _g125215_ 2)
                 (apply (lambda (_%in123337%_ _%ctx123338%_)
                          (gx#core-bind-import!__1 _%in123337%_ _%ctx123338%_))
                        _g125216_))
                ((##fx= _g125215_ 3)
                 (apply (lambda (_%in123342%_
                                 _%ctx123343%_
                                 _%force-weak?123344%_)
                          (gx#core-bind-import!__%
                           _%in123342%_
                           _%ctx123343%_
                           _%force-weak?123344%_))
                        _g125216_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g125216_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_%in123262%_ _%ctx123263%_)
        (gx#core-bind-import!__% _%in123262%_ _%ctx123263%_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_%in123268%_)
        (let ((_%ctx123270%_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _%in123268%_ _%ctx123270%_))))
    (define gx#core-bind-weak-import!
      (lambda _g125218_
        (let ((_g125217_ (##length _g125218_)))
          (cond ((##fx= _g125217_ 1)
                 (apply (lambda (_%in123268%_)
                          (gx#core-bind-weak-import!__0 _%in123268%_))
                        _g125218_))
                ((##fx= _g125217_ 2)
                 (apply (lambda (_%in123272%_ _%ctx123273%_)
                          (gx#core-bind-weak-import!__%
                           _%in123272%_
                           _%ctx123273%_))
                        _g125218_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g125218_))))))
    (define gx#core-resolve-module-export
      (lambda (_%out123153%_)
        (letrec ((_%subst123155%_
                  (lambda (_%key123201%_)
                    (let* ((_%key123202123210%_ _%key123201%_)
                           (_%else123204123218%_ (lambda () _%key123201%_))
                           (_%K123206123249%_
                            (lambda (_%mark123221%_ _%id123222%_)
                              (let* ((_%mark123223123229%_ _%mark123221%_)
                                     (_%E123225123233%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark123223123229%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K123226123241%_
                                      (lambda (_%subst123236%_)
                                        (let ((_%$e123238%_
                                               (if _%subst123236%_
                                                   (hash-get
                                                    _%subst123236%_
                                                    _%id123222%_)
                                                   '#f)))
                                          (if _%$e123238%_
                                              _%$e123238%_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _%key123201%_))))))
                                (if (##structure-instance-of?
                                     _%mark123223123229%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e123227123244%_
                                            (##unchecked-structure-ref
                                             _%mark123223123229%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst123247%_ _%e123227123244%_))
                                      (_%K123226123241%_ _%subst123247%_))
                                    (_%E123225123233%_))))))
                      (if (##pair? _%key123202123210%_)
                          (let ((_%hd123207123252%_
                                 (##car _%key123202123210%_))
                                (_%tl123208123254%_
                                 (##cdr _%key123202123210%_)))
                            (let* ((_%id123257%_ _%hd123207123252%_)
                                   (_%mark123259%_ _%tl123208123254%_))
                              (_%K123206123249%_ _%mark123259%_ _%id123257%_)))
                          (_%else123204123218%_))))))
          (let* ((_%out123156123166%_ _%out123153%_)
                 (_%E123158123170%_
                  (lambda ()
                    (error '"No clause matching"
                           _%out123156123166%_
                           '((module-export ctx key phi _ _)))
                    '#!void))
                 (_%K123159123177%_
                  (lambda (_%phi123173%_ _%key123174%_ _%ctx123175%_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _%ctx123175%_ _%phi123173%_)
                     (_%subst123155%_ _%key123174%_)))))
            (if (##structure-direct-instance-of?
                 _%out123156123166%_
                 'gx#module-export::t)
                (let* ((_%e123160123180%_
                        (##unchecked-structure-ref
                         _%out123156123166%_
                         '1
                         '#f
                         '#f))
                       (_%ctx123183%_ _%e123160123180%_)
                       (_%e123161123185%_
                        (##unchecked-structure-ref
                         _%out123156123166%_
                         '2
                         '#f
                         '#f))
                       (_%key123188%_ _%e123161123185%_)
                       (_%e123162123190%_
                        (##unchecked-structure-ref
                         _%out123156123166%_
                         '3
                         '#f
                         '#f))
                       (_%phi123193%_ _%e123162123190%_)
                       (_%e123163123195%_
                        (##unchecked-structure-ref
                         _%out123156123166%_
                         '4
                         '#f
                         '#f))
                       (_%e123164123198%_
                        (##unchecked-structure-ref
                         _%out123156123166%_
                         '5
                         '#f
                         '#f)))
                  (_%K123159123177%_
                   _%phi123193%_
                   _%key123188%_
                   _%ctx123183%_))
                (_%E123158123170%_))))))
    (define gx#core-module-export->import__%
      (lambda (_%out123078%_ _%rename123079%_ _%dphi123080%_)
        (let* ((_%out123081123091%_ _%out123078%_)
               (_%E123083123095%_
                (lambda ()
                  (error '"No clause matching"
                         _%out123081123091%_
                         '((module-export ctx key phi name weak?)))
                  '#!void))
               (_%K123084123107%_
                (lambda (_%weak?123098%_
                         _%name123099%_
                         _%phi123100%_
                         _%key123101%_
                         _%ctx123102%_)
                  (##structure
                   gx#module-import::t
                   _%out123078%_
                   (let ((_%$e123104%_ _%rename123079%_))
                     (if _%$e123104%_ _%$e123104%_ _%name123099%_))
                   (fx+ _%phi123100%_ _%dphi123080%_)
                   _%weak?123098%_))))
          (if (##structure-direct-instance-of?
               _%out123081123091%_
               'gx#module-export::t)
              (let* ((_%e123085123110%_
                      (##unchecked-structure-ref
                       _%out123081123091%_
                       '1
                       '#f
                       '#f))
                     (_%ctx123113%_ _%e123085123110%_)
                     (_%e123086123115%_
                      (##unchecked-structure-ref
                       _%out123081123091%_
                       '2
                       '#f
                       '#f))
                     (_%key123118%_ _%e123086123115%_)
                     (_%e123087123120%_
                      (##unchecked-structure-ref
                       _%out123081123091%_
                       '3
                       '#f
                       '#f))
                     (_%phi123123%_ _%e123087123120%_)
                     (_%e123088123125%_
                      (##unchecked-structure-ref
                       _%out123081123091%_
                       '4
                       '#f
                       '#f))
                     (_%name123128%_ _%e123088123125%_)
                     (_%e123089123130%_
                      (##unchecked-structure-ref
                       _%out123081123091%_
                       '5
                       '#f
                       '#f))
                     (_%weak?123133%_ _%e123089123130%_))
                (_%K123084123107%_
                 _%weak?123133%_
                 _%name123128%_
                 _%phi123123%_
                 _%key123118%_
                 _%ctx123113%_))
              (_%E123083123095%_)))))
    (define gx#core-module-export->import__0
      (lambda (_%out123138%_)
        (let* ((_%rename123140%_ '#f) (_%dphi123142%_ '0))
          (gx#core-module-export->import__%
           _%out123138%_
           _%rename123140%_
           _%dphi123142%_))))
    (define gx#core-module-export->import__1
      (lambda (_%out123144%_ _%rename123145%_)
        (let ((_%dphi123147%_ '0))
          (gx#core-module-export->import__%
           _%out123144%_
           _%rename123145%_
           _%dphi123147%_))))
    (define gx#core-module-export->import
      (lambda _g125220_
        (let ((_g125219_ (##length _g125220_)))
          (cond ((##fx= _g125219_ 1)
                 (apply (lambda (_%out123138%_)
                          (gx#core-module-export->import__0 _%out123138%_))
                        _g125220_))
                ((##fx= _g125219_ 2)
                 (apply (lambda (_%out123144%_ _%rename123145%_)
                          (gx#core-module-export->import__1
                           _%out123144%_
                           _%rename123145%_))
                        _g125220_))
                ((##fx= _g125219_ 3)
                 (apply (lambda (_%out123149%_ _%rename123150%_ _%dphi123151%_)
                          (gx#core-module-export->import__%
                           _%out123149%_
                           _%rename123150%_
                           _%dphi123151%_))
                        _g125220_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g125220_))))))
    (define gx#core-expand-module%
      (lambda (_%stx122977%_)
        (letrec ((_%make-context122979%_
                  (lambda (_%id123056%_)
                    (let* ((_%super123058%_ (gx#current-expander-context))
                           (_%bind-id123060%_ (gx#stx-e _%id123056%_))
                           (_%mod-id123062%_
                            (if (##structure-instance-of?
                                 _%super123058%_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##structure-ref
                                  _%super123058%_
                                  '1
                                  gx#expander-context::t
                                  '#f)
                                 '"~"
                                 _%bind-id123060%_)
                                _%bind-id123060%_))
                           (_%ns123064%_ (symbol->string _%mod-id123062%_))
                           (_%path123074%_
                            (if (##structure-instance-of?
                                 _%super123058%_
                                 'gx#module-context::t)
                                (let ((_%path123066%_
                                       (##unchecked-structure-ref
                                        _%super123058%_
                                        '7
                                        '#f
                                        '#f)))
                                  (if (or (pair? _%path123066%_)
                                          (null? _%path123066%_))
                                      (let ()
                                        (cons _%bind-id123060%_
                                              _%path123066%_))
                                      (if (not _%path123066%_)
                                          (let () _%bind-id123060%_)
                                          (let ()
                                            (cons _%bind-id123060%_
                                                  (cons _%path123066%_
                                                        '()))))))
                                _%bind-id123060%_)))
                      (let ((__obj125196
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
                         __obj125196
                         _%mod-id123062%_
                         _%super123058%_
                         _%ns123064%_
                         _%path123074%_)
                        __obj125196))))
                 (_%valid-module-id?122980%_
                  (lambda (_%id123031%_)
                    (let* ((_%str123033%_ (symbol->string _%id123031%_))
                           (_%len123035%_ (##string-length _%str123033%_)))
                      (if (##fx>= _%len123035%_ '1)
                          (let _%loop123038%_ ((_%index123040%_
                                                (##fx- (##string-length
                                                        _%str123033%_)
                                                       '1)))
                            (if (##fx>= _%index123040%_ '0)
                                (let ((_%c123042%_
                                       (string-ref
                                        _%str123033%_
                                        _%index123040%_)))
                                  (if (or (and (##char>=? _%c123042%_ '#\a)
                                               (##char<=? _%c123042%_ '#\z))
                                          (and (##char>=? _%c123042%_ '#\A)
                                               (##char<=? _%c123042%_ '#\Z))
                                          (and (##char>=? _%c123042%_ '#\0)
                                               (##char<=? _%c123042%_ '#\9))
                                          (##char=? _%c123042%_ '#\_)
                                          (##char=? _%c123042%_ '#\-))
                                      (_%loop123038%_
                                       (##fx- _%index123040%_ '1))
                                      '#f))
                                '#t))
                          '#f)))))
          (let* ((_%e122981122991%_ _%stx122977%_)
                 (_%E122983122995%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e122981122991%_)))
                 (_%E122982123027%_
                  (lambda ()
                    (if (gx#stx-pair? _%e122981122991%_)
                        (let ((_%e122984122999%_
                               (gx#syntax-e _%e122981122991%_)))
                          (let ((_%hd122985123002%_ (##car _%e122984122999%_))
                                (_%tl122986123004%_ (##cdr _%e122984122999%_)))
                            (if (gx#stx-pair? _%tl122986123004%_)
                                (let ((_%e122987123007%_
                                       (gx#syntax-e _%tl122986123004%_)))
                                  (let ((_%hd122988123010%_
                                         (##car _%e122987123007%_))
                                        (_%tl122989123012%_
                                         (##cdr _%e122987123007%_)))
                                    (let* ((_%id123015%_ _%hd122988123010%_)
                                           (_%body123017%_ _%tl122989123012%_))
                                      (if (and (gx#identifier? _%id123015%_)
                                               (gx#stx-list? _%body123017%_))
                                          (if (_%valid-module-id?122980%_
                                               (gx#stx-e
                                                (gx#datum->syntax__0 '#f 'id)))
                                              (let* ((_%ctx123019%_
                                                      (_%make-context122979%_
                                                       _%id123015%_))
                                                     (_%body123021%_
                                                      (gx#core-expand-module-begin
                                                       _%body123017%_
                                                       _%ctx123019%_))
                                                     (_%body123023%_
                                                      (gx#core-quote-syntax__1
                                                       (gx#core-cons
                                                        '%#begin
                                                        _%body123021%_)
                                                       (gx#stx-source
                                                        _%stx122977%_))))
                                                (##unchecked-structure-set!
                                                 _%ctx123019%_
                                                 (__make-promise
                                                  (lambda ()
                                                    (gx#eval-syntax*
                                                     _%body123023%_)))
                                                 '10
                                                 '#f
                                                 '#f)
                                                (##unchecked-structure-set!
                                                 _%ctx123019%_
                                                 _%body123023%_
                                                 '11
                                                 '#f
                                                 '#f)
                                                (gx#core-bind-syntax!__0
                                                 _%id123015%_
                                                 _%ctx123019%_)
                                                (gx#core-quote-syntax__1
                                                 (gx#core-list
                                                  '%#module
                                                  (gx#core-quote-syntax__0
                                                   _%id123015%_)
                                                  _%body123023%_)
                                                 (gx#stx-source
                                                  _%stx122977%_)))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"invalid module id; allowed characters are A-Z,a-z,0-9,_,-"
                                               _%stx122977%_
                                               (gx#datum->syntax__0 '#f 'id)))
                                          (_%E122983122995%_)))))
                                (_%E122983122995%_))))
                        (_%E122983122995%_)))))
            (_%E122982123027%_)))))
    (define gx#core-expand-module-begin
      (lambda (_%body122943%_ _%ctx122944%_)
        (__call-with-parameters
         (lambda ()
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_%stx122947%_
                   (gx#core-expand-head (cons '%%begin-module _%body122943%_)))
                  (_%e122948122955%_ _%stx122947%_)
                  (_%E122950122959%_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _%stx122947%_)))
                  (_%E122949122973%_
                   (lambda ()
                     (if (gx#stx-pair? _%e122948122955%_)
                         (let ((_%e122951122963%_
                                (gx#syntax-e _%e122948122955%_)))
                           (let ((_%hd122952122966%_ (##car _%e122951122963%_))
                                 (_%tl122953122968%_
                                  (##cdr _%e122951122963%_)))
                             (if (and (gx#identifier? _%hd122952122966%_)
                                      (gx#core-identifier=?
                                       _%hd122952122966%_
                                       '%#begin-module))
                                 (let ((_%body122971%_ _%tl122953122968%_))
                                   (if '#t
                                       (if (gx#sealed-syntax? _%stx122947%_)
                                           _%body122971%_
                                           (gx#core-expand-module-body
                                            _%body122971%_))
                                       (_%E122950122959%_)))
                                 (_%E122950122959%_))))
                         (_%E122950122959%_)))))
             (_%E122949122973%_)))
         gx#current-expander-context
         _%ctx122944%_
         gx#current-expander-phi
         '0)))
    (define gx#core-expand-module-body
      (lambda (_%body122739%_)
        (letrec ((_%expand-special122741%_
                  (lambda (_%hd122870%_ _%K122871%_ _%rest122872%_ _%r122873%_)
                    (let* ((_%e122874122891%_ _%hd122870%_)
                           (_%E122886122895%_
                            (lambda ()
                              (_%K122871%_
                               _%rest122872%_
                               (cons (gx#core-expand-top _%hd122870%_)
                                     _%r122873%_))))
                           (_%E122876122907%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122874122891%_)
                                  (let ((_%e122887122899%_
                                         (gx#syntax-e _%e122874122891%_)))
                                    (let ((_%hd122888122902%_
                                           (##car _%e122887122899%_))
                                          (_%tl122889122904%_
                                           (##cdr _%e122887122899%_)))
                                      (if (and (gx#identifier?
                                                _%hd122888122902%_)
                                               (gx#core-identifier=?
                                                _%hd122888122902%_
                                                '%#export))
                                          (if '#t
                                              (_%K122871%_
                                               _%rest122872%_
                                               (cons _%hd122870%_ _%r122873%_))
                                              (_%E122886122895%_))
                                          (_%E122886122895%_))))
                                  (_%E122886122895%_))))
                           (_%E122875122939%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122874122891%_)
                                  (let ((_%e122877122911%_
                                         (gx#syntax-e _%e122874122891%_)))
                                    (let ((_%hd122878122914%_
                                           (##car _%e122877122911%_))
                                          (_%tl122879122916%_
                                           (##cdr _%e122877122911%_)))
                                      (if (and (gx#identifier?
                                                _%hd122878122914%_)
                                               (gx#core-identifier=?
                                                _%hd122878122914%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl122879122916%_)
                                              (let ((_%e122880122919%_
                                                     (gx#syntax-e
                                                      _%tl122879122916%_)))
                                                (let ((_%hd122881122922%_
                                                       (##car _%e122880122919%_))
                                                      (_%tl122882122924%_
                                                       (##cdr _%e122880122919%_)))
                                                  (let ((_%hd-bind122927%_
                                                         _%hd122881122922%_))
                                                    (if (gx#stx-pair?
                                                         _%tl122882122924%_)
                                                        (let ((_%e122883122929%_
                                                               (gx#syntax-e
                                                                _%tl122882122924%_)))
                                                          (let ((_%hd122884122932%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e122883122929%_))
                        (_%tl122885122934%_ (##cdr _%e122883122929%_)))
                    (let ((_%expr122937%_ _%hd122884122932%_))
                      (if (gx#stx-null? _%tl122885122934%_)
                          (if (gx#core-bind-values? _%hd-bind122927%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind122927%_)
                                (_%K122871%_
                                 _%rest122872%_
                                 (cons _%hd122870%_ _%r122873%_)))
                              (_%E122876122907%_))
                          (_%E122876122907%_)))))
                (_%E122876122907%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E122876122907%_))
                                          (_%E122876122907%_))))
                                  (_%E122876122907%_)))))
                      (_%E122875122939%_))))
                 (_%expand-body122742%_
                  (lambda (_%rbody122744%_)
                    (let _%lp122746%_ ((_%rest122748%_ _%rbody122744%_)
                                       (_%body122749%_ '()))
                      (let* ((_%rest122750122758%_ _%rest122748%_)
                             (_%else122752122766%_ (lambda () _%body122749%_))
                             (_%K122754122858%_
                              (lambda (_%rest122769%_ _%hd122770%_)
                                (let* ((_%e122771122792%_ _%hd122770%_)
                                       (_%E122787122796%_
                                        (lambda ()
                                          (_%lp122746%_
                                           _%rest122769%_
                                           (cons (gx#core-expand-expression
                                                  _%hd122770%_)
                                                 _%body122749%_))))
                                       (_%E122783122810%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e122771122792%_)
                                              (let ((_%e122788122800%_
                                                     (gx#syntax-e
                                                      _%e122771122792%_)))
                                                (let ((_%hd122789122803%_
                                                       (##car _%e122788122800%_))
                                                      (_%tl122790122805%_
                                                       (##cdr _%e122788122800%_)))
                                                  (let ((_%form122808%_
                                                         _%hd122789122803%_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _%form122808%_
                                                         gx#special-form-binding?)
                                                        (_%lp122746%_
                                                         _%rest122769%_
                                                         (cons _%hd122770%_
                                                               _%body122749%_))
                                                        (_%E122787122796%_)))))
                                              (_%E122787122796%_))))
                                       (_%E122773122822%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e122771122792%_)
                                              (let ((_%e122784122814%_
                                                     (gx#syntax-e
                                                      _%e122771122792%_)))
                                                (let ((_%hd122785122817%_
                                                       (##car _%e122784122814%_))
                                                      (_%tl122786122819%_
                                                       (##cdr _%e122784122814%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd122785122817%_)
                                                           (gx#core-identifier=?
                                                            _%hd122785122817%_
                                                            '%#export))
                                                      (if '#t
                                                          (_%lp122746%_
                                                           _%rest122769%_
                                                           (cons (gx#core-expand-export%__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%hd122770%_)
                         _%body122749%_))
                  (_%E122783122810%_))
              (_%E122783122810%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E122783122810%_))))
                                       (_%E122772122854%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e122771122792%_)
                                              (let ((_%e122774122826%_
                                                     (gx#syntax-e
                                                      _%e122771122792%_)))
                                                (let ((_%hd122775122829%_
                                                       (##car _%e122774122826%_))
                                                      (_%tl122776122831%_
                                                       (##cdr _%e122774122826%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd122775122829%_)
                                                           (gx#core-identifier=?
                                                            _%hd122775122829%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl122776122831%_)
                                                          (let ((_%e122777122834%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl122776122831%_)))
                    (let ((_%hd122778122837%_ (##car _%e122777122834%_))
                          (_%tl122779122839%_ (##cdr _%e122777122834%_)))
                      (let ((_%hd-bind122842%_ _%hd122778122837%_))
                        (if (gx#stx-pair? _%tl122779122839%_)
                            (let ((_%e122780122844%_
                                   (gx#syntax-e _%tl122779122839%_)))
                              (let ((_%hd122781122847%_
                                     (##car _%e122780122844%_))
                                    (_%tl122782122849%_
                                     (##cdr _%e122780122844%_)))
                                (let ((_%expr122852%_ _%hd122781122847%_))
                                  (if (gx#stx-null? _%tl122782122849%_)
                                      (if '#t
                                          (_%lp122746%_
                                           _%rest122769%_
                                           (cons (gx#core-quote-syntax__1
                                                  (gx#core-list
                                                   '%#define-values
                                                   (gx#core-quote-bind-values
                                                    _%hd-bind122842%_)
                                                   (gx#core-expand-expression
                                                    _%expr122852%_))
                                                  (gx#stx-source _%hd122770%_))
                                                 _%body122749%_))
                                          (_%E122773122822%_))
                                      (_%E122773122822%_)))))
                            (_%E122773122822%_)))))
                  (_%E122773122822%_))
              (_%E122773122822%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E122773122822%_)))))
                                  (_%E122772122854%_)))))
                        (if (##pair? _%rest122750122758%_)
                            (let ((_%hd122755122861%_
                                   (##car _%rest122750122758%_))
                                  (_%tl122756122863%_
                                   (##cdr _%rest122750122758%_)))
                              (let* ((_%hd122866%_ _%hd122755122861%_)
                                     (_%rest122868%_ _%tl122756122863%_))
                                (_%K122754122858%_
                                 _%rest122868%_
                                 _%hd122866%_)))
                            (_%else122752122766%_)))))))
          (_%expand-body122742%_
           (gx#core-expand-block__%
            (cons '%#begin-module _%body122739%_)
            _%expand-special122741%_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_%stx122580%_
               _%expanded?122581%_
               _%method122582%_
               _%current-phi122583%_
               _%expand1122584%_)
        (letrec ((_%K122586%_
                  (lambda (_%rest122706%_ _%r122707%_)
                    (let* ((_%e122708122715%_ _%rest122706%_)
                           (_%E122710122719%_ (lambda () _%r122707%_))
                           (_%E122709122735%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122708122715%_)
                                  (let ((_%e122711122723%_
                                         (gx#syntax-e _%e122708122715%_)))
                                    (let ((_%hd122712122726%_
                                           (##car _%e122711122723%_))
                                          (_%tl122713122728%_
                                           (##cdr _%e122711122723%_)))
                                      (let* ((_%hd122731%_ _%hd122712122726%_)
                                             (_%rest122733%_
                                              _%tl122713122728%_))
                                        (if '#t
                                            (_%step122587%_
                                             _%hd122731%_
                                             _%rest122733%_
                                             _%r122707%_)
                                            (_%E122710122719%_)))))
                                  (_%E122710122719%_)))))
                      (_%E122709122735%_))))
                 (_%step122587%_
                  (lambda (_%hd122620%_ _%rest122621%_ _%r122622%_)
                    (let* ((_%e122623122641%_ _%hd122620%_)
                           (_%E122636122645%_
                            (lambda ()
                              (if (_%expanded?122581%_ (gx#stx-e _%hd122620%_))
                                  (_%K122586%_
                                   _%rest122621%_
                                   (cons (gx#stx-e _%hd122620%_) _%r122622%_))
                                  (_%expand1122584%_
                                   _%hd122620%_
                                   _%K122586%_
                                   _%rest122621%_
                                   _%r122622%_))))
                           (_%E122632122661%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122623122641%_)
                                  (let ((_%e122637122649%_
                                         (gx#syntax-e _%e122623122641%_)))
                                    (let ((_%hd122638122652%_
                                           (##car _%e122637122649%_))
                                          (_%tl122639122654%_
                                           (##cdr _%e122637122649%_)))
                                      (let* ((_%macro122657%_
                                              _%hd122638122652%_)
                                             (_%body122659%_
                                              _%tl122639122654%_))
                                        (if (gx#core-bound-identifier?__%
                                             _%macro122657%_
                                             gx#syntax-binding?)
                                            (_%K122586%_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _%macro122657%_)
                                                    _%hd122620%_
                                                    _%method122582%_)
                                                   _%rest122621%_)
                                             _%r122622%_)
                                            (_%E122636122645%_)))))
                                  (_%E122636122645%_))))
                           (_%E122625122675%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122623122641%_)
                                  (let ((_%e122633122665%_
                                         (gx#syntax-e _%e122623122641%_)))
                                    (let ((_%hd122634122668%_
                                           (##car _%e122633122665%_))
                                          (_%tl122635122670%_
                                           (##cdr _%e122633122665%_)))
                                      (if (eq? (gx#stx-e _%hd122634122668%_)
                                               'begin:)
                                          (let ((_%body122673%_
                                                 _%tl122635122670%_))
                                            (if '#t
                                                (_%K122586%_
                                                 (gx#stx-foldr
                                                  cons
                                                  _%rest122621%_
                                                  _%body122673%_)
                                                 _%r122622%_)
                                                (_%E122632122661%_)))
                                          (_%E122632122661%_))))
                                  (_%E122632122661%_))))
                           (_%E122624122702%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122623122641%_)
                                  (let ((_%e122626122679%_
                                         (gx#syntax-e _%e122623122641%_)))
                                    (let ((_%hd122627122682%_
                                           (##car _%e122626122679%_))
                                          (_%tl122628122684%_
                                           (##cdr _%e122626122679%_)))
                                      (if (eq? (gx#stx-e _%hd122627122682%_)
                                               'phi:)
                                          (if (gx#stx-pair? _%tl122628122684%_)
                                              (let ((_%e122629122687%_
                                                     (gx#syntax-e
                                                      _%tl122628122684%_)))
                                                (let ((_%hd122630122690%_
                                                       (##car _%e122629122687%_))
                                                      (_%tl122631122692%_
                                                       (##cdr _%e122629122687%_)))
                                                  (let* ((_%dphi122695%_
                                                          _%hd122630122690%_)
                                                         (_%body122697%_
                                                          _%tl122631122692%_))
                                                    (if (gx#stx-fixnum?
                                                         _%dphi122695%_)
                                                        (let ((_%rbody122700%_
                                                               (__call-with-parameters
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_%K122586%_ _%body122697%_ '()))
                        _%current-phi122583%_
                        (fx+ (gx#stx-e _%dphi122695%_)
                             (_%current-phi122583%_)))))
                  (_%K122586%_
                   _%rest122621%_
                   (__foldr1 cons _%r122622%_ _%rbody122700%_)))
                (_%E122625122675%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E122625122675%_))
                                          (_%E122625122675%_))))
                                  (_%E122625122675%_)))))
                      (_%E122624122702%_)))))
          (let* ((_%e122588122595%_ _%stx122580%_)
                 (_%E122590122599%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e122588122595%_)))
                 (_%E122589122616%_
                  (lambda ()
                    (if (gx#stx-pair? _%e122588122595%_)
                        (let ((_%e122591122603%_
                               (gx#syntax-e _%e122588122595%_)))
                          (let ((_%hd122592122606%_ (##car _%e122591122603%_))
                                (_%tl122593122608%_ (##cdr _%e122591122603%_)))
                            (let ((_%body122611%_ _%tl122593122608%_))
                              (if '#t
                                  (if (_%current-phi122583%_)
                                      (let () (_%K122586%_ _%body122611%_ '()))
                                      (let ()
                                        (__call-with-parameters
                                         (lambda ()
                                           (_%K122586%_ _%body122611%_ '()))
                                         _%current-phi122583%_
                                         (gx#current-expander-phi))))
                                  (_%E122590122599%_)))))
                        (_%E122590122599%_)))))
            (_%E122589122616%_)))))
    (define gx#core-expand-import%__%
      (lambda (_%stx122234%_ _%internal-expand?122235%_)
        (letrec ((_%expand1122237%_
                  (lambda (_%hd122552%_ _%K122553%_ _%rest122554%_ _%r122555%_)
                    (if (gx#core-bound-module? _%hd122552%_)
                        (let ()
                          (_%import1122238%_
                           (gx#syntax-local-e__0 _%hd122552%_)
                           _%K122553%_
                           _%rest122554%_
                           _%r122555%_))
                        (if (gx#core-library-module-path? _%hd122552%_)
                            (let ()
                              (_%import1122238%_
                               (gx#import-module__0
                                (gx#core-resolve-library-module-path
                                 _%hd122552%_))
                               _%K122553%_
                               _%rest122554%_
                               _%r122555%_))
                            (if (gx#core-library-relative-module-path?
                                 _%hd122552%_)
                                (let ()
                                  (_%import1122238%_
                                   (gx#import-module__0
                                    (gx#core-resolve-library-relative-module-path
                                     _%hd122552%_))
                                   _%K122553%_
                                   _%rest122554%_
                                   _%r122555%_))
                                (let ()
                                  (let ((_%e122561%_ (gx#stx-e _%hd122552%_)))
                                    (if (pair? _%e122561%_)
                                        (let ()
                                          (let ((_%$e122564%_
                                                 (gx#stx-e (car _%e122561%_))))
                                            (if (eq? 'spec: _%$e122564%_)
                                                (_%import-spec122241%_
                                                 _%hd122552%_
                                                 _%K122553%_
                                                 _%rest122554%_
                                                 _%r122555%_)
                                                (if (eq? 'in: _%$e122564%_)
                                                    (_%import-submodule122239%_
                                                     _%hd122552%_
                                                     _%K122553%_
                                                     _%rest122554%_
                                                     _%r122555%_)
                                                    (if (eq? 'runtime:
                                                             _%$e122564%_)
                                                        (_%import-runtime122240%_
                                                         _%hd122552%_
                                                         _%K122553%_
                                                         _%rest122554%_
                                                         _%r122555%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; illegal import"
                                                         _%stx122234%_
                                                         _%hd122552%_))))))
                                        (if (string? _%e122561%_)
                                            (let ()
                                              (_%import1122238%_
                                               (gx#import-module__0
                                                (gx#core-resolve-module-path__%
                                                 _%hd122552%_
                                                 (gx#stx-source
                                                  _%stx122234%_)))
                                               _%K122553%_
                                               _%rest122554%_
                                               _%r122555%_))
                                            (if (##structure-instance-of?
                                                 _%e122561%_
                                                 'gx#module-context::t)
                                                (let ()
                                                  (_%K122553%_
                                                   _%rest122554%_
                                                   (cons _%e122561%_
                                                         _%r122555%_)))
                                                (let ()
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; illegal import"
                                                   _%stx122234%_
                                                   _%hd122552%_))))))))))))
                 (_%import1122238%_
                  (lambda (_%ctx122541%_
                           _%K122542%_
                           _%rest122543%_
                           _%r122544%_)
                    (let ((_%dphi122546%_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_%K122542%_
                       _%rest122543%_
                       (cons (##structure
                              gx#import-set::t
                              _%ctx122541%_
                              _%dphi122546%_
                              (map (lambda (_%g122547122549%_)
                                     (gx#core-module-export->import__%
                                      _%g122547122549%_
                                      '#f
                                      _%dphi122546%_))
                                   (##unchecked-structure-ref
                                    _%ctx122541%_
                                    '9
                                    '#f
                                    '#f)))
                             _%r122544%_)))))
                 (_%import-submodule122239%_
                  (lambda (_%hd122508%_ _%K122509%_ _%rest122510%_ _%r122511%_)
                    (let* ((_%e122512122519%_ _%hd122508%_)
                           (_%E122514122523%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e122512122519%_)))
                           (_%E122513122537%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122512122519%_)
                                  (let ((_%e122515122527%_
                                         (gx#syntax-e _%e122512122519%_)))
                                    (let ((_%hd122516122530%_
                                           (##car _%e122515122527%_))
                                          (_%tl122517122532%_
                                           (##cdr _%e122515122527%_)))
                                      (let ((_%spath122535%_
                                             _%tl122517122532%_))
                                        (if '#t
                                            (_%import1122238%_
                                             (_%import-spec-source122242%_
                                              _%spath122535%_)
                                             _%K122509%_
                                             _%rest122510%_
                                             _%r122511%_)
                                            (_%E122514122523%_)))))
                                  (_%E122514122523%_)))))
                      (_%E122513122537%_))))
                 (_%import-runtime122240%_
                  (lambda (_%hd122475%_ _%K122476%_ _%rest122477%_ _%r122478%_)
                    (let* ((_%e122479122486%_ _%hd122475%_)
                           (_%E122481122490%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e122479122486%_)))
                           (_%E122480122504%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122479122486%_)
                                  (let ((_%e122482122494%_
                                         (gx#syntax-e _%e122479122486%_)))
                                    (let ((_%hd122483122497%_
                                           (##car _%e122482122494%_))
                                          (_%tl122484122499%_
                                           (##cdr _%e122482122494%_)))
                                      (let ((_%spath122502%_
                                             _%tl122484122499%_))
                                        (if '#t
                                            (_%K122476%_
                                             _%rest122477%_
                                             (cons (_%import-spec-source122242%_
                                                    _%spath122502%_)
                                                   _%r122478%_))
                                            (_%E122481122490%_)))))
                                  (_%E122481122490%_)))))
                      (_%E122480122504%_))))
                 (_%import-spec122241%_
                  (lambda (_%hd122313%_ _%K122314%_ _%rest122315%_ _%r122316%_)
                    (let* ((_%e122317122334%_ _%hd122313%_)
                           (_%E122326122338%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e122317122334%_)))
                           (_%E122319122449%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122317122334%_)
                                  (let ((_%e122327122342%_
                                         (gx#syntax-e _%e122317122334%_)))
                                    (let ((_%hd122328122345%_
                                           (##car _%e122327122342%_))
                                          (_%tl122329122347%_
                                           (##cdr _%e122327122342%_)))
                                      (if (gx#stx-pair? _%tl122329122347%_)
                                          (let ((_%e122330122350%_
                                                 (gx#syntax-e
                                                  _%tl122329122347%_)))
                                            (let ((_%hd122331122353%_
                                                   (##car _%e122330122350%_))
                                                  (_%tl122332122355%_
                                                   (##cdr _%e122330122350%_)))
                                              (let* ((_%path122358%_
                                                      _%hd122331122353%_)
                                                     (_%specs122360%_
                                                      _%tl122332122355%_))
                                                (if '#t
                                                    (let ((_%src-ctx122362%_
                                                           (_%import-spec-source122242%_
                                                            _%path122358%_))
                                                          (_%exports122363%_
                                                           (make-hash-table))
                                                          (_%specs122364%_
                                                           (gx#syntax->list
                                                            _%specs122360%_)))
                                                      (for-each
                                                       (lambda (_%out122366%_)
                                                         (hash-put!
                                                          _%exports122363%_
                                                          (cons (##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%out122366%_
                         '3
                         '#f
                         '#f)
                        (##unchecked-structure-ref _%out122366%_ '4 '#f '#f))
                  _%out122366%_))
               (##unchecked-structure-ref _%src-ctx122362%_ '9 '#f '#f))
              (_%K122314%_
               _%rest122315%_
               (__foldl1
                (lambda (_%spec122368%_ _%r122369%_)
                  (let* ((_%e122370122386%_ _%spec122368%_)
                         (_%E122372122390%_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _%e122370122386%_)))
                         (_%E122371122445%_
                          (lambda ()
                            (if (gx#stx-pair? _%e122370122386%_)
                                (let ((_%e122373122394%_
                                       (gx#syntax-e _%e122370122386%_)))
                                  (let ((_%hd122374122397%_
                                         (##car _%e122373122394%_))
                                        (_%tl122375122399%_
                                         (##cdr _%e122373122394%_)))
                                    (let ((_%phi122402%_ _%hd122374122397%_))
                                      (if (gx#stx-pair? _%tl122375122399%_)
                                          (let ((_%e122376122404%_
                                                 (gx#syntax-e
                                                  _%tl122375122399%_)))
                                            (let ((_%hd122377122407%_
                                                   (##car _%e122376122404%_))
                                                  (_%tl122378122409%_
                                                   (##cdr _%e122376122404%_)))
                                              (let ((_%name122412%_
                                                     _%hd122377122407%_))
                                                (if (gx#stx-pair?
                                                     _%tl122378122409%_)
                                                    (let ((_%e122379122414%_
                                                           (gx#syntax-e
                                                            _%tl122378122409%_)))
                                                      (let ((_%hd122380122417%_
                                                             (##car _%e122379122414%_))
                                                            (_%tl122381122419%_
                                                             (##cdr _%e122379122414%_)))
                                                        (let ((_%src-phi122422%_
                                                               _%hd122380122417%_))
                                                          (if (gx#stx-pair?
                                                               _%tl122381122419%_)
                                                              (let ((_%e122382122424%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl122381122419%_)))
                        (let ((_%hd122383122427%_ (##car _%e122382122424%_))
                              (_%tl122384122429%_ (##cdr _%e122382122424%_)))
                          (let ((_%src-name122432%_ _%hd122383122427%_))
                            (if (gx#stx-null? _%tl122384122429%_)
                                (if (and (gx#stx-fixnum? _%src-phi122422%_)
                                         (gx#identifier? _%src-name122432%_)
                                         (gx#stx-fixnum? _%phi122402%_)
                                         (gx#identifier? _%name122412%_))
                                    (let ((_%src-phi122434%_
                                           (gx#stx-e _%src-phi122422%_))
                                          (_%src-name122435%_
                                           (gx#core-identifier-key
                                            _%src-name122432%_))
                                          (_%phi122436%_
                                           (gx#stx-e _%phi122402%_))
                                          (_%name122437%_
                                           (gx#core-identifier-key
                                            _%name122412%_)))
                                      (let ((_%$e122439%_
                                             (hash-get
                                              _%exports122363%_
                                              (cons _%src-phi122434%_
                                                    _%src-name122435%_))))
                                        (if _%$e122439%_
                                            ((lambda (_%out122442%_)
                                               (cons (gx#core-module-export->import__%
                                                      _%out122442%_
                                                      _%name122437%_
                                                      (fx- _%phi122436%_
                                                           _%src-phi122434%_))
                                                     _%r122369%_))
                                             _%$e122439%_)
                                            (let ()
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; no matching export"
                                               _%stx122234%_
                                               _%hd122313%_)))))
                                    (_%E122372122390%_))
                                (_%E122372122390%_)))))
                      (_%E122372122390%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E122372122390%_)))))
                                          (_%E122372122390%_)))))
                                (_%E122372122390%_)))))
                    (_%E122371122445%_)))
                _%r122316%_
                _%specs122364%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E122326122338%_)))))
                                          (_%E122326122338%_))))
                                  (_%E122326122338%_))))
                           (_%E122318122471%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122317122334%_)
                                  (let ((_%e122320122453%_
                                         (gx#syntax-e _%e122317122334%_)))
                                    (let ((_%hd122321122456%_
                                           (##car _%e122320122453%_))
                                          (_%tl122322122458%_
                                           (##cdr _%e122320122453%_)))
                                      (if (gx#stx-pair? _%tl122322122458%_)
                                          (let ((_%e122323122461%_
                                                 (gx#syntax-e
                                                  _%tl122322122458%_)))
                                            (let ((_%hd122324122464%_
                                                   (##car _%e122323122461%_))
                                                  (_%tl122325122466%_
                                                   (##cdr _%e122323122461%_)))
                                              (let ((_%path122469%_
                                                     _%hd122324122464%_))
                                                (if (gx#stx-null?
                                                     _%tl122325122466%_)
                                                    (if '#t
                                                        (_%K122314%_
                                                         _%rest122315%_
                                                         (cons (_%import-spec-source122242%_
                                                                _%path122469%_)
                                                               _%r122316%_))
                                                        (_%E122319122449%_))
                                                    (_%E122319122449%_)))))
                                          (_%E122319122449%_))))
                                  (_%E122319122449%_)))))
                      (_%E122318122471%_))))
                 (_%import-spec-source122242%_
                  (lambda (_%spath122311%_)
                    (gx#core-import-nested-module
                     _%spath122311%_
                     _%stx122234%_)))
                 (_%import!122243%_
                  (lambda (_%rbody122256%_)
                    (letrec* ((_%current-ctx122258%_
                               (gx#current-expander-context))
                              (_%deps122259%_ (make-hash-table-eq))
                              (_%bind!122260%_
                               (lambda (_%hd122309%_)
                                 (gx#core-bind-import!__1
                                  _%hd122309%_
                                  _%current-ctx122258%_))))
                      (let _%lp122262%_ ((_%rest122264%_ _%rbody122256%_)
                                         (_%body122265%_ '()))
                        (let* ((_%rest122266122274%_ _%rest122264%_)
                               (_%else122268122285%_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _%current-ctx122258%_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _%current-ctx122258%_
                                       (__foldl1
                                        cons
                                        (##unchecked-structure-ref
                                         _%current-ctx122258%_
                                         '8
                                         '#f
                                         '#f)
                                        _%body122265%_)
                                       '8
                                       '#f
                                       '#f)
                                      '#!void)
                                  (hash-for-each
                                   (lambda (_%ctx122282%_ _%_122283%_)
                                     (gx#eval-module _%ctx122282%_))
                                   _%deps122259%_)
                                  _%body122265%_))
                               (_%K122270122297%_
                                (lambda (_%rest122288%_ _%hd122289%_)
                                  (if (##structure-direct-instance-of?
                                       _%hd122289%_
                                       'gx#module-import::t)
                                      (let ()
                                        (_%bind!122260%_ _%hd122289%_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _%hd122289%_
                                                   '3
                                                   '#f
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _%hd122289%_
                                                            '1
                                                            '#f
                                                            '#f)
                                                           '3
                                                           '#f
                                                           '#f)))
                                            (hash-put!
                                             _%deps122259%_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _%hd122289%_
                                               '1
                                               '#f
                                               '#f)
                                              '1
                                              '#f
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _%hd122289%_
                                           'gx#import-set::t)
                                          (let ()
                                            (for-each
                                             _%bind!122260%_
                                             (##unchecked-structure-ref
                                              _%hd122289%_
                                              '3
                                              '#f
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _%hd122289%_
                                                  '2
                                                  '#f
                                                  '#f))
                                                (hash-put!
                                                 _%deps122259%_
                                                 (##unchecked-structure-ref
                                                  _%hd122289%_
                                                  '1
                                                  '#f
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_%$e122293%_
                                                 (##structure-instance-of?
                                                  _%hd122289%_
                                                  'gx#module-context::t)))
                                            (if _%$e122293%_
                                                _%$e122293%_
                                                (let ()
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Unexpected import"
                                                   _%stx122234%_
                                                   _%hd122289%_))))))
                                  (_%lp122262%_
                                   _%rest122288%_
                                   (cons _%hd122289%_ _%body122265%_)))))
                          (if (##pair? _%rest122266122274%_)
                              (let ((_%hd122271122300%_
                                     (##car _%rest122266122274%_))
                                    (_%tl122272122302%_
                                     (##cdr _%rest122266122274%_)))
                                (let* ((_%hd122305%_ _%hd122271122300%_)
                                       (_%rest122307%_ _%tl122272122302%_))
                                  (_%K122270122297%_
                                   _%rest122307%_
                                   _%hd122305%_)))
                              (_%else122268122285%_)))))))
                 (_%expanded-import?122244%_
                  (lambda (_%e122248%_)
                    (let ((_%$e122250%_
                           (##structure-direct-instance-of?
                            _%e122248%_
                            'gx#import-set::t)))
                      (if _%$e122250%_
                          _%$e122250%_
                          (let ((_%$e122253%_
                                 (##structure-direct-instance-of?
                                  _%e122248%_
                                  'gx#module-import::t)))
                            (if _%$e122253%_
                                _%$e122253%_
                                (##structure-instance-of?
                                 _%e122248%_
                                 'gx#module-context::t))))))))
          (let ((_%rbody122246%_
                 (gx#core-expand-import/export
                  _%stx122234%_
                  _%expanded-import?122244%_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _%expand1122237%_)))
            (if _%internal-expand?122235%_
                (reverse _%rbody122246%_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_%import!122243%_ _%rbody122246%_))
                 (gx#stx-source _%stx122234%_)))))))
    (define gx#core-expand-import%__0
      (lambda (_%stx122573%_)
        (let ((_%internal-expand?122575%_ '#f))
          (gx#core-expand-import%__%
           _%stx122573%_
           _%internal-expand?122575%_))))
    (define gx#core-expand-import%
      (lambda _g125222_
        (let ((_g125221_ (##length _g125222_)))
          (cond ((##fx= _g125221_ 1)
                 (apply (lambda (_%stx122573%_)
                          (gx#core-expand-import%__0 _%stx122573%_))
                        _g125222_))
                ((##fx= _g125221_ 2)
                 (apply (lambda (_%stx122577%_ _%internal-expand?122578%_)
                          (gx#core-expand-import%__%
                           _%stx122577%_
                           _%internal-expand?122578%_))
                        _g125222_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g125222_))))))
    (define gx#core-import-nested-module
      (lambda (_%spath122161%_ _%where122162%_)
        (let* ((_%e122163122170%_ _%spath122161%_)
               (_%E122165122174%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122163122170%_)))
               (_%E122164122229%_
                (lambda ()
                  (if (gx#stx-pair? _%e122163122170%_)
                      (let ((_%e122166122178%_
                             (gx#syntax-e _%e122163122170%_)))
                        (let ((_%hd122167122181%_ (##car _%e122166122178%_))
                              (_%tl122168122183%_ (##cdr _%e122166122178%_)))
                          (let* ((_%origin122186%_ _%hd122167122181%_)
                                 (_%sub122188%_ _%tl122168122183%_))
                            (if '#t
                                (let ((_%origin-ctx122190%_
                                       (if (gx#stx-false? _%origin122186%_)
                                           (gx#current-expander-context)
                                           (gx#import-module__0
                                            _%origin122186%_))))
                                  (let _%lp122192%_ ((_%rest122194%_
                                                      _%sub122188%_)
                                                     (_%ctx122195%_
                                                      _%origin-ctx122190%_))
                                    (let* ((_%e122196122203%_ _%rest122194%_)
                                           (_%E122198122207%_
                                            (lambda () _%ctx122195%_))
                                           (_%E122197122225%_
                                            (lambda ()
                                              (if (gx#stx-pair?
                                                   _%e122196122203%_)
                                                  (let ((_%e122199122211%_
                                                         (gx#syntax-e
                                                          _%e122196122203%_)))
                                                    (let ((_%hd122200122214%_
                                                           (##car _%e122199122211%_))
                                                          (_%tl122201122216%_
                                                           (##cdr _%e122199122211%_)))
                                                      (let* ((_%id122219%_
                                                              _%hd122200122214%_)
                                                             (_%rest122221%_
                                                              _%tl122201122216%_))
                                                        (if '#t
                                                            (let ((_%bind122223%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#resolve-identifier__%
                            _%id122219%_
                            '0
                            _%ctx122195%_)))
                      (if (and (##structure-direct-instance-of?
                                _%bind122223%_
                                'gx#syntax-binding::t)
                               (##structure-instance-of?
                                (##unchecked-structure-ref
                                 _%bind122223%_
                                 '4
                                 '#f
                                 '#f)
                                'gx#module-context::t))
                          '#!void
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; not bound as module"
                           _%where122162%_
                           _%spath122161%_
                           _%id122219%_))
                      (_%lp122192%_
                       _%rest122221%_
                       (##unchecked-structure-ref _%bind122223%_ '4 '#f '#f)))
                    (_%E122198122207%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E122198122207%_)))))
                                      (_%E122197122225%_))))
                                (_%E122165122174%_)))))
                      (_%E122165122174%_)))))
          (_%E122164122229%_))))
    (define gx#core-expand-import-source
      (lambda (_%hd122159%_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _%hd122159%_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_%stx121653%_ _%internal-expand?121654%_)
        (letrec* ((_%make-export__125150125151%_
                   (lambda (_%bind122107%_
                            _%phi122108%_
                            _%ctx122109%_
                            _%name122110%_)
                     (let* ((_%key122112%_
                             (##unchecked-structure-ref
                              _%bind122107%_
                              '2
                              '#f
                              '#f))
                            (_%export-key122114%_
                             (if _%name122110%_
                                 (gx#core-identifier-key _%name122110%_)
                                 _%key122112%_)))
                       (##structure
                        gx#module-export::t
                        _%ctx122109%_
                        _%key122112%_
                        _%phi122108%_
                        _%export-key122114%_
                        (let ((_%$e122117%_
                               (##structure-instance-of?
                                _%bind122107%_
                                'gx#extern-binding::t)))
                          (if _%$e122117%_
                              _%$e122117%_
                              (##structure-direct-instance-of?
                               _%bind122107%_
                               'gx#import-binding::t)))))))
                  (_%make-export__0__125152125155%_
                   (lambda (_%bind122123%_)
                     (let* ((_%phi122125%_ (gx#current-export-expander-phi))
                            (_%ctx122127%_ (gx#current-expander-context))
                            (_%name122129%_ '#f))
                       (_%make-export__125150125151%_
                        _%bind122123%_
                        _%phi122125%_
                        _%ctx122127%_
                        _%name122129%_))))
                  (_%make-export__1__125153125156%_
                   (lambda (_%bind122131%_ _%phi122132%_)
                     (let* ((_%ctx122134%_ (gx#current-expander-context))
                            (_%name122136%_ '#f))
                       (_%make-export__125150125151%_
                        _%bind122131%_
                        _%phi122132%_
                        _%ctx122134%_
                        _%name122136%_))))
                  (_%make-export__2__125154125157%_
                   (lambda (_%bind122138%_ _%phi122139%_ _%ctx122140%_)
                     (let ((_%name122142%_ '#f))
                       (_%make-export__125150125151%_
                        _%bind122138%_
                        _%phi122139%_
                        _%ctx122140%_
                        _%name122142%_))))
                  (_%make-export121656%_
                   (lambda _g125224_
                     (let ((_g125223_ (##length _g125224_)))
                       (cond ((##fx= _g125223_ 1)
                              (apply (lambda (_%bind122123%_)
                                       (_%make-export__0__125152125155%_
                                        _%bind122123%_))
                                     _g125224_))
                             ((##fx= _g125223_ 2)
                              (apply (lambda (_%bind122131%_ _%phi122132%_)
                                       (_%make-export__1__125153125156%_
                                        _%bind122131%_
                                        _%phi122132%_))
                                     _g125224_))
                             ((##fx= _g125223_ 3)
                              (apply (lambda (_%bind122138%_
                                              _%phi122139%_
                                              _%ctx122140%_)
                                       (_%make-export__2__125154125157%_
                                        _%bind122138%_
                                        _%phi122139%_
                                        _%ctx122140%_))
                                     _g125224_))
                             ((##fx= _g125223_ 4)
                              (apply (lambda (_%bind122144%_
                                              _%phi122145%_
                                              _%ctx122146%_
                                              _%name122147%_)
                                       (_%make-export__125150125151%_
                                        _%bind122144%_
                                        _%phi122145%_
                                        _%ctx122146%_
                                        _%name122147%_))
                                     _g125224_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g125224_))))))
                  (_%expand1121657%_
                   (lambda (_%hd121812%_
                            _%K121813%_
                            _%rest121814%_
                            _%r121815%_)
                     (let* ((_%e121816121848%_ _%hd121812%_)
                            (_%E121843121852%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _%stx121653%_
                                _%hd121812%_)))
                            (_%E121833121936%_
                             (lambda ()
                               (if (gx#stx-pair? _%e121816121848%_)
                                   (let ((_%e121844121856%_
                                          (gx#syntax-e _%e121816121848%_)))
                                     (let ((_%hd121845121859%_
                                            (##car _%e121844121856%_))
                                           (_%tl121846121861%_
                                            (##cdr _%e121844121856%_)))
                                       (if (eq? (gx#stx-e _%hd121845121859%_)
                                                'import:)
                                           (let ((_%in121864%_
                                                  _%tl121846121861%_))
                                             (if (gx#stx-list? _%in121864%_)
                                                 (let _%lp121866%_ ((_%in-rest121868%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%in121864%_)
                            (_%r121869%_ _%r121815%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%e121870121877%_
                                                           _%in-rest121868%_)
                                                          (_%E121872121881%_
                                                           (lambda ()
                                                             (_%K121813%_
                                                              _%rest121814%_
                                                              _%r121869%_)))
                                                          (_%E121871121932%_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%e121870121877%_)
                         (let ((_%e121873121885%_
                                (gx#syntax-e _%e121870121877%_)))
                           (let ((_%hd121874121888%_ (##car _%e121873121885%_))
                                 (_%tl121875121890%_
                                  (##cdr _%e121873121885%_)))
                             (let* ((_%hd121893%_ _%hd121874121888%_)
                                    (_%in-rest121895%_ _%tl121875121890%_))
                               (if '#t
                                   (let ((_%src121930%_
                                          (if (gx#core-bound-module?
                                               _%hd121893%_)
                                              (let ()
                                                (gx#syntax-local-e__0
                                                 _%hd121893%_))
                                              (if (gx#core-library-module-path?
                                                   _%hd121893%_)
                                                  (let ()
                                                    (gx#import-module__0
                                                     (gx#core-resolve-library-module-path
                                                      _%hd121893%_)))
                                                  (if (gx#core-library-relative-module-path?
                                                       _%hd121893%_)
                                                      (let ()
                                                        (gx#import-module__0
                                                         (gx#core-resolve-library-relative-module-path
                                                          _%hd121893%_)))
                                                      (if (gx#stx-string?
                                                           _%hd121893%_)
                                                          (let ()
                                                            (gx#import-module__0
                                                             (gx#core-resolve-module-path__%
                                                              _%hd121893%_
                                                              (gx#stx-source
                                                               _%stx121653%_))))
                                                          (let ()
                                                            (let* ((_%e121901121908%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd121893%_)
                           (_%E121903121912%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; illegal re-export"
                               _%stx121653%_
                               _%hd121893%_)))
                           (_%E121902121926%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121901121908%_)
                                  (let ((_%e121904121916%_
                                         (gx#syntax-e _%e121901121908%_)))
                                    (let ((_%hd121905121919%_
                                           (##car _%e121904121916%_))
                                          (_%tl121906121921%_
                                           (##cdr _%e121904121916%_)))
                                      (if (eq? (gx#stx-e _%hd121905121919%_)
                                               'in:)
                                          (let ((_%spath121924%_
                                                 _%tl121906121921%_))
                                            (if '#t
                                                (gx#core-import-nested-module
                                                 _%spath121924%_
                                                 _%stx121653%_)
                                                (_%E121903121912%_)))
                                          (_%E121903121912%_))))
                                  (_%E121903121912%_)))))
                      (_%E121902121926%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%lp121866%_
                                      _%in-rest121895%_
                                      (_%export-imports121658%_
                                       _%src121930%_
                                       _%r121869%_)))
                                   (_%E121872121881%_)))))
                         (_%E121872121881%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E121871121932%_)))
                                                 (_%E121843121852%_)))
                                           (_%E121843121852%_))))
                                   (_%E121843121852%_))))
                            (_%E121820121976%_
                             (lambda ()
                               (if (gx#stx-pair? _%e121816121848%_)
                                   (let ((_%e121834121940%_
                                          (gx#syntax-e _%e121816121848%_)))
                                     (let ((_%hd121835121943%_
                                            (##car _%e121834121940%_))
                                           (_%tl121836121945%_
                                            (##cdr _%e121834121940%_)))
                                       (if (eq? (gx#stx-e _%hd121835121943%_)
                                                'rename:)
                                           (if (gx#stx-pair?
                                                _%tl121836121945%_)
                                               (let ((_%e121837121948%_
                                                      (gx#syntax-e
                                                       _%tl121836121945%_)))
                                                 (let ((_%hd121838121951%_
                                                        (##car _%e121837121948%_))
                                                       (_%tl121839121953%_
                                                        (##cdr _%e121837121948%_)))
                                                   (let ((_%id121956%_
                                                          _%hd121838121951%_))
                                                     (if (gx#stx-pair?
                                                          _%tl121839121953%_)
                                                         (let ((_%e121840121958%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl121839121953%_)))
                   (let ((_%hd121841121961%_ (##car _%e121840121958%_))
                         (_%tl121842121963%_ (##cdr _%e121840121958%_)))
                     (let ((_%name121966%_ _%hd121841121961%_))
                       (if (gx#stx-null? _%tl121842121963%_)
                           (if '#t
                               (let* ((_%phi121968%_
                                       (gx#current-export-expander-phi))
                                      (_%$e121970%_
                                       (gx#core-resolve-identifier__1
                                        _%id121956%_
                                        _%phi121968%_)))
                                 (if _%$e121970%_
                                     ((lambda (_%bind121973%_)
                                        (_%K121813%_
                                         _%rest121814%_
                                         (cons (_%make-export__125150125151%_
                                                _%bind121973%_
                                                _%phi121968%_
                                                (gx#current-expander-context)
                                                _%name121966%_)
                                               _%r121815%_)))
                                      _%$e121970%_)
                                     (let ()
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Reference to unbound identifier"
                                        _%stx121653%_
                                        _%hd121812%_
                                        _%id121956%_))))
                               (_%E121833121936%_))
                           (_%E121833121936%_)))))
                 (_%E121833121936%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E121833121936%_))
                                           (_%E121833121936%_))))
                                   (_%E121833121936%_))))
                            (_%E121819122026%_
                             (lambda ()
                               (if (gx#stx-pair? _%e121816121848%_)
                                   (let ((_%e121821121980%_
                                          (gx#syntax-e _%e121816121848%_)))
                                     (let ((_%hd121822121983%_
                                            (##car _%e121821121980%_))
                                           (_%tl121823121985%_
                                            (##cdr _%e121821121980%_)))
                                       (if (eq? (gx#stx-e _%hd121822121983%_)
                                                'spec:)
                                           (if (gx#stx-pair?
                                                _%tl121823121985%_)
                                               (let ((_%e121824121988%_
                                                      (gx#syntax-e
                                                       _%tl121823121985%_)))
                                                 (let ((_%hd121825121991%_
                                                        (##car _%e121824121988%_))
                                                       (_%tl121826121993%_
                                                        (##cdr _%e121824121988%_)))
                                                   (let ((_%phi121996%_
                                                          _%hd121825121991%_))
                                                     (if (gx#stx-pair?
                                                          _%tl121826121993%_)
                                                         (let ((_%e121827121998%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl121826121993%_)))
                   (let ((_%hd121828122001%_ (##car _%e121827121998%_))
                         (_%tl121829122003%_ (##cdr _%e121827121998%_)))
                     (let ((_%id122006%_ _%hd121828122001%_))
                       (if (gx#stx-pair? _%tl121829122003%_)
                           (let ((_%e121830122008%_
                                  (gx#syntax-e _%tl121829122003%_)))
                             (let ((_%hd121831122011%_
                                    (##car _%e121830122008%_))
                                   (_%tl121832122013%_
                                    (##cdr _%e121830122008%_)))
                               (let ((_%name122016%_ _%hd121831122011%_))
                                 (if (gx#stx-null? _%tl121832122013%_)
                                     (if (and (gx#stx-fixnum? _%phi121996%_)
                                              (gx#identifier? _%id122006%_)
                                              (gx#identifier? _%name122016%_))
                                         (let* ((_%phi122018%_
                                                 (gx#stx-e _%phi121996%_))
                                                (_%$e122020%_
                                                 (gx#core-resolve-identifier__1
                                                  _%id122006%_
                                                  _%phi122018%_)))
                                           (if _%$e122020%_
                                               ((lambda (_%bind122023%_)
                                                  (_%K121813%_
                                                   _%rest121814%_
                                                   (cons (_%make-export__125150125151%_
                                                          _%bind122023%_
                                                          _%phi122018%_
                                                          (gx#current-expander-context)
                                                          _%name122016%_)
                                                         _%r121815%_)))
                                                _%$e122020%_)
                                               (let ()
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Reference to unbound identifier"
                                                  _%stx121653%_
                                                  _%hd121812%_
                                                  _%id122006%_))))
                                         (_%E121820121976%_))
                                     (_%E121820121976%_)))))
                           (_%E121820121976%_)))))
                 (_%E121820121976%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E121820121976%_))
                                           (_%E121820121976%_))))
                                   (_%E121820121976%_))))
                            (_%E121818122038%_
                             (lambda ()
                               (let ((_%id122030%_ _%e121816121848%_))
                                 (if (gx#identifier? _%id122030%_)
                                     (let ((_%$e122032%_
                                            (gx#core-resolve-identifier__1
                                             _%id122030%_
                                             (gx#current-export-expander-phi))))
                                       (if _%$e122032%_
                                           ((lambda (_%bind122035%_)
                                              (_%K121813%_
                                               _%rest121814%_
                                               (cons (_%make-export__0__125152125155%_
                                                      _%bind122035%_)
                                                     _%r121815%_)))
                                            _%$e122032%_)
                                           (let ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Reference to unbound identifier"
                                              _%stx121653%_
                                              _%hd121812%_))))
                                     (_%E121819122026%_)))))
                            (_%E121817122102%_
                             (lambda ()
                               (if (eq? (gx#stx-e _%e121816121848%_) '#t)
                                   (if '#t
                                       (let* ((_%current-ctx122042%_
                                               (gx#current-expander-context))
                                              (_%current-phi122044%_
                                               (gx#current-export-expander-phi))
                                              (_%phi-ctx122046%_
                                               (gx#core-context-shift
                                                _%current-ctx122042%_
                                                _%current-phi122044%_))
                                              (_%phi-bind122048%_
                                               (hash->list
                                                (##unchecked-structure-ref
                                                 _%phi-ctx122046%_
                                                 '2
                                                 '#f
                                                 '#f))))
                                         (let _%lp122051%_ ((_%bind-rest122053%_
                                                             _%phi-bind122048%_)
                                                            (_%set122054%_
                                                             '()))
                                           (let* ((_%bind-rest122055122065%_
                                                   _%bind-rest122053%_)
                                                  (_%else122057122073%_
                                                   (lambda ()
                                                     (_%K121813%_
                                                      _%rest121814%_
                                                      (cons (##structure
                                                             gx#export-set::t
                                                             '#f
                                                             _%current-phi122044%_
                                                             _%set122054%_)
                                                            _%r121815%_))))
                                                  (_%K122059122083%_
                                                   (lambda (_%bind-rest122076%_
                                                            _%bind122077%_
                                                            _%key122078%_)
                                                     (if (or (##structure-direct-instance-of?
                                                              _%bind122077%_
                                                              'gx#import-binding::t)
                                                             (gx#private-feature-binding?
                                                              _%bind122077%_))
                                                         (_%lp122051%_
                                                          _%bind-rest122076%_
                                                          _%set122054%_)
                                                         (_%lp122051%_
                                                          _%bind-rest122076%_
                                                          (cons (_%make-export__2__125154125157%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%bind122077%_
                         _%current-phi122044%_
                         _%current-ctx122042%_)
                        _%set122054%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _%bind-rest122055122065%_)
                                                 (let ((_%hd122060122086%_
                                                        (##car _%bind-rest122055122065%_))
                                                       (_%tl122061122088%_
                                                        (##cdr _%bind-rest122055122065%_)))
                                                   (if (##pair? _%hd122060122086%_)
                                                       (let ((_%hd122062122091%_
                                                              (##car _%hd122060122086%_))
                                                             (_%tl122063122093%_
                                                              (##cdr _%hd122060122086%_)))
                                                         (let* ((_%key122096%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd122062122091%_)
                        (_%bind122098%_ _%tl122063122093%_)
                        (_%bind-rest122100%_ _%tl122061122088%_))
                   (_%K122059122083%_
                    _%bind-rest122100%_
                    _%bind122098%_
                    _%key122096%_)))
               (_%else122057122073%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%else122057122073%_)))))
                                       (_%E121818122038%_))
                                   (_%E121818122038%_)))))
                       (_%E121817122102%_))))
                  (_%export-imports121658%_
                   (lambda (_%src121688%_ _%r121689%_)
                     (letrec* ((_%current-ctx121691%_
                                (gx#current-expander-context))
                               (_%current-phi121692%_
                                (gx#current-export-expander-phi))
                               (_%import->export121693%_
                                (lambda (_%in121774%_)
                                  (let* ((_%in121775121783%_ _%in121774%_)
                                         (_%E121777121787%_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _%in121775121783%_
                                                   '((module-import
                                                      out
                                                      key
                                                      phi)))
                                            '#!void))
                                         (_%K121778121794%_
                                          (lambda (_%phi121790%_
                                                   _%key121791%_
                                                   _%out121792%_)
                                            (##structure
                                             gx#module-export::t
                                             _%current-ctx121691%_
                                             _%key121791%_
                                             _%phi121790%_
                                             _%key121791%_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _%in121775121783%_
                                         'gx#module-import::t)
                                        (let* ((_%e121779121797%_
                                                (##unchecked-structure-ref
                                                 _%in121775121783%_
                                                 '1
                                                 '#f
                                                 '#f))
                                               (_%out121800%_
                                                _%e121779121797%_)
                                               (_%e121780121802%_
                                                (##unchecked-structure-ref
                                                 _%in121775121783%_
                                                 '2
                                                 '#f
                                                 '#f))
                                               (_%key121805%_
                                                _%e121780121802%_)
                                               (_%e121781121807%_
                                                (##unchecked-structure-ref
                                                 _%in121775121783%_
                                                 '3
                                                 '#f
                                                 '#f))
                                               (_%phi121810%_
                                                _%e121781121807%_))
                                          (_%K121778121794%_
                                           _%phi121810%_
                                           _%key121805%_
                                           _%out121800%_))
                                        (_%E121777121787%_)))))
                               (_%fold-e121694%_
                                (lambda (_%in121696%_ _%r121697%_)
                                  (let* ((_%in121698121712%_ _%in121696%_)
                                         (_%else121701121720%_
                                          (lambda () _%r121697%_)))
                                    (let ((_%K121707121756%_
                                           (lambda (_%phi121752%_
                                                    _%key121753%_
                                                    _%out121754%_)
                                             (if (and (fx= _%phi121752%_
                                                           _%current-phi121692%_)
                                                      (eq? _%src121688%_
                                                           (##unchecked-structure-ref
                                                            _%out121754%_
                                                            '1
                                                            '#f
                                                            '#f)))
                                                 (cons (_%import->export121693%_
                                                        _%in121696%_)
                                                       _%r121697%_)
                                                 _%r121697%_)))
                                          (_%K121703121731%_
                                           (lambda (_%imports121724%_
                                                    _%phi121725%_
                                                    _%ctx121726%_)
                                             (if (and (fx= _%phi121725%_
                                                           _%current-phi121692%_)
                                                      (eq? _%src121688%_
                                                           _%ctx121726%_))
                                                 (__foldl1
                                                  (lambda (_%in121728%_
                                                           _%r121729%_)
                                                    (cons (_%import->export121693%_
                                                           _%in121728%_)
                                                          _%r121729%_))
                                                  _%r121697%_
                                                  _%imports121724%_)
                                                 _%r121697%_))))
                                      (let ((_%try-match121700121749%_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _%in121698121712%_
                                                    'gx#import-set::t)
                                                   (let* ((_%e121704121734%_
                                                           (##unchecked-structure-ref
                                                            _%in121698121712%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                          (_%e121705121739%_
                                                           (##unchecked-structure-ref
                                                            _%in121698121712%_
                                                            '2
                                                            '#f
                                                            '#f))
                                                          (_%e121706121744%_
                                                           (##unchecked-structure-ref
                                                            _%in121698121712%_
                                                            '3
                                                            '#f
                                                            '#f)))
                                                     (let ((_%ctx121737%_
                                                            _%e121704121734%_)
                                                           (_%phi121742%_
                                                            _%e121705121739%_)
                                                           (_%imports121747%_
                                                            _%e121706121744%_))
                                                       (_%K121703121731%_
                                                        _%imports121747%_
                                                        _%phi121742%_
                                                        _%ctx121737%_)))
                                                   (_%else121701121720%_)))))
                                        (if (##structure-direct-instance-of?
                                             _%in121698121712%_
                                             'gx#module-import::t)
                                            (let* ((_%e121708121759%_
                                                    (##unchecked-structure-ref
                                                     _%in121698121712%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                   (_%e121709121764%_
                                                    (##unchecked-structure-ref
                                                     _%in121698121712%_
                                                     '2
                                                     '#f
                                                     '#f))
                                                   (_%e121710121769%_
                                                    (##unchecked-structure-ref
                                                     _%in121698121712%_
                                                     '3
                                                     '#f
                                                     '#f)))
                                              (let ((_%out121762%_
                                                     _%e121708121759%_)
                                                    (_%key121767%_
                                                     _%e121709121764%_)
                                                    (_%phi121772%_
                                                     _%e121710121769%_))
                                                (_%K121707121756%_
                                                 _%phi121772%_
                                                 _%key121767%_
                                                 _%out121762%_)))
                                            (_%try-match121700121749%_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _%src121688%_
                              _%current-phi121692%_
                              (__foldl1
                               _%fold-e121694%_
                               '()
                               (##unchecked-structure-ref
                                _%current-ctx121691%_
                                '8
                                '#f
                                '#f)))
                             _%r121689%_))))
                  (_%export!121659%_
                   (lambda (_%rbody121675%_)
                     (letrec* ((_%current-ctx121677%_
                                (gx#current-expander-context))
                               (_%fold-e121678%_
                                (lambda (_%out121682%_ _%r121683%_)
                                  (if (##structure-direct-instance-of?
                                       _%out121682%_
                                       'gx#module-export::t)
                                      (let () (cons _%out121682%_ _%r121683%_))
                                      (if (##structure-direct-instance-of?
                                           _%out121682%_
                                           'gx#export-set::t)
                                          (let ()
                                            (__foldl1
                                             cons
                                             _%r121683%_
                                             (##unchecked-structure-ref
                                              _%out121682%_
                                              '3
                                              '#f
                                              '#f)))
                                          (let () _%r121683%_))))))
                       (let ((_%body121680%_ (reverse _%rbody121675%_)))
                         (##unchecked-structure-set!
                          _%current-ctx121677%_
                          (__foldl1
                           _%fold-e121678%_
                           (##unchecked-structure-ref
                            _%current-ctx121677%_
                            '9
                            '#f
                            '#f)
                           _%body121680%_)
                          '9
                          '#f
                          '#f)
                         _%body121680%_))))
                  (_%expanded-export?121660%_
                   (lambda (_%e121670%_)
                     (let ((_%$e121672%_
                            (##structure-direct-instance-of?
                             _%e121670%_
                             'gx#module-export::t)))
                       (if _%$e121672%_
                           _%$e121672%_
                           (##structure-direct-instance-of?
                            _%e121670%_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _%internal-expand?121654%_)
              (let ()
                (let ((_%rbody121666%_
                       (gx#core-expand-import/export
                        _%stx121653%_
                        _%expanded-export?121660%_
                        'apply-export-expander
                        gx#current-export-expander-phi
                        _%expand1121657%_)))
                  (if _%internal-expand?121654%_
                      (reverse _%rbody121666%_)
                      (gx#core-quote-syntax__1
                       (gx#core-cons
                        '%#export
                        (_%export!121659%_ _%rbody121666%_))
                       (gx#stx-source _%stx121653%_)))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (let ()
                    (gx#core-quote-syntax__1
                     (gx#core-cons '%#begin '())
                     (gx#stx-source _%stx121653%_)))
                  (let ()
                    (gx#raise-syntax-error
                     '#f
                     '"Illegal context"
                     _%stx121653%_)))))))
    (define gx#core-expand-export%__0
      (lambda (_%stx122152%_)
        (let ((_%internal-expand?122154%_ '#f))
          (gx#core-expand-export%__%
           _%stx122152%_
           _%internal-expand?122154%_))))
    (define gx#core-expand-export%
      (lambda _g125226_
        (let ((_g125225_ (##length _g125226_)))
          (cond ((##fx= _g125225_ 1)
                 (apply (lambda (_%stx122152%_)
                          (gx#core-expand-export%__0 _%stx122152%_))
                        _g125226_))
                ((##fx= _g125225_ 2)
                 (apply (lambda (_%stx122156%_ _%internal-expand?122157%_)
                          (gx#core-expand-export%__%
                           _%stx122156%_
                           _%internal-expand?122157%_))
                        _g125226_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g125226_))))))
    (define gx#core-expand-export-source
      (lambda (_%hd121650%_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _%hd121650%_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_%stx121620%_)
        (let* ((_%e121621121628%_ _%stx121620%_)
               (_%E121623121632%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121621121628%_)))
               (_%E121622121646%_
                (lambda ()
                  (if (gx#stx-pair? _%e121621121628%_)
                      (let ((_%e121624121636%_
                             (gx#syntax-e _%e121621121628%_)))
                        (let ((_%hd121625121639%_ (##car _%e121624121636%_))
                              (_%tl121626121641%_ (##cdr _%e121624121636%_)))
                          (let ((_%body121644%_ _%tl121626121641%_))
                            (if (gx#identifier-list? _%body121644%_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _%body121644%_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _%body121644%_))
                                   (gx#stx-source _%stx121620%_)))
                                (_%E121623121632%_)))))
                      (_%E121623121632%_)))))
          (_%E121622121646%_))))
    (define gx#core-bind-feature!__%
      (lambda (_%id121586%_ _%private?121587%_ _%phi121588%_ _%ctx121589%_)
        (gx#core-bind-syntax!__%
         _%id121586%_
         ((if _%private?121587%_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _%id121586%_))
         _%private?121587%_
         _%phi121588%_
         _%ctx121589%_)))
    (define gx#core-bind-feature!__0
      (lambda (_%id121594%_)
        (let* ((_%private?121596%_ '#f)
               (_%phi121598%_ (gx#current-expander-phi))
               (_%ctx121600%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id121594%_
           _%private?121596%_
           _%phi121598%_
           _%ctx121600%_))))
    (define gx#core-bind-feature!__1
      (lambda (_%id121602%_ _%private?121603%_)
        (let* ((_%phi121605%_ (gx#current-expander-phi))
               (_%ctx121607%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id121602%_
           _%private?121603%_
           _%phi121605%_
           _%ctx121607%_))))
    (define gx#core-bind-feature!__2
      (lambda (_%id121609%_ _%private?121610%_ _%phi121611%_)
        (let ((_%ctx121613%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id121609%_
           _%private?121610%_
           _%phi121611%_
           _%ctx121613%_))))
    (define gx#core-bind-feature!
      (lambda _g125228_
        (let ((_g125227_ (##length _g125228_)))
          (cond ((##fx= _g125227_ 1)
                 (apply (lambda (_%id121594%_)
                          (gx#core-bind-feature!__0 _%id121594%_))
                        _g125228_))
                ((##fx= _g125227_ 2)
                 (apply (lambda (_%id121602%_ _%private?121603%_)
                          (gx#core-bind-feature!__1
                           _%id121602%_
                           _%private?121603%_))
                        _g125228_))
                ((##fx= _g125227_ 3)
                 (apply (lambda (_%id121609%_ _%private?121610%_ _%phi121611%_)
                          (gx#core-bind-feature!__2
                           _%id121609%_
                           _%private?121610%_
                           _%phi121611%_))
                        _g125228_))
                ((##fx= _g125227_ 4)
                 (apply (lambda (_%id121615%_
                                 _%private?121616%_
                                 _%phi121617%_
                                 _%ctx121618%_)
                          (gx#core-bind-feature!__%
                           _%id121615%_
                           _%private?121616%_
                           _%phi121617%_
                           _%ctx121618%_))
                        _g125228_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g125228_))))))))
