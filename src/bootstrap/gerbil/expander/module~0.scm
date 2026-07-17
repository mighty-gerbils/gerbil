(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1784471383)
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
      (lambda _%$args194854%_
        (apply make-instance gx#module-import::t _%$args194854%_)))
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
      (lambda _%$args194851%_
        (apply make-instance gx#module-export::t _%$args194851%_)))
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
      (lambda _%$args194848%_
        (apply make-instance gx#import-set::t _%$args194848%_)))
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
      (lambda _%$args194845%_
        (apply make-instance gx#export-set::t _%$args194845%_)))
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
      (lambda _%$args194842%_
        (apply make-instance gx#import-expander::t _%$args194842%_)))
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
      (lambda _%$args194839%_
        (apply make-instance gx#export-expander::t _%$args194839%_)))
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
      (lambda _%$args194836%_
        (apply make-instance gx#import-export-expander::t _%$args194836%_)))
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
      (lambda (_%path194833%_ _%fun194834%_)
        (call-with-input-file
         (cons 'path: (cons _%path194833%_ gx#source-file-settings))
         _%fun194834%_)))
    (define gx#module-context:::init!
      (lambda (_%self194816%_
               _%id194817%_
               _%super194818%_
               _%ns194819%_
               _%path194820%_)
        (let ((_%self194823%_ _%self194816%_))
          (if (##fx< '11 (##structure-length _%self194823%_))
              (begin
                (##unchecked-structure-set!
                 _%self194823%_
                 _%id194817%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self194823%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self194823%_
                 _%super194818%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self194823%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self194823%_ '#f '5 '#f '#f)
                (##unchecked-structure-set!
                 _%self194823%_
                 _%ns194819%_
                 '6
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self194823%_
                 _%path194820%_
                 '7
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self194823%_ '() '8 '#f '#f)
                (##unchecked-structure-set! _%self194823%_ '() '9 '#f '#f)
                (##unchecked-structure-set! _%self194823%_ '#f '10 '#f '#f)
                (##unchecked-structure-set! _%self194823%_ '#f '11 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self194823%_
                     '11
                     (##structure-length _%self194823%_))))))
    (__bind-method!__%
     gx#module-context::t
     ':init!
     gx#module-context:::init!
     '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_%self194649%_ _%ctx194650%_ _%root194651%_)
        (let* ((_%self194654%_ _%self194649%_)
               (_%super194670%_
                (let ((_%$e194664%_ _%root194651%_))
                  (if _%$e194664%_
                      _%$e194664%_
                      (let ((_%$e194667%_ (gx#core-context-root__0)))
                        (if _%$e194667%_
                            _%$e194667%_
                            (let ((__obj194898
                                   (##structure gx#root-context::t '#f '#f)))
                              (let ((__constructor194899
                                     (direct-method-ref
                                      gx#root-context::t
                                      __obj194898
                                      ':init!)))
                                (if __constructor194899
                                    (__constructor194899 __obj194898)
                                    (error '"missing constructor method implementation"
                                           'class:
                                           gx#root-context::t
                                           'method:
                                           ':init!)))
                              __obj194898)))))))
          (if _%ctx194650%_
              (let ((_%id194673%_
                     (##structure-ref
                      _%ctx194650%_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_%path194674%_
                     (##structure-ref
                      _%ctx194650%_
                      '7
                      gx#module-context::t
                      '#f))
                    (_%in194675%_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _%ctx194650%_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_%e194676%_
                     (__make-atomic-promise
                      (lambda () (gx#eval-module _%ctx194650%_)))))
                (if (##fx< '8 (##structure-length _%self194654%_))
                    (begin
                      (##unchecked-structure-set!
                       _%self194654%_
                       _%id194673%_
                       '1
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self194654%_
                       (make-hash-table-eq 'size: (##length _%in194675%_))
                       '2
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self194654%_
                       _%super194670%_
                       '3
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self194654%_
                       '#f
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self194654%_
                       '#f
                       '5
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self194654%_
                       _%path194674%_
                       '6
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self194654%_
                       _%in194675%_
                       '7
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self194654%_
                       _%e194676%_
                       '8
                       '#f
                       '#f)
                      '#!void)
                    (error '"struct-instance-init!: too many arguments for struct"
                           _%self194654%_
                           '8
                           (##structure-length _%self194654%_)))
                (##for-each
                 (lambda (_%$%g194677194679%_)
                   (gx#core-bind-weak-import!__%
                    _%$%g194677194679%_
                    _%self194654%_))
                 _%in194675%_))
              (if (##fx< '8 (##structure-length _%self194654%_))
                  (begin
                    (##unchecked-structure-set! _%self194654%_ '#f '1 '#f '#f)
                    (##unchecked-structure-set!
                     _%self194654%_
                     (make-hash-table-eq)
                     '2
                     '#f
                     '#f)
                    (##unchecked-structure-set!
                     _%self194654%_
                     _%super194670%_
                     '3
                     '#f
                     '#f)
                    (##unchecked-structure-set! _%self194654%_ '#f '4 '#f '#f)
                    (##unchecked-structure-set! _%self194654%_ '#f '5 '#f '#f)
                    (##unchecked-structure-set! _%self194654%_ '#f '6 '#f '#f)
                    (##unchecked-structure-set! _%self194654%_ '() '7 '#f '#f)
                    (##unchecked-structure-set! _%self194654%_ '#f '8 '#f '#f)
                    '#!void)
                  (error '"struct-instance-init!: too many arguments for struct"
                         _%self194654%_
                         '8
                         (##structure-length _%self194654%_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_%self194685%_ _%ctx194686%_)
        (let ((_%root194688%_ '#f))
          (gx#prelude-context:::init!__%
           _%self194685%_
           _%ctx194686%_
           _%root194688%_))))
    (define gx#prelude-context:::init!
      (lambda _g194905_
        (let ((_g194906_ (##length _g194905_)))
          (cond ((##fx= _g194906_ 2)
                 (apply gx#prelude-context:::init!__0 _g194905_))
                ((##fx= _g194906_ 3)
                 (apply gx#prelude-context:::init!__% _g194905_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g194905_))))))
    (__bind-method!__%
     gx#prelude-context::t
     ':init!
     gx#prelude-context:::init!
     '#f)
    (define gx#import-export-expander-init!
      (lambda (_%self194523%_ _%e194524%_)
        (if (##fx< '3 (##structure-length _%self194523%_))
            (begin
              (##unchecked-structure-set!
               _%self194523%_
               _%e194524%_
               '1
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self194523%_
               (gx#current-expander-context)
               '2
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self194523%_
               (##fx- (gx#current-expander-phi) '1)
               '3
               '#f
               '#f)
              '#!void)
            (error '"struct-instance-init!: too many arguments for struct"
                   _%self194523%_
                   '3
                   (##structure-length _%self194523%_)))))
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
      (lambda (_%$%g194149194152%_ _%$%g194150194154%_)
        (gx#core-apply-user-expander__%
         _%$%g194149194152%_
         _%$%g194150194154%_
         'apply-import-expander)))
    (__bind-method!__%
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_%$%g194020194023%_ _%$%g194021194025%_)
        (gx#core-apply-user-expander__%
         _%$%g194020194023%_
         _%$%g194021194025%_
         'apply-export-expander)))
    (__bind-method!__%
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_%ctx193891%_)
        (let* ((_%path193893%_
                (##structure-ref _%ctx193891%_ '7 gx#module-context::t '#f))
               (_%path193895%_
                (if (pair? _%path193893%_)
                    (##last _%path193893%_)
                    _%path193893%_)))
          (if (string? _%path193895%_) _%path193895%_ '#f))))
    (define gx#import-module__%
      (lambda (_%path193867%_ _%reload?193868%_ _%eval?193869%_)
        (let ((_%ctx193871%_
               ((gx#current-expander-module-import)
                _%path193867%_
                _%reload?193868%_)))
          (if (and _%ctx193871%_ _%eval?193869%_)
              (gx#eval-module _%ctx193871%_)
              '#!void)
          _%ctx193871%_)))
    (define gx#import-module__0
      (lambda (_%path193876%_)
        (let* ((_%reload?193878%_ '#f) (_%eval?193880%_ '#f))
          (gx#import-module__%
           _%path193876%_
           _%reload?193878%_
           _%eval?193880%_))))
    (define gx#import-module__1
      (lambda (_%path193882%_ _%reload?193883%_)
        (let ((_%eval?193885%_ '#f))
          (gx#import-module__%
           _%path193882%_
           _%reload?193883%_
           _%eval?193885%_))))
    (define gx#import-module
      (lambda _g194907_
        (let ((_g194908_ (##length _g194907_)))
          (cond ((##fx= _g194908_ 1) (apply gx#import-module__0 _g194907_))
                ((##fx= _g194908_ 2) (apply gx#import-module__1 _g194907_))
                ((##fx= _g194908_ 3) (apply gx#import-module__% _g194907_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g194907_))))))
    (define gx#eval-module
      (lambda (_%mod193864%_)
        ((gx#current-expander-module-eval) _%mod193864%_)))
    (define gx#core-eval-module
      (lambda (_%obj193843%_)
        (letrec ((_%force-e193845%_
                  (lambda (_%getf193859%_ _%e193860%_)
                    (call-with-parameters__1
                     (lambda ()
                       (call-with-parameters__1
                        (lambda () (force (_%getf193859%_ _%e193860%_)))
                        gx#current-expander-phi
                        '0))
                     gx#current-expander-context
                     _%e193860%_))))
          (let _%recur193847%_ ((_%e193849%_ _%obj193843%_))
            (if (##structure-instance-of? _%e193849%_ 'gx#module-context::t)
                (let ()
                  (let ((_%$e193852%_
                         (gx#core-context-prelude__% _%e193849%_)))
                    (if _%$e193852%_ (_%recur193847%_ _%$e193852%_) '#!void))
                  (_%force-e193845%_ gx#module-context-e _%e193849%_))
                (if (##structure-instance-of?
                     _%e193849%_
                     'gx#prelude-context::t)
                    (_%force-e193845%_ gx#prelude-context-e _%e193849%_)
                    (if (gx#stx-string? _%e193849%_)
                        (_%recur193847%_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _%e193849%_)))
                        (if (gx#core-library-module-path? _%e193849%_)
                            (_%recur193847%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%e193849%_)))
                            (error '"cannot eval module" _%obj193843%_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_%ctx193823%_)
        (let _%lp193825%_ ((_%e193827%_ _%ctx193823%_))
          (if (or (##structure-instance-of? _%e193827%_ 'gx#module-context::t)
                  (##structure-instance-of? _%e193827%_ 'gx#local-context::t))
              (_%lp193825%_ (##unchecked-structure-ref _%e193827%_ '3 '#f '#f))
              (if (##structure-instance-of? _%e193827%_ 'gx#prelude-context::t)
                  _%e193827%_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_%ctx193839%_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _%ctx193839%_))))
    (define gx#core-context-prelude
      (lambda _g194909_
        (let ((_g194910_ (##length _g194909_)))
          (cond ((##fx= _g194910_ 0)
                 (apply gx#core-context-prelude__0 _g194909_))
                ((##fx= _g194910_ 1)
                 (apply gx#core-context-prelude__% _g194909_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g194909_))))))
    (define gx#core-module->prelude-context
      (lambda (_%ctx193814%_)
        (let ((_%$e193816%_ (__hash-get gx#__module-registry _%ctx193814%_)))
          (if _%$e193816%_
              _%$e193816%_
              (let ((_%pre193820%_
                     (let ((__obj194900
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
                        __obj194900
                        _%ctx193814%_)
                       __obj194900)))
                (__hash-put! gx#__module-registry _%ctx193814%_ _%pre193820%_)
                _%pre193820%_)))))
    (define gx#core-import-module__%
      (lambda (_%rpath193682%_ _%reload?193683%_)
        (letrec ((_%import-source193685%_
                  (lambda (_%path193773%_)
                    (if (member _%path193773%_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _%path193773%_)
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
                                      (let ((_g194911_
                                             (gx#core-read-module
                                              _%path193773%_)))
                                        (begin
                                          (let ((_g194912_
                                                 (if (##values? _g194911_)
                                                     (##values-length
                                                      _g194911_)
                                                     1)))
                                            (if (not (##fx= _g194912_ 4))
                                                (error "Context expects 4 values"
                                                       _g194912_)))
                                          (let ((_%pre193781%_
                                                 (##values-ref _g194911_ 0))
                                                (_%id193782%_
                                                 (##values-ref _g194911_ 1))
                                                (_%ns193783%_
                                                 (##values-ref _g194911_ 2))
                                                (_%body193784%_
                                                 (##values-ref _g194911_ 3)))
                                            (let* ((_%prelude193794%_
                                                    (if (##structure-instance-of?
                                                         _%pre193781%_
                                                         'gx#prelude-context::t)
                                                        _%pre193781%_
                                                        (if (##structure-instance-of?
                                                             _%pre193781%_
                                                             'gx#module-context::t)
                                                            (gx#core-module->prelude-context
                                                             _%pre193781%_)
                                                            (if (string? _%pre193781%_)
                                                                (gx#core-module->prelude-context
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#core-import-module__0 _%pre193781%_))
                        (if (not _%pre193781%_)
                            (let ((_%$e193790%_
                                   (gx#current-expander-module-prelude)))
                              (if _%$e193790%_
                                  _%$e193790%_
                                  (let ((__obj194901
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
                                     __obj194901
                                     '#f)
                                    __obj194901)))
                            (error '"cannot import module; unknown prelude"
                                   _%rpath193682%_
                                   _%pre193781%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%ctx193796%_
                                                    (let ((__obj194902
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
                                                       __obj194902
                                                       _%id193782%_
                                                       _%prelude193794%_
                                                       _%ns193783%_
                                                       _%path193773%_)
                                                      __obj194902))
                                                   (_%body193798%_
                                                    (gx#core-expand-module-begin
                                                     _%body193784%_
                                                     _%ctx193796%_))
                                                   (_%body193800%_
                                                    (gx#core-quote-syntax__%
                                                     (gx#core-cons
                                                      '%#begin
                                                      _%body193798%_)
                                                     _%path193773%_
                                                     _%ctx193796%_
                                                     '())))
                                              (##unchecked-structure-set!
                                               _%ctx193796%_
                                               (__make-atomic-promise
                                                (lambda ()
                                                  (gx#eval-syntax*
                                                   _%body193800%_)))
                                               '10
                                               '#f
                                               '#f)
                                              (##unchecked-structure-set!
                                               _%ctx193796%_
                                               _%body193800%_
                                               '11
                                               '#f
                                               '#f)
                                              (__hash-put!
                                               gx#__module-registry
                                               _%path193773%_
                                               _%ctx193796%_)
                                              (__hash-put!
                                               gx#__module-registry
                                               _%id193782%_
                                               _%ctx193796%_)
                                              _%ctx193796%_)))))
                                    gx#current-export-expander-phi
                                    '#f))
                                 gx#current-import-expander-phi
                                 '#f))
                              gx#current-expander-path
                              (cons _%path193773%_
                                    (gx#current-expander-path))))
                           gx#current-expander-phi
                           '0))
                        gx#current-expander-marks
                        '()))
                     gx#current-expander-context
                     (gx#core-context-root__0))))
                 (_%import-submodule193686%_
                  (lambda (_%rpath193702%_)
                    (let* ((_%$%rpath193703193710%_ _%rpath193702%_)
                           (_%$%E193705193713%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%$%rpath193703193710%_
                                     '([origin . refs]))
                              '#!void))
                           (_%$%K193706193761%_
                            (lambda (_%refs193716%_ _%origin193717%_)
                              (let ((_%ctx193719%_
                                     (if _%origin193717%_
                                         (gx#core-import-module__%
                                          _%origin193717%_
                                          _%reload?193683%_)
                                         (gx#current-expander-context))))
                                (let _%lp193721%_ ((_%rest193723%_
                                                    _%refs193716%_)
                                                   (_%ctx193724%_
                                                    _%ctx193719%_))
                                  (let* ((_%$%rest193725193733%_
                                          _%rest193723%_)
                                         (_%$%else193727193741%_
                                          (lambda () _%ctx193724%_))
                                         (_%$%K193729193749%_
                                          (lambda (_%rest193744%_ _%id193745%_)
                                            (let ((_%bind193747%_
                                                   (gx#resolve-identifier__%
                                                    _%id193745%_
                                                    '0
                                                    _%ctx193724%_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _%bind193747%_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _%bind193747%_
                                                         '5
                                                         '#f
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_%lp193721%_
                                                   _%rest193744%_
                                                   (##unchecked-structure-ref
                                                    _%bind193747%_
                                                    '5
                                                    '#f
                                                    '#f))
                                                  (error '"cannot import submodule; not bound as a module"
                                                         _%rpath193702%_
                                                         _%id193745%_
                                                         _%bind193747%_))))))
                                    (if (pair? _%$%rest193725193733%_)
                                        (let ((_%$%hd193730193752%_
                                               (##car _%$%rest193725193733%_))
                                              (_%$%tl193731193754%_
                                               (##cdr _%$%rest193725193733%_)))
                                          (let* ((_%id193757%_
                                                  _%$%hd193730193752%_)
                                                 (_%rest193759%_
                                                  _%$%tl193731193754%_))
                                            (_%$%K193729193749%_
                                             _%rest193759%_
                                             _%id193757%_)))
                                        (_%$%else193727193741%_))))))))
                      (if (pair? _%$%rpath193703193710%_)
                          (let ((_%$%hd193707193764%_
                                 (##car _%$%rpath193703193710%_))
                                (_%$%tl193708193766%_
                                 (##cdr _%$%rpath193703193710%_)))
                            (let* ((_%origin193769%_ _%$%hd193707193764%_)
                                   (_%refs193771%_ _%$%tl193708193766%_))
                              (_%$%K193706193761%_
                               _%refs193771%_
                               _%origin193769%_)))
                          (_%$%E193705193713%_))))))
          (let ((_%$e193688%_
                 (if (not _%reload?193683%_)
                     (__hash-get gx#__module-registry _%rpath193682%_)
                     '#f)))
            (if _%$e193688%_
                _%$e193688%_
                (if (list? _%rpath193682%_)
                    (_%import-submodule193686%_ _%rpath193682%_)
                    (if (gx#core-library-module-path? _%rpath193682%_)
                        (let ((_%ctx193693%_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _%rpath193682%_)
                                _%reload?193683%_)))
                          (__hash-put!
                           gx#__module-registry
                           _%rpath193682%_
                           _%ctx193693%_)
                          _%ctx193693%_)
                        (let* ((_%npath193696%_
                                (path-normalize _%rpath193682%_))
                               (_%$e193698%_
                                (if (not _%reload?193683%_)
                                    (__hash-get
                                     gx#__module-registry
                                     _%npath193696%_)
                                    '#f)))
                          (if _%$e193698%_
                              _%$e193698%_
                              (_%import-source193685%_
                               _%npath193696%_))))))))))
    (define gx#core-import-module__0
      (lambda (_%rpath193807%_)
        (let ((_%reload?193809%_ '#f))
          (gx#core-import-module__% _%rpath193807%_ _%reload?193809%_))))
    (define gx#core-import-module
      (lambda _g194913_
        (let ((_g194914_ (##length _g194913_)))
          (cond ((##fx= _g194914_ 1)
                 (apply gx#core-import-module__0 _g194913_))
                ((##fx= _g194914_ 2)
                 (apply gx#core-import-module__% _g194913_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g194913_))))))
    (define gx#core-read-module
      (lambda (_%path193664%_)
        (__with-catch
         (lambda (_%exn193666%_)
           (if (datum-parsing-exception? _%exn193666%_)
               (let ((_%pos193668%_
                      (datum-parsing-exception-filepos _%exn193666%_)))
                 (if (= _%pos193668%_ '0)
                     (gx#core-read-module/lang _%path193664%_)
                     (gx#raise-syntax-error
                      'read-module
                      '"error reading module"
                      _%path193664%_
                      (call-with-parameters__1
                       (lambda ()
                         (call-with-output-string
                          '""
                          (lambda (_%$%g193670193672%_)
                            (display-exception__%
                             _%exn193666%_
                             _%$%g193670193672%_))))
                       dump-stack-trace?
                       '#f)
                      (cons 'line:
                            (cons (##filepos-line _%pos193668%_)
                                  (cons 'col:
                                        (cons (##filepos-col _%pos193668%_)
                                              '())))))))
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _%path193664%_
                (call-with-parameters__1
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_%$%g193675193677%_)
                      (display-exception__%
                       _%exn193666%_
                       _%$%g193675193677%_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _%path193664%_)))))
    (define gx#core-read-module/sexp
      (lambda (_%path193516%_)
        (let _%lp193518%_ ((_%body193520%_
                            (read-syntax-from-file _%path193516%_))
                           (_%pre193521%_ '#f)
                           (_%ns193522%_ '#f)
                           (_%pkg193523%_ '#f))
          (let* ((_%$%e193524193548%_ _%body193520%_)
                 (_%$%E193540193574%_
                  (lambda ()
                    (let ((_g194915_
                           (if _%pkg193523%_
                               (values _%pre193521%_
                                       _%ns193522%_
                                       _%pkg193523%_)
                               (gx#core-read-module-package
                                _%path193516%_
                                _%pre193521%_
                                _%ns193522%_))))
                      (begin
                        (let ((_g194916_
                               (if (##values? _g194915_)
                                   (##values-length _g194915_)
                                   1)))
                          (if (not (##fx= _g194916_ 3))
                              (error "Context expects 3 values" _g194916_)))
                        (let ((_%pre193552%_ (##values-ref _g194915_ 0))
                              (_%ns193553%_ (##values-ref _g194915_ 1))
                              (_%pkg193554%_ (##values-ref _g194915_ 2)))
                          (let* ((_%prelude193560%_
                                  (if (gx#core-bound-module-prelude?
                                       _%pre193552%_)
                                      (gx#syntax-local-e__0 _%pre193552%_)
                                      (if (gx#core-library-module-path?
                                           _%pre193552%_)
                                          (gx#core-resolve-library-module-path
                                           _%pre193552%_)
                                          (if (gx#stx-string? _%pre193552%_)
                                              (gx#core-resolve-module-path__%
                                               _%pre193552%_
                                               _%path193516%_)
                                              (gx#stx-e _%pre193552%_)))))
                                 (_%path-id193562%_
                                  (gx#core-module-path->namespace
                                   _%path193516%_))
                                 (_%pkg-id193564%_
                                  (if _%pkg193554%_
                                      (##string-append
                                       _%pkg193554%_
                                       '"/"
                                       _%path-id193562%_)
                                      _%path-id193562%_))
                                 (_%module-id193566%_
                                  (##string->symbol _%pkg-id193564%_))
                                 (_%module-ns193571%_
                                  (if (eq? _%ns193553%_ '#!void)
                                      '#f
                                      (let ((_%$e193568%_ _%ns193553%_))
                                        (if _%$e193568%_
                                            _%$e193568%_
                                            _%pkg-id193564%_)))))
                            (values _%prelude193560%_
                                    _%module-id193566%_
                                    _%module-ns193571%_
                                    _%body193520%_)))))))
                 (_%$%E193533193606%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e193524193548%_)
                        (let ((_%$%e193541193578%_
                               (gx#syntax-e _%$%e193524193548%_)))
                          (let ((_%$%hd193542193581%_
                                 (##car _%$%e193541193578%_))
                                (_%$%tl193543193583%_
                                 (##cdr _%$%e193541193578%_)))
                            (if (eq? (gx#stx-e _%$%hd193542193581%_) 'package:)
                                (if (gx#stx-pair? _%$%tl193543193583%_)
                                    (let ((_%$%e193544193586%_
                                           (gx#syntax-e _%$%tl193543193583%_)))
                                      (let ((_%$%hd193545193589%_
                                             (##car _%$%e193544193586%_))
                                            (_%$%tl193546193591%_
                                             (##cdr _%$%e193544193586%_)))
                                        (let* ((_%pkg193594%_
                                                _%$%hd193545193589%_)
                                               (_%rest193596%_
                                                _%$%tl193546193591%_)
                                               (_%pkg193604%_
                                                (if (gx#identifier?
                                                     _%pkg193594%_)
                                                    (symbol->string
                                                     (gx#stx-e _%pkg193594%_))
                                                    (if (or (gx#stx-string?
                                                             _%pkg193594%_)
                                                            (gx#stx-false?
                                                             _%pkg193594%_))
                                                        (gx#stx-e
                                                         _%pkg193594%_)
                                                        (gx#raise-syntax-error
                                                         'import
                                                         '"Bad syntax; Illegal package name"
                                                         _%pkg193594%_)))))
                                          (_%lp193518%_
                                           _%rest193596%_
                                           _%pre193521%_
                                           _%ns193522%_
                                           _%pkg193604%_))))
                                    (_%$%E193540193574%_))
                                (_%$%E193540193574%_))))
                        (_%$%E193540193574%_))))
                 (_%$%E193526193636%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e193524193548%_)
                        (let ((_%$%e193534193610%_
                               (gx#syntax-e _%$%e193524193548%_)))
                          (let ((_%$%hd193535193613%_
                                 (##car _%$%e193534193610%_))
                                (_%$%tl193536193615%_
                                 (##cdr _%$%e193534193610%_)))
                            (if (eq? (gx#stx-e _%$%hd193535193613%_)
                                     'namespace:)
                                (if (gx#stx-pair? _%$%tl193536193615%_)
                                    (let ((_%$%e193537193618%_
                                           (gx#syntax-e _%$%tl193536193615%_)))
                                      (let ((_%$%hd193538193621%_
                                             (##car _%$%e193537193618%_))
                                            (_%$%tl193539193623%_
                                             (##cdr _%$%e193537193618%_)))
                                        (let* ((_%ns193626%_
                                                _%$%hd193538193621%_)
                                               (_%rest193628%_
                                                _%$%tl193539193623%_)
                                               (_%ns193634%_
                                                (if (gx#identifier?
                                                     _%ns193626%_)
                                                    (symbol->string
                                                     (gx#stx-e _%ns193626%_))
                                                    (if (gx#stx-string?
                                                         _%ns193626%_)
                                                        (gx#stx-e _%ns193626%_)
                                                        (if (gx#stx-false?
                                                             _%ns193626%_)
                                                            '#!void
                                                            (gx#raise-syntax-error
                                                             'import
                                                             '"Bad syntax; illegal namespace"
                                                             _%ns193626%_))))))
                                          (_%lp193518%_
                                           _%rest193628%_
                                           _%pre193521%_
                                           _%ns193634%_
                                           _%pkg193523%_))))
                                    (_%$%E193533193606%_))
                                (_%$%E193533193606%_))))
                        (_%$%E193533193606%_))))
                 (_%$%E193525193660%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e193524193548%_)
                        (let ((_%$%e193527193640%_
                               (gx#syntax-e _%$%e193524193548%_)))
                          (let ((_%$%hd193528193643%_
                                 (##car _%$%e193527193640%_))
                                (_%$%tl193529193645%_
                                 (##cdr _%$%e193527193640%_)))
                            (if (eq? (gx#stx-e _%$%hd193528193643%_) 'prelude:)
                                (if (gx#stx-pair? _%$%tl193529193645%_)
                                    (let ((_%$%e193530193648%_
                                           (gx#syntax-e _%$%tl193529193645%_)))
                                      (let ((_%$%hd193531193651%_
                                             (##car _%$%e193530193648%_))
                                            (_%$%tl193532193653%_
                                             (##cdr _%$%e193530193648%_)))
                                        (let* ((_%prelude193656%_
                                                _%$%hd193531193651%_)
                                               (_%rest193658%_
                                                _%$%tl193532193653%_))
                                          (_%lp193518%_
                                           _%rest193658%_
                                           _%prelude193656%_
                                           _%ns193522%_
                                           _%pkg193523%_))))
                                    (_%$%E193526193636%_))
                                (_%$%E193526193636%_))))
                        (_%$%E193526193636%_)))))
            (_%$%E193525193660%_)))))
    (define gx#core-read-module/lang
      (lambda (_%path193337%_)
        (letrec ((_%default-read-module-body193339%_
                  (lambda (_%inp193508%_)
                    (let _%lp193510%_ ((_%body193512%_ '()))
                      (let ((_%next193514%_ (read-syntax__% _%inp193508%_)))
                        (if (eof-object? _%next193514%_)
                            (reverse _%body193512%_)
                            (_%lp193510%_
                             (cons _%next193514%_ _%body193512%_)))))))
                 (_%read-body193340%_
                  (lambda (_%inp193425%_
                           _%pre193426%_
                           _%ns193427%_
                           _%pkg193428%_
                           _%args193429%_)
                    (let ((_g194917_
                           (if _%pkg193428%_
                               (values _%pre193426%_
                                       _%ns193427%_
                                       _%pkg193428%_)
                               (gx#core-read-module-package
                                _%path193337%_
                                _%pre193426%_
                                _%ns193427%_))))
                      (begin
                        (let ((_g194918_
                               (if (##values? _g194917_)
                                   (##values-length _g194917_)
                                   1)))
                          (if (not (##fx= _g194918_ 3))
                              (error "Context expects 3 values" _g194918_)))
                        (let ((_%pre193431%_ (##values-ref _g194917_ 0))
                              (_%ns193432%_ (##values-ref _g194917_ 1))
                              (_%pkg193433%_ (##values-ref _g194917_ 2)))
                          (let* ((_%prelude193435%_
                                  (gx#import-module__0 _%pre193431%_))
                                 (_%read-module-body193490%_
                                  (let ((_%$e193481%_
                                         (__find (lambda (_%$%e193436193438%_)
                                                   (let* ((_%$%$%e193436193440193450%_
                                                           _%$%e193436193438%_)
                                                          (_%$%else193442193458%_
                                                           (lambda () '#f))
                                                          (_%$%K193444193462%_
                                                           (lambda () '#t)))
                                                     (if (##structure-direct-instance-of?
                                                          _%$%$%e193436193440193450%_
                                                          'gx#module-export::t)
                                                         (let* ((_%$%e193445193465%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##unchecked-structure-ref
                          _%$%$%e193436193440193450%_
                          '1
                          '#f
                          '#f))
                        (_%$%e193446193468%_
                         (##unchecked-structure-ref
                          _%$%$%e193436193440193450%_
                          '2
                          '#f
                          '#f))
                        (_%$%e193447193471%_
                         (##unchecked-structure-ref
                          _%$%$%e193436193440193450%_
                          '3
                          '#f
                          '#f)))
                   (if (##eq? _%$%e193447193471%_ '1)
                       (let ((_%$%e193448193474%_
                              (##unchecked-structure-ref
                               _%$%$%e193436193440193450%_
                               '4
                               '#f
                               '#f)))
                         (if (eq? _%$%e193448193474%_ 'read-module-body)
                             (_%$%K193444193462%_)
                             (_%$%else193442193458%_)))
                       (_%$%else193442193458%_)))
                 (_%$%else193442193458%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (##unchecked-structure-ref
                                                  _%prelude193435%_
                                                  '9
                                                  '#f
                                                  '#f))))
                                    (if _%$e193481%_
                                        (let ((_%proc193487%_
                                               (__with-catch
                                                void
                                                (lambda ()
                                                  (gx#eval-syntax__0
                                                   (##structure-ref
                                                    (gx#core-resolve-module-export
                                                     _%$e193481%_)
                                                    '1
                                                    gx#binding::t
                                                    '#f))))))
                                          (if (procedure? _%proc193487%_)
                                              _%proc193487%_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang prelude; read-module-body is not a procedure"
                                               _%path193337%_
                                               _%pre193431%_
                                               _%proc193487%_)))
                                        _%default-read-module-body193339%_)))
                                 (_%path-id193492%_
                                  (gx#core-module-path->namespace
                                   _%path193337%_))
                                 (_%pkg-id193494%_
                                  (if _%pkg193433%_
                                      (##string-append
                                       _%pkg193433%_
                                       '"/"
                                       _%path-id193492%_)
                                      _%path-id193492%_))
                                 (_%module-id193496%_
                                  (##string->symbol _%pkg-id193494%_))
                                 (_%module-ns193501%_
                                  (let ((_%$e193498%_ _%ns193432%_))
                                    (if _%$e193498%_
                                        _%$e193498%_
                                        _%pkg-id193494%_)))
                                 (_%body193505%_
                                  (call-with-parameters__1
                                   (lambda ()
                                     (call-with-parameters__1
                                      (lambda ()
                                        (_%read-module-body193490%_
                                         _%inp193425%_))
                                      gx#current-module-reader-args
                                      _%args193429%_))
                                   gx#current-module-reader-path
                                   _%path193337%_)))
                            (values _%prelude193435%_
                                    _%module-id193496%_
                                    _%module-ns193501%_
                                    _%body193505%_)))))))
                 (_%string-e193341%_
                  (lambda (_%obj193419%_ _%what193420%_)
                    (if (string? _%obj193419%_)
                        _%obj193419%_
                        (if (symbol? _%obj193419%_)
                            (##symbol->string _%obj193419%_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _%what193420%_)
                             _%path193337%_
                             _%obj193419%_)))))
                 (_%read-lang-args193342%_
                  (lambda (_%inp193374%_ _%args193375%_)
                    (let* ((_%$%args193376193384%_ _%args193375%_)
                           (_%$%else193378193392%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _%path193337%_)))
                           (_%$%K193380193407%_
                            (lambda (_%args193395%_ _%prelude193396%_)
                              (let* ((_%pkg193398%_
                                      (pgetq__0 'package: _%args193395%_))
                                     (_%pkg193400%_
                                      (if _%pkg193398%_
                                          (_%string-e193341%_
                                           _%pkg193398%_
                                           '"package")
                                          '#f))
                                     (_%ns193402%_
                                      (pgetq__0 'namespace: _%args193395%_))
                                     (_%ns193404%_
                                      (if _%ns193402%_
                                          (_%string-e193341%_
                                           _%ns193402%_
                                           '"namespace")
                                          '#f)))
                                (_%read-body193340%_
                                 _%inp193374%_
                                 _%prelude193396%_
                                 _%ns193404%_
                                 _%pkg193400%_
                                 _%args193395%_)))))
                      (if (pair? _%$%args193376193384%_)
                          (let ((_%$%hd193381193410%_
                                 (##car _%$%args193376193384%_))
                                (_%$%tl193382193412%_
                                 (##cdr _%$%args193376193384%_)))
                            (let* ((_%prelude193415%_ _%$%hd193381193410%_)
                                   (_%args193417%_ _%$%tl193382193412%_))
                              (_%$%K193380193407%_
                               _%args193417%_
                               _%prelude193415%_)))
                          (_%$%else193378193392%_)))))
                 (_%read-lang193343%_
                  (lambda (_%inp193348%_)
                    (let* ((_%head193350%_ (read-line _%inp193348%_))
                           (_%$e193352%_
                            (string-index__0 _%head193350%_ '#\space)))
                      (if _%$e193352%_
                          (let ((_%lang193357%_
                                 (substring _%head193350%_ '0 _%$e193352%_)))
                            (if (equal? _%lang193357%_ '"#lang")
                                (let* ((_%rest193359%_
                                        (substring
                                         _%head193350%_
                                         (##fx+ _%$e193352%_ '1)
                                         (string-length _%head193350%_)))
                                       (_%args193370%_
                                        (__with-catch
                                         (lambda (_%$%g193360193362%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Illegal #lang arguments"
                                            _%path193337%_
                                            _%$%g193360193362%_))
                                         (lambda ()
                                           (call-with-input-string
                                            _%rest193359%_
                                            (lambda (_%$%g193365193367%_)
                                              (read-all
                                               _%$%g193365193367%_
                                               read)))))))
                                  (_%read-lang-args193342%_
                                   _%inp193348%_
                                   _%args193370%_))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Illegal module syntax"
                                 _%path193337%_)))
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _%path193337%_)))))
                 (_%read-e193344%_
                  (lambda (_%inp193346%_)
                    (if (eq? (peek-char _%inp193346%_) '#\#)
                        (_%read-lang193343%_ _%inp193346%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _%path193337%_)))))
          (gx#call-with-input-source-file _%path193337%_ _%read-e193344%_))))
    (define gx#core-read-module-package
      (lambda (_%path193285%_ _%pre193286%_ _%ns193287%_)
        (letrec ((_%string-e193289%_
                  (lambda (_%e193332%_)
                    (if (symbol? _%e193332%_)
                        (##symbol->string _%e193332%_)
                        (if (string? _%e193332%_)
                            _%e193332%_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%e193332%_))))))
          (let _%lp193291%_ ((_%dir193293%_ (path-directory _%path193285%_))
                             (_%pkg-path193294%_ '()))
            (let ((_%gerbil.pkg193296%_
                   (path-expand '"gerbil.pkg" _%dir193293%_)))
              (if (##file-exists? _%gerbil.pkg193296%_)
                  (let ((_%plist193298%_
                         (gx#core-library-package-plist__% _%dir193293%_ '#t)))
                    (if (null? _%plist193298%_)
                        (let ((_%pkg193301%_
                               (if (null? _%pkg-path193294%_)
                                   '#f
                                   (string-join _%pkg-path193294%_ '"/"))))
                          (values _%pre193286%_ _%ns193287%_ _%pkg193301%_))
                        (if (list? _%plist193298%_)
                            (let* ((_%root193304%_
                                    (pgetq__0 'package: _%plist193298%_))
                                   (_%pkg193308%_
                                    (let ((_%pkg-path193306%_
                                           (if _%root193304%_
                                               (cons (_%string-e193289%_
                                                      _%root193304%_)
                                                     _%pkg-path193294%_)
                                               _%pkg-path193294%_)))
                                      (if (null? _%pkg-path193306%_)
                                          '#f
                                          (string-join
                                           _%pkg-path193306%_
                                           '"/"))))
                                   (_%ns193315%_
                                    (let ((_%ns193313%_
                                           (let ((_%$e193310%_ _%ns193287%_))
                                             (if _%$e193310%_
                                                 _%$e193310%_
                                                 (pgetq__0
                                                  'namespace:
                                                  _%plist193298%_)))))
                                      (if _%ns193313%_
                                          (_%string-e193289%_ _%ns193313%_)
                                          '#f)))
                                   (_%pre193320%_
                                    (let ((_%$e193317%_ _%pre193286%_))
                                      (if _%$e193317%_
                                          _%$e193317%_
                                          (pgetq__0
                                           'prelude:
                                           _%plist193298%_)))))
                              (values _%pre193320%_
                                      _%ns193315%_
                                      _%pkg193308%_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%plist193298%_))))
                  (let ((_%dir*193324%_
                         (path-strip-trailing-directory-separator
                          _%dir193293%_)))
                    (if (or (__string-empty? _%dir*193324%_)
                            (equal? _%dir193293%_ _%dir*193324%_))
                        (values _%pre193286%_ _%ns193287%_ '#f)
                        (let ((_%xpath193329%_
                               (path-strip-directory _%dir*193324%_))
                              (_%xdir193330%_ (path-directory _%dir*193324%_)))
                          (_%lp193291%_
                           _%xdir193330%_
                           (cons _%xpath193329%_ _%pkg-path193294%_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_%path193283%_)
        (path-strip-extension (path-strip-directory _%path193283%_))))
    (define gx#core-module-path->id
      (lambda (_%path193281%_)
        (##string->symbol (gx#core-module-path->namespace _%path193281%_))))
    (define gx#core-resolve-module-path__%
      (lambda (_%stx-path193260%_ _%rel193261%_)
        (let* ((_%path193263%_ (gx#stx-e _%stx-path193260%_))
               (_%path193265%_
                (if (__string-empty? (path-extension _%path193263%_))
                    (##string-append _%path193263%_ '".ss")
                    _%path193263%_)))
          (gx#core-resolve-path__%
           _%path193265%_
           (let ((_%$e193268%_ (gx#stx-source _%stx-path193260%_)))
             (if _%$e193268%_ _%$e193268%_ _%rel193261%_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_%stx-path193274%_)
        (let ((_%rel193276%_ '#f))
          (gx#core-resolve-module-path__% _%stx-path193274%_ _%rel193276%_))))
    (define gx#core-resolve-module-path
      (lambda _g194919_
        (let ((_g194920_ (##length _g194919_)))
          (cond ((##fx= _g194920_ 1)
                 (apply gx#core-resolve-module-path__0 _g194919_))
                ((##fx= _g194920_ 2)
                 (apply gx#core-resolve-module-path__% _g194919_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g194919_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_%libpath193145%_)
        (let* ((_%spath193147%_ (symbol->string (gx#stx-e _%libpath193145%_)))
               (_%spath193149%_
                (substring
                 _%spath193147%_
                 '1
                 (##string-length _%spath193147%_)))
               (_%ext193151%_ (path-extension _%spath193149%_))
               (_%ssi193153%_
                (if (__string-empty? _%ext193151%_)
                    (##string-append _%spath193149%_ '".ssi")
                    (##string-append
                     (path-strip-extension _%spath193149%_)
                     '".ssi")))
               (_%srcs193157%_
                (if (__string-empty? _%ext193151%_)
                    (##map (lambda (_%ext193155%_)
                             (string-append _%spath193149%_ _%ext193155%_))
                           '(".ss" ".sld" ".scm"))
                    (cons _%spath193149%_ '()))))
          (let _%lp193160%_ ((_%rest193162%_ (load-path)))
            (let* ((_%$%rest193163193172%_ _%rest193162%_)
                   (_%$%E193166193176%_
                    (lambda ()
                      (error '"No clause matching"
                             _%$%rest193163193172%_
                             '([dir . rest])
                             '([]))
                      '#!void)))
              (let ((_%$%K193168193247%_
                     (lambda (_%rest193187%_ _%dir193188%_)
                       (letrec ((_%resolve193190%_
                                 (lambda (_%ssi193203%_ _%srcs193204%_)
                                   (let ((_%compiled-path193206%_
                                          (path-expand
                                           _%ssi193203%_
                                           _%dir193188%_)))
                                     (if (##file-exists?
                                          _%compiled-path193206%_)
                                         (path-normalize
                                          _%compiled-path193206%_)
                                         (let _%lpr193208%_ ((_%rest-src193210%_
                                                              _%srcs193204%_))
                                           (let* ((_%$%rest-src193211193219%_
                                                   _%rest-src193210%_)
                                                  (_%$%else193213193227%_
                                                   (lambda ()
                                                     (_%lp193160%_
                                                      _%rest193187%_)))
                                                  (_%$%K193215193235%_
                                                   (lambda (_%rest-src193230%_
                                                            _%src193231%_)
                                                     (let ((_%src-path193233%_
                                                            (path-expand
                                                             _%src193231%_
                                                             _%dir193188%_)))
                                                       (if (##file-exists?
                                                            _%src-path193233%_)
                                                           (path-normalize
                                                            _%src-path193233%_)
                                                           (_%lpr193208%_
                                                            _%rest-src193230%_))))))
                                             (if (pair? _%$%rest-src193211193219%_)
                                                 (let ((_%$%hd193216193238%_
                                                        (##car _%$%rest-src193211193219%_))
                                                       (_%$%tl193217193240%_
                                                        (##cdr _%$%rest-src193211193219%_)))
                                                   (let* ((_%src193243%_
                                                           _%$%hd193216193238%_)
                                                          (_%rest-src193245%_
                                                           _%$%tl193217193240%_))
                                                     (_%$%K193215193235%_
                                                      _%rest-src193245%_
                                                      _%src193243%_)))
                                                 (_%$%else193213193227%_)))))))))
                         (let ((_%$e193192%_
                                (gx#core-library-package-path-prefix
                                 _%dir193188%_)))
                           (if _%$e193192%_
                               (if (string-prefix?
                                    _%$e193192%_
                                    _%spath193149%_)
                                   (let ((_%ssi193199%_
                                          (substring
                                           _%ssi193153%_
                                           (string-length _%$e193192%_)
                                           (##string-length _%ssi193153%_)))
                                         (_%srcs193200%_
                                          (##map (lambda (_%src193197%_)
                                                   (substring
                                                    _%src193197%_
                                                    (string-length
                                                     _%$e193192%_)
                                                    (string-length
                                                     _%src193197%_)))
                                                 _%srcs193157%_)))
                                     (_%resolve193190%_
                                      _%ssi193199%_
                                      _%srcs193200%_))
                                   (_%lp193160%_ _%rest193187%_))
                               (_%resolve193190%_
                                _%ssi193153%_
                                _%srcs193157%_))))))
                    (_%$%K193167193181%_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"cannot find library module"
                        _%libpath193145%_))))
                (let ((_%$%try-match193165193184%_
                       (lambda ()
                         (if (null? _%$%rest193163193172%_)
                             (_%$%K193167193181%_)
                             (_%$%E193166193176%_)))))
                  (if (pair? _%$%rest193163193172%_)
                      (let ((_%$%tl193170193252%_
                             (##cdr _%$%rest193163193172%_))
                            (_%$%hd193169193250%_
                             (##car _%$%rest193163193172%_)))
                        (let ((_%dir193255%_ _%$%hd193169193250%_)
                              (_%rest193257%_ _%$%tl193170193252%_))
                          (_%$%K193168193247%_ _%rest193257%_ _%dir193255%_)))
                      (_%$%try-match193165193184%_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_%modpath193113%_)
        (letrec ((_%resolve193115%_
                  (lambda (_%path193136%_ _%base193137%_)
                    (let ((_%$e193139%_
                           (string-rindex__0 _%base193137%_ '#\/)))
                      (if _%$e193139%_
                          (gx#core-resolve-library-module-path
                           (##string->symbol
                            (string-append
                             '":"
                             (substring _%base193137%_ '0 _%$e193139%_)
                             '"/"
                             _%path193136%_)))
                          (gx#core-resolve-library-module-path
                           (##string->symbol
                            (string-append '":" _%path193136%_))))))))
          (let ((_%spath193117%_ (symbol->string (gx#stx-e _%modpath193113%_)))
                (_%mod193118%_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _%mod193118%_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"cannot resolve relative module path; not in module context"
                 _%modpath193113%_))
            (let ((_%mpath193120%_
                   (symbol->string
                    (##structure-ref
                     _%mod193118%_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _%lp193122%_ ((_%spath193124%_ _%spath193117%_)
                                 (_%mpath193125%_ _%mpath193120%_))
                (if (string-prefix? '"../" _%spath193124%_)
                    (let ((_%$e193128%_
                           (string-rindex__0 _%mpath193125%_ '#\/)))
                      (if _%$e193128%_
                          (_%lp193122%_
                           (substring
                            _%spath193124%_
                            '3
                            (string-length _%spath193124%_))
                           (substring _%mpath193125%_ '0 _%$e193128%_))
                          (gx#raise-syntax-error
                           '#f
                           '"cannot resolve relative module path; illegal traversal"
                           _%modpath193113%_)))
                    (if (string-prefix? '"./" _%spath193124%_)
                        (_%lp193122%_
                         (substring
                          _%spath193124%_
                          '2
                          (string-length _%spath193124%_))
                         _%mpath193125%_)
                        (_%resolve193115%_
                         _%spath193124%_
                         _%mpath193125%_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_%dir193105%_)
        (let ((_%$e193107%_
               (pgetq__0
                'package:
                (gx#core-library-package-plist__0 _%dir193105%_))))
          (if _%$e193107%_
              (##string-append (symbol->string _%$e193107%_) '"/")
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_%dir193075%_ _%exists?193076%_)
        (let ((_%$e193078%_ (__hash-get gx#__module-pkg-cache _%dir193075%_)))
          (if _%$e193078%_
              _%$e193078%_
              (let* ((_%gerbil.pkg193082%_
                      (path-expand '"gerbil.pkg" _%dir193075%_))
                     (_%plist193092%_
                      (if (or _%exists?193076%_
                              (##file-exists? _%gerbil.pkg193082%_))
                          (let ((_%e193087%_
                                 (gx#call-with-input-source-file
                                  _%gerbil.pkg193082%_
                                  read)))
                            (if (eof-object? _%e193087%_)
                                '()
                                (if (list? _%e193087%_)
                                    _%e193087%_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _%gerbil.pkg193082%_
                                     _%e193087%_))))
                          '())))
                (__hash-put!
                 gx#__module-pkg-cache
                 _%dir193075%_
                 _%plist193092%_)
                _%plist193092%_)))))
    (define gx#core-library-package-plist__0
      (lambda (_%dir193098%_)
        (let ((_%exists?193100%_ '#f))
          (gx#core-library-package-plist__% _%dir193098%_ _%exists?193100%_))))
    (define gx#core-library-package-plist
      (lambda _g194921_
        (let ((_g194922_ (##length _g194921_)))
          (cond ((##fx= _g194922_ 1)
                 (apply gx#core-library-package-plist__0 _g194921_))
                ((##fx= _g194922_ 2)
                 (apply gx#core-library-package-plist__% _g194921_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g194921_))))))
    (define gx#core-library-module-path?
      (lambda (_%stx193072%_)
        (gx#core-special-module-path? _%stx193072%_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_%stx193070%_)
        (gx#core-special-module-path? _%stx193070%_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_%stx193065%_ _%char193066%_)
        (if (gx#identifier? _%stx193065%_)
            (if (interned-symbol? (gx#stx-e _%stx193065%_))
                (let ((_%str193068%_
                       (symbol->string (gx#stx-e _%stx193065%_))))
                  (if (##fx> (##string-length _%str193068%_) '1)
                      (eq? (string-ref _%str193068%_ '0) _%char193066%_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_%stx193059%_)
        (gx#core-bound-identifier?__%
         _%stx193059%_
         (lambda (_%$%g193060193062%_)
           (gx#expander-binding?__%
            _%$%g193060193062%_
            gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_%stx193053%_)
        (gx#core-bound-identifier?__%
         _%stx193053%_
         (lambda (_%$%g193054193056%_)
           (gx#expander-binding?__% _%$%g193054193056%_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_%stx193040%_)
        (letrec ((_%module-prelude?193042%_
                  (lambda (_%e193048%_)
                    (let ((_%$e193050%_
                           (##structure-instance-of?
                            _%e193048%_
                            'gx#module-context::t)))
                      (if _%$e193050%_
                          _%$e193050%_
                          (##structure-instance-of?
                           _%e193048%_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _%stx193040%_
           (lambda (_%$%g193043193045%_)
             (gx#expander-binding?__%
              _%$%g193043193045%_
              _%module-prelude?193042%_))))))
    (define gx#core-bind-import!__%
      (lambda (_%in192971%_ _%ctx192972%_ _%force-weak?192973%_)
        (let* ((_%$%in192974192983%_ _%in192971%_)
               (_%$%E192976192986%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%in192974192983%_
                         '((module-import source key phi weak?)))
                  '#!void))
               (_%$%K192977192999%_
                (lambda (_%weak?192989%_
                         _%phi192990%_
                         _%key192991%_
                         _%source192992%_)
                  (gx#core-bind!__%
                   _%key192991%_
                   (let* ((_%e192994%_
                           (gx#core-resolve-module-export _%source192992%_))
                          (__obj194903
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
                      __obj194903
                      (##unchecked-structure-ref _%e192994%_ '1 '#f '#f)
                      _%key192991%_
                      _%phi192990%_
                      _%e192994%_
                      (##unchecked-structure-ref _%source192992%_ '1 '#f '#f)
                      (let ((_%$e192996%_ _%force-weak?192973%_))
                        (if _%$e192996%_ _%$e192996%_ _%weak?192989%_)))
                     __obj194903)
                   gx#core-context-rebind?
                   _%phi192990%_
                   _%ctx192972%_))))
          (if (##structure-direct-instance-of?
               _%$%in192974192983%_
               'gx#module-import::t)
              (let* ((_%$%e192978193002%_
                      (##unchecked-structure-ref
                       _%$%in192974192983%_
                       '1
                       '#f
                       '#f))
                     (_%source193005%_ _%$%e192978193002%_)
                     (_%$%e192979193007%_
                      (##unchecked-structure-ref
                       _%$%in192974192983%_
                       '2
                       '#f
                       '#f))
                     (_%key193010%_ _%$%e192979193007%_)
                     (_%$%e192980193012%_
                      (##unchecked-structure-ref
                       _%$%in192974192983%_
                       '3
                       '#f
                       '#f))
                     (_%phi193015%_ _%$%e192980193012%_)
                     (_%$%e192981193017%_
                      (##unchecked-structure-ref
                       _%$%in192974192983%_
                       '4
                       '#f
                       '#f))
                     (_%weak?193020%_ _%$%e192981193017%_))
                (_%$%K192977192999%_
                 _%weak?193020%_
                 _%phi193015%_
                 _%key193010%_
                 _%source193005%_))
              (_%$%E192976192986%_)))))
    (define gx#core-bind-import!__0
      (lambda (_%in193025%_)
        (let* ((_%ctx193027%_ (gx#current-expander-context))
               (_%force-weak?193029%_ '#f))
          (gx#core-bind-import!__%
           _%in193025%_
           _%ctx193027%_
           _%force-weak?193029%_))))
    (define gx#core-bind-import!__1
      (lambda (_%in193031%_ _%ctx193032%_)
        (let ((_%force-weak?193034%_ '#f))
          (gx#core-bind-import!__%
           _%in193031%_
           _%ctx193032%_
           _%force-weak?193034%_))))
    (define gx#core-bind-import!
      (lambda _g194923_
        (let ((_g194924_ (##length _g194923_)))
          (cond ((##fx= _g194924_ 1) (apply gx#core-bind-import!__0 _g194923_))
                ((##fx= _g194924_ 2) (apply gx#core-bind-import!__1 _g194923_))
                ((##fx= _g194924_ 3) (apply gx#core-bind-import!__% _g194923_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g194923_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_%in192957%_ _%ctx192958%_)
        (gx#core-bind-import!__% _%in192957%_ _%ctx192958%_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_%in192963%_)
        (let ((_%ctx192965%_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _%in192963%_ _%ctx192965%_))))
    (define gx#core-bind-weak-import!
      (lambda _g194925_
        (let ((_g194926_ (##length _g194925_)))
          (cond ((##fx= _g194926_ 1)
                 (apply gx#core-bind-weak-import!__0 _g194925_))
                ((##fx= _g194926_ 2)
                 (apply gx#core-bind-weak-import!__% _g194925_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g194925_))))))
    (define gx#core-resolve-module-export
      (lambda (_%out192850%_)
        (letrec ((_%subst192852%_
                  (lambda (_%key192897%_)
                    (let* ((_%$%key192898192906%_ _%key192897%_)
                           (_%$%else192900192914%_ (lambda () _%key192897%_))
                           (_%$%K192902192944%_
                            (lambda (_%mark192917%_ _%id192918%_)
                              (let* ((_%$%mark192919192925%_ _%mark192917%_)
                                     (_%$%E192921192928%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%$%mark192919192925%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%$%K192922192936%_
                                      (lambda (_%subst192931%_)
                                        (let ((_%$e192933%_
                                               (if _%subst192931%_
                                                   (hash-get
                                                    _%subst192931%_
                                                    _%id192918%_)
                                                   '#f)))
                                          (if _%$e192933%_
                                              _%$e192933%_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _%key192897%_))))))
                                (if (##structure-instance-of?
                                     _%$%mark192919192925%_
                                     'gx#expander-mark::t)
                                    (let* ((_%$%e192923192939%_
                                            (##unchecked-structure-ref
                                             _%$%mark192919192925%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst192942%_
                                            _%$%e192923192939%_))
                                      (_%$%K192922192936%_ _%subst192942%_))
                                    (_%$%E192921192928%_))))))
                      (if (pair? _%$%key192898192906%_)
                          (let ((_%$%hd192903192947%_
                                 (##car _%$%key192898192906%_))
                                (_%$%tl192904192949%_
                                 (##cdr _%$%key192898192906%_)))
                            (let* ((_%id192952%_ _%$%hd192903192947%_)
                                   (_%mark192954%_ _%$%tl192904192949%_))
                              (_%$%K192902192944%_
                               _%mark192954%_
                               _%id192952%_)))
                          (_%$%else192900192914%_))))))
          (let* ((_%$%out192853192863%_ _%out192850%_)
                 (_%$%E192855192866%_
                  (lambda ()
                    (error '"No clause matching"
                           _%$%out192853192863%_
                           '((module-export ctx key phi _ _)))
                    '#!void))
                 (_%$%K192856192873%_
                  (lambda (_%phi192869%_ _%key192870%_ _%ctx192871%_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _%ctx192871%_ _%phi192869%_)
                     (_%subst192852%_ _%key192870%_)))))
            (if (##structure-direct-instance-of?
                 _%$%out192853192863%_
                 'gx#module-export::t)
                (let* ((_%$%e192857192876%_
                        (##unchecked-structure-ref
                         _%$%out192853192863%_
                         '1
                         '#f
                         '#f))
                       (_%ctx192879%_ _%$%e192857192876%_)
                       (_%$%e192858192881%_
                        (##unchecked-structure-ref
                         _%$%out192853192863%_
                         '2
                         '#f
                         '#f))
                       (_%key192884%_ _%$%e192858192881%_)
                       (_%$%e192859192886%_
                        (##unchecked-structure-ref
                         _%$%out192853192863%_
                         '3
                         '#f
                         '#f))
                       (_%phi192889%_ _%$%e192859192886%_)
                       (_%$%e192860192891%_
                        (##unchecked-structure-ref
                         _%$%out192853192863%_
                         '4
                         '#f
                         '#f))
                       (_%$%e192861192894%_
                        (##unchecked-structure-ref
                         _%$%out192853192863%_
                         '5
                         '#f
                         '#f)))
                  (_%$%K192856192873%_
                   _%phi192889%_
                   _%key192884%_
                   _%ctx192879%_))
                (_%$%E192855192866%_))))))
    (define gx#core-module-export->import__%
      (lambda (_%out192776%_ _%rename192777%_ _%dphi192778%_)
        (let* ((_%$%out192779192789%_ _%out192776%_)
               (_%$%E192781192792%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%out192779192789%_
                         '((module-export ctx key phi name weak?)))
                  '#!void))
               (_%$%K192782192804%_
                (lambda (_%weak?192795%_
                         _%name192796%_
                         _%phi192797%_
                         _%key192798%_
                         _%ctx192799%_)
                  (##structure
                   gx#module-import::t
                   _%out192776%_
                   (let ((_%$e192801%_ _%rename192777%_))
                     (if _%$e192801%_ _%$e192801%_ _%name192796%_))
                   (fx+ _%phi192797%_ _%dphi192778%_)
                   _%weak?192795%_))))
          (if (##structure-direct-instance-of?
               _%$%out192779192789%_
               'gx#module-export::t)
              (let* ((_%$%e192783192807%_
                      (##unchecked-structure-ref
                       _%$%out192779192789%_
                       '1
                       '#f
                       '#f))
                     (_%ctx192810%_ _%$%e192783192807%_)
                     (_%$%e192784192812%_
                      (##unchecked-structure-ref
                       _%$%out192779192789%_
                       '2
                       '#f
                       '#f))
                     (_%key192815%_ _%$%e192784192812%_)
                     (_%$%e192785192817%_
                      (##unchecked-structure-ref
                       _%$%out192779192789%_
                       '3
                       '#f
                       '#f))
                     (_%phi192820%_ _%$%e192785192817%_)
                     (_%$%e192786192822%_
                      (##unchecked-structure-ref
                       _%$%out192779192789%_
                       '4
                       '#f
                       '#f))
                     (_%name192825%_ _%$%e192786192822%_)
                     (_%$%e192787192827%_
                      (##unchecked-structure-ref
                       _%$%out192779192789%_
                       '5
                       '#f
                       '#f))
                     (_%weak?192830%_ _%$%e192787192827%_))
                (_%$%K192782192804%_
                 _%weak?192830%_
                 _%name192825%_
                 _%phi192820%_
                 _%key192815%_
                 _%ctx192810%_))
              (_%$%E192781192792%_)))))
    (define gx#core-module-export->import__0
      (lambda (_%out192835%_)
        (let* ((_%rename192837%_ '#f) (_%dphi192839%_ '0))
          (gx#core-module-export->import__%
           _%out192835%_
           _%rename192837%_
           _%dphi192839%_))))
    (define gx#core-module-export->import__1
      (lambda (_%out192841%_ _%rename192842%_)
        (let ((_%dphi192844%_ '0))
          (gx#core-module-export->import__%
           _%out192841%_
           _%rename192842%_
           _%dphi192844%_))))
    (define gx#core-module-export->import
      (lambda _g194927_
        (let ((_g194928_ (##length _g194927_)))
          (cond ((##fx= _g194928_ 1)
                 (apply gx#core-module-export->import__0 _g194927_))
                ((##fx= _g194928_ 2)
                 (apply gx#core-module-export->import__1 _g194927_))
                ((##fx= _g194928_ 3)
                 (apply gx#core-module-export->import__% _g194927_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g194927_))))))
    (define gx#core-expand-module%
      (lambda (_%stx192675%_)
        (letrec ((_%make-context192677%_
                  (lambda (_%id192754%_)
                    (let* ((_%super192756%_ (gx#current-expander-context))
                           (_%bind-id192758%_ (gx#stx-e _%id192754%_))
                           (_%mod-id192760%_
                            (if (##structure-instance-of?
                                 _%super192756%_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##unchecked-structure-ref
                                  _%super192756%_
                                  '1
                                  '#f
                                  '#f)
                                 '"~"
                                 _%bind-id192758%_)
                                _%bind-id192758%_))
                           (_%ns192762%_ (symbol->string _%mod-id192760%_))
                           (_%path192772%_
                            (if (##structure-instance-of?
                                 _%super192756%_
                                 'gx#module-context::t)
                                (let ((_%path192764%_
                                       (##unchecked-structure-ref
                                        _%super192756%_
                                        '7
                                        '#f
                                        '#f)))
                                  (if (or (pair? _%path192764%_)
                                          (null? _%path192764%_))
                                      (cons _%bind-id192758%_ _%path192764%_)
                                      (if (not _%path192764%_)
                                          _%bind-id192758%_
                                          (cons _%bind-id192758%_
                                                (cons _%path192764%_ '())))))
                                _%bind-id192758%_))
                           (__obj194904
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
                       __obj194904
                       _%mod-id192760%_
                       _%super192756%_
                       _%ns192762%_
                       _%path192772%_)
                      __obj194904)))
                 (_%valid-module-id?192678%_
                  (lambda (_%id192729%_)
                    (let* ((_%str192731%_ (symbol->string _%id192729%_))
                           (_%len192733%_ (##string-length _%str192731%_)))
                      (if (##fx>= _%len192733%_ '1)
                          (let _%loop192736%_ ((_%index192738%_
                                                (##fx- (##string-length
                                                        _%str192731%_)
                                                       '1)))
                            (if (##fx>= _%index192738%_ '0)
                                (let ((_%c192740%_
                                       (string-ref
                                        _%str192731%_
                                        _%index192738%_)))
                                  (if (or (and (##char>=? _%c192740%_ '#\a)
                                               (##char<=? _%c192740%_ '#\z))
                                          (and (##char>=? _%c192740%_ '#\A)
                                               (##char<=? _%c192740%_ '#\Z))
                                          (and (##char>=? _%c192740%_ '#\0)
                                               (##char<=? _%c192740%_ '#\9))
                                          (##char=? _%c192740%_ '#\_)
                                          (##char=? _%c192740%_ '#\-))
                                      (_%loop192736%_
                                       (##fx- _%index192738%_ '1))
                                      '#f))
                                '#t))
                          '#f)))))
          (let* ((_%$%e192679192689%_ _%stx192675%_)
                 (_%$%E192681192693%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%$%e192679192689%_)))
                 (_%$%E192680192725%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e192679192689%_)
                        (let ((_%$%e192682192697%_
                               (gx#syntax-e _%$%e192679192689%_)))
                          (let ((_%$%hd192683192700%_
                                 (##car _%$%e192682192697%_))
                                (_%$%tl192684192702%_
                                 (##cdr _%$%e192682192697%_)))
                            (if (gx#stx-pair? _%$%tl192684192702%_)
                                (let ((_%$%e192685192705%_
                                       (gx#syntax-e _%$%tl192684192702%_)))
                                  (let ((_%$%hd192686192708%_
                                         (##car _%$%e192685192705%_))
                                        (_%$%tl192687192710%_
                                         (##cdr _%$%e192685192705%_)))
                                    (let* ((_%id192713%_ _%$%hd192686192708%_)
                                           (_%body192715%_
                                            _%$%tl192687192710%_))
                                      (if (and (gx#identifier? _%id192713%_)
                                               (gx#stx-list? _%body192715%_))
                                          (if (_%valid-module-id?192678%_
                                               (gx#stx-e
                                                (gx#datum->syntax__0 '#f 'id)))
                                              (let* ((_%ctx192717%_
                                                      (_%make-context192677%_
                                                       _%id192713%_))
                                                     (_%body192719%_
                                                      (gx#core-expand-module-begin
                                                       _%body192715%_
                                                       _%ctx192717%_))
                                                     (_%body192721%_
                                                      (gx#core-quote-syntax__1
                                                       (gx#core-cons
                                                        '%#begin
                                                        _%body192719%_)
                                                       (gx#stx-source
                                                        _%stx192675%_))))
                                                (##unchecked-structure-set!
                                                 _%ctx192717%_
                                                 (__make-atomic-promise
                                                  (lambda ()
                                                    (gx#eval-syntax*
                                                     _%body192721%_)))
                                                 '10
                                                 '#f
                                                 '#f)
                                                (##unchecked-structure-set!
                                                 _%ctx192717%_
                                                 _%body192721%_
                                                 '11
                                                 '#f
                                                 '#f)
                                                (gx#core-bind-syntax!__0
                                                 _%id192713%_
                                                 _%ctx192717%_)
                                                (gx#core-quote-syntax__1
                                                 (gx#core-list
                                                  '%#module
                                                  (gx#core-quote-syntax__0
                                                   _%id192713%_)
                                                  _%body192721%_)
                                                 (gx#stx-source
                                                  _%stx192675%_)))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"invalid module id; allowed characters are A-Z,a-z,0-9,_,-"
                                               _%stx192675%_
                                               (gx#datum->syntax__0 '#f 'id)))
                                          (_%$%E192681192693%_)))))
                                (_%$%E192681192693%_))))
                        (_%$%E192681192693%_)))))
            (_%$%E192680192725%_)))))
    (define gx#core-expand-module-begin
      (lambda (_%body192640%_ _%ctx192641%_)
        (call-with-parameters__1
         (lambda ()
           (call-with-parameters__1
            (lambda ()
              (gx#core-bind-feature!__1 'gerbil-module '#t)
              (let* ((_%stx192645%_
                      (gx#core-expand-head
                       (cons '%%begin-module _%body192640%_)))
                     (_%$%e192646192653%_ _%stx192645%_)
                     (_%$%E192648192657%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module body expansion"
                         _%stx192645%_)))
                     (_%$%E192647192671%_
                      (lambda ()
                        (if (gx#stx-pair? _%$%e192646192653%_)
                            (let ((_%$%e192649192661%_
                                   (gx#syntax-e _%$%e192646192653%_)))
                              (let ((_%$%hd192650192664%_
                                     (##car _%$%e192649192661%_))
                                    (_%$%tl192651192666%_
                                     (##cdr _%$%e192649192661%_)))
                                (if (and (gx#identifier? _%$%hd192650192664%_)
                                         (gx#core-identifier=?
                                          _%$%hd192650192664%_
                                          '%#begin-module))
                                    (let ((_%body192669%_
                                           _%$%tl192651192666%_))
                                      (if (gx#sealed-syntax? _%stx192645%_)
                                          _%body192669%_
                                          (gx#core-expand-module-body
                                           _%body192669%_)))
                                    (_%$%E192648192657%_))))
                            (_%$%E192648192657%_)))))
                (_%$%E192647192671%_)))
            gx#current-expander-phi
            '0))
         gx#current-expander-context
         _%ctx192641%_)))
    (define gx#core-expand-module-body
      (lambda (_%body192337%_)
        (letrec ((_%expand-special192339%_
                  (lambda (_%hd192468%_ _%K192469%_ _%rest192470%_ _%r192471%_)
                    (let* ((_%$%e192472192512%_ _%hd192468%_)
                           (_%$%E192507192516%_
                            (lambda ()
                              (_%K192469%_
                               _%rest192470%_
                               (cons (gx#core-expand-top _%hd192468%_)
                                     _%r192471%_))))
                           (_%$%E192494192528%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e192472192512%_)
                                  (let ((_%$%e192508192520%_
                                         (gx#syntax-e _%$%e192472192512%_)))
                                    (let ((_%$%hd192509192523%_
                                           (##car _%$%e192508192520%_))
                                          (_%$%tl192510192525%_
                                           (##cdr _%$%e192508192520%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd192509192523%_)
                                               (gx#core-identifier=?
                                                _%$%hd192509192523%_
                                                '%#export))
                                          (_%K192469%_
                                           _%rest192470%_
                                           (cons _%hd192468%_ _%r192471%_))
                                          (_%$%E192507192516%_))))
                                  (_%$%E192507192516%_))))
                           (_%$%E192484192570%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e192472192512%_)
                                  (let ((_%$%e192495192532%_
                                         (gx#syntax-e _%$%e192472192512%_)))
                                    (let ((_%$%hd192496192535%_
                                           (##car _%$%e192495192532%_))
                                          (_%$%tl192497192537%_
                                           (##cdr _%$%e192495192532%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd192496192535%_)
                                               (gx#core-identifier=?
                                                _%$%hd192496192535%_
                                                '%#bind-runtime-properties!))
                                          (if (gx#stx-pair?
                                               _%$%tl192497192537%_)
                                              (let ((_%$%e192498192540%_
                                                     (gx#syntax-e
                                                      _%$%tl192497192537%_)))
                                                (let ((_%$%hd192499192543%_
                                                       (##car _%$%e192498192540%_))
                                                      (_%$%tl192500192545%_
                                                       (##cdr _%$%e192498192540%_)))
                                                  (if (gx#stx-pair?
                                                       _%$%hd192499192543%_)
                                                      (let ((_%$%e192504192548%_
                                                             (gx#syntax-e
                                                              _%$%hd192499192543%_)))
                                                        (let ((_%$%hd192505192551%_
                                                               (##car _%$%e192504192548%_))
                                                              (_%$%tl192506192553%_
                                                               (##cdr _%$%e192504192548%_)))
                                                          (let ((_%id192556%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%hd192505192551%_))
                    (if (gx#stx-null? _%$%tl192506192553%_)
                        (if (gx#stx-pair? _%$%tl192500192545%_)
                            (let ((_%$%e192501192558%_
                                   (gx#syntax-e _%$%tl192500192545%_)))
                              (let ((_%$%hd192502192561%_
                                     (##car _%$%e192501192558%_))
                                    (_%$%tl192503192563%_
                                     (##cdr _%$%e192501192558%_)))
                                (let ((_%props192566%_ _%$%hd192502192561%_))
                                  (if (gx#stx-null? _%$%tl192503192563%_)
                                      (let ((_%bind192568%_
                                             (gx#resolve-identifier__0
                                              _%id192556%_)))
                                        (gx#core-bind-runtime-properties!
                                         _%bind192568%_
                                         _%props192566%_)
                                        (_%K192469%_
                                         _%rest192470%_
                                         _%r192471%_))
                                      (_%$%E192494192528%_)))))
                            (_%$%E192494192528%_))
                        (_%$%E192494192528%_)))))
              (_%$%E192494192528%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E192494192528%_))
                                          (_%$%E192494192528%_))))
                                  (_%$%E192494192528%_))))
                           (_%$%E192474192602%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e192472192512%_)
                                  (let ((_%$%e192485192574%_
                                         (gx#syntax-e _%$%e192472192512%_)))
                                    (let ((_%$%hd192486192577%_
                                           (##car _%$%e192485192574%_))
                                          (_%$%tl192487192579%_
                                           (##cdr _%$%e192485192574%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd192486192577%_)
                                               (gx#core-identifier=?
                                                _%$%hd192486192577%_
                                                '%#define-values))
                                          (if (gx#stx-pair?
                                               _%$%tl192487192579%_)
                                              (let ((_%$%e192488192582%_
                                                     (gx#syntax-e
                                                      _%$%tl192487192579%_)))
                                                (let ((_%$%hd192489192585%_
                                                       (##car _%$%e192488192582%_))
                                                      (_%$%tl192490192587%_
                                                       (##cdr _%$%e192488192582%_)))
                                                  (let ((_%hd-bind192590%_
                                                         _%$%hd192489192585%_))
                                                    (if (gx#stx-pair?
                                                         _%$%tl192490192587%_)
                                                        (let ((_%$%e192491192592%_
                                                               (gx#syntax-e
                                                                _%$%tl192490192587%_)))
                                                          (let ((_%$%hd192492192595%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%$%e192491192592%_))
                        (_%$%tl192493192597%_ (##cdr _%$%e192491192592%_)))
                    (let ((_%expr192600%_ _%$%hd192492192595%_))
                      (if (gx#stx-null? _%$%tl192493192597%_)
                          (if (gx#core-bind-values? _%hd-bind192590%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind192590%_)
                                (_%K192469%_
                                 _%rest192470%_
                                 (cons _%hd192468%_ _%r192471%_)))
                              (_%$%E192484192570%_))
                          (_%$%E192484192570%_)))))
                (_%$%E192484192570%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E192484192570%_))
                                          (_%$%E192484192570%_))))
                                  (_%$%E192484192570%_))))
                           (_%$%E192473192636%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e192472192512%_)
                                  (let ((_%$%e192475192606%_
                                         (gx#syntax-e _%$%e192472192512%_)))
                                    (let ((_%$%hd192476192609%_
                                           (##car _%$%e192475192606%_))
                                          (_%$%tl192477192611%_
                                           (##cdr _%$%e192475192606%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd192476192609%_)
                                               (gx#core-identifier=?
                                                _%$%hd192476192609%_
                                                '%#define-values))
                                          (if (gx#stx-pair?
                                               _%$%tl192477192611%_)
                                              (let ((_%$%e192478192614%_
                                                     (gx#syntax-e
                                                      _%$%tl192477192611%_)))
                                                (let ((_%$%hd192479192617%_
                                                       (##car _%$%e192478192614%_))
                                                      (_%$%tl192480192619%_
                                                       (##cdr _%$%e192478192614%_)))
                                                  (let ((_%hd-bind192622%_
                                                         _%$%hd192479192617%_))
                                                    (if (gx#stx-pair?
                                                         _%$%tl192480192619%_)
                                                        (let ((_%$%e192481192624%_
                                                               (gx#syntax-e
                                                                _%$%tl192480192619%_)))
                                                          (let ((_%$%hd192482192627%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%$%e192481192624%_))
                        (_%$%tl192483192629%_ (##cdr _%$%e192481192624%_)))
                    (let* ((_%expr192632%_ _%$%hd192482192627%_)
                           (_%props192634%_ _%$%tl192483192629%_))
                      (if (and (gx#core-bind-values? _%hd-bind192622%_)
                               (gx#stx-list? _%props192634%_)
                               (not (gx#stx-null? _%props192634%_)))
                          (begin
                            (gx#core-bind-values!__0 _%hd-bind192622%_)
                            (_%K192469%_
                             (cons (gx#core-cons
                                    '%#bind-runtime-properties!
                                    (cons _%hd-bind192622%_
                                          (cons _%props192634%_ '())))
                                   _%rest192470%_)
                             (cons (gx#core-cons
                                    '%#define-values
                                    (cons _%hd-bind192622%_
                                          (cons _%expr192632%_ '())))
                                   _%r192471%_)))
                          (_%$%E192474192602%_)))))
                (_%$%E192474192602%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E192474192602%_))
                                          (_%$%E192474192602%_))))
                                  (_%$%E192474192602%_)))))
                      (_%$%E192473192636%_))))
                 (_%expand-body192340%_
                  (lambda (_%rbody192342%_)
                    (let _%lp192344%_ ((_%rest192346%_ _%rbody192342%_)
                                       (_%body192347%_ '()))
                      (let* ((_%$%rest192348192356%_ _%rest192346%_)
                             (_%$%else192350192364%_
                              (lambda () _%body192347%_))
                             (_%$%K192352192456%_
                              (lambda (_%rest192367%_ _%hd192368%_)
                                (let* ((_%$%e192369192390%_ _%hd192368%_)
                                       (_%$%E192385192394%_
                                        (lambda ()
                                          (_%lp192344%_
                                           _%rest192367%_
                                           (cons (gx#core-expand-expression
                                                  _%hd192368%_)
                                                 _%body192347%_))))
                                       (_%$%E192381192408%_
                                        (lambda ()
                                          (if (gx#stx-pair?
                                               _%$%e192369192390%_)
                                              (let ((_%$%e192386192398%_
                                                     (gx#syntax-e
                                                      _%$%e192369192390%_)))
                                                (let ((_%$%hd192387192401%_
                                                       (##car _%$%e192386192398%_))
                                                      (_%$%tl192388192403%_
                                                       (##cdr _%$%e192386192398%_)))
                                                  (let ((_%form192406%_
                                                         _%$%hd192387192401%_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _%form192406%_
                                                         gx#special-form-binding?)
                                                        (_%lp192344%_
                                                         _%rest192367%_
                                                         (cons _%hd192368%_
                                                               _%body192347%_))
                                                        (_%$%E192385192394%_)))))
                                              (_%$%E192385192394%_))))
                                       (_%$%E192371192420%_
                                        (lambda ()
                                          (if (gx#stx-pair?
                                               _%$%e192369192390%_)
                                              (let ((_%$%e192382192412%_
                                                     (gx#syntax-e
                                                      _%$%e192369192390%_)))
                                                (let ((_%$%hd192383192415%_
                                                       (##car _%$%e192382192412%_))
                                                      (_%$%tl192384192417%_
                                                       (##cdr _%$%e192382192412%_)))
                                                  (if (and (gx#identifier?
                                                            _%$%hd192383192415%_)
                                                           (gx#core-identifier=?
                                                            _%$%hd192383192415%_
                                                            '%#export))
                                                      (_%lp192344%_
                                                       _%rest192367%_
                                                       (cons (gx#core-expand-export%__0
                                                              _%hd192368%_)
                                                             _%body192347%_))
                                                      (_%$%E192381192408%_))))
                                              (_%$%E192381192408%_))))
                                       (_%$%E192370192452%_
                                        (lambda ()
                                          (if (gx#stx-pair?
                                               _%$%e192369192390%_)
                                              (let ((_%$%e192372192424%_
                                                     (gx#syntax-e
                                                      _%$%e192369192390%_)))
                                                (let ((_%$%hd192373192427%_
                                                       (##car _%$%e192372192424%_))
                                                      (_%$%tl192374192429%_
                                                       (##cdr _%$%e192372192424%_)))
                                                  (if (and (gx#identifier?
                                                            _%$%hd192373192427%_)
                                                           (gx#core-identifier=?
                                                            _%$%hd192373192427%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%$%tl192374192429%_)
                                                          (let ((_%$%e192375192432%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl192374192429%_)))
                    (let ((_%$%hd192376192435%_ (##car _%$%e192375192432%_))
                          (_%$%tl192377192437%_ (##cdr _%$%e192375192432%_)))
                      (let ((_%hd-bind192440%_ _%$%hd192376192435%_))
                        (if (gx#stx-pair? _%$%tl192377192437%_)
                            (let ((_%$%e192378192442%_
                                   (gx#syntax-e _%$%tl192377192437%_)))
                              (let ((_%$%hd192379192445%_
                                     (##car _%$%e192378192442%_))
                                    (_%$%tl192380192447%_
                                     (##cdr _%$%e192378192442%_)))
                                (let ((_%expr192450%_ _%$%hd192379192445%_))
                                  (if (gx#stx-null? _%$%tl192380192447%_)
                                      (_%lp192344%_
                                       _%rest192367%_
                                       (cons (gx#core-quote-syntax__1
                                              (gx#core-list
                                               '%#define-values
                                               (gx#core-quote-bind-values
                                                _%hd-bind192440%_)
                                               (gx#core-expand-expression
                                                _%expr192450%_))
                                              (gx#stx-source _%hd192368%_))
                                             _%body192347%_))
                                      (_%$%E192371192420%_)))))
                            (_%$%E192371192420%_)))))
                  (_%$%E192371192420%_))
              (_%$%E192371192420%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E192371192420%_)))))
                                  (_%$%E192370192452%_)))))
                        (if (pair? _%$%rest192348192356%_)
                            (let ((_%$%hd192353192459%_
                                   (##car _%$%rest192348192356%_))
                                  (_%$%tl192354192461%_
                                   (##cdr _%$%rest192348192356%_)))
                              (let* ((_%hd192464%_ _%$%hd192353192459%_)
                                     (_%rest192466%_ _%$%tl192354192461%_))
                                (_%$%K192352192456%_
                                 _%rest192466%_
                                 _%hd192464%_)))
                            (_%$%else192350192364%_)))))))
          (_%expand-body192340%_
           (gx#core-expand-block__%
            (cons '%#begin-module _%body192337%_)
            _%expand-special192339%_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_%stx192178%_
               _%expanded?192179%_
               _%method192180%_
               _%current-phi192181%_
               _%expand1192182%_)
        (letrec ((_%K192184%_
                  (lambda (_%rest192304%_ _%r192305%_)
                    (let* ((_%$%e192306192313%_ _%rest192304%_)
                           (_%$%E192308192317%_ (lambda () _%r192305%_))
                           (_%$%E192307192333%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e192306192313%_)
                                  (let ((_%$%e192309192321%_
                                         (gx#syntax-e _%$%e192306192313%_)))
                                    (let ((_%$%hd192310192324%_
                                           (##car _%$%e192309192321%_))
                                          (_%$%tl192311192326%_
                                           (##cdr _%$%e192309192321%_)))
                                      (let* ((_%hd192329%_
                                              _%$%hd192310192324%_)
                                             (_%rest192331%_
                                              _%$%tl192311192326%_))
                                        (_%step192185%_
                                         _%hd192329%_
                                         _%rest192331%_
                                         _%r192305%_))))
                                  (_%$%E192308192317%_)))))
                      (_%$%E192307192333%_))))
                 (_%step192185%_
                  (lambda (_%hd192218%_ _%rest192219%_ _%r192220%_)
                    (let* ((_%$%e192221192239%_ _%hd192218%_)
                           (_%$%E192234192243%_
                            (lambda ()
                              (if (_%expanded?192179%_ (gx#stx-e _%hd192218%_))
                                  (_%K192184%_
                                   _%rest192219%_
                                   (cons (gx#stx-e _%hd192218%_) _%r192220%_))
                                  (_%expand1192182%_
                                   _%hd192218%_
                                   _%K192184%_
                                   _%rest192219%_
                                   _%r192220%_))))
                           (_%$%E192230192259%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e192221192239%_)
                                  (let ((_%$%e192235192247%_
                                         (gx#syntax-e _%$%e192221192239%_)))
                                    (let ((_%$%hd192236192250%_
                                           (##car _%$%e192235192247%_))
                                          (_%$%tl192237192252%_
                                           (##cdr _%$%e192235192247%_)))
                                      (let* ((_%macro192255%_
                                              _%$%hd192236192250%_)
                                             (_%body192257%_
                                              _%$%tl192237192252%_))
                                        (if (gx#core-bound-identifier?__%
                                             _%macro192255%_
                                             gx#syntax-binding?)
                                            (_%K192184%_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _%macro192255%_)
                                                    _%hd192218%_
                                                    _%method192180%_)
                                                   _%rest192219%_)
                                             _%r192220%_)
                                            (_%$%E192234192243%_)))))
                                  (_%$%E192234192243%_))))
                           (_%$%E192223192273%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e192221192239%_)
                                  (let ((_%$%e192231192263%_
                                         (gx#syntax-e _%$%e192221192239%_)))
                                    (let ((_%$%hd192232192266%_
                                           (##car _%$%e192231192263%_))
                                          (_%$%tl192233192268%_
                                           (##cdr _%$%e192231192263%_)))
                                      (if (eq? (gx#stx-e _%$%hd192232192266%_)
                                               'begin:)
                                          (let ((_%body192271%_
                                                 _%$%tl192233192268%_))
                                            (_%K192184%_
                                             (gx#stx-foldr
                                              cons
                                              _%rest192219%_
                                              _%body192271%_)
                                             _%r192220%_))
                                          (_%$%E192230192259%_))))
                                  (_%$%E192230192259%_))))
                           (_%$%E192222192300%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e192221192239%_)
                                  (let ((_%$%e192224192277%_
                                         (gx#syntax-e _%$%e192221192239%_)))
                                    (let ((_%$%hd192225192280%_
                                           (##car _%$%e192224192277%_))
                                          (_%$%tl192226192282%_
                                           (##cdr _%$%e192224192277%_)))
                                      (if (eq? (gx#stx-e _%$%hd192225192280%_)
                                               'phi:)
                                          (if (gx#stx-pair?
                                               _%$%tl192226192282%_)
                                              (let ((_%$%e192227192285%_
                                                     (gx#syntax-e
                                                      _%$%tl192226192282%_)))
                                                (let ((_%$%hd192228192288%_
                                                       (##car _%$%e192227192285%_))
                                                      (_%$%tl192229192290%_
                                                       (##cdr _%$%e192227192285%_)))
                                                  (let* ((_%dphi192293%_
                                                          _%$%hd192228192288%_)
                                                         (_%body192295%_
                                                          _%$%tl192229192290%_))
                                                    (if (gx#stx-fixnum?
                                                         _%dphi192293%_)
                                                        (let ((_%rbody192298%_
                                                               (call-with-parameters__1
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_%K192184%_ _%body192295%_ '()))
                        _%current-phi192181%_
                        (fx+ (gx#stx-e _%dphi192293%_)
                             (_%current-phi192181%_)))))
                  (_%K192184%_
                   _%rest192219%_
                   (append _%rbody192298%_ _%r192220%_)))
                (_%$%E192223192273%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E192223192273%_))
                                          (_%$%E192223192273%_))))
                                  (_%$%E192223192273%_)))))
                      (_%$%E192222192300%_)))))
          (let* ((_%$%e192186192193%_ _%stx192178%_)
                 (_%$%E192188192197%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%$%e192186192193%_)))
                 (_%$%E192187192214%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e192186192193%_)
                        (let ((_%$%e192189192201%_
                               (gx#syntax-e _%$%e192186192193%_)))
                          (let ((_%$%hd192190192204%_
                                 (##car _%$%e192189192201%_))
                                (_%$%tl192191192206%_
                                 (##cdr _%$%e192189192201%_)))
                            (let ((_%body192209%_ _%$%tl192191192206%_))
                              (if (_%current-phi192181%_)
                                  (_%K192184%_ _%body192209%_ '())
                                  (call-with-parameters__1
                                   (lambda () (_%K192184%_ _%body192209%_ '()))
                                   _%current-phi192181%_
                                   (gx#current-expander-phi))))))
                        (_%$%E192188192197%_)))))
            (_%$%E192187192214%_)))))
    (define gx#core-expand-import%__%
      (lambda (_%stx191832%_ _%internal-expand?191833%_)
        (letrec ((_%expand1191835%_
                  (lambda (_%hd192150%_ _%K192151%_ _%rest192152%_ _%r192153%_)
                    (if (gx#core-bound-module? _%hd192150%_)
                        (_%import1191836%_
                         (gx#syntax-local-e__0 _%hd192150%_)
                         _%K192151%_
                         _%rest192152%_
                         _%r192153%_)
                        (if (gx#core-library-module-path? _%hd192150%_)
                            (_%import1191836%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%hd192150%_))
                             _%K192151%_
                             _%rest192152%_
                             _%r192153%_)
                            (if (gx#core-library-relative-module-path?
                                 _%hd192150%_)
                                (_%import1191836%_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _%hd192150%_))
                                 _%K192151%_
                                 _%rest192152%_
                                 _%r192153%_)
                                (let ((_%e192159%_ (gx#stx-e _%hd192150%_)))
                                  (if (pair? _%e192159%_)
                                      (let ((_%$e192162%_
                                             (gx#stx-e (##car _%e192159%_))))
                                        (if (eq? 'spec: _%$e192162%_)
                                            (_%import-spec191839%_
                                             _%hd192150%_
                                             _%K192151%_
                                             _%rest192152%_
                                             _%r192153%_)
                                            (if (eq? 'in: _%$e192162%_)
                                                (_%import-submodule191837%_
                                                 _%hd192150%_
                                                 _%K192151%_
                                                 _%rest192152%_
                                                 _%r192153%_)
                                                (if (eq? 'runtime:
                                                         _%$e192162%_)
                                                    (_%import-runtime191838%_
                                                     _%hd192150%_
                                                     _%K192151%_
                                                     _%rest192152%_
                                                     _%r192153%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _%stx191832%_
                                                     _%hd192150%_)))))
                                      (if (string? _%e192159%_)
                                          (_%import1191836%_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _%hd192150%_
                                             (gx#stx-source _%stx191832%_)))
                                           _%K192151%_
                                           _%rest192152%_
                                           _%r192153%_)
                                          (if (##structure-instance-of?
                                               _%e192159%_
                                               'gx#module-context::t)
                                              (_%K192151%_
                                               _%rest192152%_
                                               (cons _%e192159%_ _%r192153%_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _%stx191832%_
                                               _%hd192150%_))))))))))
                 (_%import1191836%_
                  (lambda (_%ctx192139%_
                           _%K192140%_
                           _%rest192141%_
                           _%r192142%_)
                    (let ((_%dphi192144%_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_%K192140%_
                       _%rest192141%_
                       (cons (##structure
                              gx#import-set::t
                              _%ctx192139%_
                              _%dphi192144%_
                              (map (lambda (_%$%g192145192147%_)
                                     (gx#core-module-export->import__%
                                      _%$%g192145192147%_
                                      '#f
                                      _%dphi192144%_))
                                   (##unchecked-structure-ref
                                    _%ctx192139%_
                                    '9
                                    '#f
                                    '#f)))
                             _%r192142%_)))))
                 (_%import-submodule191837%_
                  (lambda (_%hd192106%_ _%K192107%_ _%rest192108%_ _%r192109%_)
                    (let* ((_%$%e192110192117%_ _%hd192106%_)
                           (_%$%E192112192121%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%$%e192110192117%_)))
                           (_%$%E192111192135%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e192110192117%_)
                                  (let ((_%$%e192113192125%_
                                         (gx#syntax-e _%$%e192110192117%_)))
                                    (let ((_%$%hd192114192128%_
                                           (##car _%$%e192113192125%_))
                                          (_%$%tl192115192130%_
                                           (##cdr _%$%e192113192125%_)))
                                      (let ((_%spath192133%_
                                             _%$%tl192115192130%_))
                                        (_%import1191836%_
                                         (_%import-spec-source191840%_
                                          _%spath192133%_)
                                         _%K192107%_
                                         _%rest192108%_
                                         _%r192109%_))))
                                  (_%$%E192112192121%_)))))
                      (_%$%E192111192135%_))))
                 (_%import-runtime191838%_
                  (lambda (_%hd192073%_ _%K192074%_ _%rest192075%_ _%r192076%_)
                    (let* ((_%$%e192077192084%_ _%hd192073%_)
                           (_%$%E192079192088%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%$%e192077192084%_)))
                           (_%$%E192078192102%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e192077192084%_)
                                  (let ((_%$%e192080192092%_
                                         (gx#syntax-e _%$%e192077192084%_)))
                                    (let ((_%$%hd192081192095%_
                                           (##car _%$%e192080192092%_))
                                          (_%$%tl192082192097%_
                                           (##cdr _%$%e192080192092%_)))
                                      (let ((_%spath192100%_
                                             _%$%tl192082192097%_))
                                        (_%K192074%_
                                         _%rest192075%_
                                         (cons (_%import-spec-source191840%_
                                                _%spath192100%_)
                                               _%r192076%_)))))
                                  (_%$%E192079192088%_)))))
                      (_%$%E192078192102%_))))
                 (_%import-spec191839%_
                  (lambda (_%hd191911%_ _%K191912%_ _%rest191913%_ _%r191914%_)
                    (let* ((_%$%e191915191932%_ _%hd191911%_)
                           (_%$%E191924191936%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%$%e191915191932%_)))
                           (_%$%E191917192047%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e191915191932%_)
                                  (let ((_%$%e191925191940%_
                                         (gx#syntax-e _%$%e191915191932%_)))
                                    (let ((_%$%hd191926191943%_
                                           (##car _%$%e191925191940%_))
                                          (_%$%tl191927191945%_
                                           (##cdr _%$%e191925191940%_)))
                                      (if (gx#stx-pair? _%$%tl191927191945%_)
                                          (let ((_%$%e191928191948%_
                                                 (gx#syntax-e
                                                  _%$%tl191927191945%_)))
                                            (let ((_%$%hd191929191951%_
                                                   (##car _%$%e191928191948%_))
                                                  (_%$%tl191930191953%_
                                                   (##cdr _%$%e191928191948%_)))
                                              (let* ((_%path191956%_
                                                      _%$%hd191929191951%_)
                                                     (_%specs191958%_
                                                      _%$%tl191930191953%_))
                                                (let ((_%src-ctx191960%_
                                                       (_%import-spec-source191840%_
                                                        _%path191956%_))
                                                      (_%exports191961%_
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
                                                      (_%specs191962%_
                                                       (gx#syntax->list
                                                        _%specs191958%_)))
                                                  (for-each
                                                   (lambda (_%out191964%_)
                                                     (__hash-put!
                                                      _%exports191961%_
                                                      (cons (##unchecked-structure-ref
                                                             _%out191964%_
                                                             '3
                                                             '#f
                                                             '#f)
                                                            (##unchecked-structure-ref
                                                             _%out191964%_
                                                             '4
                                                             '#f
                                                             '#f))
                                                      _%out191964%_))
                                                   (##unchecked-structure-ref
                                                    _%src-ctx191960%_
                                                    '9
                                                    '#f
                                                    '#f))
                                                  (_%K191912%_
                                                   _%rest191913%_
                                                   (foldl__0
                                                    (lambda (_%spec191966%_
                                                             _%r191967%_)
                                                      (let* ((_%$%e191968191984%_
                                                              _%spec191966%_)
                                                             (_%$%E191970191988%_
                                                              (lambda ()
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid syntax-case clause"
                         _%$%e191968191984%_)))
                     (_%$%E191969192043%_
                      (lambda ()
                        (if (gx#stx-pair? _%$%e191968191984%_)
                            (let ((_%$%e191971191992%_
                                   (gx#syntax-e _%$%e191968191984%_)))
                              (let ((_%$%hd191972191995%_
                                     (##car _%$%e191971191992%_))
                                    (_%$%tl191973191997%_
                                     (##cdr _%$%e191971191992%_)))
                                (let ((_%phi192000%_ _%$%hd191972191995%_))
                                  (if (gx#stx-pair? _%$%tl191973191997%_)
                                      (let ((_%$%e191974192002%_
                                             (gx#syntax-e
                                              _%$%tl191973191997%_)))
                                        (let ((_%$%hd191975192005%_
                                               (##car _%$%e191974192002%_))
                                              (_%$%tl191976192007%_
                                               (##cdr _%$%e191974192002%_)))
                                          (let ((_%name192010%_
                                                 _%$%hd191975192005%_))
                                            (if (gx#stx-pair?
                                                 _%$%tl191976192007%_)
                                                (let ((_%$%e191977192012%_
                                                       (gx#syntax-e
                                                        _%$%tl191976192007%_)))
                                                  (let ((_%$%hd191978192015%_
                                                         (##car _%$%e191977192012%_))
                                                        (_%$%tl191979192017%_
                                                         (##cdr _%$%e191977192012%_)))
                                                    (let ((_%src-phi192020%_
                                                           _%$%hd191978192015%_))
                                                      (if (gx#stx-pair?
                                                           _%$%tl191979192017%_)
                                                          (let ((_%$%e191980192022%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl191979192017%_)))
                    (let ((_%$%hd191981192025%_ (##car _%$%e191980192022%_))
                          (_%$%tl191982192027%_ (##cdr _%$%e191980192022%_)))
                      (let ((_%src-name192030%_ _%$%hd191981192025%_))
                        (if (gx#stx-null? _%$%tl191982192027%_)
                            (if (and (gx#stx-fixnum? _%src-phi192020%_)
                                     (gx#identifier? _%src-name192030%_)
                                     (gx#stx-fixnum? _%phi192000%_)
                                     (gx#identifier? _%name192010%_))
                                (let ((_%src-phi192032%_
                                       (gx#stx-e _%src-phi192020%_))
                                      (_%src-name192033%_
                                       (gx#core-identifier-key
                                        _%src-name192030%_))
                                      (_%phi192034%_ (gx#stx-e _%phi192000%_))
                                      (_%name192035%_
                                       (gx#core-identifier-key
                                        _%name192010%_)))
                                  (let ((_%$e192037%_
                                         (__hash-get
                                          _%exports191961%_
                                          (cons _%src-phi192032%_
                                                _%src-name192033%_))))
                                    (if _%$e192037%_
                                        (cons (gx#core-module-export->import__%
                                               _%$e192037%_
                                               _%name192035%_
                                               (fx- _%phi192034%_
                                                    _%src-phi192032%_))
                                              _%r191967%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; no matching export"
                                         _%stx191832%_
                                         _%hd191911%_))))
                                (_%$%E191970191988%_))
                            (_%$%E191970191988%_)))))
                  (_%$%E191970191988%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%E191970191988%_)))))
                                      (_%$%E191970191988%_)))))
                            (_%$%E191970191988%_)))))
                (_%$%E191969192043%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r191914%_
                                                    _%specs191962%_))))))
                                          (_%$%E191924191936%_))))
                                  (_%$%E191924191936%_))))
                           (_%$%E191916192069%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e191915191932%_)
                                  (let ((_%$%e191918192051%_
                                         (gx#syntax-e _%$%e191915191932%_)))
                                    (let ((_%$%hd191919192054%_
                                           (##car _%$%e191918192051%_))
                                          (_%$%tl191920192056%_
                                           (##cdr _%$%e191918192051%_)))
                                      (if (gx#stx-pair? _%$%tl191920192056%_)
                                          (let ((_%$%e191921192059%_
                                                 (gx#syntax-e
                                                  _%$%tl191920192056%_)))
                                            (let ((_%$%hd191922192062%_
                                                   (##car _%$%e191921192059%_))
                                                  (_%$%tl191923192064%_
                                                   (##cdr _%$%e191921192059%_)))
                                              (let ((_%path192067%_
                                                     _%$%hd191922192062%_))
                                                (if (gx#stx-null?
                                                     _%$%tl191923192064%_)
                                                    (_%K191912%_
                                                     _%rest191913%_
                                                     (cons (_%import-spec-source191840%_
                                                            _%path192067%_)
                                                           _%r191914%_))
                                                    (_%$%E191917192047%_)))))
                                          (_%$%E191917192047%_))))
                                  (_%$%E191917192047%_)))))
                      (_%$%E191916192069%_))))
                 (_%import-spec-source191840%_
                  (lambda (_%spath191909%_)
                    (gx#core-import-nested-module
                     _%spath191909%_
                     _%stx191832%_)))
                 (_%import!191841%_
                  (lambda (_%rbody191854%_)
                    (letrec* ((_%current-ctx191856%_
                               (gx#current-expander-context))
                              (_%deps191857%_ (make-hash-table-eq))
                              (_%bind!191858%_
                               (lambda (_%hd191907%_)
                                 (gx#core-bind-import!__1
                                  _%hd191907%_
                                  _%current-ctx191856%_))))
                      (let _%lp191860%_ ((_%rest191862%_ _%rbody191854%_)
                                         (_%body191863%_ '()))
                        (let* ((_%$%rest191864191872%_ _%rest191862%_)
                               (_%$%else191866191883%_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _%current-ctx191856%_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _%current-ctx191856%_
                                       (foldl__0
                                        cons
                                        (##unchecked-structure-ref
                                         _%current-ctx191856%_
                                         '8
                                         '#f
                                         '#f)
                                        _%body191863%_)
                                       '8
                                       '#f
                                       '#f)
                                      '#!void)
                                  (__hash-for-each
                                   (lambda (_%ctx191880%_ _%_191881%_)
                                     (gx#eval-module _%ctx191880%_))
                                   _%deps191857%_)
                                  _%body191863%_))
                               (_%$%K191868191895%_
                                (lambda (_%rest191886%_ _%hd191887%_)
                                  (if (##structure-direct-instance-of?
                                       _%hd191887%_
                                       'gx#module-import::t)
                                      (let ()
                                        (_%bind!191858%_ _%hd191887%_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _%hd191887%_
                                                   '3
                                                   '#f
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _%hd191887%_
                                                            '1
                                                            '#f
                                                            '#f)
                                                           '3
                                                           '#f
                                                           '#f)))
                                            (__hash-put!
                                             _%deps191857%_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _%hd191887%_
                                               '1
                                               '#f
                                               '#f)
                                              '1
                                              '#f
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _%hd191887%_
                                           'gx#import-set::t)
                                          (let ()
                                            (for-each
                                             _%bind!191858%_
                                             (##unchecked-structure-ref
                                              _%hd191887%_
                                              '3
                                              '#f
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _%hd191887%_
                                                  '2
                                                  '#f
                                                  '#f))
                                                (__hash-put!
                                                 _%deps191857%_
                                                 (##unchecked-structure-ref
                                                  _%hd191887%_
                                                  '1
                                                  '#f
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_%$e191891%_
                                                 (##structure-instance-of?
                                                  _%hd191887%_
                                                  'gx#module-context::t)))
                                            (if _%$e191891%_
                                                _%$e191891%_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _%stx191832%_
                                                 _%hd191887%_)))))
                                  (_%lp191860%_
                                   _%rest191886%_
                                   (cons _%hd191887%_ _%body191863%_)))))
                          (if (pair? _%$%rest191864191872%_)
                              (let ((_%$%hd191869191898%_
                                     (##car _%$%rest191864191872%_))
                                    (_%$%tl191870191900%_
                                     (##cdr _%$%rest191864191872%_)))
                                (let* ((_%hd191903%_ _%$%hd191869191898%_)
                                       (_%rest191905%_ _%$%tl191870191900%_))
                                  (_%$%K191868191895%_
                                   _%rest191905%_
                                   _%hd191903%_)))
                              (_%$%else191866191883%_)))))))
                 (_%expanded-import?191842%_
                  (lambda (_%e191846%_)
                    (let ((_%$e191848%_
                           (##structure-direct-instance-of?
                            _%e191846%_
                            'gx#import-set::t)))
                      (if _%$e191848%_
                          _%$e191848%_
                          (let ((_%$e191851%_
                                 (##structure-direct-instance-of?
                                  _%e191846%_
                                  'gx#module-import::t)))
                            (if _%$e191851%_
                                _%$e191851%_
                                (##structure-instance-of?
                                 _%e191846%_
                                 'gx#module-context::t))))))))
          (let ((_%rbody191844%_
                 (gx#core-expand-import/export
                  _%stx191832%_
                  _%expanded-import?191842%_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _%expand1191835%_)))
            (if _%internal-expand?191833%_
                (reverse _%rbody191844%_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_%import!191841%_ _%rbody191844%_))
                 (gx#stx-source _%stx191832%_)))))))
    (define gx#core-expand-import%__0
      (lambda (_%stx192171%_)
        (let ((_%internal-expand?192173%_ '#f))
          (gx#core-expand-import%__%
           _%stx192171%_
           _%internal-expand?192173%_))))
    (define gx#core-expand-import%
      (lambda _g194929_
        (let ((_g194930_ (##length _g194929_)))
          (cond ((##fx= _g194930_ 1)
                 (apply gx#core-expand-import%__0 _g194929_))
                ((##fx= _g194930_ 2)
                 (apply gx#core-expand-import%__% _g194929_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g194929_))))))
    (define gx#core-import-nested-module
      (lambda (_%spath191759%_ _%where191760%_)
        (let* ((_%$%e191761191768%_ _%spath191759%_)
               (_%$%E191763191772%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e191761191768%_)))
               (_%$%E191762191827%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e191761191768%_)
                      (let ((_%$%e191764191776%_
                             (gx#syntax-e _%$%e191761191768%_)))
                        (let ((_%$%hd191765191779%_
                               (##car _%$%e191764191776%_))
                              (_%$%tl191766191781%_
                               (##cdr _%$%e191764191776%_)))
                          (let* ((_%origin191784%_ _%$%hd191765191779%_)
                                 (_%sub191786%_ _%$%tl191766191781%_)
                                 (_%origin-ctx191788%_
                                  (if (gx#stx-false? _%origin191784%_)
                                      (gx#current-expander-context)
                                      (gx#import-module__0 _%origin191784%_))))
                            (let _%lp191790%_ ((_%rest191792%_ _%sub191786%_)
                                               (_%ctx191793%_
                                                _%origin-ctx191788%_))
                              (let* ((_%$%e191794191801%_ _%rest191792%_)
                                     (_%$%E191796191805%_
                                      (lambda () _%ctx191793%_))
                                     (_%$%E191795191823%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%$%e191794191801%_)
                                            (let ((_%$%e191797191809%_
                                                   (gx#syntax-e
                                                    _%$%e191794191801%_)))
                                              (let ((_%$%hd191798191812%_
                                                     (##car _%$%e191797191809%_))
                                                    (_%$%tl191799191814%_
                                                     (##cdr _%$%e191797191809%_)))
                                                (let* ((_%id191817%_
                                                        _%$%hd191798191812%_)
                                                       (_%rest191819%_
                                                        _%$%tl191799191814%_)
                                                       (_%bind191821%_
                                                        (gx#resolve-identifier__%
                                                         _%id191817%_
                                                         '0
                                                         _%ctx191793%_)))
                                                  (if (and (##structure-direct-instance-of?
                                                            _%bind191821%_
                                                            'gx#syntax-binding::t)
                                                           (##structure-instance-of?
                                                            (##unchecked-structure-ref
                                                             _%bind191821%_
                                                             '5
                                                             '#f
                                                             '#f)
                                                            'gx#module-context::t))
                                                      '#!void
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; not bound as module"
                                                       _%where191760%_
                                                       _%spath191759%_
                                                       _%id191817%_))
                                                  (_%lp191790%_
                                                   _%rest191819%_
                                                   (##unchecked-structure-ref
                                                    _%bind191821%_
                                                    '5
                                                    '#f
                                                    '#f)))))
                                            (_%$%E191796191805%_)))))
                                (_%$%E191795191823%_))))))
                      (_%$%E191763191772%_)))))
          (_%$%E191762191827%_))))
    (define gx#core-expand-import-source
      (lambda (_%hd191757%_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _%hd191757%_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_%stx191252%_ _%internal-expand?191253%_)
        (letrec* ((_%make-export__194857194858%_
                   (lambda (_%bind191705%_
                            _%phi191706%_
                            _%ctx191707%_
                            _%name191708%_)
                     (let* ((_%key191710%_
                             (##unchecked-structure-ref
                              _%bind191705%_
                              '2
                              '#f
                              '#f))
                            (_%export-key191712%_
                             (if _%name191708%_
                                 (gx#core-identifier-key _%name191708%_)
                                 _%key191710%_)))
                       (##structure
                        gx#module-export::t
                        _%ctx191707%_
                        _%key191710%_
                        _%phi191706%_
                        _%export-key191712%_
                        (let ((_%$e191715%_
                               (##structure-instance-of?
                                _%bind191705%_
                                'gx#extern-binding::t)))
                          (if _%$e191715%_
                              _%$e191715%_
                              (##structure-direct-instance-of?
                               _%bind191705%_
                               'gx#import-binding::t)))))))
                  (_%make-export__0__194859194862%_
                   (lambda (_%bind191721%_)
                     (let* ((_%phi191723%_ (gx#current-export-expander-phi))
                            (_%ctx191725%_ (gx#current-expander-context))
                            (_%name191727%_ '#f))
                       (_%make-export__194857194858%_
                        _%bind191721%_
                        _%phi191723%_
                        _%ctx191725%_
                        _%name191727%_))))
                  (_%make-export__1__194860194863%_
                   (lambda (_%bind191729%_ _%phi191730%_)
                     (let* ((_%ctx191732%_ (gx#current-expander-context))
                            (_%name191734%_ '#f))
                       (_%make-export__194857194858%_
                        _%bind191729%_
                        _%phi191730%_
                        _%ctx191732%_
                        _%name191734%_))))
                  (_%make-export__2__194861194864%_
                   (lambda (_%bind191736%_ _%phi191737%_ _%ctx191738%_)
                     (let ((_%name191740%_ '#f))
                       (_%make-export__194857194858%_
                        _%bind191736%_
                        _%phi191737%_
                        _%ctx191738%_
                        _%name191740%_))))
                  (_%make-export191255%_
                   (lambda _g194931_
                     (let ((_g194932_ (##length _g194931_)))
                       (cond ((##fx= _g194932_ 1)
                              (apply _%make-export__0__194859194862%_
                                     _g194931_))
                             ((##fx= _g194932_ 2)
                              (apply _%make-export__1__194860194863%_
                                     _g194931_))
                             ((##fx= _g194932_ 3)
                              (apply _%make-export__2__194861194864%_
                                     _g194931_))
                             ((##fx= _g194932_ 4)
                              (apply _%make-export__194857194858%_ _g194931_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g194931_))))))
                  (_%expand1191256%_
                   (lambda (_%hd191410%_
                            _%K191411%_
                            _%rest191412%_
                            _%r191413%_)
                     (let* ((_%$%e191414191446%_ _%hd191410%_)
                            (_%$%E191441191450%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _%stx191252%_
                                _%hd191410%_)))
                            (_%$%E191431191534%_
                             (lambda ()
                               (if (gx#stx-pair? _%$%e191414191446%_)
                                   (let ((_%$%e191442191454%_
                                          (gx#syntax-e _%$%e191414191446%_)))
                                     (let ((_%$%hd191443191457%_
                                            (##car _%$%e191442191454%_))
                                           (_%$%tl191444191459%_
                                            (##cdr _%$%e191442191454%_)))
                                       (if (eq? (gx#stx-e _%$%hd191443191457%_)
                                                'import:)
                                           (let ((_%in191462%_
                                                  _%$%tl191444191459%_))
                                             (if (gx#stx-list? _%in191462%_)
                                                 (let _%lp191464%_ ((_%in-rest191466%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%in191462%_)
                            (_%r191467%_ _%r191413%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%$%e191468191475%_
                                                           _%in-rest191466%_)
                                                          (_%$%E191470191479%_
                                                           (lambda ()
                                                             (_%K191411%_
                                                              _%rest191412%_
                                                              _%r191467%_)))
                                                          (_%$%E191469191530%_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%e191468191475%_)
                         (let ((_%$%e191471191483%_
                                (gx#syntax-e _%$%e191468191475%_)))
                           (let ((_%$%hd191472191486%_
                                  (##car _%$%e191471191483%_))
                                 (_%$%tl191473191488%_
                                  (##cdr _%$%e191471191483%_)))
                             (let* ((_%hd191491%_ _%$%hd191472191486%_)
                                    (_%in-rest191493%_ _%$%tl191473191488%_)
                                    (_%src191528%_
                                     (if (gx#core-bound-module? _%hd191491%_)
                                         (gx#syntax-local-e__0 _%hd191491%_)
                                         (if (gx#core-library-module-path?
                                              _%hd191491%_)
                                             (gx#import-module__0
                                              (gx#core-resolve-library-module-path
                                               _%hd191491%_))
                                             (if (gx#core-library-relative-module-path?
                                                  _%hd191491%_)
                                                 (gx#import-module__0
                                                  (gx#core-resolve-library-relative-module-path
                                                   _%hd191491%_))
                                                 (if (gx#stx-string?
                                                      _%hd191491%_)
                                                     (gx#import-module__0
                                                      (gx#core-resolve-module-path__%
                                                       _%hd191491%_
                                                       (gx#stx-source
                                                        _%stx191252%_)))
                                                     (let* ((_%$%e191499191506%_
                                                             _%hd191491%_)
                                                            (_%$%E191501191510%_
                                                             (lambda ()
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; illegal re-export"
                                                                _%stx191252%_
                                                                _%hd191491%_)))
                                                            (_%$%E191500191524%_
                                                             (lambda ()
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%e191499191506%_)
                           (let ((_%$%e191502191514%_
                                  (gx#syntax-e _%$%e191499191506%_)))
                             (let ((_%$%hd191503191517%_
                                    (##car _%$%e191502191514%_))
                                   (_%$%tl191504191519%_
                                    (##cdr _%$%e191502191514%_)))
                               (if (eq? (gx#stx-e _%$%hd191503191517%_) 'in:)
                                   (let ((_%spath191522%_
                                          _%$%tl191504191519%_))
                                     (gx#core-import-nested-module
                                      _%spath191522%_
                                      _%stx191252%_))
                                   (_%$%E191501191510%_))))
                           (_%$%E191501191510%_)))))
               (_%$%E191500191524%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (_%lp191464%_
                                _%in-rest191493%_
                                (_%export-imports191257%_
                                 _%src191528%_
                                 _%r191467%_)))))
                         (_%$%E191470191479%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%E191469191530%_)))
                                                 (_%$%E191441191450%_)))
                                           (_%$%E191441191450%_))))
                                   (_%$%E191441191450%_))))
                            (_%$%E191418191574%_
                             (lambda ()
                               (if (gx#stx-pair? _%$%e191414191446%_)
                                   (let ((_%$%e191432191538%_
                                          (gx#syntax-e _%$%e191414191446%_)))
                                     (let ((_%$%hd191433191541%_
                                            (##car _%$%e191432191538%_))
                                           (_%$%tl191434191543%_
                                            (##cdr _%$%e191432191538%_)))
                                       (if (eq? (gx#stx-e _%$%hd191433191541%_)
                                                'rename:)
                                           (if (gx#stx-pair?
                                                _%$%tl191434191543%_)
                                               (let ((_%$%e191435191546%_
                                                      (gx#syntax-e
                                                       _%$%tl191434191543%_)))
                                                 (let ((_%$%hd191436191549%_
                                                        (##car _%$%e191435191546%_))
                                                       (_%$%tl191437191551%_
                                                        (##cdr _%$%e191435191546%_)))
                                                   (let ((_%id191554%_
                                                          _%$%hd191436191549%_))
                                                     (if (gx#stx-pair?
                                                          _%$%tl191437191551%_)
                                                         (let ((_%$%e191438191556%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%tl191437191551%_)))
                   (let ((_%$%hd191439191559%_ (##car _%$%e191438191556%_))
                         (_%$%tl191440191561%_ (##cdr _%$%e191438191556%_)))
                     (let ((_%name191564%_ _%$%hd191439191559%_))
                       (if (gx#stx-null? _%$%tl191440191561%_)
                           (let* ((_%phi191566%_
                                   (gx#current-export-expander-phi))
                                  (_%$e191568%_
                                   (gx#core-resolve-identifier__1
                                    _%id191554%_
                                    _%phi191566%_)))
                             (if _%$e191568%_
                                 (_%K191411%_
                                  _%rest191412%_
                                  (cons (_%make-export__194857194858%_
                                         _%$e191568%_
                                         _%phi191566%_
                                         (gx#current-expander-context)
                                         _%name191564%_)
                                        _%r191413%_))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Reference to unbound identifier"
                                  _%stx191252%_
                                  _%hd191410%_
                                  _%id191554%_)))
                           (_%$%E191431191534%_)))))
                 (_%$%E191431191534%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%E191431191534%_))
                                           (_%$%E191431191534%_))))
                                   (_%$%E191431191534%_))))
                            (_%$%E191417191624%_
                             (lambda ()
                               (if (gx#stx-pair? _%$%e191414191446%_)
                                   (let ((_%$%e191419191578%_
                                          (gx#syntax-e _%$%e191414191446%_)))
                                     (let ((_%$%hd191420191581%_
                                            (##car _%$%e191419191578%_))
                                           (_%$%tl191421191583%_
                                            (##cdr _%$%e191419191578%_)))
                                       (if (eq? (gx#stx-e _%$%hd191420191581%_)
                                                'spec:)
                                           (if (gx#stx-pair?
                                                _%$%tl191421191583%_)
                                               (let ((_%$%e191422191586%_
                                                      (gx#syntax-e
                                                       _%$%tl191421191583%_)))
                                                 (let ((_%$%hd191423191589%_
                                                        (##car _%$%e191422191586%_))
                                                       (_%$%tl191424191591%_
                                                        (##cdr _%$%e191422191586%_)))
                                                   (let ((_%phi191594%_
                                                          _%$%hd191423191589%_))
                                                     (if (gx#stx-pair?
                                                          _%$%tl191424191591%_)
                                                         (let ((_%$%e191425191596%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%tl191424191591%_)))
                   (let ((_%$%hd191426191599%_ (##car _%$%e191425191596%_))
                         (_%$%tl191427191601%_ (##cdr _%$%e191425191596%_)))
                     (let ((_%id191604%_ _%$%hd191426191599%_))
                       (if (gx#stx-pair? _%$%tl191427191601%_)
                           (let ((_%$%e191428191606%_
                                  (gx#syntax-e _%$%tl191427191601%_)))
                             (let ((_%$%hd191429191609%_
                                    (##car _%$%e191428191606%_))
                                   (_%$%tl191430191611%_
                                    (##cdr _%$%e191428191606%_)))
                               (let ((_%name191614%_ _%$%hd191429191609%_))
                                 (if (gx#stx-null? _%$%tl191430191611%_)
                                     (if (and (gx#stx-fixnum? _%phi191594%_)
                                              (gx#identifier? _%id191604%_)
                                              (gx#identifier? _%name191614%_))
                                         (let* ((_%phi191616%_
                                                 (gx#stx-e _%phi191594%_))
                                                (_%$e191618%_
                                                 (gx#core-resolve-identifier__1
                                                  _%id191604%_
                                                  _%phi191616%_)))
                                           (if _%$e191618%_
                                               (_%K191411%_
                                                _%rest191412%_
                                                (cons (_%make-export__194857194858%_
                                                       _%$e191618%_
                                                       _%phi191616%_
                                                       (gx#current-expander-context)
                                                       _%name191614%_)
                                                      _%r191413%_))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _%stx191252%_
                                                _%hd191410%_
                                                _%id191604%_)))
                                         (_%$%E191418191574%_))
                                     (_%$%E191418191574%_)))))
                           (_%$%E191418191574%_)))))
                 (_%$%E191418191574%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%E191418191574%_))
                                           (_%$%E191418191574%_))))
                                   (_%$%E191418191574%_))))
                            (_%$%E191416191636%_
                             (lambda ()
                               (let ((_%id191628%_ _%$%e191414191446%_))
                                 (if (gx#identifier? _%id191628%_)
                                     (let ((_%$e191630%_
                                            (gx#core-resolve-identifier__1
                                             _%id191628%_
                                             (gx#current-export-expander-phi))))
                                       (if _%$e191630%_
                                           (_%K191411%_
                                            _%rest191412%_
                                            (cons (_%make-export__0__194859194862%_
                                                   _%$e191630%_)
                                                  _%r191413%_))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _%stx191252%_
                                            _%hd191410%_)))
                                     (_%$%E191417191624%_)))))
                            (_%$%E191415191700%_
                             (lambda ()
                               (if (eq? (gx#stx-e _%$%e191414191446%_) '#t)
                                   (let* ((_%current-ctx191640%_
                                           (gx#current-expander-context))
                                          (_%current-phi191642%_
                                           (gx#current-export-expander-phi))
                                          (_%phi-ctx191644%_
                                           (gx#core-context-shift
                                            _%current-ctx191640%_
                                            _%current-phi191642%_))
                                          (_%phi-bind191646%_
                                           (hash->list
                                            (##unchecked-structure-ref
                                             _%phi-ctx191644%_
                                             '2
                                             '#f
                                             '#f))))
                                     (let _%lp191649%_ ((_%bind-rest191651%_
                                                         _%phi-bind191646%_)
                                                        (_%set191652%_ '()))
                                       (let* ((_%$%bind-rest191653191663%_
                                               _%bind-rest191651%_)
                                              (_%$%else191655191671%_
                                               (lambda ()
                                                 (_%K191411%_
                                                  _%rest191412%_
                                                  (cons (##structure
                                                         gx#export-set::t
                                                         '#f
                                                         _%current-phi191642%_
                                                         _%set191652%_)
                                                        _%r191413%_))))
                                              (_%$%K191657191681%_
                                               (lambda (_%bind-rest191674%_
                                                        _%bind191675%_
                                                        _%key191676%_)
                                                 (if (or (##structure-direct-instance-of?
                                                          _%bind191675%_
                                                          'gx#import-binding::t)
                                                         (gx#private-feature-binding?
                                                          _%bind191675%_))
                                                     (_%lp191649%_
                                                      _%bind-rest191674%_
                                                      _%set191652%_)
                                                     (_%lp191649%_
                                                      _%bind-rest191674%_
                                                      (cons (_%make-export__2__194861194864%_
                                                             _%bind191675%_
                                                             _%current-phi191642%_
                                                             _%current-ctx191640%_)
                                                            _%set191652%_))))))
                                         (if (pair? _%$%bind-rest191653191663%_)
                                             (let ((_%$%hd191658191684%_
                                                    (##car _%$%bind-rest191653191663%_))
                                                   (_%$%tl191659191686%_
                                                    (##cdr _%$%bind-rest191653191663%_)))
                                               (if (pair? _%$%hd191658191684%_)
                                                   (let ((_%$%hd191660191689%_
                                                          (##car _%$%hd191658191684%_))
                                                         (_%$%tl191661191691%_
                                                          (##cdr _%$%hd191658191684%_)))
                                                     (let* ((_%key191694%_
                                                             _%$%hd191660191689%_)
                                                            (_%bind191696%_
                                                             _%$%tl191661191691%_)
                                                            (_%bind-rest191698%_
                                                             _%$%tl191659191686%_))
                                                       (_%$%K191657191681%_
                                                        _%bind-rest191698%_
                                                        _%bind191696%_
                                                        _%key191694%_)))
                                                   (_%$%else191655191671%_)))
                                             (_%$%else191655191671%_)))))
                                   (_%$%E191416191636%_)))))
                       (_%$%E191415191700%_))))
                  (_%export-imports191257%_
                   (lambda (_%src191287%_ _%r191288%_)
                     (letrec* ((_%current-ctx191290%_
                                (gx#current-expander-context))
                               (_%current-phi191291%_
                                (gx#current-export-expander-phi))
                               (_%import->export191292%_
                                (lambda (_%in191373%_)
                                  (let* ((_%$%in191374191382%_ _%in191373%_)
                                         (_%$%E191376191385%_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _%$%in191374191382%_
                                                   '((module-import
                                                      out
                                                      key
                                                      phi)))
                                            '#!void))
                                         (_%$%K191377191392%_
                                          (lambda (_%phi191388%_
                                                   _%key191389%_
                                                   _%out191390%_)
                                            (##structure
                                             gx#module-export::t
                                             _%current-ctx191290%_
                                             _%key191389%_
                                             _%phi191388%_
                                             _%key191389%_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _%$%in191374191382%_
                                         'gx#module-import::t)
                                        (let* ((_%$%e191378191395%_
                                                (##unchecked-structure-ref
                                                 _%$%in191374191382%_
                                                 '1
                                                 '#f
                                                 '#f))
                                               (_%out191398%_
                                                _%$%e191378191395%_)
                                               (_%$%e191379191400%_
                                                (##unchecked-structure-ref
                                                 _%$%in191374191382%_
                                                 '2
                                                 '#f
                                                 '#f))
                                               (_%key191403%_
                                                _%$%e191379191400%_)
                                               (_%$%e191380191405%_
                                                (##unchecked-structure-ref
                                                 _%$%in191374191382%_
                                                 '3
                                                 '#f
                                                 '#f))
                                               (_%phi191408%_
                                                _%$%e191380191405%_))
                                          (_%$%K191377191392%_
                                           _%phi191408%_
                                           _%key191403%_
                                           _%out191398%_))
                                        (_%$%E191376191385%_)))))
                               (_%fold-e191293%_
                                (lambda (_%in191295%_ _%r191296%_)
                                  (let* ((_%$%in191297191311%_ _%in191295%_)
                                         (_%$%else191300191319%_
                                          (lambda () _%r191296%_)))
                                    (let ((_%$%K191306191355%_
                                           (lambda (_%phi191351%_
                                                    _%key191352%_
                                                    _%out191353%_)
                                             (if (and (fx= _%phi191351%_
                                                           _%current-phi191291%_)
                                                      (eq? _%src191287%_
                                                           (##unchecked-structure-ref
                                                            _%out191353%_
                                                            '1
                                                            '#f
                                                            '#f)))
                                                 (cons (_%import->export191292%_
                                                        _%in191295%_)
                                                       _%r191296%_)
                                                 _%r191296%_)))
                                          (_%$%K191302191330%_
                                           (lambda (_%imports191323%_
                                                    _%phi191324%_
                                                    _%ctx191325%_)
                                             (if (and (fx= _%phi191324%_
                                                           _%current-phi191291%_)
                                                      (eq? _%src191287%_
                                                           _%ctx191325%_))
                                                 (foldl__0
                                                  (lambda (_%in191327%_
                                                           _%r191328%_)
                                                    (cons (_%import->export191292%_
                                                           _%in191327%_)
                                                          _%r191328%_))
                                                  _%r191296%_
                                                  _%imports191323%_)
                                                 _%r191296%_))))
                                      (let ((_%$%try-match191299191348%_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _%$%in191297191311%_
                                                    'gx#import-set::t)
                                                   (let* ((_%$%e191303191333%_
                                                           (##unchecked-structure-ref
                                                            _%$%in191297191311%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                          (_%$%e191304191338%_
                                                           (##unchecked-structure-ref
                                                            _%$%in191297191311%_
                                                            '2
                                                            '#f
                                                            '#f))
                                                          (_%$%e191305191343%_
                                                           (##unchecked-structure-ref
                                                            _%$%in191297191311%_
                                                            '3
                                                            '#f
                                                            '#f)))
                                                     (let ((_%ctx191336%_
                                                            _%$%e191303191333%_)
                                                           (_%phi191341%_
                                                            _%$%e191304191338%_)
                                                           (_%imports191346%_
                                                            _%$%e191305191343%_))
                                                       (_%$%K191302191330%_
                                                        _%imports191346%_
                                                        _%phi191341%_
                                                        _%ctx191336%_)))
                                                   (_%$%else191300191319%_)))))
                                        (if (##structure-direct-instance-of?
                                             _%$%in191297191311%_
                                             'gx#module-import::t)
                                            (let* ((_%$%e191307191358%_
                                                    (##unchecked-structure-ref
                                                     _%$%in191297191311%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                   (_%$%e191308191363%_
                                                    (##unchecked-structure-ref
                                                     _%$%in191297191311%_
                                                     '2
                                                     '#f
                                                     '#f))
                                                   (_%$%e191309191368%_
                                                    (##unchecked-structure-ref
                                                     _%$%in191297191311%_
                                                     '3
                                                     '#f
                                                     '#f)))
                                              (let ((_%out191361%_
                                                     _%$%e191307191358%_)
                                                    (_%key191366%_
                                                     _%$%e191308191363%_)
                                                    (_%phi191371%_
                                                     _%$%e191309191368%_))
                                                (_%$%K191306191355%_
                                                 _%phi191371%_
                                                 _%key191366%_
                                                 _%out191361%_)))
                                            (_%$%try-match191299191348%_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _%src191287%_
                              _%current-phi191291%_
                              (foldl__0
                               _%fold-e191293%_
                               '()
                               (##unchecked-structure-ref
                                _%current-ctx191290%_
                                '8
                                '#f
                                '#f)))
                             _%r191288%_))))
                  (_%export!191258%_
                   (lambda (_%rbody191274%_)
                     (letrec* ((_%current-ctx191276%_
                                (gx#current-expander-context))
                               (_%fold-e191277%_
                                (lambda (_%out191281%_ _%r191282%_)
                                  (if (##structure-direct-instance-of?
                                       _%out191281%_
                                       'gx#module-export::t)
                                      (cons _%out191281%_ _%r191282%_)
                                      (if (##structure-direct-instance-of?
                                           _%out191281%_
                                           'gx#export-set::t)
                                          (foldl__0
                                           cons
                                           _%r191282%_
                                           (##unchecked-structure-ref
                                            _%out191281%_
                                            '3
                                            '#f
                                            '#f))
                                          _%r191282%_)))))
                       (let ((_%body191279%_ (reverse _%rbody191274%_)))
                         (##unchecked-structure-set!
                          _%current-ctx191276%_
                          (foldl__0
                           _%fold-e191277%_
                           (##unchecked-structure-ref
                            _%current-ctx191276%_
                            '9
                            '#f
                            '#f)
                           _%body191279%_)
                          '9
                          '#f
                          '#f)
                         _%body191279%_))))
                  (_%expanded-export?191259%_
                   (lambda (_%e191269%_)
                     (let ((_%$e191271%_
                            (##structure-direct-instance-of?
                             _%e191269%_
                             'gx#module-export::t)))
                       (if _%$e191271%_
                           _%$e191271%_
                           (##structure-direct-instance-of?
                            _%e191269%_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _%internal-expand?191253%_)
              (let ((_%rbody191265%_
                     (gx#core-expand-import/export
                      _%stx191252%_
                      _%expanded-export?191259%_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _%expand1191256%_)))
                (if _%internal-expand?191253%_
                    (reverse _%rbody191265%_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons
                      '%#export
                      (_%export!191258%_ _%rbody191265%_))
                     (gx#stx-source _%stx191252%_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _%stx191252%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _%stx191252%_))))))
    (define gx#core-expand-export%__0
      (lambda (_%stx191750%_)
        (let ((_%internal-expand?191752%_ '#f))
          (gx#core-expand-export%__%
           _%stx191750%_
           _%internal-expand?191752%_))))
    (define gx#core-expand-export%
      (lambda _g194933_
        (let ((_g194934_ (##length _g194933_)))
          (cond ((##fx= _g194934_ 1)
                 (apply gx#core-expand-export%__0 _g194933_))
                ((##fx= _g194934_ 2)
                 (apply gx#core-expand-export%__% _g194933_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g194933_))))))
    (define gx#core-expand-export-source
      (lambda (_%hd191249%_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _%hd191249%_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_%stx191219%_)
        (let* ((_%$%e191220191227%_ _%stx191219%_)
               (_%$%E191222191231%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e191220191227%_)))
               (_%$%E191221191245%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e191220191227%_)
                      (let ((_%$%e191223191235%_
                             (gx#syntax-e _%$%e191220191227%_)))
                        (let ((_%$%hd191224191238%_
                               (##car _%$%e191223191235%_))
                              (_%$%tl191225191240%_
                               (##cdr _%$%e191223191235%_)))
                          (let ((_%body191243%_ _%$%tl191225191240%_))
                            (if (gx#identifier-list? _%body191243%_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _%body191243%_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _%body191243%_))
                                   (gx#stx-source _%stx191219%_)))
                                (_%$%E191222191231%_)))))
                      (_%$%E191222191231%_)))))
          (_%$%E191221191245%_))))
    (define gx#core-bind-feature!__%
      (lambda (_%id191185%_ _%private?191186%_ _%phi191187%_ _%ctx191188%_)
        (gx#core-bind-syntax!__%
         _%id191185%_
         ((if _%private?191186%_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _%id191185%_))
         _%private?191186%_
         _%phi191187%_
         _%ctx191188%_)))
    (define gx#core-bind-feature!__0
      (lambda (_%id191193%_)
        (let* ((_%private?191195%_ '#f)
               (_%phi191197%_ (gx#current-expander-phi))
               (_%ctx191199%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id191193%_
           _%private?191195%_
           _%phi191197%_
           _%ctx191199%_))))
    (define gx#core-bind-feature!__1
      (lambda (_%id191201%_ _%private?191202%_)
        (let* ((_%phi191204%_ (gx#current-expander-phi))
               (_%ctx191206%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id191201%_
           _%private?191202%_
           _%phi191204%_
           _%ctx191206%_))))
    (define gx#core-bind-feature!__2
      (lambda (_%id191208%_ _%private?191209%_ _%phi191210%_)
        (let ((_%ctx191212%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id191208%_
           _%private?191209%_
           _%phi191210%_
           _%ctx191212%_))))
    (define gx#core-bind-feature!
      (lambda _g194935_
        (let ((_g194936_ (##length _g194935_)))
          (cond ((##fx= _g194936_ 1)
                 (apply gx#core-bind-feature!__0 _g194935_))
                ((##fx= _g194936_ 2)
                 (apply gx#core-bind-feature!__1 _g194935_))
                ((##fx= _g194936_ 3)
                 (apply gx#core-bind-feature!__2 _g194935_))
                ((##fx= _g194936_ 4)
                 (apply gx#core-bind-feature!__% _g194935_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g194935_))))))))
