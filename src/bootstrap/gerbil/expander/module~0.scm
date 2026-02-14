(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1771101402)
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
      (lambda _%$args185854%_
        (apply make-instance gx#module-import::t _%$args185854%_)))
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
      (lambda _%$args185851%_
        (apply make-instance gx#module-export::t _%$args185851%_)))
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
      (lambda _%$args185848%_
        (apply make-instance gx#import-set::t _%$args185848%_)))
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
      (lambda _%$args185845%_
        (apply make-instance gx#export-set::t _%$args185845%_)))
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
      (lambda _%$args185842%_
        (apply make-instance gx#import-expander::t _%$args185842%_)))
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
      (lambda _%$args185839%_
        (apply make-instance gx#export-expander::t _%$args185839%_)))
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
      (lambda _%$args185836%_
        (apply make-instance gx#import-export-expander::t _%$args185836%_)))
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
      (lambda (_%path185833%_ _%fun185834%_)
        (call-with-input-file
         (cons 'path: (cons _%path185833%_ gx#source-file-settings))
         _%fun185834%_)))
    (define gx#module-context:::init!
      (lambda (_%self185816%_
               _%id185817%_
               _%super185818%_
               _%ns185819%_
               _%path185820%_)
        (let ((_%self185823%_ _%self185816%_))
          (if (##fx< '11 (##structure-length _%self185823%_))
              (begin
                (##unchecked-structure-set!
                 _%self185823%_
                 _%id185817%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self185823%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self185823%_
                 _%super185818%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self185823%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self185823%_ '#f '5 '#f '#f)
                (##unchecked-structure-set!
                 _%self185823%_
                 _%ns185819%_
                 '6
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self185823%_
                 _%path185820%_
                 '7
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self185823%_ '() '8 '#f '#f)
                (##unchecked-structure-set! _%self185823%_ '() '9 '#f '#f)
                (##unchecked-structure-set! _%self185823%_ '#f '10 '#f '#f)
                (##unchecked-structure-set! _%self185823%_ '#f '11 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self185823%_
                     '11
                     (##structure-length _%self185823%_))))))
    (__bind-method!__%
     gx#module-context::t
     ':init!
     gx#module-context:::init!
     '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_%self185649%_ _%ctx185650%_ _%root185651%_)
        (let* ((_%self185654%_ _%self185649%_)
               (_%super185670%_
                (let ((_%$e185664%_ _%root185651%_))
                  (if _%$e185664%_
                      _%$e185664%_
                      (let ((_%$e185667%_ (gx#core-context-root__0)))
                        (if _%$e185667%_
                            _%$e185667%_
                            (let ((__obj185898
                                   (##structure gx#root-context::t '#f '#f)))
                              (let ((__constructor185899
                                     (direct-method-ref
                                      gx#root-context::t
                                      __obj185898
                                      ':init!)))
                                (if __constructor185899
                                    (__constructor185899 __obj185898)
                                    (error '"missing constructor method implementation"
                                           'class:
                                           gx#root-context::t
                                           'method:
                                           ':init!)))
                              __obj185898)))))))
          (if _%ctx185650%_
              (let ((_%id185673%_
                     (##structure-ref
                      _%ctx185650%_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_%path185674%_
                     (##structure-ref
                      _%ctx185650%_
                      '7
                      gx#module-context::t
                      '#f))
                    (_%in185675%_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _%ctx185650%_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_%e185676%_
                     (__make-atomic-promise
                      (lambda () (gx#eval-module _%ctx185650%_)))))
                (if (##fx< '8 (##structure-length _%self185654%_))
                    (begin
                      (##unchecked-structure-set!
                       _%self185654%_
                       _%id185673%_
                       '1
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self185654%_
                       (make-hash-table-eq 'size: (##length _%in185675%_))
                       '2
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self185654%_
                       _%super185670%_
                       '3
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self185654%_
                       '#f
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self185654%_
                       '#f
                       '5
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self185654%_
                       _%path185674%_
                       '6
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self185654%_
                       _%in185675%_
                       '7
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self185654%_
                       _%e185676%_
                       '8
                       '#f
                       '#f)
                      '#!void)
                    (error '"struct-instance-init!: too many arguments for struct"
                           _%self185654%_
                           '8
                           (##structure-length _%self185654%_)))
                (##for-each
                 (lambda (_%g185677185679%_)
                   (gx#core-bind-weak-import!__%
                    _%g185677185679%_
                    _%self185654%_))
                 _%in185675%_))
              (if (##fx< '8 (##structure-length _%self185654%_))
                  (begin
                    (##unchecked-structure-set! _%self185654%_ '#f '1 '#f '#f)
                    (##unchecked-structure-set!
                     _%self185654%_
                     (make-hash-table-eq)
                     '2
                     '#f
                     '#f)
                    (##unchecked-structure-set!
                     _%self185654%_
                     _%super185670%_
                     '3
                     '#f
                     '#f)
                    (##unchecked-structure-set! _%self185654%_ '#f '4 '#f '#f)
                    (##unchecked-structure-set! _%self185654%_ '#f '5 '#f '#f)
                    (##unchecked-structure-set! _%self185654%_ '#f '6 '#f '#f)
                    (##unchecked-structure-set! _%self185654%_ '() '7 '#f '#f)
                    (##unchecked-structure-set! _%self185654%_ '#f '8 '#f '#f)
                    '#!void)
                  (error '"struct-instance-init!: too many arguments for struct"
                         _%self185654%_
                         '8
                         (##structure-length _%self185654%_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_%self185685%_ _%ctx185686%_)
        (let ((_%root185688%_ '#f))
          (gx#prelude-context:::init!__%
           _%self185685%_
           _%ctx185686%_
           _%root185688%_))))
    (define gx#prelude-context:::init!
      (lambda _g185905_
        (let ((_g185906_ (##length _g185905_)))
          (cond ((##fx= _g185906_ 2)
                 (apply gx#prelude-context:::init!__0 _g185905_))
                ((##fx= _g185906_ 3)
                 (apply gx#prelude-context:::init!__% _g185905_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g185905_))))))
    (__bind-method!__%
     gx#prelude-context::t
     ':init!
     gx#prelude-context:::init!
     '#f)
    (define gx#import-export-expander-init!
      (lambda (_%self185523%_ _%e185524%_)
        (if (##fx< '3 (##structure-length _%self185523%_))
            (begin
              (##unchecked-structure-set!
               _%self185523%_
               _%e185524%_
               '1
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self185523%_
               (gx#current-expander-context)
               '2
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self185523%_
               (##fx- (gx#current-expander-phi) '1)
               '3
               '#f
               '#f)
              '#!void)
            (error '"struct-instance-init!: too many arguments for struct"
                   _%self185523%_
                   '3
                   (##structure-length _%self185523%_)))))
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
      (lambda (_%g185149185152%_ _%g185150185154%_)
        (gx#core-apply-user-expander__%
         _%g185149185152%_
         _%g185150185154%_
         'apply-import-expander)))
    (__bind-method!__%
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_%g185020185023%_ _%g185021185025%_)
        (gx#core-apply-user-expander__%
         _%g185020185023%_
         _%g185021185025%_
         'apply-export-expander)))
    (__bind-method!__%
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_%ctx184891%_)
        (let* ((_%path184893%_
                (##structure-ref _%ctx184891%_ '7 gx#module-context::t '#f))
               (_%path184895%_
                (if (pair? _%path184893%_)
                    (##last _%path184893%_)
                    _%path184893%_)))
          (if (string? _%path184895%_) _%path184895%_ '#f))))
    (define gx#import-module__%
      (lambda (_%path184867%_ _%reload?184868%_ _%eval?184869%_)
        (let ((_%ctx184871%_
               ((gx#current-expander-module-import)
                _%path184867%_
                _%reload?184868%_)))
          (if (and _%ctx184871%_ _%eval?184869%_)
              (gx#eval-module _%ctx184871%_)
              '#!void)
          _%ctx184871%_)))
    (define gx#import-module__0
      (lambda (_%path184876%_)
        (let* ((_%reload?184878%_ '#f) (_%eval?184880%_ '#f))
          (gx#import-module__%
           _%path184876%_
           _%reload?184878%_
           _%eval?184880%_))))
    (define gx#import-module__1
      (lambda (_%path184882%_ _%reload?184883%_)
        (let ((_%eval?184885%_ '#f))
          (gx#import-module__%
           _%path184882%_
           _%reload?184883%_
           _%eval?184885%_))))
    (define gx#import-module
      (lambda _g185907_
        (let ((_g185908_ (##length _g185907_)))
          (cond ((##fx= _g185908_ 1) (apply gx#import-module__0 _g185907_))
                ((##fx= _g185908_ 2) (apply gx#import-module__1 _g185907_))
                ((##fx= _g185908_ 3) (apply gx#import-module__% _g185907_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g185907_))))))
    (define gx#eval-module
      (lambda (_%mod184864%_)
        ((gx#current-expander-module-eval) _%mod184864%_)))
    (define gx#core-eval-module
      (lambda (_%obj184843%_)
        (letrec ((_%force-e184845%_
                  (lambda (_%getf184859%_ _%e184860%_)
                    (call-with-parameters__1
                     (lambda ()
                       (call-with-parameters__1
                        (lambda () (force (_%getf184859%_ _%e184860%_)))
                        gx#current-expander-phi
                        '0))
                     gx#current-expander-context
                     _%e184860%_))))
          (let _%recur184847%_ ((_%e184849%_ _%obj184843%_))
            (if (##structure-instance-of? _%e184849%_ 'gx#module-context::t)
                (let ()
                  (let ((_%$e184852%_
                         (gx#core-context-prelude__% _%e184849%_)))
                    (if _%$e184852%_ (_%recur184847%_ _%$e184852%_) '#!void))
                  (_%force-e184845%_ gx#module-context-e _%e184849%_))
                (if (##structure-instance-of?
                     _%e184849%_
                     'gx#prelude-context::t)
                    (_%force-e184845%_ gx#prelude-context-e _%e184849%_)
                    (if (gx#stx-string? _%e184849%_)
                        (_%recur184847%_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _%e184849%_)))
                        (if (gx#core-library-module-path? _%e184849%_)
                            (_%recur184847%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%e184849%_)))
                            (error '"cannot eval module" _%obj184843%_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_%ctx184823%_)
        (let _%lp184825%_ ((_%e184827%_ _%ctx184823%_))
          (if (or (##structure-instance-of? _%e184827%_ 'gx#module-context::t)
                  (##structure-instance-of? _%e184827%_ 'gx#local-context::t))
              (_%lp184825%_ (##unchecked-structure-ref _%e184827%_ '3 '#f '#f))
              (if (##structure-instance-of? _%e184827%_ 'gx#prelude-context::t)
                  _%e184827%_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_%ctx184839%_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _%ctx184839%_))))
    (define gx#core-context-prelude
      (lambda _g185909_
        (let ((_g185910_ (##length _g185909_)))
          (cond ((##fx= _g185910_ 0)
                 (apply gx#core-context-prelude__0 _g185909_))
                ((##fx= _g185910_ 1)
                 (apply gx#core-context-prelude__% _g185909_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g185909_))))))
    (define gx#core-module->prelude-context
      (lambda (_%ctx184814%_)
        (let ((_%$e184816%_ (__hash-get gx#__module-registry _%ctx184814%_)))
          (if _%$e184816%_
              _%$e184816%_
              (let ((_%pre184820%_
                     (let ((__obj185900
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
                        __obj185900
                        _%ctx184814%_)
                       __obj185900)))
                (__hash-put! gx#__module-registry _%ctx184814%_ _%pre184820%_)
                _%pre184820%_)))))
    (define gx#core-import-module__%
      (lambda (_%rpath184682%_ _%reload?184683%_)
        (letrec ((_%import-source184685%_
                  (lambda (_%path184773%_)
                    (if (member _%path184773%_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _%path184773%_)
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
                                      (let ((_g185911_
                                             (gx#core-read-module
                                              _%path184773%_)))
                                        (begin
                                          (let ((_g185912_
                                                 (if (##values? _g185911_)
                                                     (##values-length
                                                      _g185911_)
                                                     1)))
                                            (if (not (##fx= _g185912_ 4))
                                                (error "Context expects 4 values"
                                                       _g185912_)))
                                          (let ((_%pre184781%_
                                                 (##values-ref _g185911_ 0))
                                                (_%id184782%_
                                                 (##values-ref _g185911_ 1))
                                                (_%ns184783%_
                                                 (##values-ref _g185911_ 2))
                                                (_%body184784%_
                                                 (##values-ref _g185911_ 3)))
                                            (let* ((_%prelude184794%_
                                                    (if (##structure-instance-of?
                                                         _%pre184781%_
                                                         'gx#prelude-context::t)
                                                        _%pre184781%_
                                                        (if (##structure-instance-of?
                                                             _%pre184781%_
                                                             'gx#module-context::t)
                                                            (gx#core-module->prelude-context
                                                             _%pre184781%_)
                                                            (if (string? _%pre184781%_)
                                                                (gx#core-module->prelude-context
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#core-import-module__0 _%pre184781%_))
                        (if (not _%pre184781%_)
                            (let ((_%$e184790%_
                                   (gx#current-expander-module-prelude)))
                              (if _%$e184790%_
                                  _%$e184790%_
                                  (let ((__obj185901
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
                                     __obj185901
                                     '#f)
                                    __obj185901)))
                            (error '"cannot import module; unknown prelude"
                                   _%rpath184682%_
                                   _%pre184781%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%ctx184796%_
                                                    (let ((__obj185902
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
                                                       __obj185902
                                                       _%id184782%_
                                                       _%prelude184794%_
                                                       _%ns184783%_
                                                       _%path184773%_)
                                                      __obj185902))
                                                   (_%body184798%_
                                                    (gx#core-expand-module-begin
                                                     _%body184784%_
                                                     _%ctx184796%_))
                                                   (_%body184800%_
                                                    (gx#core-quote-syntax__%
                                                     (gx#core-cons
                                                      '%#begin
                                                      _%body184798%_)
                                                     _%path184773%_
                                                     _%ctx184796%_
                                                     '())))
                                              (##unchecked-structure-set!
                                               _%ctx184796%_
                                               (__make-atomic-promise
                                                (lambda ()
                                                  (gx#eval-syntax*
                                                   _%body184800%_)))
                                               '10
                                               '#f
                                               '#f)
                                              (##unchecked-structure-set!
                                               _%ctx184796%_
                                               _%body184800%_
                                               '11
                                               '#f
                                               '#f)
                                              (__hash-put!
                                               gx#__module-registry
                                               _%path184773%_
                                               _%ctx184796%_)
                                              (__hash-put!
                                               gx#__module-registry
                                               _%id184782%_
                                               _%ctx184796%_)
                                              _%ctx184796%_)))))
                                    gx#current-export-expander-phi
                                    '#f))
                                 gx#current-import-expander-phi
                                 '#f))
                              gx#current-expander-path
                              (cons _%path184773%_
                                    (gx#current-expander-path))))
                           gx#current-expander-phi
                           '0))
                        gx#current-expander-marks
                        '()))
                     gx#current-expander-context
                     (gx#core-context-root__0))))
                 (_%import-submodule184686%_
                  (lambda (_%rpath184702%_)
                    (let* ((_%rpath184703184710%_ _%rpath184702%_)
                           (_%E184705184713%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%rpath184703184710%_
                                     '([origin . refs]))
                              '#!void))
                           (_%K184706184761%_
                            (lambda (_%refs184716%_ _%origin184717%_)
                              (let ((_%ctx184719%_
                                     (if _%origin184717%_
                                         (gx#core-import-module__%
                                          _%origin184717%_
                                          _%reload?184683%_)
                                         (gx#current-expander-context))))
                                (let _%lp184721%_ ((_%rest184723%_
                                                    _%refs184716%_)
                                                   (_%ctx184724%_
                                                    _%ctx184719%_))
                                  (let* ((_%rest184725184733%_ _%rest184723%_)
                                         (_%else184727184741%_
                                          (lambda () _%ctx184724%_))
                                         (_%K184729184749%_
                                          (lambda (_%rest184744%_ _%id184745%_)
                                            (let ((_%bind184747%_
                                                   (gx#resolve-identifier__%
                                                    _%id184745%_
                                                    '0
                                                    _%ctx184724%_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _%bind184747%_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _%bind184747%_
                                                         '5
                                                         '#f
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_%lp184721%_
                                                   _%rest184744%_
                                                   (##unchecked-structure-ref
                                                    _%bind184747%_
                                                    '5
                                                    '#f
                                                    '#f))
                                                  (error '"cannot import submodule; not bound as a module"
                                                         _%rpath184702%_
                                                         _%id184745%_
                                                         _%bind184747%_))))))
                                    (if (pair? _%rest184725184733%_)
                                        (let ((_%hd184730184752%_
                                               (##car _%rest184725184733%_))
                                              (_%tl184731184754%_
                                               (##cdr _%rest184725184733%_)))
                                          (let* ((_%id184757%_
                                                  _%hd184730184752%_)
                                                 (_%rest184759%_
                                                  _%tl184731184754%_))
                                            (_%K184729184749%_
                                             _%rest184759%_
                                             _%id184757%_)))
                                        (_%else184727184741%_))))))))
                      (if (pair? _%rpath184703184710%_)
                          (let ((_%hd184707184764%_
                                 (##car _%rpath184703184710%_))
                                (_%tl184708184766%_
                                 (##cdr _%rpath184703184710%_)))
                            (let* ((_%origin184769%_ _%hd184707184764%_)
                                   (_%refs184771%_ _%tl184708184766%_))
                              (_%K184706184761%_
                               _%refs184771%_
                               _%origin184769%_)))
                          (_%E184705184713%_))))))
          (let ((_%$e184688%_
                 (if (not _%reload?184683%_)
                     (__hash-get gx#__module-registry _%rpath184682%_)
                     '#f)))
            (if _%$e184688%_
                _%$e184688%_
                (if (list? _%rpath184682%_)
                    (_%import-submodule184686%_ _%rpath184682%_)
                    (if (gx#core-library-module-path? _%rpath184682%_)
                        (let ((_%ctx184693%_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _%rpath184682%_)
                                _%reload?184683%_)))
                          (__hash-put!
                           gx#__module-registry
                           _%rpath184682%_
                           _%ctx184693%_)
                          _%ctx184693%_)
                        (let* ((_%npath184696%_
                                (path-normalize _%rpath184682%_))
                               (_%$e184698%_
                                (if (not _%reload?184683%_)
                                    (__hash-get
                                     gx#__module-registry
                                     _%npath184696%_)
                                    '#f)))
                          (if _%$e184698%_
                              _%$e184698%_
                              (_%import-source184685%_
                               _%npath184696%_))))))))))
    (define gx#core-import-module__0
      (lambda (_%rpath184807%_)
        (let ((_%reload?184809%_ '#f))
          (gx#core-import-module__% _%rpath184807%_ _%reload?184809%_))))
    (define gx#core-import-module
      (lambda _g185913_
        (let ((_g185914_ (##length _g185913_)))
          (cond ((##fx= _g185914_ 1)
                 (apply gx#core-import-module__0 _g185913_))
                ((##fx= _g185914_ 2)
                 (apply gx#core-import-module__% _g185913_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g185913_))))))
    (define gx#core-read-module
      (lambda (_%path184664%_)
        (__with-catch
         (lambda (_%exn184666%_)
           (if (datum-parsing-exception? _%exn184666%_)
               (let ((_%pos184668%_
                      (datum-parsing-exception-filepos _%exn184666%_)))
                 (if (= _%pos184668%_ '0)
                     (gx#core-read-module/lang _%path184664%_)
                     (gx#raise-syntax-error
                      'read-module
                      '"error reading module"
                      _%path184664%_
                      (call-with-parameters__1
                       (lambda ()
                         (call-with-output-string
                          '""
                          (lambda (_%g184670184672%_)
                            (display-exception__%
                             _%exn184666%_
                             _%g184670184672%_))))
                       dump-stack-trace?
                       '#f)
                      (cons 'line:
                            (cons (##filepos-line _%pos184668%_)
                                  (cons 'col:
                                        (cons (##filepos-col _%pos184668%_)
                                              '())))))))
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _%path184664%_
                (call-with-parameters__1
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_%g184675184677%_)
                      (display-exception__% _%exn184666%_ _%g184675184677%_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _%path184664%_)))))
    (define gx#core-read-module/sexp
      (lambda (_%path184516%_)
        (let _%lp184518%_ ((_%body184520%_
                            (read-syntax-from-file _%path184516%_))
                           (_%pre184521%_ '#f)
                           (_%ns184522%_ '#f)
                           (_%pkg184523%_ '#f))
          (let* ((_%e184524184548%_ _%body184520%_)
                 (_%E184540184574%_
                  (lambda ()
                    (let ((_g185915_
                           (if _%pkg184523%_
                               (values _%pre184521%_
                                       _%ns184522%_
                                       _%pkg184523%_)
                               (gx#core-read-module-package
                                _%path184516%_
                                _%pre184521%_
                                _%ns184522%_))))
                      (begin
                        (let ((_g185916_
                               (if (##values? _g185915_)
                                   (##values-length _g185915_)
                                   1)))
                          (if (not (##fx= _g185916_ 3))
                              (error "Context expects 3 values" _g185916_)))
                        (let ((_%pre184552%_ (##values-ref _g185915_ 0))
                              (_%ns184553%_ (##values-ref _g185915_ 1))
                              (_%pkg184554%_ (##values-ref _g185915_ 2)))
                          (let* ((_%prelude184560%_
                                  (if (gx#core-bound-module-prelude?
                                       _%pre184552%_)
                                      (gx#syntax-local-e__0 _%pre184552%_)
                                      (if (gx#core-library-module-path?
                                           _%pre184552%_)
                                          (gx#core-resolve-library-module-path
                                           _%pre184552%_)
                                          (if (gx#stx-string? _%pre184552%_)
                                              (gx#core-resolve-module-path__%
                                               _%pre184552%_
                                               _%path184516%_)
                                              (gx#stx-e _%pre184552%_)))))
                                 (_%path-id184562%_
                                  (gx#core-module-path->namespace
                                   _%path184516%_))
                                 (_%pkg-id184564%_
                                  (if _%pkg184554%_
                                      (##string-append
                                       _%pkg184554%_
                                       '"/"
                                       _%path-id184562%_)
                                      _%path-id184562%_))
                                 (_%module-id184566%_
                                  (##string->symbol _%pkg-id184564%_))
                                 (_%module-ns184571%_
                                  (if (eq? _%ns184553%_ '#!void)
                                      '#f
                                      (let ((_%$e184568%_ _%ns184553%_))
                                        (if _%$e184568%_
                                            _%$e184568%_
                                            _%pkg-id184564%_)))))
                            (values _%prelude184560%_
                                    _%module-id184566%_
                                    _%module-ns184571%_
                                    _%body184520%_)))))))
                 (_%E184533184606%_
                  (lambda ()
                    (if (gx#stx-pair? _%e184524184548%_)
                        (let ((_%e184541184578%_
                               (gx#syntax-e _%e184524184548%_)))
                          (let ((_%hd184542184581%_ (##car _%e184541184578%_))
                                (_%tl184543184583%_ (##cdr _%e184541184578%_)))
                            (if (eq? (gx#stx-e _%hd184542184581%_) 'package:)
                                (if (gx#stx-pair? _%tl184543184583%_)
                                    (let ((_%e184544184586%_
                                           (gx#syntax-e _%tl184543184583%_)))
                                      (let ((_%hd184545184589%_
                                             (##car _%e184544184586%_))
                                            (_%tl184546184591%_
                                             (##cdr _%e184544184586%_)))
                                        (let* ((_%pkg184594%_
                                                _%hd184545184589%_)
                                               (_%rest184596%_
                                                _%tl184546184591%_)
                                               (_%pkg184604%_
                                                (if (gx#identifier?
                                                     _%pkg184594%_)
                                                    (symbol->string
                                                     (gx#stx-e _%pkg184594%_))
                                                    (if (or (gx#stx-string?
                                                             _%pkg184594%_)
                                                            (gx#stx-false?
                                                             _%pkg184594%_))
                                                        (gx#stx-e
                                                         _%pkg184594%_)
                                                        (gx#raise-syntax-error
                                                         'import
                                                         '"Bad syntax; Illegal package name"
                                                         _%pkg184594%_)))))
                                          (_%lp184518%_
                                           _%rest184596%_
                                           _%pre184521%_
                                           _%ns184522%_
                                           _%pkg184604%_))))
                                    (_%E184540184574%_))
                                (_%E184540184574%_))))
                        (_%E184540184574%_))))
                 (_%E184526184636%_
                  (lambda ()
                    (if (gx#stx-pair? _%e184524184548%_)
                        (let ((_%e184534184610%_
                               (gx#syntax-e _%e184524184548%_)))
                          (let ((_%hd184535184613%_ (##car _%e184534184610%_))
                                (_%tl184536184615%_ (##cdr _%e184534184610%_)))
                            (if (eq? (gx#stx-e _%hd184535184613%_) 'namespace:)
                                (if (gx#stx-pair? _%tl184536184615%_)
                                    (let ((_%e184537184618%_
                                           (gx#syntax-e _%tl184536184615%_)))
                                      (let ((_%hd184538184621%_
                                             (##car _%e184537184618%_))
                                            (_%tl184539184623%_
                                             (##cdr _%e184537184618%_)))
                                        (let* ((_%ns184626%_
                                                _%hd184538184621%_)
                                               (_%rest184628%_
                                                _%tl184539184623%_)
                                               (_%ns184634%_
                                                (if (gx#identifier?
                                                     _%ns184626%_)
                                                    (symbol->string
                                                     (gx#stx-e _%ns184626%_))
                                                    (if (gx#stx-string?
                                                         _%ns184626%_)
                                                        (gx#stx-e _%ns184626%_)
                                                        (if (gx#stx-false?
                                                             _%ns184626%_)
                                                            '#!void
                                                            (gx#raise-syntax-error
                                                             'import
                                                             '"Bad syntax; illegal namespace"
                                                             _%ns184626%_))))))
                                          (_%lp184518%_
                                           _%rest184628%_
                                           _%pre184521%_
                                           _%ns184634%_
                                           _%pkg184523%_))))
                                    (_%E184533184606%_))
                                (_%E184533184606%_))))
                        (_%E184533184606%_))))
                 (_%E184525184660%_
                  (lambda ()
                    (if (gx#stx-pair? _%e184524184548%_)
                        (let ((_%e184527184640%_
                               (gx#syntax-e _%e184524184548%_)))
                          (let ((_%hd184528184643%_ (##car _%e184527184640%_))
                                (_%tl184529184645%_ (##cdr _%e184527184640%_)))
                            (if (eq? (gx#stx-e _%hd184528184643%_) 'prelude:)
                                (if (gx#stx-pair? _%tl184529184645%_)
                                    (let ((_%e184530184648%_
                                           (gx#syntax-e _%tl184529184645%_)))
                                      (let ((_%hd184531184651%_
                                             (##car _%e184530184648%_))
                                            (_%tl184532184653%_
                                             (##cdr _%e184530184648%_)))
                                        (let* ((_%prelude184656%_
                                                _%hd184531184651%_)
                                               (_%rest184658%_
                                                _%tl184532184653%_))
                                          (_%lp184518%_
                                           _%rest184658%_
                                           _%prelude184656%_
                                           _%ns184522%_
                                           _%pkg184523%_))))
                                    (_%E184526184636%_))
                                (_%E184526184636%_))))
                        (_%E184526184636%_)))))
            (_%E184525184660%_)))))
    (define gx#core-read-module/lang
      (lambda (_%path184337%_)
        (letrec ((_%default-read-module-body184339%_
                  (lambda (_%inp184508%_)
                    (let _%lp184510%_ ((_%body184512%_ '()))
                      (let ((_%next184514%_ (read-syntax__% _%inp184508%_)))
                        (if (eof-object? _%next184514%_)
                            (reverse _%body184512%_)
                            (_%lp184510%_
                             (cons _%next184514%_ _%body184512%_)))))))
                 (_%read-body184340%_
                  (lambda (_%inp184425%_
                           _%pre184426%_
                           _%ns184427%_
                           _%pkg184428%_
                           _%args184429%_)
                    (let ((_g185917_
                           (if _%pkg184428%_
                               (values _%pre184426%_
                                       _%ns184427%_
                                       _%pkg184428%_)
                               (gx#core-read-module-package
                                _%path184337%_
                                _%pre184426%_
                                _%ns184427%_))))
                      (begin
                        (let ((_g185918_
                               (if (##values? _g185917_)
                                   (##values-length _g185917_)
                                   1)))
                          (if (not (##fx= _g185918_ 3))
                              (error "Context expects 3 values" _g185918_)))
                        (let ((_%pre184431%_ (##values-ref _g185917_ 0))
                              (_%ns184432%_ (##values-ref _g185917_ 1))
                              (_%pkg184433%_ (##values-ref _g185917_ 2)))
                          (let* ((_%prelude184435%_
                                  (gx#import-module__0 _%pre184431%_))
                                 (_%read-module-body184490%_
                                  (let ((_%$e184481%_
                                         (__find (lambda (_%e184436184438%_)
                                                   (let* ((_%e184436184440184450%_
                                                           _%e184436184438%_)
                                                          (_%else184442184458%_
                                                           (lambda () '#f))
                                                          (_%K184444184462%_
                                                           (lambda () '#t)))
                                                     (if (##structure-direct-instance-of?
                                                          _%e184436184440184450%_
                                                          'gx#module-export::t)
                                                         (let* ((_%e184445184465%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##unchecked-structure-ref
                          _%e184436184440184450%_
                          '1
                          '#f
                          '#f))
                        (_%e184446184468%_
                         (##unchecked-structure-ref
                          _%e184436184440184450%_
                          '2
                          '#f
                          '#f))
                        (_%e184447184471%_
                         (##unchecked-structure-ref
                          _%e184436184440184450%_
                          '3
                          '#f
                          '#f)))
                   (if (##eq? _%e184447184471%_ '1)
                       (let ((_%e184448184474%_
                              (##unchecked-structure-ref
                               _%e184436184440184450%_
                               '4
                               '#f
                               '#f)))
                         (if ((lambda (_%g184476184478%_)
                                (eq? _%g184476184478%_ 'read-module-body))
                              _%e184448184474%_)
                             (_%K184444184462%_)
                             (_%else184442184458%_)))
                       (_%else184442184458%_)))
                 (_%else184442184458%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (##unchecked-structure-ref
                                                  _%prelude184435%_
                                                  '9
                                                  '#f
                                                  '#f))))
                                    (if _%$e184481%_
                                        ((lambda (_%xport184484%_)
                                           (let ((_%proc184487%_
                                                  (__with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _%xport184484%_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _%proc184487%_)
                                                 _%proc184487%_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _%path184337%_
                                                  _%pre184431%_
                                                  _%proc184487%_))))
                                         _%$e184481%_)
                                        _%default-read-module-body184339%_)))
                                 (_%path-id184492%_
                                  (gx#core-module-path->namespace
                                   _%path184337%_))
                                 (_%pkg-id184494%_
                                  (if _%pkg184433%_
                                      (##string-append
                                       _%pkg184433%_
                                       '"/"
                                       _%path-id184492%_)
                                      _%path-id184492%_))
                                 (_%module-id184496%_
                                  (##string->symbol _%pkg-id184494%_))
                                 (_%module-ns184501%_
                                  (let ((_%$e184498%_ _%ns184432%_))
                                    (if _%$e184498%_
                                        _%$e184498%_
                                        _%pkg-id184494%_)))
                                 (_%body184505%_
                                  (call-with-parameters__1
                                   (lambda ()
                                     (call-with-parameters__1
                                      (lambda ()
                                        (_%read-module-body184490%_
                                         _%inp184425%_))
                                      gx#current-module-reader-args
                                      _%args184429%_))
                                   gx#current-module-reader-path
                                   _%path184337%_)))
                            (values _%prelude184435%_
                                    _%module-id184496%_
                                    _%module-ns184501%_
                                    _%body184505%_)))))))
                 (_%string-e184341%_
                  (lambda (_%obj184419%_ _%what184420%_)
                    (if (string? _%obj184419%_)
                        _%obj184419%_
                        (if (symbol? _%obj184419%_)
                            (##symbol->string _%obj184419%_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _%what184420%_)
                             _%path184337%_
                             _%obj184419%_)))))
                 (_%read-lang-args184342%_
                  (lambda (_%inp184374%_ _%args184375%_)
                    (let* ((_%args184376184384%_ _%args184375%_)
                           (_%else184378184392%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _%path184337%_)))
                           (_%K184380184407%_
                            (lambda (_%args184395%_ _%prelude184396%_)
                              (let* ((_%pkg184398%_
                                      (pgetq__0 'package: _%args184395%_))
                                     (_%pkg184400%_
                                      (if _%pkg184398%_
                                          (_%string-e184341%_
                                           _%pkg184398%_
                                           '"package")
                                          '#f))
                                     (_%ns184402%_
                                      (pgetq__0 'namespace: _%args184395%_))
                                     (_%ns184404%_
                                      (if _%ns184402%_
                                          (_%string-e184341%_
                                           _%ns184402%_
                                           '"namespace")
                                          '#f)))
                                (_%read-body184340%_
                                 _%inp184374%_
                                 _%prelude184396%_
                                 _%ns184404%_
                                 _%pkg184400%_
                                 _%args184395%_)))))
                      (if (pair? _%args184376184384%_)
                          (let ((_%hd184381184410%_
                                 (##car _%args184376184384%_))
                                (_%tl184382184412%_
                                 (##cdr _%args184376184384%_)))
                            (let* ((_%prelude184415%_ _%hd184381184410%_)
                                   (_%args184417%_ _%tl184382184412%_))
                              (_%K184380184407%_
                               _%args184417%_
                               _%prelude184415%_)))
                          (_%else184378184392%_)))))
                 (_%read-lang184343%_
                  (lambda (_%inp184348%_)
                    (let* ((_%head184350%_ (read-line _%inp184348%_))
                           (_%$e184352%_
                            (string-index__0 _%head184350%_ '#\space)))
                      (if _%$e184352%_
                          ((lambda (_%ix184355%_)
                             (let ((_%lang184357%_
                                    (substring
                                     _%head184350%_
                                     '0
                                     _%ix184355%_)))
                               (if (equal? _%lang184357%_ '"#lang")
                                   (let* ((_%rest184359%_
                                           (substring
                                            _%head184350%_
                                            (##fx+ _%ix184355%_ '1)
                                            (string-length _%head184350%_)))
                                          (_%args184370%_
                                           (__with-catch
                                            (lambda (_%g184360184362%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _%path184337%_
                                               _%g184360184362%_))
                                            (lambda ()
                                              (call-with-input-string
                                               _%rest184359%_
                                               (lambda (_%g184365184367%_)
                                                 (read-all
                                                  _%g184365184367%_
                                                  read)))))))
                                     (_%read-lang-args184342%_
                                      _%inp184348%_
                                      _%args184370%_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _%path184337%_))))
                           _%$e184352%_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _%path184337%_)))))
                 (_%read-e184344%_
                  (lambda (_%inp184346%_)
                    (if (eq? (peek-char _%inp184346%_) '#\#)
                        (_%read-lang184343%_ _%inp184346%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _%path184337%_)))))
          (gx#call-with-input-source-file _%path184337%_ _%read-e184344%_))))
    (define gx#core-read-module-package
      (lambda (_%path184285%_ _%pre184286%_ _%ns184287%_)
        (letrec ((_%string-e184289%_
                  (lambda (_%e184332%_)
                    (if (symbol? _%e184332%_)
                        (##symbol->string _%e184332%_)
                        (if (string? _%e184332%_)
                            _%e184332%_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%e184332%_))))))
          (let _%lp184291%_ ((_%dir184293%_ (path-directory _%path184285%_))
                             (_%pkg-path184294%_ '()))
            (let ((_%gerbil.pkg184296%_
                   (path-expand '"gerbil.pkg" _%dir184293%_)))
              (if (##file-exists? _%gerbil.pkg184296%_)
                  (let ((_%plist184298%_
                         (gx#core-library-package-plist__% _%dir184293%_ '#t)))
                    (if (null? _%plist184298%_)
                        (let ((_%pkg184301%_
                               (if (null? _%pkg-path184294%_)
                                   '#f
                                   (string-join _%pkg-path184294%_ '"/"))))
                          (values _%pre184286%_ _%ns184287%_ _%pkg184301%_))
                        (if (list? _%plist184298%_)
                            (let* ((_%root184304%_
                                    (pgetq__0 'package: _%plist184298%_))
                                   (_%pkg184308%_
                                    (let ((_%pkg-path184306%_
                                           (if _%root184304%_
                                               (cons (_%string-e184289%_
                                                      _%root184304%_)
                                                     _%pkg-path184294%_)
                                               _%pkg-path184294%_)))
                                      (if (null? _%pkg-path184306%_)
                                          '#f
                                          (string-join
                                           _%pkg-path184306%_
                                           '"/"))))
                                   (_%ns184315%_
                                    (let ((_%ns184313%_
                                           (let ((_%$e184310%_ _%ns184287%_))
                                             (if _%$e184310%_
                                                 _%$e184310%_
                                                 (pgetq__0
                                                  'namespace:
                                                  _%plist184298%_)))))
                                      (if _%ns184313%_
                                          (_%string-e184289%_ _%ns184313%_)
                                          '#f)))
                                   (_%pre184320%_
                                    (let ((_%$e184317%_ _%pre184286%_))
                                      (if _%$e184317%_
                                          _%$e184317%_
                                          (pgetq__0
                                           'prelude:
                                           _%plist184298%_)))))
                              (values _%pre184320%_
                                      _%ns184315%_
                                      _%pkg184308%_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%plist184298%_))))
                  (let ((_%dir*184324%_
                         (path-strip-trailing-directory-separator
                          _%dir184293%_)))
                    (if (or (__string-empty? _%dir*184324%_)
                            (equal? _%dir184293%_ _%dir*184324%_))
                        (values _%pre184286%_ _%ns184287%_ '#f)
                        (let ((_%xpath184329%_
                               (path-strip-directory _%dir*184324%_))
                              (_%xdir184330%_ (path-directory _%dir*184324%_)))
                          (_%lp184291%_
                           _%xdir184330%_
                           (cons _%xpath184329%_ _%pkg-path184294%_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_%path184283%_)
        (path-strip-extension (path-strip-directory _%path184283%_))))
    (define gx#core-module-path->id
      (lambda (_%path184281%_)
        (##string->symbol (gx#core-module-path->namespace _%path184281%_))))
    (define gx#core-resolve-module-path__%
      (lambda (_%stx-path184260%_ _%rel184261%_)
        (let* ((_%path184263%_ (gx#stx-e _%stx-path184260%_))
               (_%path184265%_
                (if (__string-empty? (path-extension _%path184263%_))
                    (##string-append _%path184263%_ '".ss")
                    _%path184263%_)))
          (gx#core-resolve-path__%
           _%path184265%_
           (let ((_%$e184268%_ (gx#stx-source _%stx-path184260%_)))
             (if _%$e184268%_ _%$e184268%_ _%rel184261%_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_%stx-path184274%_)
        (let ((_%rel184276%_ '#f))
          (gx#core-resolve-module-path__% _%stx-path184274%_ _%rel184276%_))))
    (define gx#core-resolve-module-path
      (lambda _g185919_
        (let ((_g185920_ (##length _g185919_)))
          (cond ((##fx= _g185920_ 1)
                 (apply gx#core-resolve-module-path__0 _g185919_))
                ((##fx= _g185920_ 2)
                 (apply gx#core-resolve-module-path__% _g185919_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g185919_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_%libpath184145%_)
        (let* ((_%spath184147%_ (symbol->string (gx#stx-e _%libpath184145%_)))
               (_%spath184149%_
                (substring
                 _%spath184147%_
                 '1
                 (##string-length _%spath184147%_)))
               (_%ext184151%_ (path-extension _%spath184149%_))
               (_%ssi184153%_
                (if (__string-empty? _%ext184151%_)
                    (##string-append _%spath184149%_ '".ssi")
                    (##string-append
                     (path-strip-extension _%spath184149%_)
                     '".ssi")))
               (_%srcs184157%_
                (if (__string-empty? _%ext184151%_)
                    (##map (lambda (_%ext184155%_)
                             (string-append _%spath184149%_ _%ext184155%_))
                           '(".ss" ".sld" ".scm"))
                    (cons _%spath184149%_ '()))))
          (let _%lp184160%_ ((_%rest184162%_ (load-path)))
            (let* ((_%rest184163184172%_ _%rest184162%_)
                   (_%E184166184176%_
                    (lambda ()
                      (error '"No clause matching"
                             _%rest184163184172%_
                             '([dir . rest])
                             '([]))
                      '#!void)))
              (let ((_%K184168184247%_
                     (lambda (_%rest184187%_ _%dir184188%_)
                       (letrec ((_%resolve184190%_
                                 (lambda (_%ssi184203%_ _%srcs184204%_)
                                   (let ((_%compiled-path184206%_
                                          (path-expand
                                           _%ssi184203%_
                                           _%dir184188%_)))
                                     (if (##file-exists?
                                          _%compiled-path184206%_)
                                         (path-normalize
                                          _%compiled-path184206%_)
                                         (let _%lpr184208%_ ((_%rest-src184210%_
                                                              _%srcs184204%_))
                                           (let* ((_%rest-src184211184219%_
                                                   _%rest-src184210%_)
                                                  (_%else184213184227%_
                                                   (lambda ()
                                                     (_%lp184160%_
                                                      _%rest184187%_)))
                                                  (_%K184215184235%_
                                                   (lambda (_%rest-src184230%_
                                                            _%src184231%_)
                                                     (let ((_%src-path184233%_
                                                            (path-expand
                                                             _%src184231%_
                                                             _%dir184188%_)))
                                                       (if (##file-exists?
                                                            _%src-path184233%_)
                                                           (path-normalize
                                                            _%src-path184233%_)
                                                           (_%lpr184208%_
                                                            _%rest-src184230%_))))))
                                             (if (pair? _%rest-src184211184219%_)
                                                 (let ((_%hd184216184238%_
                                                        (##car _%rest-src184211184219%_))
                                                       (_%tl184217184240%_
                                                        (##cdr _%rest-src184211184219%_)))
                                                   (let* ((_%src184243%_
                                                           _%hd184216184238%_)
                                                          (_%rest-src184245%_
                                                           _%tl184217184240%_))
                                                     (_%K184215184235%_
                                                      _%rest-src184245%_
                                                      _%src184243%_)))
                                                 (_%else184213184227%_)))))))))
                         (let ((_%$e184192%_
                                (gx#core-library-package-path-prefix
                                 _%dir184188%_)))
                           (if _%$e184192%_
                               ((lambda (_%prefix184195%_)
                                  (if (string-prefix?
                                       _%prefix184195%_
                                       _%spath184149%_)
                                      (let ((_%ssi184199%_
                                             (substring
                                              _%ssi184153%_
                                              (string-length _%prefix184195%_)
                                              (##string-length _%ssi184153%_)))
                                            (_%srcs184200%_
                                             (##map (lambda (_%src184197%_)
                                                      (substring
                                                       _%src184197%_
                                                       (string-length
                                                        _%prefix184195%_)
                                                       (string-length
                                                        _%src184197%_)))
                                                    _%srcs184157%_)))
                                        (_%resolve184190%_
                                         _%ssi184199%_
                                         _%srcs184200%_))
                                      (_%lp184160%_ _%rest184187%_)))
                                _%$e184192%_)
                               (_%resolve184190%_
                                _%ssi184153%_
                                _%srcs184157%_))))))
                    (_%K184167184181%_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"cannot find library module"
                        _%libpath184145%_))))
                (let ((_%try-match184165184184%_
                       (lambda ()
                         (if (null? _%rest184163184172%_)
                             (_%K184167184181%_)
                             (_%E184166184176%_)))))
                  (if (pair? _%rest184163184172%_)
                      (let ((_%tl184170184252%_ (##cdr _%rest184163184172%_))
                            (_%hd184169184250%_ (##car _%rest184163184172%_)))
                        (let ((_%dir184255%_ _%hd184169184250%_)
                              (_%rest184257%_ _%tl184170184252%_))
                          (_%K184168184247%_ _%rest184257%_ _%dir184255%_)))
                      (_%try-match184165184184%_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_%modpath184113%_)
        (letrec ((_%resolve184115%_
                  (lambda (_%path184136%_ _%base184137%_)
                    (let ((_%$e184139%_
                           (string-rindex__0 _%base184137%_ '#\/)))
                      (if _%$e184139%_
                          ((lambda (_%idx184142%_)
                             (gx#core-resolve-library-module-path
                              (##string->symbol
                               (string-append
                                '":"
                                (substring _%base184137%_ '0 _%idx184142%_)
                                '"/"
                                _%path184136%_))))
                           _%$e184139%_)
                          (gx#core-resolve-library-module-path
                           (##string->symbol
                            (string-append '":" _%path184136%_))))))))
          (let ((_%spath184117%_ (symbol->string (gx#stx-e _%modpath184113%_)))
                (_%mod184118%_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _%mod184118%_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"cannot resolve relative module path; not in module context"
                 _%modpath184113%_))
            (let ((_%mpath184120%_
                   (symbol->string
                    (##structure-ref
                     _%mod184118%_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _%lp184122%_ ((_%spath184124%_ _%spath184117%_)
                                 (_%mpath184125%_ _%mpath184120%_))
                (if (string-prefix? '"../" _%spath184124%_)
                    (let ((_%$e184128%_
                           (string-rindex__0 _%mpath184125%_ '#\/)))
                      (if _%$e184128%_
                          ((lambda (_%idx184131%_)
                             (_%lp184122%_
                              (substring
                               _%spath184124%_
                               '3
                               (string-length _%spath184124%_))
                              (substring _%mpath184125%_ '0 _%idx184131%_)))
                           _%$e184128%_)
                          (gx#raise-syntax-error
                           '#f
                           '"cannot resolve relative module path; illegal traversal"
                           _%modpath184113%_)))
                    (if (string-prefix? '"./" _%spath184124%_)
                        (_%lp184122%_
                         (substring
                          _%spath184124%_
                          '2
                          (string-length _%spath184124%_))
                         _%mpath184125%_)
                        (_%resolve184115%_
                         _%spath184124%_
                         _%mpath184125%_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_%dir184105%_)
        (let ((_%$e184107%_
               (pgetq__0
                'package:
                (gx#core-library-package-plist__0 _%dir184105%_))))
          (if _%$e184107%_
              ((lambda (_%pkg184110%_)
                 (##string-append (symbol->string _%pkg184110%_) '"/"))
               _%$e184107%_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_%dir184075%_ _%exists?184076%_)
        (let ((_%$e184078%_ (__hash-get gx#__module-pkg-cache _%dir184075%_)))
          (if _%$e184078%_
              _%$e184078%_
              (let* ((_%gerbil.pkg184082%_
                      (path-expand '"gerbil.pkg" _%dir184075%_))
                     (_%plist184092%_
                      (if (or _%exists?184076%_
                              (##file-exists? _%gerbil.pkg184082%_))
                          (let ((_%e184087%_
                                 (gx#call-with-input-source-file
                                  _%gerbil.pkg184082%_
                                  read)))
                            (if (eof-object? _%e184087%_)
                                '()
                                (if (list? _%e184087%_)
                                    _%e184087%_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _%gerbil.pkg184082%_
                                     _%e184087%_))))
                          '())))
                (__hash-put!
                 gx#__module-pkg-cache
                 _%dir184075%_
                 _%plist184092%_)
                _%plist184092%_)))))
    (define gx#core-library-package-plist__0
      (lambda (_%dir184098%_)
        (let ((_%exists?184100%_ '#f))
          (gx#core-library-package-plist__% _%dir184098%_ _%exists?184100%_))))
    (define gx#core-library-package-plist
      (lambda _g185921_
        (let ((_g185922_ (##length _g185921_)))
          (cond ((##fx= _g185922_ 1)
                 (apply gx#core-library-package-plist__0 _g185921_))
                ((##fx= _g185922_ 2)
                 (apply gx#core-library-package-plist__% _g185921_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g185921_))))))
    (define gx#core-library-module-path?
      (lambda (_%stx184072%_)
        (gx#core-special-module-path? _%stx184072%_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_%stx184070%_)
        (gx#core-special-module-path? _%stx184070%_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_%stx184065%_ _%char184066%_)
        (if (gx#identifier? _%stx184065%_)
            (if (interned-symbol? (gx#stx-e _%stx184065%_))
                (let ((_%str184068%_
                       (symbol->string (gx#stx-e _%stx184065%_))))
                  (if (##fx> (##string-length _%str184068%_) '1)
                      (eq? (string-ref _%str184068%_ '0) _%char184066%_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_%stx184059%_)
        (gx#core-bound-identifier?__%
         _%stx184059%_
         (lambda (_%g184060184062%_)
           (gx#expander-binding?__% _%g184060184062%_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_%stx184053%_)
        (gx#core-bound-identifier?__%
         _%stx184053%_
         (lambda (_%g184054184056%_)
           (gx#expander-binding?__% _%g184054184056%_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_%stx184040%_)
        (letrec ((_%module-prelude?184042%_
                  (lambda (_%e184048%_)
                    (let ((_%$e184050%_
                           (##structure-instance-of?
                            _%e184048%_
                            'gx#module-context::t)))
                      (if _%$e184050%_
                          _%$e184050%_
                          (##structure-instance-of?
                           _%e184048%_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _%stx184040%_
           (lambda (_%g184043184045%_)
             (gx#expander-binding?__%
              _%g184043184045%_
              _%module-prelude?184042%_))))))
    (define gx#core-bind-import!__%
      (lambda (_%in183971%_ _%ctx183972%_ _%force-weak?183973%_)
        (let* ((_%in183974183983%_ _%in183971%_)
               (_%E183976183986%_
                (lambda ()
                  (error '"No clause matching"
                         _%in183974183983%_
                         '((module-import source key phi weak?)))
                  '#!void))
               (_%K183977183999%_
                (lambda (_%weak?183989%_
                         _%phi183990%_
                         _%key183991%_
                         _%source183992%_)
                  (gx#core-bind!__%
                   _%key183991%_
                   (let* ((_%e183994%_
                           (gx#core-resolve-module-export _%source183992%_))
                          (__obj185903
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
                      __obj185903
                      (##unchecked-structure-ref _%e183994%_ '1 '#f '#f)
                      _%key183991%_
                      _%phi183990%_
                      _%e183994%_
                      (##unchecked-structure-ref _%source183992%_ '1 '#f '#f)
                      (let ((_%$e183996%_ _%force-weak?183973%_))
                        (if _%$e183996%_ _%$e183996%_ _%weak?183989%_)))
                     __obj185903)
                   gx#core-context-rebind?
                   _%phi183990%_
                   _%ctx183972%_))))
          (if (##structure-direct-instance-of?
               _%in183974183983%_
               'gx#module-import::t)
              (let* ((_%e183978184002%_
                      (##unchecked-structure-ref
                       _%in183974183983%_
                       '1
                       '#f
                       '#f))
                     (_%source184005%_ _%e183978184002%_)
                     (_%e183979184007%_
                      (##unchecked-structure-ref
                       _%in183974183983%_
                       '2
                       '#f
                       '#f))
                     (_%key184010%_ _%e183979184007%_)
                     (_%e183980184012%_
                      (##unchecked-structure-ref
                       _%in183974183983%_
                       '3
                       '#f
                       '#f))
                     (_%phi184015%_ _%e183980184012%_)
                     (_%e183981184017%_
                      (##unchecked-structure-ref
                       _%in183974183983%_
                       '4
                       '#f
                       '#f))
                     (_%weak?184020%_ _%e183981184017%_))
                (_%K183977183999%_
                 _%weak?184020%_
                 _%phi184015%_
                 _%key184010%_
                 _%source184005%_))
              (_%E183976183986%_)))))
    (define gx#core-bind-import!__0
      (lambda (_%in184025%_)
        (let* ((_%ctx184027%_ (gx#current-expander-context))
               (_%force-weak?184029%_ '#f))
          (gx#core-bind-import!__%
           _%in184025%_
           _%ctx184027%_
           _%force-weak?184029%_))))
    (define gx#core-bind-import!__1
      (lambda (_%in184031%_ _%ctx184032%_)
        (let ((_%force-weak?184034%_ '#f))
          (gx#core-bind-import!__%
           _%in184031%_
           _%ctx184032%_
           _%force-weak?184034%_))))
    (define gx#core-bind-import!
      (lambda _g185923_
        (let ((_g185924_ (##length _g185923_)))
          (cond ((##fx= _g185924_ 1) (apply gx#core-bind-import!__0 _g185923_))
                ((##fx= _g185924_ 2) (apply gx#core-bind-import!__1 _g185923_))
                ((##fx= _g185924_ 3) (apply gx#core-bind-import!__% _g185923_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g185923_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_%in183957%_ _%ctx183958%_)
        (gx#core-bind-import!__% _%in183957%_ _%ctx183958%_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_%in183963%_)
        (let ((_%ctx183965%_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _%in183963%_ _%ctx183965%_))))
    (define gx#core-bind-weak-import!
      (lambda _g185925_
        (let ((_g185926_ (##length _g185925_)))
          (cond ((##fx= _g185926_ 1)
                 (apply gx#core-bind-weak-import!__0 _g185925_))
                ((##fx= _g185926_ 2)
                 (apply gx#core-bind-weak-import!__% _g185925_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g185925_))))))
    (define gx#core-resolve-module-export
      (lambda (_%out183850%_)
        (letrec ((_%subst183852%_
                  (lambda (_%key183897%_)
                    (let* ((_%key183898183906%_ _%key183897%_)
                           (_%else183900183914%_ (lambda () _%key183897%_))
                           (_%K183902183944%_
                            (lambda (_%mark183917%_ _%id183918%_)
                              (let* ((_%mark183919183925%_ _%mark183917%_)
                                     (_%E183921183928%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark183919183925%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K183922183936%_
                                      (lambda (_%subst183931%_)
                                        (let ((_%$e183933%_
                                               (if _%subst183931%_
                                                   (hash-get
                                                    _%subst183931%_
                                                    _%id183918%_)
                                                   '#f)))
                                          (if _%$e183933%_
                                              _%$e183933%_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _%key183897%_))))))
                                (if (##structure-instance-of?
                                     _%mark183919183925%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e183923183939%_
                                            (##unchecked-structure-ref
                                             _%mark183919183925%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst183942%_ _%e183923183939%_))
                                      (_%K183922183936%_ _%subst183942%_))
                                    (_%E183921183928%_))))))
                      (if (pair? _%key183898183906%_)
                          (let ((_%hd183903183947%_
                                 (##car _%key183898183906%_))
                                (_%tl183904183949%_
                                 (##cdr _%key183898183906%_)))
                            (let* ((_%id183952%_ _%hd183903183947%_)
                                   (_%mark183954%_ _%tl183904183949%_))
                              (_%K183902183944%_ _%mark183954%_ _%id183952%_)))
                          (_%else183900183914%_))))))
          (let* ((_%out183853183863%_ _%out183850%_)
                 (_%E183855183866%_
                  (lambda ()
                    (error '"No clause matching"
                           _%out183853183863%_
                           '((module-export ctx key phi _ _)))
                    '#!void))
                 (_%K183856183873%_
                  (lambda (_%phi183869%_ _%key183870%_ _%ctx183871%_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _%ctx183871%_ _%phi183869%_)
                     (_%subst183852%_ _%key183870%_)))))
            (if (##structure-direct-instance-of?
                 _%out183853183863%_
                 'gx#module-export::t)
                (let* ((_%e183857183876%_
                        (##unchecked-structure-ref
                         _%out183853183863%_
                         '1
                         '#f
                         '#f))
                       (_%ctx183879%_ _%e183857183876%_)
                       (_%e183858183881%_
                        (##unchecked-structure-ref
                         _%out183853183863%_
                         '2
                         '#f
                         '#f))
                       (_%key183884%_ _%e183858183881%_)
                       (_%e183859183886%_
                        (##unchecked-structure-ref
                         _%out183853183863%_
                         '3
                         '#f
                         '#f))
                       (_%phi183889%_ _%e183859183886%_)
                       (_%e183860183891%_
                        (##unchecked-structure-ref
                         _%out183853183863%_
                         '4
                         '#f
                         '#f))
                       (_%e183861183894%_
                        (##unchecked-structure-ref
                         _%out183853183863%_
                         '5
                         '#f
                         '#f)))
                  (_%K183856183873%_
                   _%phi183889%_
                   _%key183884%_
                   _%ctx183879%_))
                (_%E183855183866%_))))))
    (define gx#core-module-export->import__%
      (lambda (_%out183776%_ _%rename183777%_ _%dphi183778%_)
        (let* ((_%out183779183789%_ _%out183776%_)
               (_%E183781183792%_
                (lambda ()
                  (error '"No clause matching"
                         _%out183779183789%_
                         '((module-export ctx key phi name weak?)))
                  '#!void))
               (_%K183782183804%_
                (lambda (_%weak?183795%_
                         _%name183796%_
                         _%phi183797%_
                         _%key183798%_
                         _%ctx183799%_)
                  (##structure
                   gx#module-import::t
                   _%out183776%_
                   (let ((_%$e183801%_ _%rename183777%_))
                     (if _%$e183801%_ _%$e183801%_ _%name183796%_))
                   (fx+ _%phi183797%_ _%dphi183778%_)
                   _%weak?183795%_))))
          (if (##structure-direct-instance-of?
               _%out183779183789%_
               'gx#module-export::t)
              (let* ((_%e183783183807%_
                      (##unchecked-structure-ref
                       _%out183779183789%_
                       '1
                       '#f
                       '#f))
                     (_%ctx183810%_ _%e183783183807%_)
                     (_%e183784183812%_
                      (##unchecked-structure-ref
                       _%out183779183789%_
                       '2
                       '#f
                       '#f))
                     (_%key183815%_ _%e183784183812%_)
                     (_%e183785183817%_
                      (##unchecked-structure-ref
                       _%out183779183789%_
                       '3
                       '#f
                       '#f))
                     (_%phi183820%_ _%e183785183817%_)
                     (_%e183786183822%_
                      (##unchecked-structure-ref
                       _%out183779183789%_
                       '4
                       '#f
                       '#f))
                     (_%name183825%_ _%e183786183822%_)
                     (_%e183787183827%_
                      (##unchecked-structure-ref
                       _%out183779183789%_
                       '5
                       '#f
                       '#f))
                     (_%weak?183830%_ _%e183787183827%_))
                (_%K183782183804%_
                 _%weak?183830%_
                 _%name183825%_
                 _%phi183820%_
                 _%key183815%_
                 _%ctx183810%_))
              (_%E183781183792%_)))))
    (define gx#core-module-export->import__0
      (lambda (_%out183835%_)
        (let* ((_%rename183837%_ '#f) (_%dphi183839%_ '0))
          (gx#core-module-export->import__%
           _%out183835%_
           _%rename183837%_
           _%dphi183839%_))))
    (define gx#core-module-export->import__1
      (lambda (_%out183841%_ _%rename183842%_)
        (let ((_%dphi183844%_ '0))
          (gx#core-module-export->import__%
           _%out183841%_
           _%rename183842%_
           _%dphi183844%_))))
    (define gx#core-module-export->import
      (lambda _g185927_
        (let ((_g185928_ (##length _g185927_)))
          (cond ((##fx= _g185928_ 1)
                 (apply gx#core-module-export->import__0 _g185927_))
                ((##fx= _g185928_ 2)
                 (apply gx#core-module-export->import__1 _g185927_))
                ((##fx= _g185928_ 3)
                 (apply gx#core-module-export->import__% _g185927_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g185927_))))))
    (define gx#core-expand-module%
      (lambda (_%stx183675%_)
        (letrec ((_%make-context183677%_
                  (lambda (_%id183754%_)
                    (let* ((_%super183756%_ (gx#current-expander-context))
                           (_%bind-id183758%_ (gx#stx-e _%id183754%_))
                           (_%mod-id183760%_
                            (if (##structure-instance-of?
                                 _%super183756%_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##unchecked-structure-ref
                                  _%super183756%_
                                  '1
                                  '#f
                                  '#f)
                                 '"~"
                                 _%bind-id183758%_)
                                _%bind-id183758%_))
                           (_%ns183762%_ (symbol->string _%mod-id183760%_))
                           (_%path183772%_
                            (if (##structure-instance-of?
                                 _%super183756%_
                                 'gx#module-context::t)
                                (let ((_%path183764%_
                                       (##unchecked-structure-ref
                                        _%super183756%_
                                        '7
                                        '#f
                                        '#f)))
                                  (if (or (pair? _%path183764%_)
                                          (null? _%path183764%_))
                                      (cons _%bind-id183758%_ _%path183764%_)
                                      (if (not _%path183764%_)
                                          _%bind-id183758%_
                                          (cons _%bind-id183758%_
                                                (cons _%path183764%_ '())))))
                                _%bind-id183758%_))
                           (__obj185904
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
                       __obj185904
                       _%mod-id183760%_
                       _%super183756%_
                       _%ns183762%_
                       _%path183772%_)
                      __obj185904)))
                 (_%valid-module-id?183678%_
                  (lambda (_%id183729%_)
                    (let* ((_%str183731%_ (symbol->string _%id183729%_))
                           (_%len183733%_ (##string-length _%str183731%_)))
                      (if (##fx>= _%len183733%_ '1)
                          (let _%loop183736%_ ((_%index183738%_
                                                (##fx- (##string-length
                                                        _%str183731%_)
                                                       '1)))
                            (if (##fx>= _%index183738%_ '0)
                                (let ((_%c183740%_
                                       (string-ref
                                        _%str183731%_
                                        _%index183738%_)))
                                  (if (or (and (##char>=? _%c183740%_ '#\a)
                                               (##char<=? _%c183740%_ '#\z))
                                          (and (##char>=? _%c183740%_ '#\A)
                                               (##char<=? _%c183740%_ '#\Z))
                                          (and (##char>=? _%c183740%_ '#\0)
                                               (##char<=? _%c183740%_ '#\9))
                                          (##char=? _%c183740%_ '#\_)
                                          (##char=? _%c183740%_ '#\-))
                                      (_%loop183736%_
                                       (##fx- _%index183738%_ '1))
                                      '#f))
                                '#t))
                          '#f)))))
          (let* ((_%e183679183689%_ _%stx183675%_)
                 (_%E183681183693%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e183679183689%_)))
                 (_%E183680183725%_
                  (lambda ()
                    (if (gx#stx-pair? _%e183679183689%_)
                        (let ((_%e183682183697%_
                               (gx#syntax-e _%e183679183689%_)))
                          (let ((_%hd183683183700%_ (##car _%e183682183697%_))
                                (_%tl183684183702%_ (##cdr _%e183682183697%_)))
                            (if (gx#stx-pair? _%tl183684183702%_)
                                (let ((_%e183685183705%_
                                       (gx#syntax-e _%tl183684183702%_)))
                                  (let ((_%hd183686183708%_
                                         (##car _%e183685183705%_))
                                        (_%tl183687183710%_
                                         (##cdr _%e183685183705%_)))
                                    (let* ((_%id183713%_ _%hd183686183708%_)
                                           (_%body183715%_ _%tl183687183710%_))
                                      (if (and (gx#identifier? _%id183713%_)
                                               (gx#stx-list? _%body183715%_))
                                          (if (_%valid-module-id?183678%_
                                               (gx#stx-e
                                                (gx#datum->syntax__0 '#f 'id)))
                                              (let* ((_%ctx183717%_
                                                      (_%make-context183677%_
                                                       _%id183713%_))
                                                     (_%body183719%_
                                                      (gx#core-expand-module-begin
                                                       _%body183715%_
                                                       _%ctx183717%_))
                                                     (_%body183721%_
                                                      (gx#core-quote-syntax__1
                                                       (gx#core-cons
                                                        '%#begin
                                                        _%body183719%_)
                                                       (gx#stx-source
                                                        _%stx183675%_))))
                                                (##unchecked-structure-set!
                                                 _%ctx183717%_
                                                 (__make-atomic-promise
                                                  (lambda ()
                                                    (gx#eval-syntax*
                                                     _%body183721%_)))
                                                 '10
                                                 '#f
                                                 '#f)
                                                (##unchecked-structure-set!
                                                 _%ctx183717%_
                                                 _%body183721%_
                                                 '11
                                                 '#f
                                                 '#f)
                                                (gx#core-bind-syntax!__0
                                                 _%id183713%_
                                                 _%ctx183717%_)
                                                (gx#core-quote-syntax__1
                                                 (gx#core-list
                                                  '%#module
                                                  (gx#core-quote-syntax__0
                                                   _%id183713%_)
                                                  _%body183721%_)
                                                 (gx#stx-source
                                                  _%stx183675%_)))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"invalid module id; allowed characters are A-Z,a-z,0-9,_,-"
                                               _%stx183675%_
                                               (gx#datum->syntax__0 '#f 'id)))
                                          (_%E183681183693%_)))))
                                (_%E183681183693%_))))
                        (_%E183681183693%_)))))
            (_%E183680183725%_)))))
    (define gx#core-expand-module-begin
      (lambda (_%body183640%_ _%ctx183641%_)
        (call-with-parameters__1
         (lambda ()
           (call-with-parameters__1
            (lambda ()
              (gx#core-bind-feature!__1 'gerbil-module '#t)
              (let* ((_%stx183645%_
                      (gx#core-expand-head
                       (cons '%%begin-module _%body183640%_)))
                     (_%e183646183653%_ _%stx183645%_)
                     (_%E183648183657%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module body expansion"
                         _%stx183645%_)))
                     (_%E183647183671%_
                      (lambda ()
                        (if (gx#stx-pair? _%e183646183653%_)
                            (let ((_%e183649183661%_
                                   (gx#syntax-e _%e183646183653%_)))
                              (let ((_%hd183650183664%_
                                     (##car _%e183649183661%_))
                                    (_%tl183651183666%_
                                     (##cdr _%e183649183661%_)))
                                (if (and (gx#identifier? _%hd183650183664%_)
                                         (gx#core-identifier=?
                                          _%hd183650183664%_
                                          '%#begin-module))
                                    (let ((_%body183669%_ _%tl183651183666%_))
                                      (if (gx#sealed-syntax? _%stx183645%_)
                                          _%body183669%_
                                          (gx#core-expand-module-body
                                           _%body183669%_)))
                                    (_%E183648183657%_))))
                            (_%E183648183657%_)))))
                (_%E183647183671%_)))
            gx#current-expander-phi
            '0))
         gx#current-expander-context
         _%ctx183641%_)))
    (define gx#core-expand-module-body
      (lambda (_%body183436%_)
        (letrec ((_%expand-special183438%_
                  (lambda (_%hd183567%_ _%K183568%_ _%rest183569%_ _%r183570%_)
                    (let* ((_%e183571183588%_ _%hd183567%_)
                           (_%E183583183592%_
                            (lambda ()
                              (_%K183568%_
                               _%rest183569%_
                               (cons (gx#core-expand-top _%hd183567%_)
                                     _%r183570%_))))
                           (_%E183573183604%_
                            (lambda ()
                              (if (gx#stx-pair? _%e183571183588%_)
                                  (let ((_%e183584183596%_
                                         (gx#syntax-e _%e183571183588%_)))
                                    (let ((_%hd183585183599%_
                                           (##car _%e183584183596%_))
                                          (_%tl183586183601%_
                                           (##cdr _%e183584183596%_)))
                                      (if (and (gx#identifier?
                                                _%hd183585183599%_)
                                               (gx#core-identifier=?
                                                _%hd183585183599%_
                                                '%#export))
                                          (_%K183568%_
                                           _%rest183569%_
                                           (cons _%hd183567%_ _%r183570%_))
                                          (_%E183583183592%_))))
                                  (_%E183583183592%_))))
                           (_%E183572183636%_
                            (lambda ()
                              (if (gx#stx-pair? _%e183571183588%_)
                                  (let ((_%e183574183608%_
                                         (gx#syntax-e _%e183571183588%_)))
                                    (let ((_%hd183575183611%_
                                           (##car _%e183574183608%_))
                                          (_%tl183576183613%_
                                           (##cdr _%e183574183608%_)))
                                      (if (and (gx#identifier?
                                                _%hd183575183611%_)
                                               (gx#core-identifier=?
                                                _%hd183575183611%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl183576183613%_)
                                              (let ((_%e183577183616%_
                                                     (gx#syntax-e
                                                      _%tl183576183613%_)))
                                                (let ((_%hd183578183619%_
                                                       (##car _%e183577183616%_))
                                                      (_%tl183579183621%_
                                                       (##cdr _%e183577183616%_)))
                                                  (let ((_%hd-bind183624%_
                                                         _%hd183578183619%_))
                                                    (if (gx#stx-pair?
                                                         _%tl183579183621%_)
                                                        (let ((_%e183580183626%_
                                                               (gx#syntax-e
                                                                _%tl183579183621%_)))
                                                          (let ((_%hd183581183629%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e183580183626%_))
                        (_%tl183582183631%_ (##cdr _%e183580183626%_)))
                    (let ((_%expr183634%_ _%hd183581183629%_))
                      (if (gx#stx-null? _%tl183582183631%_)
                          (if (gx#core-bind-values? _%hd-bind183624%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind183624%_)
                                (_%K183568%_
                                 _%rest183569%_
                                 (cons _%hd183567%_ _%r183570%_)))
                              (_%E183573183604%_))
                          (_%E183573183604%_)))))
                (_%E183573183604%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E183573183604%_))
                                          (_%E183573183604%_))))
                                  (_%E183573183604%_)))))
                      (_%E183572183636%_))))
                 (_%expand-body183439%_
                  (lambda (_%rbody183441%_)
                    (let _%lp183443%_ ((_%rest183445%_ _%rbody183441%_)
                                       (_%body183446%_ '()))
                      (let* ((_%rest183447183455%_ _%rest183445%_)
                             (_%else183449183463%_ (lambda () _%body183446%_))
                             (_%K183451183555%_
                              (lambda (_%rest183466%_ _%hd183467%_)
                                (let* ((_%e183468183489%_ _%hd183467%_)
                                       (_%E183484183493%_
                                        (lambda ()
                                          (_%lp183443%_
                                           _%rest183466%_
                                           (cons (gx#core-expand-expression
                                                  _%hd183467%_)
                                                 _%body183446%_))))
                                       (_%E183480183507%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e183468183489%_)
                                              (let ((_%e183485183497%_
                                                     (gx#syntax-e
                                                      _%e183468183489%_)))
                                                (let ((_%hd183486183500%_
                                                       (##car _%e183485183497%_))
                                                      (_%tl183487183502%_
                                                       (##cdr _%e183485183497%_)))
                                                  (let ((_%form183505%_
                                                         _%hd183486183500%_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _%form183505%_
                                                         gx#special-form-binding?)
                                                        (_%lp183443%_
                                                         _%rest183466%_
                                                         (cons _%hd183467%_
                                                               _%body183446%_))
                                                        (_%E183484183493%_)))))
                                              (_%E183484183493%_))))
                                       (_%E183470183519%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e183468183489%_)
                                              (let ((_%e183481183511%_
                                                     (gx#syntax-e
                                                      _%e183468183489%_)))
                                                (let ((_%hd183482183514%_
                                                       (##car _%e183481183511%_))
                                                      (_%tl183483183516%_
                                                       (##cdr _%e183481183511%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd183482183514%_)
                                                           (gx#core-identifier=?
                                                            _%hd183482183514%_
                                                            '%#export))
                                                      (_%lp183443%_
                                                       _%rest183466%_
                                                       (cons (gx#core-expand-export%__0
                                                              _%hd183467%_)
                                                             _%body183446%_))
                                                      (_%E183480183507%_))))
                                              (_%E183480183507%_))))
                                       (_%E183469183551%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e183468183489%_)
                                              (let ((_%e183471183523%_
                                                     (gx#syntax-e
                                                      _%e183468183489%_)))
                                                (let ((_%hd183472183526%_
                                                       (##car _%e183471183523%_))
                                                      (_%tl183473183528%_
                                                       (##cdr _%e183471183523%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd183472183526%_)
                                                           (gx#core-identifier=?
                                                            _%hd183472183526%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl183473183528%_)
                                                          (let ((_%e183474183531%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl183473183528%_)))
                    (let ((_%hd183475183534%_ (##car _%e183474183531%_))
                          (_%tl183476183536%_ (##cdr _%e183474183531%_)))
                      (let ((_%hd-bind183539%_ _%hd183475183534%_))
                        (if (gx#stx-pair? _%tl183476183536%_)
                            (let ((_%e183477183541%_
                                   (gx#syntax-e _%tl183476183536%_)))
                              (let ((_%hd183478183544%_
                                     (##car _%e183477183541%_))
                                    (_%tl183479183546%_
                                     (##cdr _%e183477183541%_)))
                                (let ((_%expr183549%_ _%hd183478183544%_))
                                  (if (gx#stx-null? _%tl183479183546%_)
                                      (_%lp183443%_
                                       _%rest183466%_
                                       (cons (gx#core-quote-syntax__1
                                              (gx#core-list
                                               '%#define-values
                                               (gx#core-quote-bind-values
                                                _%hd-bind183539%_)
                                               (gx#core-expand-expression
                                                _%expr183549%_))
                                              (gx#stx-source _%hd183467%_))
                                             _%body183446%_))
                                      (_%E183470183519%_)))))
                            (_%E183470183519%_)))))
                  (_%E183470183519%_))
              (_%E183470183519%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E183470183519%_)))))
                                  (_%E183469183551%_)))))
                        (if (pair? _%rest183447183455%_)
                            (let ((_%hd183452183558%_
                                   (##car _%rest183447183455%_))
                                  (_%tl183453183560%_
                                   (##cdr _%rest183447183455%_)))
                              (let* ((_%hd183563%_ _%hd183452183558%_)
                                     (_%rest183565%_ _%tl183453183560%_))
                                (_%K183451183555%_
                                 _%rest183565%_
                                 _%hd183563%_)))
                            (_%else183449183463%_)))))))
          (_%expand-body183439%_
           (gx#core-expand-block__%
            (cons '%#begin-module _%body183436%_)
            _%expand-special183438%_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_%stx183277%_
               _%expanded?183278%_
               _%method183279%_
               _%current-phi183280%_
               _%expand1183281%_)
        (letrec ((_%K183283%_
                  (lambda (_%rest183403%_ _%r183404%_)
                    (let* ((_%e183405183412%_ _%rest183403%_)
                           (_%E183407183416%_ (lambda () _%r183404%_))
                           (_%E183406183432%_
                            (lambda ()
                              (if (gx#stx-pair? _%e183405183412%_)
                                  (let ((_%e183408183420%_
                                         (gx#syntax-e _%e183405183412%_)))
                                    (let ((_%hd183409183423%_
                                           (##car _%e183408183420%_))
                                          (_%tl183410183425%_
                                           (##cdr _%e183408183420%_)))
                                      (let* ((_%hd183428%_ _%hd183409183423%_)
                                             (_%rest183430%_
                                              _%tl183410183425%_))
                                        (_%step183284%_
                                         _%hd183428%_
                                         _%rest183430%_
                                         _%r183404%_))))
                                  (_%E183407183416%_)))))
                      (_%E183406183432%_))))
                 (_%step183284%_
                  (lambda (_%hd183317%_ _%rest183318%_ _%r183319%_)
                    (let* ((_%e183320183338%_ _%hd183317%_)
                           (_%E183333183342%_
                            (lambda ()
                              (if (_%expanded?183278%_ (gx#stx-e _%hd183317%_))
                                  (_%K183283%_
                                   _%rest183318%_
                                   (cons (gx#stx-e _%hd183317%_) _%r183319%_))
                                  (_%expand1183281%_
                                   _%hd183317%_
                                   _%K183283%_
                                   _%rest183318%_
                                   _%r183319%_))))
                           (_%E183329183358%_
                            (lambda ()
                              (if (gx#stx-pair? _%e183320183338%_)
                                  (let ((_%e183334183346%_
                                         (gx#syntax-e _%e183320183338%_)))
                                    (let ((_%hd183335183349%_
                                           (##car _%e183334183346%_))
                                          (_%tl183336183351%_
                                           (##cdr _%e183334183346%_)))
                                      (let* ((_%macro183354%_
                                              _%hd183335183349%_)
                                             (_%body183356%_
                                              _%tl183336183351%_))
                                        (if (gx#core-bound-identifier?__%
                                             _%macro183354%_
                                             gx#syntax-binding?)
                                            (_%K183283%_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _%macro183354%_)
                                                    _%hd183317%_
                                                    _%method183279%_)
                                                   _%rest183318%_)
                                             _%r183319%_)
                                            (_%E183333183342%_)))))
                                  (_%E183333183342%_))))
                           (_%E183322183372%_
                            (lambda ()
                              (if (gx#stx-pair? _%e183320183338%_)
                                  (let ((_%e183330183362%_
                                         (gx#syntax-e _%e183320183338%_)))
                                    (let ((_%hd183331183365%_
                                           (##car _%e183330183362%_))
                                          (_%tl183332183367%_
                                           (##cdr _%e183330183362%_)))
                                      (if (eq? (gx#stx-e _%hd183331183365%_)
                                               'begin:)
                                          (let ((_%body183370%_
                                                 _%tl183332183367%_))
                                            (_%K183283%_
                                             (gx#stx-foldr
                                              cons
                                              _%rest183318%_
                                              _%body183370%_)
                                             _%r183319%_))
                                          (_%E183329183358%_))))
                                  (_%E183329183358%_))))
                           (_%E183321183399%_
                            (lambda ()
                              (if (gx#stx-pair? _%e183320183338%_)
                                  (let ((_%e183323183376%_
                                         (gx#syntax-e _%e183320183338%_)))
                                    (let ((_%hd183324183379%_
                                           (##car _%e183323183376%_))
                                          (_%tl183325183381%_
                                           (##cdr _%e183323183376%_)))
                                      (if (eq? (gx#stx-e _%hd183324183379%_)
                                               'phi:)
                                          (if (gx#stx-pair? _%tl183325183381%_)
                                              (let ((_%e183326183384%_
                                                     (gx#syntax-e
                                                      _%tl183325183381%_)))
                                                (let ((_%hd183327183387%_
                                                       (##car _%e183326183384%_))
                                                      (_%tl183328183389%_
                                                       (##cdr _%e183326183384%_)))
                                                  (let* ((_%dphi183392%_
                                                          _%hd183327183387%_)
                                                         (_%body183394%_
                                                          _%tl183328183389%_))
                                                    (if (gx#stx-fixnum?
                                                         _%dphi183392%_)
                                                        (let ((_%rbody183397%_
                                                               (call-with-parameters__1
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_%K183283%_ _%body183394%_ '()))
                        _%current-phi183280%_
                        (fx+ (gx#stx-e _%dphi183392%_)
                             (_%current-phi183280%_)))))
                  (_%K183283%_
                   _%rest183318%_
                   (foldr__0 cons _%r183319%_ _%rbody183397%_)))
                (_%E183322183372%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E183322183372%_))
                                          (_%E183322183372%_))))
                                  (_%E183322183372%_)))))
                      (_%E183321183399%_)))))
          (let* ((_%e183285183292%_ _%stx183277%_)
                 (_%E183287183296%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e183285183292%_)))
                 (_%E183286183313%_
                  (lambda ()
                    (if (gx#stx-pair? _%e183285183292%_)
                        (let ((_%e183288183300%_
                               (gx#syntax-e _%e183285183292%_)))
                          (let ((_%hd183289183303%_ (##car _%e183288183300%_))
                                (_%tl183290183305%_ (##cdr _%e183288183300%_)))
                            (let ((_%body183308%_ _%tl183290183305%_))
                              (if (_%current-phi183280%_)
                                  (_%K183283%_ _%body183308%_ '())
                                  (call-with-parameters__1
                                   (lambda () (_%K183283%_ _%body183308%_ '()))
                                   _%current-phi183280%_
                                   (gx#current-expander-phi))))))
                        (_%E183287183296%_)))))
            (_%E183286183313%_)))))
    (define gx#core-expand-import%__%
      (lambda (_%stx182931%_ _%internal-expand?182932%_)
        (letrec ((_%expand1182934%_
                  (lambda (_%hd183249%_ _%K183250%_ _%rest183251%_ _%r183252%_)
                    (if (gx#core-bound-module? _%hd183249%_)
                        (_%import1182935%_
                         (gx#syntax-local-e__0 _%hd183249%_)
                         _%K183250%_
                         _%rest183251%_
                         _%r183252%_)
                        (if (gx#core-library-module-path? _%hd183249%_)
                            (_%import1182935%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%hd183249%_))
                             _%K183250%_
                             _%rest183251%_
                             _%r183252%_)
                            (if (gx#core-library-relative-module-path?
                                 _%hd183249%_)
                                (_%import1182935%_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _%hd183249%_))
                                 _%K183250%_
                                 _%rest183251%_
                                 _%r183252%_)
                                (let ((_%e183258%_ (gx#stx-e _%hd183249%_)))
                                  (if (pair? _%e183258%_)
                                      (let ((_%$e183261%_
                                             (gx#stx-e (##car _%e183258%_))))
                                        (if (eq? 'spec: _%$e183261%_)
                                            (_%import-spec182938%_
                                             _%hd183249%_
                                             _%K183250%_
                                             _%rest183251%_
                                             _%r183252%_)
                                            (if (eq? 'in: _%$e183261%_)
                                                (_%import-submodule182936%_
                                                 _%hd183249%_
                                                 _%K183250%_
                                                 _%rest183251%_
                                                 _%r183252%_)
                                                (if (eq? 'runtime:
                                                         _%$e183261%_)
                                                    (_%import-runtime182937%_
                                                     _%hd183249%_
                                                     _%K183250%_
                                                     _%rest183251%_
                                                     _%r183252%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _%stx182931%_
                                                     _%hd183249%_)))))
                                      (if (string? _%e183258%_)
                                          (_%import1182935%_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _%hd183249%_
                                             (gx#stx-source _%stx182931%_)))
                                           _%K183250%_
                                           _%rest183251%_
                                           _%r183252%_)
                                          (if (##structure-instance-of?
                                               _%e183258%_
                                               'gx#module-context::t)
                                              (_%K183250%_
                                               _%rest183251%_
                                               (cons _%e183258%_ _%r183252%_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _%stx182931%_
                                               _%hd183249%_))))))))))
                 (_%import1182935%_
                  (lambda (_%ctx183238%_
                           _%K183239%_
                           _%rest183240%_
                           _%r183241%_)
                    (let ((_%dphi183243%_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_%K183239%_
                       _%rest183240%_
                       (cons (##structure
                              gx#import-set::t
                              _%ctx183238%_
                              _%dphi183243%_
                              (map (lambda (_%g183244183246%_)
                                     (gx#core-module-export->import__%
                                      _%g183244183246%_
                                      '#f
                                      _%dphi183243%_))
                                   (##unchecked-structure-ref
                                    _%ctx183238%_
                                    '9
                                    '#f
                                    '#f)))
                             _%r183241%_)))))
                 (_%import-submodule182936%_
                  (lambda (_%hd183205%_ _%K183206%_ _%rest183207%_ _%r183208%_)
                    (let* ((_%e183209183216%_ _%hd183205%_)
                           (_%E183211183220%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e183209183216%_)))
                           (_%E183210183234%_
                            (lambda ()
                              (if (gx#stx-pair? _%e183209183216%_)
                                  (let ((_%e183212183224%_
                                         (gx#syntax-e _%e183209183216%_)))
                                    (let ((_%hd183213183227%_
                                           (##car _%e183212183224%_))
                                          (_%tl183214183229%_
                                           (##cdr _%e183212183224%_)))
                                      (let ((_%spath183232%_
                                             _%tl183214183229%_))
                                        (_%import1182935%_
                                         (_%import-spec-source182939%_
                                          _%spath183232%_)
                                         _%K183206%_
                                         _%rest183207%_
                                         _%r183208%_))))
                                  (_%E183211183220%_)))))
                      (_%E183210183234%_))))
                 (_%import-runtime182937%_
                  (lambda (_%hd183172%_ _%K183173%_ _%rest183174%_ _%r183175%_)
                    (let* ((_%e183176183183%_ _%hd183172%_)
                           (_%E183178183187%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e183176183183%_)))
                           (_%E183177183201%_
                            (lambda ()
                              (if (gx#stx-pair? _%e183176183183%_)
                                  (let ((_%e183179183191%_
                                         (gx#syntax-e _%e183176183183%_)))
                                    (let ((_%hd183180183194%_
                                           (##car _%e183179183191%_))
                                          (_%tl183181183196%_
                                           (##cdr _%e183179183191%_)))
                                      (let ((_%spath183199%_
                                             _%tl183181183196%_))
                                        (_%K183173%_
                                         _%rest183174%_
                                         (cons (_%import-spec-source182939%_
                                                _%spath183199%_)
                                               _%r183175%_)))))
                                  (_%E183178183187%_)))))
                      (_%E183177183201%_))))
                 (_%import-spec182938%_
                  (lambda (_%hd183010%_ _%K183011%_ _%rest183012%_ _%r183013%_)
                    (let* ((_%e183014183031%_ _%hd183010%_)
                           (_%E183023183035%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e183014183031%_)))
                           (_%E183016183146%_
                            (lambda ()
                              (if (gx#stx-pair? _%e183014183031%_)
                                  (let ((_%e183024183039%_
                                         (gx#syntax-e _%e183014183031%_)))
                                    (let ((_%hd183025183042%_
                                           (##car _%e183024183039%_))
                                          (_%tl183026183044%_
                                           (##cdr _%e183024183039%_)))
                                      (if (gx#stx-pair? _%tl183026183044%_)
                                          (let ((_%e183027183047%_
                                                 (gx#syntax-e
                                                  _%tl183026183044%_)))
                                            (let ((_%hd183028183050%_
                                                   (##car _%e183027183047%_))
                                                  (_%tl183029183052%_
                                                   (##cdr _%e183027183047%_)))
                                              (let* ((_%path183055%_
                                                      _%hd183028183050%_)
                                                     (_%specs183057%_
                                                      _%tl183029183052%_))
                                                (let ((_%src-ctx183059%_
                                                       (_%import-spec-source182939%_
                                                        _%path183055%_))
                                                      (_%exports183060%_
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
                                                      (_%specs183061%_
                                                       (gx#syntax->list
                                                        _%specs183057%_)))
                                                  (for-each
                                                   (lambda (_%out183063%_)
                                                     (__hash-put!
                                                      _%exports183060%_
                                                      (cons (##unchecked-structure-ref
                                                             _%out183063%_
                                                             '3
                                                             '#f
                                                             '#f)
                                                            (##unchecked-structure-ref
                                                             _%out183063%_
                                                             '4
                                                             '#f
                                                             '#f))
                                                      _%out183063%_))
                                                   (##unchecked-structure-ref
                                                    _%src-ctx183059%_
                                                    '9
                                                    '#f
                                                    '#f))
                                                  (_%K183011%_
                                                   _%rest183012%_
                                                   (foldl__0
                                                    (lambda (_%spec183065%_
                                                             _%r183066%_)
                                                      (let* ((_%e183067183083%_
                                                              _%spec183065%_)
                                                             (_%E183069183087%_
                                                              (lambda ()
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid syntax-case clause"
                         _%e183067183083%_)))
                     (_%E183068183142%_
                      (lambda ()
                        (if (gx#stx-pair? _%e183067183083%_)
                            (let ((_%e183070183091%_
                                   (gx#syntax-e _%e183067183083%_)))
                              (let ((_%hd183071183094%_
                                     (##car _%e183070183091%_))
                                    (_%tl183072183096%_
                                     (##cdr _%e183070183091%_)))
                                (let ((_%phi183099%_ _%hd183071183094%_))
                                  (if (gx#stx-pair? _%tl183072183096%_)
                                      (let ((_%e183073183101%_
                                             (gx#syntax-e _%tl183072183096%_)))
                                        (let ((_%hd183074183104%_
                                               (##car _%e183073183101%_))
                                              (_%tl183075183106%_
                                               (##cdr _%e183073183101%_)))
                                          (let ((_%name183109%_
                                                 _%hd183074183104%_))
                                            (if (gx#stx-pair?
                                                 _%tl183075183106%_)
                                                (let ((_%e183076183111%_
                                                       (gx#syntax-e
                                                        _%tl183075183106%_)))
                                                  (let ((_%hd183077183114%_
                                                         (##car _%e183076183111%_))
                                                        (_%tl183078183116%_
                                                         (##cdr _%e183076183111%_)))
                                                    (let ((_%src-phi183119%_
                                                           _%hd183077183114%_))
                                                      (if (gx#stx-pair?
                                                           _%tl183078183116%_)
                                                          (let ((_%e183079183121%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl183078183116%_)))
                    (let ((_%hd183080183124%_ (##car _%e183079183121%_))
                          (_%tl183081183126%_ (##cdr _%e183079183121%_)))
                      (let ((_%src-name183129%_ _%hd183080183124%_))
                        (if (gx#stx-null? _%tl183081183126%_)
                            (if (and (gx#stx-fixnum? _%src-phi183119%_)
                                     (gx#identifier? _%src-name183129%_)
                                     (gx#stx-fixnum? _%phi183099%_)
                                     (gx#identifier? _%name183109%_))
                                (let ((_%src-phi183131%_
                                       (gx#stx-e _%src-phi183119%_))
                                      (_%src-name183132%_
                                       (gx#core-identifier-key
                                        _%src-name183129%_))
                                      (_%phi183133%_ (gx#stx-e _%phi183099%_))
                                      (_%name183134%_
                                       (gx#core-identifier-key
                                        _%name183109%_)))
                                  (let ((_%$e183136%_
                                         (__hash-get
                                          _%exports183060%_
                                          (cons _%src-phi183131%_
                                                _%src-name183132%_))))
                                    (if _%$e183136%_
                                        ((lambda (_%out183139%_)
                                           (cons (gx#core-module-export->import__%
                                                  _%out183139%_
                                                  _%name183134%_
                                                  (fx- _%phi183133%_
                                                       _%src-phi183131%_))
                                                 _%r183066%_))
                                         _%$e183136%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; no matching export"
                                         _%stx182931%_
                                         _%hd183010%_))))
                                (_%E183069183087%_))
                            (_%E183069183087%_)))))
                  (_%E183069183087%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E183069183087%_)))))
                                      (_%E183069183087%_)))))
                            (_%E183069183087%_)))))
                (_%E183068183142%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r183013%_
                                                    _%specs183061%_))))))
                                          (_%E183023183035%_))))
                                  (_%E183023183035%_))))
                           (_%E183015183168%_
                            (lambda ()
                              (if (gx#stx-pair? _%e183014183031%_)
                                  (let ((_%e183017183150%_
                                         (gx#syntax-e _%e183014183031%_)))
                                    (let ((_%hd183018183153%_
                                           (##car _%e183017183150%_))
                                          (_%tl183019183155%_
                                           (##cdr _%e183017183150%_)))
                                      (if (gx#stx-pair? _%tl183019183155%_)
                                          (let ((_%e183020183158%_
                                                 (gx#syntax-e
                                                  _%tl183019183155%_)))
                                            (let ((_%hd183021183161%_
                                                   (##car _%e183020183158%_))
                                                  (_%tl183022183163%_
                                                   (##cdr _%e183020183158%_)))
                                              (let ((_%path183166%_
                                                     _%hd183021183161%_))
                                                (if (gx#stx-null?
                                                     _%tl183022183163%_)
                                                    (_%K183011%_
                                                     _%rest183012%_
                                                     (cons (_%import-spec-source182939%_
                                                            _%path183166%_)
                                                           _%r183013%_))
                                                    (_%E183016183146%_)))))
                                          (_%E183016183146%_))))
                                  (_%E183016183146%_)))))
                      (_%E183015183168%_))))
                 (_%import-spec-source182939%_
                  (lambda (_%spath183008%_)
                    (gx#core-import-nested-module
                     _%spath183008%_
                     _%stx182931%_)))
                 (_%import!182940%_
                  (lambda (_%rbody182953%_)
                    (letrec* ((_%current-ctx182955%_
                               (gx#current-expander-context))
                              (_%deps182956%_ (make-hash-table-eq))
                              (_%bind!182957%_
                               (lambda (_%hd183006%_)
                                 (gx#core-bind-import!__1
                                  _%hd183006%_
                                  _%current-ctx182955%_))))
                      (let _%lp182959%_ ((_%rest182961%_ _%rbody182953%_)
                                         (_%body182962%_ '()))
                        (let* ((_%rest182963182971%_ _%rest182961%_)
                               (_%else182965182982%_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _%current-ctx182955%_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _%current-ctx182955%_
                                       (foldl__0
                                        cons
                                        (##unchecked-structure-ref
                                         _%current-ctx182955%_
                                         '8
                                         '#f
                                         '#f)
                                        _%body182962%_)
                                       '8
                                       '#f
                                       '#f)
                                      '#!void)
                                  (__hash-for-each
                                   (lambda (_%ctx182979%_ _%_182980%_)
                                     (gx#eval-module _%ctx182979%_))
                                   _%deps182956%_)
                                  _%body182962%_))
                               (_%K182967182994%_
                                (lambda (_%rest182985%_ _%hd182986%_)
                                  (if (##structure-direct-instance-of?
                                       _%hd182986%_
                                       'gx#module-import::t)
                                      (let ()
                                        (_%bind!182957%_ _%hd182986%_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _%hd182986%_
                                                   '3
                                                   '#f
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _%hd182986%_
                                                            '1
                                                            '#f
                                                            '#f)
                                                           '3
                                                           '#f
                                                           '#f)))
                                            (__hash-put!
                                             _%deps182956%_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _%hd182986%_
                                               '1
                                               '#f
                                               '#f)
                                              '1
                                              '#f
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _%hd182986%_
                                           'gx#import-set::t)
                                          (let ()
                                            (for-each
                                             _%bind!182957%_
                                             (##unchecked-structure-ref
                                              _%hd182986%_
                                              '3
                                              '#f
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _%hd182986%_
                                                  '2
                                                  '#f
                                                  '#f))
                                                (__hash-put!
                                                 _%deps182956%_
                                                 (##unchecked-structure-ref
                                                  _%hd182986%_
                                                  '1
                                                  '#f
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_%$e182990%_
                                                 (##structure-instance-of?
                                                  _%hd182986%_
                                                  'gx#module-context::t)))
                                            (if _%$e182990%_
                                                _%$e182990%_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _%stx182931%_
                                                 _%hd182986%_)))))
                                  (_%lp182959%_
                                   _%rest182985%_
                                   (cons _%hd182986%_ _%body182962%_)))))
                          (if (pair? _%rest182963182971%_)
                              (let ((_%hd182968182997%_
                                     (##car _%rest182963182971%_))
                                    (_%tl182969182999%_
                                     (##cdr _%rest182963182971%_)))
                                (let* ((_%hd183002%_ _%hd182968182997%_)
                                       (_%rest183004%_ _%tl182969182999%_))
                                  (_%K182967182994%_
                                   _%rest183004%_
                                   _%hd183002%_)))
                              (_%else182965182982%_)))))))
                 (_%expanded-import?182941%_
                  (lambda (_%e182945%_)
                    (let ((_%$e182947%_
                           (##structure-direct-instance-of?
                            _%e182945%_
                            'gx#import-set::t)))
                      (if _%$e182947%_
                          _%$e182947%_
                          (let ((_%$e182950%_
                                 (##structure-direct-instance-of?
                                  _%e182945%_
                                  'gx#module-import::t)))
                            (if _%$e182950%_
                                _%$e182950%_
                                (##structure-instance-of?
                                 _%e182945%_
                                 'gx#module-context::t))))))))
          (let ((_%rbody182943%_
                 (gx#core-expand-import/export
                  _%stx182931%_
                  _%expanded-import?182941%_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _%expand1182934%_)))
            (if _%internal-expand?182932%_
                (reverse _%rbody182943%_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_%import!182940%_ _%rbody182943%_))
                 (gx#stx-source _%stx182931%_)))))))
    (define gx#core-expand-import%__0
      (lambda (_%stx183270%_)
        (let ((_%internal-expand?183272%_ '#f))
          (gx#core-expand-import%__%
           _%stx183270%_
           _%internal-expand?183272%_))))
    (define gx#core-expand-import%
      (lambda _g185929_
        (let ((_g185930_ (##length _g185929_)))
          (cond ((##fx= _g185930_ 1)
                 (apply gx#core-expand-import%__0 _g185929_))
                ((##fx= _g185930_ 2)
                 (apply gx#core-expand-import%__% _g185929_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g185929_))))))
    (define gx#core-import-nested-module
      (lambda (_%spath182858%_ _%where182859%_)
        (let* ((_%e182860182867%_ _%spath182858%_)
               (_%E182862182871%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e182860182867%_)))
               (_%E182861182926%_
                (lambda ()
                  (if (gx#stx-pair? _%e182860182867%_)
                      (let ((_%e182863182875%_
                             (gx#syntax-e _%e182860182867%_)))
                        (let ((_%hd182864182878%_ (##car _%e182863182875%_))
                              (_%tl182865182880%_ (##cdr _%e182863182875%_)))
                          (let* ((_%origin182883%_ _%hd182864182878%_)
                                 (_%sub182885%_ _%tl182865182880%_)
                                 (_%origin-ctx182887%_
                                  (if (gx#stx-false? _%origin182883%_)
                                      (gx#current-expander-context)
                                      (gx#import-module__0 _%origin182883%_))))
                            (let _%lp182889%_ ((_%rest182891%_ _%sub182885%_)
                                               (_%ctx182892%_
                                                _%origin-ctx182887%_))
                              (let* ((_%e182893182900%_ _%rest182891%_)
                                     (_%E182895182904%_
                                      (lambda () _%ctx182892%_))
                                     (_%E182894182922%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%e182893182900%_)
                                            (let ((_%e182896182908%_
                                                   (gx#syntax-e
                                                    _%e182893182900%_)))
                                              (let ((_%hd182897182911%_
                                                     (##car _%e182896182908%_))
                                                    (_%tl182898182913%_
                                                     (##cdr _%e182896182908%_)))
                                                (let* ((_%id182916%_
                                                        _%hd182897182911%_)
                                                       (_%rest182918%_
                                                        _%tl182898182913%_)
                                                       (_%bind182920%_
                                                        (gx#resolve-identifier__%
                                                         _%id182916%_
                                                         '0
                                                         _%ctx182892%_)))
                                                  (if (and (##structure-direct-instance-of?
                                                            _%bind182920%_
                                                            'gx#syntax-binding::t)
                                                           (##structure-instance-of?
                                                            (##unchecked-structure-ref
                                                             _%bind182920%_
                                                             '5
                                                             '#f
                                                             '#f)
                                                            'gx#module-context::t))
                                                      '#!void
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; not bound as module"
                                                       _%where182859%_
                                                       _%spath182858%_
                                                       _%id182916%_))
                                                  (_%lp182889%_
                                                   _%rest182918%_
                                                   (##unchecked-structure-ref
                                                    _%bind182920%_
                                                    '5
                                                    '#f
                                                    '#f)))))
                                            (_%E182895182904%_)))))
                                (_%E182894182922%_))))))
                      (_%E182862182871%_)))))
          (_%E182861182926%_))))
    (define gx#core-expand-import-source
      (lambda (_%hd182856%_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _%hd182856%_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_%stx182351%_ _%internal-expand?182352%_)
        (letrec* ((_%make-export__185857185858%_
                   (lambda (_%bind182804%_
                            _%phi182805%_
                            _%ctx182806%_
                            _%name182807%_)
                     (let* ((_%key182809%_
                             (##unchecked-structure-ref
                              _%bind182804%_
                              '2
                              '#f
                              '#f))
                            (_%export-key182811%_
                             (if _%name182807%_
                                 (gx#core-identifier-key _%name182807%_)
                                 _%key182809%_)))
                       (##structure
                        gx#module-export::t
                        _%ctx182806%_
                        _%key182809%_
                        _%phi182805%_
                        _%export-key182811%_
                        (let ((_%$e182814%_
                               (##structure-instance-of?
                                _%bind182804%_
                                'gx#extern-binding::t)))
                          (if _%$e182814%_
                              _%$e182814%_
                              (##structure-direct-instance-of?
                               _%bind182804%_
                               'gx#import-binding::t)))))))
                  (_%make-export__0__185859185862%_
                   (lambda (_%bind182820%_)
                     (let* ((_%phi182822%_ (gx#current-export-expander-phi))
                            (_%ctx182824%_ (gx#current-expander-context))
                            (_%name182826%_ '#f))
                       (_%make-export__185857185858%_
                        _%bind182820%_
                        _%phi182822%_
                        _%ctx182824%_
                        _%name182826%_))))
                  (_%make-export__1__185860185863%_
                   (lambda (_%bind182828%_ _%phi182829%_)
                     (let* ((_%ctx182831%_ (gx#current-expander-context))
                            (_%name182833%_ '#f))
                       (_%make-export__185857185858%_
                        _%bind182828%_
                        _%phi182829%_
                        _%ctx182831%_
                        _%name182833%_))))
                  (_%make-export__2__185861185864%_
                   (lambda (_%bind182835%_ _%phi182836%_ _%ctx182837%_)
                     (let ((_%name182839%_ '#f))
                       (_%make-export__185857185858%_
                        _%bind182835%_
                        _%phi182836%_
                        _%ctx182837%_
                        _%name182839%_))))
                  (_%make-export182354%_
                   (lambda _g185931_
                     (let ((_g185932_ (##length _g185931_)))
                       (cond ((##fx= _g185932_ 1)
                              (apply _%make-export__0__185859185862%_
                                     _g185931_))
                             ((##fx= _g185932_ 2)
                              (apply _%make-export__1__185860185863%_
                                     _g185931_))
                             ((##fx= _g185932_ 3)
                              (apply _%make-export__2__185861185864%_
                                     _g185931_))
                             ((##fx= _g185932_ 4)
                              (apply _%make-export__185857185858%_ _g185931_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g185931_))))))
                  (_%expand1182355%_
                   (lambda (_%hd182509%_
                            _%K182510%_
                            _%rest182511%_
                            _%r182512%_)
                     (let* ((_%e182513182545%_ _%hd182509%_)
                            (_%E182540182549%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _%stx182351%_
                                _%hd182509%_)))
                            (_%E182530182633%_
                             (lambda ()
                               (if (gx#stx-pair? _%e182513182545%_)
                                   (let ((_%e182541182553%_
                                          (gx#syntax-e _%e182513182545%_)))
                                     (let ((_%hd182542182556%_
                                            (##car _%e182541182553%_))
                                           (_%tl182543182558%_
                                            (##cdr _%e182541182553%_)))
                                       (if (eq? (gx#stx-e _%hd182542182556%_)
                                                'import:)
                                           (let ((_%in182561%_
                                                  _%tl182543182558%_))
                                             (if (gx#stx-list? _%in182561%_)
                                                 (let _%lp182563%_ ((_%in-rest182565%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%in182561%_)
                            (_%r182566%_ _%r182512%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%e182567182574%_
                                                           _%in-rest182565%_)
                                                          (_%E182569182578%_
                                                           (lambda ()
                                                             (_%K182510%_
                                                              _%rest182511%_
                                                              _%r182566%_)))
                                                          (_%E182568182629%_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%e182567182574%_)
                         (let ((_%e182570182582%_
                                (gx#syntax-e _%e182567182574%_)))
                           (let ((_%hd182571182585%_ (##car _%e182570182582%_))
                                 (_%tl182572182587%_
                                  (##cdr _%e182570182582%_)))
                             (let* ((_%hd182590%_ _%hd182571182585%_)
                                    (_%in-rest182592%_ _%tl182572182587%_)
                                    (_%src182627%_
                                     (if (gx#core-bound-module? _%hd182590%_)
                                         (gx#syntax-local-e__0 _%hd182590%_)
                                         (if (gx#core-library-module-path?
                                              _%hd182590%_)
                                             (gx#import-module__0
                                              (gx#core-resolve-library-module-path
                                               _%hd182590%_))
                                             (if (gx#core-library-relative-module-path?
                                                  _%hd182590%_)
                                                 (gx#import-module__0
                                                  (gx#core-resolve-library-relative-module-path
                                                   _%hd182590%_))
                                                 (if (gx#stx-string?
                                                      _%hd182590%_)
                                                     (gx#import-module__0
                                                      (gx#core-resolve-module-path__%
                                                       _%hd182590%_
                                                       (gx#stx-source
                                                        _%stx182351%_)))
                                                     (let* ((_%e182598182605%_
                                                             _%hd182590%_)
                                                            (_%E182600182609%_
                                                             (lambda ()
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; illegal re-export"
                                                                _%stx182351%_
                                                                _%hd182590%_)))
                                                            (_%E182599182623%_
                                                             (lambda ()
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%e182598182605%_)
                           (let ((_%e182601182613%_
                                  (gx#syntax-e _%e182598182605%_)))
                             (let ((_%hd182602182616%_
                                    (##car _%e182601182613%_))
                                   (_%tl182603182618%_
                                    (##cdr _%e182601182613%_)))
                               (if (eq? (gx#stx-e _%hd182602182616%_) 'in:)
                                   (let ((_%spath182621%_ _%tl182603182618%_))
                                     (gx#core-import-nested-module
                                      _%spath182621%_
                                      _%stx182351%_))
                                   (_%E182600182609%_))))
                           (_%E182600182609%_)))))
               (_%E182599182623%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (_%lp182563%_
                                _%in-rest182592%_
                                (_%export-imports182356%_
                                 _%src182627%_
                                 _%r182566%_)))))
                         (_%E182569182578%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E182568182629%_)))
                                                 (_%E182540182549%_)))
                                           (_%E182540182549%_))))
                                   (_%E182540182549%_))))
                            (_%E182517182673%_
                             (lambda ()
                               (if (gx#stx-pair? _%e182513182545%_)
                                   (let ((_%e182531182637%_
                                          (gx#syntax-e _%e182513182545%_)))
                                     (let ((_%hd182532182640%_
                                            (##car _%e182531182637%_))
                                           (_%tl182533182642%_
                                            (##cdr _%e182531182637%_)))
                                       (if (eq? (gx#stx-e _%hd182532182640%_)
                                                'rename:)
                                           (if (gx#stx-pair?
                                                _%tl182533182642%_)
                                               (let ((_%e182534182645%_
                                                      (gx#syntax-e
                                                       _%tl182533182642%_)))
                                                 (let ((_%hd182535182648%_
                                                        (##car _%e182534182645%_))
                                                       (_%tl182536182650%_
                                                        (##cdr _%e182534182645%_)))
                                                   (let ((_%id182653%_
                                                          _%hd182535182648%_))
                                                     (if (gx#stx-pair?
                                                          _%tl182536182650%_)
                                                         (let ((_%e182537182655%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl182536182650%_)))
                   (let ((_%hd182538182658%_ (##car _%e182537182655%_))
                         (_%tl182539182660%_ (##cdr _%e182537182655%_)))
                     (let ((_%name182663%_ _%hd182538182658%_))
                       (if (gx#stx-null? _%tl182539182660%_)
                           (let* ((_%phi182665%_
                                   (gx#current-export-expander-phi))
                                  (_%$e182667%_
                                   (gx#core-resolve-identifier__1
                                    _%id182653%_
                                    _%phi182665%_)))
                             (if _%$e182667%_
                                 ((lambda (_%bind182670%_)
                                    (_%K182510%_
                                     _%rest182511%_
                                     (cons (_%make-export__185857185858%_
                                            _%bind182670%_
                                            _%phi182665%_
                                            (gx#current-expander-context)
                                            _%name182663%_)
                                           _%r182512%_)))
                                  _%$e182667%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Reference to unbound identifier"
                                  _%stx182351%_
                                  _%hd182509%_
                                  _%id182653%_)))
                           (_%E182530182633%_)))))
                 (_%E182530182633%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E182530182633%_))
                                           (_%E182530182633%_))))
                                   (_%E182530182633%_))))
                            (_%E182516182723%_
                             (lambda ()
                               (if (gx#stx-pair? _%e182513182545%_)
                                   (let ((_%e182518182677%_
                                          (gx#syntax-e _%e182513182545%_)))
                                     (let ((_%hd182519182680%_
                                            (##car _%e182518182677%_))
                                           (_%tl182520182682%_
                                            (##cdr _%e182518182677%_)))
                                       (if (eq? (gx#stx-e _%hd182519182680%_)
                                                'spec:)
                                           (if (gx#stx-pair?
                                                _%tl182520182682%_)
                                               (let ((_%e182521182685%_
                                                      (gx#syntax-e
                                                       _%tl182520182682%_)))
                                                 (let ((_%hd182522182688%_
                                                        (##car _%e182521182685%_))
                                                       (_%tl182523182690%_
                                                        (##cdr _%e182521182685%_)))
                                                   (let ((_%phi182693%_
                                                          _%hd182522182688%_))
                                                     (if (gx#stx-pair?
                                                          _%tl182523182690%_)
                                                         (let ((_%e182524182695%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl182523182690%_)))
                   (let ((_%hd182525182698%_ (##car _%e182524182695%_))
                         (_%tl182526182700%_ (##cdr _%e182524182695%_)))
                     (let ((_%id182703%_ _%hd182525182698%_))
                       (if (gx#stx-pair? _%tl182526182700%_)
                           (let ((_%e182527182705%_
                                  (gx#syntax-e _%tl182526182700%_)))
                             (let ((_%hd182528182708%_
                                    (##car _%e182527182705%_))
                                   (_%tl182529182710%_
                                    (##cdr _%e182527182705%_)))
                               (let ((_%name182713%_ _%hd182528182708%_))
                                 (if (gx#stx-null? _%tl182529182710%_)
                                     (if (and (gx#stx-fixnum? _%phi182693%_)
                                              (gx#identifier? _%id182703%_)
                                              (gx#identifier? _%name182713%_))
                                         (let* ((_%phi182715%_
                                                 (gx#stx-e _%phi182693%_))
                                                (_%$e182717%_
                                                 (gx#core-resolve-identifier__1
                                                  _%id182703%_
                                                  _%phi182715%_)))
                                           (if _%$e182717%_
                                               ((lambda (_%bind182720%_)
                                                  (_%K182510%_
                                                   _%rest182511%_
                                                   (cons (_%make-export__185857185858%_
                                                          _%bind182720%_
                                                          _%phi182715%_
                                                          (gx#current-expander-context)
                                                          _%name182713%_)
                                                         _%r182512%_)))
                                                _%$e182717%_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _%stx182351%_
                                                _%hd182509%_
                                                _%id182703%_)))
                                         (_%E182517182673%_))
                                     (_%E182517182673%_)))))
                           (_%E182517182673%_)))))
                 (_%E182517182673%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E182517182673%_))
                                           (_%E182517182673%_))))
                                   (_%E182517182673%_))))
                            (_%E182515182735%_
                             (lambda ()
                               (let ((_%id182727%_ _%e182513182545%_))
                                 (if (gx#identifier? _%id182727%_)
                                     (let ((_%$e182729%_
                                            (gx#core-resolve-identifier__1
                                             _%id182727%_
                                             (gx#current-export-expander-phi))))
                                       (if _%$e182729%_
                                           ((lambda (_%bind182732%_)
                                              (_%K182510%_
                                               _%rest182511%_
                                               (cons (_%make-export__0__185859185862%_
                                                      _%bind182732%_)
                                                     _%r182512%_)))
                                            _%$e182729%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _%stx182351%_
                                            _%hd182509%_)))
                                     (_%E182516182723%_)))))
                            (_%E182514182799%_
                             (lambda ()
                               (if (eq? (gx#stx-e _%e182513182545%_) '#t)
                                   (let* ((_%current-ctx182739%_
                                           (gx#current-expander-context))
                                          (_%current-phi182741%_
                                           (gx#current-export-expander-phi))
                                          (_%phi-ctx182743%_
                                           (gx#core-context-shift
                                            _%current-ctx182739%_
                                            _%current-phi182741%_))
                                          (_%phi-bind182745%_
                                           (hash->list
                                            (##unchecked-structure-ref
                                             _%phi-ctx182743%_
                                             '2
                                             '#f
                                             '#f))))
                                     (let _%lp182748%_ ((_%bind-rest182750%_
                                                         _%phi-bind182745%_)
                                                        (_%set182751%_ '()))
                                       (let* ((_%bind-rest182752182762%_
                                               _%bind-rest182750%_)
                                              (_%else182754182770%_
                                               (lambda ()
                                                 (_%K182510%_
                                                  _%rest182511%_
                                                  (cons (##structure
                                                         gx#export-set::t
                                                         '#f
                                                         _%current-phi182741%_
                                                         _%set182751%_)
                                                        _%r182512%_))))
                                              (_%K182756182780%_
                                               (lambda (_%bind-rest182773%_
                                                        _%bind182774%_
                                                        _%key182775%_)
                                                 (if (or (##structure-direct-instance-of?
                                                          _%bind182774%_
                                                          'gx#import-binding::t)
                                                         (gx#private-feature-binding?
                                                          _%bind182774%_))
                                                     (_%lp182748%_
                                                      _%bind-rest182773%_
                                                      _%set182751%_)
                                                     (_%lp182748%_
                                                      _%bind-rest182773%_
                                                      (cons (_%make-export__2__185861185864%_
                                                             _%bind182774%_
                                                             _%current-phi182741%_
                                                             _%current-ctx182739%_)
                                                            _%set182751%_))))))
                                         (if (pair? _%bind-rest182752182762%_)
                                             (let ((_%hd182757182783%_
                                                    (##car _%bind-rest182752182762%_))
                                                   (_%tl182758182785%_
                                                    (##cdr _%bind-rest182752182762%_)))
                                               (if (pair? _%hd182757182783%_)
                                                   (let ((_%hd182759182788%_
                                                          (##car _%hd182757182783%_))
                                                         (_%tl182760182790%_
                                                          (##cdr _%hd182757182783%_)))
                                                     (let* ((_%key182793%_
                                                             _%hd182759182788%_)
                                                            (_%bind182795%_
                                                             _%tl182760182790%_)
                                                            (_%bind-rest182797%_
                                                             _%tl182758182785%_))
                                                       (_%K182756182780%_
                                                        _%bind-rest182797%_
                                                        _%bind182795%_
                                                        _%key182793%_)))
                                                   (_%else182754182770%_)))
                                             (_%else182754182770%_)))))
                                   (_%E182515182735%_)))))
                       (_%E182514182799%_))))
                  (_%export-imports182356%_
                   (lambda (_%src182386%_ _%r182387%_)
                     (letrec* ((_%current-ctx182389%_
                                (gx#current-expander-context))
                               (_%current-phi182390%_
                                (gx#current-export-expander-phi))
                               (_%import->export182391%_
                                (lambda (_%in182472%_)
                                  (let* ((_%in182473182481%_ _%in182472%_)
                                         (_%E182475182484%_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _%in182473182481%_
                                                   '((module-import
                                                      out
                                                      key
                                                      phi)))
                                            '#!void))
                                         (_%K182476182491%_
                                          (lambda (_%phi182487%_
                                                   _%key182488%_
                                                   _%out182489%_)
                                            (##structure
                                             gx#module-export::t
                                             _%current-ctx182389%_
                                             _%key182488%_
                                             _%phi182487%_
                                             _%key182488%_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _%in182473182481%_
                                         'gx#module-import::t)
                                        (let* ((_%e182477182494%_
                                                (##unchecked-structure-ref
                                                 _%in182473182481%_
                                                 '1
                                                 '#f
                                                 '#f))
                                               (_%out182497%_
                                                _%e182477182494%_)
                                               (_%e182478182499%_
                                                (##unchecked-structure-ref
                                                 _%in182473182481%_
                                                 '2
                                                 '#f
                                                 '#f))
                                               (_%key182502%_
                                                _%e182478182499%_)
                                               (_%e182479182504%_
                                                (##unchecked-structure-ref
                                                 _%in182473182481%_
                                                 '3
                                                 '#f
                                                 '#f))
                                               (_%phi182507%_
                                                _%e182479182504%_))
                                          (_%K182476182491%_
                                           _%phi182507%_
                                           _%key182502%_
                                           _%out182497%_))
                                        (_%E182475182484%_)))))
                               (_%fold-e182392%_
                                (lambda (_%in182394%_ _%r182395%_)
                                  (let* ((_%in182396182410%_ _%in182394%_)
                                         (_%else182399182418%_
                                          (lambda () _%r182395%_)))
                                    (let ((_%K182405182454%_
                                           (lambda (_%phi182450%_
                                                    _%key182451%_
                                                    _%out182452%_)
                                             (if (and (fx= _%phi182450%_
                                                           _%current-phi182390%_)
                                                      (eq? _%src182386%_
                                                           (##unchecked-structure-ref
                                                            _%out182452%_
                                                            '1
                                                            '#f
                                                            '#f)))
                                                 (cons (_%import->export182391%_
                                                        _%in182394%_)
                                                       _%r182395%_)
                                                 _%r182395%_)))
                                          (_%K182401182429%_
                                           (lambda (_%imports182422%_
                                                    _%phi182423%_
                                                    _%ctx182424%_)
                                             (if (and (fx= _%phi182423%_
                                                           _%current-phi182390%_)
                                                      (eq? _%src182386%_
                                                           _%ctx182424%_))
                                                 (foldl__0
                                                  (lambda (_%in182426%_
                                                           _%r182427%_)
                                                    (cons (_%import->export182391%_
                                                           _%in182426%_)
                                                          _%r182427%_))
                                                  _%r182395%_
                                                  _%imports182422%_)
                                                 _%r182395%_))))
                                      (let ((_%try-match182398182447%_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _%in182396182410%_
                                                    'gx#import-set::t)
                                                   (let* ((_%e182402182432%_
                                                           (##unchecked-structure-ref
                                                            _%in182396182410%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                          (_%e182403182437%_
                                                           (##unchecked-structure-ref
                                                            _%in182396182410%_
                                                            '2
                                                            '#f
                                                            '#f))
                                                          (_%e182404182442%_
                                                           (##unchecked-structure-ref
                                                            _%in182396182410%_
                                                            '3
                                                            '#f
                                                            '#f)))
                                                     (let ((_%ctx182435%_
                                                            _%e182402182432%_)
                                                           (_%phi182440%_
                                                            _%e182403182437%_)
                                                           (_%imports182445%_
                                                            _%e182404182442%_))
                                                       (_%K182401182429%_
                                                        _%imports182445%_
                                                        _%phi182440%_
                                                        _%ctx182435%_)))
                                                   (_%else182399182418%_)))))
                                        (if (##structure-direct-instance-of?
                                             _%in182396182410%_
                                             'gx#module-import::t)
                                            (let* ((_%e182406182457%_
                                                    (##unchecked-structure-ref
                                                     _%in182396182410%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                   (_%e182407182462%_
                                                    (##unchecked-structure-ref
                                                     _%in182396182410%_
                                                     '2
                                                     '#f
                                                     '#f))
                                                   (_%e182408182467%_
                                                    (##unchecked-structure-ref
                                                     _%in182396182410%_
                                                     '3
                                                     '#f
                                                     '#f)))
                                              (let ((_%out182460%_
                                                     _%e182406182457%_)
                                                    (_%key182465%_
                                                     _%e182407182462%_)
                                                    (_%phi182470%_
                                                     _%e182408182467%_))
                                                (_%K182405182454%_
                                                 _%phi182470%_
                                                 _%key182465%_
                                                 _%out182460%_)))
                                            (_%try-match182398182447%_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _%src182386%_
                              _%current-phi182390%_
                              (foldl__0
                               _%fold-e182392%_
                               '()
                               (##unchecked-structure-ref
                                _%current-ctx182389%_
                                '8
                                '#f
                                '#f)))
                             _%r182387%_))))
                  (_%export!182357%_
                   (lambda (_%rbody182373%_)
                     (letrec* ((_%current-ctx182375%_
                                (gx#current-expander-context))
                               (_%fold-e182376%_
                                (lambda (_%out182380%_ _%r182381%_)
                                  (if (##structure-direct-instance-of?
                                       _%out182380%_
                                       'gx#module-export::t)
                                      (cons _%out182380%_ _%r182381%_)
                                      (if (##structure-direct-instance-of?
                                           _%out182380%_
                                           'gx#export-set::t)
                                          (foldl__0
                                           cons
                                           _%r182381%_
                                           (##unchecked-structure-ref
                                            _%out182380%_
                                            '3
                                            '#f
                                            '#f))
                                          _%r182381%_)))))
                       (let ((_%body182378%_ (reverse _%rbody182373%_)))
                         (##unchecked-structure-set!
                          _%current-ctx182375%_
                          (foldl__0
                           _%fold-e182376%_
                           (##unchecked-structure-ref
                            _%current-ctx182375%_
                            '9
                            '#f
                            '#f)
                           _%body182378%_)
                          '9
                          '#f
                          '#f)
                         _%body182378%_))))
                  (_%expanded-export?182358%_
                   (lambda (_%e182368%_)
                     (let ((_%$e182370%_
                            (##structure-direct-instance-of?
                             _%e182368%_
                             'gx#module-export::t)))
                       (if _%$e182370%_
                           _%$e182370%_
                           (##structure-direct-instance-of?
                            _%e182368%_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _%internal-expand?182352%_)
              (let ((_%rbody182364%_
                     (gx#core-expand-import/export
                      _%stx182351%_
                      _%expanded-export?182358%_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _%expand1182355%_)))
                (if _%internal-expand?182352%_
                    (reverse _%rbody182364%_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons
                      '%#export
                      (_%export!182357%_ _%rbody182364%_))
                     (gx#stx-source _%stx182351%_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _%stx182351%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _%stx182351%_))))))
    (define gx#core-expand-export%__0
      (lambda (_%stx182849%_)
        (let ((_%internal-expand?182851%_ '#f))
          (gx#core-expand-export%__%
           _%stx182849%_
           _%internal-expand?182851%_))))
    (define gx#core-expand-export%
      (lambda _g185933_
        (let ((_g185934_ (##length _g185933_)))
          (cond ((##fx= _g185934_ 1)
                 (apply gx#core-expand-export%__0 _g185933_))
                ((##fx= _g185934_ 2)
                 (apply gx#core-expand-export%__% _g185933_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g185933_))))))
    (define gx#core-expand-export-source
      (lambda (_%hd182348%_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _%hd182348%_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_%stx182318%_)
        (let* ((_%e182319182326%_ _%stx182318%_)
               (_%E182321182330%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e182319182326%_)))
               (_%E182320182344%_
                (lambda ()
                  (if (gx#stx-pair? _%e182319182326%_)
                      (let ((_%e182322182334%_
                             (gx#syntax-e _%e182319182326%_)))
                        (let ((_%hd182323182337%_ (##car _%e182322182334%_))
                              (_%tl182324182339%_ (##cdr _%e182322182334%_)))
                          (let ((_%body182342%_ _%tl182324182339%_))
                            (if (gx#identifier-list? _%body182342%_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _%body182342%_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _%body182342%_))
                                   (gx#stx-source _%stx182318%_)))
                                (_%E182321182330%_)))))
                      (_%E182321182330%_)))))
          (_%E182320182344%_))))
    (define gx#core-bind-feature!__%
      (lambda (_%id182284%_ _%private?182285%_ _%phi182286%_ _%ctx182287%_)
        (gx#core-bind-syntax!__%
         _%id182284%_
         ((if _%private?182285%_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _%id182284%_))
         _%private?182285%_
         _%phi182286%_
         _%ctx182287%_)))
    (define gx#core-bind-feature!__0
      (lambda (_%id182292%_)
        (let* ((_%private?182294%_ '#f)
               (_%phi182296%_ (gx#current-expander-phi))
               (_%ctx182298%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id182292%_
           _%private?182294%_
           _%phi182296%_
           _%ctx182298%_))))
    (define gx#core-bind-feature!__1
      (lambda (_%id182300%_ _%private?182301%_)
        (let* ((_%phi182303%_ (gx#current-expander-phi))
               (_%ctx182305%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id182300%_
           _%private?182301%_
           _%phi182303%_
           _%ctx182305%_))))
    (define gx#core-bind-feature!__2
      (lambda (_%id182307%_ _%private?182308%_ _%phi182309%_)
        (let ((_%ctx182311%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id182307%_
           _%private?182308%_
           _%phi182309%_
           _%ctx182311%_))))
    (define gx#core-bind-feature!
      (lambda _g185935_
        (let ((_g185936_ (##length _g185935_)))
          (cond ((##fx= _g185936_ 1)
                 (apply gx#core-bind-feature!__0 _g185935_))
                ((##fx= _g185936_ 2)
                 (apply gx#core-bind-feature!__1 _g185935_))
                ((##fx= _g185936_ 3)
                 (apply gx#core-bind-feature!__2 _g185935_))
                ((##fx= _g185936_ 4)
                 (apply gx#core-bind-feature!__% _g185935_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g185935_))))))))
