(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1783878477)
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
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '((print: name))))
       '#f))
    (define gx#module-import? (__make-class-predicate gx#module-import::t))
    (define gx#make-module-import
      (lambda _%$args191929%_
        (apply make-instance gx#module-import::t _%$args191929%_)))
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
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '((print: name))))
       '#f))
    (define gx#module-export? (__make-class-predicate gx#module-export::t))
    (define gx#make-module-export
      (lambda _%$args191926%_
        (apply make-instance gx#module-export::t _%$args191926%_)))
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
      (lambda _%$args191923%_
        (apply make-instance gx#import-set::t _%$args191923%_)))
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
      (lambda _%$args191920%_
        (apply make-instance gx#export-set::t _%$args191920%_)))
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
      (lambda _%$args191917%_
        (apply make-instance gx#import-expander::t _%$args191917%_)))
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
      (lambda _%$args191914%_
        (apply make-instance gx#export-expander::t _%$args191914%_)))
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
      (lambda _%$args191911%_
        (apply make-instance gx#import-export-expander::t _%$args191911%_)))
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
      (lambda (_%path191908%_ _%fun191909%_)
        (call-with-input-file
         (cons 'path: (cons _%path191908%_ gx#source-file-settings))
         _%fun191909%_)))
    (define gx#module-context:::init!
      (lambda (_%self191891%_
               _%id191892%_
               _%super191893%_
               _%ns191894%_
               _%path191895%_)
        (let ((_%self191898%_ _%self191891%_))
          (if (##fx< '11 (##structure-length _%self191898%_))
              (begin
                (##unchecked-structure-set!
                 _%self191898%_
                 _%id191892%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self191898%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self191898%_
                 _%super191893%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self191898%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self191898%_ '#f '5 '#f '#f)
                (##unchecked-structure-set!
                 _%self191898%_
                 _%ns191894%_
                 '6
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self191898%_
                 _%path191895%_
                 '7
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self191898%_ '() '8 '#f '#f)
                (##unchecked-structure-set! _%self191898%_ '() '9 '#f '#f)
                (##unchecked-structure-set! _%self191898%_ '#f '10 '#f '#f)
                (##unchecked-structure-set! _%self191898%_ '#f '11 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self191898%_
                     '11
                     (##structure-length _%self191898%_))))))
    (__bind-method!__%
     gx#module-context::t
     ':init!
     gx#module-context:::init!
     '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_%self191724%_ _%ctx191725%_ _%root191726%_)
        (let* ((_%self191729%_ _%self191724%_)
               (_%super191745%_
                (let ((_%$e191739%_ _%root191726%_))
                  (if _%$e191739%_
                      _%$e191739%_
                      (let ((_%$e191742%_ (gx#core-context-root__0)))
                        (if _%$e191742%_
                            _%$e191742%_
                            (let ((__obj191973
                                   (##structure gx#root-context::t '#f '#f)))
                              (let ((__constructor191974
                                     (direct-method-ref
                                      gx#root-context::t
                                      __obj191973
                                      ':init!)))
                                (if __constructor191974
                                    (__constructor191974 __obj191973)
                                    (error '"missing constructor method implementation"
                                           'class:
                                           gx#root-context::t
                                           'method:
                                           ':init!)))
                              __obj191973)))))))
          (if _%ctx191725%_
              (let ((_%id191748%_
                     (##structure-ref
                      _%ctx191725%_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_%path191749%_
                     (##structure-ref
                      _%ctx191725%_
                      '7
                      gx#module-context::t
                      '#f))
                    (_%in191750%_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _%ctx191725%_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_%e191751%_
                     (__make-atomic-promise
                      (lambda () (gx#eval-module _%ctx191725%_)))))
                (if (##fx< '8 (##structure-length _%self191729%_))
                    (begin
                      (##unchecked-structure-set!
                       _%self191729%_
                       _%id191748%_
                       '1
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self191729%_
                       (make-hash-table-eq 'size: (##length _%in191750%_))
                       '2
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self191729%_
                       _%super191745%_
                       '3
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self191729%_
                       '#f
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self191729%_
                       '#f
                       '5
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self191729%_
                       _%path191749%_
                       '6
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self191729%_
                       _%in191750%_
                       '7
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self191729%_
                       _%e191751%_
                       '8
                       '#f
                       '#f)
                      '#!void)
                    (error '"struct-instance-init!: too many arguments for struct"
                           _%self191729%_
                           '8
                           (##structure-length _%self191729%_)))
                (##for-each
                 (lambda (_%$%g191752191754%_)
                   (gx#core-bind-weak-import!__%
                    _%$%g191752191754%_
                    _%self191729%_))
                 _%in191750%_))
              (if (##fx< '8 (##structure-length _%self191729%_))
                  (begin
                    (##unchecked-structure-set! _%self191729%_ '#f '1 '#f '#f)
                    (##unchecked-structure-set!
                     _%self191729%_
                     (make-hash-table-eq)
                     '2
                     '#f
                     '#f)
                    (##unchecked-structure-set!
                     _%self191729%_
                     _%super191745%_
                     '3
                     '#f
                     '#f)
                    (##unchecked-structure-set! _%self191729%_ '#f '4 '#f '#f)
                    (##unchecked-structure-set! _%self191729%_ '#f '5 '#f '#f)
                    (##unchecked-structure-set! _%self191729%_ '#f '6 '#f '#f)
                    (##unchecked-structure-set! _%self191729%_ '() '7 '#f '#f)
                    (##unchecked-structure-set! _%self191729%_ '#f '8 '#f '#f)
                    '#!void)
                  (error '"struct-instance-init!: too many arguments for struct"
                         _%self191729%_
                         '8
                         (##structure-length _%self191729%_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_%self191760%_ _%ctx191761%_)
        (let ((_%root191763%_ '#f))
          (gx#prelude-context:::init!__%
           _%self191760%_
           _%ctx191761%_
           _%root191763%_))))
    (define gx#prelude-context:::init!
      (lambda _g191980_
        (let ((_g191981_ (##length _g191980_)))
          (cond ((##fx= _g191981_ 2)
                 (apply gx#prelude-context:::init!__0 _g191980_))
                ((##fx= _g191981_ 3)
                 (apply gx#prelude-context:::init!__% _g191980_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g191980_))))))
    (__bind-method!__%
     gx#prelude-context::t
     ':init!
     gx#prelude-context:::init!
     '#f)
    (define gx#import-export-expander-init!
      (lambda (_%self191598%_ _%e191599%_)
        (if (##fx< '3 (##structure-length _%self191598%_))
            (begin
              (##unchecked-structure-set!
               _%self191598%_
               _%e191599%_
               '1
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self191598%_
               (gx#current-expander-context)
               '2
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self191598%_
               (##fx- (gx#current-expander-phi) '1)
               '3
               '#f
               '#f)
              '#!void)
            (error '"struct-instance-init!: too many arguments for struct"
                   _%self191598%_
                   '3
                   (##structure-length _%self191598%_)))))
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
      (lambda (_%$%g191224191227%_ _%$%g191225191229%_)
        (gx#core-apply-user-expander__%
         _%$%g191224191227%_
         _%$%g191225191229%_
         'apply-import-expander)))
    (__bind-method!__%
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_%$%g191095191098%_ _%$%g191096191100%_)
        (gx#core-apply-user-expander__%
         _%$%g191095191098%_
         _%$%g191096191100%_
         'apply-export-expander)))
    (__bind-method!__%
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_%ctx190966%_)
        (let* ((_%path190968%_
                (##structure-ref _%ctx190966%_ '7 gx#module-context::t '#f))
               (_%path190970%_
                (if (pair? _%path190968%_)
                    (##last _%path190968%_)
                    _%path190968%_)))
          (if (string? _%path190970%_) _%path190970%_ '#f))))
    (define gx#import-module__%
      (lambda (_%path190942%_ _%reload?190943%_ _%eval?190944%_)
        (let ((_%ctx190946%_
               ((gx#current-expander-module-import)
                _%path190942%_
                _%reload?190943%_)))
          (if (and _%ctx190946%_ _%eval?190944%_)
              (gx#eval-module _%ctx190946%_)
              '#!void)
          _%ctx190946%_)))
    (define gx#import-module__0
      (lambda (_%path190951%_)
        (let* ((_%reload?190953%_ '#f) (_%eval?190955%_ '#f))
          (gx#import-module__%
           _%path190951%_
           _%reload?190953%_
           _%eval?190955%_))))
    (define gx#import-module__1
      (lambda (_%path190957%_ _%reload?190958%_)
        (let ((_%eval?190960%_ '#f))
          (gx#import-module__%
           _%path190957%_
           _%reload?190958%_
           _%eval?190960%_))))
    (define gx#import-module
      (lambda _g191982_
        (let ((_g191983_ (##length _g191982_)))
          (cond ((##fx= _g191983_ 1) (apply gx#import-module__0 _g191982_))
                ((##fx= _g191983_ 2) (apply gx#import-module__1 _g191982_))
                ((##fx= _g191983_ 3) (apply gx#import-module__% _g191982_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g191982_))))))
    (define gx#eval-module
      (lambda (_%mod190939%_)
        ((gx#current-expander-module-eval) _%mod190939%_)))
    (define gx#core-eval-module
      (lambda (_%obj190918%_)
        (letrec ((_%force-e190920%_
                  (lambda (_%getf190934%_ _%e190935%_)
                    (call-with-parameters__1
                     (lambda ()
                       (call-with-parameters__1
                        (lambda () (force (_%getf190934%_ _%e190935%_)))
                        gx#current-expander-phi
                        '0))
                     gx#current-expander-context
                     _%e190935%_))))
          (let _%recur190922%_ ((_%e190924%_ _%obj190918%_))
            (if (##structure-instance-of? _%e190924%_ 'gx#module-context::t)
                (let ()
                  (let ((_%$e190927%_
                         (gx#core-context-prelude__% _%e190924%_)))
                    (if _%$e190927%_ (_%recur190922%_ _%$e190927%_) '#!void))
                  (_%force-e190920%_ gx#module-context-e _%e190924%_))
                (if (##structure-instance-of?
                     _%e190924%_
                     'gx#prelude-context::t)
                    (_%force-e190920%_ gx#prelude-context-e _%e190924%_)
                    (if (gx#stx-string? _%e190924%_)
                        (_%recur190922%_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _%e190924%_)))
                        (if (gx#core-library-module-path? _%e190924%_)
                            (_%recur190922%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%e190924%_)))
                            (error '"cannot eval module" _%obj190918%_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_%ctx190898%_)
        (let _%lp190900%_ ((_%e190902%_ _%ctx190898%_))
          (if (or (##structure-instance-of? _%e190902%_ 'gx#module-context::t)
                  (##structure-instance-of? _%e190902%_ 'gx#local-context::t))
              (_%lp190900%_ (##unchecked-structure-ref _%e190902%_ '3 '#f '#f))
              (if (##structure-instance-of? _%e190902%_ 'gx#prelude-context::t)
                  _%e190902%_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_%ctx190914%_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _%ctx190914%_))))
    (define gx#core-context-prelude
      (lambda _g191984_
        (let ((_g191985_ (##length _g191984_)))
          (cond ((##fx= _g191985_ 0)
                 (apply gx#core-context-prelude__0 _g191984_))
                ((##fx= _g191985_ 1)
                 (apply gx#core-context-prelude__% _g191984_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g191984_))))))
    (define gx#core-module->prelude-context
      (lambda (_%ctx190889%_)
        (let ((_%$e190891%_ (__hash-get gx#__module-registry _%ctx190889%_)))
          (if _%$e190891%_
              _%$e190891%_
              (let ((_%pre190895%_
                     (let ((__obj191975
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
                        __obj191975
                        _%ctx190889%_)
                       __obj191975)))
                (__hash-put! gx#__module-registry _%ctx190889%_ _%pre190895%_)
                _%pre190895%_)))))
    (define gx#core-import-module__%
      (lambda (_%rpath190757%_ _%reload?190758%_)
        (letrec ((_%import-source190760%_
                  (lambda (_%path190848%_)
                    (if (member _%path190848%_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _%path190848%_)
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
                                      (let ((_g191986_
                                             (gx#core-read-module
                                              _%path190848%_)))
                                        (begin
                                          (let ((_g191987_
                                                 (if (##values? _g191986_)
                                                     (##values-length
                                                      _g191986_)
                                                     1)))
                                            (if (not (##fx= _g191987_ 4))
                                                (error "Context expects 4 values"
                                                       _g191987_)))
                                          (let ((_%pre190856%_
                                                 (##values-ref _g191986_ 0))
                                                (_%id190857%_
                                                 (##values-ref _g191986_ 1))
                                                (_%ns190858%_
                                                 (##values-ref _g191986_ 2))
                                                (_%body190859%_
                                                 (##values-ref _g191986_ 3)))
                                            (let* ((_%prelude190869%_
                                                    (if (##structure-instance-of?
                                                         _%pre190856%_
                                                         'gx#prelude-context::t)
                                                        _%pre190856%_
                                                        (if (##structure-instance-of?
                                                             _%pre190856%_
                                                             'gx#module-context::t)
                                                            (gx#core-module->prelude-context
                                                             _%pre190856%_)
                                                            (if (string? _%pre190856%_)
                                                                (gx#core-module->prelude-context
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#core-import-module__0 _%pre190856%_))
                        (if (not _%pre190856%_)
                            (let ((_%$e190865%_
                                   (gx#current-expander-module-prelude)))
                              (if _%$e190865%_
                                  _%$e190865%_
                                  (let ((__obj191976
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
                                     __obj191976
                                     '#f)
                                    __obj191976)))
                            (error '"cannot import module; unknown prelude"
                                   _%rpath190757%_
                                   _%pre190856%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%ctx190871%_
                                                    (let ((__obj191977
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
                                                       __obj191977
                                                       _%id190857%_
                                                       _%prelude190869%_
                                                       _%ns190858%_
                                                       _%path190848%_)
                                                      __obj191977))
                                                   (_%body190873%_
                                                    (gx#core-expand-module-begin
                                                     _%body190859%_
                                                     _%ctx190871%_))
                                                   (_%body190875%_
                                                    (gx#core-quote-syntax__%
                                                     (gx#core-cons
                                                      '%#begin
                                                      _%body190873%_)
                                                     _%path190848%_
                                                     _%ctx190871%_
                                                     '())))
                                              (##unchecked-structure-set!
                                               _%ctx190871%_
                                               (__make-atomic-promise
                                                (lambda ()
                                                  (gx#eval-syntax*
                                                   _%body190875%_)))
                                               '10
                                               '#f
                                               '#f)
                                              (##unchecked-structure-set!
                                               _%ctx190871%_
                                               _%body190875%_
                                               '11
                                               '#f
                                               '#f)
                                              (__hash-put!
                                               gx#__module-registry
                                               _%path190848%_
                                               _%ctx190871%_)
                                              (__hash-put!
                                               gx#__module-registry
                                               _%id190857%_
                                               _%ctx190871%_)
                                              _%ctx190871%_)))))
                                    gx#current-export-expander-phi
                                    '#f))
                                 gx#current-import-expander-phi
                                 '#f))
                              gx#current-expander-path
                              (cons _%path190848%_
                                    (gx#current-expander-path))))
                           gx#current-expander-phi
                           '0))
                        gx#current-expander-marks
                        '()))
                     gx#current-expander-context
                     (gx#core-context-root__0))))
                 (_%import-submodule190761%_
                  (lambda (_%rpath190777%_)
                    (let* ((_%$%rpath190778190785%_ _%rpath190777%_)
                           (_%$%E190780190788%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%$%rpath190778190785%_
                                     '([origin . refs]))
                              '#!void))
                           (_%$%K190781190836%_
                            (lambda (_%refs190791%_ _%origin190792%_)
                              (let ((_%ctx190794%_
                                     (if _%origin190792%_
                                         (gx#core-import-module__%
                                          _%origin190792%_
                                          _%reload?190758%_)
                                         (gx#current-expander-context))))
                                (let _%lp190796%_ ((_%rest190798%_
                                                    _%refs190791%_)
                                                   (_%ctx190799%_
                                                    _%ctx190794%_))
                                  (let* ((_%$%rest190800190808%_
                                          _%rest190798%_)
                                         (_%$%else190802190816%_
                                          (lambda () _%ctx190799%_))
                                         (_%$%K190804190824%_
                                          (lambda (_%rest190819%_ _%id190820%_)
                                            (let ((_%bind190822%_
                                                   (gx#resolve-identifier__%
                                                    _%id190820%_
                                                    '0
                                                    _%ctx190799%_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _%bind190822%_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _%bind190822%_
                                                         '5
                                                         '#f
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_%lp190796%_
                                                   _%rest190819%_
                                                   (##unchecked-structure-ref
                                                    _%bind190822%_
                                                    '5
                                                    '#f
                                                    '#f))
                                                  (error '"cannot import submodule; not bound as a module"
                                                         _%rpath190777%_
                                                         _%id190820%_
                                                         _%bind190822%_))))))
                                    (if (pair? _%$%rest190800190808%_)
                                        (let ((_%$%hd190805190827%_
                                               (##car _%$%rest190800190808%_))
                                              (_%$%tl190806190829%_
                                               (##cdr _%$%rest190800190808%_)))
                                          (let* ((_%id190832%_
                                                  _%$%hd190805190827%_)
                                                 (_%rest190834%_
                                                  _%$%tl190806190829%_))
                                            (_%$%K190804190824%_
                                             _%rest190834%_
                                             _%id190832%_)))
                                        (_%$%else190802190816%_))))))))
                      (if (pair? _%$%rpath190778190785%_)
                          (let ((_%$%hd190782190839%_
                                 (##car _%$%rpath190778190785%_))
                                (_%$%tl190783190841%_
                                 (##cdr _%$%rpath190778190785%_)))
                            (let* ((_%origin190844%_ _%$%hd190782190839%_)
                                   (_%refs190846%_ _%$%tl190783190841%_))
                              (_%$%K190781190836%_
                               _%refs190846%_
                               _%origin190844%_)))
                          (_%$%E190780190788%_))))))
          (let ((_%$e190763%_
                 (if (not _%reload?190758%_)
                     (__hash-get gx#__module-registry _%rpath190757%_)
                     '#f)))
            (if _%$e190763%_
                _%$e190763%_
                (if (list? _%rpath190757%_)
                    (_%import-submodule190761%_ _%rpath190757%_)
                    (if (gx#core-library-module-path? _%rpath190757%_)
                        (let ((_%ctx190768%_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _%rpath190757%_)
                                _%reload?190758%_)))
                          (__hash-put!
                           gx#__module-registry
                           _%rpath190757%_
                           _%ctx190768%_)
                          _%ctx190768%_)
                        (let* ((_%npath190771%_
                                (path-normalize _%rpath190757%_))
                               (_%$e190773%_
                                (if (not _%reload?190758%_)
                                    (__hash-get
                                     gx#__module-registry
                                     _%npath190771%_)
                                    '#f)))
                          (if _%$e190773%_
                              _%$e190773%_
                              (_%import-source190760%_
                               _%npath190771%_))))))))))
    (define gx#core-import-module__0
      (lambda (_%rpath190882%_)
        (let ((_%reload?190884%_ '#f))
          (gx#core-import-module__% _%rpath190882%_ _%reload?190884%_))))
    (define gx#core-import-module
      (lambda _g191988_
        (let ((_g191989_ (##length _g191988_)))
          (cond ((##fx= _g191989_ 1)
                 (apply gx#core-import-module__0 _g191988_))
                ((##fx= _g191989_ 2)
                 (apply gx#core-import-module__% _g191988_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g191988_))))))
    (define gx#core-read-module
      (lambda (_%path190739%_)
        (__with-catch
         (lambda (_%exn190741%_)
           (if (datum-parsing-exception? _%exn190741%_)
               (let ((_%pos190743%_
                      (datum-parsing-exception-filepos _%exn190741%_)))
                 (if (= _%pos190743%_ '0)
                     (gx#core-read-module/lang _%path190739%_)
                     (gx#raise-syntax-error
                      'read-module
                      '"error reading module"
                      _%path190739%_
                      (call-with-parameters__1
                       (lambda ()
                         (call-with-output-string
                          '""
                          (lambda (_%$%g190745190747%_)
                            (display-exception__%
                             _%exn190741%_
                             _%$%g190745190747%_))))
                       dump-stack-trace?
                       '#f)
                      (cons 'line:
                            (cons (##filepos-line _%pos190743%_)
                                  (cons 'col:
                                        (cons (##filepos-col _%pos190743%_)
                                              '())))))))
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _%path190739%_
                (call-with-parameters__1
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_%$%g190750190752%_)
                      (display-exception__%
                       _%exn190741%_
                       _%$%g190750190752%_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _%path190739%_)))))
    (define gx#core-read-module/sexp
      (lambda (_%path190591%_)
        (let _%lp190593%_ ((_%body190595%_
                            (read-syntax-from-file _%path190591%_))
                           (_%pre190596%_ '#f)
                           (_%ns190597%_ '#f)
                           (_%pkg190598%_ '#f))
          (let* ((_%$%e190599190623%_ _%body190595%_)
                 (_%$%E190615190649%_
                  (lambda ()
                    (let ((_g191990_
                           (if _%pkg190598%_
                               (values _%pre190596%_
                                       _%ns190597%_
                                       _%pkg190598%_)
                               (gx#core-read-module-package
                                _%path190591%_
                                _%pre190596%_
                                _%ns190597%_))))
                      (begin
                        (let ((_g191991_
                               (if (##values? _g191990_)
                                   (##values-length _g191990_)
                                   1)))
                          (if (not (##fx= _g191991_ 3))
                              (error "Context expects 3 values" _g191991_)))
                        (let ((_%pre190627%_ (##values-ref _g191990_ 0))
                              (_%ns190628%_ (##values-ref _g191990_ 1))
                              (_%pkg190629%_ (##values-ref _g191990_ 2)))
                          (let* ((_%prelude190635%_
                                  (if (gx#core-bound-module-prelude?
                                       _%pre190627%_)
                                      (gx#syntax-local-e__0 _%pre190627%_)
                                      (if (gx#core-library-module-path?
                                           _%pre190627%_)
                                          (gx#core-resolve-library-module-path
                                           _%pre190627%_)
                                          (if (gx#stx-string? _%pre190627%_)
                                              (gx#core-resolve-module-path__%
                                               _%pre190627%_
                                               _%path190591%_)
                                              (gx#stx-e _%pre190627%_)))))
                                 (_%path-id190637%_
                                  (gx#core-module-path->namespace
                                   _%path190591%_))
                                 (_%pkg-id190639%_
                                  (if _%pkg190629%_
                                      (##string-append
                                       _%pkg190629%_
                                       '"/"
                                       _%path-id190637%_)
                                      _%path-id190637%_))
                                 (_%module-id190641%_
                                  (##string->symbol _%pkg-id190639%_))
                                 (_%module-ns190646%_
                                  (if (eq? _%ns190628%_ '#!void)
                                      '#f
                                      (let ((_%$e190643%_ _%ns190628%_))
                                        (if _%$e190643%_
                                            _%$e190643%_
                                            _%pkg-id190639%_)))))
                            (values _%prelude190635%_
                                    _%module-id190641%_
                                    _%module-ns190646%_
                                    _%body190595%_)))))))
                 (_%$%E190608190681%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e190599190623%_)
                        (let ((_%$%e190616190653%_
                               (gx#syntax-e _%$%e190599190623%_)))
                          (let ((_%$%hd190617190656%_
                                 (##car _%$%e190616190653%_))
                                (_%$%tl190618190658%_
                                 (##cdr _%$%e190616190653%_)))
                            (if (eq? (gx#stx-e _%$%hd190617190656%_) 'package:)
                                (if (gx#stx-pair? _%$%tl190618190658%_)
                                    (let ((_%$%e190619190661%_
                                           (gx#syntax-e _%$%tl190618190658%_)))
                                      (let ((_%$%hd190620190664%_
                                             (##car _%$%e190619190661%_))
                                            (_%$%tl190621190666%_
                                             (##cdr _%$%e190619190661%_)))
                                        (let* ((_%pkg190669%_
                                                _%$%hd190620190664%_)
                                               (_%rest190671%_
                                                _%$%tl190621190666%_)
                                               (_%pkg190679%_
                                                (if (gx#identifier?
                                                     _%pkg190669%_)
                                                    (symbol->string
                                                     (gx#stx-e _%pkg190669%_))
                                                    (if (or (gx#stx-string?
                                                             _%pkg190669%_)
                                                            (gx#stx-false?
                                                             _%pkg190669%_))
                                                        (gx#stx-e
                                                         _%pkg190669%_)
                                                        (gx#raise-syntax-error
                                                         'import
                                                         '"Bad syntax; Illegal package name"
                                                         _%pkg190669%_)))))
                                          (_%lp190593%_
                                           _%rest190671%_
                                           _%pre190596%_
                                           _%ns190597%_
                                           _%pkg190679%_))))
                                    (_%$%E190615190649%_))
                                (_%$%E190615190649%_))))
                        (_%$%E190615190649%_))))
                 (_%$%E190601190711%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e190599190623%_)
                        (let ((_%$%e190609190685%_
                               (gx#syntax-e _%$%e190599190623%_)))
                          (let ((_%$%hd190610190688%_
                                 (##car _%$%e190609190685%_))
                                (_%$%tl190611190690%_
                                 (##cdr _%$%e190609190685%_)))
                            (if (eq? (gx#stx-e _%$%hd190610190688%_)
                                     'namespace:)
                                (if (gx#stx-pair? _%$%tl190611190690%_)
                                    (let ((_%$%e190612190693%_
                                           (gx#syntax-e _%$%tl190611190690%_)))
                                      (let ((_%$%hd190613190696%_
                                             (##car _%$%e190612190693%_))
                                            (_%$%tl190614190698%_
                                             (##cdr _%$%e190612190693%_)))
                                        (let* ((_%ns190701%_
                                                _%$%hd190613190696%_)
                                               (_%rest190703%_
                                                _%$%tl190614190698%_)
                                               (_%ns190709%_
                                                (if (gx#identifier?
                                                     _%ns190701%_)
                                                    (symbol->string
                                                     (gx#stx-e _%ns190701%_))
                                                    (if (gx#stx-string?
                                                         _%ns190701%_)
                                                        (gx#stx-e _%ns190701%_)
                                                        (if (gx#stx-false?
                                                             _%ns190701%_)
                                                            '#!void
                                                            (gx#raise-syntax-error
                                                             'import
                                                             '"Bad syntax; illegal namespace"
                                                             _%ns190701%_))))))
                                          (_%lp190593%_
                                           _%rest190703%_
                                           _%pre190596%_
                                           _%ns190709%_
                                           _%pkg190598%_))))
                                    (_%$%E190608190681%_))
                                (_%$%E190608190681%_))))
                        (_%$%E190608190681%_))))
                 (_%$%E190600190735%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e190599190623%_)
                        (let ((_%$%e190602190715%_
                               (gx#syntax-e _%$%e190599190623%_)))
                          (let ((_%$%hd190603190718%_
                                 (##car _%$%e190602190715%_))
                                (_%$%tl190604190720%_
                                 (##cdr _%$%e190602190715%_)))
                            (if (eq? (gx#stx-e _%$%hd190603190718%_) 'prelude:)
                                (if (gx#stx-pair? _%$%tl190604190720%_)
                                    (let ((_%$%e190605190723%_
                                           (gx#syntax-e _%$%tl190604190720%_)))
                                      (let ((_%$%hd190606190726%_
                                             (##car _%$%e190605190723%_))
                                            (_%$%tl190607190728%_
                                             (##cdr _%$%e190605190723%_)))
                                        (let* ((_%prelude190731%_
                                                _%$%hd190606190726%_)
                                               (_%rest190733%_
                                                _%$%tl190607190728%_))
                                          (_%lp190593%_
                                           _%rest190733%_
                                           _%prelude190731%_
                                           _%ns190597%_
                                           _%pkg190598%_))))
                                    (_%$%E190601190711%_))
                                (_%$%E190601190711%_))))
                        (_%$%E190601190711%_)))))
            (_%$%E190600190735%_)))))
    (define gx#core-read-module/lang
      (lambda (_%path190412%_)
        (letrec ((_%default-read-module-body190414%_
                  (lambda (_%inp190583%_)
                    (let _%lp190585%_ ((_%body190587%_ '()))
                      (let ((_%next190589%_ (read-syntax__% _%inp190583%_)))
                        (if (eof-object? _%next190589%_)
                            (reverse _%body190587%_)
                            (_%lp190585%_
                             (cons _%next190589%_ _%body190587%_)))))))
                 (_%read-body190415%_
                  (lambda (_%inp190500%_
                           _%pre190501%_
                           _%ns190502%_
                           _%pkg190503%_
                           _%args190504%_)
                    (let ((_g191992_
                           (if _%pkg190503%_
                               (values _%pre190501%_
                                       _%ns190502%_
                                       _%pkg190503%_)
                               (gx#core-read-module-package
                                _%path190412%_
                                _%pre190501%_
                                _%ns190502%_))))
                      (begin
                        (let ((_g191993_
                               (if (##values? _g191992_)
                                   (##values-length _g191992_)
                                   1)))
                          (if (not (##fx= _g191993_ 3))
                              (error "Context expects 3 values" _g191993_)))
                        (let ((_%pre190506%_ (##values-ref _g191992_ 0))
                              (_%ns190507%_ (##values-ref _g191992_ 1))
                              (_%pkg190508%_ (##values-ref _g191992_ 2)))
                          (let* ((_%prelude190510%_
                                  (gx#import-module__0 _%pre190506%_))
                                 (_%read-module-body190565%_
                                  (let ((_%$e190556%_
                                         (__find (lambda (_%$%e190511190513%_)
                                                   (let* ((_%$%$%e190511190515190525%_
                                                           _%$%e190511190513%_)
                                                          (_%$%else190517190533%_
                                                           (lambda () '#f))
                                                          (_%$%K190519190537%_
                                                           (lambda () '#t)))
                                                     (if (##structure-direct-instance-of?
                                                          _%$%$%e190511190515190525%_
                                                          'gx#module-export::t)
                                                         (let* ((_%$%e190520190540%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##unchecked-structure-ref
                          _%$%$%e190511190515190525%_
                          '1
                          '#f
                          '#f))
                        (_%$%e190521190543%_
                         (##unchecked-structure-ref
                          _%$%$%e190511190515190525%_
                          '2
                          '#f
                          '#f))
                        (_%$%e190522190546%_
                         (##unchecked-structure-ref
                          _%$%$%e190511190515190525%_
                          '3
                          '#f
                          '#f)))
                   (if (##eq? _%$%e190522190546%_ '1)
                       (let ((_%$%e190523190549%_
                              (##unchecked-structure-ref
                               _%$%$%e190511190515190525%_
                               '4
                               '#f
                               '#f)))
                         (if (eq? _%$%e190523190549%_ 'read-module-body)
                             (_%$%K190519190537%_)
                             (_%$%else190517190533%_)))
                       (_%$%else190517190533%_)))
                 (_%$%else190517190533%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (##unchecked-structure-ref
                                                  _%prelude190510%_
                                                  '9
                                                  '#f
                                                  '#f))))
                                    (if _%$e190556%_
                                        (let ((_%proc190562%_
                                               (__with-catch
                                                void
                                                (lambda ()
                                                  (gx#eval-syntax__0
                                                   (##structure-ref
                                                    (gx#core-resolve-module-export
                                                     _%$e190556%_)
                                                    '1
                                                    gx#binding::t
                                                    '#f))))))
                                          (if (procedure? _%proc190562%_)
                                              _%proc190562%_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang prelude; read-module-body is not a procedure"
                                               _%path190412%_
                                               _%pre190506%_
                                               _%proc190562%_)))
                                        _%default-read-module-body190414%_)))
                                 (_%path-id190567%_
                                  (gx#core-module-path->namespace
                                   _%path190412%_))
                                 (_%pkg-id190569%_
                                  (if _%pkg190508%_
                                      (##string-append
                                       _%pkg190508%_
                                       '"/"
                                       _%path-id190567%_)
                                      _%path-id190567%_))
                                 (_%module-id190571%_
                                  (##string->symbol _%pkg-id190569%_))
                                 (_%module-ns190576%_
                                  (let ((_%$e190573%_ _%ns190507%_))
                                    (if _%$e190573%_
                                        _%$e190573%_
                                        _%pkg-id190569%_)))
                                 (_%body190580%_
                                  (call-with-parameters__1
                                   (lambda ()
                                     (call-with-parameters__1
                                      (lambda ()
                                        (_%read-module-body190565%_
                                         _%inp190500%_))
                                      gx#current-module-reader-args
                                      _%args190504%_))
                                   gx#current-module-reader-path
                                   _%path190412%_)))
                            (values _%prelude190510%_
                                    _%module-id190571%_
                                    _%module-ns190576%_
                                    _%body190580%_)))))))
                 (_%string-e190416%_
                  (lambda (_%obj190494%_ _%what190495%_)
                    (if (string? _%obj190494%_)
                        _%obj190494%_
                        (if (symbol? _%obj190494%_)
                            (##symbol->string _%obj190494%_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _%what190495%_)
                             _%path190412%_
                             _%obj190494%_)))))
                 (_%read-lang-args190417%_
                  (lambda (_%inp190449%_ _%args190450%_)
                    (let* ((_%$%args190451190459%_ _%args190450%_)
                           (_%$%else190453190467%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _%path190412%_)))
                           (_%$%K190455190482%_
                            (lambda (_%args190470%_ _%prelude190471%_)
                              (let* ((_%pkg190473%_
                                      (pgetq__0 'package: _%args190470%_))
                                     (_%pkg190475%_
                                      (if _%pkg190473%_
                                          (_%string-e190416%_
                                           _%pkg190473%_
                                           '"package")
                                          '#f))
                                     (_%ns190477%_
                                      (pgetq__0 'namespace: _%args190470%_))
                                     (_%ns190479%_
                                      (if _%ns190477%_
                                          (_%string-e190416%_
                                           _%ns190477%_
                                           '"namespace")
                                          '#f)))
                                (_%read-body190415%_
                                 _%inp190449%_
                                 _%prelude190471%_
                                 _%ns190479%_
                                 _%pkg190475%_
                                 _%args190470%_)))))
                      (if (pair? _%$%args190451190459%_)
                          (let ((_%$%hd190456190485%_
                                 (##car _%$%args190451190459%_))
                                (_%$%tl190457190487%_
                                 (##cdr _%$%args190451190459%_)))
                            (let* ((_%prelude190490%_ _%$%hd190456190485%_)
                                   (_%args190492%_ _%$%tl190457190487%_))
                              (_%$%K190455190482%_
                               _%args190492%_
                               _%prelude190490%_)))
                          (_%$%else190453190467%_)))))
                 (_%read-lang190418%_
                  (lambda (_%inp190423%_)
                    (let* ((_%head190425%_ (read-line _%inp190423%_))
                           (_%$e190427%_
                            (string-index__0 _%head190425%_ '#\space)))
                      (if _%$e190427%_
                          (let ((_%lang190432%_
                                 (substring _%head190425%_ '0 _%$e190427%_)))
                            (if (equal? _%lang190432%_ '"#lang")
                                (let* ((_%rest190434%_
                                        (substring
                                         _%head190425%_
                                         (##fx+ _%$e190427%_ '1)
                                         (string-length _%head190425%_)))
                                       (_%args190445%_
                                        (__with-catch
                                         (lambda (_%$%g190435190437%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Illegal #lang arguments"
                                            _%path190412%_
                                            _%$%g190435190437%_))
                                         (lambda ()
                                           (call-with-input-string
                                            _%rest190434%_
                                            (lambda (_%$%g190440190442%_)
                                              (read-all
                                               _%$%g190440190442%_
                                               read)))))))
                                  (_%read-lang-args190417%_
                                   _%inp190423%_
                                   _%args190445%_))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Illegal module syntax"
                                 _%path190412%_)))
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _%path190412%_)))))
                 (_%read-e190419%_
                  (lambda (_%inp190421%_)
                    (if (eq? (peek-char _%inp190421%_) '#\#)
                        (_%read-lang190418%_ _%inp190421%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _%path190412%_)))))
          (gx#call-with-input-source-file _%path190412%_ _%read-e190419%_))))
    (define gx#core-read-module-package
      (lambda (_%path190360%_ _%pre190361%_ _%ns190362%_)
        (letrec ((_%string-e190364%_
                  (lambda (_%e190407%_)
                    (if (symbol? _%e190407%_)
                        (##symbol->string _%e190407%_)
                        (if (string? _%e190407%_)
                            _%e190407%_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%e190407%_))))))
          (let _%lp190366%_ ((_%dir190368%_ (path-directory _%path190360%_))
                             (_%pkg-path190369%_ '()))
            (let ((_%gerbil.pkg190371%_
                   (path-expand '"gerbil.pkg" _%dir190368%_)))
              (if (##file-exists? _%gerbil.pkg190371%_)
                  (let ((_%plist190373%_
                         (gx#core-library-package-plist__% _%dir190368%_ '#t)))
                    (if (null? _%plist190373%_)
                        (let ((_%pkg190376%_
                               (if (null? _%pkg-path190369%_)
                                   '#f
                                   (string-join _%pkg-path190369%_ '"/"))))
                          (values _%pre190361%_ _%ns190362%_ _%pkg190376%_))
                        (if (list? _%plist190373%_)
                            (let* ((_%root190379%_
                                    (pgetq__0 'package: _%plist190373%_))
                                   (_%pkg190383%_
                                    (let ((_%pkg-path190381%_
                                           (if _%root190379%_
                                               (cons (_%string-e190364%_
                                                      _%root190379%_)
                                                     _%pkg-path190369%_)
                                               _%pkg-path190369%_)))
                                      (if (null? _%pkg-path190381%_)
                                          '#f
                                          (string-join
                                           _%pkg-path190381%_
                                           '"/"))))
                                   (_%ns190390%_
                                    (let ((_%ns190388%_
                                           (let ((_%$e190385%_ _%ns190362%_))
                                             (if _%$e190385%_
                                                 _%$e190385%_
                                                 (pgetq__0
                                                  'namespace:
                                                  _%plist190373%_)))))
                                      (if _%ns190388%_
                                          (_%string-e190364%_ _%ns190388%_)
                                          '#f)))
                                   (_%pre190395%_
                                    (let ((_%$e190392%_ _%pre190361%_))
                                      (if _%$e190392%_
                                          _%$e190392%_
                                          (pgetq__0
                                           'prelude:
                                           _%plist190373%_)))))
                              (values _%pre190395%_
                                      _%ns190390%_
                                      _%pkg190383%_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%plist190373%_))))
                  (let ((_%dir*190399%_
                         (path-strip-trailing-directory-separator
                          _%dir190368%_)))
                    (if (or (__string-empty? _%dir*190399%_)
                            (equal? _%dir190368%_ _%dir*190399%_))
                        (values _%pre190361%_ _%ns190362%_ '#f)
                        (let ((_%xpath190404%_
                               (path-strip-directory _%dir*190399%_))
                              (_%xdir190405%_ (path-directory _%dir*190399%_)))
                          (_%lp190366%_
                           _%xdir190405%_
                           (cons _%xpath190404%_ _%pkg-path190369%_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_%path190358%_)
        (path-strip-extension (path-strip-directory _%path190358%_))))
    (define gx#core-module-path->id
      (lambda (_%path190356%_)
        (##string->symbol (gx#core-module-path->namespace _%path190356%_))))
    (define gx#core-resolve-module-path__%
      (lambda (_%stx-path190335%_ _%rel190336%_)
        (let* ((_%path190338%_ (gx#stx-e _%stx-path190335%_))
               (_%path190340%_
                (if (__string-empty? (path-extension _%path190338%_))
                    (##string-append _%path190338%_ '".ss")
                    _%path190338%_)))
          (gx#core-resolve-path__%
           _%path190340%_
           (let ((_%$e190343%_ (gx#stx-source _%stx-path190335%_)))
             (if _%$e190343%_ _%$e190343%_ _%rel190336%_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_%stx-path190349%_)
        (let ((_%rel190351%_ '#f))
          (gx#core-resolve-module-path__% _%stx-path190349%_ _%rel190351%_))))
    (define gx#core-resolve-module-path
      (lambda _g191994_
        (let ((_g191995_ (##length _g191994_)))
          (cond ((##fx= _g191995_ 1)
                 (apply gx#core-resolve-module-path__0 _g191994_))
                ((##fx= _g191995_ 2)
                 (apply gx#core-resolve-module-path__% _g191994_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g191994_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_%libpath190220%_)
        (let* ((_%spath190222%_ (symbol->string (gx#stx-e _%libpath190220%_)))
               (_%spath190224%_
                (substring
                 _%spath190222%_
                 '1
                 (##string-length _%spath190222%_)))
               (_%ext190226%_ (path-extension _%spath190224%_))
               (_%ssi190228%_
                (if (__string-empty? _%ext190226%_)
                    (##string-append _%spath190224%_ '".ssi")
                    (##string-append
                     (path-strip-extension _%spath190224%_)
                     '".ssi")))
               (_%srcs190232%_
                (if (__string-empty? _%ext190226%_)
                    (##map (lambda (_%ext190230%_)
                             (string-append _%spath190224%_ _%ext190230%_))
                           '(".ss" ".sld" ".scm"))
                    (cons _%spath190224%_ '()))))
          (let _%lp190235%_ ((_%rest190237%_ (load-path)))
            (let* ((_%$%rest190238190247%_ _%rest190237%_)
                   (_%$%E190241190251%_
                    (lambda ()
                      (error '"No clause matching"
                             _%$%rest190238190247%_
                             '([dir . rest])
                             '([]))
                      '#!void)))
              (let ((_%$%K190243190322%_
                     (lambda (_%rest190262%_ _%dir190263%_)
                       (letrec ((_%resolve190265%_
                                 (lambda (_%ssi190278%_ _%srcs190279%_)
                                   (let ((_%compiled-path190281%_
                                          (path-expand
                                           _%ssi190278%_
                                           _%dir190263%_)))
                                     (if (##file-exists?
                                          _%compiled-path190281%_)
                                         (path-normalize
                                          _%compiled-path190281%_)
                                         (let _%lpr190283%_ ((_%rest-src190285%_
                                                              _%srcs190279%_))
                                           (let* ((_%$%rest-src190286190294%_
                                                   _%rest-src190285%_)
                                                  (_%$%else190288190302%_
                                                   (lambda ()
                                                     (_%lp190235%_
                                                      _%rest190262%_)))
                                                  (_%$%K190290190310%_
                                                   (lambda (_%rest-src190305%_
                                                            _%src190306%_)
                                                     (let ((_%src-path190308%_
                                                            (path-expand
                                                             _%src190306%_
                                                             _%dir190263%_)))
                                                       (if (##file-exists?
                                                            _%src-path190308%_)
                                                           (path-normalize
                                                            _%src-path190308%_)
                                                           (_%lpr190283%_
                                                            _%rest-src190305%_))))))
                                             (if (pair? _%$%rest-src190286190294%_)
                                                 (let ((_%$%hd190291190313%_
                                                        (##car _%$%rest-src190286190294%_))
                                                       (_%$%tl190292190315%_
                                                        (##cdr _%$%rest-src190286190294%_)))
                                                   (let* ((_%src190318%_
                                                           _%$%hd190291190313%_)
                                                          (_%rest-src190320%_
                                                           _%$%tl190292190315%_))
                                                     (_%$%K190290190310%_
                                                      _%rest-src190320%_
                                                      _%src190318%_)))
                                                 (_%$%else190288190302%_)))))))))
                         (let ((_%$e190267%_
                                (gx#core-library-package-path-prefix
                                 _%dir190263%_)))
                           (if _%$e190267%_
                               (if (string-prefix?
                                    _%$e190267%_
                                    _%spath190224%_)
                                   (let ((_%ssi190274%_
                                          (substring
                                           _%ssi190228%_
                                           (string-length _%$e190267%_)
                                           (##string-length _%ssi190228%_)))
                                         (_%srcs190275%_
                                          (##map (lambda (_%src190272%_)
                                                   (substring
                                                    _%src190272%_
                                                    (string-length
                                                     _%$e190267%_)
                                                    (string-length
                                                     _%src190272%_)))
                                                 _%srcs190232%_)))
                                     (_%resolve190265%_
                                      _%ssi190274%_
                                      _%srcs190275%_))
                                   (_%lp190235%_ _%rest190262%_))
                               (_%resolve190265%_
                                _%ssi190228%_
                                _%srcs190232%_))))))
                    (_%$%K190242190256%_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"cannot find library module"
                        _%libpath190220%_))))
                (let ((_%$%try-match190240190259%_
                       (lambda ()
                         (if (null? _%$%rest190238190247%_)
                             (_%$%K190242190256%_)
                             (_%$%E190241190251%_)))))
                  (if (pair? _%$%rest190238190247%_)
                      (let ((_%$%tl190245190327%_
                             (##cdr _%$%rest190238190247%_))
                            (_%$%hd190244190325%_
                             (##car _%$%rest190238190247%_)))
                        (let ((_%dir190330%_ _%$%hd190244190325%_)
                              (_%rest190332%_ _%$%tl190245190327%_))
                          (_%$%K190243190322%_ _%rest190332%_ _%dir190330%_)))
                      (_%$%try-match190240190259%_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_%modpath190188%_)
        (letrec ((_%resolve190190%_
                  (lambda (_%path190211%_ _%base190212%_)
                    (let ((_%$e190214%_
                           (string-rindex__0 _%base190212%_ '#\/)))
                      (if _%$e190214%_
                          (gx#core-resolve-library-module-path
                           (##string->symbol
                            (string-append
                             '":"
                             (substring _%base190212%_ '0 _%$e190214%_)
                             '"/"
                             _%path190211%_)))
                          (gx#core-resolve-library-module-path
                           (##string->symbol
                            (string-append '":" _%path190211%_))))))))
          (let ((_%spath190192%_ (symbol->string (gx#stx-e _%modpath190188%_)))
                (_%mod190193%_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _%mod190193%_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"cannot resolve relative module path; not in module context"
                 _%modpath190188%_))
            (let ((_%mpath190195%_
                   (symbol->string
                    (##structure-ref
                     _%mod190193%_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _%lp190197%_ ((_%spath190199%_ _%spath190192%_)
                                 (_%mpath190200%_ _%mpath190195%_))
                (if (string-prefix? '"../" _%spath190199%_)
                    (let ((_%$e190203%_
                           (string-rindex__0 _%mpath190200%_ '#\/)))
                      (if _%$e190203%_
                          (_%lp190197%_
                           (substring
                            _%spath190199%_
                            '3
                            (string-length _%spath190199%_))
                           (substring _%mpath190200%_ '0 _%$e190203%_))
                          (gx#raise-syntax-error
                           '#f
                           '"cannot resolve relative module path; illegal traversal"
                           _%modpath190188%_)))
                    (if (string-prefix? '"./" _%spath190199%_)
                        (_%lp190197%_
                         (substring
                          _%spath190199%_
                          '2
                          (string-length _%spath190199%_))
                         _%mpath190200%_)
                        (_%resolve190190%_
                         _%spath190199%_
                         _%mpath190200%_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_%dir190180%_)
        (let ((_%$e190182%_
               (pgetq__0
                'package:
                (gx#core-library-package-plist__0 _%dir190180%_))))
          (if _%$e190182%_
              (##string-append (symbol->string _%$e190182%_) '"/")
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_%dir190150%_ _%exists?190151%_)
        (let ((_%$e190153%_ (__hash-get gx#__module-pkg-cache _%dir190150%_)))
          (if _%$e190153%_
              _%$e190153%_
              (let* ((_%gerbil.pkg190157%_
                      (path-expand '"gerbil.pkg" _%dir190150%_))
                     (_%plist190167%_
                      (if (or _%exists?190151%_
                              (##file-exists? _%gerbil.pkg190157%_))
                          (let ((_%e190162%_
                                 (gx#call-with-input-source-file
                                  _%gerbil.pkg190157%_
                                  read)))
                            (if (eof-object? _%e190162%_)
                                '()
                                (if (list? _%e190162%_)
                                    _%e190162%_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _%gerbil.pkg190157%_
                                     _%e190162%_))))
                          '())))
                (__hash-put!
                 gx#__module-pkg-cache
                 _%dir190150%_
                 _%plist190167%_)
                _%plist190167%_)))))
    (define gx#core-library-package-plist__0
      (lambda (_%dir190173%_)
        (let ((_%exists?190175%_ '#f))
          (gx#core-library-package-plist__% _%dir190173%_ _%exists?190175%_))))
    (define gx#core-library-package-plist
      (lambda _g191996_
        (let ((_g191997_ (##length _g191996_)))
          (cond ((##fx= _g191997_ 1)
                 (apply gx#core-library-package-plist__0 _g191996_))
                ((##fx= _g191997_ 2)
                 (apply gx#core-library-package-plist__% _g191996_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g191996_))))))
    (define gx#core-library-module-path?
      (lambda (_%stx190147%_)
        (gx#core-special-module-path? _%stx190147%_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_%stx190145%_)
        (gx#core-special-module-path? _%stx190145%_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_%stx190140%_ _%char190141%_)
        (if (gx#identifier? _%stx190140%_)
            (if (interned-symbol? (gx#stx-e _%stx190140%_))
                (let ((_%str190143%_
                       (symbol->string (gx#stx-e _%stx190140%_))))
                  (if (##fx> (##string-length _%str190143%_) '1)
                      (eq? (string-ref _%str190143%_ '0) _%char190141%_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_%stx190134%_)
        (gx#core-bound-identifier?__%
         _%stx190134%_
         (lambda (_%$%g190135190137%_)
           (gx#expander-binding?__%
            _%$%g190135190137%_
            gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_%stx190128%_)
        (gx#core-bound-identifier?__%
         _%stx190128%_
         (lambda (_%$%g190129190131%_)
           (gx#expander-binding?__% _%$%g190129190131%_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_%stx190115%_)
        (letrec ((_%module-prelude?190117%_
                  (lambda (_%e190123%_)
                    (let ((_%$e190125%_
                           (##structure-instance-of?
                            _%e190123%_
                            'gx#module-context::t)))
                      (if _%$e190125%_
                          _%$e190125%_
                          (##structure-instance-of?
                           _%e190123%_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _%stx190115%_
           (lambda (_%$%g190118190120%_)
             (gx#expander-binding?__%
              _%$%g190118190120%_
              _%module-prelude?190117%_))))))
    (define gx#core-bind-import!__%
      (lambda (_%in190046%_ _%ctx190047%_ _%force-weak?190048%_)
        (let* ((_%$%in190049190058%_ _%in190046%_)
               (_%$%E190051190061%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%in190049190058%_
                         '((module-import source key phi weak?)))
                  '#!void))
               (_%$%K190052190074%_
                (lambda (_%weak?190064%_
                         _%phi190065%_
                         _%key190066%_
                         _%source190067%_)
                  (gx#core-bind!__%
                   _%key190066%_
                   (let* ((_%e190069%_
                           (gx#core-resolve-module-export _%source190067%_))
                          (__obj191978
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
                      __obj191978
                      (##unchecked-structure-ref _%e190069%_ '1 '#f '#f)
                      _%key190066%_
                      _%phi190065%_
                      _%e190069%_
                      (##unchecked-structure-ref _%source190067%_ '1 '#f '#f)
                      (let ((_%$e190071%_ _%force-weak?190048%_))
                        (if _%$e190071%_ _%$e190071%_ _%weak?190064%_)))
                     __obj191978)
                   gx#core-context-rebind?
                   _%phi190065%_
                   _%ctx190047%_))))
          (if (##structure-direct-instance-of?
               _%$%in190049190058%_
               'gx#module-import::t)
              (let* ((_%$%e190053190077%_
                      (##unchecked-structure-ref
                       _%$%in190049190058%_
                       '1
                       '#f
                       '#f))
                     (_%source190080%_ _%$%e190053190077%_)
                     (_%$%e190054190082%_
                      (##unchecked-structure-ref
                       _%$%in190049190058%_
                       '2
                       '#f
                       '#f))
                     (_%key190085%_ _%$%e190054190082%_)
                     (_%$%e190055190087%_
                      (##unchecked-structure-ref
                       _%$%in190049190058%_
                       '3
                       '#f
                       '#f))
                     (_%phi190090%_ _%$%e190055190087%_)
                     (_%$%e190056190092%_
                      (##unchecked-structure-ref
                       _%$%in190049190058%_
                       '4
                       '#f
                       '#f))
                     (_%weak?190095%_ _%$%e190056190092%_))
                (_%$%K190052190074%_
                 _%weak?190095%_
                 _%phi190090%_
                 _%key190085%_
                 _%source190080%_))
              (_%$%E190051190061%_)))))
    (define gx#core-bind-import!__0
      (lambda (_%in190100%_)
        (let* ((_%ctx190102%_ (gx#current-expander-context))
               (_%force-weak?190104%_ '#f))
          (gx#core-bind-import!__%
           _%in190100%_
           _%ctx190102%_
           _%force-weak?190104%_))))
    (define gx#core-bind-import!__1
      (lambda (_%in190106%_ _%ctx190107%_)
        (let ((_%force-weak?190109%_ '#f))
          (gx#core-bind-import!__%
           _%in190106%_
           _%ctx190107%_
           _%force-weak?190109%_))))
    (define gx#core-bind-import!
      (lambda _g191998_
        (let ((_g191999_ (##length _g191998_)))
          (cond ((##fx= _g191999_ 1) (apply gx#core-bind-import!__0 _g191998_))
                ((##fx= _g191999_ 2) (apply gx#core-bind-import!__1 _g191998_))
                ((##fx= _g191999_ 3) (apply gx#core-bind-import!__% _g191998_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g191998_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_%in190032%_ _%ctx190033%_)
        (gx#core-bind-import!__% _%in190032%_ _%ctx190033%_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_%in190038%_)
        (let ((_%ctx190040%_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _%in190038%_ _%ctx190040%_))))
    (define gx#core-bind-weak-import!
      (lambda _g192000_
        (let ((_g192001_ (##length _g192000_)))
          (cond ((##fx= _g192001_ 1)
                 (apply gx#core-bind-weak-import!__0 _g192000_))
                ((##fx= _g192001_ 2)
                 (apply gx#core-bind-weak-import!__% _g192000_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g192000_))))))
    (define gx#core-resolve-module-export
      (lambda (_%out189925%_)
        (letrec ((_%subst189927%_
                  (lambda (_%key189972%_)
                    (let* ((_%$%key189973189981%_ _%key189972%_)
                           (_%$%else189975189989%_ (lambda () _%key189972%_))
                           (_%$%K189977190019%_
                            (lambda (_%mark189992%_ _%id189993%_)
                              (let* ((_%$%mark189994190000%_ _%mark189992%_)
                                     (_%$%E189996190003%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%$%mark189994190000%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%$%K189997190011%_
                                      (lambda (_%subst190006%_)
                                        (let ((_%$e190008%_
                                               (if _%subst190006%_
                                                   (hash-get
                                                    _%subst190006%_
                                                    _%id189993%_)
                                                   '#f)))
                                          (if _%$e190008%_
                                              _%$e190008%_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _%key189972%_))))))
                                (if (##structure-instance-of?
                                     _%$%mark189994190000%_
                                     'gx#expander-mark::t)
                                    (let* ((_%$%e189998190014%_
                                            (##unchecked-structure-ref
                                             _%$%mark189994190000%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst190017%_
                                            _%$%e189998190014%_))
                                      (_%$%K189997190011%_ _%subst190017%_))
                                    (_%$%E189996190003%_))))))
                      (if (pair? _%$%key189973189981%_)
                          (let ((_%$%hd189978190022%_
                                 (##car _%$%key189973189981%_))
                                (_%$%tl189979190024%_
                                 (##cdr _%$%key189973189981%_)))
                            (let* ((_%id190027%_ _%$%hd189978190022%_)
                                   (_%mark190029%_ _%$%tl189979190024%_))
                              (_%$%K189977190019%_
                               _%mark190029%_
                               _%id190027%_)))
                          (_%$%else189975189989%_))))))
          (let* ((_%$%out189928189938%_ _%out189925%_)
                 (_%$%E189930189941%_
                  (lambda ()
                    (error '"No clause matching"
                           _%$%out189928189938%_
                           '((module-export ctx key phi _ _)))
                    '#!void))
                 (_%$%K189931189948%_
                  (lambda (_%phi189944%_ _%key189945%_ _%ctx189946%_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _%ctx189946%_ _%phi189944%_)
                     (_%subst189927%_ _%key189945%_)))))
            (if (##structure-direct-instance-of?
                 _%$%out189928189938%_
                 'gx#module-export::t)
                (let* ((_%$%e189932189951%_
                        (##unchecked-structure-ref
                         _%$%out189928189938%_
                         '1
                         '#f
                         '#f))
                       (_%ctx189954%_ _%$%e189932189951%_)
                       (_%$%e189933189956%_
                        (##unchecked-structure-ref
                         _%$%out189928189938%_
                         '2
                         '#f
                         '#f))
                       (_%key189959%_ _%$%e189933189956%_)
                       (_%$%e189934189961%_
                        (##unchecked-structure-ref
                         _%$%out189928189938%_
                         '3
                         '#f
                         '#f))
                       (_%phi189964%_ _%$%e189934189961%_)
                       (_%$%e189935189966%_
                        (##unchecked-structure-ref
                         _%$%out189928189938%_
                         '4
                         '#f
                         '#f))
                       (_%$%e189936189969%_
                        (##unchecked-structure-ref
                         _%$%out189928189938%_
                         '5
                         '#f
                         '#f)))
                  (_%$%K189931189948%_
                   _%phi189964%_
                   _%key189959%_
                   _%ctx189954%_))
                (_%$%E189930189941%_))))))
    (define gx#core-module-export->import__%
      (lambda (_%out189851%_ _%rename189852%_ _%dphi189853%_)
        (let* ((_%$%out189854189864%_ _%out189851%_)
               (_%$%E189856189867%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%out189854189864%_
                         '((module-export ctx key phi name weak?)))
                  '#!void))
               (_%$%K189857189879%_
                (lambda (_%weak?189870%_
                         _%name189871%_
                         _%phi189872%_
                         _%key189873%_
                         _%ctx189874%_)
                  (##structure
                   gx#module-import::t
                   _%out189851%_
                   (let ((_%$e189876%_ _%rename189852%_))
                     (if _%$e189876%_ _%$e189876%_ _%name189871%_))
                   (fx+ _%phi189872%_ _%dphi189853%_)
                   _%weak?189870%_))))
          (if (##structure-direct-instance-of?
               _%$%out189854189864%_
               'gx#module-export::t)
              (let* ((_%$%e189858189882%_
                      (##unchecked-structure-ref
                       _%$%out189854189864%_
                       '1
                       '#f
                       '#f))
                     (_%ctx189885%_ _%$%e189858189882%_)
                     (_%$%e189859189887%_
                      (##unchecked-structure-ref
                       _%$%out189854189864%_
                       '2
                       '#f
                       '#f))
                     (_%key189890%_ _%$%e189859189887%_)
                     (_%$%e189860189892%_
                      (##unchecked-structure-ref
                       _%$%out189854189864%_
                       '3
                       '#f
                       '#f))
                     (_%phi189895%_ _%$%e189860189892%_)
                     (_%$%e189861189897%_
                      (##unchecked-structure-ref
                       _%$%out189854189864%_
                       '4
                       '#f
                       '#f))
                     (_%name189900%_ _%$%e189861189897%_)
                     (_%$%e189862189902%_
                      (##unchecked-structure-ref
                       _%$%out189854189864%_
                       '5
                       '#f
                       '#f))
                     (_%weak?189905%_ _%$%e189862189902%_))
                (_%$%K189857189879%_
                 _%weak?189905%_
                 _%name189900%_
                 _%phi189895%_
                 _%key189890%_
                 _%ctx189885%_))
              (_%$%E189856189867%_)))))
    (define gx#core-module-export->import__0
      (lambda (_%out189910%_)
        (let* ((_%rename189912%_ '#f) (_%dphi189914%_ '0))
          (gx#core-module-export->import__%
           _%out189910%_
           _%rename189912%_
           _%dphi189914%_))))
    (define gx#core-module-export->import__1
      (lambda (_%out189916%_ _%rename189917%_)
        (let ((_%dphi189919%_ '0))
          (gx#core-module-export->import__%
           _%out189916%_
           _%rename189917%_
           _%dphi189919%_))))
    (define gx#core-module-export->import
      (lambda _g192002_
        (let ((_g192003_ (##length _g192002_)))
          (cond ((##fx= _g192003_ 1)
                 (apply gx#core-module-export->import__0 _g192002_))
                ((##fx= _g192003_ 2)
                 (apply gx#core-module-export->import__1 _g192002_))
                ((##fx= _g192003_ 3)
                 (apply gx#core-module-export->import__% _g192002_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g192002_))))))
    (define gx#core-expand-module%
      (lambda (_%stx189750%_)
        (letrec ((_%make-context189752%_
                  (lambda (_%id189829%_)
                    (let* ((_%super189831%_ (gx#current-expander-context))
                           (_%bind-id189833%_ (gx#stx-e _%id189829%_))
                           (_%mod-id189835%_
                            (if (##structure-instance-of?
                                 _%super189831%_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##unchecked-structure-ref
                                  _%super189831%_
                                  '1
                                  '#f
                                  '#f)
                                 '"~"
                                 _%bind-id189833%_)
                                _%bind-id189833%_))
                           (_%ns189837%_ (symbol->string _%mod-id189835%_))
                           (_%path189847%_
                            (if (##structure-instance-of?
                                 _%super189831%_
                                 'gx#module-context::t)
                                (let ((_%path189839%_
                                       (##unchecked-structure-ref
                                        _%super189831%_
                                        '7
                                        '#f
                                        '#f)))
                                  (if (or (pair? _%path189839%_)
                                          (null? _%path189839%_))
                                      (cons _%bind-id189833%_ _%path189839%_)
                                      (if (not _%path189839%_)
                                          _%bind-id189833%_
                                          (cons _%bind-id189833%_
                                                (cons _%path189839%_ '())))))
                                _%bind-id189833%_))
                           (__obj191979
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
                       __obj191979
                       _%mod-id189835%_
                       _%super189831%_
                       _%ns189837%_
                       _%path189847%_)
                      __obj191979)))
                 (_%valid-module-id?189753%_
                  (lambda (_%id189804%_)
                    (let* ((_%str189806%_ (symbol->string _%id189804%_))
                           (_%len189808%_ (##string-length _%str189806%_)))
                      (if (##fx>= _%len189808%_ '1)
                          (let _%loop189811%_ ((_%index189813%_
                                                (##fx- (##string-length
                                                        _%str189806%_)
                                                       '1)))
                            (if (##fx>= _%index189813%_ '0)
                                (let ((_%c189815%_
                                       (string-ref
                                        _%str189806%_
                                        _%index189813%_)))
                                  (if (or (and (##char>=? _%c189815%_ '#\a)
                                               (##char<=? _%c189815%_ '#\z))
                                          (and (##char>=? _%c189815%_ '#\A)
                                               (##char<=? _%c189815%_ '#\Z))
                                          (and (##char>=? _%c189815%_ '#\0)
                                               (##char<=? _%c189815%_ '#\9))
                                          (##char=? _%c189815%_ '#\_)
                                          (##char=? _%c189815%_ '#\-))
                                      (_%loop189811%_
                                       (##fx- _%index189813%_ '1))
                                      '#f))
                                '#t))
                          '#f)))))
          (let* ((_%$%e189754189764%_ _%stx189750%_)
                 (_%$%E189756189768%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%$%e189754189764%_)))
                 (_%$%E189755189800%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e189754189764%_)
                        (let ((_%$%e189757189772%_
                               (gx#syntax-e _%$%e189754189764%_)))
                          (let ((_%$%hd189758189775%_
                                 (##car _%$%e189757189772%_))
                                (_%$%tl189759189777%_
                                 (##cdr _%$%e189757189772%_)))
                            (if (gx#stx-pair? _%$%tl189759189777%_)
                                (let ((_%$%e189760189780%_
                                       (gx#syntax-e _%$%tl189759189777%_)))
                                  (let ((_%$%hd189761189783%_
                                         (##car _%$%e189760189780%_))
                                        (_%$%tl189762189785%_
                                         (##cdr _%$%e189760189780%_)))
                                    (let* ((_%id189788%_ _%$%hd189761189783%_)
                                           (_%body189790%_
                                            _%$%tl189762189785%_))
                                      (if (and (gx#identifier? _%id189788%_)
                                               (gx#stx-list? _%body189790%_))
                                          (if (_%valid-module-id?189753%_
                                               (gx#stx-e
                                                (gx#datum->syntax__0 '#f 'id)))
                                              (let* ((_%ctx189792%_
                                                      (_%make-context189752%_
                                                       _%id189788%_))
                                                     (_%body189794%_
                                                      (gx#core-expand-module-begin
                                                       _%body189790%_
                                                       _%ctx189792%_))
                                                     (_%body189796%_
                                                      (gx#core-quote-syntax__1
                                                       (gx#core-cons
                                                        '%#begin
                                                        _%body189794%_)
                                                       (gx#stx-source
                                                        _%stx189750%_))))
                                                (##unchecked-structure-set!
                                                 _%ctx189792%_
                                                 (__make-atomic-promise
                                                  (lambda ()
                                                    (gx#eval-syntax*
                                                     _%body189796%_)))
                                                 '10
                                                 '#f
                                                 '#f)
                                                (##unchecked-structure-set!
                                                 _%ctx189792%_
                                                 _%body189796%_
                                                 '11
                                                 '#f
                                                 '#f)
                                                (gx#core-bind-syntax!__0
                                                 _%id189788%_
                                                 _%ctx189792%_)
                                                (gx#core-quote-syntax__1
                                                 (gx#core-list
                                                  '%#module
                                                  (gx#core-quote-syntax__0
                                                   _%id189788%_)
                                                  _%body189796%_)
                                                 (gx#stx-source
                                                  _%stx189750%_)))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"invalid module id; allowed characters are A-Z,a-z,0-9,_,-"
                                               _%stx189750%_
                                               (gx#datum->syntax__0 '#f 'id)))
                                          (_%$%E189756189768%_)))))
                                (_%$%E189756189768%_))))
                        (_%$%E189756189768%_)))))
            (_%$%E189755189800%_)))))
    (define gx#core-expand-module-begin
      (lambda (_%body189715%_ _%ctx189716%_)
        (call-with-parameters__1
         (lambda ()
           (call-with-parameters__1
            (lambda ()
              (gx#core-bind-feature!__1 'gerbil-module '#t)
              (let* ((_%stx189720%_
                      (gx#core-expand-head
                       (cons '%%begin-module _%body189715%_)))
                     (_%$%e189721189728%_ _%stx189720%_)
                     (_%$%E189723189732%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module body expansion"
                         _%stx189720%_)))
                     (_%$%E189722189746%_
                      (lambda ()
                        (if (gx#stx-pair? _%$%e189721189728%_)
                            (let ((_%$%e189724189736%_
                                   (gx#syntax-e _%$%e189721189728%_)))
                              (let ((_%$%hd189725189739%_
                                     (##car _%$%e189724189736%_))
                                    (_%$%tl189726189741%_
                                     (##cdr _%$%e189724189736%_)))
                                (if (and (gx#identifier? _%$%hd189725189739%_)
                                         (gx#core-identifier=?
                                          _%$%hd189725189739%_
                                          '%#begin-module))
                                    (let ((_%body189744%_
                                           _%$%tl189726189741%_))
                                      (if (gx#sealed-syntax? _%stx189720%_)
                                          _%body189744%_
                                          (gx#core-expand-module-body
                                           _%body189744%_)))
                                    (_%$%E189723189732%_))))
                            (_%$%E189723189732%_)))))
                (_%$%E189722189746%_)))
            gx#current-expander-phi
            '0))
         gx#current-expander-context
         _%ctx189716%_)))
    (define gx#core-expand-module-body
      (lambda (_%body189412%_)
        (letrec ((_%expand-special189414%_
                  (lambda (_%hd189543%_ _%K189544%_ _%rest189545%_ _%r189546%_)
                    (let* ((_%$%e189547189587%_ _%hd189543%_)
                           (_%$%E189582189591%_
                            (lambda ()
                              (_%K189544%_
                               _%rest189545%_
                               (cons (gx#core-expand-top _%hd189543%_)
                                     _%r189546%_))))
                           (_%$%E189569189603%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e189547189587%_)
                                  (let ((_%$%e189583189595%_
                                         (gx#syntax-e _%$%e189547189587%_)))
                                    (let ((_%$%hd189584189598%_
                                           (##car _%$%e189583189595%_))
                                          (_%$%tl189585189600%_
                                           (##cdr _%$%e189583189595%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd189584189598%_)
                                               (gx#core-identifier=?
                                                _%$%hd189584189598%_
                                                '%#export))
                                          (_%K189544%_
                                           _%rest189545%_
                                           (cons _%hd189543%_ _%r189546%_))
                                          (_%$%E189582189591%_))))
                                  (_%$%E189582189591%_))))
                           (_%$%E189559189645%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e189547189587%_)
                                  (let ((_%$%e189570189607%_
                                         (gx#syntax-e _%$%e189547189587%_)))
                                    (let ((_%$%hd189571189610%_
                                           (##car _%$%e189570189607%_))
                                          (_%$%tl189572189612%_
                                           (##cdr _%$%e189570189607%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd189571189610%_)
                                               (gx#core-identifier=?
                                                _%$%hd189571189610%_
                                                '%#bind-runtime-properties!))
                                          (if (gx#stx-pair?
                                               _%$%tl189572189612%_)
                                              (let ((_%$%e189573189615%_
                                                     (gx#syntax-e
                                                      _%$%tl189572189612%_)))
                                                (let ((_%$%hd189574189618%_
                                                       (##car _%$%e189573189615%_))
                                                      (_%$%tl189575189620%_
                                                       (##cdr _%$%e189573189615%_)))
                                                  (if (gx#stx-pair?
                                                       _%$%hd189574189618%_)
                                                      (let ((_%$%e189579189623%_
                                                             (gx#syntax-e
                                                              _%$%hd189574189618%_)))
                                                        (let ((_%$%hd189580189626%_
                                                               (##car _%$%e189579189623%_))
                                                              (_%$%tl189581189628%_
                                                               (##cdr _%$%e189579189623%_)))
                                                          (let ((_%id189631%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%hd189580189626%_))
                    (if (gx#stx-null? _%$%tl189581189628%_)
                        (if (gx#stx-pair? _%$%tl189575189620%_)
                            (let ((_%$%e189576189633%_
                                   (gx#syntax-e _%$%tl189575189620%_)))
                              (let ((_%$%hd189577189636%_
                                     (##car _%$%e189576189633%_))
                                    (_%$%tl189578189638%_
                                     (##cdr _%$%e189576189633%_)))
                                (let ((_%props189641%_ _%$%hd189577189636%_))
                                  (if (gx#stx-null? _%$%tl189578189638%_)
                                      (let ((_%bind189643%_
                                             (gx#resolve-identifier__0
                                              _%id189631%_)))
                                        (gx#core-bind-runtime-properties!
                                         _%bind189643%_
                                         _%props189641%_)
                                        (_%K189544%_
                                         _%rest189545%_
                                         _%r189546%_))
                                      (_%$%E189569189603%_)))))
                            (_%$%E189569189603%_))
                        (_%$%E189569189603%_)))))
              (_%$%E189569189603%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E189569189603%_))
                                          (_%$%E189569189603%_))))
                                  (_%$%E189569189603%_))))
                           (_%$%E189549189677%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e189547189587%_)
                                  (let ((_%$%e189560189649%_
                                         (gx#syntax-e _%$%e189547189587%_)))
                                    (let ((_%$%hd189561189652%_
                                           (##car _%$%e189560189649%_))
                                          (_%$%tl189562189654%_
                                           (##cdr _%$%e189560189649%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd189561189652%_)
                                               (gx#core-identifier=?
                                                _%$%hd189561189652%_
                                                '%#define-values))
                                          (if (gx#stx-pair?
                                               _%$%tl189562189654%_)
                                              (let ((_%$%e189563189657%_
                                                     (gx#syntax-e
                                                      _%$%tl189562189654%_)))
                                                (let ((_%$%hd189564189660%_
                                                       (##car _%$%e189563189657%_))
                                                      (_%$%tl189565189662%_
                                                       (##cdr _%$%e189563189657%_)))
                                                  (let ((_%hd-bind189665%_
                                                         _%$%hd189564189660%_))
                                                    (if (gx#stx-pair?
                                                         _%$%tl189565189662%_)
                                                        (let ((_%$%e189566189667%_
                                                               (gx#syntax-e
                                                                _%$%tl189565189662%_)))
                                                          (let ((_%$%hd189567189670%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%$%e189566189667%_))
                        (_%$%tl189568189672%_ (##cdr _%$%e189566189667%_)))
                    (let ((_%expr189675%_ _%$%hd189567189670%_))
                      (if (gx#stx-null? _%$%tl189568189672%_)
                          (if (gx#core-bind-values? _%hd-bind189665%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind189665%_)
                                (_%K189544%_
                                 _%rest189545%_
                                 (cons _%hd189543%_ _%r189546%_)))
                              (_%$%E189559189645%_))
                          (_%$%E189559189645%_)))))
                (_%$%E189559189645%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E189559189645%_))
                                          (_%$%E189559189645%_))))
                                  (_%$%E189559189645%_))))
                           (_%$%E189548189711%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e189547189587%_)
                                  (let ((_%$%e189550189681%_
                                         (gx#syntax-e _%$%e189547189587%_)))
                                    (let ((_%$%hd189551189684%_
                                           (##car _%$%e189550189681%_))
                                          (_%$%tl189552189686%_
                                           (##cdr _%$%e189550189681%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd189551189684%_)
                                               (gx#core-identifier=?
                                                _%$%hd189551189684%_
                                                '%#define-values))
                                          (if (gx#stx-pair?
                                               _%$%tl189552189686%_)
                                              (let ((_%$%e189553189689%_
                                                     (gx#syntax-e
                                                      _%$%tl189552189686%_)))
                                                (let ((_%$%hd189554189692%_
                                                       (##car _%$%e189553189689%_))
                                                      (_%$%tl189555189694%_
                                                       (##cdr _%$%e189553189689%_)))
                                                  (let ((_%hd-bind189697%_
                                                         _%$%hd189554189692%_))
                                                    (if (gx#stx-pair?
                                                         _%$%tl189555189694%_)
                                                        (let ((_%$%e189556189699%_
                                                               (gx#syntax-e
                                                                _%$%tl189555189694%_)))
                                                          (let ((_%$%hd189557189702%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%$%e189556189699%_))
                        (_%$%tl189558189704%_ (##cdr _%$%e189556189699%_)))
                    (let* ((_%expr189707%_ _%$%hd189557189702%_)
                           (_%props189709%_ _%$%tl189558189704%_))
                      (if (and (gx#core-bind-values? _%hd-bind189697%_)
                               (gx#stx-list? _%props189709%_)
                               (not (gx#stx-null? _%props189709%_)))
                          (begin
                            (gx#core-bind-values!__0 _%hd-bind189697%_)
                            (_%K189544%_
                             (cons (gx#core-cons
                                    '%#bind-runtime-properties!
                                    (cons _%hd-bind189697%_
                                          (cons _%props189709%_ '())))
                                   _%rest189545%_)
                             (cons (gx#core-cons
                                    '%#define-values
                                    (cons _%hd-bind189697%_
                                          (cons _%expr189707%_ '())))
                                   _%r189546%_)))
                          (_%$%E189549189677%_)))))
                (_%$%E189549189677%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E189549189677%_))
                                          (_%$%E189549189677%_))))
                                  (_%$%E189549189677%_)))))
                      (_%$%E189548189711%_))))
                 (_%expand-body189415%_
                  (lambda (_%rbody189417%_)
                    (let _%lp189419%_ ((_%rest189421%_ _%rbody189417%_)
                                       (_%body189422%_ '()))
                      (let* ((_%$%rest189423189431%_ _%rest189421%_)
                             (_%$%else189425189439%_
                              (lambda () _%body189422%_))
                             (_%$%K189427189531%_
                              (lambda (_%rest189442%_ _%hd189443%_)
                                (let* ((_%$%e189444189465%_ _%hd189443%_)
                                       (_%$%E189460189469%_
                                        (lambda ()
                                          (_%lp189419%_
                                           _%rest189442%_
                                           (cons (gx#core-expand-expression
                                                  _%hd189443%_)
                                                 _%body189422%_))))
                                       (_%$%E189456189483%_
                                        (lambda ()
                                          (if (gx#stx-pair?
                                               _%$%e189444189465%_)
                                              (let ((_%$%e189461189473%_
                                                     (gx#syntax-e
                                                      _%$%e189444189465%_)))
                                                (let ((_%$%hd189462189476%_
                                                       (##car _%$%e189461189473%_))
                                                      (_%$%tl189463189478%_
                                                       (##cdr _%$%e189461189473%_)))
                                                  (let ((_%form189481%_
                                                         _%$%hd189462189476%_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _%form189481%_
                                                         gx#special-form-binding?)
                                                        (_%lp189419%_
                                                         _%rest189442%_
                                                         (cons _%hd189443%_
                                                               _%body189422%_))
                                                        (_%$%E189460189469%_)))))
                                              (_%$%E189460189469%_))))
                                       (_%$%E189446189495%_
                                        (lambda ()
                                          (if (gx#stx-pair?
                                               _%$%e189444189465%_)
                                              (let ((_%$%e189457189487%_
                                                     (gx#syntax-e
                                                      _%$%e189444189465%_)))
                                                (let ((_%$%hd189458189490%_
                                                       (##car _%$%e189457189487%_))
                                                      (_%$%tl189459189492%_
                                                       (##cdr _%$%e189457189487%_)))
                                                  (if (and (gx#identifier?
                                                            _%$%hd189458189490%_)
                                                           (gx#core-identifier=?
                                                            _%$%hd189458189490%_
                                                            '%#export))
                                                      (_%lp189419%_
                                                       _%rest189442%_
                                                       (cons (gx#core-expand-export%__0
                                                              _%hd189443%_)
                                                             _%body189422%_))
                                                      (_%$%E189456189483%_))))
                                              (_%$%E189456189483%_))))
                                       (_%$%E189445189527%_
                                        (lambda ()
                                          (if (gx#stx-pair?
                                               _%$%e189444189465%_)
                                              (let ((_%$%e189447189499%_
                                                     (gx#syntax-e
                                                      _%$%e189444189465%_)))
                                                (let ((_%$%hd189448189502%_
                                                       (##car _%$%e189447189499%_))
                                                      (_%$%tl189449189504%_
                                                       (##cdr _%$%e189447189499%_)))
                                                  (if (and (gx#identifier?
                                                            _%$%hd189448189502%_)
                                                           (gx#core-identifier=?
                                                            _%$%hd189448189502%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%$%tl189449189504%_)
                                                          (let ((_%$%e189450189507%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl189449189504%_)))
                    (let ((_%$%hd189451189510%_ (##car _%$%e189450189507%_))
                          (_%$%tl189452189512%_ (##cdr _%$%e189450189507%_)))
                      (let ((_%hd-bind189515%_ _%$%hd189451189510%_))
                        (if (gx#stx-pair? _%$%tl189452189512%_)
                            (let ((_%$%e189453189517%_
                                   (gx#syntax-e _%$%tl189452189512%_)))
                              (let ((_%$%hd189454189520%_
                                     (##car _%$%e189453189517%_))
                                    (_%$%tl189455189522%_
                                     (##cdr _%$%e189453189517%_)))
                                (let ((_%expr189525%_ _%$%hd189454189520%_))
                                  (if (gx#stx-null? _%$%tl189455189522%_)
                                      (_%lp189419%_
                                       _%rest189442%_
                                       (cons (gx#core-quote-syntax__1
                                              (gx#core-list
                                               '%#define-values
                                               (gx#core-quote-bind-values
                                                _%hd-bind189515%_)
                                               (gx#core-expand-expression
                                                _%expr189525%_))
                                              (gx#stx-source _%hd189443%_))
                                             _%body189422%_))
                                      (_%$%E189446189495%_)))))
                            (_%$%E189446189495%_)))))
                  (_%$%E189446189495%_))
              (_%$%E189446189495%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E189446189495%_)))))
                                  (_%$%E189445189527%_)))))
                        (if (pair? _%$%rest189423189431%_)
                            (let ((_%$%hd189428189534%_
                                   (##car _%$%rest189423189431%_))
                                  (_%$%tl189429189536%_
                                   (##cdr _%$%rest189423189431%_)))
                              (let* ((_%hd189539%_ _%$%hd189428189534%_)
                                     (_%rest189541%_ _%$%tl189429189536%_))
                                (_%$%K189427189531%_
                                 _%rest189541%_
                                 _%hd189539%_)))
                            (_%$%else189425189439%_)))))))
          (_%expand-body189415%_
           (gx#core-expand-block__%
            (cons '%#begin-module _%body189412%_)
            _%expand-special189414%_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_%stx189253%_
               _%expanded?189254%_
               _%method189255%_
               _%current-phi189256%_
               _%expand1189257%_)
        (letrec ((_%K189259%_
                  (lambda (_%rest189379%_ _%r189380%_)
                    (let* ((_%$%e189381189388%_ _%rest189379%_)
                           (_%$%E189383189392%_ (lambda () _%r189380%_))
                           (_%$%E189382189408%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e189381189388%_)
                                  (let ((_%$%e189384189396%_
                                         (gx#syntax-e _%$%e189381189388%_)))
                                    (let ((_%$%hd189385189399%_
                                           (##car _%$%e189384189396%_))
                                          (_%$%tl189386189401%_
                                           (##cdr _%$%e189384189396%_)))
                                      (let* ((_%hd189404%_
                                              _%$%hd189385189399%_)
                                             (_%rest189406%_
                                              _%$%tl189386189401%_))
                                        (_%step189260%_
                                         _%hd189404%_
                                         _%rest189406%_
                                         _%r189380%_))))
                                  (_%$%E189383189392%_)))))
                      (_%$%E189382189408%_))))
                 (_%step189260%_
                  (lambda (_%hd189293%_ _%rest189294%_ _%r189295%_)
                    (let* ((_%$%e189296189314%_ _%hd189293%_)
                           (_%$%E189309189318%_
                            (lambda ()
                              (if (_%expanded?189254%_ (gx#stx-e _%hd189293%_))
                                  (_%K189259%_
                                   _%rest189294%_
                                   (cons (gx#stx-e _%hd189293%_) _%r189295%_))
                                  (_%expand1189257%_
                                   _%hd189293%_
                                   _%K189259%_
                                   _%rest189294%_
                                   _%r189295%_))))
                           (_%$%E189305189334%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e189296189314%_)
                                  (let ((_%$%e189310189322%_
                                         (gx#syntax-e _%$%e189296189314%_)))
                                    (let ((_%$%hd189311189325%_
                                           (##car _%$%e189310189322%_))
                                          (_%$%tl189312189327%_
                                           (##cdr _%$%e189310189322%_)))
                                      (let* ((_%macro189330%_
                                              _%$%hd189311189325%_)
                                             (_%body189332%_
                                              _%$%tl189312189327%_))
                                        (if (gx#core-bound-identifier?__%
                                             _%macro189330%_
                                             gx#syntax-binding?)
                                            (_%K189259%_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _%macro189330%_)
                                                    _%hd189293%_
                                                    _%method189255%_)
                                                   _%rest189294%_)
                                             _%r189295%_)
                                            (_%$%E189309189318%_)))))
                                  (_%$%E189309189318%_))))
                           (_%$%E189298189348%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e189296189314%_)
                                  (let ((_%$%e189306189338%_
                                         (gx#syntax-e _%$%e189296189314%_)))
                                    (let ((_%$%hd189307189341%_
                                           (##car _%$%e189306189338%_))
                                          (_%$%tl189308189343%_
                                           (##cdr _%$%e189306189338%_)))
                                      (if (eq? (gx#stx-e _%$%hd189307189341%_)
                                               'begin:)
                                          (let ((_%body189346%_
                                                 _%$%tl189308189343%_))
                                            (_%K189259%_
                                             (gx#stx-foldr
                                              cons
                                              _%rest189294%_
                                              _%body189346%_)
                                             _%r189295%_))
                                          (_%$%E189305189334%_))))
                                  (_%$%E189305189334%_))))
                           (_%$%E189297189375%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e189296189314%_)
                                  (let ((_%$%e189299189352%_
                                         (gx#syntax-e _%$%e189296189314%_)))
                                    (let ((_%$%hd189300189355%_
                                           (##car _%$%e189299189352%_))
                                          (_%$%tl189301189357%_
                                           (##cdr _%$%e189299189352%_)))
                                      (if (eq? (gx#stx-e _%$%hd189300189355%_)
                                               'phi:)
                                          (if (gx#stx-pair?
                                               _%$%tl189301189357%_)
                                              (let ((_%$%e189302189360%_
                                                     (gx#syntax-e
                                                      _%$%tl189301189357%_)))
                                                (let ((_%$%hd189303189363%_
                                                       (##car _%$%e189302189360%_))
                                                      (_%$%tl189304189365%_
                                                       (##cdr _%$%e189302189360%_)))
                                                  (let* ((_%dphi189368%_
                                                          _%$%hd189303189363%_)
                                                         (_%body189370%_
                                                          _%$%tl189304189365%_))
                                                    (if (gx#stx-fixnum?
                                                         _%dphi189368%_)
                                                        (let ((_%rbody189373%_
                                                               (call-with-parameters__1
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_%K189259%_ _%body189370%_ '()))
                        _%current-phi189256%_
                        (fx+ (gx#stx-e _%dphi189368%_)
                             (_%current-phi189256%_)))))
                  (_%K189259%_
                   _%rest189294%_
                   (foldr__0 cons _%r189295%_ _%rbody189373%_)))
                (_%$%E189298189348%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E189298189348%_))
                                          (_%$%E189298189348%_))))
                                  (_%$%E189298189348%_)))))
                      (_%$%E189297189375%_)))))
          (let* ((_%$%e189261189268%_ _%stx189253%_)
                 (_%$%E189263189272%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%$%e189261189268%_)))
                 (_%$%E189262189289%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e189261189268%_)
                        (let ((_%$%e189264189276%_
                               (gx#syntax-e _%$%e189261189268%_)))
                          (let ((_%$%hd189265189279%_
                                 (##car _%$%e189264189276%_))
                                (_%$%tl189266189281%_
                                 (##cdr _%$%e189264189276%_)))
                            (let ((_%body189284%_ _%$%tl189266189281%_))
                              (if (_%current-phi189256%_)
                                  (_%K189259%_ _%body189284%_ '())
                                  (call-with-parameters__1
                                   (lambda () (_%K189259%_ _%body189284%_ '()))
                                   _%current-phi189256%_
                                   (gx#current-expander-phi))))))
                        (_%$%E189263189272%_)))))
            (_%$%E189262189289%_)))))
    (define gx#core-expand-import%__%
      (lambda (_%stx188907%_ _%internal-expand?188908%_)
        (letrec ((_%expand1188910%_
                  (lambda (_%hd189225%_ _%K189226%_ _%rest189227%_ _%r189228%_)
                    (if (gx#core-bound-module? _%hd189225%_)
                        (_%import1188911%_
                         (gx#syntax-local-e__0 _%hd189225%_)
                         _%K189226%_
                         _%rest189227%_
                         _%r189228%_)
                        (if (gx#core-library-module-path? _%hd189225%_)
                            (_%import1188911%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%hd189225%_))
                             _%K189226%_
                             _%rest189227%_
                             _%r189228%_)
                            (if (gx#core-library-relative-module-path?
                                 _%hd189225%_)
                                (_%import1188911%_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _%hd189225%_))
                                 _%K189226%_
                                 _%rest189227%_
                                 _%r189228%_)
                                (let ((_%e189234%_ (gx#stx-e _%hd189225%_)))
                                  (if (pair? _%e189234%_)
                                      (let ((_%$e189237%_
                                             (gx#stx-e (##car _%e189234%_))))
                                        (if (eq? 'spec: _%$e189237%_)
                                            (_%import-spec188914%_
                                             _%hd189225%_
                                             _%K189226%_
                                             _%rest189227%_
                                             _%r189228%_)
                                            (if (eq? 'in: _%$e189237%_)
                                                (_%import-submodule188912%_
                                                 _%hd189225%_
                                                 _%K189226%_
                                                 _%rest189227%_
                                                 _%r189228%_)
                                                (if (eq? 'runtime:
                                                         _%$e189237%_)
                                                    (_%import-runtime188913%_
                                                     _%hd189225%_
                                                     _%K189226%_
                                                     _%rest189227%_
                                                     _%r189228%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _%stx188907%_
                                                     _%hd189225%_)))))
                                      (if (string? _%e189234%_)
                                          (_%import1188911%_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _%hd189225%_
                                             (gx#stx-source _%stx188907%_)))
                                           _%K189226%_
                                           _%rest189227%_
                                           _%r189228%_)
                                          (if (##structure-instance-of?
                                               _%e189234%_
                                               'gx#module-context::t)
                                              (_%K189226%_
                                               _%rest189227%_
                                               (cons _%e189234%_ _%r189228%_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _%stx188907%_
                                               _%hd189225%_))))))))))
                 (_%import1188911%_
                  (lambda (_%ctx189214%_
                           _%K189215%_
                           _%rest189216%_
                           _%r189217%_)
                    (let ((_%dphi189219%_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_%K189215%_
                       _%rest189216%_
                       (cons (##structure
                              gx#import-set::t
                              _%ctx189214%_
                              _%dphi189219%_
                              (map (lambda (_%$%g189220189222%_)
                                     (gx#core-module-export->import__%
                                      _%$%g189220189222%_
                                      '#f
                                      _%dphi189219%_))
                                   (##unchecked-structure-ref
                                    _%ctx189214%_
                                    '9
                                    '#f
                                    '#f)))
                             _%r189217%_)))))
                 (_%import-submodule188912%_
                  (lambda (_%hd189181%_ _%K189182%_ _%rest189183%_ _%r189184%_)
                    (let* ((_%$%e189185189192%_ _%hd189181%_)
                           (_%$%E189187189196%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%$%e189185189192%_)))
                           (_%$%E189186189210%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e189185189192%_)
                                  (let ((_%$%e189188189200%_
                                         (gx#syntax-e _%$%e189185189192%_)))
                                    (let ((_%$%hd189189189203%_
                                           (##car _%$%e189188189200%_))
                                          (_%$%tl189190189205%_
                                           (##cdr _%$%e189188189200%_)))
                                      (let ((_%spath189208%_
                                             _%$%tl189190189205%_))
                                        (_%import1188911%_
                                         (_%import-spec-source188915%_
                                          _%spath189208%_)
                                         _%K189182%_
                                         _%rest189183%_
                                         _%r189184%_))))
                                  (_%$%E189187189196%_)))))
                      (_%$%E189186189210%_))))
                 (_%import-runtime188913%_
                  (lambda (_%hd189148%_ _%K189149%_ _%rest189150%_ _%r189151%_)
                    (let* ((_%$%e189152189159%_ _%hd189148%_)
                           (_%$%E189154189163%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%$%e189152189159%_)))
                           (_%$%E189153189177%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e189152189159%_)
                                  (let ((_%$%e189155189167%_
                                         (gx#syntax-e _%$%e189152189159%_)))
                                    (let ((_%$%hd189156189170%_
                                           (##car _%$%e189155189167%_))
                                          (_%$%tl189157189172%_
                                           (##cdr _%$%e189155189167%_)))
                                      (let ((_%spath189175%_
                                             _%$%tl189157189172%_))
                                        (_%K189149%_
                                         _%rest189150%_
                                         (cons (_%import-spec-source188915%_
                                                _%spath189175%_)
                                               _%r189151%_)))))
                                  (_%$%E189154189163%_)))))
                      (_%$%E189153189177%_))))
                 (_%import-spec188914%_
                  (lambda (_%hd188986%_ _%K188987%_ _%rest188988%_ _%r188989%_)
                    (let* ((_%$%e188990189007%_ _%hd188986%_)
                           (_%$%E188999189011%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%$%e188990189007%_)))
                           (_%$%E188992189122%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e188990189007%_)
                                  (let ((_%$%e189000189015%_
                                         (gx#syntax-e _%$%e188990189007%_)))
                                    (let ((_%$%hd189001189018%_
                                           (##car _%$%e189000189015%_))
                                          (_%$%tl189002189020%_
                                           (##cdr _%$%e189000189015%_)))
                                      (if (gx#stx-pair? _%$%tl189002189020%_)
                                          (let ((_%$%e189003189023%_
                                                 (gx#syntax-e
                                                  _%$%tl189002189020%_)))
                                            (let ((_%$%hd189004189026%_
                                                   (##car _%$%e189003189023%_))
                                                  (_%$%tl189005189028%_
                                                   (##cdr _%$%e189003189023%_)))
                                              (let* ((_%path189031%_
                                                      _%$%hd189004189026%_)
                                                     (_%specs189033%_
                                                      _%$%tl189005189028%_))
                                                (let ((_%src-ctx189035%_
                                                       (_%import-spec-source188915%_
                                                        _%path189031%_))
                                                      (_%exports189036%_
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
                                                      (_%specs189037%_
                                                       (gx#syntax->list
                                                        _%specs189033%_)))
                                                  (for-each
                                                   (lambda (_%out189039%_)
                                                     (__hash-put!
                                                      _%exports189036%_
                                                      (cons (##unchecked-structure-ref
                                                             _%out189039%_
                                                             '3
                                                             '#f
                                                             '#f)
                                                            (##unchecked-structure-ref
                                                             _%out189039%_
                                                             '4
                                                             '#f
                                                             '#f))
                                                      _%out189039%_))
                                                   (##unchecked-structure-ref
                                                    _%src-ctx189035%_
                                                    '9
                                                    '#f
                                                    '#f))
                                                  (_%K188987%_
                                                   _%rest188988%_
                                                   (foldl__0
                                                    (lambda (_%spec189041%_
                                                             _%r189042%_)
                                                      (let* ((_%$%e189043189059%_
                                                              _%spec189041%_)
                                                             (_%$%E189045189063%_
                                                              (lambda ()
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid syntax-case clause"
                         _%$%e189043189059%_)))
                     (_%$%E189044189118%_
                      (lambda ()
                        (if (gx#stx-pair? _%$%e189043189059%_)
                            (let ((_%$%e189046189067%_
                                   (gx#syntax-e _%$%e189043189059%_)))
                              (let ((_%$%hd189047189070%_
                                     (##car _%$%e189046189067%_))
                                    (_%$%tl189048189072%_
                                     (##cdr _%$%e189046189067%_)))
                                (let ((_%phi189075%_ _%$%hd189047189070%_))
                                  (if (gx#stx-pair? _%$%tl189048189072%_)
                                      (let ((_%$%e189049189077%_
                                             (gx#syntax-e
                                              _%$%tl189048189072%_)))
                                        (let ((_%$%hd189050189080%_
                                               (##car _%$%e189049189077%_))
                                              (_%$%tl189051189082%_
                                               (##cdr _%$%e189049189077%_)))
                                          (let ((_%name189085%_
                                                 _%$%hd189050189080%_))
                                            (if (gx#stx-pair?
                                                 _%$%tl189051189082%_)
                                                (let ((_%$%e189052189087%_
                                                       (gx#syntax-e
                                                        _%$%tl189051189082%_)))
                                                  (let ((_%$%hd189053189090%_
                                                         (##car _%$%e189052189087%_))
                                                        (_%$%tl189054189092%_
                                                         (##cdr _%$%e189052189087%_)))
                                                    (let ((_%src-phi189095%_
                                                           _%$%hd189053189090%_))
                                                      (if (gx#stx-pair?
                                                           _%$%tl189054189092%_)
                                                          (let ((_%$%e189055189097%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl189054189092%_)))
                    (let ((_%$%hd189056189100%_ (##car _%$%e189055189097%_))
                          (_%$%tl189057189102%_ (##cdr _%$%e189055189097%_)))
                      (let ((_%src-name189105%_ _%$%hd189056189100%_))
                        (if (gx#stx-null? _%$%tl189057189102%_)
                            (if (and (gx#stx-fixnum? _%src-phi189095%_)
                                     (gx#identifier? _%src-name189105%_)
                                     (gx#stx-fixnum? _%phi189075%_)
                                     (gx#identifier? _%name189085%_))
                                (let ((_%src-phi189107%_
                                       (gx#stx-e _%src-phi189095%_))
                                      (_%src-name189108%_
                                       (gx#core-identifier-key
                                        _%src-name189105%_))
                                      (_%phi189109%_ (gx#stx-e _%phi189075%_))
                                      (_%name189110%_
                                       (gx#core-identifier-key
                                        _%name189085%_)))
                                  (let ((_%$e189112%_
                                         (__hash-get
                                          _%exports189036%_
                                          (cons _%src-phi189107%_
                                                _%src-name189108%_))))
                                    (if _%$e189112%_
                                        (cons (gx#core-module-export->import__%
                                               _%$e189112%_
                                               _%name189110%_
                                               (fx- _%phi189109%_
                                                    _%src-phi189107%_))
                                              _%r189042%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; no matching export"
                                         _%stx188907%_
                                         _%hd188986%_))))
                                (_%$%E189045189063%_))
                            (_%$%E189045189063%_)))))
                  (_%$%E189045189063%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%E189045189063%_)))))
                                      (_%$%E189045189063%_)))))
                            (_%$%E189045189063%_)))))
                (_%$%E189044189118%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r188989%_
                                                    _%specs189037%_))))))
                                          (_%$%E188999189011%_))))
                                  (_%$%E188999189011%_))))
                           (_%$%E188991189144%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e188990189007%_)
                                  (let ((_%$%e188993189126%_
                                         (gx#syntax-e _%$%e188990189007%_)))
                                    (let ((_%$%hd188994189129%_
                                           (##car _%$%e188993189126%_))
                                          (_%$%tl188995189131%_
                                           (##cdr _%$%e188993189126%_)))
                                      (if (gx#stx-pair? _%$%tl188995189131%_)
                                          (let ((_%$%e188996189134%_
                                                 (gx#syntax-e
                                                  _%$%tl188995189131%_)))
                                            (let ((_%$%hd188997189137%_
                                                   (##car _%$%e188996189134%_))
                                                  (_%$%tl188998189139%_
                                                   (##cdr _%$%e188996189134%_)))
                                              (let ((_%path189142%_
                                                     _%$%hd188997189137%_))
                                                (if (gx#stx-null?
                                                     _%$%tl188998189139%_)
                                                    (_%K188987%_
                                                     _%rest188988%_
                                                     (cons (_%import-spec-source188915%_
                                                            _%path189142%_)
                                                           _%r188989%_))
                                                    (_%$%E188992189122%_)))))
                                          (_%$%E188992189122%_))))
                                  (_%$%E188992189122%_)))))
                      (_%$%E188991189144%_))))
                 (_%import-spec-source188915%_
                  (lambda (_%spath188984%_)
                    (gx#core-import-nested-module
                     _%spath188984%_
                     _%stx188907%_)))
                 (_%import!188916%_
                  (lambda (_%rbody188929%_)
                    (letrec* ((_%current-ctx188931%_
                               (gx#current-expander-context))
                              (_%deps188932%_ (make-hash-table-eq))
                              (_%bind!188933%_
                               (lambda (_%hd188982%_)
                                 (gx#core-bind-import!__1
                                  _%hd188982%_
                                  _%current-ctx188931%_))))
                      (let _%lp188935%_ ((_%rest188937%_ _%rbody188929%_)
                                         (_%body188938%_ '()))
                        (let* ((_%$%rest188939188947%_ _%rest188937%_)
                               (_%$%else188941188958%_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _%current-ctx188931%_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _%current-ctx188931%_
                                       (foldl__0
                                        cons
                                        (##unchecked-structure-ref
                                         _%current-ctx188931%_
                                         '8
                                         '#f
                                         '#f)
                                        _%body188938%_)
                                       '8
                                       '#f
                                       '#f)
                                      '#!void)
                                  (__hash-for-each
                                   (lambda (_%ctx188955%_ _%_188956%_)
                                     (gx#eval-module _%ctx188955%_))
                                   _%deps188932%_)
                                  _%body188938%_))
                               (_%$%K188943188970%_
                                (lambda (_%rest188961%_ _%hd188962%_)
                                  (if (##structure-direct-instance-of?
                                       _%hd188962%_
                                       'gx#module-import::t)
                                      (let ()
                                        (_%bind!188933%_ _%hd188962%_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _%hd188962%_
                                                   '3
                                                   '#f
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _%hd188962%_
                                                            '1
                                                            '#f
                                                            '#f)
                                                           '3
                                                           '#f
                                                           '#f)))
                                            (__hash-put!
                                             _%deps188932%_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _%hd188962%_
                                               '1
                                               '#f
                                               '#f)
                                              '1
                                              '#f
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _%hd188962%_
                                           'gx#import-set::t)
                                          (let ()
                                            (for-each
                                             _%bind!188933%_
                                             (##unchecked-structure-ref
                                              _%hd188962%_
                                              '3
                                              '#f
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _%hd188962%_
                                                  '2
                                                  '#f
                                                  '#f))
                                                (__hash-put!
                                                 _%deps188932%_
                                                 (##unchecked-structure-ref
                                                  _%hd188962%_
                                                  '1
                                                  '#f
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_%$e188966%_
                                                 (##structure-instance-of?
                                                  _%hd188962%_
                                                  'gx#module-context::t)))
                                            (if _%$e188966%_
                                                _%$e188966%_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _%stx188907%_
                                                 _%hd188962%_)))))
                                  (_%lp188935%_
                                   _%rest188961%_
                                   (cons _%hd188962%_ _%body188938%_)))))
                          (if (pair? _%$%rest188939188947%_)
                              (let ((_%$%hd188944188973%_
                                     (##car _%$%rest188939188947%_))
                                    (_%$%tl188945188975%_
                                     (##cdr _%$%rest188939188947%_)))
                                (let* ((_%hd188978%_ _%$%hd188944188973%_)
                                       (_%rest188980%_ _%$%tl188945188975%_))
                                  (_%$%K188943188970%_
                                   _%rest188980%_
                                   _%hd188978%_)))
                              (_%$%else188941188958%_)))))))
                 (_%expanded-import?188917%_
                  (lambda (_%e188921%_)
                    (let ((_%$e188923%_
                           (##structure-direct-instance-of?
                            _%e188921%_
                            'gx#import-set::t)))
                      (if _%$e188923%_
                          _%$e188923%_
                          (let ((_%$e188926%_
                                 (##structure-direct-instance-of?
                                  _%e188921%_
                                  'gx#module-import::t)))
                            (if _%$e188926%_
                                _%$e188926%_
                                (##structure-instance-of?
                                 _%e188921%_
                                 'gx#module-context::t))))))))
          (let ((_%rbody188919%_
                 (gx#core-expand-import/export
                  _%stx188907%_
                  _%expanded-import?188917%_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _%expand1188910%_)))
            (if _%internal-expand?188908%_
                (reverse _%rbody188919%_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_%import!188916%_ _%rbody188919%_))
                 (gx#stx-source _%stx188907%_)))))))
    (define gx#core-expand-import%__0
      (lambda (_%stx189246%_)
        (let ((_%internal-expand?189248%_ '#f))
          (gx#core-expand-import%__%
           _%stx189246%_
           _%internal-expand?189248%_))))
    (define gx#core-expand-import%
      (lambda _g192004_
        (let ((_g192005_ (##length _g192004_)))
          (cond ((##fx= _g192005_ 1)
                 (apply gx#core-expand-import%__0 _g192004_))
                ((##fx= _g192005_ 2)
                 (apply gx#core-expand-import%__% _g192004_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g192004_))))))
    (define gx#core-import-nested-module
      (lambda (_%spath188834%_ _%where188835%_)
        (let* ((_%$%e188836188843%_ _%spath188834%_)
               (_%$%E188838188847%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e188836188843%_)))
               (_%$%E188837188902%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e188836188843%_)
                      (let ((_%$%e188839188851%_
                             (gx#syntax-e _%$%e188836188843%_)))
                        (let ((_%$%hd188840188854%_
                               (##car _%$%e188839188851%_))
                              (_%$%tl188841188856%_
                               (##cdr _%$%e188839188851%_)))
                          (let* ((_%origin188859%_ _%$%hd188840188854%_)
                                 (_%sub188861%_ _%$%tl188841188856%_)
                                 (_%origin-ctx188863%_
                                  (if (gx#stx-false? _%origin188859%_)
                                      (gx#current-expander-context)
                                      (gx#import-module__0 _%origin188859%_))))
                            (let _%lp188865%_ ((_%rest188867%_ _%sub188861%_)
                                               (_%ctx188868%_
                                                _%origin-ctx188863%_))
                              (let* ((_%$%e188869188876%_ _%rest188867%_)
                                     (_%$%E188871188880%_
                                      (lambda () _%ctx188868%_))
                                     (_%$%E188870188898%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%$%e188869188876%_)
                                            (let ((_%$%e188872188884%_
                                                   (gx#syntax-e
                                                    _%$%e188869188876%_)))
                                              (let ((_%$%hd188873188887%_
                                                     (##car _%$%e188872188884%_))
                                                    (_%$%tl188874188889%_
                                                     (##cdr _%$%e188872188884%_)))
                                                (let* ((_%id188892%_
                                                        _%$%hd188873188887%_)
                                                       (_%rest188894%_
                                                        _%$%tl188874188889%_)
                                                       (_%bind188896%_
                                                        (gx#resolve-identifier__%
                                                         _%id188892%_
                                                         '0
                                                         _%ctx188868%_)))
                                                  (if (and (##structure-direct-instance-of?
                                                            _%bind188896%_
                                                            'gx#syntax-binding::t)
                                                           (##structure-instance-of?
                                                            (##unchecked-structure-ref
                                                             _%bind188896%_
                                                             '5
                                                             '#f
                                                             '#f)
                                                            'gx#module-context::t))
                                                      '#!void
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; not bound as module"
                                                       _%where188835%_
                                                       _%spath188834%_
                                                       _%id188892%_))
                                                  (_%lp188865%_
                                                   _%rest188894%_
                                                   (##unchecked-structure-ref
                                                    _%bind188896%_
                                                    '5
                                                    '#f
                                                    '#f)))))
                                            (_%$%E188871188880%_)))))
                                (_%$%E188870188898%_))))))
                      (_%$%E188838188847%_)))))
          (_%$%E188837188902%_))))
    (define gx#core-expand-import-source
      (lambda (_%hd188832%_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _%hd188832%_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_%stx188327%_ _%internal-expand?188328%_)
        (letrec* ((_%make-export__191932191933%_
                   (lambda (_%bind188780%_
                            _%phi188781%_
                            _%ctx188782%_
                            _%name188783%_)
                     (let* ((_%key188785%_
                             (##unchecked-structure-ref
                              _%bind188780%_
                              '2
                              '#f
                              '#f))
                            (_%export-key188787%_
                             (if _%name188783%_
                                 (gx#core-identifier-key _%name188783%_)
                                 _%key188785%_)))
                       (##structure
                        gx#module-export::t
                        _%ctx188782%_
                        _%key188785%_
                        _%phi188781%_
                        _%export-key188787%_
                        (let ((_%$e188790%_
                               (##structure-instance-of?
                                _%bind188780%_
                                'gx#extern-binding::t)))
                          (if _%$e188790%_
                              _%$e188790%_
                              (##structure-direct-instance-of?
                               _%bind188780%_
                               'gx#import-binding::t)))))))
                  (_%make-export__0__191934191937%_
                   (lambda (_%bind188796%_)
                     (let* ((_%phi188798%_ (gx#current-export-expander-phi))
                            (_%ctx188800%_ (gx#current-expander-context))
                            (_%name188802%_ '#f))
                       (_%make-export__191932191933%_
                        _%bind188796%_
                        _%phi188798%_
                        _%ctx188800%_
                        _%name188802%_))))
                  (_%make-export__1__191935191938%_
                   (lambda (_%bind188804%_ _%phi188805%_)
                     (let* ((_%ctx188807%_ (gx#current-expander-context))
                            (_%name188809%_ '#f))
                       (_%make-export__191932191933%_
                        _%bind188804%_
                        _%phi188805%_
                        _%ctx188807%_
                        _%name188809%_))))
                  (_%make-export__2__191936191939%_
                   (lambda (_%bind188811%_ _%phi188812%_ _%ctx188813%_)
                     (let ((_%name188815%_ '#f))
                       (_%make-export__191932191933%_
                        _%bind188811%_
                        _%phi188812%_
                        _%ctx188813%_
                        _%name188815%_))))
                  (_%make-export188330%_
                   (lambda _g192006_
                     (let ((_g192007_ (##length _g192006_)))
                       (cond ((##fx= _g192007_ 1)
                              (apply _%make-export__0__191934191937%_
                                     _g192006_))
                             ((##fx= _g192007_ 2)
                              (apply _%make-export__1__191935191938%_
                                     _g192006_))
                             ((##fx= _g192007_ 3)
                              (apply _%make-export__2__191936191939%_
                                     _g192006_))
                             ((##fx= _g192007_ 4)
                              (apply _%make-export__191932191933%_ _g192006_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g192006_))))))
                  (_%expand1188331%_
                   (lambda (_%hd188485%_
                            _%K188486%_
                            _%rest188487%_
                            _%r188488%_)
                     (let* ((_%$%e188489188521%_ _%hd188485%_)
                            (_%$%E188516188525%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _%stx188327%_
                                _%hd188485%_)))
                            (_%$%E188506188609%_
                             (lambda ()
                               (if (gx#stx-pair? _%$%e188489188521%_)
                                   (let ((_%$%e188517188529%_
                                          (gx#syntax-e _%$%e188489188521%_)))
                                     (let ((_%$%hd188518188532%_
                                            (##car _%$%e188517188529%_))
                                           (_%$%tl188519188534%_
                                            (##cdr _%$%e188517188529%_)))
                                       (if (eq? (gx#stx-e _%$%hd188518188532%_)
                                                'import:)
                                           (let ((_%in188537%_
                                                  _%$%tl188519188534%_))
                                             (if (gx#stx-list? _%in188537%_)
                                                 (let _%lp188539%_ ((_%in-rest188541%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%in188537%_)
                            (_%r188542%_ _%r188488%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%$%e188543188550%_
                                                           _%in-rest188541%_)
                                                          (_%$%E188545188554%_
                                                           (lambda ()
                                                             (_%K188486%_
                                                              _%rest188487%_
                                                              _%r188542%_)))
                                                          (_%$%E188544188605%_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%e188543188550%_)
                         (let ((_%$%e188546188558%_
                                (gx#syntax-e _%$%e188543188550%_)))
                           (let ((_%$%hd188547188561%_
                                  (##car _%$%e188546188558%_))
                                 (_%$%tl188548188563%_
                                  (##cdr _%$%e188546188558%_)))
                             (let* ((_%hd188566%_ _%$%hd188547188561%_)
                                    (_%in-rest188568%_ _%$%tl188548188563%_)
                                    (_%src188603%_
                                     (if (gx#core-bound-module? _%hd188566%_)
                                         (gx#syntax-local-e__0 _%hd188566%_)
                                         (if (gx#core-library-module-path?
                                              _%hd188566%_)
                                             (gx#import-module__0
                                              (gx#core-resolve-library-module-path
                                               _%hd188566%_))
                                             (if (gx#core-library-relative-module-path?
                                                  _%hd188566%_)
                                                 (gx#import-module__0
                                                  (gx#core-resolve-library-relative-module-path
                                                   _%hd188566%_))
                                                 (if (gx#stx-string?
                                                      _%hd188566%_)
                                                     (gx#import-module__0
                                                      (gx#core-resolve-module-path__%
                                                       _%hd188566%_
                                                       (gx#stx-source
                                                        _%stx188327%_)))
                                                     (let* ((_%$%e188574188581%_
                                                             _%hd188566%_)
                                                            (_%$%E188576188585%_
                                                             (lambda ()
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; illegal re-export"
                                                                _%stx188327%_
                                                                _%hd188566%_)))
                                                            (_%$%E188575188599%_
                                                             (lambda ()
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%e188574188581%_)
                           (let ((_%$%e188577188589%_
                                  (gx#syntax-e _%$%e188574188581%_)))
                             (let ((_%$%hd188578188592%_
                                    (##car _%$%e188577188589%_))
                                   (_%$%tl188579188594%_
                                    (##cdr _%$%e188577188589%_)))
                               (if (eq? (gx#stx-e _%$%hd188578188592%_) 'in:)
                                   (let ((_%spath188597%_
                                          _%$%tl188579188594%_))
                                     (gx#core-import-nested-module
                                      _%spath188597%_
                                      _%stx188327%_))
                                   (_%$%E188576188585%_))))
                           (_%$%E188576188585%_)))))
               (_%$%E188575188599%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (_%lp188539%_
                                _%in-rest188568%_
                                (_%export-imports188332%_
                                 _%src188603%_
                                 _%r188542%_)))))
                         (_%$%E188545188554%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%E188544188605%_)))
                                                 (_%$%E188516188525%_)))
                                           (_%$%E188516188525%_))))
                                   (_%$%E188516188525%_))))
                            (_%$%E188493188649%_
                             (lambda ()
                               (if (gx#stx-pair? _%$%e188489188521%_)
                                   (let ((_%$%e188507188613%_
                                          (gx#syntax-e _%$%e188489188521%_)))
                                     (let ((_%$%hd188508188616%_
                                            (##car _%$%e188507188613%_))
                                           (_%$%tl188509188618%_
                                            (##cdr _%$%e188507188613%_)))
                                       (if (eq? (gx#stx-e _%$%hd188508188616%_)
                                                'rename:)
                                           (if (gx#stx-pair?
                                                _%$%tl188509188618%_)
                                               (let ((_%$%e188510188621%_
                                                      (gx#syntax-e
                                                       _%$%tl188509188618%_)))
                                                 (let ((_%$%hd188511188624%_
                                                        (##car _%$%e188510188621%_))
                                                       (_%$%tl188512188626%_
                                                        (##cdr _%$%e188510188621%_)))
                                                   (let ((_%id188629%_
                                                          _%$%hd188511188624%_))
                                                     (if (gx#stx-pair?
                                                          _%$%tl188512188626%_)
                                                         (let ((_%$%e188513188631%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%tl188512188626%_)))
                   (let ((_%$%hd188514188634%_ (##car _%$%e188513188631%_))
                         (_%$%tl188515188636%_ (##cdr _%$%e188513188631%_)))
                     (let ((_%name188639%_ _%$%hd188514188634%_))
                       (if (gx#stx-null? _%$%tl188515188636%_)
                           (let* ((_%phi188641%_
                                   (gx#current-export-expander-phi))
                                  (_%$e188643%_
                                   (gx#core-resolve-identifier__1
                                    _%id188629%_
                                    _%phi188641%_)))
                             (if _%$e188643%_
                                 (_%K188486%_
                                  _%rest188487%_
                                  (cons (_%make-export__191932191933%_
                                         _%$e188643%_
                                         _%phi188641%_
                                         (gx#current-expander-context)
                                         _%name188639%_)
                                        _%r188488%_))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Reference to unbound identifier"
                                  _%stx188327%_
                                  _%hd188485%_
                                  _%id188629%_)))
                           (_%$%E188506188609%_)))))
                 (_%$%E188506188609%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%E188506188609%_))
                                           (_%$%E188506188609%_))))
                                   (_%$%E188506188609%_))))
                            (_%$%E188492188699%_
                             (lambda ()
                               (if (gx#stx-pair? _%$%e188489188521%_)
                                   (let ((_%$%e188494188653%_
                                          (gx#syntax-e _%$%e188489188521%_)))
                                     (let ((_%$%hd188495188656%_
                                            (##car _%$%e188494188653%_))
                                           (_%$%tl188496188658%_
                                            (##cdr _%$%e188494188653%_)))
                                       (if (eq? (gx#stx-e _%$%hd188495188656%_)
                                                'spec:)
                                           (if (gx#stx-pair?
                                                _%$%tl188496188658%_)
                                               (let ((_%$%e188497188661%_
                                                      (gx#syntax-e
                                                       _%$%tl188496188658%_)))
                                                 (let ((_%$%hd188498188664%_
                                                        (##car _%$%e188497188661%_))
                                                       (_%$%tl188499188666%_
                                                        (##cdr _%$%e188497188661%_)))
                                                   (let ((_%phi188669%_
                                                          _%$%hd188498188664%_))
                                                     (if (gx#stx-pair?
                                                          _%$%tl188499188666%_)
                                                         (let ((_%$%e188500188671%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%tl188499188666%_)))
                   (let ((_%$%hd188501188674%_ (##car _%$%e188500188671%_))
                         (_%$%tl188502188676%_ (##cdr _%$%e188500188671%_)))
                     (let ((_%id188679%_ _%$%hd188501188674%_))
                       (if (gx#stx-pair? _%$%tl188502188676%_)
                           (let ((_%$%e188503188681%_
                                  (gx#syntax-e _%$%tl188502188676%_)))
                             (let ((_%$%hd188504188684%_
                                    (##car _%$%e188503188681%_))
                                   (_%$%tl188505188686%_
                                    (##cdr _%$%e188503188681%_)))
                               (let ((_%name188689%_ _%$%hd188504188684%_))
                                 (if (gx#stx-null? _%$%tl188505188686%_)
                                     (if (and (gx#stx-fixnum? _%phi188669%_)
                                              (gx#identifier? _%id188679%_)
                                              (gx#identifier? _%name188689%_))
                                         (let* ((_%phi188691%_
                                                 (gx#stx-e _%phi188669%_))
                                                (_%$e188693%_
                                                 (gx#core-resolve-identifier__1
                                                  _%id188679%_
                                                  _%phi188691%_)))
                                           (if _%$e188693%_
                                               (_%K188486%_
                                                _%rest188487%_
                                                (cons (_%make-export__191932191933%_
                                                       _%$e188693%_
                                                       _%phi188691%_
                                                       (gx#current-expander-context)
                                                       _%name188689%_)
                                                      _%r188488%_))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _%stx188327%_
                                                _%hd188485%_
                                                _%id188679%_)))
                                         (_%$%E188493188649%_))
                                     (_%$%E188493188649%_)))))
                           (_%$%E188493188649%_)))))
                 (_%$%E188493188649%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%E188493188649%_))
                                           (_%$%E188493188649%_))))
                                   (_%$%E188493188649%_))))
                            (_%$%E188491188711%_
                             (lambda ()
                               (let ((_%id188703%_ _%$%e188489188521%_))
                                 (if (gx#identifier? _%id188703%_)
                                     (let ((_%$e188705%_
                                            (gx#core-resolve-identifier__1
                                             _%id188703%_
                                             (gx#current-export-expander-phi))))
                                       (if _%$e188705%_
                                           (_%K188486%_
                                            _%rest188487%_
                                            (cons (_%make-export__0__191934191937%_
                                                   _%$e188705%_)
                                                  _%r188488%_))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _%stx188327%_
                                            _%hd188485%_)))
                                     (_%$%E188492188699%_)))))
                            (_%$%E188490188775%_
                             (lambda ()
                               (if (eq? (gx#stx-e _%$%e188489188521%_) '#t)
                                   (let* ((_%current-ctx188715%_
                                           (gx#current-expander-context))
                                          (_%current-phi188717%_
                                           (gx#current-export-expander-phi))
                                          (_%phi-ctx188719%_
                                           (gx#core-context-shift
                                            _%current-ctx188715%_
                                            _%current-phi188717%_))
                                          (_%phi-bind188721%_
                                           (hash->list
                                            (##unchecked-structure-ref
                                             _%phi-ctx188719%_
                                             '2
                                             '#f
                                             '#f))))
                                     (let _%lp188724%_ ((_%bind-rest188726%_
                                                         _%phi-bind188721%_)
                                                        (_%set188727%_ '()))
                                       (let* ((_%$%bind-rest188728188738%_
                                               _%bind-rest188726%_)
                                              (_%$%else188730188746%_
                                               (lambda ()
                                                 (_%K188486%_
                                                  _%rest188487%_
                                                  (cons (##structure
                                                         gx#export-set::t
                                                         '#f
                                                         _%current-phi188717%_
                                                         _%set188727%_)
                                                        _%r188488%_))))
                                              (_%$%K188732188756%_
                                               (lambda (_%bind-rest188749%_
                                                        _%bind188750%_
                                                        _%key188751%_)
                                                 (if (or (##structure-direct-instance-of?
                                                          _%bind188750%_
                                                          'gx#import-binding::t)
                                                         (gx#private-feature-binding?
                                                          _%bind188750%_))
                                                     (_%lp188724%_
                                                      _%bind-rest188749%_
                                                      _%set188727%_)
                                                     (_%lp188724%_
                                                      _%bind-rest188749%_
                                                      (cons (_%make-export__2__191936191939%_
                                                             _%bind188750%_
                                                             _%current-phi188717%_
                                                             _%current-ctx188715%_)
                                                            _%set188727%_))))))
                                         (if (pair? _%$%bind-rest188728188738%_)
                                             (let ((_%$%hd188733188759%_
                                                    (##car _%$%bind-rest188728188738%_))
                                                   (_%$%tl188734188761%_
                                                    (##cdr _%$%bind-rest188728188738%_)))
                                               (if (pair? _%$%hd188733188759%_)
                                                   (let ((_%$%hd188735188764%_
                                                          (##car _%$%hd188733188759%_))
                                                         (_%$%tl188736188766%_
                                                          (##cdr _%$%hd188733188759%_)))
                                                     (let* ((_%key188769%_
                                                             _%$%hd188735188764%_)
                                                            (_%bind188771%_
                                                             _%$%tl188736188766%_)
                                                            (_%bind-rest188773%_
                                                             _%$%tl188734188761%_))
                                                       (_%$%K188732188756%_
                                                        _%bind-rest188773%_
                                                        _%bind188771%_
                                                        _%key188769%_)))
                                                   (_%$%else188730188746%_)))
                                             (_%$%else188730188746%_)))))
                                   (_%$%E188491188711%_)))))
                       (_%$%E188490188775%_))))
                  (_%export-imports188332%_
                   (lambda (_%src188362%_ _%r188363%_)
                     (letrec* ((_%current-ctx188365%_
                                (gx#current-expander-context))
                               (_%current-phi188366%_
                                (gx#current-export-expander-phi))
                               (_%import->export188367%_
                                (lambda (_%in188448%_)
                                  (let* ((_%$%in188449188457%_ _%in188448%_)
                                         (_%$%E188451188460%_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _%$%in188449188457%_
                                                   '((module-import
                                                      out
                                                      key
                                                      phi)))
                                            '#!void))
                                         (_%$%K188452188467%_
                                          (lambda (_%phi188463%_
                                                   _%key188464%_
                                                   _%out188465%_)
                                            (##structure
                                             gx#module-export::t
                                             _%current-ctx188365%_
                                             _%key188464%_
                                             _%phi188463%_
                                             _%key188464%_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _%$%in188449188457%_
                                         'gx#module-import::t)
                                        (let* ((_%$%e188453188470%_
                                                (##unchecked-structure-ref
                                                 _%$%in188449188457%_
                                                 '1
                                                 '#f
                                                 '#f))
                                               (_%out188473%_
                                                _%$%e188453188470%_)
                                               (_%$%e188454188475%_
                                                (##unchecked-structure-ref
                                                 _%$%in188449188457%_
                                                 '2
                                                 '#f
                                                 '#f))
                                               (_%key188478%_
                                                _%$%e188454188475%_)
                                               (_%$%e188455188480%_
                                                (##unchecked-structure-ref
                                                 _%$%in188449188457%_
                                                 '3
                                                 '#f
                                                 '#f))
                                               (_%phi188483%_
                                                _%$%e188455188480%_))
                                          (_%$%K188452188467%_
                                           _%phi188483%_
                                           _%key188478%_
                                           _%out188473%_))
                                        (_%$%E188451188460%_)))))
                               (_%fold-e188368%_
                                (lambda (_%in188370%_ _%r188371%_)
                                  (let* ((_%$%in188372188386%_ _%in188370%_)
                                         (_%$%else188375188394%_
                                          (lambda () _%r188371%_)))
                                    (let ((_%$%K188381188430%_
                                           (lambda (_%phi188426%_
                                                    _%key188427%_
                                                    _%out188428%_)
                                             (if (and (fx= _%phi188426%_
                                                           _%current-phi188366%_)
                                                      (eq? _%src188362%_
                                                           (##unchecked-structure-ref
                                                            _%out188428%_
                                                            '1
                                                            '#f
                                                            '#f)))
                                                 (cons (_%import->export188367%_
                                                        _%in188370%_)
                                                       _%r188371%_)
                                                 _%r188371%_)))
                                          (_%$%K188377188405%_
                                           (lambda (_%imports188398%_
                                                    _%phi188399%_
                                                    _%ctx188400%_)
                                             (if (and (fx= _%phi188399%_
                                                           _%current-phi188366%_)
                                                      (eq? _%src188362%_
                                                           _%ctx188400%_))
                                                 (foldl__0
                                                  (lambda (_%in188402%_
                                                           _%r188403%_)
                                                    (cons (_%import->export188367%_
                                                           _%in188402%_)
                                                          _%r188403%_))
                                                  _%r188371%_
                                                  _%imports188398%_)
                                                 _%r188371%_))))
                                      (let ((_%$%try-match188374188423%_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _%$%in188372188386%_
                                                    'gx#import-set::t)
                                                   (let* ((_%$%e188378188408%_
                                                           (##unchecked-structure-ref
                                                            _%$%in188372188386%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                          (_%$%e188379188413%_
                                                           (##unchecked-structure-ref
                                                            _%$%in188372188386%_
                                                            '2
                                                            '#f
                                                            '#f))
                                                          (_%$%e188380188418%_
                                                           (##unchecked-structure-ref
                                                            _%$%in188372188386%_
                                                            '3
                                                            '#f
                                                            '#f)))
                                                     (let ((_%ctx188411%_
                                                            _%$%e188378188408%_)
                                                           (_%phi188416%_
                                                            _%$%e188379188413%_)
                                                           (_%imports188421%_
                                                            _%$%e188380188418%_))
                                                       (_%$%K188377188405%_
                                                        _%imports188421%_
                                                        _%phi188416%_
                                                        _%ctx188411%_)))
                                                   (_%$%else188375188394%_)))))
                                        (if (##structure-direct-instance-of?
                                             _%$%in188372188386%_
                                             'gx#module-import::t)
                                            (let* ((_%$%e188382188433%_
                                                    (##unchecked-structure-ref
                                                     _%$%in188372188386%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                   (_%$%e188383188438%_
                                                    (##unchecked-structure-ref
                                                     _%$%in188372188386%_
                                                     '2
                                                     '#f
                                                     '#f))
                                                   (_%$%e188384188443%_
                                                    (##unchecked-structure-ref
                                                     _%$%in188372188386%_
                                                     '3
                                                     '#f
                                                     '#f)))
                                              (let ((_%out188436%_
                                                     _%$%e188382188433%_)
                                                    (_%key188441%_
                                                     _%$%e188383188438%_)
                                                    (_%phi188446%_
                                                     _%$%e188384188443%_))
                                                (_%$%K188381188430%_
                                                 _%phi188446%_
                                                 _%key188441%_
                                                 _%out188436%_)))
                                            (_%$%try-match188374188423%_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _%src188362%_
                              _%current-phi188366%_
                              (foldl__0
                               _%fold-e188368%_
                               '()
                               (##unchecked-structure-ref
                                _%current-ctx188365%_
                                '8
                                '#f
                                '#f)))
                             _%r188363%_))))
                  (_%export!188333%_
                   (lambda (_%rbody188349%_)
                     (letrec* ((_%current-ctx188351%_
                                (gx#current-expander-context))
                               (_%fold-e188352%_
                                (lambda (_%out188356%_ _%r188357%_)
                                  (if (##structure-direct-instance-of?
                                       _%out188356%_
                                       'gx#module-export::t)
                                      (cons _%out188356%_ _%r188357%_)
                                      (if (##structure-direct-instance-of?
                                           _%out188356%_
                                           'gx#export-set::t)
                                          (foldl__0
                                           cons
                                           _%r188357%_
                                           (##unchecked-structure-ref
                                            _%out188356%_
                                            '3
                                            '#f
                                            '#f))
                                          _%r188357%_)))))
                       (let ((_%body188354%_ (reverse _%rbody188349%_)))
                         (##unchecked-structure-set!
                          _%current-ctx188351%_
                          (foldl__0
                           _%fold-e188352%_
                           (##unchecked-structure-ref
                            _%current-ctx188351%_
                            '9
                            '#f
                            '#f)
                           _%body188354%_)
                          '9
                          '#f
                          '#f)
                         _%body188354%_))))
                  (_%expanded-export?188334%_
                   (lambda (_%e188344%_)
                     (let ((_%$e188346%_
                            (##structure-direct-instance-of?
                             _%e188344%_
                             'gx#module-export::t)))
                       (if _%$e188346%_
                           _%$e188346%_
                           (##structure-direct-instance-of?
                            _%e188344%_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _%internal-expand?188328%_)
              (let ((_%rbody188340%_
                     (gx#core-expand-import/export
                      _%stx188327%_
                      _%expanded-export?188334%_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _%expand1188331%_)))
                (if _%internal-expand?188328%_
                    (reverse _%rbody188340%_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons
                      '%#export
                      (_%export!188333%_ _%rbody188340%_))
                     (gx#stx-source _%stx188327%_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _%stx188327%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _%stx188327%_))))))
    (define gx#core-expand-export%__0
      (lambda (_%stx188825%_)
        (let ((_%internal-expand?188827%_ '#f))
          (gx#core-expand-export%__%
           _%stx188825%_
           _%internal-expand?188827%_))))
    (define gx#core-expand-export%
      (lambda _g192008_
        (let ((_g192009_ (##length _g192008_)))
          (cond ((##fx= _g192009_ 1)
                 (apply gx#core-expand-export%__0 _g192008_))
                ((##fx= _g192009_ 2)
                 (apply gx#core-expand-export%__% _g192008_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g192008_))))))
    (define gx#core-expand-export-source
      (lambda (_%hd188324%_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _%hd188324%_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_%stx188294%_)
        (let* ((_%$%e188295188302%_ _%stx188294%_)
               (_%$%E188297188306%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e188295188302%_)))
               (_%$%E188296188320%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e188295188302%_)
                      (let ((_%$%e188298188310%_
                             (gx#syntax-e _%$%e188295188302%_)))
                        (let ((_%$%hd188299188313%_
                               (##car _%$%e188298188310%_))
                              (_%$%tl188300188315%_
                               (##cdr _%$%e188298188310%_)))
                          (let ((_%body188318%_ _%$%tl188300188315%_))
                            (if (gx#identifier-list? _%body188318%_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _%body188318%_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _%body188318%_))
                                   (gx#stx-source _%stx188294%_)))
                                (_%$%E188297188306%_)))))
                      (_%$%E188297188306%_)))))
          (_%$%E188296188320%_))))
    (define gx#core-bind-feature!__%
      (lambda (_%id188260%_ _%private?188261%_ _%phi188262%_ _%ctx188263%_)
        (gx#core-bind-syntax!__%
         _%id188260%_
         ((if _%private?188261%_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _%id188260%_))
         _%private?188261%_
         _%phi188262%_
         _%ctx188263%_)))
    (define gx#core-bind-feature!__0
      (lambda (_%id188268%_)
        (let* ((_%private?188270%_ '#f)
               (_%phi188272%_ (gx#current-expander-phi))
               (_%ctx188274%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id188268%_
           _%private?188270%_
           _%phi188272%_
           _%ctx188274%_))))
    (define gx#core-bind-feature!__1
      (lambda (_%id188276%_ _%private?188277%_)
        (let* ((_%phi188279%_ (gx#current-expander-phi))
               (_%ctx188281%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id188276%_
           _%private?188277%_
           _%phi188279%_
           _%ctx188281%_))))
    (define gx#core-bind-feature!__2
      (lambda (_%id188283%_ _%private?188284%_ _%phi188285%_)
        (let ((_%ctx188287%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id188283%_
           _%private?188284%_
           _%phi188285%_
           _%ctx188287%_))))
    (define gx#core-bind-feature!
      (lambda _g192010_
        (let ((_g192011_ (##length _g192010_)))
          (cond ((##fx= _g192011_ 1)
                 (apply gx#core-bind-feature!__0 _g192010_))
                ((##fx= _g192011_ 2)
                 (apply gx#core-bind-feature!__1 _g192010_))
                ((##fx= _g192011_ 3)
                 (apply gx#core-bind-feature!__2 _g192010_))
                ((##fx= _g192011_ 4)
                 (apply gx#core-bind-feature!__% _g192010_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g192010_))))))))
