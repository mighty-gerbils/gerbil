(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1770513297)
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
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))
       '#f))
    (define gx#module-import? (__make-class-predicate gx#module-import::t))
    (define gx#make-module-import
      (lambda _%$args182456%_
        (apply make-instance gx#module-import::t _%$args182456%_)))
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
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))
       '#f))
    (define gx#module-export? (__make-class-predicate gx#module-export::t))
    (define gx#make-module-export
      (lambda _%$args182453%_
        (apply make-instance gx#module-export::t _%$args182453%_)))
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
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))
       '#f))
    (define gx#import-set? (__make-class-predicate gx#import-set::t))
    (define gx#make-import-set
      (lambda _%$args182450%_
        (apply make-instance gx#import-set::t _%$args182450%_)))
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
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))
       '#f))
    (define gx#export-set? (__make-class-predicate gx#export-set::t))
    (define gx#make-export-set
      (lambda _%$args182447%_
        (apply make-instance gx#export-set::t _%$args182447%_)))
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
      (lambda _%$args182444%_
        (apply make-instance gx#import-expander::t _%$args182444%_)))
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
      (lambda _%$args182441%_
        (apply make-instance gx#export-expander::t _%$args182441%_)))
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
      (lambda _%$args182438%_
        (apply make-instance gx#import-export-expander::t _%$args182438%_)))
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
      (lambda (_%path182435%_ _%fun182436%_)
        (call-with-input-file
         (cons 'path: (cons _%path182435%_ gx#source-file-settings))
         _%fun182436%_)))
    (define gx#module-context:::init!
      (lambda (_%self182418%_
               _%id182419%_
               _%super182420%_
               _%ns182421%_
               _%path182422%_)
        (let ((_%self182425%_ _%self182418%_))
          (if (##fx< '11 (##structure-length _%self182425%_))
              (begin
                (##unchecked-structure-set!
                 _%self182425%_
                 _%id182419%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self182425%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self182425%_
                 _%super182420%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self182425%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self182425%_ '#f '5 '#f '#f)
                (##unchecked-structure-set!
                 _%self182425%_
                 _%ns182421%_
                 '6
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self182425%_
                 _%path182422%_
                 '7
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self182425%_ '() '8 '#f '#f)
                (##unchecked-structure-set! _%self182425%_ '() '9 '#f '#f)
                (##unchecked-structure-set! _%self182425%_ '#f '10 '#f '#f)
                (##unchecked-structure-set! _%self182425%_ '#f '11 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self182425%_
                     '11
                     (##structure-length _%self182425%_))))))
    (__bind-method!__%
     gx#module-context::t
     ':init!
     gx#module-context:::init!
     '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_%self182251%_ _%ctx182252%_ _%root182253%_)
        (let* ((_%self182256%_ _%self182251%_)
               (_%super182272%_
                (let ((_%$e182266%_ _%root182253%_))
                  (if _%$e182266%_
                      _%$e182266%_
                      (let ((_%$e182269%_ (gx#core-context-root__0)))
                        (if _%$e182269%_
                            _%$e182269%_
                            (let ((__obj182500
                                   (##structure gx#root-context::t '#f '#f)))
                              (let ((__constructor182501
                                     (direct-method-ref
                                      gx#root-context::t
                                      __obj182500
                                      ':init!)))
                                (if __constructor182501
                                    (__constructor182501 __obj182500)
                                    (error '"missing constructor method implementation"
                                           'class:
                                           gx#root-context::t
                                           'method:
                                           ':init!)))
                              __obj182500)))))))
          (if _%ctx182252%_
              (let ((_%id182275%_
                     (##structure-ref
                      _%ctx182252%_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_%path182276%_
                     (##structure-ref
                      _%ctx182252%_
                      '7
                      gx#module-context::t
                      '#f))
                    (_%in182277%_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _%ctx182252%_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_%e182278%_
                     (__make-atomic-promise
                      (lambda () (gx#eval-module _%ctx182252%_)))))
                (if (##fx< '8 (##structure-length _%self182256%_))
                    (begin
                      (##unchecked-structure-set!
                       _%self182256%_
                       _%id182275%_
                       '1
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self182256%_
                       (make-hash-table-eq 'size: (##length _%in182277%_))
                       '2
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self182256%_
                       _%super182272%_
                       '3
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self182256%_
                       '#f
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self182256%_
                       '#f
                       '5
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self182256%_
                       _%path182276%_
                       '6
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self182256%_
                       _%in182277%_
                       '7
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self182256%_
                       _%e182278%_
                       '8
                       '#f
                       '#f)
                      '#!void)
                    (error '"struct-instance-init!: too many arguments for struct"
                           _%self182256%_
                           '8
                           (##structure-length _%self182256%_)))
                (##for-each
                 (lambda (_%g182279182281%_)
                   (gx#core-bind-weak-import!__%
                    _%g182279182281%_
                    _%self182256%_))
                 _%in182277%_))
              (if (##fx< '8 (##structure-length _%self182256%_))
                  (begin
                    (##unchecked-structure-set! _%self182256%_ '#f '1 '#f '#f)
                    (##unchecked-structure-set!
                     _%self182256%_
                     (make-hash-table-eq)
                     '2
                     '#f
                     '#f)
                    (##unchecked-structure-set!
                     _%self182256%_
                     _%super182272%_
                     '3
                     '#f
                     '#f)
                    (##unchecked-structure-set! _%self182256%_ '#f '4 '#f '#f)
                    (##unchecked-structure-set! _%self182256%_ '#f '5 '#f '#f)
                    (##unchecked-structure-set! _%self182256%_ '#f '6 '#f '#f)
                    (##unchecked-structure-set! _%self182256%_ '() '7 '#f '#f)
                    (##unchecked-structure-set! _%self182256%_ '#f '8 '#f '#f)
                    '#!void)
                  (error '"struct-instance-init!: too many arguments for struct"
                         _%self182256%_
                         '8
                         (##structure-length _%self182256%_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_%self182287%_ _%ctx182288%_)
        (let ((_%root182290%_ '#f))
          (gx#prelude-context:::init!__%
           _%self182287%_
           _%ctx182288%_
           _%root182290%_))))
    (define gx#prelude-context:::init!
      (lambda _g182507_
        (let ((_g182508_ (##length _g182507_)))
          (cond ((##fx= _g182508_ 2)
                 (apply gx#prelude-context:::init!__0 _g182507_))
                ((##fx= _g182508_ 3)
                 (apply gx#prelude-context:::init!__% _g182507_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g182507_))))))
    (__bind-method!__%
     gx#prelude-context::t
     ':init!
     gx#prelude-context:::init!
     '#f)
    (define gx#import-export-expander-init!
      (lambda (_%self182125%_ _%e182126%_)
        (if (##fx< '3 (##structure-length _%self182125%_))
            (begin
              (##unchecked-structure-set!
               _%self182125%_
               _%e182126%_
               '1
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self182125%_
               (gx#current-expander-context)
               '2
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self182125%_
               (##fx- (gx#current-expander-phi) '1)
               '3
               '#f
               '#f)
              '#!void)
            (error '"struct-instance-init!: too many arguments for struct"
                   _%self182125%_
                   '3
                   (##structure-length _%self182125%_)))))
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
      (lambda (_%g181751181754%_ _%g181752181756%_)
        (gx#core-apply-user-expander__%
         _%g181751181754%_
         _%g181752181756%_
         'apply-import-expander)))
    (__bind-method!__%
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_%g181622181625%_ _%g181623181627%_)
        (gx#core-apply-user-expander__%
         _%g181622181625%_
         _%g181623181627%_
         'apply-export-expander)))
    (__bind-method!__%
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_%ctx181493%_)
        (let* ((_%path181495%_
                (##structure-ref _%ctx181493%_ '7 gx#module-context::t '#f))
               (_%path181497%_
                (if (pair? _%path181495%_)
                    (##last _%path181495%_)
                    _%path181495%_)))
          (if (string? _%path181497%_) _%path181497%_ '#f))))
    (define gx#import-module__%
      (lambda (_%path181469%_ _%reload?181470%_ _%eval?181471%_)
        (let ((_%ctx181473%_
               ((gx#current-expander-module-import)
                _%path181469%_
                _%reload?181470%_)))
          (if (and _%ctx181473%_ _%eval?181471%_)
              (gx#eval-module _%ctx181473%_)
              '#!void)
          _%ctx181473%_)))
    (define gx#import-module__0
      (lambda (_%path181478%_)
        (let* ((_%reload?181480%_ '#f) (_%eval?181482%_ '#f))
          (gx#import-module__%
           _%path181478%_
           _%reload?181480%_
           _%eval?181482%_))))
    (define gx#import-module__1
      (lambda (_%path181484%_ _%reload?181485%_)
        (let ((_%eval?181487%_ '#f))
          (gx#import-module__%
           _%path181484%_
           _%reload?181485%_
           _%eval?181487%_))))
    (define gx#import-module
      (lambda _g182509_
        (let ((_g182510_ (##length _g182509_)))
          (cond ((##fx= _g182510_ 1) (apply gx#import-module__0 _g182509_))
                ((##fx= _g182510_ 2) (apply gx#import-module__1 _g182509_))
                ((##fx= _g182510_ 3) (apply gx#import-module__% _g182509_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g182509_))))))
    (define gx#eval-module
      (lambda (_%mod181466%_)
        ((gx#current-expander-module-eval) _%mod181466%_)))
    (define gx#core-eval-module
      (lambda (_%obj181445%_)
        (letrec ((_%force-e181447%_
                  (lambda (_%getf181461%_ _%e181462%_)
                    (call-with-parameters__1
                     (lambda ()
                       (call-with-parameters__1
                        (lambda () (force (_%getf181461%_ _%e181462%_)))
                        gx#current-expander-phi
                        '0))
                     gx#current-expander-context
                     _%e181462%_))))
          (let _%recur181449%_ ((_%e181451%_ _%obj181445%_))
            (if (##structure-instance-of? _%e181451%_ 'gx#module-context::t)
                (let ()
                  (let ((_%$e181454%_
                         (gx#core-context-prelude__% _%e181451%_)))
                    (if _%$e181454%_ (_%recur181449%_ _%$e181454%_) '#!void))
                  (_%force-e181447%_ gx#module-context-e _%e181451%_))
                (if (##structure-instance-of?
                     _%e181451%_
                     'gx#prelude-context::t)
                    (_%force-e181447%_ gx#prelude-context-e _%e181451%_)
                    (if (gx#stx-string? _%e181451%_)
                        (_%recur181449%_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _%e181451%_)))
                        (if (gx#core-library-module-path? _%e181451%_)
                            (_%recur181449%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%e181451%_)))
                            (error '"cannot eval module" _%obj181445%_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_%ctx181425%_)
        (let _%lp181427%_ ((_%e181429%_ _%ctx181425%_))
          (if (or (##structure-instance-of? _%e181429%_ 'gx#module-context::t)
                  (##structure-instance-of? _%e181429%_ 'gx#local-context::t))
              (_%lp181427%_ (##unchecked-structure-ref _%e181429%_ '3 '#f '#f))
              (if (##structure-instance-of? _%e181429%_ 'gx#prelude-context::t)
                  _%e181429%_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_%ctx181441%_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _%ctx181441%_))))
    (define gx#core-context-prelude
      (lambda _g182511_
        (let ((_g182512_ (##length _g182511_)))
          (cond ((##fx= _g182512_ 0)
                 (apply gx#core-context-prelude__0 _g182511_))
                ((##fx= _g182512_ 1)
                 (apply gx#core-context-prelude__% _g182511_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g182511_))))))
    (define gx#core-module->prelude-context
      (lambda (_%ctx181416%_)
        (let ((_%$e181418%_ (__hash-get gx#__module-registry _%ctx181416%_)))
          (if _%$e181418%_
              _%$e181418%_
              (let ((_%pre181422%_
                     (let ((__obj182502
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
                        __obj182502
                        _%ctx181416%_)
                       __obj182502)))
                (__hash-put! gx#__module-registry _%ctx181416%_ _%pre181422%_)
                _%pre181422%_)))))
    (define gx#core-import-module__%
      (lambda (_%rpath181284%_ _%reload?181285%_)
        (letrec ((_%import-source181287%_
                  (lambda (_%path181375%_)
                    (if (member _%path181375%_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _%path181375%_)
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
                                      (let ((_g182513_
                                             (gx#core-read-module
                                              _%path181375%_)))
                                        (begin
                                          (let ((_g182514_
                                                 (if (##values? _g182513_)
                                                     (##values-length
                                                      _g182513_)
                                                     1)))
                                            (if (not (##fx= _g182514_ 4))
                                                (error "Context expects 4 values"
                                                       _g182514_)))
                                          (let ((_%pre181383%_
                                                 (##values-ref _g182513_ 0))
                                                (_%id181384%_
                                                 (##values-ref _g182513_ 1))
                                                (_%ns181385%_
                                                 (##values-ref _g182513_ 2))
                                                (_%body181386%_
                                                 (##values-ref _g182513_ 3)))
                                            (let* ((_%prelude181396%_
                                                    (if (##structure-instance-of?
                                                         _%pre181383%_
                                                         'gx#prelude-context::t)
                                                        _%pre181383%_
                                                        (if (##structure-instance-of?
                                                             _%pre181383%_
                                                             'gx#module-context::t)
                                                            (gx#core-module->prelude-context
                                                             _%pre181383%_)
                                                            (if (string? _%pre181383%_)
                                                                (gx#core-module->prelude-context
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#core-import-module__0 _%pre181383%_))
                        (if (not _%pre181383%_)
                            (let ((_%$e181392%_
                                   (gx#current-expander-module-prelude)))
                              (if _%$e181392%_
                                  _%$e181392%_
                                  (let ((__obj182503
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
                                     __obj182503
                                     '#f)
                                    __obj182503)))
                            (error '"cannot import module; unknown prelude"
                                   _%rpath181284%_
                                   _%pre181383%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%ctx181398%_
                                                    (let ((__obj182504
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
                                                       __obj182504
                                                       _%id181384%_
                                                       _%prelude181396%_
                                                       _%ns181385%_
                                                       _%path181375%_)
                                                      __obj182504))
                                                   (_%body181400%_
                                                    (gx#core-expand-module-begin
                                                     _%body181386%_
                                                     _%ctx181398%_))
                                                   (_%body181402%_
                                                    (gx#core-quote-syntax__%
                                                     (gx#core-cons
                                                      '%#begin
                                                      _%body181400%_)
                                                     _%path181375%_
                                                     _%ctx181398%_
                                                     '())))
                                              (##unchecked-structure-set!
                                               _%ctx181398%_
                                               (__make-atomic-promise
                                                (lambda ()
                                                  (gx#eval-syntax*
                                                   _%body181402%_)))
                                               '10
                                               '#f
                                               '#f)
                                              (##unchecked-structure-set!
                                               _%ctx181398%_
                                               _%body181402%_
                                               '11
                                               '#f
                                               '#f)
                                              (__hash-put!
                                               gx#__module-registry
                                               _%path181375%_
                                               _%ctx181398%_)
                                              (__hash-put!
                                               gx#__module-registry
                                               _%id181384%_
                                               _%ctx181398%_)
                                              _%ctx181398%_)))))
                                    gx#current-export-expander-phi
                                    '#f))
                                 gx#current-import-expander-phi
                                 '#f))
                              gx#current-expander-path
                              (cons _%path181375%_
                                    (gx#current-expander-path))))
                           gx#current-expander-phi
                           '0))
                        gx#current-expander-marks
                        '()))
                     gx#current-expander-context
                     (gx#core-context-root__0))))
                 (_%import-submodule181288%_
                  (lambda (_%rpath181304%_)
                    (let* ((_%rpath181305181312%_ _%rpath181304%_)
                           (_%E181307181315%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%rpath181305181312%_
                                     '([origin . refs]))
                              '#!void))
                           (_%K181308181363%_
                            (lambda (_%refs181318%_ _%origin181319%_)
                              (let ((_%ctx181321%_
                                     (if _%origin181319%_
                                         (gx#core-import-module__%
                                          _%origin181319%_
                                          _%reload?181285%_)
                                         (gx#current-expander-context))))
                                (let _%lp181323%_ ((_%rest181325%_
                                                    _%refs181318%_)
                                                   (_%ctx181326%_
                                                    _%ctx181321%_))
                                  (let* ((_%rest181327181335%_ _%rest181325%_)
                                         (_%else181329181343%_
                                          (lambda () _%ctx181326%_))
                                         (_%K181331181351%_
                                          (lambda (_%rest181346%_ _%id181347%_)
                                            (let ((_%bind181349%_
                                                   (gx#resolve-identifier__%
                                                    _%id181347%_
                                                    '0
                                                    _%ctx181326%_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _%bind181349%_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _%bind181349%_
                                                         '5
                                                         '#f
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_%lp181323%_
                                                   _%rest181346%_
                                                   (##unchecked-structure-ref
                                                    _%bind181349%_
                                                    '5
                                                    '#f
                                                    '#f))
                                                  (error '"cannot import submodule; not bound as a module"
                                                         _%rpath181304%_
                                                         _%id181347%_
                                                         _%bind181349%_))))))
                                    (if (pair? _%rest181327181335%_)
                                        (let ((_%hd181332181354%_
                                               (##car _%rest181327181335%_))
                                              (_%tl181333181356%_
                                               (##cdr _%rest181327181335%_)))
                                          (let* ((_%id181359%_
                                                  _%hd181332181354%_)
                                                 (_%rest181361%_
                                                  _%tl181333181356%_))
                                            (_%K181331181351%_
                                             _%rest181361%_
                                             _%id181359%_)))
                                        (_%else181329181343%_))))))))
                      (if (pair? _%rpath181305181312%_)
                          (let ((_%hd181309181366%_
                                 (##car _%rpath181305181312%_))
                                (_%tl181310181368%_
                                 (##cdr _%rpath181305181312%_)))
                            (let* ((_%origin181371%_ _%hd181309181366%_)
                                   (_%refs181373%_ _%tl181310181368%_))
                              (_%K181308181363%_
                               _%refs181373%_
                               _%origin181371%_)))
                          (_%E181307181315%_))))))
          (let ((_%$e181290%_
                 (if (not _%reload?181285%_)
                     (__hash-get gx#__module-registry _%rpath181284%_)
                     '#f)))
            (if _%$e181290%_
                _%$e181290%_
                (if (list? _%rpath181284%_)
                    (_%import-submodule181288%_ _%rpath181284%_)
                    (if (gx#core-library-module-path? _%rpath181284%_)
                        (let ((_%ctx181295%_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _%rpath181284%_)
                                _%reload?181285%_)))
                          (__hash-put!
                           gx#__module-registry
                           _%rpath181284%_
                           _%ctx181295%_)
                          _%ctx181295%_)
                        (let* ((_%npath181298%_
                                (path-normalize _%rpath181284%_))
                               (_%$e181300%_
                                (if (not _%reload?181285%_)
                                    (__hash-get
                                     gx#__module-registry
                                     _%npath181298%_)
                                    '#f)))
                          (if _%$e181300%_
                              _%$e181300%_
                              (_%import-source181287%_
                               _%npath181298%_))))))))))
    (define gx#core-import-module__0
      (lambda (_%rpath181409%_)
        (let ((_%reload?181411%_ '#f))
          (gx#core-import-module__% _%rpath181409%_ _%reload?181411%_))))
    (define gx#core-import-module
      (lambda _g182515_
        (let ((_g182516_ (##length _g182515_)))
          (cond ((##fx= _g182516_ 1)
                 (apply gx#core-import-module__0 _g182515_))
                ((##fx= _g182516_ 2)
                 (apply gx#core-import-module__% _g182515_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g182515_))))))
    (define gx#core-read-module
      (lambda (_%path181273%_)
        (__with-catch
         (lambda (_%exn181275%_)
           (if (and (datum-parsing-exception? _%exn181275%_)
                    (eq? (datum-parsing-exception-filepos _%exn181275%_) '0))
               (gx#core-read-module/lang _%path181273%_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _%path181273%_
                (call-with-parameters__1
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_%g181277181279%_)
                      (display-exception__% _%exn181275%_ _%g181277181279%_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _%path181273%_)))))
    (define gx#core-read-module/sexp
      (lambda (_%path181125%_)
        (let _%lp181127%_ ((_%body181129%_
                            (read-syntax-from-file _%path181125%_))
                           (_%pre181130%_ '#f)
                           (_%ns181131%_ '#f)
                           (_%pkg181132%_ '#f))
          (let* ((_%e181133181157%_ _%body181129%_)
                 (_%E181149181183%_
                  (lambda ()
                    (let ((_g182517_
                           (if _%pkg181132%_
                               (values _%pre181130%_
                                       _%ns181131%_
                                       _%pkg181132%_)
                               (gx#core-read-module-package
                                _%path181125%_
                                _%pre181130%_
                                _%ns181131%_))))
                      (begin
                        (let ((_g182518_
                               (if (##values? _g182517_)
                                   (##values-length _g182517_)
                                   1)))
                          (if (not (##fx= _g182518_ 3))
                              (error "Context expects 3 values" _g182518_)))
                        (let ((_%pre181161%_ (##values-ref _g182517_ 0))
                              (_%ns181162%_ (##values-ref _g182517_ 1))
                              (_%pkg181163%_ (##values-ref _g182517_ 2)))
                          (let* ((_%prelude181169%_
                                  (if (gx#core-bound-module-prelude?
                                       _%pre181161%_)
                                      (gx#syntax-local-e__0 _%pre181161%_)
                                      (if (gx#core-library-module-path?
                                           _%pre181161%_)
                                          (gx#core-resolve-library-module-path
                                           _%pre181161%_)
                                          (if (gx#stx-string? _%pre181161%_)
                                              (gx#core-resolve-module-path__%
                                               _%pre181161%_
                                               _%path181125%_)
                                              (gx#stx-e _%pre181161%_)))))
                                 (_%path-id181171%_
                                  (gx#core-module-path->namespace
                                   _%path181125%_))
                                 (_%pkg-id181173%_
                                  (if _%pkg181163%_
                                      (##string-append
                                       _%pkg181163%_
                                       '"/"
                                       _%path-id181171%_)
                                      _%path-id181171%_))
                                 (_%module-id181175%_
                                  (##string->symbol _%pkg-id181173%_))
                                 (_%module-ns181180%_
                                  (if (eq? _%ns181162%_ '#!void)
                                      '#f
                                      (let ((_%$e181177%_ _%ns181162%_))
                                        (if _%$e181177%_
                                            _%$e181177%_
                                            _%pkg-id181173%_)))))
                            (values _%prelude181169%_
                                    _%module-id181175%_
                                    _%module-ns181180%_
                                    _%body181129%_)))))))
                 (_%E181142181215%_
                  (lambda ()
                    (if (gx#stx-pair? _%e181133181157%_)
                        (let ((_%e181150181187%_
                               (gx#syntax-e _%e181133181157%_)))
                          (let ((_%hd181151181190%_ (##car _%e181150181187%_))
                                (_%tl181152181192%_ (##cdr _%e181150181187%_)))
                            (if (eq? (gx#stx-e _%hd181151181190%_) 'package:)
                                (if (gx#stx-pair? _%tl181152181192%_)
                                    (let ((_%e181153181195%_
                                           (gx#syntax-e _%tl181152181192%_)))
                                      (let ((_%hd181154181198%_
                                             (##car _%e181153181195%_))
                                            (_%tl181155181200%_
                                             (##cdr _%e181153181195%_)))
                                        (let* ((_%pkg181203%_
                                                _%hd181154181198%_)
                                               (_%rest181205%_
                                                _%tl181155181200%_)
                                               (_%pkg181213%_
                                                (if (gx#identifier?
                                                     _%pkg181203%_)
                                                    (symbol->string
                                                     (gx#stx-e _%pkg181203%_))
                                                    (if (or (gx#stx-string?
                                                             _%pkg181203%_)
                                                            (gx#stx-false?
                                                             _%pkg181203%_))
                                                        (gx#stx-e
                                                         _%pkg181203%_)
                                                        (gx#raise-syntax-error
                                                         'import
                                                         '"Bad syntax; Illegal package name"
                                                         _%pkg181203%_)))))
                                          (_%lp181127%_
                                           _%rest181205%_
                                           _%pre181130%_
                                           _%ns181131%_
                                           _%pkg181213%_))))
                                    (_%E181149181183%_))
                                (_%E181149181183%_))))
                        (_%E181149181183%_))))
                 (_%E181135181245%_
                  (lambda ()
                    (if (gx#stx-pair? _%e181133181157%_)
                        (let ((_%e181143181219%_
                               (gx#syntax-e _%e181133181157%_)))
                          (let ((_%hd181144181222%_ (##car _%e181143181219%_))
                                (_%tl181145181224%_ (##cdr _%e181143181219%_)))
                            (if (eq? (gx#stx-e _%hd181144181222%_) 'namespace:)
                                (if (gx#stx-pair? _%tl181145181224%_)
                                    (let ((_%e181146181227%_
                                           (gx#syntax-e _%tl181145181224%_)))
                                      (let ((_%hd181147181230%_
                                             (##car _%e181146181227%_))
                                            (_%tl181148181232%_
                                             (##cdr _%e181146181227%_)))
                                        (let* ((_%ns181235%_
                                                _%hd181147181230%_)
                                               (_%rest181237%_
                                                _%tl181148181232%_)
                                               (_%ns181243%_
                                                (if (gx#identifier?
                                                     _%ns181235%_)
                                                    (symbol->string
                                                     (gx#stx-e _%ns181235%_))
                                                    (if (gx#stx-string?
                                                         _%ns181235%_)
                                                        (gx#stx-e _%ns181235%_)
                                                        (if (gx#stx-false?
                                                             _%ns181235%_)
                                                            '#!void
                                                            (gx#raise-syntax-error
                                                             'import
                                                             '"Bad syntax; illegal namespace"
                                                             _%ns181235%_))))))
                                          (_%lp181127%_
                                           _%rest181237%_
                                           _%pre181130%_
                                           _%ns181243%_
                                           _%pkg181132%_))))
                                    (_%E181142181215%_))
                                (_%E181142181215%_))))
                        (_%E181142181215%_))))
                 (_%E181134181269%_
                  (lambda ()
                    (if (gx#stx-pair? _%e181133181157%_)
                        (let ((_%e181136181249%_
                               (gx#syntax-e _%e181133181157%_)))
                          (let ((_%hd181137181252%_ (##car _%e181136181249%_))
                                (_%tl181138181254%_ (##cdr _%e181136181249%_)))
                            (if (eq? (gx#stx-e _%hd181137181252%_) 'prelude:)
                                (if (gx#stx-pair? _%tl181138181254%_)
                                    (let ((_%e181139181257%_
                                           (gx#syntax-e _%tl181138181254%_)))
                                      (let ((_%hd181140181260%_
                                             (##car _%e181139181257%_))
                                            (_%tl181141181262%_
                                             (##cdr _%e181139181257%_)))
                                        (let* ((_%prelude181265%_
                                                _%hd181140181260%_)
                                               (_%rest181267%_
                                                _%tl181141181262%_))
                                          (_%lp181127%_
                                           _%rest181267%_
                                           _%prelude181265%_
                                           _%ns181131%_
                                           _%pkg181132%_))))
                                    (_%E181135181245%_))
                                (_%E181135181245%_))))
                        (_%E181135181245%_)))))
            (_%E181134181269%_)))))
    (define gx#core-read-module/lang
      (lambda (_%path180946%_)
        (letrec ((_%default-read-module-body180948%_
                  (lambda (_%inp181117%_)
                    (let _%lp181119%_ ((_%body181121%_ '()))
                      (let ((_%next181123%_ (read-syntax__% _%inp181117%_)))
                        (if (eof-object? _%next181123%_)
                            (reverse _%body181121%_)
                            (_%lp181119%_
                             (cons _%next181123%_ _%body181121%_)))))))
                 (_%read-body180949%_
                  (lambda (_%inp181034%_
                           _%pre181035%_
                           _%ns181036%_
                           _%pkg181037%_
                           _%args181038%_)
                    (let ((_g182519_
                           (if _%pkg181037%_
                               (values _%pre181035%_
                                       _%ns181036%_
                                       _%pkg181037%_)
                               (gx#core-read-module-package
                                _%path180946%_
                                _%pre181035%_
                                _%ns181036%_))))
                      (begin
                        (let ((_g182520_
                               (if (##values? _g182519_)
                                   (##values-length _g182519_)
                                   1)))
                          (if (not (##fx= _g182520_ 3))
                              (error "Context expects 3 values" _g182520_)))
                        (let ((_%pre181040%_ (##values-ref _g182519_ 0))
                              (_%ns181041%_ (##values-ref _g182519_ 1))
                              (_%pkg181042%_ (##values-ref _g182519_ 2)))
                          (let* ((_%prelude181044%_
                                  (gx#import-module__0 _%pre181040%_))
                                 (_%read-module-body181099%_
                                  (let ((_%$e181090%_
                                         (__find (lambda (_%e181045181047%_)
                                                   (let* ((_%e181045181049181059%_
                                                           _%e181045181047%_)
                                                          (_%else181051181067%_
                                                           (lambda () '#f))
                                                          (_%K181053181071%_
                                                           (lambda () '#t)))
                                                     (if (##structure-direct-instance-of?
                                                          _%e181045181049181059%_
                                                          'gx#module-export::t)
                                                         (let* ((_%e181054181074%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##unchecked-structure-ref
                          _%e181045181049181059%_
                          '1
                          '#f
                          '#f))
                        (_%e181055181077%_
                         (##unchecked-structure-ref
                          _%e181045181049181059%_
                          '2
                          '#f
                          '#f))
                        (_%e181056181080%_
                         (##unchecked-structure-ref
                          _%e181045181049181059%_
                          '3
                          '#f
                          '#f)))
                   (if (##eq? _%e181056181080%_ '1)
                       (let ((_%e181057181083%_
                              (##unchecked-structure-ref
                               _%e181045181049181059%_
                               '4
                               '#f
                               '#f)))
                         (if ((lambda (_%g181085181087%_)
                                (eq? _%g181085181087%_ 'read-module-body))
                              _%e181057181083%_)
                             (_%K181053181071%_)
                             (_%else181051181067%_)))
                       (_%else181051181067%_)))
                 (_%else181051181067%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (##unchecked-structure-ref
                                                  _%prelude181044%_
                                                  '9
                                                  '#f
                                                  '#f))))
                                    (if _%$e181090%_
                                        ((lambda (_%xport181093%_)
                                           (let ((_%proc181096%_
                                                  (__with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _%xport181093%_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _%proc181096%_)
                                                 _%proc181096%_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _%path180946%_
                                                  _%pre181040%_
                                                  _%proc181096%_))))
                                         _%$e181090%_)
                                        _%default-read-module-body180948%_)))
                                 (_%path-id181101%_
                                  (gx#core-module-path->namespace
                                   _%path180946%_))
                                 (_%pkg-id181103%_
                                  (if _%pkg181042%_
                                      (##string-append
                                       _%pkg181042%_
                                       '"/"
                                       _%path-id181101%_)
                                      _%path-id181101%_))
                                 (_%module-id181105%_
                                  (##string->symbol _%pkg-id181103%_))
                                 (_%module-ns181110%_
                                  (let ((_%$e181107%_ _%ns181041%_))
                                    (if _%$e181107%_
                                        _%$e181107%_
                                        _%pkg-id181103%_)))
                                 (_%body181114%_
                                  (call-with-parameters__1
                                   (lambda ()
                                     (call-with-parameters__1
                                      (lambda ()
                                        (_%read-module-body181099%_
                                         _%inp181034%_))
                                      gx#current-module-reader-args
                                      _%args181038%_))
                                   gx#current-module-reader-path
                                   _%path180946%_)))
                            (values _%prelude181044%_
                                    _%module-id181105%_
                                    _%module-ns181110%_
                                    _%body181114%_)))))))
                 (_%string-e180950%_
                  (lambda (_%obj181028%_ _%what181029%_)
                    (if (string? _%obj181028%_)
                        _%obj181028%_
                        (if (symbol? _%obj181028%_)
                            (##symbol->string _%obj181028%_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _%what181029%_)
                             _%path180946%_
                             _%obj181028%_)))))
                 (_%read-lang-args180951%_
                  (lambda (_%inp180983%_ _%args180984%_)
                    (let* ((_%args180985180993%_ _%args180984%_)
                           (_%else180987181001%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _%path180946%_)))
                           (_%K180989181016%_
                            (lambda (_%args181004%_ _%prelude181005%_)
                              (let* ((_%pkg181007%_
                                      (pgetq__0 'package: _%args181004%_))
                                     (_%pkg181009%_
                                      (if _%pkg181007%_
                                          (_%string-e180950%_
                                           _%pkg181007%_
                                           '"package")
                                          '#f))
                                     (_%ns181011%_
                                      (pgetq__0 'namespace: _%args181004%_))
                                     (_%ns181013%_
                                      (if _%ns181011%_
                                          (_%string-e180950%_
                                           _%ns181011%_
                                           '"namespace")
                                          '#f)))
                                (_%read-body180949%_
                                 _%inp180983%_
                                 _%prelude181005%_
                                 _%ns181013%_
                                 _%pkg181009%_
                                 _%args181004%_)))))
                      (if (pair? _%args180985180993%_)
                          (let ((_%hd180990181019%_
                                 (##car _%args180985180993%_))
                                (_%tl180991181021%_
                                 (##cdr _%args180985180993%_)))
                            (let* ((_%prelude181024%_ _%hd180990181019%_)
                                   (_%args181026%_ _%tl180991181021%_))
                              (_%K180989181016%_
                               _%args181026%_
                               _%prelude181024%_)))
                          (_%else180987181001%_)))))
                 (_%read-lang180952%_
                  (lambda (_%inp180957%_)
                    (let* ((_%head180959%_ (read-line _%inp180957%_))
                           (_%$e180961%_
                            (string-index__0 _%head180959%_ '#\space)))
                      (if _%$e180961%_
                          ((lambda (_%ix180964%_)
                             (let ((_%lang180966%_
                                    (substring
                                     _%head180959%_
                                     '0
                                     _%ix180964%_)))
                               (if (equal? _%lang180966%_ '"#lang")
                                   (let* ((_%rest180968%_
                                           (substring
                                            _%head180959%_
                                            (##fx+ _%ix180964%_ '1)
                                            (string-length _%head180959%_)))
                                          (_%args180979%_
                                           (__with-catch
                                            (lambda (_%g180969180971%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _%path180946%_
                                               _%g180969180971%_))
                                            (lambda ()
                                              (call-with-input-string
                                               _%rest180968%_
                                               (lambda (_%g180974180976%_)
                                                 (read-all
                                                  _%g180974180976%_
                                                  read)))))))
                                     (_%read-lang-args180951%_
                                      _%inp180957%_
                                      _%args180979%_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _%path180946%_))))
                           _%$e180961%_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _%path180946%_)))))
                 (_%read-e180953%_
                  (lambda (_%inp180955%_)
                    (if (eq? (peek-char _%inp180955%_) '#\#)
                        (_%read-lang180952%_ _%inp180955%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _%path180946%_)))))
          (gx#call-with-input-source-file _%path180946%_ _%read-e180953%_))))
    (define gx#core-read-module-package
      (lambda (_%path180894%_ _%pre180895%_ _%ns180896%_)
        (letrec ((_%string-e180898%_
                  (lambda (_%e180941%_)
                    (if (symbol? _%e180941%_)
                        (##symbol->string _%e180941%_)
                        (if (string? _%e180941%_)
                            _%e180941%_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%e180941%_))))))
          (let _%lp180900%_ ((_%dir180902%_ (path-directory _%path180894%_))
                             (_%pkg-path180903%_ '()))
            (let ((_%gerbil.pkg180905%_
                   (path-expand '"gerbil.pkg" _%dir180902%_)))
              (if (##file-exists? _%gerbil.pkg180905%_)
                  (let ((_%plist180907%_
                         (gx#core-library-package-plist__% _%dir180902%_ '#t)))
                    (if (null? _%plist180907%_)
                        (let ((_%pkg180910%_
                               (if (null? _%pkg-path180903%_)
                                   '#f
                                   (string-join _%pkg-path180903%_ '"/"))))
                          (values _%pre180895%_ _%ns180896%_ _%pkg180910%_))
                        (if (list? _%plist180907%_)
                            (let* ((_%root180913%_
                                    (pgetq__0 'package: _%plist180907%_))
                                   (_%pkg180917%_
                                    (let ((_%pkg-path180915%_
                                           (if _%root180913%_
                                               (cons (_%string-e180898%_
                                                      _%root180913%_)
                                                     _%pkg-path180903%_)
                                               _%pkg-path180903%_)))
                                      (if (null? _%pkg-path180915%_)
                                          '#f
                                          (string-join
                                           _%pkg-path180915%_
                                           '"/"))))
                                   (_%ns180924%_
                                    (let ((_%ns180922%_
                                           (let ((_%$e180919%_ _%ns180896%_))
                                             (if _%$e180919%_
                                                 _%$e180919%_
                                                 (pgetq__0
                                                  'namespace:
                                                  _%plist180907%_)))))
                                      (if _%ns180922%_
                                          (_%string-e180898%_ _%ns180922%_)
                                          '#f)))
                                   (_%pre180929%_
                                    (let ((_%$e180926%_ _%pre180895%_))
                                      (if _%$e180926%_
                                          _%$e180926%_
                                          (pgetq__0
                                           'prelude:
                                           _%plist180907%_)))))
                              (values _%pre180929%_
                                      _%ns180924%_
                                      _%pkg180917%_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%plist180907%_))))
                  (let ((_%dir*180933%_
                         (path-strip-trailing-directory-separator
                          _%dir180902%_)))
                    (if (or (__string-empty? _%dir*180933%_)
                            (equal? _%dir180902%_ _%dir*180933%_))
                        (values _%pre180895%_ _%ns180896%_ '#f)
                        (let ((_%xpath180938%_
                               (path-strip-directory _%dir*180933%_))
                              (_%xdir180939%_ (path-directory _%dir*180933%_)))
                          (_%lp180900%_
                           _%xdir180939%_
                           (cons _%xpath180938%_ _%pkg-path180903%_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_%path180892%_)
        (path-strip-extension (path-strip-directory _%path180892%_))))
    (define gx#core-module-path->id
      (lambda (_%path180890%_)
        (##string->symbol (gx#core-module-path->namespace _%path180890%_))))
    (define gx#core-resolve-module-path__%
      (lambda (_%stx-path180869%_ _%rel180870%_)
        (let* ((_%path180872%_ (gx#stx-e _%stx-path180869%_))
               (_%path180874%_
                (if (__string-empty? (path-extension _%path180872%_))
                    (##string-append _%path180872%_ '".ss")
                    _%path180872%_)))
          (gx#core-resolve-path__%
           _%path180874%_
           (let ((_%$e180877%_ (gx#stx-source _%stx-path180869%_)))
             (if _%$e180877%_ _%$e180877%_ _%rel180870%_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_%stx-path180883%_)
        (let ((_%rel180885%_ '#f))
          (gx#core-resolve-module-path__% _%stx-path180883%_ _%rel180885%_))))
    (define gx#core-resolve-module-path
      (lambda _g182521_
        (let ((_g182522_ (##length _g182521_)))
          (cond ((##fx= _g182522_ 1)
                 (apply gx#core-resolve-module-path__0 _g182521_))
                ((##fx= _g182522_ 2)
                 (apply gx#core-resolve-module-path__% _g182521_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g182521_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_%libpath180754%_)
        (let* ((_%spath180756%_ (symbol->string (gx#stx-e _%libpath180754%_)))
               (_%spath180758%_
                (substring
                 _%spath180756%_
                 '1
                 (##string-length _%spath180756%_)))
               (_%ext180760%_ (path-extension _%spath180758%_))
               (_%ssi180762%_
                (if (__string-empty? _%ext180760%_)
                    (##string-append _%spath180758%_ '".ssi")
                    (##string-append
                     (path-strip-extension _%spath180758%_)
                     '".ssi")))
               (_%srcs180766%_
                (if (__string-empty? _%ext180760%_)
                    (##map (lambda (_%ext180764%_)
                             (string-append _%spath180758%_ _%ext180764%_))
                           '(".ss" ".sld" ".scm"))
                    (cons _%spath180758%_ '()))))
          (let _%lp180769%_ ((_%rest180771%_ (load-path)))
            (let* ((_%rest180772180781%_ _%rest180771%_)
                   (_%E180775180785%_
                    (lambda ()
                      (error '"No clause matching"
                             _%rest180772180781%_
                             '([dir . rest])
                             '([]))
                      '#!void)))
              (let ((_%K180777180856%_
                     (lambda (_%rest180796%_ _%dir180797%_)
                       (letrec ((_%resolve180799%_
                                 (lambda (_%ssi180812%_ _%srcs180813%_)
                                   (let ((_%compiled-path180815%_
                                          (path-expand
                                           _%ssi180812%_
                                           _%dir180797%_)))
                                     (if (##file-exists?
                                          _%compiled-path180815%_)
                                         (path-normalize
                                          _%compiled-path180815%_)
                                         (let _%lpr180817%_ ((_%rest-src180819%_
                                                              _%srcs180813%_))
                                           (let* ((_%rest-src180820180828%_
                                                   _%rest-src180819%_)
                                                  (_%else180822180836%_
                                                   (lambda ()
                                                     (_%lp180769%_
                                                      _%rest180796%_)))
                                                  (_%K180824180844%_
                                                   (lambda (_%rest-src180839%_
                                                            _%src180840%_)
                                                     (let ((_%src-path180842%_
                                                            (path-expand
                                                             _%src180840%_
                                                             _%dir180797%_)))
                                                       (if (##file-exists?
                                                            _%src-path180842%_)
                                                           (path-normalize
                                                            _%src-path180842%_)
                                                           (_%lpr180817%_
                                                            _%rest-src180839%_))))))
                                             (if (pair? _%rest-src180820180828%_)
                                                 (let ((_%hd180825180847%_
                                                        (##car _%rest-src180820180828%_))
                                                       (_%tl180826180849%_
                                                        (##cdr _%rest-src180820180828%_)))
                                                   (let* ((_%src180852%_
                                                           _%hd180825180847%_)
                                                          (_%rest-src180854%_
                                                           _%tl180826180849%_))
                                                     (_%K180824180844%_
                                                      _%rest-src180854%_
                                                      _%src180852%_)))
                                                 (_%else180822180836%_)))))))))
                         (let ((_%$e180801%_
                                (gx#core-library-package-path-prefix
                                 _%dir180797%_)))
                           (if _%$e180801%_
                               ((lambda (_%prefix180804%_)
                                  (if (string-prefix?
                                       _%prefix180804%_
                                       _%spath180758%_)
                                      (let ((_%ssi180808%_
                                             (substring
                                              _%ssi180762%_
                                              (string-length _%prefix180804%_)
                                              (##string-length _%ssi180762%_)))
                                            (_%srcs180809%_
                                             (##map (lambda (_%src180806%_)
                                                      (substring
                                                       _%src180806%_
                                                       (string-length
                                                        _%prefix180804%_)
                                                       (string-length
                                                        _%src180806%_)))
                                                    _%srcs180766%_)))
                                        (_%resolve180799%_
                                         _%ssi180808%_
                                         _%srcs180809%_))
                                      (_%lp180769%_ _%rest180796%_)))
                                _%$e180801%_)
                               (_%resolve180799%_
                                _%ssi180762%_
                                _%srcs180766%_))))))
                    (_%K180776180790%_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"cannot find library module"
                        _%libpath180754%_))))
                (let ((_%try-match180774180793%_
                       (lambda ()
                         (if (null? _%rest180772180781%_)
                             (_%K180776180790%_)
                             (_%E180775180785%_)))))
                  (if (pair? _%rest180772180781%_)
                      (let ((_%tl180779180861%_ (##cdr _%rest180772180781%_))
                            (_%hd180778180859%_ (##car _%rest180772180781%_)))
                        (let ((_%dir180864%_ _%hd180778180859%_)
                              (_%rest180866%_ _%tl180779180861%_))
                          (_%K180777180856%_ _%rest180866%_ _%dir180864%_)))
                      (_%try-match180774180793%_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_%modpath180722%_)
        (letrec ((_%resolve180724%_
                  (lambda (_%path180745%_ _%base180746%_)
                    (let ((_%$e180748%_
                           (string-rindex__0 _%base180746%_ '#\/)))
                      (if _%$e180748%_
                          ((lambda (_%idx180751%_)
                             (gx#core-resolve-library-module-path
                              (##string->symbol
                               (string-append
                                '":"
                                (substring _%base180746%_ '0 _%idx180751%_)
                                '"/"
                                _%path180745%_))))
                           _%$e180748%_)
                          (gx#core-resolve-library-module-path
                           (##string->symbol
                            (string-append '":" _%path180745%_))))))))
          (let ((_%spath180726%_ (symbol->string (gx#stx-e _%modpath180722%_)))
                (_%mod180727%_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _%mod180727%_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"cannot resolve relative module path; not in module context"
                 _%modpath180722%_))
            (let ((_%mpath180729%_
                   (symbol->string
                    (##structure-ref
                     _%mod180727%_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _%lp180731%_ ((_%spath180733%_ _%spath180726%_)
                                 (_%mpath180734%_ _%mpath180729%_))
                (if (string-prefix? '"../" _%spath180733%_)
                    (let ((_%$e180737%_
                           (string-rindex__0 _%mpath180734%_ '#\/)))
                      (if _%$e180737%_
                          ((lambda (_%idx180740%_)
                             (_%lp180731%_
                              (substring
                               _%spath180733%_
                               '3
                               (string-length _%spath180733%_))
                              (substring _%mpath180734%_ '0 _%idx180740%_)))
                           _%$e180737%_)
                          (gx#raise-syntax-error
                           '#f
                           '"cannot resolve relative module path; illegal traversal"
                           _%modpath180722%_)))
                    (if (string-prefix? '"./" _%spath180733%_)
                        (_%lp180731%_
                         (substring
                          _%spath180733%_
                          '2
                          (string-length _%spath180733%_))
                         _%mpath180734%_)
                        (_%resolve180724%_
                         _%spath180733%_
                         _%mpath180734%_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_%dir180714%_)
        (let ((_%$e180716%_
               (pgetq__0
                'package:
                (gx#core-library-package-plist__0 _%dir180714%_))))
          (if _%$e180716%_
              ((lambda (_%pkg180719%_)
                 (##string-append (symbol->string _%pkg180719%_) '"/"))
               _%$e180716%_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_%dir180684%_ _%exists?180685%_)
        (let ((_%$e180687%_ (__hash-get gx#__module-pkg-cache _%dir180684%_)))
          (if _%$e180687%_
              _%$e180687%_
              (let* ((_%gerbil.pkg180691%_
                      (path-expand '"gerbil.pkg" _%dir180684%_))
                     (_%plist180701%_
                      (if (or _%exists?180685%_
                              (##file-exists? _%gerbil.pkg180691%_))
                          (let ((_%e180696%_
                                 (gx#call-with-input-source-file
                                  _%gerbil.pkg180691%_
                                  read)))
                            (if (eof-object? _%e180696%_)
                                '()
                                (if (list? _%e180696%_)
                                    _%e180696%_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _%gerbil.pkg180691%_
                                     _%e180696%_))))
                          '())))
                (__hash-put!
                 gx#__module-pkg-cache
                 _%dir180684%_
                 _%plist180701%_)
                _%plist180701%_)))))
    (define gx#core-library-package-plist__0
      (lambda (_%dir180707%_)
        (let ((_%exists?180709%_ '#f))
          (gx#core-library-package-plist__% _%dir180707%_ _%exists?180709%_))))
    (define gx#core-library-package-plist
      (lambda _g182523_
        (let ((_g182524_ (##length _g182523_)))
          (cond ((##fx= _g182524_ 1)
                 (apply gx#core-library-package-plist__0 _g182523_))
                ((##fx= _g182524_ 2)
                 (apply gx#core-library-package-plist__% _g182523_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g182523_))))))
    (define gx#core-library-module-path?
      (lambda (_%stx180681%_)
        (gx#core-special-module-path? _%stx180681%_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_%stx180679%_)
        (gx#core-special-module-path? _%stx180679%_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_%stx180674%_ _%char180675%_)
        (if (gx#identifier? _%stx180674%_)
            (if (interned-symbol? (gx#stx-e _%stx180674%_))
                (let ((_%str180677%_
                       (symbol->string (gx#stx-e _%stx180674%_))))
                  (if (##fx> (##string-length _%str180677%_) '1)
                      (eq? (string-ref _%str180677%_ '0) _%char180675%_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_%stx180668%_)
        (gx#core-bound-identifier?__%
         _%stx180668%_
         (lambda (_%g180669180671%_)
           (gx#expander-binding?__% _%g180669180671%_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_%stx180662%_)
        (gx#core-bound-identifier?__%
         _%stx180662%_
         (lambda (_%g180663180665%_)
           (gx#expander-binding?__% _%g180663180665%_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_%stx180649%_)
        (letrec ((_%module-prelude?180651%_
                  (lambda (_%e180657%_)
                    (let ((_%$e180659%_
                           (##structure-instance-of?
                            _%e180657%_
                            'gx#module-context::t)))
                      (if _%$e180659%_
                          _%$e180659%_
                          (##structure-instance-of?
                           _%e180657%_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _%stx180649%_
           (lambda (_%g180652180654%_)
             (gx#expander-binding?__%
              _%g180652180654%_
              _%module-prelude?180651%_))))))
    (define gx#core-bind-import!__%
      (lambda (_%in180580%_ _%ctx180581%_ _%force-weak?180582%_)
        (let* ((_%in180583180592%_ _%in180580%_)
               (_%E180585180595%_
                (lambda ()
                  (error '"No clause matching"
                         _%in180583180592%_
                         '((module-import source key phi weak?)))
                  '#!void))
               (_%K180586180608%_
                (lambda (_%weak?180598%_
                         _%phi180599%_
                         _%key180600%_
                         _%source180601%_)
                  (gx#core-bind!__%
                   _%key180600%_
                   (let* ((_%e180603%_
                           (gx#core-resolve-module-export _%source180601%_))
                          (__obj182505
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
                      __obj182505
                      (##unchecked-structure-ref _%e180603%_ '1 '#f '#f)
                      _%key180600%_
                      _%phi180599%_
                      _%e180603%_
                      (##unchecked-structure-ref _%source180601%_ '1 '#f '#f)
                      (let ((_%$e180605%_ _%force-weak?180582%_))
                        (if _%$e180605%_ _%$e180605%_ _%weak?180598%_)))
                     __obj182505)
                   gx#core-context-rebind?
                   _%phi180599%_
                   _%ctx180581%_))))
          (if (##structure-direct-instance-of?
               _%in180583180592%_
               'gx#module-import::t)
              (let* ((_%e180587180611%_
                      (##unchecked-structure-ref
                       _%in180583180592%_
                       '1
                       '#f
                       '#f))
                     (_%source180614%_ _%e180587180611%_)
                     (_%e180588180616%_
                      (##unchecked-structure-ref
                       _%in180583180592%_
                       '2
                       '#f
                       '#f))
                     (_%key180619%_ _%e180588180616%_)
                     (_%e180589180621%_
                      (##unchecked-structure-ref
                       _%in180583180592%_
                       '3
                       '#f
                       '#f))
                     (_%phi180624%_ _%e180589180621%_)
                     (_%e180590180626%_
                      (##unchecked-structure-ref
                       _%in180583180592%_
                       '4
                       '#f
                       '#f))
                     (_%weak?180629%_ _%e180590180626%_))
                (_%K180586180608%_
                 _%weak?180629%_
                 _%phi180624%_
                 _%key180619%_
                 _%source180614%_))
              (_%E180585180595%_)))))
    (define gx#core-bind-import!__0
      (lambda (_%in180634%_)
        (let* ((_%ctx180636%_ (gx#current-expander-context))
               (_%force-weak?180638%_ '#f))
          (gx#core-bind-import!__%
           _%in180634%_
           _%ctx180636%_
           _%force-weak?180638%_))))
    (define gx#core-bind-import!__1
      (lambda (_%in180640%_ _%ctx180641%_)
        (let ((_%force-weak?180643%_ '#f))
          (gx#core-bind-import!__%
           _%in180640%_
           _%ctx180641%_
           _%force-weak?180643%_))))
    (define gx#core-bind-import!
      (lambda _g182525_
        (let ((_g182526_ (##length _g182525_)))
          (cond ((##fx= _g182526_ 1) (apply gx#core-bind-import!__0 _g182525_))
                ((##fx= _g182526_ 2) (apply gx#core-bind-import!__1 _g182525_))
                ((##fx= _g182526_ 3) (apply gx#core-bind-import!__% _g182525_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g182525_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_%in180566%_ _%ctx180567%_)
        (gx#core-bind-import!__% _%in180566%_ _%ctx180567%_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_%in180572%_)
        (let ((_%ctx180574%_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _%in180572%_ _%ctx180574%_))))
    (define gx#core-bind-weak-import!
      (lambda _g182527_
        (let ((_g182528_ (##length _g182527_)))
          (cond ((##fx= _g182528_ 1)
                 (apply gx#core-bind-weak-import!__0 _g182527_))
                ((##fx= _g182528_ 2)
                 (apply gx#core-bind-weak-import!__% _g182527_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g182527_))))))
    (define gx#core-resolve-module-export
      (lambda (_%out180459%_)
        (letrec ((_%subst180461%_
                  (lambda (_%key180506%_)
                    (let* ((_%key180507180515%_ _%key180506%_)
                           (_%else180509180523%_ (lambda () _%key180506%_))
                           (_%K180511180553%_
                            (lambda (_%mark180526%_ _%id180527%_)
                              (let* ((_%mark180528180534%_ _%mark180526%_)
                                     (_%E180530180537%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark180528180534%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K180531180545%_
                                      (lambda (_%subst180540%_)
                                        (let ((_%$e180542%_
                                               (if _%subst180540%_
                                                   (hash-get
                                                    _%subst180540%_
                                                    _%id180527%_)
                                                   '#f)))
                                          (if _%$e180542%_
                                              _%$e180542%_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _%key180506%_))))))
                                (if (##structure-instance-of?
                                     _%mark180528180534%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e180532180548%_
                                            (##unchecked-structure-ref
                                             _%mark180528180534%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst180551%_ _%e180532180548%_))
                                      (_%K180531180545%_ _%subst180551%_))
                                    (_%E180530180537%_))))))
                      (if (pair? _%key180507180515%_)
                          (let ((_%hd180512180556%_
                                 (##car _%key180507180515%_))
                                (_%tl180513180558%_
                                 (##cdr _%key180507180515%_)))
                            (let* ((_%id180561%_ _%hd180512180556%_)
                                   (_%mark180563%_ _%tl180513180558%_))
                              (_%K180511180553%_ _%mark180563%_ _%id180561%_)))
                          (_%else180509180523%_))))))
          (let* ((_%out180462180472%_ _%out180459%_)
                 (_%E180464180475%_
                  (lambda ()
                    (error '"No clause matching"
                           _%out180462180472%_
                           '((module-export ctx key phi _ _)))
                    '#!void))
                 (_%K180465180482%_
                  (lambda (_%phi180478%_ _%key180479%_ _%ctx180480%_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _%ctx180480%_ _%phi180478%_)
                     (_%subst180461%_ _%key180479%_)))))
            (if (##structure-direct-instance-of?
                 _%out180462180472%_
                 'gx#module-export::t)
                (let* ((_%e180466180485%_
                        (##unchecked-structure-ref
                         _%out180462180472%_
                         '1
                         '#f
                         '#f))
                       (_%ctx180488%_ _%e180466180485%_)
                       (_%e180467180490%_
                        (##unchecked-structure-ref
                         _%out180462180472%_
                         '2
                         '#f
                         '#f))
                       (_%key180493%_ _%e180467180490%_)
                       (_%e180468180495%_
                        (##unchecked-structure-ref
                         _%out180462180472%_
                         '3
                         '#f
                         '#f))
                       (_%phi180498%_ _%e180468180495%_)
                       (_%e180469180500%_
                        (##unchecked-structure-ref
                         _%out180462180472%_
                         '4
                         '#f
                         '#f))
                       (_%e180470180503%_
                        (##unchecked-structure-ref
                         _%out180462180472%_
                         '5
                         '#f
                         '#f)))
                  (_%K180465180482%_
                   _%phi180498%_
                   _%key180493%_
                   _%ctx180488%_))
                (_%E180464180475%_))))))
    (define gx#core-module-export->import__%
      (lambda (_%out180385%_ _%rename180386%_ _%dphi180387%_)
        (let* ((_%out180388180398%_ _%out180385%_)
               (_%E180390180401%_
                (lambda ()
                  (error '"No clause matching"
                         _%out180388180398%_
                         '((module-export ctx key phi name weak?)))
                  '#!void))
               (_%K180391180413%_
                (lambda (_%weak?180404%_
                         _%name180405%_
                         _%phi180406%_
                         _%key180407%_
                         _%ctx180408%_)
                  (##structure
                   gx#module-import::t
                   _%out180385%_
                   (let ((_%$e180410%_ _%rename180386%_))
                     (if _%$e180410%_ _%$e180410%_ _%name180405%_))
                   (fx+ _%phi180406%_ _%dphi180387%_)
                   _%weak?180404%_))))
          (if (##structure-direct-instance-of?
               _%out180388180398%_
               'gx#module-export::t)
              (let* ((_%e180392180416%_
                      (##unchecked-structure-ref
                       _%out180388180398%_
                       '1
                       '#f
                       '#f))
                     (_%ctx180419%_ _%e180392180416%_)
                     (_%e180393180421%_
                      (##unchecked-structure-ref
                       _%out180388180398%_
                       '2
                       '#f
                       '#f))
                     (_%key180424%_ _%e180393180421%_)
                     (_%e180394180426%_
                      (##unchecked-structure-ref
                       _%out180388180398%_
                       '3
                       '#f
                       '#f))
                     (_%phi180429%_ _%e180394180426%_)
                     (_%e180395180431%_
                      (##unchecked-structure-ref
                       _%out180388180398%_
                       '4
                       '#f
                       '#f))
                     (_%name180434%_ _%e180395180431%_)
                     (_%e180396180436%_
                      (##unchecked-structure-ref
                       _%out180388180398%_
                       '5
                       '#f
                       '#f))
                     (_%weak?180439%_ _%e180396180436%_))
                (_%K180391180413%_
                 _%weak?180439%_
                 _%name180434%_
                 _%phi180429%_
                 _%key180424%_
                 _%ctx180419%_))
              (_%E180390180401%_)))))
    (define gx#core-module-export->import__0
      (lambda (_%out180444%_)
        (let* ((_%rename180446%_ '#f) (_%dphi180448%_ '0))
          (gx#core-module-export->import__%
           _%out180444%_
           _%rename180446%_
           _%dphi180448%_))))
    (define gx#core-module-export->import__1
      (lambda (_%out180450%_ _%rename180451%_)
        (let ((_%dphi180453%_ '0))
          (gx#core-module-export->import__%
           _%out180450%_
           _%rename180451%_
           _%dphi180453%_))))
    (define gx#core-module-export->import
      (lambda _g182529_
        (let ((_g182530_ (##length _g182529_)))
          (cond ((##fx= _g182530_ 1)
                 (apply gx#core-module-export->import__0 _g182529_))
                ((##fx= _g182530_ 2)
                 (apply gx#core-module-export->import__1 _g182529_))
                ((##fx= _g182530_ 3)
                 (apply gx#core-module-export->import__% _g182529_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g182529_))))))
    (define gx#core-expand-module%
      (lambda (_%stx180284%_)
        (letrec ((_%make-context180286%_
                  (lambda (_%id180363%_)
                    (let* ((_%super180365%_ (gx#current-expander-context))
                           (_%bind-id180367%_ (gx#stx-e _%id180363%_))
                           (_%mod-id180369%_
                            (if (##structure-instance-of?
                                 _%super180365%_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##unchecked-structure-ref
                                  _%super180365%_
                                  '1
                                  '#f
                                  '#f)
                                 '"~"
                                 _%bind-id180367%_)
                                _%bind-id180367%_))
                           (_%ns180371%_ (symbol->string _%mod-id180369%_))
                           (_%path180381%_
                            (if (##structure-instance-of?
                                 _%super180365%_
                                 'gx#module-context::t)
                                (let ((_%path180373%_
                                       (##unchecked-structure-ref
                                        _%super180365%_
                                        '7
                                        '#f
                                        '#f)))
                                  (if (or (pair? _%path180373%_)
                                          (null? _%path180373%_))
                                      (cons _%bind-id180367%_ _%path180373%_)
                                      (if (not _%path180373%_)
                                          _%bind-id180367%_
                                          (cons _%bind-id180367%_
                                                (cons _%path180373%_ '())))))
                                _%bind-id180367%_))
                           (__obj182506
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
                       __obj182506
                       _%mod-id180369%_
                       _%super180365%_
                       _%ns180371%_
                       _%path180381%_)
                      __obj182506)))
                 (_%valid-module-id?180287%_
                  (lambda (_%id180338%_)
                    (let* ((_%str180340%_ (symbol->string _%id180338%_))
                           (_%len180342%_ (##string-length _%str180340%_)))
                      (if (##fx>= _%len180342%_ '1)
                          (let _%loop180345%_ ((_%index180347%_
                                                (##fx- (##string-length
                                                        _%str180340%_)
                                                       '1)))
                            (if (##fx>= _%index180347%_ '0)
                                (let ((_%c180349%_
                                       (string-ref
                                        _%str180340%_
                                        _%index180347%_)))
                                  (if (or (and (##char>=? _%c180349%_ '#\a)
                                               (##char<=? _%c180349%_ '#\z))
                                          (and (##char>=? _%c180349%_ '#\A)
                                               (##char<=? _%c180349%_ '#\Z))
                                          (and (##char>=? _%c180349%_ '#\0)
                                               (##char<=? _%c180349%_ '#\9))
                                          (##char=? _%c180349%_ '#\_)
                                          (##char=? _%c180349%_ '#\-))
                                      (_%loop180345%_
                                       (##fx- _%index180347%_ '1))
                                      '#f))
                                '#t))
                          '#f)))))
          (let* ((_%e180288180298%_ _%stx180284%_)
                 (_%E180290180302%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e180288180298%_)))
                 (_%E180289180334%_
                  (lambda ()
                    (if (gx#stx-pair? _%e180288180298%_)
                        (let ((_%e180291180306%_
                               (gx#syntax-e _%e180288180298%_)))
                          (let ((_%hd180292180309%_ (##car _%e180291180306%_))
                                (_%tl180293180311%_ (##cdr _%e180291180306%_)))
                            (if (gx#stx-pair? _%tl180293180311%_)
                                (let ((_%e180294180314%_
                                       (gx#syntax-e _%tl180293180311%_)))
                                  (let ((_%hd180295180317%_
                                         (##car _%e180294180314%_))
                                        (_%tl180296180319%_
                                         (##cdr _%e180294180314%_)))
                                    (let* ((_%id180322%_ _%hd180295180317%_)
                                           (_%body180324%_ _%tl180296180319%_))
                                      (if (and (gx#identifier? _%id180322%_)
                                               (gx#stx-list? _%body180324%_))
                                          (if (_%valid-module-id?180287%_
                                               (gx#stx-e
                                                (gx#datum->syntax__0 '#f 'id)))
                                              (let* ((_%ctx180326%_
                                                      (_%make-context180286%_
                                                       _%id180322%_))
                                                     (_%body180328%_
                                                      (gx#core-expand-module-begin
                                                       _%body180324%_
                                                       _%ctx180326%_))
                                                     (_%body180330%_
                                                      (gx#core-quote-syntax__1
                                                       (gx#core-cons
                                                        '%#begin
                                                        _%body180328%_)
                                                       (gx#stx-source
                                                        _%stx180284%_))))
                                                (##unchecked-structure-set!
                                                 _%ctx180326%_
                                                 (__make-atomic-promise
                                                  (lambda ()
                                                    (gx#eval-syntax*
                                                     _%body180330%_)))
                                                 '10
                                                 '#f
                                                 '#f)
                                                (##unchecked-structure-set!
                                                 _%ctx180326%_
                                                 _%body180330%_
                                                 '11
                                                 '#f
                                                 '#f)
                                                (gx#core-bind-syntax!__0
                                                 _%id180322%_
                                                 _%ctx180326%_)
                                                (gx#core-quote-syntax__1
                                                 (gx#core-list
                                                  '%#module
                                                  (gx#core-quote-syntax__0
                                                   _%id180322%_)
                                                  _%body180330%_)
                                                 (gx#stx-source
                                                  _%stx180284%_)))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"invalid module id; allowed characters are A-Z,a-z,0-9,_,-"
                                               _%stx180284%_
                                               (gx#datum->syntax__0 '#f 'id)))
                                          (_%E180290180302%_)))))
                                (_%E180290180302%_))))
                        (_%E180290180302%_)))))
            (_%E180289180334%_)))))
    (define gx#core-expand-module-begin
      (lambda (_%body180249%_ _%ctx180250%_)
        (call-with-parameters__1
         (lambda ()
           (call-with-parameters__1
            (lambda ()
              (gx#core-bind-feature!__1 'gerbil-module '#t)
              (let* ((_%stx180254%_
                      (gx#core-expand-head
                       (cons '%%begin-module _%body180249%_)))
                     (_%e180255180262%_ _%stx180254%_)
                     (_%E180257180266%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module body expansion"
                         _%stx180254%_)))
                     (_%E180256180280%_
                      (lambda ()
                        (if (gx#stx-pair? _%e180255180262%_)
                            (let ((_%e180258180270%_
                                   (gx#syntax-e _%e180255180262%_)))
                              (let ((_%hd180259180273%_
                                     (##car _%e180258180270%_))
                                    (_%tl180260180275%_
                                     (##cdr _%e180258180270%_)))
                                (if (and (gx#identifier? _%hd180259180273%_)
                                         (gx#core-identifier=?
                                          _%hd180259180273%_
                                          '%#begin-module))
                                    (let ((_%body180278%_ _%tl180260180275%_))
                                      (if (gx#sealed-syntax? _%stx180254%_)
                                          _%body180278%_
                                          (gx#core-expand-module-body
                                           _%body180278%_)))
                                    (_%E180257180266%_))))
                            (_%E180257180266%_)))))
                (_%E180256180280%_)))
            gx#current-expander-phi
            '0))
         gx#current-expander-context
         _%ctx180250%_)))
    (define gx#core-expand-module-body
      (lambda (_%body180045%_)
        (letrec ((_%expand-special180047%_
                  (lambda (_%hd180176%_ _%K180177%_ _%rest180178%_ _%r180179%_)
                    (let* ((_%e180180180197%_ _%hd180176%_)
                           (_%E180192180201%_
                            (lambda ()
                              (_%K180177%_
                               _%rest180178%_
                               (cons (gx#core-expand-top _%hd180176%_)
                                     _%r180179%_))))
                           (_%E180182180213%_
                            (lambda ()
                              (if (gx#stx-pair? _%e180180180197%_)
                                  (let ((_%e180193180205%_
                                         (gx#syntax-e _%e180180180197%_)))
                                    (let ((_%hd180194180208%_
                                           (##car _%e180193180205%_))
                                          (_%tl180195180210%_
                                           (##cdr _%e180193180205%_)))
                                      (if (and (gx#identifier?
                                                _%hd180194180208%_)
                                               (gx#core-identifier=?
                                                _%hd180194180208%_
                                                '%#export))
                                          (_%K180177%_
                                           _%rest180178%_
                                           (cons _%hd180176%_ _%r180179%_))
                                          (_%E180192180201%_))))
                                  (_%E180192180201%_))))
                           (_%E180181180245%_
                            (lambda ()
                              (if (gx#stx-pair? _%e180180180197%_)
                                  (let ((_%e180183180217%_
                                         (gx#syntax-e _%e180180180197%_)))
                                    (let ((_%hd180184180220%_
                                           (##car _%e180183180217%_))
                                          (_%tl180185180222%_
                                           (##cdr _%e180183180217%_)))
                                      (if (and (gx#identifier?
                                                _%hd180184180220%_)
                                               (gx#core-identifier=?
                                                _%hd180184180220%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl180185180222%_)
                                              (let ((_%e180186180225%_
                                                     (gx#syntax-e
                                                      _%tl180185180222%_)))
                                                (let ((_%hd180187180228%_
                                                       (##car _%e180186180225%_))
                                                      (_%tl180188180230%_
                                                       (##cdr _%e180186180225%_)))
                                                  (let ((_%hd-bind180233%_
                                                         _%hd180187180228%_))
                                                    (if (gx#stx-pair?
                                                         _%tl180188180230%_)
                                                        (let ((_%e180189180235%_
                                                               (gx#syntax-e
                                                                _%tl180188180230%_)))
                                                          (let ((_%hd180190180238%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e180189180235%_))
                        (_%tl180191180240%_ (##cdr _%e180189180235%_)))
                    (let ((_%expr180243%_ _%hd180190180238%_))
                      (if (gx#stx-null? _%tl180191180240%_)
                          (if (gx#core-bind-values? _%hd-bind180233%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind180233%_)
                                (_%K180177%_
                                 _%rest180178%_
                                 (cons _%hd180176%_ _%r180179%_)))
                              (_%E180182180213%_))
                          (_%E180182180213%_)))))
                (_%E180182180213%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E180182180213%_))
                                          (_%E180182180213%_))))
                                  (_%E180182180213%_)))))
                      (_%E180181180245%_))))
                 (_%expand-body180048%_
                  (lambda (_%rbody180050%_)
                    (let _%lp180052%_ ((_%rest180054%_ _%rbody180050%_)
                                       (_%body180055%_ '()))
                      (let* ((_%rest180056180064%_ _%rest180054%_)
                             (_%else180058180072%_ (lambda () _%body180055%_))
                             (_%K180060180164%_
                              (lambda (_%rest180075%_ _%hd180076%_)
                                (let* ((_%e180077180098%_ _%hd180076%_)
                                       (_%E180093180102%_
                                        (lambda ()
                                          (_%lp180052%_
                                           _%rest180075%_
                                           (cons (gx#core-expand-expression
                                                  _%hd180076%_)
                                                 _%body180055%_))))
                                       (_%E180089180116%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e180077180098%_)
                                              (let ((_%e180094180106%_
                                                     (gx#syntax-e
                                                      _%e180077180098%_)))
                                                (let ((_%hd180095180109%_
                                                       (##car _%e180094180106%_))
                                                      (_%tl180096180111%_
                                                       (##cdr _%e180094180106%_)))
                                                  (let ((_%form180114%_
                                                         _%hd180095180109%_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _%form180114%_
                                                         gx#special-form-binding?)
                                                        (_%lp180052%_
                                                         _%rest180075%_
                                                         (cons _%hd180076%_
                                                               _%body180055%_))
                                                        (_%E180093180102%_)))))
                                              (_%E180093180102%_))))
                                       (_%E180079180128%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e180077180098%_)
                                              (let ((_%e180090180120%_
                                                     (gx#syntax-e
                                                      _%e180077180098%_)))
                                                (let ((_%hd180091180123%_
                                                       (##car _%e180090180120%_))
                                                      (_%tl180092180125%_
                                                       (##cdr _%e180090180120%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd180091180123%_)
                                                           (gx#core-identifier=?
                                                            _%hd180091180123%_
                                                            '%#export))
                                                      (_%lp180052%_
                                                       _%rest180075%_
                                                       (cons (gx#core-expand-export%__0
                                                              _%hd180076%_)
                                                             _%body180055%_))
                                                      (_%E180089180116%_))))
                                              (_%E180089180116%_))))
                                       (_%E180078180160%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e180077180098%_)
                                              (let ((_%e180080180132%_
                                                     (gx#syntax-e
                                                      _%e180077180098%_)))
                                                (let ((_%hd180081180135%_
                                                       (##car _%e180080180132%_))
                                                      (_%tl180082180137%_
                                                       (##cdr _%e180080180132%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd180081180135%_)
                                                           (gx#core-identifier=?
                                                            _%hd180081180135%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl180082180137%_)
                                                          (let ((_%e180083180140%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl180082180137%_)))
                    (let ((_%hd180084180143%_ (##car _%e180083180140%_))
                          (_%tl180085180145%_ (##cdr _%e180083180140%_)))
                      (let ((_%hd-bind180148%_ _%hd180084180143%_))
                        (if (gx#stx-pair? _%tl180085180145%_)
                            (let ((_%e180086180150%_
                                   (gx#syntax-e _%tl180085180145%_)))
                              (let ((_%hd180087180153%_
                                     (##car _%e180086180150%_))
                                    (_%tl180088180155%_
                                     (##cdr _%e180086180150%_)))
                                (let ((_%expr180158%_ _%hd180087180153%_))
                                  (if (gx#stx-null? _%tl180088180155%_)
                                      (_%lp180052%_
                                       _%rest180075%_
                                       (cons (gx#core-quote-syntax__1
                                              (gx#core-list
                                               '%#define-values
                                               (gx#core-quote-bind-values
                                                _%hd-bind180148%_)
                                               (gx#core-expand-expression
                                                _%expr180158%_))
                                              (gx#stx-source _%hd180076%_))
                                             _%body180055%_))
                                      (_%E180079180128%_)))))
                            (_%E180079180128%_)))))
                  (_%E180079180128%_))
              (_%E180079180128%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E180079180128%_)))))
                                  (_%E180078180160%_)))))
                        (if (pair? _%rest180056180064%_)
                            (let ((_%hd180061180167%_
                                   (##car _%rest180056180064%_))
                                  (_%tl180062180169%_
                                   (##cdr _%rest180056180064%_)))
                              (let* ((_%hd180172%_ _%hd180061180167%_)
                                     (_%rest180174%_ _%tl180062180169%_))
                                (_%K180060180164%_
                                 _%rest180174%_
                                 _%hd180172%_)))
                            (_%else180058180072%_)))))))
          (_%expand-body180048%_
           (gx#core-expand-block__%
            (cons '%#begin-module _%body180045%_)
            _%expand-special180047%_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_%stx179886%_
               _%expanded?179887%_
               _%method179888%_
               _%current-phi179889%_
               _%expand1179890%_)
        (letrec ((_%K179892%_
                  (lambda (_%rest180012%_ _%r180013%_)
                    (let* ((_%e180014180021%_ _%rest180012%_)
                           (_%E180016180025%_ (lambda () _%r180013%_))
                           (_%E180015180041%_
                            (lambda ()
                              (if (gx#stx-pair? _%e180014180021%_)
                                  (let ((_%e180017180029%_
                                         (gx#syntax-e _%e180014180021%_)))
                                    (let ((_%hd180018180032%_
                                           (##car _%e180017180029%_))
                                          (_%tl180019180034%_
                                           (##cdr _%e180017180029%_)))
                                      (let* ((_%hd180037%_ _%hd180018180032%_)
                                             (_%rest180039%_
                                              _%tl180019180034%_))
                                        (_%step179893%_
                                         _%hd180037%_
                                         _%rest180039%_
                                         _%r180013%_))))
                                  (_%E180016180025%_)))))
                      (_%E180015180041%_))))
                 (_%step179893%_
                  (lambda (_%hd179926%_ _%rest179927%_ _%r179928%_)
                    (let* ((_%e179929179947%_ _%hd179926%_)
                           (_%E179942179951%_
                            (lambda ()
                              (if (_%expanded?179887%_ (gx#stx-e _%hd179926%_))
                                  (_%K179892%_
                                   _%rest179927%_
                                   (cons (gx#stx-e _%hd179926%_) _%r179928%_))
                                  (_%expand1179890%_
                                   _%hd179926%_
                                   _%K179892%_
                                   _%rest179927%_
                                   _%r179928%_))))
                           (_%E179938179967%_
                            (lambda ()
                              (if (gx#stx-pair? _%e179929179947%_)
                                  (let ((_%e179943179955%_
                                         (gx#syntax-e _%e179929179947%_)))
                                    (let ((_%hd179944179958%_
                                           (##car _%e179943179955%_))
                                          (_%tl179945179960%_
                                           (##cdr _%e179943179955%_)))
                                      (let* ((_%macro179963%_
                                              _%hd179944179958%_)
                                             (_%body179965%_
                                              _%tl179945179960%_))
                                        (if (gx#core-bound-identifier?__%
                                             _%macro179963%_
                                             gx#syntax-binding?)
                                            (_%K179892%_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _%macro179963%_)
                                                    _%hd179926%_
                                                    _%method179888%_)
                                                   _%rest179927%_)
                                             _%r179928%_)
                                            (_%E179942179951%_)))))
                                  (_%E179942179951%_))))
                           (_%E179931179981%_
                            (lambda ()
                              (if (gx#stx-pair? _%e179929179947%_)
                                  (let ((_%e179939179971%_
                                         (gx#syntax-e _%e179929179947%_)))
                                    (let ((_%hd179940179974%_
                                           (##car _%e179939179971%_))
                                          (_%tl179941179976%_
                                           (##cdr _%e179939179971%_)))
                                      (if (eq? (gx#stx-e _%hd179940179974%_)
                                               'begin:)
                                          (let ((_%body179979%_
                                                 _%tl179941179976%_))
                                            (_%K179892%_
                                             (gx#stx-foldr
                                              cons
                                              _%rest179927%_
                                              _%body179979%_)
                                             _%r179928%_))
                                          (_%E179938179967%_))))
                                  (_%E179938179967%_))))
                           (_%E179930180008%_
                            (lambda ()
                              (if (gx#stx-pair? _%e179929179947%_)
                                  (let ((_%e179932179985%_
                                         (gx#syntax-e _%e179929179947%_)))
                                    (let ((_%hd179933179988%_
                                           (##car _%e179932179985%_))
                                          (_%tl179934179990%_
                                           (##cdr _%e179932179985%_)))
                                      (if (eq? (gx#stx-e _%hd179933179988%_)
                                               'phi:)
                                          (if (gx#stx-pair? _%tl179934179990%_)
                                              (let ((_%e179935179993%_
                                                     (gx#syntax-e
                                                      _%tl179934179990%_)))
                                                (let ((_%hd179936179996%_
                                                       (##car _%e179935179993%_))
                                                      (_%tl179937179998%_
                                                       (##cdr _%e179935179993%_)))
                                                  (let* ((_%dphi180001%_
                                                          _%hd179936179996%_)
                                                         (_%body180003%_
                                                          _%tl179937179998%_))
                                                    (if (gx#stx-fixnum?
                                                         _%dphi180001%_)
                                                        (let ((_%rbody180006%_
                                                               (call-with-parameters__1
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_%K179892%_ _%body180003%_ '()))
                        _%current-phi179889%_
                        (fx+ (gx#stx-e _%dphi180001%_)
                             (_%current-phi179889%_)))))
                  (_%K179892%_
                   _%rest179927%_
                   (foldr__0 cons _%r179928%_ _%rbody180006%_)))
                (_%E179931179981%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E179931179981%_))
                                          (_%E179931179981%_))))
                                  (_%E179931179981%_)))))
                      (_%E179930180008%_)))))
          (let* ((_%e179894179901%_ _%stx179886%_)
                 (_%E179896179905%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e179894179901%_)))
                 (_%E179895179922%_
                  (lambda ()
                    (if (gx#stx-pair? _%e179894179901%_)
                        (let ((_%e179897179909%_
                               (gx#syntax-e _%e179894179901%_)))
                          (let ((_%hd179898179912%_ (##car _%e179897179909%_))
                                (_%tl179899179914%_ (##cdr _%e179897179909%_)))
                            (let ((_%body179917%_ _%tl179899179914%_))
                              (if (_%current-phi179889%_)
                                  (_%K179892%_ _%body179917%_ '())
                                  (call-with-parameters__1
                                   (lambda () (_%K179892%_ _%body179917%_ '()))
                                   _%current-phi179889%_
                                   (gx#current-expander-phi))))))
                        (_%E179896179905%_)))))
            (_%E179895179922%_)))))
    (define gx#core-expand-import%__%
      (lambda (_%stx179540%_ _%internal-expand?179541%_)
        (letrec ((_%expand1179543%_
                  (lambda (_%hd179858%_ _%K179859%_ _%rest179860%_ _%r179861%_)
                    (if (gx#core-bound-module? _%hd179858%_)
                        (_%import1179544%_
                         (gx#syntax-local-e__0 _%hd179858%_)
                         _%K179859%_
                         _%rest179860%_
                         _%r179861%_)
                        (if (gx#core-library-module-path? _%hd179858%_)
                            (_%import1179544%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%hd179858%_))
                             _%K179859%_
                             _%rest179860%_
                             _%r179861%_)
                            (if (gx#core-library-relative-module-path?
                                 _%hd179858%_)
                                (_%import1179544%_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _%hd179858%_))
                                 _%K179859%_
                                 _%rest179860%_
                                 _%r179861%_)
                                (let ((_%e179867%_ (gx#stx-e _%hd179858%_)))
                                  (if (pair? _%e179867%_)
                                      (let ((_%$e179870%_
                                             (gx#stx-e (##car _%e179867%_))))
                                        (if (eq? 'spec: _%$e179870%_)
                                            (_%import-spec179547%_
                                             _%hd179858%_
                                             _%K179859%_
                                             _%rest179860%_
                                             _%r179861%_)
                                            (if (eq? 'in: _%$e179870%_)
                                                (_%import-submodule179545%_
                                                 _%hd179858%_
                                                 _%K179859%_
                                                 _%rest179860%_
                                                 _%r179861%_)
                                                (if (eq? 'runtime:
                                                         _%$e179870%_)
                                                    (_%import-runtime179546%_
                                                     _%hd179858%_
                                                     _%K179859%_
                                                     _%rest179860%_
                                                     _%r179861%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _%stx179540%_
                                                     _%hd179858%_)))))
                                      (if (string? _%e179867%_)
                                          (_%import1179544%_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _%hd179858%_
                                             (gx#stx-source _%stx179540%_)))
                                           _%K179859%_
                                           _%rest179860%_
                                           _%r179861%_)
                                          (if (##structure-instance-of?
                                               _%e179867%_
                                               'gx#module-context::t)
                                              (_%K179859%_
                                               _%rest179860%_
                                               (cons _%e179867%_ _%r179861%_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _%stx179540%_
                                               _%hd179858%_))))))))))
                 (_%import1179544%_
                  (lambda (_%ctx179847%_
                           _%K179848%_
                           _%rest179849%_
                           _%r179850%_)
                    (let ((_%dphi179852%_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_%K179848%_
                       _%rest179849%_
                       (cons (##structure
                              gx#import-set::t
                              _%ctx179847%_
                              _%dphi179852%_
                              (map (lambda (_%g179853179855%_)
                                     (gx#core-module-export->import__%
                                      _%g179853179855%_
                                      '#f
                                      _%dphi179852%_))
                                   (##unchecked-structure-ref
                                    _%ctx179847%_
                                    '9
                                    '#f
                                    '#f)))
                             _%r179850%_)))))
                 (_%import-submodule179545%_
                  (lambda (_%hd179814%_ _%K179815%_ _%rest179816%_ _%r179817%_)
                    (let* ((_%e179818179825%_ _%hd179814%_)
                           (_%E179820179829%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e179818179825%_)))
                           (_%E179819179843%_
                            (lambda ()
                              (if (gx#stx-pair? _%e179818179825%_)
                                  (let ((_%e179821179833%_
                                         (gx#syntax-e _%e179818179825%_)))
                                    (let ((_%hd179822179836%_
                                           (##car _%e179821179833%_))
                                          (_%tl179823179838%_
                                           (##cdr _%e179821179833%_)))
                                      (let ((_%spath179841%_
                                             _%tl179823179838%_))
                                        (_%import1179544%_
                                         (_%import-spec-source179548%_
                                          _%spath179841%_)
                                         _%K179815%_
                                         _%rest179816%_
                                         _%r179817%_))))
                                  (_%E179820179829%_)))))
                      (_%E179819179843%_))))
                 (_%import-runtime179546%_
                  (lambda (_%hd179781%_ _%K179782%_ _%rest179783%_ _%r179784%_)
                    (let* ((_%e179785179792%_ _%hd179781%_)
                           (_%E179787179796%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e179785179792%_)))
                           (_%E179786179810%_
                            (lambda ()
                              (if (gx#stx-pair? _%e179785179792%_)
                                  (let ((_%e179788179800%_
                                         (gx#syntax-e _%e179785179792%_)))
                                    (let ((_%hd179789179803%_
                                           (##car _%e179788179800%_))
                                          (_%tl179790179805%_
                                           (##cdr _%e179788179800%_)))
                                      (let ((_%spath179808%_
                                             _%tl179790179805%_))
                                        (_%K179782%_
                                         _%rest179783%_
                                         (cons (_%import-spec-source179548%_
                                                _%spath179808%_)
                                               _%r179784%_)))))
                                  (_%E179787179796%_)))))
                      (_%E179786179810%_))))
                 (_%import-spec179547%_
                  (lambda (_%hd179619%_ _%K179620%_ _%rest179621%_ _%r179622%_)
                    (let* ((_%e179623179640%_ _%hd179619%_)
                           (_%E179632179644%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e179623179640%_)))
                           (_%E179625179755%_
                            (lambda ()
                              (if (gx#stx-pair? _%e179623179640%_)
                                  (let ((_%e179633179648%_
                                         (gx#syntax-e _%e179623179640%_)))
                                    (let ((_%hd179634179651%_
                                           (##car _%e179633179648%_))
                                          (_%tl179635179653%_
                                           (##cdr _%e179633179648%_)))
                                      (if (gx#stx-pair? _%tl179635179653%_)
                                          (let ((_%e179636179656%_
                                                 (gx#syntax-e
                                                  _%tl179635179653%_)))
                                            (let ((_%hd179637179659%_
                                                   (##car _%e179636179656%_))
                                                  (_%tl179638179661%_
                                                   (##cdr _%e179636179656%_)))
                                              (let* ((_%path179664%_
                                                      _%hd179637179659%_)
                                                     (_%specs179666%_
                                                      _%tl179638179661%_))
                                                (let ((_%src-ctx179668%_
                                                       (_%import-spec-source179548%_
                                                        _%path179664%_))
                                                      (_%exports179669%_
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
                                                      (_%specs179670%_
                                                       (gx#syntax->list
                                                        _%specs179666%_)))
                                                  (for-each
                                                   (lambda (_%out179672%_)
                                                     (__hash-put!
                                                      _%exports179669%_
                                                      (cons (##unchecked-structure-ref
                                                             _%out179672%_
                                                             '3
                                                             '#f
                                                             '#f)
                                                            (##unchecked-structure-ref
                                                             _%out179672%_
                                                             '4
                                                             '#f
                                                             '#f))
                                                      _%out179672%_))
                                                   (##unchecked-structure-ref
                                                    _%src-ctx179668%_
                                                    '9
                                                    '#f
                                                    '#f))
                                                  (_%K179620%_
                                                   _%rest179621%_
                                                   (foldl__0
                                                    (lambda (_%spec179674%_
                                                             _%r179675%_)
                                                      (let* ((_%e179676179692%_
                                                              _%spec179674%_)
                                                             (_%E179678179696%_
                                                              (lambda ()
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid syntax-case clause"
                         _%e179676179692%_)))
                     (_%E179677179751%_
                      (lambda ()
                        (if (gx#stx-pair? _%e179676179692%_)
                            (let ((_%e179679179700%_
                                   (gx#syntax-e _%e179676179692%_)))
                              (let ((_%hd179680179703%_
                                     (##car _%e179679179700%_))
                                    (_%tl179681179705%_
                                     (##cdr _%e179679179700%_)))
                                (let ((_%phi179708%_ _%hd179680179703%_))
                                  (if (gx#stx-pair? _%tl179681179705%_)
                                      (let ((_%e179682179710%_
                                             (gx#syntax-e _%tl179681179705%_)))
                                        (let ((_%hd179683179713%_
                                               (##car _%e179682179710%_))
                                              (_%tl179684179715%_
                                               (##cdr _%e179682179710%_)))
                                          (let ((_%name179718%_
                                                 _%hd179683179713%_))
                                            (if (gx#stx-pair?
                                                 _%tl179684179715%_)
                                                (let ((_%e179685179720%_
                                                       (gx#syntax-e
                                                        _%tl179684179715%_)))
                                                  (let ((_%hd179686179723%_
                                                         (##car _%e179685179720%_))
                                                        (_%tl179687179725%_
                                                         (##cdr _%e179685179720%_)))
                                                    (let ((_%src-phi179728%_
                                                           _%hd179686179723%_))
                                                      (if (gx#stx-pair?
                                                           _%tl179687179725%_)
                                                          (let ((_%e179688179730%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl179687179725%_)))
                    (let ((_%hd179689179733%_ (##car _%e179688179730%_))
                          (_%tl179690179735%_ (##cdr _%e179688179730%_)))
                      (let ((_%src-name179738%_ _%hd179689179733%_))
                        (if (gx#stx-null? _%tl179690179735%_)
                            (if (and (gx#stx-fixnum? _%src-phi179728%_)
                                     (gx#identifier? _%src-name179738%_)
                                     (gx#stx-fixnum? _%phi179708%_)
                                     (gx#identifier? _%name179718%_))
                                (let ((_%src-phi179740%_
                                       (gx#stx-e _%src-phi179728%_))
                                      (_%src-name179741%_
                                       (gx#core-identifier-key
                                        _%src-name179738%_))
                                      (_%phi179742%_ (gx#stx-e _%phi179708%_))
                                      (_%name179743%_
                                       (gx#core-identifier-key
                                        _%name179718%_)))
                                  (let ((_%$e179745%_
                                         (__hash-get
                                          _%exports179669%_
                                          (cons _%src-phi179740%_
                                                _%src-name179741%_))))
                                    (if _%$e179745%_
                                        ((lambda (_%out179748%_)
                                           (cons (gx#core-module-export->import__%
                                                  _%out179748%_
                                                  _%name179743%_
                                                  (fx- _%phi179742%_
                                                       _%src-phi179740%_))
                                                 _%r179675%_))
                                         _%$e179745%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; no matching export"
                                         _%stx179540%_
                                         _%hd179619%_))))
                                (_%E179678179696%_))
                            (_%E179678179696%_)))))
                  (_%E179678179696%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E179678179696%_)))))
                                      (_%E179678179696%_)))))
                            (_%E179678179696%_)))))
                (_%E179677179751%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r179622%_
                                                    _%specs179670%_))))))
                                          (_%E179632179644%_))))
                                  (_%E179632179644%_))))
                           (_%E179624179777%_
                            (lambda ()
                              (if (gx#stx-pair? _%e179623179640%_)
                                  (let ((_%e179626179759%_
                                         (gx#syntax-e _%e179623179640%_)))
                                    (let ((_%hd179627179762%_
                                           (##car _%e179626179759%_))
                                          (_%tl179628179764%_
                                           (##cdr _%e179626179759%_)))
                                      (if (gx#stx-pair? _%tl179628179764%_)
                                          (let ((_%e179629179767%_
                                                 (gx#syntax-e
                                                  _%tl179628179764%_)))
                                            (let ((_%hd179630179770%_
                                                   (##car _%e179629179767%_))
                                                  (_%tl179631179772%_
                                                   (##cdr _%e179629179767%_)))
                                              (let ((_%path179775%_
                                                     _%hd179630179770%_))
                                                (if (gx#stx-null?
                                                     _%tl179631179772%_)
                                                    (_%K179620%_
                                                     _%rest179621%_
                                                     (cons (_%import-spec-source179548%_
                                                            _%path179775%_)
                                                           _%r179622%_))
                                                    (_%E179625179755%_)))))
                                          (_%E179625179755%_))))
                                  (_%E179625179755%_)))))
                      (_%E179624179777%_))))
                 (_%import-spec-source179548%_
                  (lambda (_%spath179617%_)
                    (gx#core-import-nested-module
                     _%spath179617%_
                     _%stx179540%_)))
                 (_%import!179549%_
                  (lambda (_%rbody179562%_)
                    (letrec* ((_%current-ctx179564%_
                               (gx#current-expander-context))
                              (_%deps179565%_ (make-hash-table-eq))
                              (_%bind!179566%_
                               (lambda (_%hd179615%_)
                                 (gx#core-bind-import!__1
                                  _%hd179615%_
                                  _%current-ctx179564%_))))
                      (let _%lp179568%_ ((_%rest179570%_ _%rbody179562%_)
                                         (_%body179571%_ '()))
                        (let* ((_%rest179572179580%_ _%rest179570%_)
                               (_%else179574179591%_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _%current-ctx179564%_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _%current-ctx179564%_
                                       (foldl__0
                                        cons
                                        (##unchecked-structure-ref
                                         _%current-ctx179564%_
                                         '8
                                         '#f
                                         '#f)
                                        _%body179571%_)
                                       '8
                                       '#f
                                       '#f)
                                      '#!void)
                                  (__hash-for-each
                                   (lambda (_%ctx179588%_ _%_179589%_)
                                     (gx#eval-module _%ctx179588%_))
                                   _%deps179565%_)
                                  _%body179571%_))
                               (_%K179576179603%_
                                (lambda (_%rest179594%_ _%hd179595%_)
                                  (if (##structure-direct-instance-of?
                                       _%hd179595%_
                                       'gx#module-import::t)
                                      (let ()
                                        (_%bind!179566%_ _%hd179595%_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _%hd179595%_
                                                   '3
                                                   '#f
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _%hd179595%_
                                                            '1
                                                            '#f
                                                            '#f)
                                                           '3
                                                           '#f
                                                           '#f)))
                                            (__hash-put!
                                             _%deps179565%_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _%hd179595%_
                                               '1
                                               '#f
                                               '#f)
                                              '1
                                              '#f
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _%hd179595%_
                                           'gx#import-set::t)
                                          (let ()
                                            (for-each
                                             _%bind!179566%_
                                             (##unchecked-structure-ref
                                              _%hd179595%_
                                              '3
                                              '#f
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _%hd179595%_
                                                  '2
                                                  '#f
                                                  '#f))
                                                (__hash-put!
                                                 _%deps179565%_
                                                 (##unchecked-structure-ref
                                                  _%hd179595%_
                                                  '1
                                                  '#f
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_%$e179599%_
                                                 (##structure-instance-of?
                                                  _%hd179595%_
                                                  'gx#module-context::t)))
                                            (if _%$e179599%_
                                                _%$e179599%_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _%stx179540%_
                                                 _%hd179595%_)))))
                                  (_%lp179568%_
                                   _%rest179594%_
                                   (cons _%hd179595%_ _%body179571%_)))))
                          (if (pair? _%rest179572179580%_)
                              (let ((_%hd179577179606%_
                                     (##car _%rest179572179580%_))
                                    (_%tl179578179608%_
                                     (##cdr _%rest179572179580%_)))
                                (let* ((_%hd179611%_ _%hd179577179606%_)
                                       (_%rest179613%_ _%tl179578179608%_))
                                  (_%K179576179603%_
                                   _%rest179613%_
                                   _%hd179611%_)))
                              (_%else179574179591%_)))))))
                 (_%expanded-import?179550%_
                  (lambda (_%e179554%_)
                    (let ((_%$e179556%_
                           (##structure-direct-instance-of?
                            _%e179554%_
                            'gx#import-set::t)))
                      (if _%$e179556%_
                          _%$e179556%_
                          (let ((_%$e179559%_
                                 (##structure-direct-instance-of?
                                  _%e179554%_
                                  'gx#module-import::t)))
                            (if _%$e179559%_
                                _%$e179559%_
                                (##structure-instance-of?
                                 _%e179554%_
                                 'gx#module-context::t))))))))
          (let ((_%rbody179552%_
                 (gx#core-expand-import/export
                  _%stx179540%_
                  _%expanded-import?179550%_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _%expand1179543%_)))
            (if _%internal-expand?179541%_
                (reverse _%rbody179552%_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_%import!179549%_ _%rbody179552%_))
                 (gx#stx-source _%stx179540%_)))))))
    (define gx#core-expand-import%__0
      (lambda (_%stx179879%_)
        (let ((_%internal-expand?179881%_ '#f))
          (gx#core-expand-import%__%
           _%stx179879%_
           _%internal-expand?179881%_))))
    (define gx#core-expand-import%
      (lambda _g182531_
        (let ((_g182532_ (##length _g182531_)))
          (cond ((##fx= _g182532_ 1)
                 (apply gx#core-expand-import%__0 _g182531_))
                ((##fx= _g182532_ 2)
                 (apply gx#core-expand-import%__% _g182531_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g182531_))))))
    (define gx#core-import-nested-module
      (lambda (_%spath179467%_ _%where179468%_)
        (let* ((_%e179469179476%_ _%spath179467%_)
               (_%E179471179480%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e179469179476%_)))
               (_%E179470179535%_
                (lambda ()
                  (if (gx#stx-pair? _%e179469179476%_)
                      (let ((_%e179472179484%_
                             (gx#syntax-e _%e179469179476%_)))
                        (let ((_%hd179473179487%_ (##car _%e179472179484%_))
                              (_%tl179474179489%_ (##cdr _%e179472179484%_)))
                          (let* ((_%origin179492%_ _%hd179473179487%_)
                                 (_%sub179494%_ _%tl179474179489%_)
                                 (_%origin-ctx179496%_
                                  (if (gx#stx-false? _%origin179492%_)
                                      (gx#current-expander-context)
                                      (gx#import-module__0 _%origin179492%_))))
                            (let _%lp179498%_ ((_%rest179500%_ _%sub179494%_)
                                               (_%ctx179501%_
                                                _%origin-ctx179496%_))
                              (let* ((_%e179502179509%_ _%rest179500%_)
                                     (_%E179504179513%_
                                      (lambda () _%ctx179501%_))
                                     (_%E179503179531%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%e179502179509%_)
                                            (let ((_%e179505179517%_
                                                   (gx#syntax-e
                                                    _%e179502179509%_)))
                                              (let ((_%hd179506179520%_
                                                     (##car _%e179505179517%_))
                                                    (_%tl179507179522%_
                                                     (##cdr _%e179505179517%_)))
                                                (let* ((_%id179525%_
                                                        _%hd179506179520%_)
                                                       (_%rest179527%_
                                                        _%tl179507179522%_)
                                                       (_%bind179529%_
                                                        (gx#resolve-identifier__%
                                                         _%id179525%_
                                                         '0
                                                         _%ctx179501%_)))
                                                  (if (and (##structure-direct-instance-of?
                                                            _%bind179529%_
                                                            'gx#syntax-binding::t)
                                                           (##structure-instance-of?
                                                            (##unchecked-structure-ref
                                                             _%bind179529%_
                                                             '5
                                                             '#f
                                                             '#f)
                                                            'gx#module-context::t))
                                                      '#!void
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; not bound as module"
                                                       _%where179468%_
                                                       _%spath179467%_
                                                       _%id179525%_))
                                                  (_%lp179498%_
                                                   _%rest179527%_
                                                   (##unchecked-structure-ref
                                                    _%bind179529%_
                                                    '5
                                                    '#f
                                                    '#f)))))
                                            (_%E179504179513%_)))))
                                (_%E179503179531%_))))))
                      (_%E179471179480%_)))))
          (_%E179470179535%_))))
    (define gx#core-expand-import-source
      (lambda (_%hd179465%_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _%hd179465%_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_%stx178960%_ _%internal-expand?178961%_)
        (letrec* ((_%make-export__182459182460%_
                   (lambda (_%bind179413%_
                            _%phi179414%_
                            _%ctx179415%_
                            _%name179416%_)
                     (let* ((_%key179418%_
                             (##unchecked-structure-ref
                              _%bind179413%_
                              '2
                              '#f
                              '#f))
                            (_%export-key179420%_
                             (if _%name179416%_
                                 (gx#core-identifier-key _%name179416%_)
                                 _%key179418%_)))
                       (##structure
                        gx#module-export::t
                        _%ctx179415%_
                        _%key179418%_
                        _%phi179414%_
                        _%export-key179420%_
                        (let ((_%$e179423%_
                               (##structure-instance-of?
                                _%bind179413%_
                                'gx#extern-binding::t)))
                          (if _%$e179423%_
                              _%$e179423%_
                              (##structure-direct-instance-of?
                               _%bind179413%_
                               'gx#import-binding::t)))))))
                  (_%make-export__0__182461182464%_
                   (lambda (_%bind179429%_)
                     (let* ((_%phi179431%_ (gx#current-export-expander-phi))
                            (_%ctx179433%_ (gx#current-expander-context))
                            (_%name179435%_ '#f))
                       (_%make-export__182459182460%_
                        _%bind179429%_
                        _%phi179431%_
                        _%ctx179433%_
                        _%name179435%_))))
                  (_%make-export__1__182462182465%_
                   (lambda (_%bind179437%_ _%phi179438%_)
                     (let* ((_%ctx179440%_ (gx#current-expander-context))
                            (_%name179442%_ '#f))
                       (_%make-export__182459182460%_
                        _%bind179437%_
                        _%phi179438%_
                        _%ctx179440%_
                        _%name179442%_))))
                  (_%make-export__2__182463182466%_
                   (lambda (_%bind179444%_ _%phi179445%_ _%ctx179446%_)
                     (let ((_%name179448%_ '#f))
                       (_%make-export__182459182460%_
                        _%bind179444%_
                        _%phi179445%_
                        _%ctx179446%_
                        _%name179448%_))))
                  (_%make-export178963%_
                   (lambda _g182533_
                     (let ((_g182534_ (##length _g182533_)))
                       (cond ((##fx= _g182534_ 1)
                              (apply _%make-export__0__182461182464%_
                                     _g182533_))
                             ((##fx= _g182534_ 2)
                              (apply _%make-export__1__182462182465%_
                                     _g182533_))
                             ((##fx= _g182534_ 3)
                              (apply _%make-export__2__182463182466%_
                                     _g182533_))
                             ((##fx= _g182534_ 4)
                              (apply _%make-export__182459182460%_ _g182533_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g182533_))))))
                  (_%expand1178964%_
                   (lambda (_%hd179118%_
                            _%K179119%_
                            _%rest179120%_
                            _%r179121%_)
                     (let* ((_%e179122179154%_ _%hd179118%_)
                            (_%E179149179158%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _%stx178960%_
                                _%hd179118%_)))
                            (_%E179139179242%_
                             (lambda ()
                               (if (gx#stx-pair? _%e179122179154%_)
                                   (let ((_%e179150179162%_
                                          (gx#syntax-e _%e179122179154%_)))
                                     (let ((_%hd179151179165%_
                                            (##car _%e179150179162%_))
                                           (_%tl179152179167%_
                                            (##cdr _%e179150179162%_)))
                                       (if (eq? (gx#stx-e _%hd179151179165%_)
                                                'import:)
                                           (let ((_%in179170%_
                                                  _%tl179152179167%_))
                                             (if (gx#stx-list? _%in179170%_)
                                                 (let _%lp179172%_ ((_%in-rest179174%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%in179170%_)
                            (_%r179175%_ _%r179121%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%e179176179183%_
                                                           _%in-rest179174%_)
                                                          (_%E179178179187%_
                                                           (lambda ()
                                                             (_%K179119%_
                                                              _%rest179120%_
                                                              _%r179175%_)))
                                                          (_%E179177179238%_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%e179176179183%_)
                         (let ((_%e179179179191%_
                                (gx#syntax-e _%e179176179183%_)))
                           (let ((_%hd179180179194%_ (##car _%e179179179191%_))
                                 (_%tl179181179196%_
                                  (##cdr _%e179179179191%_)))
                             (let* ((_%hd179199%_ _%hd179180179194%_)
                                    (_%in-rest179201%_ _%tl179181179196%_)
                                    (_%src179236%_
                                     (if (gx#core-bound-module? _%hd179199%_)
                                         (gx#syntax-local-e__0 _%hd179199%_)
                                         (if (gx#core-library-module-path?
                                              _%hd179199%_)
                                             (gx#import-module__0
                                              (gx#core-resolve-library-module-path
                                               _%hd179199%_))
                                             (if (gx#core-library-relative-module-path?
                                                  _%hd179199%_)
                                                 (gx#import-module__0
                                                  (gx#core-resolve-library-relative-module-path
                                                   _%hd179199%_))
                                                 (if (gx#stx-string?
                                                      _%hd179199%_)
                                                     (gx#import-module__0
                                                      (gx#core-resolve-module-path__%
                                                       _%hd179199%_
                                                       (gx#stx-source
                                                        _%stx178960%_)))
                                                     (let* ((_%e179207179214%_
                                                             _%hd179199%_)
                                                            (_%E179209179218%_
                                                             (lambda ()
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; illegal re-export"
                                                                _%stx178960%_
                                                                _%hd179199%_)))
                                                            (_%E179208179232%_
                                                             (lambda ()
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%e179207179214%_)
                           (let ((_%e179210179222%_
                                  (gx#syntax-e _%e179207179214%_)))
                             (let ((_%hd179211179225%_
                                    (##car _%e179210179222%_))
                                   (_%tl179212179227%_
                                    (##cdr _%e179210179222%_)))
                               (if (eq? (gx#stx-e _%hd179211179225%_) 'in:)
                                   (let ((_%spath179230%_ _%tl179212179227%_))
                                     (gx#core-import-nested-module
                                      _%spath179230%_
                                      _%stx178960%_))
                                   (_%E179209179218%_))))
                           (_%E179209179218%_)))))
               (_%E179208179232%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (_%lp179172%_
                                _%in-rest179201%_
                                (_%export-imports178965%_
                                 _%src179236%_
                                 _%r179175%_)))))
                         (_%E179178179187%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E179177179238%_)))
                                                 (_%E179149179158%_)))
                                           (_%E179149179158%_))))
                                   (_%E179149179158%_))))
                            (_%E179126179282%_
                             (lambda ()
                               (if (gx#stx-pair? _%e179122179154%_)
                                   (let ((_%e179140179246%_
                                          (gx#syntax-e _%e179122179154%_)))
                                     (let ((_%hd179141179249%_
                                            (##car _%e179140179246%_))
                                           (_%tl179142179251%_
                                            (##cdr _%e179140179246%_)))
                                       (if (eq? (gx#stx-e _%hd179141179249%_)
                                                'rename:)
                                           (if (gx#stx-pair?
                                                _%tl179142179251%_)
                                               (let ((_%e179143179254%_
                                                      (gx#syntax-e
                                                       _%tl179142179251%_)))
                                                 (let ((_%hd179144179257%_
                                                        (##car _%e179143179254%_))
                                                       (_%tl179145179259%_
                                                        (##cdr _%e179143179254%_)))
                                                   (let ((_%id179262%_
                                                          _%hd179144179257%_))
                                                     (if (gx#stx-pair?
                                                          _%tl179145179259%_)
                                                         (let ((_%e179146179264%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl179145179259%_)))
                   (let ((_%hd179147179267%_ (##car _%e179146179264%_))
                         (_%tl179148179269%_ (##cdr _%e179146179264%_)))
                     (let ((_%name179272%_ _%hd179147179267%_))
                       (if (gx#stx-null? _%tl179148179269%_)
                           (let* ((_%phi179274%_
                                   (gx#current-export-expander-phi))
                                  (_%$e179276%_
                                   (gx#core-resolve-identifier__1
                                    _%id179262%_
                                    _%phi179274%_)))
                             (if _%$e179276%_
                                 ((lambda (_%bind179279%_)
                                    (_%K179119%_
                                     _%rest179120%_
                                     (cons (_%make-export__182459182460%_
                                            _%bind179279%_
                                            _%phi179274%_
                                            (gx#current-expander-context)
                                            _%name179272%_)
                                           _%r179121%_)))
                                  _%$e179276%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Reference to unbound identifier"
                                  _%stx178960%_
                                  _%hd179118%_
                                  _%id179262%_)))
                           (_%E179139179242%_)))))
                 (_%E179139179242%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E179139179242%_))
                                           (_%E179139179242%_))))
                                   (_%E179139179242%_))))
                            (_%E179125179332%_
                             (lambda ()
                               (if (gx#stx-pair? _%e179122179154%_)
                                   (let ((_%e179127179286%_
                                          (gx#syntax-e _%e179122179154%_)))
                                     (let ((_%hd179128179289%_
                                            (##car _%e179127179286%_))
                                           (_%tl179129179291%_
                                            (##cdr _%e179127179286%_)))
                                       (if (eq? (gx#stx-e _%hd179128179289%_)
                                                'spec:)
                                           (if (gx#stx-pair?
                                                _%tl179129179291%_)
                                               (let ((_%e179130179294%_
                                                      (gx#syntax-e
                                                       _%tl179129179291%_)))
                                                 (let ((_%hd179131179297%_
                                                        (##car _%e179130179294%_))
                                                       (_%tl179132179299%_
                                                        (##cdr _%e179130179294%_)))
                                                   (let ((_%phi179302%_
                                                          _%hd179131179297%_))
                                                     (if (gx#stx-pair?
                                                          _%tl179132179299%_)
                                                         (let ((_%e179133179304%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl179132179299%_)))
                   (let ((_%hd179134179307%_ (##car _%e179133179304%_))
                         (_%tl179135179309%_ (##cdr _%e179133179304%_)))
                     (let ((_%id179312%_ _%hd179134179307%_))
                       (if (gx#stx-pair? _%tl179135179309%_)
                           (let ((_%e179136179314%_
                                  (gx#syntax-e _%tl179135179309%_)))
                             (let ((_%hd179137179317%_
                                    (##car _%e179136179314%_))
                                   (_%tl179138179319%_
                                    (##cdr _%e179136179314%_)))
                               (let ((_%name179322%_ _%hd179137179317%_))
                                 (if (gx#stx-null? _%tl179138179319%_)
                                     (if (and (gx#stx-fixnum? _%phi179302%_)
                                              (gx#identifier? _%id179312%_)
                                              (gx#identifier? _%name179322%_))
                                         (let* ((_%phi179324%_
                                                 (gx#stx-e _%phi179302%_))
                                                (_%$e179326%_
                                                 (gx#core-resolve-identifier__1
                                                  _%id179312%_
                                                  _%phi179324%_)))
                                           (if _%$e179326%_
                                               ((lambda (_%bind179329%_)
                                                  (_%K179119%_
                                                   _%rest179120%_
                                                   (cons (_%make-export__182459182460%_
                                                          _%bind179329%_
                                                          _%phi179324%_
                                                          (gx#current-expander-context)
                                                          _%name179322%_)
                                                         _%r179121%_)))
                                                _%$e179326%_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _%stx178960%_
                                                _%hd179118%_
                                                _%id179312%_)))
                                         (_%E179126179282%_))
                                     (_%E179126179282%_)))))
                           (_%E179126179282%_)))))
                 (_%E179126179282%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E179126179282%_))
                                           (_%E179126179282%_))))
                                   (_%E179126179282%_))))
                            (_%E179124179344%_
                             (lambda ()
                               (let ((_%id179336%_ _%e179122179154%_))
                                 (if (gx#identifier? _%id179336%_)
                                     (let ((_%$e179338%_
                                            (gx#core-resolve-identifier__1
                                             _%id179336%_
                                             (gx#current-export-expander-phi))))
                                       (if _%$e179338%_
                                           ((lambda (_%bind179341%_)
                                              (_%K179119%_
                                               _%rest179120%_
                                               (cons (_%make-export__0__182461182464%_
                                                      _%bind179341%_)
                                                     _%r179121%_)))
                                            _%$e179338%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _%stx178960%_
                                            _%hd179118%_)))
                                     (_%E179125179332%_)))))
                            (_%E179123179408%_
                             (lambda ()
                               (if (eq? (gx#stx-e _%e179122179154%_) '#t)
                                   (let* ((_%current-ctx179348%_
                                           (gx#current-expander-context))
                                          (_%current-phi179350%_
                                           (gx#current-export-expander-phi))
                                          (_%phi-ctx179352%_
                                           (gx#core-context-shift
                                            _%current-ctx179348%_
                                            _%current-phi179350%_))
                                          (_%phi-bind179354%_
                                           (hash->list
                                            (##unchecked-structure-ref
                                             _%phi-ctx179352%_
                                             '2
                                             '#f
                                             '#f))))
                                     (let _%lp179357%_ ((_%bind-rest179359%_
                                                         _%phi-bind179354%_)
                                                        (_%set179360%_ '()))
                                       (let* ((_%bind-rest179361179371%_
                                               _%bind-rest179359%_)
                                              (_%else179363179379%_
                                               (lambda ()
                                                 (_%K179119%_
                                                  _%rest179120%_
                                                  (cons (##structure
                                                         gx#export-set::t
                                                         '#f
                                                         _%current-phi179350%_
                                                         _%set179360%_)
                                                        _%r179121%_))))
                                              (_%K179365179389%_
                                               (lambda (_%bind-rest179382%_
                                                        _%bind179383%_
                                                        _%key179384%_)
                                                 (if (or (##structure-direct-instance-of?
                                                          _%bind179383%_
                                                          'gx#import-binding::t)
                                                         (gx#private-feature-binding?
                                                          _%bind179383%_))
                                                     (_%lp179357%_
                                                      _%bind-rest179382%_
                                                      _%set179360%_)
                                                     (_%lp179357%_
                                                      _%bind-rest179382%_
                                                      (cons (_%make-export__2__182463182466%_
                                                             _%bind179383%_
                                                             _%current-phi179350%_
                                                             _%current-ctx179348%_)
                                                            _%set179360%_))))))
                                         (if (pair? _%bind-rest179361179371%_)
                                             (let ((_%hd179366179392%_
                                                    (##car _%bind-rest179361179371%_))
                                                   (_%tl179367179394%_
                                                    (##cdr _%bind-rest179361179371%_)))
                                               (if (pair? _%hd179366179392%_)
                                                   (let ((_%hd179368179397%_
                                                          (##car _%hd179366179392%_))
                                                         (_%tl179369179399%_
                                                          (##cdr _%hd179366179392%_)))
                                                     (let* ((_%key179402%_
                                                             _%hd179368179397%_)
                                                            (_%bind179404%_
                                                             _%tl179369179399%_)
                                                            (_%bind-rest179406%_
                                                             _%tl179367179394%_))
                                                       (_%K179365179389%_
                                                        _%bind-rest179406%_
                                                        _%bind179404%_
                                                        _%key179402%_)))
                                                   (_%else179363179379%_)))
                                             (_%else179363179379%_)))))
                                   (_%E179124179344%_)))))
                       (_%E179123179408%_))))
                  (_%export-imports178965%_
                   (lambda (_%src178995%_ _%r178996%_)
                     (letrec* ((_%current-ctx178998%_
                                (gx#current-expander-context))
                               (_%current-phi178999%_
                                (gx#current-export-expander-phi))
                               (_%import->export179000%_
                                (lambda (_%in179081%_)
                                  (let* ((_%in179082179090%_ _%in179081%_)
                                         (_%E179084179093%_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _%in179082179090%_
                                                   '((module-import
                                                      out
                                                      key
                                                      phi)))
                                            '#!void))
                                         (_%K179085179100%_
                                          (lambda (_%phi179096%_
                                                   _%key179097%_
                                                   _%out179098%_)
                                            (##structure
                                             gx#module-export::t
                                             _%current-ctx178998%_
                                             _%key179097%_
                                             _%phi179096%_
                                             _%key179097%_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _%in179082179090%_
                                         'gx#module-import::t)
                                        (let* ((_%e179086179103%_
                                                (##unchecked-structure-ref
                                                 _%in179082179090%_
                                                 '1
                                                 '#f
                                                 '#f))
                                               (_%out179106%_
                                                _%e179086179103%_)
                                               (_%e179087179108%_
                                                (##unchecked-structure-ref
                                                 _%in179082179090%_
                                                 '2
                                                 '#f
                                                 '#f))
                                               (_%key179111%_
                                                _%e179087179108%_)
                                               (_%e179088179113%_
                                                (##unchecked-structure-ref
                                                 _%in179082179090%_
                                                 '3
                                                 '#f
                                                 '#f))
                                               (_%phi179116%_
                                                _%e179088179113%_))
                                          (_%K179085179100%_
                                           _%phi179116%_
                                           _%key179111%_
                                           _%out179106%_))
                                        (_%E179084179093%_)))))
                               (_%fold-e179001%_
                                (lambda (_%in179003%_ _%r179004%_)
                                  (let* ((_%in179005179019%_ _%in179003%_)
                                         (_%else179008179027%_
                                          (lambda () _%r179004%_)))
                                    (let ((_%K179014179063%_
                                           (lambda (_%phi179059%_
                                                    _%key179060%_
                                                    _%out179061%_)
                                             (if (and (fx= _%phi179059%_
                                                           _%current-phi178999%_)
                                                      (eq? _%src178995%_
                                                           (##unchecked-structure-ref
                                                            _%out179061%_
                                                            '1
                                                            '#f
                                                            '#f)))
                                                 (cons (_%import->export179000%_
                                                        _%in179003%_)
                                                       _%r179004%_)
                                                 _%r179004%_)))
                                          (_%K179010179038%_
                                           (lambda (_%imports179031%_
                                                    _%phi179032%_
                                                    _%ctx179033%_)
                                             (if (and (fx= _%phi179032%_
                                                           _%current-phi178999%_)
                                                      (eq? _%src178995%_
                                                           _%ctx179033%_))
                                                 (foldl__0
                                                  (lambda (_%in179035%_
                                                           _%r179036%_)
                                                    (cons (_%import->export179000%_
                                                           _%in179035%_)
                                                          _%r179036%_))
                                                  _%r179004%_
                                                  _%imports179031%_)
                                                 _%r179004%_))))
                                      (let ((_%try-match179007179056%_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _%in179005179019%_
                                                    'gx#import-set::t)
                                                   (let* ((_%e179011179041%_
                                                           (##unchecked-structure-ref
                                                            _%in179005179019%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                          (_%e179012179046%_
                                                           (##unchecked-structure-ref
                                                            _%in179005179019%_
                                                            '2
                                                            '#f
                                                            '#f))
                                                          (_%e179013179051%_
                                                           (##unchecked-structure-ref
                                                            _%in179005179019%_
                                                            '3
                                                            '#f
                                                            '#f)))
                                                     (let ((_%ctx179044%_
                                                            _%e179011179041%_)
                                                           (_%phi179049%_
                                                            _%e179012179046%_)
                                                           (_%imports179054%_
                                                            _%e179013179051%_))
                                                       (_%K179010179038%_
                                                        _%imports179054%_
                                                        _%phi179049%_
                                                        _%ctx179044%_)))
                                                   (_%else179008179027%_)))))
                                        (if (##structure-direct-instance-of?
                                             _%in179005179019%_
                                             'gx#module-import::t)
                                            (let* ((_%e179015179066%_
                                                    (##unchecked-structure-ref
                                                     _%in179005179019%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                   (_%e179016179071%_
                                                    (##unchecked-structure-ref
                                                     _%in179005179019%_
                                                     '2
                                                     '#f
                                                     '#f))
                                                   (_%e179017179076%_
                                                    (##unchecked-structure-ref
                                                     _%in179005179019%_
                                                     '3
                                                     '#f
                                                     '#f)))
                                              (let ((_%out179069%_
                                                     _%e179015179066%_)
                                                    (_%key179074%_
                                                     _%e179016179071%_)
                                                    (_%phi179079%_
                                                     _%e179017179076%_))
                                                (_%K179014179063%_
                                                 _%phi179079%_
                                                 _%key179074%_
                                                 _%out179069%_)))
                                            (_%try-match179007179056%_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _%src178995%_
                              _%current-phi178999%_
                              (foldl__0
                               _%fold-e179001%_
                               '()
                               (##unchecked-structure-ref
                                _%current-ctx178998%_
                                '8
                                '#f
                                '#f)))
                             _%r178996%_))))
                  (_%export!178966%_
                   (lambda (_%rbody178982%_)
                     (letrec* ((_%current-ctx178984%_
                                (gx#current-expander-context))
                               (_%fold-e178985%_
                                (lambda (_%out178989%_ _%r178990%_)
                                  (if (##structure-direct-instance-of?
                                       _%out178989%_
                                       'gx#module-export::t)
                                      (cons _%out178989%_ _%r178990%_)
                                      (if (##structure-direct-instance-of?
                                           _%out178989%_
                                           'gx#export-set::t)
                                          (foldl__0
                                           cons
                                           _%r178990%_
                                           (##unchecked-structure-ref
                                            _%out178989%_
                                            '3
                                            '#f
                                            '#f))
                                          _%r178990%_)))))
                       (let ((_%body178987%_ (reverse _%rbody178982%_)))
                         (##unchecked-structure-set!
                          _%current-ctx178984%_
                          (foldl__0
                           _%fold-e178985%_
                           (##unchecked-structure-ref
                            _%current-ctx178984%_
                            '9
                            '#f
                            '#f)
                           _%body178987%_)
                          '9
                          '#f
                          '#f)
                         _%body178987%_))))
                  (_%expanded-export?178967%_
                   (lambda (_%e178977%_)
                     (let ((_%$e178979%_
                            (##structure-direct-instance-of?
                             _%e178977%_
                             'gx#module-export::t)))
                       (if _%$e178979%_
                           _%$e178979%_
                           (##structure-direct-instance-of?
                            _%e178977%_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _%internal-expand?178961%_)
              (let ((_%rbody178973%_
                     (gx#core-expand-import/export
                      _%stx178960%_
                      _%expanded-export?178967%_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _%expand1178964%_)))
                (if _%internal-expand?178961%_
                    (reverse _%rbody178973%_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons
                      '%#export
                      (_%export!178966%_ _%rbody178973%_))
                     (gx#stx-source _%stx178960%_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _%stx178960%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _%stx178960%_))))))
    (define gx#core-expand-export%__0
      (lambda (_%stx179458%_)
        (let ((_%internal-expand?179460%_ '#f))
          (gx#core-expand-export%__%
           _%stx179458%_
           _%internal-expand?179460%_))))
    (define gx#core-expand-export%
      (lambda _g182535_
        (let ((_g182536_ (##length _g182535_)))
          (cond ((##fx= _g182536_ 1)
                 (apply gx#core-expand-export%__0 _g182535_))
                ((##fx= _g182536_ 2)
                 (apply gx#core-expand-export%__% _g182535_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g182535_))))))
    (define gx#core-expand-export-source
      (lambda (_%hd178957%_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _%hd178957%_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_%stx178927%_)
        (let* ((_%e178928178935%_ _%stx178927%_)
               (_%E178930178939%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e178928178935%_)))
               (_%E178929178953%_
                (lambda ()
                  (if (gx#stx-pair? _%e178928178935%_)
                      (let ((_%e178931178943%_
                             (gx#syntax-e _%e178928178935%_)))
                        (let ((_%hd178932178946%_ (##car _%e178931178943%_))
                              (_%tl178933178948%_ (##cdr _%e178931178943%_)))
                          (let ((_%body178951%_ _%tl178933178948%_))
                            (if (gx#identifier-list? _%body178951%_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _%body178951%_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _%body178951%_))
                                   (gx#stx-source _%stx178927%_)))
                                (_%E178930178939%_)))))
                      (_%E178930178939%_)))))
          (_%E178929178953%_))))
    (define gx#core-bind-feature!__%
      (lambda (_%id178893%_ _%private?178894%_ _%phi178895%_ _%ctx178896%_)
        (gx#core-bind-syntax!__%
         _%id178893%_
         ((if _%private?178894%_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _%id178893%_))
         _%private?178894%_
         _%phi178895%_
         _%ctx178896%_)))
    (define gx#core-bind-feature!__0
      (lambda (_%id178901%_)
        (let* ((_%private?178903%_ '#f)
               (_%phi178905%_ (gx#current-expander-phi))
               (_%ctx178907%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id178901%_
           _%private?178903%_
           _%phi178905%_
           _%ctx178907%_))))
    (define gx#core-bind-feature!__1
      (lambda (_%id178909%_ _%private?178910%_)
        (let* ((_%phi178912%_ (gx#current-expander-phi))
               (_%ctx178914%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id178909%_
           _%private?178910%_
           _%phi178912%_
           _%ctx178914%_))))
    (define gx#core-bind-feature!__2
      (lambda (_%id178916%_ _%private?178917%_ _%phi178918%_)
        (let ((_%ctx178920%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id178916%_
           _%private?178917%_
           _%phi178918%_
           _%ctx178920%_))))
    (define gx#core-bind-feature!
      (lambda _g182537_
        (let ((_g182538_ (##length _g182537_)))
          (cond ((##fx= _g182538_ 1)
                 (apply gx#core-bind-feature!__0 _g182537_))
                ((##fx= _g182538_ 2)
                 (apply gx#core-bind-feature!__1 _g182537_))
                ((##fx= _g182538_ 3)
                 (apply gx#core-bind-feature!__2 _g182537_))
                ((##fx= _g182538_ 4)
                 (apply gx#core-bind-feature!__% _g182537_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g182537_))))))))
