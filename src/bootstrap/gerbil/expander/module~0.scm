(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1712084085)
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
      (lambda _%$args125006%_
        (apply make-instance gx#module-import::t _%$args125006%_)))
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
      (lambda _%$args125003%_
        (apply make-instance gx#module-export::t _%$args125003%_)))
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
      (lambda _%$args125000%_
        (apply make-instance gx#import-set::t _%$args125000%_)))
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
      (lambda _%$args124997%_
        (apply make-instance gx#export-set::t _%$args124997%_)))
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
      (lambda _%$args124994%_
        (apply make-instance gx#import-expander::t _%$args124994%_)))
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
      (lambda _%$args124991%_
        (apply make-instance gx#export-expander::t _%$args124991%_)))
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
      (lambda _%$args124988%_
        (apply make-instance gx#import-export-expander::t _%$args124988%_)))
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
      (lambda (_%path124985%_ _%fun124986%_)
        (call-with-input-file
         (cons 'path: (cons _%path124985%_ gx#source-file-settings))
         _%fun124986%_)))
    (define gx#module-context:::init!
      (lambda (_%self124968%_
               _%id124969%_
               _%super124970%_
               _%ns124971%_
               _%path124972%_)
        (let ()
          (let ((_%self124975%_ _%self124968%_))
            (let ()
              (if (##fx< '11 (##structure-length _%self124975%_))
                  (begin
                    (##unchecked-structure-set!
                     _%self124975%_
                     _%id124969%_
                     '1
                     '#f
                     '#f)
                    (##unchecked-structure-set!
                     _%self124975%_
                     (make-hash-table-eq)
                     '2
                     '#f
                     '#f)
                    (##unchecked-structure-set!
                     _%self124975%_
                     _%super124970%_
                     '3
                     '#f
                     '#f)
                    (##unchecked-structure-set! _%self124975%_ '#f '4 '#f '#f)
                    (##unchecked-structure-set! _%self124975%_ '#f '5 '#f '#f)
                    (##unchecked-structure-set!
                     _%self124975%_
                     _%ns124971%_
                     '6
                     '#f
                     '#f)
                    (##unchecked-structure-set!
                     _%self124975%_
                     _%path124972%_
                     '7
                     '#f
                     '#f)
                    (##unchecked-structure-set! _%self124975%_ '() '8 '#f '#f)
                    (##unchecked-structure-set! _%self124975%_ '() '9 '#f '#f)
                    (##unchecked-structure-set! _%self124975%_ '#f '10 '#f '#f)
                    (##unchecked-structure-set! _%self124975%_ '#f '11 '#f '#f)
                    '#!void)
                  (error '"struct-instance-init!: too many arguments for struct"
                         _%self124975%_
                         '11
                         (##vector-length _%self124975%_))))))))
    (__bind-method! gx#module-context::t ':init! gx#module-context:::init! '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_%self124801%_ _%ctx124802%_ _%root124803%_)
        (let ()
          (let ((_%self124806%_ _%self124801%_))
            (let ()
              (let ((_%super124822%_
                     (let ((_%$e124816%_ _%root124803%_))
                       (if _%$e124816%_
                           _%$e124816%_
                           (let ((_%$e124819%_ (gx#core-context-root__0)))
                             (if _%$e124819%_
                                 _%$e124819%_
                                 (let ((__obj125050
                                        (##structure
                                         gx#root-context::t
                                         '#f
                                         '#f)))
                                   (let ((__constructor125051
                                          (direct-method-ref
                                           gx#root-context::t
                                           __obj125050
                                           ':init!)))
                                     (if __constructor125051
                                         (__constructor125051 __obj125050)
                                         (error '"missing constructor method implementation"
                                                'class:
                                                gx#root-context::t
                                                'method:
                                                ':init!)))
                                   __obj125050)))))))
                (if _%ctx124802%_
                    (let ((_%id124825%_
                           (##structure-ref
                            _%ctx124802%_
                            '1
                            gx#expander-context::t
                            '#f))
                          (_%path124826%_
                           (##structure-ref
                            _%ctx124802%_
                            '7
                            gx#module-context::t
                            '#f))
                          (_%in124827%_
                           (map gx#core-module-export->import
                                (##structure-ref
                                 _%ctx124802%_
                                 '9
                                 gx#module-context::t
                                 '#f)))
                          (_%e124828%_
                           (__make-promise
                            (lambda () (gx#eval-module _%ctx124802%_)))))
                      (if (##fx< '8 (##structure-length _%self124806%_))
                          (begin
                            (##unchecked-structure-set!
                             _%self124806%_
                             _%id124825%_
                             '1
                             '#f
                             '#f)
                            (##unchecked-structure-set!
                             _%self124806%_
                             (make-hash-table-eq
                              'size:
                              (##length _%in124827%_))
                             '2
                             '#f
                             '#f)
                            (##unchecked-structure-set!
                             _%self124806%_
                             _%super124822%_
                             '3
                             '#f
                             '#f)
                            (##unchecked-structure-set!
                             _%self124806%_
                             '#f
                             '4
                             '#f
                             '#f)
                            (##unchecked-structure-set!
                             _%self124806%_
                             '#f
                             '5
                             '#f
                             '#f)
                            (##unchecked-structure-set!
                             _%self124806%_
                             _%path124826%_
                             '6
                             '#f
                             '#f)
                            (##unchecked-structure-set!
                             _%self124806%_
                             _%in124827%_
                             '7
                             '#f
                             '#f)
                            (##unchecked-structure-set!
                             _%self124806%_
                             _%e124828%_
                             '8
                             '#f
                             '#f)
                            '#!void)
                          (error '"struct-instance-init!: too many arguments for struct"
                                 _%self124806%_
                                 '8
                                 (##vector-length _%self124806%_)))
                      (##for-each
                       (lambda (_%g124829124831%_)
                         (gx#core-bind-weak-import!__%
                          _%g124829124831%_
                          _%self124806%_))
                       _%in124827%_))
                    (if (##fx< '8 (##structure-length _%self124806%_))
                        (begin
                          (##unchecked-structure-set!
                           _%self124806%_
                           '#f
                           '1
                           '#f
                           '#f)
                          (##unchecked-structure-set!
                           _%self124806%_
                           (make-hash-table-eq)
                           '2
                           '#f
                           '#f)
                          (##unchecked-structure-set!
                           _%self124806%_
                           _%super124822%_
                           '3
                           '#f
                           '#f)
                          (##unchecked-structure-set!
                           _%self124806%_
                           '#f
                           '4
                           '#f
                           '#f)
                          (##unchecked-structure-set!
                           _%self124806%_
                           '#f
                           '5
                           '#f
                           '#f)
                          (##unchecked-structure-set!
                           _%self124806%_
                           '#f
                           '6
                           '#f
                           '#f)
                          (##unchecked-structure-set!
                           _%self124806%_
                           '()
                           '7
                           '#f
                           '#f)
                          (##unchecked-structure-set!
                           _%self124806%_
                           '#f
                           '8
                           '#f
                           '#f)
                          '#!void)
                        (error '"struct-instance-init!: too many arguments for struct"
                               _%self124806%_
                               '8
                               (##vector-length _%self124806%_))))))))))
    (define gx#prelude-context:::init!__0
      (lambda (_%self124837%_ _%ctx124838%_)
        (let ((_%root124840%_ '#f))
          (gx#prelude-context:::init!__%
           _%self124837%_
           _%ctx124838%_
           _%root124840%_))))
    (define gx#prelude-context:::init!
      (lambda _g125057_
        (let ((_g125056_ (##length _g125057_)))
          (cond ((##fx= _g125056_ 2)
                 (apply (lambda (_%self124837%_ _%ctx124838%_)
                          (gx#prelude-context:::init!__0
                           _%self124837%_
                           _%ctx124838%_))
                        _g125057_))
                ((##fx= _g125056_ 3)
                 (apply (lambda (_%self124842%_ _%ctx124843%_ _%root124844%_)
                          (gx#prelude-context:::init!__%
                           _%self124842%_
                           _%ctx124843%_
                           _%root124844%_))
                        _g125057_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g125057_))))))
    (__bind-method!
     gx#prelude-context::t
     ':init!
     gx#prelude-context:::init!
     '#f)
    (define gx#import-export-expander-init!
      (lambda (_%self124675%_ _%e124676%_)
        (if (##fx< '3 (##structure-length _%self124675%_))
            (begin
              (##unchecked-structure-set!
               _%self124675%_
               _%e124676%_
               '1
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self124675%_
               (gx#current-expander-context)
               '2
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self124675%_
               (##fx- (gx#current-expander-phi) '1)
               '3
               '#f
               '#f)
              '#!void)
            (error '"struct-instance-init!: too many arguments for struct"
                   _%self124675%_
                   '3
                   (##vector-length _%self124675%_)))))
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
      (lambda (_%g124301124304%_ _%g124302124306%_)
        (gx#core-apply-user-expander__%
         _%g124301124304%_
         _%g124302124306%_
         'apply-import-expander)))
    (__bind-method!
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_%g124172124175%_ _%g124173124177%_)
        (gx#core-apply-user-expander__%
         _%g124172124175%_
         _%g124173124177%_
         'apply-export-expander)))
    (__bind-method!
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_%ctx124043%_)
        (let* ((_%path124045%_
                (##structure-ref _%ctx124043%_ '7 gx#module-context::t '#f))
               (_%path124047%_
                (if (pair? _%path124045%_)
                    (last _%path124045%_)
                    _%path124045%_)))
          (if (string? _%path124047%_) _%path124047%_ '#f))))
    (define gx#import-module__%
      (lambda (_%path124019%_ _%reload?124020%_ _%eval?124021%_)
        (let ((_%ctx124023%_
               ((gx#current-expander-module-import)
                _%path124019%_
                _%reload?124020%_)))
          (if (and _%ctx124023%_ _%eval?124021%_)
              (gx#eval-module _%ctx124023%_)
              '#!void)
          _%ctx124023%_)))
    (define gx#import-module__0
      (lambda (_%path124028%_)
        (let* ((_%reload?124030%_ '#f) (_%eval?124032%_ '#f))
          (gx#import-module__%
           _%path124028%_
           _%reload?124030%_
           _%eval?124032%_))))
    (define gx#import-module__1
      (lambda (_%path124034%_ _%reload?124035%_)
        (let ((_%eval?124037%_ '#f))
          (gx#import-module__%
           _%path124034%_
           _%reload?124035%_
           _%eval?124037%_))))
    (define gx#import-module
      (lambda _g125059_
        (let ((_g125058_ (##length _g125059_)))
          (cond ((##fx= _g125058_ 1)
                 (apply (lambda (_%path124028%_)
                          (gx#import-module__0 _%path124028%_))
                        _g125059_))
                ((##fx= _g125058_ 2)
                 (apply (lambda (_%path124034%_ _%reload?124035%_)
                          (gx#import-module__1
                           _%path124034%_
                           _%reload?124035%_))
                        _g125059_))
                ((##fx= _g125058_ 3)
                 (apply (lambda (_%path124039%_
                                 _%reload?124040%_
                                 _%eval?124041%_)
                          (gx#import-module__%
                           _%path124039%_
                           _%reload?124040%_
                           _%eval?124041%_))
                        _g125059_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g125059_))))))
    (define gx#eval-module
      (lambda (_%mod124016%_)
        ((gx#current-expander-module-eval) _%mod124016%_)))
    (define gx#core-eval-module
      (lambda (_%obj123996%_)
        (letrec ((_%force-e123998%_
                  (lambda (_%getf124012%_ _%e124013%_)
                    (__call-with-parameters
                     (lambda () (force (_%getf124012%_ _%e124013%_)))
                     gx#current-expander-context
                     _%e124013%_
                     gx#current-expander-phi
                     '0))))
          (let _%recur124000%_ ((_%e124002%_ _%obj123996%_))
            (if (##structure-instance-of? _%e124002%_ 'gx#module-context::t)
                (let ()
                  (let ((_%$e124005%_
                         (gx#core-context-prelude__% _%e124002%_)))
                    (if _%$e124005%_ (_%recur124000%_ _%$e124005%_) '#!void))
                  (_%force-e123998%_ gx#module-context-e _%e124002%_))
                (if (##structure-instance-of?
                     _%e124002%_
                     'gx#prelude-context::t)
                    (let ()
                      (_%force-e123998%_ gx#prelude-context-e _%e124002%_))
                    (if (gx#stx-string? _%e124002%_)
                        (let ()
                          (_%recur124000%_
                           (gx#import-module__0
                            (gx#core-resolve-module-path__0 _%e124002%_))))
                        (if (gx#core-library-module-path? _%e124002%_)
                            (let ()
                              (_%recur124000%_
                               (gx#import-module__0
                                (gx#core-resolve-library-module-path
                                 _%e124002%_))))
                            (let ()
                              (error '"Cannot eval module"
                                     _%obj123996%_))))))))))
    (define gx#core-context-prelude__%
      (lambda (_%ctx123976%_)
        (let _%lp123978%_ ((_%e123980%_ _%ctx123976%_))
          (if (or (##structure-instance-of? _%e123980%_ 'gx#module-context::t)
                  (##structure-instance-of? _%e123980%_ 'gx#local-context::t))
              (let ()
                (_%lp123978%_
                 (##unchecked-structure-ref _%e123980%_ '3 '#f '#f)))
              (if (##structure-instance-of? _%e123980%_ 'gx#prelude-context::t)
                  (let () _%e123980%_)
                  (let () '#f))))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_%ctx123992%_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _%ctx123992%_))))
    (define gx#core-context-prelude
      (lambda _g125061_
        (let ((_g125060_ (##length _g125061_)))
          (cond ((##fx= _g125060_ 0)
                 (apply (lambda () (gx#core-context-prelude__0)) _g125061_))
                ((##fx= _g125060_ 1)
                 (apply (lambda (_%ctx123994%_)
                          (gx#core-context-prelude__% _%ctx123994%_))
                        _g125061_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g125061_))))))
    (define gx#core-module->prelude-context
      (lambda (_%ctx123967%_)
        (let ((_%$e123969%_ (hash-get gx#__module-registry _%ctx123967%_)))
          (if _%$e123969%_
              _%$e123969%_
              (let ()
                (let ((_%pre123973%_
                       (let ((__obj125052
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
                         (gx#prelude-context:::init! __obj125052 _%ctx123967%_)
                         __obj125052)))
                  (hash-put! gx#__module-registry _%ctx123967%_ _%pre123973%_)
                  _%pre123973%_))))))
    (define gx#core-import-module__%
      (lambda (_%rpath123839%_ _%reload?123840%_)
        (letrec ((_%import-source123842%_
                  (lambda (_%path123931%_)
                    (if (member _%path123931%_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _%path123931%_)
                        '#!void)
                    (__call-with-parameters
                     (lambda ()
                       (let ((_g125062_ (gx#core-read-module _%path123931%_)))
                         (begin
                           (let ((_g125063_
                                  (if (##values? _g125062_)
                                      (##vector-length _g125062_)
                                      1)))
                             (if (not (##fx= _g125063_ 4))
                                 (error "Context expects 4 values" _g125063_)))
                           (let ((_%pre123934%_ (##vector-ref _g125062_ 0))
                                 (_%id123935%_ (##vector-ref _g125062_ 1))
                                 (_%ns123936%_ (##vector-ref _g125062_ 2))
                                 (_%body123937%_ (##vector-ref _g125062_ 3)))
                             (let* ((_%prelude123947%_
                                     (if (##structure-instance-of?
                                          _%pre123934%_
                                          'gx#prelude-context::t)
                                         (let () _%pre123934%_)
                                         (if (##structure-instance-of?
                                              _%pre123934%_
                                              'gx#module-context::t)
                                             (let ()
                                               (gx#core-module->prelude-context
                                                _%pre123934%_))
                                             (if (string? _%pre123934%_)
                                                 (let ()
                                                   (gx#core-module->prelude-context
                                                    (gx#core-import-module__0
                                                     _%pre123934%_)))
                                                 (if (not _%pre123934%_)
                                                     (let ()
                                                       (let ((_%$e123943%_
                                                              (gx#current-expander-module-prelude)))
                                                         (if _%$e123943%_
                                                             _%$e123943%_
                                                             (let ((__obj125053
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
                       (gx#prelude-context:::init! __obj125053 '#f)
                       __obj125053))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (error '"Cannot import module; unknown prelude"
                                                              _%rpath123839%_
                                                              _%pre123934%_)))))))
                                    (_%ctx123949%_
                                     (let ((__obj125054
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
                                        __obj125054
                                        _%id123935%_
                                        _%prelude123947%_
                                        _%ns123936%_
                                        _%path123931%_)
                                       __obj125054))
                                    (_%body123951%_
                                     (gx#core-expand-module-begin
                                      _%body123937%_
                                      _%ctx123949%_))
                                    (_%body123953%_
                                     (gx#core-quote-syntax__%
                                      (gx#core-cons '%#begin _%body123951%_)
                                      _%path123931%_
                                      _%ctx123949%_
                                      '())))
                               (##unchecked-structure-set!
                                _%ctx123949%_
                                (__make-promise
                                 (lambda () (gx#eval-syntax* _%body123953%_)))
                                '10
                                '#f
                                '#f)
                               (##unchecked-structure-set!
                                _%ctx123949%_
                                _%body123953%_
                                '11
                                '#f
                                '#f)
                               (hash-put!
                                gx#__module-registry
                                _%path123931%_
                                _%ctx123949%_)
                               (hash-put!
                                gx#__module-registry
                                _%id123935%_
                                _%ctx123949%_)
                               _%ctx123949%_)))))
                     gx#current-expander-context
                     (gx#core-context-root__0)
                     gx#current-expander-marks
                     '()
                     gx#current-expander-phi
                     '0
                     gx#current-expander-path
                     (cons _%path123931%_ (gx#current-expander-path))
                     gx#current-import-expander-phi
                     '#f
                     gx#current-export-expander-phi
                     '#f)))
                 (_%import-submodule123843%_
                  (lambda (_%rpath123859%_)
                    (let* ((_%rpath123860123867%_ _%rpath123859%_)
                           (_%E123862123871%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%rpath123860123867%_
                                     '([origin . refs]))
                              '#!void))
                           (_%K123863123919%_
                            (lambda (_%refs123874%_ _%origin123875%_)
                              (let ((_%ctx123877%_
                                     (if _%origin123875%_
                                         (gx#core-import-module__%
                                          _%origin123875%_
                                          _%reload?123840%_)
                                         (gx#current-expander-context))))
                                (let _%lp123879%_ ((_%rest123881%_
                                                    _%refs123874%_)
                                                   (_%ctx123882%_
                                                    _%ctx123877%_))
                                  (let* ((_%rest123883123891%_ _%rest123881%_)
                                         (_%else123885123899%_
                                          (lambda () _%ctx123882%_))
                                         (_%K123887123907%_
                                          (lambda (_%rest123902%_ _%id123903%_)
                                            (let ((_%bind123905%_
                                                   (gx#resolve-identifier__%
                                                    _%id123903%_
                                                    '0
                                                    _%ctx123882%_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _%bind123905%_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _%bind123905%_
                                                         '4
                                                         '#f
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_%lp123879%_
                                                   _%rest123902%_
                                                   (##unchecked-structure-ref
                                                    _%bind123905%_
                                                    '4
                                                    '#f
                                                    '#f))
                                                  (error '"Cannot import submodule; not bound as a module"
                                                         _%rpath123859%_
                                                         _%id123903%_
                                                         _%bind123905%_))))))
                                    (if (##pair? _%rest123883123891%_)
                                        (let ((_%hd123888123910%_
                                               (##car _%rest123883123891%_))
                                              (_%tl123889123912%_
                                               (##cdr _%rest123883123891%_)))
                                          (let* ((_%id123915%_
                                                  _%hd123888123910%_)
                                                 (_%rest123917%_
                                                  _%tl123889123912%_))
                                            (_%K123887123907%_
                                             _%rest123917%_
                                             _%id123915%_)))
                                        (_%else123885123899%_))))))))
                      (if (##pair? _%rpath123860123867%_)
                          (let ((_%hd123864123922%_
                                 (##car _%rpath123860123867%_))
                                (_%tl123865123924%_
                                 (##cdr _%rpath123860123867%_)))
                            (let* ((_%origin123927%_ _%hd123864123922%_)
                                   (_%refs123929%_ _%tl123865123924%_))
                              (_%K123863123919%_
                               _%refs123929%_
                               _%origin123927%_)))
                          (_%E123862123871%_))))))
          (let ((_%$e123845%_
                 (if (not _%reload?123840%_)
                     (hash-get gx#__module-registry _%rpath123839%_)
                     '#f)))
            (if _%$e123845%_
                (values _%$e123845%_)
                (if (list? _%rpath123839%_)
                    (let () (_%import-submodule123843%_ _%rpath123839%_))
                    (if (gx#core-library-module-path? _%rpath123839%_)
                        (let ()
                          (let ((_%ctx123850%_
                                 (gx#core-import-module__%
                                  (gx#core-resolve-library-module-path
                                   _%rpath123839%_)
                                  _%reload?123840%_)))
                            (hash-put!
                             gx#__module-registry
                             _%rpath123839%_
                             _%ctx123850%_)
                            _%ctx123850%_))
                        (let ()
                          (let* ((_%npath123853%_
                                  (path-normalize _%rpath123839%_))
                                 (_%$e123855%_
                                  (if (not _%reload?123840%_)
                                      (hash-get
                                       gx#__module-registry
                                       _%npath123853%_)
                                      '#f)))
                            (if _%$e123855%_
                                _%$e123855%_
                                (let ()
                                  (_%import-source123842%_
                                   _%npath123853%_))))))))))))
    (define gx#core-import-module__0
      (lambda (_%rpath123960%_)
        (let ((_%reload?123962%_ '#f))
          (gx#core-import-module__% _%rpath123960%_ _%reload?123962%_))))
    (define gx#core-import-module
      (lambda _g125065_
        (let ((_g125064_ (##length _g125065_)))
          (cond ((##fx= _g125064_ 1)
                 (apply (lambda (_%rpath123960%_)
                          (gx#core-import-module__0 _%rpath123960%_))
                        _g125065_))
                ((##fx= _g125064_ 2)
                 (apply (lambda (_%rpath123964%_ _%reload?123965%_)
                          (gx#core-import-module__%
                           _%rpath123964%_
                           _%reload?123965%_))
                        _g125065_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g125065_))))))
    (define gx#core-read-module
      (lambda (_%path123828%_)
        (__with-catch
         (lambda (_%exn123830%_)
           (if (and (datum-parsing-exception? _%exn123830%_)
                    (eq? (datum-parsing-exception-filepos _%exn123830%_) '0))
               (gx#core-read-module/lang _%path123828%_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _%path123828%_
                (__call-with-parameters
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_%g123832123834%_)
                      (display-exception _%exn123830%_ _%g123832123834%_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _%path123828%_)))))
    (define gx#core-read-module/sexp
      (lambda (_%path123680%_)
        (let _%lp123682%_ ((_%body123684%_
                            (read-syntax-from-file _%path123680%_))
                           (_%pre123685%_ '#f)
                           (_%ns123686%_ '#f)
                           (_%pkg123687%_ '#f))
          (let* ((_%e123688123712%_ _%body123684%_)
                 (_%E123704123738%_
                  (lambda ()
                    (let ((_g125066_
                           (if _%pkg123687%_
                               (values _%pre123685%_
                                       _%ns123686%_
                                       _%pkg123687%_)
                               (gx#core-read-module-package
                                _%path123680%_
                                _%pre123685%_
                                _%ns123686%_))))
                      (begin
                        (let ((_g125067_
                               (if (##values? _g125066_)
                                   (##vector-length _g125066_)
                                   1)))
                          (if (not (##fx= _g125067_ 3))
                              (error "Context expects 3 values" _g125067_)))
                        (let ((_%pre123716%_ (##vector-ref _g125066_ 0))
                              (_%ns123717%_ (##vector-ref _g125066_ 1))
                              (_%pkg123718%_ (##vector-ref _g125066_ 2)))
                          (let* ((_%prelude123724%_
                                  (if (gx#core-bound-module-prelude?
                                       _%pre123716%_)
                                      (let ()
                                        (gx#syntax-local-e__0 _%pre123716%_))
                                      (if (gx#core-library-module-path?
                                           _%pre123716%_)
                                          (let ()
                                            (gx#core-resolve-library-module-path
                                             _%pre123716%_))
                                          (if (gx#stx-string? _%pre123716%_)
                                              (let ()
                                                (gx#core-resolve-module-path__%
                                                 _%pre123716%_
                                                 _%path123680%_))
                                              (let ()
                                                (gx#stx-e _%pre123716%_))))))
                                 (_%path-id123726%_
                                  (gx#core-module-path->namespace
                                   _%path123680%_))
                                 (_%pkg-id123728%_
                                  (if _%pkg123718%_
                                      (string-append
                                       _%pkg123718%_
                                       '"/"
                                       _%path-id123726%_)
                                      _%path-id123726%_))
                                 (_%module-id123730%_
                                  (string->symbol _%pkg-id123728%_))
                                 (_%module-ns123735%_
                                  (if (eq? _%ns123717%_ '#!void)
                                      '#f
                                      (let ((_%$e123732%_ _%ns123717%_))
                                        (if _%$e123732%_
                                            _%$e123732%_
                                            _%pkg-id123728%_)))))
                            (values _%prelude123724%_
                                    _%module-id123730%_
                                    _%module-ns123735%_
                                    _%body123684%_)))))))
                 (_%E123697123770%_
                  (lambda ()
                    (if (gx#stx-pair? _%e123688123712%_)
                        (let ((_%e123705123742%_
                               (gx#syntax-e _%e123688123712%_)))
                          (let ((_%hd123706123745%_ (##car _%e123705123742%_))
                                (_%tl123707123747%_ (##cdr _%e123705123742%_)))
                            (if (eq? (gx#stx-e _%hd123706123745%_) 'package:)
                                (if (gx#stx-pair? _%tl123707123747%_)
                                    (let ((_%e123708123750%_
                                           (gx#syntax-e _%tl123707123747%_)))
                                      (let ((_%hd123709123753%_
                                             (##car _%e123708123750%_))
                                            (_%tl123710123755%_
                                             (##cdr _%e123708123750%_)))
                                        (let* ((_%pkg123758%_
                                                _%hd123709123753%_)
                                               (_%rest123760%_
                                                _%tl123710123755%_))
                                          (if '#t
                                              (let ((_%pkg123768%_
                                                     (if (gx#identifier?
                                                          _%pkg123758%_)
                                                         (let ()
                                                           (symbol->string
                                                            (gx#stx-e
                                                             _%pkg123758%_)))
                                                         (if (or (gx#stx-string?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%pkg123758%_)
                         (gx#stx-false? _%pkg123758%_))
                     (let () (gx#stx-e _%pkg123758%_))
                     (let ()
                       (gx#raise-syntax-error
                        'import
                        '"Bad syntax; Illegal package name"
                        _%pkg123758%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%lp123682%_
                                                 _%rest123760%_
                                                 _%pre123685%_
                                                 _%ns123686%_
                                                 _%pkg123768%_))
                                              (_%E123704123738%_)))))
                                    (_%E123704123738%_))
                                (_%E123704123738%_))))
                        (_%E123704123738%_))))
                 (_%E123690123800%_
                  (lambda ()
                    (if (gx#stx-pair? _%e123688123712%_)
                        (let ((_%e123698123774%_
                               (gx#syntax-e _%e123688123712%_)))
                          (let ((_%hd123699123777%_ (##car _%e123698123774%_))
                                (_%tl123700123779%_ (##cdr _%e123698123774%_)))
                            (if (eq? (gx#stx-e _%hd123699123777%_) 'namespace:)
                                (if (gx#stx-pair? _%tl123700123779%_)
                                    (let ((_%e123701123782%_
                                           (gx#syntax-e _%tl123700123779%_)))
                                      (let ((_%hd123702123785%_
                                             (##car _%e123701123782%_))
                                            (_%tl123703123787%_
                                             (##cdr _%e123701123782%_)))
                                        (let* ((_%ns123790%_
                                                _%hd123702123785%_)
                                               (_%rest123792%_
                                                _%tl123703123787%_))
                                          (if '#t
                                              (let ((_%ns123798%_
                                                     (if (gx#identifier?
                                                          _%ns123790%_)
                                                         (let ()
                                                           (symbol->string
                                                            (gx#stx-e
                                                             _%ns123790%_)))
                                                         (if (gx#stx-string?
                                                              _%ns123790%_)
                                                             (let ()
                                                               (gx#stx-e
                                                                _%ns123790%_))
                                                             (if (gx#stx-false?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%ns123790%_)
                         (let () '#!void)
                         (let ()
                           (gx#raise-syntax-error
                            'import
                            '"Bad syntax; illegal namespace"
                            _%ns123790%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%lp123682%_
                                                 _%rest123792%_
                                                 _%pre123685%_
                                                 _%ns123798%_
                                                 _%pkg123687%_))
                                              (_%E123697123770%_)))))
                                    (_%E123697123770%_))
                                (_%E123697123770%_))))
                        (_%E123697123770%_))))
                 (_%E123689123824%_
                  (lambda ()
                    (if (gx#stx-pair? _%e123688123712%_)
                        (let ((_%e123691123804%_
                               (gx#syntax-e _%e123688123712%_)))
                          (let ((_%hd123692123807%_ (##car _%e123691123804%_))
                                (_%tl123693123809%_ (##cdr _%e123691123804%_)))
                            (if (eq? (gx#stx-e _%hd123692123807%_) 'prelude:)
                                (if (gx#stx-pair? _%tl123693123809%_)
                                    (let ((_%e123694123812%_
                                           (gx#syntax-e _%tl123693123809%_)))
                                      (let ((_%hd123695123815%_
                                             (##car _%e123694123812%_))
                                            (_%tl123696123817%_
                                             (##cdr _%e123694123812%_)))
                                        (let* ((_%prelude123820%_
                                                _%hd123695123815%_)
                                               (_%rest123822%_
                                                _%tl123696123817%_))
                                          (if '#t
                                              (_%lp123682%_
                                               _%rest123822%_
                                               _%prelude123820%_
                                               _%ns123686%_
                                               _%pkg123687%_)
                                              (_%E123690123800%_)))))
                                    (_%E123690123800%_))
                                (_%E123690123800%_))))
                        (_%E123690123800%_)))))
            (_%E123689123824%_)))))
    (define gx#core-read-module/lang
      (lambda (_%path123502%_)
        (letrec ((_%default-read-module-body123504%_
                  (lambda (_%inp123672%_)
                    (let _%lp123674%_ ((_%body123676%_ '()))
                      (let ((_%next123678%_ (read-syntax__% _%inp123672%_)))
                        (if (eof-object? _%next123678%_)
                            (reverse _%body123676%_)
                            (_%lp123674%_
                             (cons _%next123678%_ _%body123676%_)))))))
                 (_%read-body123505%_
                  (lambda (_%inp123590%_
                           _%pre123591%_
                           _%ns123592%_
                           _%pkg123593%_
                           _%args123594%_)
                    (let ((_g125068_
                           (if _%pkg123593%_
                               (values _%pre123591%_
                                       _%ns123592%_
                                       _%pkg123593%_)
                               (gx#core-read-module-package
                                _%path123502%_
                                _%pre123591%_
                                _%ns123592%_))))
                      (begin
                        (let ((_g125069_
                               (if (##values? _g125068_)
                                   (##vector-length _g125068_)
                                   1)))
                          (if (not (##fx= _g125069_ 3))
                              (error "Context expects 3 values" _g125069_)))
                        (let ((_%pre123596%_ (##vector-ref _g125068_ 0))
                              (_%ns123597%_ (##vector-ref _g125068_ 1))
                              (_%pkg123598%_ (##vector-ref _g125068_ 2)))
                          (let* ((_%prelude123600%_
                                  (gx#import-module__0 _%pre123596%_))
                                 (_%read-module-body123655%_
                                  (let ((_%$e123646%_
                                         (__find (lambda (_%e123601123603%_)
                                                   (let* ((_%g123605123615%_
                                                           _%e123601123603%_)
                                                          (_%else123607123623%_
                                                           (lambda () '#f))
                                                          (_%K123609123627%_
                                                           (lambda () '#t)))
                                                     (if (##structure-direct-instance-of?
                                                          _%g123605123615%_
                                                          'gx#module-export::t)
                                                         (let* ((_%e123610123630%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##unchecked-structure-ref
                          _%g123605123615%_
                          '1
                          '#f
                          '#f))
                        (_%e123611123633%_
                         (##unchecked-structure-ref
                          _%g123605123615%_
                          '2
                          '#f
                          '#f))
                        (_%e123612123636%_
                         (##unchecked-structure-ref
                          _%g123605123615%_
                          '3
                          '#f
                          '#f)))
                   (if (##eq? _%e123612123636%_ '1)
                       (let ((_%e123613123639%_
                              (##unchecked-structure-ref
                               _%g123605123615%_
                               '4
                               '#f
                               '#f)))
                         (if ((lambda (_%g123641123643%_)
                                (eq? _%g123641123643%_ 'read-module-body))
                              _%e123613123639%_)
                             (_%K123609123627%_)
                             (_%else123607123623%_)))
                       (_%else123607123623%_)))
                 (_%else123607123623%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (##unchecked-structure-ref
                                                  _%prelude123600%_
                                                  '9
                                                  '#f
                                                  '#f))))
                                    (if _%$e123646%_
                                        ((lambda (_%xport123649%_)
                                           (let ((_%proc123652%_
                                                  (__with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _%xport123649%_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _%proc123652%_)
                                                 _%proc123652%_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _%path123502%_
                                                  _%pre123596%_
                                                  _%proc123652%_))))
                                         _%$e123646%_)
                                        (let ()
                                          _%default-read-module-body123504%_))))
                                 (_%path-id123657%_
                                  (gx#core-module-path->namespace
                                   _%path123502%_))
                                 (_%pkg-id123659%_
                                  (if _%pkg123598%_
                                      (string-append
                                       _%pkg123598%_
                                       '"/"
                                       _%path-id123657%_)
                                      _%path-id123657%_))
                                 (_%module-id123661%_
                                  (string->symbol _%pkg-id123659%_))
                                 (_%module-ns123666%_
                                  (let ((_%$e123663%_ _%ns123597%_))
                                    (if _%$e123663%_
                                        _%$e123663%_
                                        _%pkg-id123659%_)))
                                 (_%body123669%_
                                  (__call-with-parameters
                                   (lambda ()
                                     (_%read-module-body123655%_
                                      _%inp123590%_))
                                   gx#current-module-reader-path
                                   _%path123502%_
                                   gx#current-module-reader-args
                                   _%args123594%_)))
                            (values _%prelude123600%_
                                    _%module-id123661%_
                                    _%module-ns123666%_
                                    _%body123669%_)))))))
                 (_%string-e123506%_
                  (lambda (_%obj123584%_ _%what123585%_)
                    (if (string? _%obj123584%_)
                        (let () _%obj123584%_)
                        (if (symbol? _%obj123584%_)
                            (let () (symbol->string _%obj123584%_))
                            (let ()
                              (gx#raise-syntax-error
                               '#f
                               (string-append
                                '"Illegal module "
                                _%what123585%_)
                               _%path123502%_
                               _%obj123584%_))))))
                 (_%read-lang-args123507%_
                  (lambda (_%inp123539%_ _%args123540%_)
                    (let* ((_%args123541123549%_ _%args123540%_)
                           (_%else123543123557%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _%path123502%_)))
                           (_%K123545123572%_
                            (lambda (_%args123560%_ _%prelude123561%_)
                              (let* ((_%pkg123563%_
                                      (pgetq__0 'package: _%args123560%_))
                                     (_%pkg123565%_
                                      (if _%pkg123563%_
                                          (_%string-e123506%_
                                           _%pkg123563%_
                                           '"package")
                                          '#f))
                                     (_%ns123567%_
                                      (pgetq__0 'namespace: _%args123560%_))
                                     (_%ns123569%_
                                      (if _%ns123567%_
                                          (_%string-e123506%_
                                           _%ns123567%_
                                           '"namespace")
                                          '#f)))
                                (_%read-body123505%_
                                 _%inp123539%_
                                 _%prelude123561%_
                                 _%ns123569%_
                                 _%pkg123565%_
                                 _%args123560%_)))))
                      (if (##pair? _%args123541123549%_)
                          (let ((_%hd123546123575%_
                                 (##car _%args123541123549%_))
                                (_%tl123547123577%_
                                 (##cdr _%args123541123549%_)))
                            (let* ((_%prelude123580%_ _%hd123546123575%_)
                                   (_%args123582%_ _%tl123547123577%_))
                              (_%K123545123572%_
                               _%args123582%_
                               _%prelude123580%_)))
                          (_%else123543123557%_)))))
                 (_%read-lang123508%_
                  (lambda (_%inp123513%_)
                    (let* ((_%head123515%_ (read-line _%inp123513%_))
                           (_%$e123517%_
                            (string-index__0 _%head123515%_ '#\space)))
                      (if _%$e123517%_
                          ((lambda (_%ix123520%_)
                             (let ((_%lang123522%_
                                    (substring
                                     _%head123515%_
                                     '0
                                     _%ix123520%_)))
                               (if (equal? _%lang123522%_ '"#lang")
                                   (let* ((_%rest123524%_
                                           (substring
                                            _%head123515%_
                                            (##fx+ _%ix123520%_ '1)
                                            (##string-length _%head123515%_)))
                                          (_%args123535%_
                                           (__with-catch
                                            (lambda (_%g123525123527%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _%path123502%_
                                               _%g123525123527%_))
                                            (lambda ()
                                              (call-with-input-string
                                               _%rest123524%_
                                               (lambda (_%g123530123532%_)
                                                 (read-all
                                                  _%g123530123532%_
                                                  read)))))))
                                     (_%read-lang-args123507%_
                                      _%inp123513%_
                                      _%args123535%_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _%path123502%_))))
                           _%$e123517%_)
                          (let ()
                            (gx#raise-syntax-error
                             '#f
                             '"Illegal module syntax"
                             _%path123502%_))))))
                 (_%read-e123509%_
                  (lambda (_%inp123511%_)
                    (if (eq? (peek-char _%inp123511%_) '#\#)
                        (_%read-lang123508%_ _%inp123511%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _%path123502%_)))))
          (gx#call-with-input-source-file _%path123502%_ _%read-e123509%_))))
    (define gx#core-read-module-package
      (lambda (_%path123450%_ _%pre123451%_ _%ns123452%_)
        (letrec ((_%string-e123454%_
                  (lambda (_%e123497%_)
                    (if (symbol? _%e123497%_)
                        (let () (symbol->string _%e123497%_))
                        (if (string? _%e123497%_)
                            (let () _%e123497%_)
                            (let ()
                              (gx#raise-syntax-error
                               '#f
                               '"Malformed package info; unexpected datum"
                               _%e123497%_)))))))
          (let _%lp123456%_ ((_%dir123458%_ (path-directory _%path123450%_))
                             (_%pkg-path123459%_ '()))
            (let ((_%gerbil.pkg123461%_
                   (path-expand '"gerbil.pkg" _%dir123458%_)))
              (if (##file-exists? _%gerbil.pkg123461%_)
                  (let ((_%plist123463%_
                         (gx#core-library-package-plist__% _%dir123458%_ '#t)))
                    (if (null? _%plist123463%_)
                        (let ()
                          (let ((_%pkg123466%_
                                 (if (not (null? _%pkg-path123459%_))
                                     (string-join _%pkg-path123459%_ '"/")
                                     '#f)))
                            (values _%pre123451%_ _%ns123452%_ _%pkg123466%_)))
                        (if (list? _%plist123463%_)
                            (let ()
                              (let* ((_%root123469%_
                                      (pgetq__0 'package: _%plist123463%_))
                                     (_%pkg123473%_
                                      (let ((_%pkg-path123471%_
                                             (if _%root123469%_
                                                 (cons (_%string-e123454%_
                                                        _%root123469%_)
                                                       _%pkg-path123459%_)
                                                 _%pkg-path123459%_)))
                                        (if (not (null? _%pkg-path123471%_))
                                            (string-join
                                             _%pkg-path123471%_
                                             '"/")
                                            '#f)))
                                     (_%ns123480%_
                                      (let ((_%ns123478%_
                                             (let ((_%$e123475%_ _%ns123452%_))
                                               (if _%$e123475%_
                                                   _%$e123475%_
                                                   (pgetq__0
                                                    'namespace:
                                                    _%plist123463%_)))))
                                        (if _%ns123478%_
                                            (_%string-e123454%_ _%ns123478%_)
                                            '#f)))
                                     (_%pre123485%_
                                      (let ((_%$e123482%_ _%pre123451%_))
                                        (if _%$e123482%_
                                            _%$e123482%_
                                            (pgetq__0
                                             'prelude:
                                             _%plist123463%_)))))
                                (values _%pre123485%_
                                        _%ns123480%_
                                        _%pkg123473%_)))
                            (let ()
                              (gx#raise-syntax-error
                               '#f
                               '"Malformed package info; unexpected datum"
                               _%plist123463%_)))))
                  (let ((_%dir*123489%_
                         (path-strip-trailing-directory-separator
                          _%dir123458%_)))
                    (if (or (__string-empty? _%dir*123489%_)
                            (equal? _%dir123458%_ _%dir*123489%_))
                        (values _%pre123451%_ _%ns123452%_ '#f)
                        (let ((_%xpath123494%_
                               (path-strip-directory _%dir*123489%_))
                              (_%xdir123495%_ (path-directory _%dir*123489%_)))
                          (_%lp123456%_
                           _%xdir123495%_
                           (cons _%xpath123494%_ _%pkg-path123459%_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_%path123448%_)
        (path-strip-extension (path-strip-directory _%path123448%_))))
    (define gx#core-module-path->id
      (lambda (_%path123446%_)
        (##string->symbol (gx#core-module-path->namespace _%path123446%_))))
    (define gx#core-resolve-module-path__%
      (lambda (_%stx-path123425%_ _%rel123426%_)
        (let* ((_%path123428%_ (gx#stx-e _%stx-path123425%_))
               (_%path123430%_
                (if (__string-empty? (path-extension _%path123428%_))
                    (##string-append _%path123428%_ '".ss")
                    _%path123428%_)))
          (gx#core-resolve-path__%
           _%path123430%_
           (let ((_%$e123433%_ (gx#stx-source _%stx-path123425%_)))
             (if _%$e123433%_ _%$e123433%_ _%rel123426%_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_%stx-path123439%_)
        (let ((_%rel123441%_ '#f))
          (gx#core-resolve-module-path__% _%stx-path123439%_ _%rel123441%_))))
    (define gx#core-resolve-module-path
      (lambda _g125071_
        (let ((_g125070_ (##length _g125071_)))
          (cond ((##fx= _g125070_ 1)
                 (apply (lambda (_%stx-path123439%_)
                          (gx#core-resolve-module-path__0 _%stx-path123439%_))
                        _g125071_))
                ((##fx= _g125070_ 2)
                 (apply (lambda (_%stx-path123443%_ _%rel123444%_)
                          (gx#core-resolve-module-path__%
                           _%stx-path123443%_
                           _%rel123444%_))
                        _g125071_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g125071_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_%libpath123310%_)
        (let* ((_%spath123312%_ (symbol->string (gx#stx-e _%libpath123310%_)))
               (_%spath123314%_
                (substring
                 _%spath123312%_
                 '1
                 (##string-length _%spath123312%_)))
               (_%ext123316%_ (path-extension _%spath123314%_))
               (_%ssi123318%_
                (if (__string-empty? _%ext123316%_)
                    (##string-append _%spath123314%_ '".ssi")
                    (##string-append
                     (path-strip-extension _%spath123314%_)
                     '".ssi")))
               (_%srcs123322%_
                (if (__string-empty? _%ext123316%_)
                    (##map (lambda (_%ext123320%_)
                             (string-append _%spath123314%_ _%ext123320%_))
                           '(".ss" ".sld" ".scm"))
                    (cons _%spath123314%_ '()))))
          (let _%lp123325%_ ((_%rest123327%_ (load-path)))
            (let* ((_%rest123328123337%_ _%rest123327%_)
                   (_%E123331123341%_
                    (lambda ()
                      (error '"No clause matching"
                             _%rest123328123337%_
                             '([dir . rest])
                             '([]))
                      '#!void)))
              (let ((_%K123333123412%_
                     (lambda (_%rest123352%_ _%dir123353%_)
                       (letrec ((_%resolve123355%_
                                 (lambda (_%ssi123368%_ _%srcs123369%_)
                                   (let ((_%compiled-path123371%_
                                          (path-expand
                                           _%ssi123368%_
                                           _%dir123353%_)))
                                     (if (##file-exists?
                                          _%compiled-path123371%_)
                                         (path-normalize
                                          _%compiled-path123371%_)
                                         (let _%lpr123373%_ ((_%rest-src123375%_
                                                              _%srcs123369%_))
                                           (let* ((_%rest-src123376123384%_
                                                   _%rest-src123375%_)
                                                  (_%else123378123392%_
                                                   (lambda ()
                                                     (_%lp123325%_
                                                      _%rest123352%_)))
                                                  (_%K123380123400%_
                                                   (lambda (_%rest-src123395%_
                                                            _%src123396%_)
                                                     (let ((_%src-path123398%_
                                                            (path-expand
                                                             _%src123396%_
                                                             _%dir123353%_)))
                                                       (if (##file-exists?
                                                            _%src-path123398%_)
                                                           (path-normalize
                                                            _%src-path123398%_)
                                                           (_%lpr123373%_
                                                            _%rest-src123395%_))))))
                                             (if (##pair? _%rest-src123376123384%_)
                                                 (let ((_%hd123381123403%_
                                                        (##car _%rest-src123376123384%_))
                                                       (_%tl123382123405%_
                                                        (##cdr _%rest-src123376123384%_)))
                                                   (let* ((_%src123408%_
                                                           _%hd123381123403%_)
                                                          (_%rest-src123410%_
                                                           _%tl123382123405%_))
                                                     (_%K123380123400%_
                                                      _%rest-src123410%_
                                                      _%src123408%_)))
                                                 (_%else123378123392%_)))))))))
                         (let ((_%$e123357%_
                                (gx#core-library-package-path-prefix
                                 _%dir123353%_)))
                           (if _%$e123357%_
                               ((lambda (_%prefix123360%_)
                                  (if (string-prefix?
                                       _%prefix123360%_
                                       _%spath123314%_)
                                      (let ((_%ssi123364%_
                                             (substring
                                              _%ssi123318%_
                                              (string-length _%prefix123360%_)
                                              (##string-length _%ssi123318%_)))
                                            (_%srcs123365%_
                                             (##map (lambda (_%src123362%_)
                                                      (substring
                                                       _%src123362%_
                                                       (string-length
                                                        _%prefix123360%_)
                                                       (string-length
                                                        _%src123362%_)))
                                                    _%srcs123322%_)))
                                        (_%resolve123355%_
                                         _%ssi123364%_
                                         _%srcs123365%_))
                                      (_%lp123325%_ _%rest123352%_)))
                                _%$e123357%_)
                               (let ()
                                 (_%resolve123355%_
                                  _%ssi123318%_
                                  _%srcs123322%_)))))))
                    (_%K123332123346%_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"Cannot find library module"
                        _%libpath123310%_))))
                (let ((_%try-match123330123349%_
                       (lambda ()
                         (if (##null? _%rest123328123337%_)
                             (_%K123332123346%_)
                             (_%E123331123341%_)))))
                  (if (##pair? _%rest123328123337%_)
                      (let ((_%tl123335123417%_ (##cdr _%rest123328123337%_))
                            (_%hd123334123415%_ (##car _%rest123328123337%_)))
                        (let ((_%dir123420%_ _%hd123334123415%_)
                              (_%rest123422%_ _%tl123335123417%_))
                          (_%K123333123412%_ _%rest123422%_ _%dir123420%_)))
                      (_%try-match123330123349%_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_%modpath123278%_)
        (letrec ((_%resolve123280%_
                  (lambda (_%path123301%_ _%base123302%_)
                    (let ((_%$e123304%_
                           (string-rindex__0 _%base123302%_ '#\/)))
                      (if _%$e123304%_
                          ((lambda (_%idx123307%_)
                             (gx#core-resolve-library-module-path
                              (##string->symbol
                               (string-append
                                '":"
                                (substring _%base123302%_ '0 _%idx123307%_)
                                '"/"
                                _%path123301%_))))
                           _%$e123304%_)
                          (let ()
                            (gx#core-resolve-library-module-path
                             (##string->symbol
                              (string-append '":" _%path123301%_)))))))))
          (let ((_%spath123282%_ (symbol->string (gx#stx-e _%modpath123278%_)))
                (_%mod123283%_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _%mod123283%_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"Cannot resolve relative module path; not in module context"
                 _%modpath123278%_))
            (let ((_%mpath123285%_
                   (symbol->string
                    (##structure-ref
                     _%mod123283%_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _%lp123287%_ ((_%spath123289%_ _%spath123282%_)
                                 (_%mpath123290%_ _%mpath123285%_))
                (if (string-prefix? '"../" _%spath123289%_)
                    (let ()
                      (let ((_%$e123293%_
                             (string-rindex__0 _%mpath123290%_ '#\/)))
                        (if _%$e123293%_
                            ((lambda (_%idx123296%_)
                               (_%lp123287%_
                                (substring
                                 _%spath123289%_
                                 '3
                                 (string-length _%spath123289%_))
                                (substring _%mpath123290%_ '0 _%idx123296%_)))
                             _%$e123293%_)
                            (let ()
                              (gx#raise-syntax-error
                               '#f
                               '"Cannot resolve relative module path; illegal traversal"
                               _%modpath123278%_)))))
                    (if (string-prefix? '"./" _%spath123289%_)
                        (let ()
                          (_%lp123287%_
                           (substring
                            _%spath123289%_
                            '2
                            (string-length _%spath123289%_))
                           _%mpath123290%_))
                        (let ()
                          (_%resolve123280%_
                           _%spath123289%_
                           _%mpath123290%_))))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_%dir123270%_)
        (let ((_%$e123272%_
               (pgetq__0
                'package:
                (gx#core-library-package-plist__0 _%dir123270%_))))
          (if _%$e123272%_
              ((lambda (_%pkg123275%_)
                 (##string-append (symbol->string _%pkg123275%_) '"/"))
               _%$e123272%_)
              (let () '#f)))))
    (define gx#core-library-package-plist__%
      (lambda (_%dir123240%_ _%exists?123241%_)
        (let ((_%$e123243%_ (hash-get gx#__module-pkg-cache _%dir123240%_)))
          (if _%$e123243%_
              (values _%$e123243%_)
              (let ()
                (let* ((_%gerbil.pkg123247%_
                        (path-expand '"gerbil.pkg" _%dir123240%_))
                       (_%plist123257%_
                        (if (or _%exists?123241%_
                                (##file-exists? _%gerbil.pkg123247%_))
                            (let ((_%e123252%_
                                   (gx#call-with-input-source-file
                                    _%gerbil.pkg123247%_
                                    read)))
                              (if (eof-object? _%e123252%_)
                                  (let () '())
                                  (if (list? _%e123252%_)
                                      (let () _%e123252%_)
                                      (let ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Malformed package info; unexpected datum"
                                         _%gerbil.pkg123247%_
                                         _%e123252%_)))))
                            '())))
                  (hash-put!
                   gx#__module-pkg-cache
                   _%dir123240%_
                   _%plist123257%_)
                  _%plist123257%_))))))
    (define gx#core-library-package-plist__0
      (lambda (_%dir123263%_)
        (let ((_%exists?123265%_ '#f))
          (gx#core-library-package-plist__% _%dir123263%_ _%exists?123265%_))))
    (define gx#core-library-package-plist
      (lambda _g125073_
        (let ((_g125072_ (##length _g125073_)))
          (cond ((##fx= _g125072_ 1)
                 (apply (lambda (_%dir123263%_)
                          (gx#core-library-package-plist__0 _%dir123263%_))
                        _g125073_))
                ((##fx= _g125072_ 2)
                 (apply (lambda (_%dir123267%_ _%exists?123268%_)
                          (gx#core-library-package-plist__%
                           _%dir123267%_
                           _%exists?123268%_))
                        _g125073_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g125073_))))))
    (define gx#core-library-module-path?
      (lambda (_%stx123237%_)
        (gx#core-special-module-path? _%stx123237%_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_%stx123235%_)
        (gx#core-special-module-path? _%stx123235%_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_%stx123230%_ _%char123231%_)
        (if (gx#identifier? _%stx123230%_)
            (if (interned-symbol? (gx#stx-e _%stx123230%_))
                (let ((_%str123233%_
                       (symbol->string (gx#stx-e _%stx123230%_))))
                  (if (##fx> (##string-length _%str123233%_) '1)
                      (eq? (string-ref _%str123233%_ '0) _%char123231%_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_%stx123224%_)
        (gx#core-bound-identifier?__%
         _%stx123224%_
         (lambda (_%g123225123227%_)
           (gx#expander-binding?__% _%g123225123227%_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_%stx123218%_)
        (gx#core-bound-identifier?__%
         _%stx123218%_
         (lambda (_%g123219123221%_)
           (gx#expander-binding?__% _%g123219123221%_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_%stx123205%_)
        (letrec ((_%module-prelude?123207%_
                  (lambda (_%e123213%_)
                    (let ((_%$e123215%_
                           (##structure-instance-of?
                            _%e123213%_
                            'gx#module-context::t)))
                      (if _%$e123215%_
                          _%$e123215%_
                          (##structure-instance-of?
                           _%e123213%_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _%stx123205%_
           (lambda (_%g123208123210%_)
             (gx#expander-binding?__%
              _%g123208123210%_
              _%module-prelude?123207%_))))))
    (define gx#core-bind-import!__%
      (lambda (_%in123135%_ _%ctx123136%_ _%force-weak?123137%_)
        (let* ((_%in123138123147%_ _%in123135%_)
               (_%E123140123151%_
                (lambda ()
                  (error '"No clause matching"
                         _%in123138123147%_
                         '((module-import source key phi weak?)))
                  '#!void))
               (_%K123141123164%_
                (lambda (_%weak?123154%_
                         _%phi123155%_
                         _%key123156%_
                         _%source123157%_)
                  (gx#core-bind!__%
                   _%key123156%_
                   (let ((_%e123159%_
                          (gx#core-resolve-module-export _%source123157%_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref _%e123159%_ '1 '#f '#f)
                      _%key123156%_
                      _%phi123155%_
                      _%e123159%_
                      (##unchecked-structure-ref _%source123157%_ '1 '#f '#f)
                      (let ((_%$e123161%_ _%force-weak?123137%_))
                        (if _%$e123161%_ _%$e123161%_ _%weak?123154%_))))
                   gx#core-context-rebind?
                   _%phi123155%_
                   _%ctx123136%_))))
          (if (##structure-direct-instance-of?
               _%in123138123147%_
               'gx#module-import::t)
              (let* ((_%e123142123167%_
                      (##unchecked-structure-ref
                       _%in123138123147%_
                       '1
                       '#f
                       '#f))
                     (_%source123170%_ _%e123142123167%_)
                     (_%e123143123172%_
                      (##unchecked-structure-ref
                       _%in123138123147%_
                       '2
                       '#f
                       '#f))
                     (_%key123175%_ _%e123143123172%_)
                     (_%e123144123177%_
                      (##unchecked-structure-ref
                       _%in123138123147%_
                       '3
                       '#f
                       '#f))
                     (_%phi123180%_ _%e123144123177%_)
                     (_%e123145123182%_
                      (##unchecked-structure-ref
                       _%in123138123147%_
                       '4
                       '#f
                       '#f))
                     (_%weak?123185%_ _%e123145123182%_))
                (_%K123141123164%_
                 _%weak?123185%_
                 _%phi123180%_
                 _%key123175%_
                 _%source123170%_))
              (_%E123140123151%_)))))
    (define gx#core-bind-import!__0
      (lambda (_%in123190%_)
        (let* ((_%ctx123192%_ (gx#current-expander-context))
               (_%force-weak?123194%_ '#f))
          (gx#core-bind-import!__%
           _%in123190%_
           _%ctx123192%_
           _%force-weak?123194%_))))
    (define gx#core-bind-import!__1
      (lambda (_%in123196%_ _%ctx123197%_)
        (let ((_%force-weak?123199%_ '#f))
          (gx#core-bind-import!__%
           _%in123196%_
           _%ctx123197%_
           _%force-weak?123199%_))))
    (define gx#core-bind-import!
      (lambda _g125075_
        (let ((_g125074_ (##length _g125075_)))
          (cond ((##fx= _g125074_ 1)
                 (apply (lambda (_%in123190%_)
                          (gx#core-bind-import!__0 _%in123190%_))
                        _g125075_))
                ((##fx= _g125074_ 2)
                 (apply (lambda (_%in123196%_ _%ctx123197%_)
                          (gx#core-bind-import!__1 _%in123196%_ _%ctx123197%_))
                        _g125075_))
                ((##fx= _g125074_ 3)
                 (apply (lambda (_%in123201%_
                                 _%ctx123202%_
                                 _%force-weak?123203%_)
                          (gx#core-bind-import!__%
                           _%in123201%_
                           _%ctx123202%_
                           _%force-weak?123203%_))
                        _g125075_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g125075_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_%in123121%_ _%ctx123122%_)
        (gx#core-bind-import!__% _%in123121%_ _%ctx123122%_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_%in123127%_)
        (let ((_%ctx123129%_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _%in123127%_ _%ctx123129%_))))
    (define gx#core-bind-weak-import!
      (lambda _g125077_
        (let ((_g125076_ (##length _g125077_)))
          (cond ((##fx= _g125076_ 1)
                 (apply (lambda (_%in123127%_)
                          (gx#core-bind-weak-import!__0 _%in123127%_))
                        _g125077_))
                ((##fx= _g125076_ 2)
                 (apply (lambda (_%in123131%_ _%ctx123132%_)
                          (gx#core-bind-weak-import!__%
                           _%in123131%_
                           _%ctx123132%_))
                        _g125077_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g125077_))))))
    (define gx#core-resolve-module-export
      (lambda (_%out123012%_)
        (letrec ((_%subst123014%_
                  (lambda (_%key123060%_)
                    (let* ((_%key123061123069%_ _%key123060%_)
                           (_%else123063123077%_ (lambda () _%key123060%_))
                           (_%K123065123108%_
                            (lambda (_%mark123080%_ _%id123081%_)
                              (let* ((_%mark123082123088%_ _%mark123080%_)
                                     (_%E123084123092%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark123082123088%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K123085123100%_
                                      (lambda (_%subst123095%_)
                                        (let ((_%$e123097%_
                                               (if _%subst123095%_
                                                   (hash-get
                                                    _%subst123095%_
                                                    _%id123081%_)
                                                   '#f)))
                                          (if _%$e123097%_
                                              _%$e123097%_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _%key123060%_))))))
                                (if (##structure-instance-of?
                                     _%mark123082123088%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e123086123103%_
                                            (##unchecked-structure-ref
                                             _%mark123082123088%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst123106%_ _%e123086123103%_))
                                      (_%K123085123100%_ _%subst123106%_))
                                    (_%E123084123092%_))))))
                      (if (##pair? _%key123061123069%_)
                          (let ((_%hd123066123111%_
                                 (##car _%key123061123069%_))
                                (_%tl123067123113%_
                                 (##cdr _%key123061123069%_)))
                            (let* ((_%id123116%_ _%hd123066123111%_)
                                   (_%mark123118%_ _%tl123067123113%_))
                              (_%K123065123108%_ _%mark123118%_ _%id123116%_)))
                          (_%else123063123077%_))))))
          (let* ((_%out123015123025%_ _%out123012%_)
                 (_%E123017123029%_
                  (lambda ()
                    (error '"No clause matching"
                           _%out123015123025%_
                           '((module-export ctx key phi _ _)))
                    '#!void))
                 (_%K123018123036%_
                  (lambda (_%phi123032%_ _%key123033%_ _%ctx123034%_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _%ctx123034%_ _%phi123032%_)
                     (_%subst123014%_ _%key123033%_)))))
            (if (##structure-direct-instance-of?
                 _%out123015123025%_
                 'gx#module-export::t)
                (let* ((_%e123019123039%_
                        (##unchecked-structure-ref
                         _%out123015123025%_
                         '1
                         '#f
                         '#f))
                       (_%ctx123042%_ _%e123019123039%_)
                       (_%e123020123044%_
                        (##unchecked-structure-ref
                         _%out123015123025%_
                         '2
                         '#f
                         '#f))
                       (_%key123047%_ _%e123020123044%_)
                       (_%e123021123049%_
                        (##unchecked-structure-ref
                         _%out123015123025%_
                         '3
                         '#f
                         '#f))
                       (_%phi123052%_ _%e123021123049%_)
                       (_%e123022123054%_
                        (##unchecked-structure-ref
                         _%out123015123025%_
                         '4
                         '#f
                         '#f))
                       (_%e123023123057%_
                        (##unchecked-structure-ref
                         _%out123015123025%_
                         '5
                         '#f
                         '#f)))
                  (_%K123018123036%_
                   _%phi123052%_
                   _%key123047%_
                   _%ctx123042%_))
                (_%E123017123029%_))))))
    (define gx#core-module-export->import__%
      (lambda (_%out122937%_ _%rename122938%_ _%dphi122939%_)
        (let* ((_%out122940122950%_ _%out122937%_)
               (_%E122942122954%_
                (lambda ()
                  (error '"No clause matching"
                         _%out122940122950%_
                         '((module-export ctx key phi name weak?)))
                  '#!void))
               (_%K122943122966%_
                (lambda (_%weak?122957%_
                         _%name122958%_
                         _%phi122959%_
                         _%key122960%_
                         _%ctx122961%_)
                  (##structure
                   gx#module-import::t
                   _%out122937%_
                   (let ((_%$e122963%_ _%rename122938%_))
                     (if _%$e122963%_ _%$e122963%_ _%name122958%_))
                   (fx+ _%phi122959%_ _%dphi122939%_)
                   _%weak?122957%_))))
          (if (##structure-direct-instance-of?
               _%out122940122950%_
               'gx#module-export::t)
              (let* ((_%e122944122969%_
                      (##unchecked-structure-ref
                       _%out122940122950%_
                       '1
                       '#f
                       '#f))
                     (_%ctx122972%_ _%e122944122969%_)
                     (_%e122945122974%_
                      (##unchecked-structure-ref
                       _%out122940122950%_
                       '2
                       '#f
                       '#f))
                     (_%key122977%_ _%e122945122974%_)
                     (_%e122946122979%_
                      (##unchecked-structure-ref
                       _%out122940122950%_
                       '3
                       '#f
                       '#f))
                     (_%phi122982%_ _%e122946122979%_)
                     (_%e122947122984%_
                      (##unchecked-structure-ref
                       _%out122940122950%_
                       '4
                       '#f
                       '#f))
                     (_%name122987%_ _%e122947122984%_)
                     (_%e122948122989%_
                      (##unchecked-structure-ref
                       _%out122940122950%_
                       '5
                       '#f
                       '#f))
                     (_%weak?122992%_ _%e122948122989%_))
                (_%K122943122966%_
                 _%weak?122992%_
                 _%name122987%_
                 _%phi122982%_
                 _%key122977%_
                 _%ctx122972%_))
              (_%E122942122954%_)))))
    (define gx#core-module-export->import__0
      (lambda (_%out122997%_)
        (let* ((_%rename122999%_ '#f) (_%dphi123001%_ '0))
          (gx#core-module-export->import__%
           _%out122997%_
           _%rename122999%_
           _%dphi123001%_))))
    (define gx#core-module-export->import__1
      (lambda (_%out123003%_ _%rename123004%_)
        (let ((_%dphi123006%_ '0))
          (gx#core-module-export->import__%
           _%out123003%_
           _%rename123004%_
           _%dphi123006%_))))
    (define gx#core-module-export->import
      (lambda _g125079_
        (let ((_g125078_ (##length _g125079_)))
          (cond ((##fx= _g125078_ 1)
                 (apply (lambda (_%out122997%_)
                          (gx#core-module-export->import__0 _%out122997%_))
                        _g125079_))
                ((##fx= _g125078_ 2)
                 (apply (lambda (_%out123003%_ _%rename123004%_)
                          (gx#core-module-export->import__1
                           _%out123003%_
                           _%rename123004%_))
                        _g125079_))
                ((##fx= _g125078_ 3)
                 (apply (lambda (_%out123008%_ _%rename123009%_ _%dphi123010%_)
                          (gx#core-module-export->import__%
                           _%out123008%_
                           _%rename123009%_
                           _%dphi123010%_))
                        _g125079_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g125079_))))))
    (define gx#core-expand-module%
      (lambda (_%stx122836%_)
        (letrec ((_%make-context122838%_
                  (lambda (_%id122915%_)
                    (let* ((_%super122917%_ (gx#current-expander-context))
                           (_%bind-id122919%_ (gx#stx-e _%id122915%_))
                           (_%mod-id122921%_
                            (if (##structure-instance-of?
                                 _%super122917%_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##structure-ref
                                  _%super122917%_
                                  '1
                                  gx#expander-context::t
                                  '#f)
                                 '"~"
                                 _%bind-id122919%_)
                                _%bind-id122919%_))
                           (_%ns122923%_ (symbol->string _%mod-id122921%_))
                           (_%path122933%_
                            (if (##structure-instance-of?
                                 _%super122917%_
                                 'gx#module-context::t)
                                (let ((_%path122925%_
                                       (##unchecked-structure-ref
                                        _%super122917%_
                                        '7
                                        '#f
                                        '#f)))
                                  (if (or (pair? _%path122925%_)
                                          (null? _%path122925%_))
                                      (let ()
                                        (cons _%bind-id122919%_
                                              _%path122925%_))
                                      (if (not _%path122925%_)
                                          (let () _%bind-id122919%_)
                                          (let ()
                                            (cons _%bind-id122919%_
                                                  (cons _%path122925%_
                                                        '()))))))
                                _%bind-id122919%_)))
                      (let ((__obj125055
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
                         __obj125055
                         _%mod-id122921%_
                         _%super122917%_
                         _%ns122923%_
                         _%path122933%_)
                        __obj125055))))
                 (_%valid-module-id?122839%_
                  (lambda (_%id122890%_)
                    (let* ((_%str122892%_ (symbol->string _%id122890%_))
                           (_%len122894%_ (##string-length _%str122892%_)))
                      (if (##fx>= _%len122894%_ '1)
                          (let _%loop122897%_ ((_%index122899%_
                                                (##fx- (##string-length
                                                        _%str122892%_)
                                                       '1)))
                            (if (##fx>= _%index122899%_ '0)
                                (let ((_%c122901%_
                                       (string-ref
                                        _%str122892%_
                                        _%index122899%_)))
                                  (if (or (and (##char>=? _%c122901%_ '#\a)
                                               (##char<=? _%c122901%_ '#\z))
                                          (and (##char>=? _%c122901%_ '#\A)
                                               (##char<=? _%c122901%_ '#\Z))
                                          (and (##char>=? _%c122901%_ '#\0)
                                               (##char<=? _%c122901%_ '#\9))
                                          (##char=? _%c122901%_ '#\_)
                                          (##char=? _%c122901%_ '#\-))
                                      (_%loop122897%_
                                       (##fx- _%index122899%_ '1))
                                      '#f))
                                '#t))
                          '#f)))))
          (let* ((_%e122840122850%_ _%stx122836%_)
                 (_%E122842122854%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e122840122850%_)))
                 (_%E122841122886%_
                  (lambda ()
                    (if (gx#stx-pair? _%e122840122850%_)
                        (let ((_%e122843122858%_
                               (gx#syntax-e _%e122840122850%_)))
                          (let ((_%hd122844122861%_ (##car _%e122843122858%_))
                                (_%tl122845122863%_ (##cdr _%e122843122858%_)))
                            (if (gx#stx-pair? _%tl122845122863%_)
                                (let ((_%e122846122866%_
                                       (gx#syntax-e _%tl122845122863%_)))
                                  (let ((_%hd122847122869%_
                                         (##car _%e122846122866%_))
                                        (_%tl122848122871%_
                                         (##cdr _%e122846122866%_)))
                                    (let* ((_%id122874%_ _%hd122847122869%_)
                                           (_%body122876%_ _%tl122848122871%_))
                                      (if (and (gx#identifier? _%id122874%_)
                                               (gx#stx-list? _%body122876%_))
                                          (if (_%valid-module-id?122839%_
                                               (gx#stx-e
                                                (gx#datum->syntax__0 '#f 'id)))
                                              (let* ((_%ctx122878%_
                                                      (_%make-context122838%_
                                                       _%id122874%_))
                                                     (_%body122880%_
                                                      (gx#core-expand-module-begin
                                                       _%body122876%_
                                                       _%ctx122878%_))
                                                     (_%body122882%_
                                                      (gx#core-quote-syntax__1
                                                       (gx#core-cons
                                                        '%#begin
                                                        _%body122880%_)
                                                       (gx#stx-source
                                                        _%stx122836%_))))
                                                (##unchecked-structure-set!
                                                 _%ctx122878%_
                                                 (__make-promise
                                                  (lambda ()
                                                    (gx#eval-syntax*
                                                     _%body122882%_)))
                                                 '10
                                                 '#f
                                                 '#f)
                                                (##unchecked-structure-set!
                                                 _%ctx122878%_
                                                 _%body122882%_
                                                 '11
                                                 '#f
                                                 '#f)
                                                (gx#core-bind-syntax!__0
                                                 _%id122874%_
                                                 _%ctx122878%_)
                                                (gx#core-quote-syntax__1
                                                 (gx#core-list
                                                  '%#module
                                                  (gx#core-quote-syntax__0
                                                   _%id122874%_)
                                                  _%body122882%_)
                                                 (gx#stx-source
                                                  _%stx122836%_)))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"invalid module id; allowed characters are A-Z,a-z,0-9,_,-"
                                               _%stx122836%_
                                               (gx#datum->syntax__0 '#f 'id)))
                                          (_%E122842122854%_)))))
                                (_%E122842122854%_))))
                        (_%E122842122854%_)))))
            (_%E122841122886%_)))))
    (define gx#core-expand-module-begin
      (lambda (_%body122802%_ _%ctx122803%_)
        (__call-with-parameters
         (lambda ()
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_%stx122806%_
                   (gx#core-expand-head (cons '%%begin-module _%body122802%_)))
                  (_%e122807122814%_ _%stx122806%_)
                  (_%E122809122818%_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _%stx122806%_)))
                  (_%E122808122832%_
                   (lambda ()
                     (if (gx#stx-pair? _%e122807122814%_)
                         (let ((_%e122810122822%_
                                (gx#syntax-e _%e122807122814%_)))
                           (let ((_%hd122811122825%_ (##car _%e122810122822%_))
                                 (_%tl122812122827%_
                                  (##cdr _%e122810122822%_)))
                             (if (and (gx#identifier? _%hd122811122825%_)
                                      (gx#core-identifier=?
                                       _%hd122811122825%_
                                       '%#begin-module))
                                 (let ((_%body122830%_ _%tl122812122827%_))
                                   (if '#t
                                       (if (gx#sealed-syntax? _%stx122806%_)
                                           _%body122830%_
                                           (gx#core-expand-module-body
                                            _%body122830%_))
                                       (_%E122809122818%_)))
                                 (_%E122809122818%_))))
                         (_%E122809122818%_)))))
             (_%E122808122832%_)))
         gx#current-expander-context
         _%ctx122803%_
         gx#current-expander-phi
         '0)))
    (define gx#core-expand-module-body
      (lambda (_%body122598%_)
        (letrec ((_%expand-special122600%_
                  (lambda (_%hd122729%_ _%K122730%_ _%rest122731%_ _%r122732%_)
                    (let* ((_%e122733122750%_ _%hd122729%_)
                           (_%E122745122754%_
                            (lambda ()
                              (_%K122730%_
                               _%rest122731%_
                               (cons (gx#core-expand-top _%hd122729%_)
                                     _%r122732%_))))
                           (_%E122735122766%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122733122750%_)
                                  (let ((_%e122746122758%_
                                         (gx#syntax-e _%e122733122750%_)))
                                    (let ((_%hd122747122761%_
                                           (##car _%e122746122758%_))
                                          (_%tl122748122763%_
                                           (##cdr _%e122746122758%_)))
                                      (if (and (gx#identifier?
                                                _%hd122747122761%_)
                                               (gx#core-identifier=?
                                                _%hd122747122761%_
                                                '%#export))
                                          (if '#t
                                              (_%K122730%_
                                               _%rest122731%_
                                               (cons _%hd122729%_ _%r122732%_))
                                              (_%E122745122754%_))
                                          (_%E122745122754%_))))
                                  (_%E122745122754%_))))
                           (_%E122734122798%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122733122750%_)
                                  (let ((_%e122736122770%_
                                         (gx#syntax-e _%e122733122750%_)))
                                    (let ((_%hd122737122773%_
                                           (##car _%e122736122770%_))
                                          (_%tl122738122775%_
                                           (##cdr _%e122736122770%_)))
                                      (if (and (gx#identifier?
                                                _%hd122737122773%_)
                                               (gx#core-identifier=?
                                                _%hd122737122773%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl122738122775%_)
                                              (let ((_%e122739122778%_
                                                     (gx#syntax-e
                                                      _%tl122738122775%_)))
                                                (let ((_%hd122740122781%_
                                                       (##car _%e122739122778%_))
                                                      (_%tl122741122783%_
                                                       (##cdr _%e122739122778%_)))
                                                  (let ((_%hd-bind122786%_
                                                         _%hd122740122781%_))
                                                    (if (gx#stx-pair?
                                                         _%tl122741122783%_)
                                                        (let ((_%e122742122788%_
                                                               (gx#syntax-e
                                                                _%tl122741122783%_)))
                                                          (let ((_%hd122743122791%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e122742122788%_))
                        (_%tl122744122793%_ (##cdr _%e122742122788%_)))
                    (let ((_%expr122796%_ _%hd122743122791%_))
                      (if (gx#stx-null? _%tl122744122793%_)
                          (if (gx#core-bind-values? _%hd-bind122786%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind122786%_)
                                (_%K122730%_
                                 _%rest122731%_
                                 (cons _%hd122729%_ _%r122732%_)))
                              (_%E122735122766%_))
                          (_%E122735122766%_)))))
                (_%E122735122766%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E122735122766%_))
                                          (_%E122735122766%_))))
                                  (_%E122735122766%_)))))
                      (_%E122734122798%_))))
                 (_%expand-body122601%_
                  (lambda (_%rbody122603%_)
                    (let _%lp122605%_ ((_%rest122607%_ _%rbody122603%_)
                                       (_%body122608%_ '()))
                      (let* ((_%rest122609122617%_ _%rest122607%_)
                             (_%else122611122625%_ (lambda () _%body122608%_))
                             (_%K122613122717%_
                              (lambda (_%rest122628%_ _%hd122629%_)
                                (let* ((_%e122630122651%_ _%hd122629%_)
                                       (_%E122646122655%_
                                        (lambda ()
                                          (_%lp122605%_
                                           _%rest122628%_
                                           (cons (gx#core-expand-expression
                                                  _%hd122629%_)
                                                 _%body122608%_))))
                                       (_%E122642122669%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e122630122651%_)
                                              (let ((_%e122647122659%_
                                                     (gx#syntax-e
                                                      _%e122630122651%_)))
                                                (let ((_%hd122648122662%_
                                                       (##car _%e122647122659%_))
                                                      (_%tl122649122664%_
                                                       (##cdr _%e122647122659%_)))
                                                  (let ((_%form122667%_
                                                         _%hd122648122662%_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _%form122667%_
                                                         gx#special-form-binding?)
                                                        (_%lp122605%_
                                                         _%rest122628%_
                                                         (cons _%hd122629%_
                                                               _%body122608%_))
                                                        (_%E122646122655%_)))))
                                              (_%E122646122655%_))))
                                       (_%E122632122681%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e122630122651%_)
                                              (let ((_%e122643122673%_
                                                     (gx#syntax-e
                                                      _%e122630122651%_)))
                                                (let ((_%hd122644122676%_
                                                       (##car _%e122643122673%_))
                                                      (_%tl122645122678%_
                                                       (##cdr _%e122643122673%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd122644122676%_)
                                                           (gx#core-identifier=?
                                                            _%hd122644122676%_
                                                            '%#export))
                                                      (if '#t
                                                          (_%lp122605%_
                                                           _%rest122628%_
                                                           (cons (gx#core-expand-export%__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%hd122629%_)
                         _%body122608%_))
                  (_%E122642122669%_))
              (_%E122642122669%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E122642122669%_))))
                                       (_%E122631122713%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e122630122651%_)
                                              (let ((_%e122633122685%_
                                                     (gx#syntax-e
                                                      _%e122630122651%_)))
                                                (let ((_%hd122634122688%_
                                                       (##car _%e122633122685%_))
                                                      (_%tl122635122690%_
                                                       (##cdr _%e122633122685%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd122634122688%_)
                                                           (gx#core-identifier=?
                                                            _%hd122634122688%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl122635122690%_)
                                                          (let ((_%e122636122693%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl122635122690%_)))
                    (let ((_%hd122637122696%_ (##car _%e122636122693%_))
                          (_%tl122638122698%_ (##cdr _%e122636122693%_)))
                      (let ((_%hd-bind122701%_ _%hd122637122696%_))
                        (if (gx#stx-pair? _%tl122638122698%_)
                            (let ((_%e122639122703%_
                                   (gx#syntax-e _%tl122638122698%_)))
                              (let ((_%hd122640122706%_
                                     (##car _%e122639122703%_))
                                    (_%tl122641122708%_
                                     (##cdr _%e122639122703%_)))
                                (let ((_%expr122711%_ _%hd122640122706%_))
                                  (if (gx#stx-null? _%tl122641122708%_)
                                      (if '#t
                                          (_%lp122605%_
                                           _%rest122628%_
                                           (cons (gx#core-quote-syntax__1
                                                  (gx#core-list
                                                   '%#define-values
                                                   (gx#core-quote-bind-values
                                                    _%hd-bind122701%_)
                                                   (gx#core-expand-expression
                                                    _%expr122711%_))
                                                  (gx#stx-source _%hd122629%_))
                                                 _%body122608%_))
                                          (_%E122632122681%_))
                                      (_%E122632122681%_)))))
                            (_%E122632122681%_)))))
                  (_%E122632122681%_))
              (_%E122632122681%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E122632122681%_)))))
                                  (_%E122631122713%_)))))
                        (if (##pair? _%rest122609122617%_)
                            (let ((_%hd122614122720%_
                                   (##car _%rest122609122617%_))
                                  (_%tl122615122722%_
                                   (##cdr _%rest122609122617%_)))
                              (let* ((_%hd122725%_ _%hd122614122720%_)
                                     (_%rest122727%_ _%tl122615122722%_))
                                (_%K122613122717%_
                                 _%rest122727%_
                                 _%hd122725%_)))
                            (_%else122611122625%_)))))))
          (_%expand-body122601%_
           (gx#core-expand-block__%
            (cons '%#begin-module _%body122598%_)
            _%expand-special122600%_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_%stx122439%_
               _%expanded?122440%_
               _%method122441%_
               _%current-phi122442%_
               _%expand1122443%_)
        (letrec ((_%K122445%_
                  (lambda (_%rest122565%_ _%r122566%_)
                    (let* ((_%e122567122574%_ _%rest122565%_)
                           (_%E122569122578%_ (lambda () _%r122566%_))
                           (_%E122568122594%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122567122574%_)
                                  (let ((_%e122570122582%_
                                         (gx#syntax-e _%e122567122574%_)))
                                    (let ((_%hd122571122585%_
                                           (##car _%e122570122582%_))
                                          (_%tl122572122587%_
                                           (##cdr _%e122570122582%_)))
                                      (let* ((_%hd122590%_ _%hd122571122585%_)
                                             (_%rest122592%_
                                              _%tl122572122587%_))
                                        (if '#t
                                            (_%step122446%_
                                             _%hd122590%_
                                             _%rest122592%_
                                             _%r122566%_)
                                            (_%E122569122578%_)))))
                                  (_%E122569122578%_)))))
                      (_%E122568122594%_))))
                 (_%step122446%_
                  (lambda (_%hd122479%_ _%rest122480%_ _%r122481%_)
                    (let* ((_%e122482122500%_ _%hd122479%_)
                           (_%E122495122504%_
                            (lambda ()
                              (if (_%expanded?122440%_ (gx#stx-e _%hd122479%_))
                                  (_%K122445%_
                                   _%rest122480%_
                                   (cons (gx#stx-e _%hd122479%_) _%r122481%_))
                                  (_%expand1122443%_
                                   _%hd122479%_
                                   _%K122445%_
                                   _%rest122480%_
                                   _%r122481%_))))
                           (_%E122491122520%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122482122500%_)
                                  (let ((_%e122496122508%_
                                         (gx#syntax-e _%e122482122500%_)))
                                    (let ((_%hd122497122511%_
                                           (##car _%e122496122508%_))
                                          (_%tl122498122513%_
                                           (##cdr _%e122496122508%_)))
                                      (let* ((_%macro122516%_
                                              _%hd122497122511%_)
                                             (_%body122518%_
                                              _%tl122498122513%_))
                                        (if (gx#core-bound-identifier?__%
                                             _%macro122516%_
                                             gx#syntax-binding?)
                                            (_%K122445%_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _%macro122516%_)
                                                    _%hd122479%_
                                                    _%method122441%_)
                                                   _%rest122480%_)
                                             _%r122481%_)
                                            (_%E122495122504%_)))))
                                  (_%E122495122504%_))))
                           (_%E122484122534%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122482122500%_)
                                  (let ((_%e122492122524%_
                                         (gx#syntax-e _%e122482122500%_)))
                                    (let ((_%hd122493122527%_
                                           (##car _%e122492122524%_))
                                          (_%tl122494122529%_
                                           (##cdr _%e122492122524%_)))
                                      (if (eq? (gx#stx-e _%hd122493122527%_)
                                               'begin:)
                                          (let ((_%body122532%_
                                                 _%tl122494122529%_))
                                            (if '#t
                                                (_%K122445%_
                                                 (gx#stx-foldr
                                                  cons
                                                  _%rest122480%_
                                                  _%body122532%_)
                                                 _%r122481%_)
                                                (_%E122491122520%_)))
                                          (_%E122491122520%_))))
                                  (_%E122491122520%_))))
                           (_%E122483122561%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122482122500%_)
                                  (let ((_%e122485122538%_
                                         (gx#syntax-e _%e122482122500%_)))
                                    (let ((_%hd122486122541%_
                                           (##car _%e122485122538%_))
                                          (_%tl122487122543%_
                                           (##cdr _%e122485122538%_)))
                                      (if (eq? (gx#stx-e _%hd122486122541%_)
                                               'phi:)
                                          (if (gx#stx-pair? _%tl122487122543%_)
                                              (let ((_%e122488122546%_
                                                     (gx#syntax-e
                                                      _%tl122487122543%_)))
                                                (let ((_%hd122489122549%_
                                                       (##car _%e122488122546%_))
                                                      (_%tl122490122551%_
                                                       (##cdr _%e122488122546%_)))
                                                  (let* ((_%dphi122554%_
                                                          _%hd122489122549%_)
                                                         (_%body122556%_
                                                          _%tl122490122551%_))
                                                    (if (gx#stx-fixnum?
                                                         _%dphi122554%_)
                                                        (let ((_%rbody122559%_
                                                               (__call-with-parameters
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_%K122445%_ _%body122556%_ '()))
                        _%current-phi122442%_
                        (fx+ (gx#stx-e _%dphi122554%_)
                             (_%current-phi122442%_)))))
                  (_%K122445%_
                   _%rest122480%_
                   (__foldr1 cons _%r122481%_ _%rbody122559%_)))
                (_%E122484122534%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E122484122534%_))
                                          (_%E122484122534%_))))
                                  (_%E122484122534%_)))))
                      (_%E122483122561%_)))))
          (let* ((_%e122447122454%_ _%stx122439%_)
                 (_%E122449122458%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e122447122454%_)))
                 (_%E122448122475%_
                  (lambda ()
                    (if (gx#stx-pair? _%e122447122454%_)
                        (let ((_%e122450122462%_
                               (gx#syntax-e _%e122447122454%_)))
                          (let ((_%hd122451122465%_ (##car _%e122450122462%_))
                                (_%tl122452122467%_ (##cdr _%e122450122462%_)))
                            (let ((_%body122470%_ _%tl122452122467%_))
                              (if '#t
                                  (if (_%current-phi122442%_)
                                      (let () (_%K122445%_ _%body122470%_ '()))
                                      (let ()
                                        (__call-with-parameters
                                         (lambda ()
                                           (_%K122445%_ _%body122470%_ '()))
                                         _%current-phi122442%_
                                         (gx#current-expander-phi))))
                                  (_%E122449122458%_)))))
                        (_%E122449122458%_)))))
            (_%E122448122475%_)))))
    (define gx#core-expand-import%__%
      (lambda (_%stx122093%_ _%internal-expand?122094%_)
        (letrec ((_%expand1122096%_
                  (lambda (_%hd122411%_ _%K122412%_ _%rest122413%_ _%r122414%_)
                    (if (gx#core-bound-module? _%hd122411%_)
                        (let ()
                          (_%import1122097%_
                           (gx#syntax-local-e__0 _%hd122411%_)
                           _%K122412%_
                           _%rest122413%_
                           _%r122414%_))
                        (if (gx#core-library-module-path? _%hd122411%_)
                            (let ()
                              (_%import1122097%_
                               (gx#import-module__0
                                (gx#core-resolve-library-module-path
                                 _%hd122411%_))
                               _%K122412%_
                               _%rest122413%_
                               _%r122414%_))
                            (if (gx#core-library-relative-module-path?
                                 _%hd122411%_)
                                (let ()
                                  (_%import1122097%_
                                   (gx#import-module__0
                                    (gx#core-resolve-library-relative-module-path
                                     _%hd122411%_))
                                   _%K122412%_
                                   _%rest122413%_
                                   _%r122414%_))
                                (let ()
                                  (let ((_%e122420%_ (gx#stx-e _%hd122411%_)))
                                    (if (pair? _%e122420%_)
                                        (let ()
                                          (let ((_%$e122423%_
                                                 (gx#stx-e (car _%e122420%_))))
                                            (if (eq? 'spec: _%$e122423%_)
                                                (_%import-spec122100%_
                                                 _%hd122411%_
                                                 _%K122412%_
                                                 _%rest122413%_
                                                 _%r122414%_)
                                                (if (eq? 'in: _%$e122423%_)
                                                    (_%import-submodule122098%_
                                                     _%hd122411%_
                                                     _%K122412%_
                                                     _%rest122413%_
                                                     _%r122414%_)
                                                    (if (eq? 'runtime:
                                                             _%$e122423%_)
                                                        (_%import-runtime122099%_
                                                         _%hd122411%_
                                                         _%K122412%_
                                                         _%rest122413%_
                                                         _%r122414%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; illegal import"
                                                         _%stx122093%_
                                                         _%hd122411%_))))))
                                        (if (string? _%e122420%_)
                                            (let ()
                                              (_%import1122097%_
                                               (gx#import-module__0
                                                (gx#core-resolve-module-path__%
                                                 _%hd122411%_
                                                 (gx#stx-source
                                                  _%stx122093%_)))
                                               _%K122412%_
                                               _%rest122413%_
                                               _%r122414%_))
                                            (if (##structure-instance-of?
                                                 _%e122420%_
                                                 'gx#module-context::t)
                                                (let ()
                                                  (_%K122412%_
                                                   _%rest122413%_
                                                   (cons _%e122420%_
                                                         _%r122414%_)))
                                                (let ()
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; illegal import"
                                                   _%stx122093%_
                                                   _%hd122411%_))))))))))))
                 (_%import1122097%_
                  (lambda (_%ctx122400%_
                           _%K122401%_
                           _%rest122402%_
                           _%r122403%_)
                    (let ((_%dphi122405%_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_%K122401%_
                       _%rest122402%_
                       (cons (##structure
                              gx#import-set::t
                              _%ctx122400%_
                              _%dphi122405%_
                              (map (lambda (_%g122406122408%_)
                                     (gx#core-module-export->import__%
                                      _%g122406122408%_
                                      '#f
                                      _%dphi122405%_))
                                   (##unchecked-structure-ref
                                    _%ctx122400%_
                                    '9
                                    '#f
                                    '#f)))
                             _%r122403%_)))))
                 (_%import-submodule122098%_
                  (lambda (_%hd122367%_ _%K122368%_ _%rest122369%_ _%r122370%_)
                    (let* ((_%e122371122378%_ _%hd122367%_)
                           (_%E122373122382%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e122371122378%_)))
                           (_%E122372122396%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122371122378%_)
                                  (let ((_%e122374122386%_
                                         (gx#syntax-e _%e122371122378%_)))
                                    (let ((_%hd122375122389%_
                                           (##car _%e122374122386%_))
                                          (_%tl122376122391%_
                                           (##cdr _%e122374122386%_)))
                                      (let ((_%spath122394%_
                                             _%tl122376122391%_))
                                        (if '#t
                                            (_%import1122097%_
                                             (_%import-spec-source122101%_
                                              _%spath122394%_)
                                             _%K122368%_
                                             _%rest122369%_
                                             _%r122370%_)
                                            (_%E122373122382%_)))))
                                  (_%E122373122382%_)))))
                      (_%E122372122396%_))))
                 (_%import-runtime122099%_
                  (lambda (_%hd122334%_ _%K122335%_ _%rest122336%_ _%r122337%_)
                    (let* ((_%e122338122345%_ _%hd122334%_)
                           (_%E122340122349%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e122338122345%_)))
                           (_%E122339122363%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122338122345%_)
                                  (let ((_%e122341122353%_
                                         (gx#syntax-e _%e122338122345%_)))
                                    (let ((_%hd122342122356%_
                                           (##car _%e122341122353%_))
                                          (_%tl122343122358%_
                                           (##cdr _%e122341122353%_)))
                                      (let ((_%spath122361%_
                                             _%tl122343122358%_))
                                        (if '#t
                                            (_%K122335%_
                                             _%rest122336%_
                                             (cons (_%import-spec-source122101%_
                                                    _%spath122361%_)
                                                   _%r122337%_))
                                            (_%E122340122349%_)))))
                                  (_%E122340122349%_)))))
                      (_%E122339122363%_))))
                 (_%import-spec122100%_
                  (lambda (_%hd122172%_ _%K122173%_ _%rest122174%_ _%r122175%_)
                    (let* ((_%e122176122193%_ _%hd122172%_)
                           (_%E122185122197%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e122176122193%_)))
                           (_%E122178122308%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122176122193%_)
                                  (let ((_%e122186122201%_
                                         (gx#syntax-e _%e122176122193%_)))
                                    (let ((_%hd122187122204%_
                                           (##car _%e122186122201%_))
                                          (_%tl122188122206%_
                                           (##cdr _%e122186122201%_)))
                                      (if (gx#stx-pair? _%tl122188122206%_)
                                          (let ((_%e122189122209%_
                                                 (gx#syntax-e
                                                  _%tl122188122206%_)))
                                            (let ((_%hd122190122212%_
                                                   (##car _%e122189122209%_))
                                                  (_%tl122191122214%_
                                                   (##cdr _%e122189122209%_)))
                                              (let* ((_%path122217%_
                                                      _%hd122190122212%_)
                                                     (_%specs122219%_
                                                      _%tl122191122214%_))
                                                (if '#t
                                                    (let ((_%src-ctx122221%_
                                                           (_%import-spec-source122101%_
                                                            _%path122217%_))
                                                          (_%exports122222%_
                                                           (make-hash-table))
                                                          (_%specs122223%_
                                                           (gx#syntax->list
                                                            _%specs122219%_)))
                                                      (for-each
                                                       (lambda (_%out122225%_)
                                                         (hash-put!
                                                          _%exports122222%_
                                                          (cons (##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%out122225%_
                         '3
                         '#f
                         '#f)
                        (##unchecked-structure-ref _%out122225%_ '4 '#f '#f))
                  _%out122225%_))
               (##unchecked-structure-ref _%src-ctx122221%_ '9 '#f '#f))
              (_%K122173%_
               _%rest122174%_
               (__foldl1
                (lambda (_%spec122227%_ _%r122228%_)
                  (let* ((_%e122229122245%_ _%spec122227%_)
                         (_%E122231122249%_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _%e122229122245%_)))
                         (_%E122230122304%_
                          (lambda ()
                            (if (gx#stx-pair? _%e122229122245%_)
                                (let ((_%e122232122253%_
                                       (gx#syntax-e _%e122229122245%_)))
                                  (let ((_%hd122233122256%_
                                         (##car _%e122232122253%_))
                                        (_%tl122234122258%_
                                         (##cdr _%e122232122253%_)))
                                    (let ((_%phi122261%_ _%hd122233122256%_))
                                      (if (gx#stx-pair? _%tl122234122258%_)
                                          (let ((_%e122235122263%_
                                                 (gx#syntax-e
                                                  _%tl122234122258%_)))
                                            (let ((_%hd122236122266%_
                                                   (##car _%e122235122263%_))
                                                  (_%tl122237122268%_
                                                   (##cdr _%e122235122263%_)))
                                              (let ((_%name122271%_
                                                     _%hd122236122266%_))
                                                (if (gx#stx-pair?
                                                     _%tl122237122268%_)
                                                    (let ((_%e122238122273%_
                                                           (gx#syntax-e
                                                            _%tl122237122268%_)))
                                                      (let ((_%hd122239122276%_
                                                             (##car _%e122238122273%_))
                                                            (_%tl122240122278%_
                                                             (##cdr _%e122238122273%_)))
                                                        (let ((_%src-phi122281%_
                                                               _%hd122239122276%_))
                                                          (if (gx#stx-pair?
                                                               _%tl122240122278%_)
                                                              (let ((_%e122241122283%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl122240122278%_)))
                        (let ((_%hd122242122286%_ (##car _%e122241122283%_))
                              (_%tl122243122288%_ (##cdr _%e122241122283%_)))
                          (let ((_%src-name122291%_ _%hd122242122286%_))
                            (if (gx#stx-null? _%tl122243122288%_)
                                (if (and (gx#stx-fixnum? _%src-phi122281%_)
                                         (gx#identifier? _%src-name122291%_)
                                         (gx#stx-fixnum? _%phi122261%_)
                                         (gx#identifier? _%name122271%_))
                                    (let ((_%src-phi122293%_
                                           (gx#stx-e _%src-phi122281%_))
                                          (_%src-name122294%_
                                           (gx#core-identifier-key
                                            _%src-name122291%_))
                                          (_%phi122295%_
                                           (gx#stx-e _%phi122261%_))
                                          (_%name122296%_
                                           (gx#core-identifier-key
                                            _%name122271%_)))
                                      (let ((_%$e122298%_
                                             (hash-get
                                              _%exports122222%_
                                              (cons _%src-phi122293%_
                                                    _%src-name122294%_))))
                                        (if _%$e122298%_
                                            ((lambda (_%out122301%_)
                                               (cons (gx#core-module-export->import__%
                                                      _%out122301%_
                                                      _%name122296%_
                                                      (fx- _%phi122295%_
                                                           _%src-phi122293%_))
                                                     _%r122228%_))
                                             _%$e122298%_)
                                            (let ()
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; no matching export"
                                               _%stx122093%_
                                               _%hd122172%_)))))
                                    (_%E122231122249%_))
                                (_%E122231122249%_)))))
                      (_%E122231122249%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E122231122249%_)))))
                                          (_%E122231122249%_)))))
                                (_%E122231122249%_)))))
                    (_%E122230122304%_)))
                _%r122175%_
                _%specs122223%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E122185122197%_)))))
                                          (_%E122185122197%_))))
                                  (_%E122185122197%_))))
                           (_%E122177122330%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122176122193%_)
                                  (let ((_%e122179122312%_
                                         (gx#syntax-e _%e122176122193%_)))
                                    (let ((_%hd122180122315%_
                                           (##car _%e122179122312%_))
                                          (_%tl122181122317%_
                                           (##cdr _%e122179122312%_)))
                                      (if (gx#stx-pair? _%tl122181122317%_)
                                          (let ((_%e122182122320%_
                                                 (gx#syntax-e
                                                  _%tl122181122317%_)))
                                            (let ((_%hd122183122323%_
                                                   (##car _%e122182122320%_))
                                                  (_%tl122184122325%_
                                                   (##cdr _%e122182122320%_)))
                                              (let ((_%path122328%_
                                                     _%hd122183122323%_))
                                                (if (gx#stx-null?
                                                     _%tl122184122325%_)
                                                    (if '#t
                                                        (_%K122173%_
                                                         _%rest122174%_
                                                         (cons (_%import-spec-source122101%_
                                                                _%path122328%_)
                                                               _%r122175%_))
                                                        (_%E122178122308%_))
                                                    (_%E122178122308%_)))))
                                          (_%E122178122308%_))))
                                  (_%E122178122308%_)))))
                      (_%E122177122330%_))))
                 (_%import-spec-source122101%_
                  (lambda (_%spath122170%_)
                    (gx#core-import-nested-module
                     _%spath122170%_
                     _%stx122093%_)))
                 (_%import!122102%_
                  (lambda (_%rbody122115%_)
                    (letrec* ((_%current-ctx122117%_
                               (gx#current-expander-context))
                              (_%deps122118%_ (make-hash-table-eq))
                              (_%bind!122119%_
                               (lambda (_%hd122168%_)
                                 (gx#core-bind-import!__1
                                  _%hd122168%_
                                  _%current-ctx122117%_))))
                      (let _%lp122121%_ ((_%rest122123%_ _%rbody122115%_)
                                         (_%body122124%_ '()))
                        (let* ((_%rest122125122133%_ _%rest122123%_)
                               (_%else122127122144%_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _%current-ctx122117%_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _%current-ctx122117%_
                                       (__foldl1
                                        cons
                                        (##unchecked-structure-ref
                                         _%current-ctx122117%_
                                         '8
                                         '#f
                                         '#f)
                                        _%body122124%_)
                                       '8
                                       '#f
                                       '#f)
                                      '#!void)
                                  (hash-for-each
                                   (lambda (_%ctx122141%_ _%_122142%_)
                                     (gx#eval-module _%ctx122141%_))
                                   _%deps122118%_)
                                  _%body122124%_))
                               (_%K122129122156%_
                                (lambda (_%rest122147%_ _%hd122148%_)
                                  (if (##structure-direct-instance-of?
                                       _%hd122148%_
                                       'gx#module-import::t)
                                      (let ()
                                        (_%bind!122119%_ _%hd122148%_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _%hd122148%_
                                                   '3
                                                   '#f
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _%hd122148%_
                                                            '1
                                                            '#f
                                                            '#f)
                                                           '3
                                                           '#f
                                                           '#f)))
                                            (hash-put!
                                             _%deps122118%_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _%hd122148%_
                                               '1
                                               '#f
                                               '#f)
                                              '1
                                              '#f
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _%hd122148%_
                                           'gx#import-set::t)
                                          (let ()
                                            (for-each
                                             _%bind!122119%_
                                             (##unchecked-structure-ref
                                              _%hd122148%_
                                              '3
                                              '#f
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _%hd122148%_
                                                  '2
                                                  '#f
                                                  '#f))
                                                (hash-put!
                                                 _%deps122118%_
                                                 (##unchecked-structure-ref
                                                  _%hd122148%_
                                                  '1
                                                  '#f
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_%$e122152%_
                                                 (##structure-instance-of?
                                                  _%hd122148%_
                                                  'gx#module-context::t)))
                                            (if _%$e122152%_
                                                _%$e122152%_
                                                (let ()
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Unexpected import"
                                                   _%stx122093%_
                                                   _%hd122148%_))))))
                                  (_%lp122121%_
                                   _%rest122147%_
                                   (cons _%hd122148%_ _%body122124%_)))))
                          (if (##pair? _%rest122125122133%_)
                              (let ((_%hd122130122159%_
                                     (##car _%rest122125122133%_))
                                    (_%tl122131122161%_
                                     (##cdr _%rest122125122133%_)))
                                (let* ((_%hd122164%_ _%hd122130122159%_)
                                       (_%rest122166%_ _%tl122131122161%_))
                                  (_%K122129122156%_
                                   _%rest122166%_
                                   _%hd122164%_)))
                              (_%else122127122144%_)))))))
                 (_%expanded-import?122103%_
                  (lambda (_%e122107%_)
                    (let ((_%$e122109%_
                           (##structure-direct-instance-of?
                            _%e122107%_
                            'gx#import-set::t)))
                      (if _%$e122109%_
                          _%$e122109%_
                          (let ((_%$e122112%_
                                 (##structure-direct-instance-of?
                                  _%e122107%_
                                  'gx#module-import::t)))
                            (if _%$e122112%_
                                _%$e122112%_
                                (##structure-instance-of?
                                 _%e122107%_
                                 'gx#module-context::t))))))))
          (let ((_%rbody122105%_
                 (gx#core-expand-import/export
                  _%stx122093%_
                  _%expanded-import?122103%_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _%expand1122096%_)))
            (if _%internal-expand?122094%_
                (reverse _%rbody122105%_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_%import!122102%_ _%rbody122105%_))
                 (gx#stx-source _%stx122093%_)))))))
    (define gx#core-expand-import%__0
      (lambda (_%stx122432%_)
        (let ((_%internal-expand?122434%_ '#f))
          (gx#core-expand-import%__%
           _%stx122432%_
           _%internal-expand?122434%_))))
    (define gx#core-expand-import%
      (lambda _g125081_
        (let ((_g125080_ (##length _g125081_)))
          (cond ((##fx= _g125080_ 1)
                 (apply (lambda (_%stx122432%_)
                          (gx#core-expand-import%__0 _%stx122432%_))
                        _g125081_))
                ((##fx= _g125080_ 2)
                 (apply (lambda (_%stx122436%_ _%internal-expand?122437%_)
                          (gx#core-expand-import%__%
                           _%stx122436%_
                           _%internal-expand?122437%_))
                        _g125081_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g125081_))))))
    (define gx#core-import-nested-module
      (lambda (_%spath122020%_ _%where122021%_)
        (let* ((_%e122022122029%_ _%spath122020%_)
               (_%E122024122033%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122022122029%_)))
               (_%E122023122088%_
                (lambda ()
                  (if (gx#stx-pair? _%e122022122029%_)
                      (let ((_%e122025122037%_
                             (gx#syntax-e _%e122022122029%_)))
                        (let ((_%hd122026122040%_ (##car _%e122025122037%_))
                              (_%tl122027122042%_ (##cdr _%e122025122037%_)))
                          (let* ((_%origin122045%_ _%hd122026122040%_)
                                 (_%sub122047%_ _%tl122027122042%_))
                            (if '#t
                                (let ((_%origin-ctx122049%_
                                       (if (gx#stx-false? _%origin122045%_)
                                           (gx#current-expander-context)
                                           (gx#import-module__0
                                            _%origin122045%_))))
                                  (let _%lp122051%_ ((_%rest122053%_
                                                      _%sub122047%_)
                                                     (_%ctx122054%_
                                                      _%origin-ctx122049%_))
                                    (let* ((_%e122055122062%_ _%rest122053%_)
                                           (_%E122057122066%_
                                            (lambda () _%ctx122054%_))
                                           (_%E122056122084%_
                                            (lambda ()
                                              (if (gx#stx-pair?
                                                   _%e122055122062%_)
                                                  (let ((_%e122058122070%_
                                                         (gx#syntax-e
                                                          _%e122055122062%_)))
                                                    (let ((_%hd122059122073%_
                                                           (##car _%e122058122070%_))
                                                          (_%tl122060122075%_
                                                           (##cdr _%e122058122070%_)))
                                                      (let* ((_%id122078%_
                                                              _%hd122059122073%_)
                                                             (_%rest122080%_
                                                              _%tl122060122075%_))
                                                        (if '#t
                                                            (let ((_%bind122082%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#resolve-identifier__%
                            _%id122078%_
                            '0
                            _%ctx122054%_)))
                      (if (and (##structure-direct-instance-of?
                                _%bind122082%_
                                'gx#syntax-binding::t)
                               (##structure-instance-of?
                                (##unchecked-structure-ref
                                 _%bind122082%_
                                 '4
                                 '#f
                                 '#f)
                                'gx#module-context::t))
                          '#!void
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; not bound as module"
                           _%where122021%_
                           _%spath122020%_
                           _%id122078%_))
                      (_%lp122051%_
                       _%rest122080%_
                       (##unchecked-structure-ref _%bind122082%_ '4 '#f '#f)))
                    (_%E122057122066%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E122057122066%_)))))
                                      (_%E122056122084%_))))
                                (_%E122024122033%_)))))
                      (_%E122024122033%_)))))
          (_%E122023122088%_))))
    (define gx#core-expand-import-source
      (lambda (_%hd122018%_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _%hd122018%_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_%stx121512%_ _%internal-expand?121513%_)
        (letrec* ((_%make-export__125009125010%_
                   (lambda (_%bind121966%_
                            _%phi121967%_
                            _%ctx121968%_
                            _%name121969%_)
                     (let* ((_%key121971%_
                             (##unchecked-structure-ref
                              _%bind121966%_
                              '2
                              '#f
                              '#f))
                            (_%export-key121973%_
                             (if _%name121969%_
                                 (gx#core-identifier-key _%name121969%_)
                                 _%key121971%_)))
                       (##structure
                        gx#module-export::t
                        _%ctx121968%_
                        _%key121971%_
                        _%phi121967%_
                        _%export-key121973%_
                        (let ((_%$e121976%_
                               (##structure-instance-of?
                                _%bind121966%_
                                'gx#extern-binding::t)))
                          (if _%$e121976%_
                              _%$e121976%_
                              (##structure-direct-instance-of?
                               _%bind121966%_
                               'gx#import-binding::t)))))))
                  (_%make-export__0__125011125014%_
                   (lambda (_%bind121982%_)
                     (let* ((_%phi121984%_ (gx#current-export-expander-phi))
                            (_%ctx121986%_ (gx#current-expander-context))
                            (_%name121988%_ '#f))
                       (_%make-export__125009125010%_
                        _%bind121982%_
                        _%phi121984%_
                        _%ctx121986%_
                        _%name121988%_))))
                  (_%make-export__1__125012125015%_
                   (lambda (_%bind121990%_ _%phi121991%_)
                     (let* ((_%ctx121993%_ (gx#current-expander-context))
                            (_%name121995%_ '#f))
                       (_%make-export__125009125010%_
                        _%bind121990%_
                        _%phi121991%_
                        _%ctx121993%_
                        _%name121995%_))))
                  (_%make-export__2__125013125016%_
                   (lambda (_%bind121997%_ _%phi121998%_ _%ctx121999%_)
                     (let ((_%name122001%_ '#f))
                       (_%make-export__125009125010%_
                        _%bind121997%_
                        _%phi121998%_
                        _%ctx121999%_
                        _%name122001%_))))
                  (_%make-export121515%_
                   (lambda _g125083_
                     (let ((_g125082_ (##length _g125083_)))
                       (cond ((##fx= _g125082_ 1)
                              (apply (lambda (_%bind121982%_)
                                       (_%make-export__0__125011125014%_
                                        _%bind121982%_))
                                     _g125083_))
                             ((##fx= _g125082_ 2)
                              (apply (lambda (_%bind121990%_ _%phi121991%_)
                                       (_%make-export__1__125012125015%_
                                        _%bind121990%_
                                        _%phi121991%_))
                                     _g125083_))
                             ((##fx= _g125082_ 3)
                              (apply (lambda (_%bind121997%_
                                              _%phi121998%_
                                              _%ctx121999%_)
                                       (_%make-export__2__125013125016%_
                                        _%bind121997%_
                                        _%phi121998%_
                                        _%ctx121999%_))
                                     _g125083_))
                             ((##fx= _g125082_ 4)
                              (apply (lambda (_%bind122003%_
                                              _%phi122004%_
                                              _%ctx122005%_
                                              _%name122006%_)
                                       (_%make-export__125009125010%_
                                        _%bind122003%_
                                        _%phi122004%_
                                        _%ctx122005%_
                                        _%name122006%_))
                                     _g125083_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g125083_))))))
                  (_%expand1121516%_
                   (lambda (_%hd121671%_
                            _%K121672%_
                            _%rest121673%_
                            _%r121674%_)
                     (let* ((_%e121675121707%_ _%hd121671%_)
                            (_%E121702121711%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _%stx121512%_
                                _%hd121671%_)))
                            (_%E121692121795%_
                             (lambda ()
                               (if (gx#stx-pair? _%e121675121707%_)
                                   (let ((_%e121703121715%_
                                          (gx#syntax-e _%e121675121707%_)))
                                     (let ((_%hd121704121718%_
                                            (##car _%e121703121715%_))
                                           (_%tl121705121720%_
                                            (##cdr _%e121703121715%_)))
                                       (if (eq? (gx#stx-e _%hd121704121718%_)
                                                'import:)
                                           (let ((_%in121723%_
                                                  _%tl121705121720%_))
                                             (if (gx#stx-list? _%in121723%_)
                                                 (let _%lp121725%_ ((_%in-rest121727%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%in121723%_)
                            (_%r121728%_ _%r121674%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%e121729121736%_
                                                           _%in-rest121727%_)
                                                          (_%E121731121740%_
                                                           (lambda ()
                                                             (_%K121672%_
                                                              _%rest121673%_
                                                              _%r121728%_)))
                                                          (_%E121730121791%_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%e121729121736%_)
                         (let ((_%e121732121744%_
                                (gx#syntax-e _%e121729121736%_)))
                           (let ((_%hd121733121747%_ (##car _%e121732121744%_))
                                 (_%tl121734121749%_
                                  (##cdr _%e121732121744%_)))
                             (let* ((_%hd121752%_ _%hd121733121747%_)
                                    (_%in-rest121754%_ _%tl121734121749%_))
                               (if '#t
                                   (let ((_%src121789%_
                                          (if (gx#core-bound-module?
                                               _%hd121752%_)
                                              (let ()
                                                (gx#syntax-local-e__0
                                                 _%hd121752%_))
                                              (if (gx#core-library-module-path?
                                                   _%hd121752%_)
                                                  (let ()
                                                    (gx#import-module__0
                                                     (gx#core-resolve-library-module-path
                                                      _%hd121752%_)))
                                                  (if (gx#core-library-relative-module-path?
                                                       _%hd121752%_)
                                                      (let ()
                                                        (gx#import-module__0
                                                         (gx#core-resolve-library-relative-module-path
                                                          _%hd121752%_)))
                                                      (if (gx#stx-string?
                                                           _%hd121752%_)
                                                          (let ()
                                                            (gx#import-module__0
                                                             (gx#core-resolve-module-path__%
                                                              _%hd121752%_
                                                              (gx#stx-source
                                                               _%stx121512%_))))
                                                          (let ()
                                                            (let* ((_%e121760121767%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd121752%_)
                           (_%E121762121771%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; illegal re-export"
                               _%stx121512%_
                               _%hd121752%_)))
                           (_%E121761121785%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121760121767%_)
                                  (let ((_%e121763121775%_
                                         (gx#syntax-e _%e121760121767%_)))
                                    (let ((_%hd121764121778%_
                                           (##car _%e121763121775%_))
                                          (_%tl121765121780%_
                                           (##cdr _%e121763121775%_)))
                                      (if (eq? (gx#stx-e _%hd121764121778%_)
                                               'in:)
                                          (let ((_%spath121783%_
                                                 _%tl121765121780%_))
                                            (if '#t
                                                (gx#core-import-nested-module
                                                 _%spath121783%_
                                                 _%stx121512%_)
                                                (_%E121762121771%_)))
                                          (_%E121762121771%_))))
                                  (_%E121762121771%_)))))
                      (_%E121761121785%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%lp121725%_
                                      _%in-rest121754%_
                                      (_%export-imports121517%_
                                       _%src121789%_
                                       _%r121728%_)))
                                   (_%E121731121740%_)))))
                         (_%E121731121740%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E121730121791%_)))
                                                 (_%E121702121711%_)))
                                           (_%E121702121711%_))))
                                   (_%E121702121711%_))))
                            (_%E121679121835%_
                             (lambda ()
                               (if (gx#stx-pair? _%e121675121707%_)
                                   (let ((_%e121693121799%_
                                          (gx#syntax-e _%e121675121707%_)))
                                     (let ((_%hd121694121802%_
                                            (##car _%e121693121799%_))
                                           (_%tl121695121804%_
                                            (##cdr _%e121693121799%_)))
                                       (if (eq? (gx#stx-e _%hd121694121802%_)
                                                'rename:)
                                           (if (gx#stx-pair?
                                                _%tl121695121804%_)
                                               (let ((_%e121696121807%_
                                                      (gx#syntax-e
                                                       _%tl121695121804%_)))
                                                 (let ((_%hd121697121810%_
                                                        (##car _%e121696121807%_))
                                                       (_%tl121698121812%_
                                                        (##cdr _%e121696121807%_)))
                                                   (let ((_%id121815%_
                                                          _%hd121697121810%_))
                                                     (if (gx#stx-pair?
                                                          _%tl121698121812%_)
                                                         (let ((_%e121699121817%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl121698121812%_)))
                   (let ((_%hd121700121820%_ (##car _%e121699121817%_))
                         (_%tl121701121822%_ (##cdr _%e121699121817%_)))
                     (let ((_%name121825%_ _%hd121700121820%_))
                       (if (gx#stx-null? _%tl121701121822%_)
                           (if '#t
                               (let* ((_%phi121827%_
                                       (gx#current-export-expander-phi))
                                      (_%$e121829%_
                                       (gx#core-resolve-identifier__1
                                        _%id121815%_
                                        _%phi121827%_)))
                                 (if _%$e121829%_
                                     ((lambda (_%bind121832%_)
                                        (_%K121672%_
                                         _%rest121673%_
                                         (cons (_%make-export__125009125010%_
                                                _%bind121832%_
                                                _%phi121827%_
                                                (gx#current-expander-context)
                                                _%name121825%_)
                                               _%r121674%_)))
                                      _%$e121829%_)
                                     (let ()
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Reference to unbound identifier"
                                        _%stx121512%_
                                        _%hd121671%_
                                        _%id121815%_))))
                               (_%E121692121795%_))
                           (_%E121692121795%_)))))
                 (_%E121692121795%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E121692121795%_))
                                           (_%E121692121795%_))))
                                   (_%E121692121795%_))))
                            (_%E121678121885%_
                             (lambda ()
                               (if (gx#stx-pair? _%e121675121707%_)
                                   (let ((_%e121680121839%_
                                          (gx#syntax-e _%e121675121707%_)))
                                     (let ((_%hd121681121842%_
                                            (##car _%e121680121839%_))
                                           (_%tl121682121844%_
                                            (##cdr _%e121680121839%_)))
                                       (if (eq? (gx#stx-e _%hd121681121842%_)
                                                'spec:)
                                           (if (gx#stx-pair?
                                                _%tl121682121844%_)
                                               (let ((_%e121683121847%_
                                                      (gx#syntax-e
                                                       _%tl121682121844%_)))
                                                 (let ((_%hd121684121850%_
                                                        (##car _%e121683121847%_))
                                                       (_%tl121685121852%_
                                                        (##cdr _%e121683121847%_)))
                                                   (let ((_%phi121855%_
                                                          _%hd121684121850%_))
                                                     (if (gx#stx-pair?
                                                          _%tl121685121852%_)
                                                         (let ((_%e121686121857%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl121685121852%_)))
                   (let ((_%hd121687121860%_ (##car _%e121686121857%_))
                         (_%tl121688121862%_ (##cdr _%e121686121857%_)))
                     (let ((_%id121865%_ _%hd121687121860%_))
                       (if (gx#stx-pair? _%tl121688121862%_)
                           (let ((_%e121689121867%_
                                  (gx#syntax-e _%tl121688121862%_)))
                             (let ((_%hd121690121870%_
                                    (##car _%e121689121867%_))
                                   (_%tl121691121872%_
                                    (##cdr _%e121689121867%_)))
                               (let ((_%name121875%_ _%hd121690121870%_))
                                 (if (gx#stx-null? _%tl121691121872%_)
                                     (if (and (gx#stx-fixnum? _%phi121855%_)
                                              (gx#identifier? _%id121865%_)
                                              (gx#identifier? _%name121875%_))
                                         (let* ((_%phi121877%_
                                                 (gx#stx-e _%phi121855%_))
                                                (_%$e121879%_
                                                 (gx#core-resolve-identifier__1
                                                  _%id121865%_
                                                  _%phi121877%_)))
                                           (if _%$e121879%_
                                               ((lambda (_%bind121882%_)
                                                  (_%K121672%_
                                                   _%rest121673%_
                                                   (cons (_%make-export__125009125010%_
                                                          _%bind121882%_
                                                          _%phi121877%_
                                                          (gx#current-expander-context)
                                                          _%name121875%_)
                                                         _%r121674%_)))
                                                _%$e121879%_)
                                               (let ()
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Reference to unbound identifier"
                                                  _%stx121512%_
                                                  _%hd121671%_
                                                  _%id121865%_))))
                                         (_%E121679121835%_))
                                     (_%E121679121835%_)))))
                           (_%E121679121835%_)))))
                 (_%E121679121835%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E121679121835%_))
                                           (_%E121679121835%_))))
                                   (_%E121679121835%_))))
                            (_%E121677121897%_
                             (lambda ()
                               (let ((_%id121889%_ _%e121675121707%_))
                                 (if (gx#identifier? _%id121889%_)
                                     (let ((_%$e121891%_
                                            (gx#core-resolve-identifier__1
                                             _%id121889%_
                                             (gx#current-export-expander-phi))))
                                       (if _%$e121891%_
                                           ((lambda (_%bind121894%_)
                                              (_%K121672%_
                                               _%rest121673%_
                                               (cons (_%make-export__0__125011125014%_
                                                      _%bind121894%_)
                                                     _%r121674%_)))
                                            _%$e121891%_)
                                           (let ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Reference to unbound identifier"
                                              _%stx121512%_
                                              _%hd121671%_))))
                                     (_%E121678121885%_)))))
                            (_%E121676121961%_
                             (lambda ()
                               (if (eq? (gx#stx-e _%e121675121707%_) '#t)
                                   (if '#t
                                       (let* ((_%current-ctx121901%_
                                               (gx#current-expander-context))
                                              (_%current-phi121903%_
                                               (gx#current-export-expander-phi))
                                              (_%phi-ctx121905%_
                                               (gx#core-context-shift
                                                _%current-ctx121901%_
                                                _%current-phi121903%_))
                                              (_%phi-bind121907%_
                                               (hash->list
                                                (##unchecked-structure-ref
                                                 _%phi-ctx121905%_
                                                 '2
                                                 '#f
                                                 '#f))))
                                         (let _%lp121910%_ ((_%bind-rest121912%_
                                                             _%phi-bind121907%_)
                                                            (_%set121913%_
                                                             '()))
                                           (let* ((_%bind-rest121914121924%_
                                                   _%bind-rest121912%_)
                                                  (_%else121916121932%_
                                                   (lambda ()
                                                     (_%K121672%_
                                                      _%rest121673%_
                                                      (cons (##structure
                                                             gx#export-set::t
                                                             '#f
                                                             _%current-phi121903%_
                                                             _%set121913%_)
                                                            _%r121674%_))))
                                                  (_%K121918121942%_
                                                   (lambda (_%bind-rest121935%_
                                                            _%bind121936%_
                                                            _%key121937%_)
                                                     (if (or (##structure-direct-instance-of?
                                                              _%bind121936%_
                                                              'gx#import-binding::t)
                                                             (gx#private-feature-binding?
                                                              _%bind121936%_))
                                                         (_%lp121910%_
                                                          _%bind-rest121935%_
                                                          _%set121913%_)
                                                         (_%lp121910%_
                                                          _%bind-rest121935%_
                                                          (cons (_%make-export__2__125013125016%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%bind121936%_
                         _%current-phi121903%_
                         _%current-ctx121901%_)
                        _%set121913%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _%bind-rest121914121924%_)
                                                 (let ((_%hd121919121945%_
                                                        (##car _%bind-rest121914121924%_))
                                                       (_%tl121920121947%_
                                                        (##cdr _%bind-rest121914121924%_)))
                                                   (if (##pair? _%hd121919121945%_)
                                                       (let ((_%hd121921121950%_
                                                              (##car _%hd121919121945%_))
                                                             (_%tl121922121952%_
                                                              (##cdr _%hd121919121945%_)))
                                                         (let* ((_%key121955%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd121921121950%_)
                        (_%bind121957%_ _%tl121922121952%_)
                        (_%bind-rest121959%_ _%tl121920121947%_))
                   (_%K121918121942%_
                    _%bind-rest121959%_
                    _%bind121957%_
                    _%key121955%_)))
               (_%else121916121932%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%else121916121932%_)))))
                                       (_%E121677121897%_))
                                   (_%E121677121897%_)))))
                       (_%E121676121961%_))))
                  (_%export-imports121517%_
                   (lambda (_%src121547%_ _%r121548%_)
                     (letrec* ((_%current-ctx121550%_
                                (gx#current-expander-context))
                               (_%current-phi121551%_
                                (gx#current-export-expander-phi))
                               (_%import->export121552%_
                                (lambda (_%in121633%_)
                                  (let* ((_%in121634121642%_ _%in121633%_)
                                         (_%E121636121646%_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _%in121634121642%_
                                                   '((module-import
                                                      out
                                                      key
                                                      phi)))
                                            '#!void))
                                         (_%K121637121653%_
                                          (lambda (_%phi121649%_
                                                   _%key121650%_
                                                   _%out121651%_)
                                            (##structure
                                             gx#module-export::t
                                             _%current-ctx121550%_
                                             _%key121650%_
                                             _%phi121649%_
                                             _%key121650%_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _%in121634121642%_
                                         'gx#module-import::t)
                                        (let* ((_%e121638121656%_
                                                (##unchecked-structure-ref
                                                 _%in121634121642%_
                                                 '1
                                                 '#f
                                                 '#f))
                                               (_%out121659%_
                                                _%e121638121656%_)
                                               (_%e121639121661%_
                                                (##unchecked-structure-ref
                                                 _%in121634121642%_
                                                 '2
                                                 '#f
                                                 '#f))
                                               (_%key121664%_
                                                _%e121639121661%_)
                                               (_%e121640121666%_
                                                (##unchecked-structure-ref
                                                 _%in121634121642%_
                                                 '3
                                                 '#f
                                                 '#f))
                                               (_%phi121669%_
                                                _%e121640121666%_))
                                          (_%K121637121653%_
                                           _%phi121669%_
                                           _%key121664%_
                                           _%out121659%_))
                                        (_%E121636121646%_)))))
                               (_%fold-e121553%_
                                (lambda (_%in121555%_ _%r121556%_)
                                  (let* ((_%in121557121571%_ _%in121555%_)
                                         (_%else121560121579%_
                                          (lambda () _%r121556%_)))
                                    (let ((_%K121566121615%_
                                           (lambda (_%phi121611%_
                                                    _%key121612%_
                                                    _%out121613%_)
                                             (if (and (fx= _%phi121611%_
                                                           _%current-phi121551%_)
                                                      (eq? _%src121547%_
                                                           (##unchecked-structure-ref
                                                            _%out121613%_
                                                            '1
                                                            '#f
                                                            '#f)))
                                                 (cons (_%import->export121552%_
                                                        _%in121555%_)
                                                       _%r121556%_)
                                                 _%r121556%_)))
                                          (_%K121562121590%_
                                           (lambda (_%imports121583%_
                                                    _%phi121584%_
                                                    _%ctx121585%_)
                                             (if (and (fx= _%phi121584%_
                                                           _%current-phi121551%_)
                                                      (eq? _%src121547%_
                                                           _%ctx121585%_))
                                                 (__foldl1
                                                  (lambda (_%in121587%_
                                                           _%r121588%_)
                                                    (cons (_%import->export121552%_
                                                           _%in121587%_)
                                                          _%r121588%_))
                                                  _%r121556%_
                                                  _%imports121583%_)
                                                 _%r121556%_))))
                                      (let ((_%try-match121559121608%_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _%in121557121571%_
                                                    'gx#import-set::t)
                                                   (let* ((_%e121563121593%_
                                                           (##unchecked-structure-ref
                                                            _%in121557121571%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                          (_%e121564121598%_
                                                           (##unchecked-structure-ref
                                                            _%in121557121571%_
                                                            '2
                                                            '#f
                                                            '#f))
                                                          (_%e121565121603%_
                                                           (##unchecked-structure-ref
                                                            _%in121557121571%_
                                                            '3
                                                            '#f
                                                            '#f)))
                                                     (let ((_%ctx121596%_
                                                            _%e121563121593%_)
                                                           (_%phi121601%_
                                                            _%e121564121598%_)
                                                           (_%imports121606%_
                                                            _%e121565121603%_))
                                                       (_%K121562121590%_
                                                        _%imports121606%_
                                                        _%phi121601%_
                                                        _%ctx121596%_)))
                                                   (_%else121560121579%_)))))
                                        (if (##structure-direct-instance-of?
                                             _%in121557121571%_
                                             'gx#module-import::t)
                                            (let* ((_%e121567121618%_
                                                    (##unchecked-structure-ref
                                                     _%in121557121571%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                   (_%e121568121623%_
                                                    (##unchecked-structure-ref
                                                     _%in121557121571%_
                                                     '2
                                                     '#f
                                                     '#f))
                                                   (_%e121569121628%_
                                                    (##unchecked-structure-ref
                                                     _%in121557121571%_
                                                     '3
                                                     '#f
                                                     '#f)))
                                              (let ((_%out121621%_
                                                     _%e121567121618%_)
                                                    (_%key121626%_
                                                     _%e121568121623%_)
                                                    (_%phi121631%_
                                                     _%e121569121628%_))
                                                (_%K121566121615%_
                                                 _%phi121631%_
                                                 _%key121626%_
                                                 _%out121621%_)))
                                            (_%try-match121559121608%_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _%src121547%_
                              _%current-phi121551%_
                              (__foldl1
                               _%fold-e121553%_
                               '()
                               (##unchecked-structure-ref
                                _%current-ctx121550%_
                                '8
                                '#f
                                '#f)))
                             _%r121548%_))))
                  (_%export!121518%_
                   (lambda (_%rbody121534%_)
                     (letrec* ((_%current-ctx121536%_
                                (gx#current-expander-context))
                               (_%fold-e121537%_
                                (lambda (_%out121541%_ _%r121542%_)
                                  (if (##structure-direct-instance-of?
                                       _%out121541%_
                                       'gx#module-export::t)
                                      (let () (cons _%out121541%_ _%r121542%_))
                                      (if (##structure-direct-instance-of?
                                           _%out121541%_
                                           'gx#export-set::t)
                                          (let ()
                                            (__foldl1
                                             cons
                                             _%r121542%_
                                             (##unchecked-structure-ref
                                              _%out121541%_
                                              '3
                                              '#f
                                              '#f)))
                                          (let () _%r121542%_))))))
                       (let ((_%body121539%_ (reverse _%rbody121534%_)))
                         (##unchecked-structure-set!
                          _%current-ctx121536%_
                          (__foldl1
                           _%fold-e121537%_
                           (##unchecked-structure-ref
                            _%current-ctx121536%_
                            '9
                            '#f
                            '#f)
                           _%body121539%_)
                          '9
                          '#f
                          '#f)
                         _%body121539%_))))
                  (_%expanded-export?121519%_
                   (lambda (_%e121529%_)
                     (let ((_%$e121531%_
                            (##structure-direct-instance-of?
                             _%e121529%_
                             'gx#module-export::t)))
                       (if _%$e121531%_
                           _%$e121531%_
                           (##structure-direct-instance-of?
                            _%e121529%_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _%internal-expand?121513%_)
              (let ()
                (let ((_%rbody121525%_
                       (gx#core-expand-import/export
                        _%stx121512%_
                        _%expanded-export?121519%_
                        'apply-export-expander
                        gx#current-export-expander-phi
                        _%expand1121516%_)))
                  (if _%internal-expand?121513%_
                      (reverse _%rbody121525%_)
                      (gx#core-quote-syntax__1
                       (gx#core-cons
                        '%#export
                        (_%export!121518%_ _%rbody121525%_))
                       (gx#stx-source _%stx121512%_)))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (let ()
                    (gx#core-quote-syntax__1
                     (gx#core-cons '%#begin '())
                     (gx#stx-source _%stx121512%_)))
                  (let ()
                    (gx#raise-syntax-error
                     '#f
                     '"Illegal context"
                     _%stx121512%_)))))))
    (define gx#core-expand-export%__0
      (lambda (_%stx122011%_)
        (let ((_%internal-expand?122013%_ '#f))
          (gx#core-expand-export%__%
           _%stx122011%_
           _%internal-expand?122013%_))))
    (define gx#core-expand-export%
      (lambda _g125085_
        (let ((_g125084_ (##length _g125085_)))
          (cond ((##fx= _g125084_ 1)
                 (apply (lambda (_%stx122011%_)
                          (gx#core-expand-export%__0 _%stx122011%_))
                        _g125085_))
                ((##fx= _g125084_ 2)
                 (apply (lambda (_%stx122015%_ _%internal-expand?122016%_)
                          (gx#core-expand-export%__%
                           _%stx122015%_
                           _%internal-expand?122016%_))
                        _g125085_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g125085_))))))
    (define gx#core-expand-export-source
      (lambda (_%hd121509%_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _%hd121509%_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_%stx121479%_)
        (let* ((_%e121480121487%_ _%stx121479%_)
               (_%E121482121491%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121480121487%_)))
               (_%E121481121505%_
                (lambda ()
                  (if (gx#stx-pair? _%e121480121487%_)
                      (let ((_%e121483121495%_
                             (gx#syntax-e _%e121480121487%_)))
                        (let ((_%hd121484121498%_ (##car _%e121483121495%_))
                              (_%tl121485121500%_ (##cdr _%e121483121495%_)))
                          (let ((_%body121503%_ _%tl121485121500%_))
                            (if (gx#identifier-list? _%body121503%_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _%body121503%_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _%body121503%_))
                                   (gx#stx-source _%stx121479%_)))
                                (_%E121482121491%_)))))
                      (_%E121482121491%_)))))
          (_%E121481121505%_))))
    (define gx#core-bind-feature!__%
      (lambda (_%id121445%_ _%private?121446%_ _%phi121447%_ _%ctx121448%_)
        (gx#core-bind-syntax!__%
         _%id121445%_
         ((if _%private?121446%_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _%id121445%_))
         _%private?121446%_
         _%phi121447%_
         _%ctx121448%_)))
    (define gx#core-bind-feature!__0
      (lambda (_%id121453%_)
        (let* ((_%private?121455%_ '#f)
               (_%phi121457%_ (gx#current-expander-phi))
               (_%ctx121459%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id121453%_
           _%private?121455%_
           _%phi121457%_
           _%ctx121459%_))))
    (define gx#core-bind-feature!__1
      (lambda (_%id121461%_ _%private?121462%_)
        (let* ((_%phi121464%_ (gx#current-expander-phi))
               (_%ctx121466%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id121461%_
           _%private?121462%_
           _%phi121464%_
           _%ctx121466%_))))
    (define gx#core-bind-feature!__2
      (lambda (_%id121468%_ _%private?121469%_ _%phi121470%_)
        (let ((_%ctx121472%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id121468%_
           _%private?121469%_
           _%phi121470%_
           _%ctx121472%_))))
    (define gx#core-bind-feature!
      (lambda _g125087_
        (let ((_g125086_ (##length _g125087_)))
          (cond ((##fx= _g125086_ 1)
                 (apply (lambda (_%id121453%_)
                          (gx#core-bind-feature!__0 _%id121453%_))
                        _g125087_))
                ((##fx= _g125086_ 2)
                 (apply (lambda (_%id121461%_ _%private?121462%_)
                          (gx#core-bind-feature!__1
                           _%id121461%_
                           _%private?121462%_))
                        _g125087_))
                ((##fx= _g125086_ 3)
                 (apply (lambda (_%id121468%_ _%private?121469%_ _%phi121470%_)
                          (gx#core-bind-feature!__2
                           _%id121468%_
                           _%private?121469%_
                           _%phi121470%_))
                        _g125087_))
                ((##fx= _g125086_ 4)
                 (apply (lambda (_%id121474%_
                                 _%private?121475%_
                                 _%phi121476%_
                                 _%ctx121477%_)
                          (gx#core-bind-feature!__%
                           _%id121474%_
                           _%private?121475%_
                           _%phi121476%_
                           _%ctx121477%_))
                        _g125087_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g125087_))))))))
