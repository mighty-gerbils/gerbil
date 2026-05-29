(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1779967243)
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
      (lambda _%$args187797%_
        (apply make-instance gx#module-import::t _%$args187797%_)))
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
      (lambda _%$args187794%_
        (apply make-instance gx#module-export::t _%$args187794%_)))
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
      (lambda _%$args187791%_
        (apply make-instance gx#import-set::t _%$args187791%_)))
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
      (lambda _%$args187788%_
        (apply make-instance gx#export-set::t _%$args187788%_)))
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
      (lambda _%$args187785%_
        (apply make-instance gx#import-expander::t _%$args187785%_)))
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
      (lambda _%$args187782%_
        (apply make-instance gx#export-expander::t _%$args187782%_)))
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
      (lambda _%$args187779%_
        (apply make-instance gx#import-export-expander::t _%$args187779%_)))
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
      (lambda (_%path187776%_ _%fun187777%_)
        (call-with-input-file
         (cons 'path: (cons _%path187776%_ gx#source-file-settings))
         _%fun187777%_)))
    (define gx#module-context:::init!
      (lambda (_%self187759%_
               _%id187760%_
               _%super187761%_
               _%ns187762%_
               _%path187763%_)
        (let ((_%self187766%_ _%self187759%_))
          (if (##fx< '11 (##structure-length _%self187766%_))
              (begin
                (##unchecked-structure-set!
                 _%self187766%_
                 _%id187760%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self187766%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self187766%_
                 _%super187761%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self187766%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self187766%_ '#f '5 '#f '#f)
                (##unchecked-structure-set!
                 _%self187766%_
                 _%ns187762%_
                 '6
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self187766%_
                 _%path187763%_
                 '7
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self187766%_ '() '8 '#f '#f)
                (##unchecked-structure-set! _%self187766%_ '() '9 '#f '#f)
                (##unchecked-structure-set! _%self187766%_ '#f '10 '#f '#f)
                (##unchecked-structure-set! _%self187766%_ '#f '11 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self187766%_
                     '11
                     (##structure-length _%self187766%_))))))
    (__bind-method!__%
     gx#module-context::t
     ':init!
     gx#module-context:::init!
     '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_%self187592%_ _%ctx187593%_ _%root187594%_)
        (let* ((_%self187597%_ _%self187592%_)
               (_%super187613%_
                (let ((_%$e187607%_ _%root187594%_))
                  (if _%$e187607%_
                      _%$e187607%_
                      (let ((_%$e187610%_ (gx#core-context-root__0)))
                        (if _%$e187610%_
                            _%$e187610%_
                            (let ((__obj187841
                                   (##structure gx#root-context::t '#f '#f)))
                              (let ((__constructor187842
                                     (direct-method-ref
                                      gx#root-context::t
                                      __obj187841
                                      ':init!)))
                                (if __constructor187842
                                    (__constructor187842 __obj187841)
                                    (error '"missing constructor method implementation"
                                           'class:
                                           gx#root-context::t
                                           'method:
                                           ':init!)))
                              __obj187841)))))))
          (if _%ctx187593%_
              (let ((_%id187616%_
                     (##structure-ref
                      _%ctx187593%_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_%path187617%_
                     (##structure-ref
                      _%ctx187593%_
                      '7
                      gx#module-context::t
                      '#f))
                    (_%in187618%_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _%ctx187593%_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_%e187619%_
                     (__make-atomic-promise
                      (lambda () (gx#eval-module _%ctx187593%_)))))
                (if (##fx< '8 (##structure-length _%self187597%_))
                    (begin
                      (##unchecked-structure-set!
                       _%self187597%_
                       _%id187616%_
                       '1
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self187597%_
                       (make-hash-table-eq 'size: (##length _%in187618%_))
                       '2
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self187597%_
                       _%super187613%_
                       '3
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self187597%_
                       '#f
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self187597%_
                       '#f
                       '5
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self187597%_
                       _%path187617%_
                       '6
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self187597%_
                       _%in187618%_
                       '7
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self187597%_
                       _%e187619%_
                       '8
                       '#f
                       '#f)
                      '#!void)
                    (error '"struct-instance-init!: too many arguments for struct"
                           _%self187597%_
                           '8
                           (##structure-length _%self187597%_)))
                (##for-each
                 (lambda (_%g187620187622%_)
                   (gx#core-bind-weak-import!__%
                    _%g187620187622%_
                    _%self187597%_))
                 _%in187618%_))
              (if (##fx< '8 (##structure-length _%self187597%_))
                  (begin
                    (##unchecked-structure-set! _%self187597%_ '#f '1 '#f '#f)
                    (##unchecked-structure-set!
                     _%self187597%_
                     (make-hash-table-eq)
                     '2
                     '#f
                     '#f)
                    (##unchecked-structure-set!
                     _%self187597%_
                     _%super187613%_
                     '3
                     '#f
                     '#f)
                    (##unchecked-structure-set! _%self187597%_ '#f '4 '#f '#f)
                    (##unchecked-structure-set! _%self187597%_ '#f '5 '#f '#f)
                    (##unchecked-structure-set! _%self187597%_ '#f '6 '#f '#f)
                    (##unchecked-structure-set! _%self187597%_ '() '7 '#f '#f)
                    (##unchecked-structure-set! _%self187597%_ '#f '8 '#f '#f)
                    '#!void)
                  (error '"struct-instance-init!: too many arguments for struct"
                         _%self187597%_
                         '8
                         (##structure-length _%self187597%_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_%self187628%_ _%ctx187629%_)
        (let ((_%root187631%_ '#f))
          (gx#prelude-context:::init!__%
           _%self187628%_
           _%ctx187629%_
           _%root187631%_))))
    (define gx#prelude-context:::init!
      (lambda _g187848_
        (let ((_g187849_ (##length _g187848_)))
          (cond ((##fx= _g187849_ 2)
                 (apply gx#prelude-context:::init!__0 _g187848_))
                ((##fx= _g187849_ 3)
                 (apply gx#prelude-context:::init!__% _g187848_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g187848_))))))
    (__bind-method!__%
     gx#prelude-context::t
     ':init!
     gx#prelude-context:::init!
     '#f)
    (define gx#import-export-expander-init!
      (lambda (_%self187466%_ _%e187467%_)
        (if (##fx< '3 (##structure-length _%self187466%_))
            (begin
              (##unchecked-structure-set!
               _%self187466%_
               _%e187467%_
               '1
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self187466%_
               (gx#current-expander-context)
               '2
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self187466%_
               (##fx- (gx#current-expander-phi) '1)
               '3
               '#f
               '#f)
              '#!void)
            (error '"struct-instance-init!: too many arguments for struct"
                   _%self187466%_
                   '3
                   (##structure-length _%self187466%_)))))
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
      (lambda (_%g187092187095%_ _%g187093187097%_)
        (gx#core-apply-user-expander__%
         _%g187092187095%_
         _%g187093187097%_
         'apply-import-expander)))
    (__bind-method!__%
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_%g186963186966%_ _%g186964186968%_)
        (gx#core-apply-user-expander__%
         _%g186963186966%_
         _%g186964186968%_
         'apply-export-expander)))
    (__bind-method!__%
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_%ctx186834%_)
        (let* ((_%path186836%_
                (##structure-ref _%ctx186834%_ '7 gx#module-context::t '#f))
               (_%path186838%_
                (if (pair? _%path186836%_)
                    (##last _%path186836%_)
                    _%path186836%_)))
          (if (string? _%path186838%_) _%path186838%_ '#f))))
    (define gx#import-module__%
      (lambda (_%path186810%_ _%reload?186811%_ _%eval?186812%_)
        (let ((_%ctx186814%_
               ((gx#current-expander-module-import)
                _%path186810%_
                _%reload?186811%_)))
          (if (and _%ctx186814%_ _%eval?186812%_)
              (gx#eval-module _%ctx186814%_)
              '#!void)
          _%ctx186814%_)))
    (define gx#import-module__0
      (lambda (_%path186819%_)
        (let* ((_%reload?186821%_ '#f) (_%eval?186823%_ '#f))
          (gx#import-module__%
           _%path186819%_
           _%reload?186821%_
           _%eval?186823%_))))
    (define gx#import-module__1
      (lambda (_%path186825%_ _%reload?186826%_)
        (let ((_%eval?186828%_ '#f))
          (gx#import-module__%
           _%path186825%_
           _%reload?186826%_
           _%eval?186828%_))))
    (define gx#import-module
      (lambda _g187850_
        (let ((_g187851_ (##length _g187850_)))
          (cond ((##fx= _g187851_ 1) (apply gx#import-module__0 _g187850_))
                ((##fx= _g187851_ 2) (apply gx#import-module__1 _g187850_))
                ((##fx= _g187851_ 3) (apply gx#import-module__% _g187850_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g187850_))))))
    (define gx#eval-module
      (lambda (_%mod186807%_)
        ((gx#current-expander-module-eval) _%mod186807%_)))
    (define gx#core-eval-module
      (lambda (_%obj186786%_)
        (letrec ((_%force-e186788%_
                  (lambda (_%getf186802%_ _%e186803%_)
                    (call-with-parameters__1
                     (lambda ()
                       (call-with-parameters__1
                        (lambda () (force (_%getf186802%_ _%e186803%_)))
                        gx#current-expander-phi
                        '0))
                     gx#current-expander-context
                     _%e186803%_))))
          (let _%recur186790%_ ((_%e186792%_ _%obj186786%_))
            (if (##structure-instance-of? _%e186792%_ 'gx#module-context::t)
                (let ()
                  (let ((_%$e186795%_
                         (gx#core-context-prelude__% _%e186792%_)))
                    (if _%$e186795%_ (_%recur186790%_ _%$e186795%_) '#!void))
                  (_%force-e186788%_ gx#module-context-e _%e186792%_))
                (if (##structure-instance-of?
                     _%e186792%_
                     'gx#prelude-context::t)
                    (_%force-e186788%_ gx#prelude-context-e _%e186792%_)
                    (if (gx#stx-string? _%e186792%_)
                        (_%recur186790%_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _%e186792%_)))
                        (if (gx#core-library-module-path? _%e186792%_)
                            (_%recur186790%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%e186792%_)))
                            (error '"cannot eval module" _%obj186786%_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_%ctx186766%_)
        (let _%lp186768%_ ((_%e186770%_ _%ctx186766%_))
          (if (or (##structure-instance-of? _%e186770%_ 'gx#module-context::t)
                  (##structure-instance-of? _%e186770%_ 'gx#local-context::t))
              (_%lp186768%_ (##unchecked-structure-ref _%e186770%_ '3 '#f '#f))
              (if (##structure-instance-of? _%e186770%_ 'gx#prelude-context::t)
                  _%e186770%_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_%ctx186782%_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _%ctx186782%_))))
    (define gx#core-context-prelude
      (lambda _g187852_
        (let ((_g187853_ (##length _g187852_)))
          (cond ((##fx= _g187853_ 0)
                 (apply gx#core-context-prelude__0 _g187852_))
                ((##fx= _g187853_ 1)
                 (apply gx#core-context-prelude__% _g187852_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g187852_))))))
    (define gx#core-module->prelude-context
      (lambda (_%ctx186757%_)
        (let ((_%$e186759%_ (__hash-get gx#__module-registry _%ctx186757%_)))
          (if _%$e186759%_
              _%$e186759%_
              (let ((_%pre186763%_
                     (let ((__obj187843
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
                        __obj187843
                        _%ctx186757%_)
                       __obj187843)))
                (__hash-put! gx#__module-registry _%ctx186757%_ _%pre186763%_)
                _%pre186763%_)))))
    (define gx#core-import-module__%
      (lambda (_%rpath186625%_ _%reload?186626%_)
        (letrec ((_%import-source186628%_
                  (lambda (_%path186716%_)
                    (if (member _%path186716%_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _%path186716%_)
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
                                      (let ((_g187854_
                                             (gx#core-read-module
                                              _%path186716%_)))
                                        (begin
                                          (let ((_g187855_
                                                 (if (##values? _g187854_)
                                                     (##values-length
                                                      _g187854_)
                                                     1)))
                                            (if (not (##fx= _g187855_ 4))
                                                (error "Context expects 4 values"
                                                       _g187855_)))
                                          (let ((_%pre186724%_
                                                 (##values-ref _g187854_ 0))
                                                (_%id186725%_
                                                 (##values-ref _g187854_ 1))
                                                (_%ns186726%_
                                                 (##values-ref _g187854_ 2))
                                                (_%body186727%_
                                                 (##values-ref _g187854_ 3)))
                                            (let* ((_%prelude186737%_
                                                    (if (##structure-instance-of?
                                                         _%pre186724%_
                                                         'gx#prelude-context::t)
                                                        _%pre186724%_
                                                        (if (##structure-instance-of?
                                                             _%pre186724%_
                                                             'gx#module-context::t)
                                                            (gx#core-module->prelude-context
                                                             _%pre186724%_)
                                                            (if (string? _%pre186724%_)
                                                                (gx#core-module->prelude-context
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#core-import-module__0 _%pre186724%_))
                        (if (not _%pre186724%_)
                            (let ((_%$e186733%_
                                   (gx#current-expander-module-prelude)))
                              (if _%$e186733%_
                                  _%$e186733%_
                                  (let ((__obj187844
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
                                     __obj187844
                                     '#f)
                                    __obj187844)))
                            (error '"cannot import module; unknown prelude"
                                   _%rpath186625%_
                                   _%pre186724%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%ctx186739%_
                                                    (let ((__obj187845
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
                                                       __obj187845
                                                       _%id186725%_
                                                       _%prelude186737%_
                                                       _%ns186726%_
                                                       _%path186716%_)
                                                      __obj187845))
                                                   (_%body186741%_
                                                    (gx#core-expand-module-begin
                                                     _%body186727%_
                                                     _%ctx186739%_))
                                                   (_%body186743%_
                                                    (gx#core-quote-syntax__%
                                                     (gx#core-cons
                                                      '%#begin
                                                      _%body186741%_)
                                                     _%path186716%_
                                                     _%ctx186739%_
                                                     '())))
                                              (##unchecked-structure-set!
                                               _%ctx186739%_
                                               (__make-atomic-promise
                                                (lambda ()
                                                  (gx#eval-syntax*
                                                   _%body186743%_)))
                                               '10
                                               '#f
                                               '#f)
                                              (##unchecked-structure-set!
                                               _%ctx186739%_
                                               _%body186743%_
                                               '11
                                               '#f
                                               '#f)
                                              (__hash-put!
                                               gx#__module-registry
                                               _%path186716%_
                                               _%ctx186739%_)
                                              (__hash-put!
                                               gx#__module-registry
                                               _%id186725%_
                                               _%ctx186739%_)
                                              _%ctx186739%_)))))
                                    gx#current-export-expander-phi
                                    '#f))
                                 gx#current-import-expander-phi
                                 '#f))
                              gx#current-expander-path
                              (cons _%path186716%_
                                    (gx#current-expander-path))))
                           gx#current-expander-phi
                           '0))
                        gx#current-expander-marks
                        '()))
                     gx#current-expander-context
                     (gx#core-context-root__0))))
                 (_%import-submodule186629%_
                  (lambda (_%rpath186645%_)
                    (let* ((_%rpath186646186653%_ _%rpath186645%_)
                           (_%E186648186656%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%rpath186646186653%_
                                     '([origin . refs]))
                              '#!void))
                           (_%K186649186704%_
                            (lambda (_%refs186659%_ _%origin186660%_)
                              (let ((_%ctx186662%_
                                     (if _%origin186660%_
                                         (gx#core-import-module__%
                                          _%origin186660%_
                                          _%reload?186626%_)
                                         (gx#current-expander-context))))
                                (let _%lp186664%_ ((_%rest186666%_
                                                    _%refs186659%_)
                                                   (_%ctx186667%_
                                                    _%ctx186662%_))
                                  (let* ((_%rest186668186676%_ _%rest186666%_)
                                         (_%else186670186684%_
                                          (lambda () _%ctx186667%_))
                                         (_%K186672186692%_
                                          (lambda (_%rest186687%_ _%id186688%_)
                                            (let ((_%bind186690%_
                                                   (gx#resolve-identifier__%
                                                    _%id186688%_
                                                    '0
                                                    _%ctx186667%_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _%bind186690%_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _%bind186690%_
                                                         '5
                                                         '#f
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_%lp186664%_
                                                   _%rest186687%_
                                                   (##unchecked-structure-ref
                                                    _%bind186690%_
                                                    '5
                                                    '#f
                                                    '#f))
                                                  (error '"cannot import submodule; not bound as a module"
                                                         _%rpath186645%_
                                                         _%id186688%_
                                                         _%bind186690%_))))))
                                    (if (pair? _%rest186668186676%_)
                                        (let ((_%hd186673186695%_
                                               (##car _%rest186668186676%_))
                                              (_%tl186674186697%_
                                               (##cdr _%rest186668186676%_)))
                                          (let* ((_%id186700%_
                                                  _%hd186673186695%_)
                                                 (_%rest186702%_
                                                  _%tl186674186697%_))
                                            (_%K186672186692%_
                                             _%rest186702%_
                                             _%id186700%_)))
                                        (_%else186670186684%_))))))))
                      (if (pair? _%rpath186646186653%_)
                          (let ((_%hd186650186707%_
                                 (##car _%rpath186646186653%_))
                                (_%tl186651186709%_
                                 (##cdr _%rpath186646186653%_)))
                            (let* ((_%origin186712%_ _%hd186650186707%_)
                                   (_%refs186714%_ _%tl186651186709%_))
                              (_%K186649186704%_
                               _%refs186714%_
                               _%origin186712%_)))
                          (_%E186648186656%_))))))
          (let ((_%$e186631%_
                 (if (not _%reload?186626%_)
                     (__hash-get gx#__module-registry _%rpath186625%_)
                     '#f)))
            (if _%$e186631%_
                _%$e186631%_
                (if (list? _%rpath186625%_)
                    (_%import-submodule186629%_ _%rpath186625%_)
                    (if (gx#core-library-module-path? _%rpath186625%_)
                        (let ((_%ctx186636%_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _%rpath186625%_)
                                _%reload?186626%_)))
                          (__hash-put!
                           gx#__module-registry
                           _%rpath186625%_
                           _%ctx186636%_)
                          _%ctx186636%_)
                        (let* ((_%npath186639%_
                                (path-normalize _%rpath186625%_))
                               (_%$e186641%_
                                (if (not _%reload?186626%_)
                                    (__hash-get
                                     gx#__module-registry
                                     _%npath186639%_)
                                    '#f)))
                          (if _%$e186641%_
                              _%$e186641%_
                              (_%import-source186628%_
                               _%npath186639%_))))))))))
    (define gx#core-import-module__0
      (lambda (_%rpath186750%_)
        (let ((_%reload?186752%_ '#f))
          (gx#core-import-module__% _%rpath186750%_ _%reload?186752%_))))
    (define gx#core-import-module
      (lambda _g187856_
        (let ((_g187857_ (##length _g187856_)))
          (cond ((##fx= _g187857_ 1)
                 (apply gx#core-import-module__0 _g187856_))
                ((##fx= _g187857_ 2)
                 (apply gx#core-import-module__% _g187856_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g187856_))))))
    (define gx#core-read-module
      (lambda (_%path186607%_)
        (__with-catch
         (lambda (_%exn186609%_)
           (if (datum-parsing-exception? _%exn186609%_)
               (let ((_%pos186611%_
                      (datum-parsing-exception-filepos _%exn186609%_)))
                 (if (= _%pos186611%_ '0)
                     (gx#core-read-module/lang _%path186607%_)
                     (gx#raise-syntax-error
                      'read-module
                      '"error reading module"
                      _%path186607%_
                      (call-with-parameters__1
                       (lambda ()
                         (call-with-output-string
                          '""
                          (lambda (_%g186613186615%_)
                            (display-exception__%
                             _%exn186609%_
                             _%g186613186615%_))))
                       dump-stack-trace?
                       '#f)
                      (cons 'line:
                            (cons (##filepos-line _%pos186611%_)
                                  (cons 'col:
                                        (cons (##filepos-col _%pos186611%_)
                                              '())))))))
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _%path186607%_
                (call-with-parameters__1
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_%g186618186620%_)
                      (display-exception__% _%exn186609%_ _%g186618186620%_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _%path186607%_)))))
    (define gx#core-read-module/sexp
      (lambda (_%path186459%_)
        (let _%lp186461%_ ((_%body186463%_
                            (read-syntax-from-file _%path186459%_))
                           (_%pre186464%_ '#f)
                           (_%ns186465%_ '#f)
                           (_%pkg186466%_ '#f))
          (let* ((_%e186467186491%_ _%body186463%_)
                 (_%E186483186517%_
                  (lambda ()
                    (let ((_g187858_
                           (if _%pkg186466%_
                               (values _%pre186464%_
                                       _%ns186465%_
                                       _%pkg186466%_)
                               (gx#core-read-module-package
                                _%path186459%_
                                _%pre186464%_
                                _%ns186465%_))))
                      (begin
                        (let ((_g187859_
                               (if (##values? _g187858_)
                                   (##values-length _g187858_)
                                   1)))
                          (if (not (##fx= _g187859_ 3))
                              (error "Context expects 3 values" _g187859_)))
                        (let ((_%pre186495%_ (##values-ref _g187858_ 0))
                              (_%ns186496%_ (##values-ref _g187858_ 1))
                              (_%pkg186497%_ (##values-ref _g187858_ 2)))
                          (let* ((_%prelude186503%_
                                  (if (gx#core-bound-module-prelude?
                                       _%pre186495%_)
                                      (gx#syntax-local-e__0 _%pre186495%_)
                                      (if (gx#core-library-module-path?
                                           _%pre186495%_)
                                          (gx#core-resolve-library-module-path
                                           _%pre186495%_)
                                          (if (gx#stx-string? _%pre186495%_)
                                              (gx#core-resolve-module-path__%
                                               _%pre186495%_
                                               _%path186459%_)
                                              (gx#stx-e _%pre186495%_)))))
                                 (_%path-id186505%_
                                  (gx#core-module-path->namespace
                                   _%path186459%_))
                                 (_%pkg-id186507%_
                                  (if _%pkg186497%_
                                      (##string-append
                                       _%pkg186497%_
                                       '"/"
                                       _%path-id186505%_)
                                      _%path-id186505%_))
                                 (_%module-id186509%_
                                  (##string->symbol _%pkg-id186507%_))
                                 (_%module-ns186514%_
                                  (if (eq? _%ns186496%_ '#!void)
                                      '#f
                                      (let ((_%$e186511%_ _%ns186496%_))
                                        (if _%$e186511%_
                                            _%$e186511%_
                                            _%pkg-id186507%_)))))
                            (values _%prelude186503%_
                                    _%module-id186509%_
                                    _%module-ns186514%_
                                    _%body186463%_)))))))
                 (_%E186476186549%_
                  (lambda ()
                    (if (gx#stx-pair? _%e186467186491%_)
                        (let ((_%e186484186521%_
                               (gx#syntax-e _%e186467186491%_)))
                          (let ((_%hd186485186524%_ (##car _%e186484186521%_))
                                (_%tl186486186526%_ (##cdr _%e186484186521%_)))
                            (if (eq? (gx#stx-e _%hd186485186524%_) 'package:)
                                (if (gx#stx-pair? _%tl186486186526%_)
                                    (let ((_%e186487186529%_
                                           (gx#syntax-e _%tl186486186526%_)))
                                      (let ((_%hd186488186532%_
                                             (##car _%e186487186529%_))
                                            (_%tl186489186534%_
                                             (##cdr _%e186487186529%_)))
                                        (let* ((_%pkg186537%_
                                                _%hd186488186532%_)
                                               (_%rest186539%_
                                                _%tl186489186534%_)
                                               (_%pkg186547%_
                                                (if (gx#identifier?
                                                     _%pkg186537%_)
                                                    (symbol->string
                                                     (gx#stx-e _%pkg186537%_))
                                                    (if (or (gx#stx-string?
                                                             _%pkg186537%_)
                                                            (gx#stx-false?
                                                             _%pkg186537%_))
                                                        (gx#stx-e
                                                         _%pkg186537%_)
                                                        (gx#raise-syntax-error
                                                         'import
                                                         '"Bad syntax; Illegal package name"
                                                         _%pkg186537%_)))))
                                          (_%lp186461%_
                                           _%rest186539%_
                                           _%pre186464%_
                                           _%ns186465%_
                                           _%pkg186547%_))))
                                    (_%E186483186517%_))
                                (_%E186483186517%_))))
                        (_%E186483186517%_))))
                 (_%E186469186579%_
                  (lambda ()
                    (if (gx#stx-pair? _%e186467186491%_)
                        (let ((_%e186477186553%_
                               (gx#syntax-e _%e186467186491%_)))
                          (let ((_%hd186478186556%_ (##car _%e186477186553%_))
                                (_%tl186479186558%_ (##cdr _%e186477186553%_)))
                            (if (eq? (gx#stx-e _%hd186478186556%_) 'namespace:)
                                (if (gx#stx-pair? _%tl186479186558%_)
                                    (let ((_%e186480186561%_
                                           (gx#syntax-e _%tl186479186558%_)))
                                      (let ((_%hd186481186564%_
                                             (##car _%e186480186561%_))
                                            (_%tl186482186566%_
                                             (##cdr _%e186480186561%_)))
                                        (let* ((_%ns186569%_
                                                _%hd186481186564%_)
                                               (_%rest186571%_
                                                _%tl186482186566%_)
                                               (_%ns186577%_
                                                (if (gx#identifier?
                                                     _%ns186569%_)
                                                    (symbol->string
                                                     (gx#stx-e _%ns186569%_))
                                                    (if (gx#stx-string?
                                                         _%ns186569%_)
                                                        (gx#stx-e _%ns186569%_)
                                                        (if (gx#stx-false?
                                                             _%ns186569%_)
                                                            '#!void
                                                            (gx#raise-syntax-error
                                                             'import
                                                             '"Bad syntax; illegal namespace"
                                                             _%ns186569%_))))))
                                          (_%lp186461%_
                                           _%rest186571%_
                                           _%pre186464%_
                                           _%ns186577%_
                                           _%pkg186466%_))))
                                    (_%E186476186549%_))
                                (_%E186476186549%_))))
                        (_%E186476186549%_))))
                 (_%E186468186603%_
                  (lambda ()
                    (if (gx#stx-pair? _%e186467186491%_)
                        (let ((_%e186470186583%_
                               (gx#syntax-e _%e186467186491%_)))
                          (let ((_%hd186471186586%_ (##car _%e186470186583%_))
                                (_%tl186472186588%_ (##cdr _%e186470186583%_)))
                            (if (eq? (gx#stx-e _%hd186471186586%_) 'prelude:)
                                (if (gx#stx-pair? _%tl186472186588%_)
                                    (let ((_%e186473186591%_
                                           (gx#syntax-e _%tl186472186588%_)))
                                      (let ((_%hd186474186594%_
                                             (##car _%e186473186591%_))
                                            (_%tl186475186596%_
                                             (##cdr _%e186473186591%_)))
                                        (let* ((_%prelude186599%_
                                                _%hd186474186594%_)
                                               (_%rest186601%_
                                                _%tl186475186596%_))
                                          (_%lp186461%_
                                           _%rest186601%_
                                           _%prelude186599%_
                                           _%ns186465%_
                                           _%pkg186466%_))))
                                    (_%E186469186579%_))
                                (_%E186469186579%_))))
                        (_%E186469186579%_)))))
            (_%E186468186603%_)))))
    (define gx#core-read-module/lang
      (lambda (_%path186280%_)
        (letrec ((_%default-read-module-body186282%_
                  (lambda (_%inp186451%_)
                    (let _%lp186453%_ ((_%body186455%_ '()))
                      (let ((_%next186457%_ (read-syntax__% _%inp186451%_)))
                        (if (eof-object? _%next186457%_)
                            (reverse _%body186455%_)
                            (_%lp186453%_
                             (cons _%next186457%_ _%body186455%_)))))))
                 (_%read-body186283%_
                  (lambda (_%inp186368%_
                           _%pre186369%_
                           _%ns186370%_
                           _%pkg186371%_
                           _%args186372%_)
                    (let ((_g187860_
                           (if _%pkg186371%_
                               (values _%pre186369%_
                                       _%ns186370%_
                                       _%pkg186371%_)
                               (gx#core-read-module-package
                                _%path186280%_
                                _%pre186369%_
                                _%ns186370%_))))
                      (begin
                        (let ((_g187861_
                               (if (##values? _g187860_)
                                   (##values-length _g187860_)
                                   1)))
                          (if (not (##fx= _g187861_ 3))
                              (error "Context expects 3 values" _g187861_)))
                        (let ((_%pre186374%_ (##values-ref _g187860_ 0))
                              (_%ns186375%_ (##values-ref _g187860_ 1))
                              (_%pkg186376%_ (##values-ref _g187860_ 2)))
                          (let* ((_%prelude186378%_
                                  (gx#import-module__0 _%pre186374%_))
                                 (_%read-module-body186433%_
                                  (let ((_%$e186424%_
                                         (__find (lambda (_%e186379186381%_)
                                                   (let* ((_%e186379186383186393%_
                                                           _%e186379186381%_)
                                                          (_%else186385186401%_
                                                           (lambda () '#f))
                                                          (_%K186387186405%_
                                                           (lambda () '#t)))
                                                     (if (##structure-direct-instance-of?
                                                          _%e186379186383186393%_
                                                          'gx#module-export::t)
                                                         (let* ((_%e186388186408%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##unchecked-structure-ref
                          _%e186379186383186393%_
                          '1
                          '#f
                          '#f))
                        (_%e186389186411%_
                         (##unchecked-structure-ref
                          _%e186379186383186393%_
                          '2
                          '#f
                          '#f))
                        (_%e186390186414%_
                         (##unchecked-structure-ref
                          _%e186379186383186393%_
                          '3
                          '#f
                          '#f)))
                   (if (##eq? _%e186390186414%_ '1)
                       (let ((_%e186391186417%_
                              (##unchecked-structure-ref
                               _%e186379186383186393%_
                               '4
                               '#f
                               '#f)))
                         (if (eq? _%e186391186417%_ 'read-module-body)
                             (_%K186387186405%_)
                             (_%else186385186401%_)))
                       (_%else186385186401%_)))
                 (_%else186385186401%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (##unchecked-structure-ref
                                                  _%prelude186378%_
                                                  '9
                                                  '#f
                                                  '#f))))
                                    (if _%$e186424%_
                                        (let ((_%proc186430%_
                                               (__with-catch
                                                void
                                                (lambda ()
                                                  (gx#eval-syntax__0
                                                   (##structure-ref
                                                    (gx#core-resolve-module-export
                                                     _%$e186424%_)
                                                    '1
                                                    gx#binding::t
                                                    '#f))))))
                                          (if (procedure? _%proc186430%_)
                                              _%proc186430%_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang prelude; read-module-body is not a procedure"
                                               _%path186280%_
                                               _%pre186374%_
                                               _%proc186430%_)))
                                        _%default-read-module-body186282%_)))
                                 (_%path-id186435%_
                                  (gx#core-module-path->namespace
                                   _%path186280%_))
                                 (_%pkg-id186437%_
                                  (if _%pkg186376%_
                                      (##string-append
                                       _%pkg186376%_
                                       '"/"
                                       _%path-id186435%_)
                                      _%path-id186435%_))
                                 (_%module-id186439%_
                                  (##string->symbol _%pkg-id186437%_))
                                 (_%module-ns186444%_
                                  (let ((_%$e186441%_ _%ns186375%_))
                                    (if _%$e186441%_
                                        _%$e186441%_
                                        _%pkg-id186437%_)))
                                 (_%body186448%_
                                  (call-with-parameters__1
                                   (lambda ()
                                     (call-with-parameters__1
                                      (lambda ()
                                        (_%read-module-body186433%_
                                         _%inp186368%_))
                                      gx#current-module-reader-args
                                      _%args186372%_))
                                   gx#current-module-reader-path
                                   _%path186280%_)))
                            (values _%prelude186378%_
                                    _%module-id186439%_
                                    _%module-ns186444%_
                                    _%body186448%_)))))))
                 (_%string-e186284%_
                  (lambda (_%obj186362%_ _%what186363%_)
                    (if (string? _%obj186362%_)
                        _%obj186362%_
                        (if (symbol? _%obj186362%_)
                            (##symbol->string _%obj186362%_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _%what186363%_)
                             _%path186280%_
                             _%obj186362%_)))))
                 (_%read-lang-args186285%_
                  (lambda (_%inp186317%_ _%args186318%_)
                    (let* ((_%args186319186327%_ _%args186318%_)
                           (_%else186321186335%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _%path186280%_)))
                           (_%K186323186350%_
                            (lambda (_%args186338%_ _%prelude186339%_)
                              (let* ((_%pkg186341%_
                                      (pgetq__0 'package: _%args186338%_))
                                     (_%pkg186343%_
                                      (if _%pkg186341%_
                                          (_%string-e186284%_
                                           _%pkg186341%_
                                           '"package")
                                          '#f))
                                     (_%ns186345%_
                                      (pgetq__0 'namespace: _%args186338%_))
                                     (_%ns186347%_
                                      (if _%ns186345%_
                                          (_%string-e186284%_
                                           _%ns186345%_
                                           '"namespace")
                                          '#f)))
                                (_%read-body186283%_
                                 _%inp186317%_
                                 _%prelude186339%_
                                 _%ns186347%_
                                 _%pkg186343%_
                                 _%args186338%_)))))
                      (if (pair? _%args186319186327%_)
                          (let ((_%hd186324186353%_
                                 (##car _%args186319186327%_))
                                (_%tl186325186355%_
                                 (##cdr _%args186319186327%_)))
                            (let* ((_%prelude186358%_ _%hd186324186353%_)
                                   (_%args186360%_ _%tl186325186355%_))
                              (_%K186323186350%_
                               _%args186360%_
                               _%prelude186358%_)))
                          (_%else186321186335%_)))))
                 (_%read-lang186286%_
                  (lambda (_%inp186291%_)
                    (let* ((_%head186293%_ (read-line _%inp186291%_))
                           (_%$e186295%_
                            (string-index__0 _%head186293%_ '#\space)))
                      (if _%$e186295%_
                          (let ((_%lang186300%_
                                 (substring _%head186293%_ '0 _%$e186295%_)))
                            (if (equal? _%lang186300%_ '"#lang")
                                (let* ((_%rest186302%_
                                        (substring
                                         _%head186293%_
                                         (##fx+ _%$e186295%_ '1)
                                         (string-length _%head186293%_)))
                                       (_%args186313%_
                                        (__with-catch
                                         (lambda (_%g186303186305%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Illegal #lang arguments"
                                            _%path186280%_
                                            _%g186303186305%_))
                                         (lambda ()
                                           (call-with-input-string
                                            _%rest186302%_
                                            (lambda (_%g186308186310%_)
                                              (read-all
                                               _%g186308186310%_
                                               read)))))))
                                  (_%read-lang-args186285%_
                                   _%inp186291%_
                                   _%args186313%_))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Illegal module syntax"
                                 _%path186280%_)))
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _%path186280%_)))))
                 (_%read-e186287%_
                  (lambda (_%inp186289%_)
                    (if (eq? (peek-char _%inp186289%_) '#\#)
                        (_%read-lang186286%_ _%inp186289%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _%path186280%_)))))
          (gx#call-with-input-source-file _%path186280%_ _%read-e186287%_))))
    (define gx#core-read-module-package
      (lambda (_%path186228%_ _%pre186229%_ _%ns186230%_)
        (letrec ((_%string-e186232%_
                  (lambda (_%e186275%_)
                    (if (symbol? _%e186275%_)
                        (##symbol->string _%e186275%_)
                        (if (string? _%e186275%_)
                            _%e186275%_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%e186275%_))))))
          (let _%lp186234%_ ((_%dir186236%_ (path-directory _%path186228%_))
                             (_%pkg-path186237%_ '()))
            (let ((_%gerbil.pkg186239%_
                   (path-expand '"gerbil.pkg" _%dir186236%_)))
              (if (##file-exists? _%gerbil.pkg186239%_)
                  (let ((_%plist186241%_
                         (gx#core-library-package-plist__% _%dir186236%_ '#t)))
                    (if (null? _%plist186241%_)
                        (let ((_%pkg186244%_
                               (if (null? _%pkg-path186237%_)
                                   '#f
                                   (string-join _%pkg-path186237%_ '"/"))))
                          (values _%pre186229%_ _%ns186230%_ _%pkg186244%_))
                        (if (list? _%plist186241%_)
                            (let* ((_%root186247%_
                                    (pgetq__0 'package: _%plist186241%_))
                                   (_%pkg186251%_
                                    (let ((_%pkg-path186249%_
                                           (if _%root186247%_
                                               (cons (_%string-e186232%_
                                                      _%root186247%_)
                                                     _%pkg-path186237%_)
                                               _%pkg-path186237%_)))
                                      (if (null? _%pkg-path186249%_)
                                          '#f
                                          (string-join
                                           _%pkg-path186249%_
                                           '"/"))))
                                   (_%ns186258%_
                                    (let ((_%ns186256%_
                                           (let ((_%$e186253%_ _%ns186230%_))
                                             (if _%$e186253%_
                                                 _%$e186253%_
                                                 (pgetq__0
                                                  'namespace:
                                                  _%plist186241%_)))))
                                      (if _%ns186256%_
                                          (_%string-e186232%_ _%ns186256%_)
                                          '#f)))
                                   (_%pre186263%_
                                    (let ((_%$e186260%_ _%pre186229%_))
                                      (if _%$e186260%_
                                          _%$e186260%_
                                          (pgetq__0
                                           'prelude:
                                           _%plist186241%_)))))
                              (values _%pre186263%_
                                      _%ns186258%_
                                      _%pkg186251%_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%plist186241%_))))
                  (let ((_%dir*186267%_
                         (path-strip-trailing-directory-separator
                          _%dir186236%_)))
                    (if (or (__string-empty? _%dir*186267%_)
                            (equal? _%dir186236%_ _%dir*186267%_))
                        (values _%pre186229%_ _%ns186230%_ '#f)
                        (let ((_%xpath186272%_
                               (path-strip-directory _%dir*186267%_))
                              (_%xdir186273%_ (path-directory _%dir*186267%_)))
                          (_%lp186234%_
                           _%xdir186273%_
                           (cons _%xpath186272%_ _%pkg-path186237%_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_%path186226%_)
        (path-strip-extension (path-strip-directory _%path186226%_))))
    (define gx#core-module-path->id
      (lambda (_%path186224%_)
        (##string->symbol (gx#core-module-path->namespace _%path186224%_))))
    (define gx#core-resolve-module-path__%
      (lambda (_%stx-path186203%_ _%rel186204%_)
        (let* ((_%path186206%_ (gx#stx-e _%stx-path186203%_))
               (_%path186208%_
                (if (__string-empty? (path-extension _%path186206%_))
                    (##string-append _%path186206%_ '".ss")
                    _%path186206%_)))
          (gx#core-resolve-path__%
           _%path186208%_
           (let ((_%$e186211%_ (gx#stx-source _%stx-path186203%_)))
             (if _%$e186211%_ _%$e186211%_ _%rel186204%_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_%stx-path186217%_)
        (let ((_%rel186219%_ '#f))
          (gx#core-resolve-module-path__% _%stx-path186217%_ _%rel186219%_))))
    (define gx#core-resolve-module-path
      (lambda _g187862_
        (let ((_g187863_ (##length _g187862_)))
          (cond ((##fx= _g187863_ 1)
                 (apply gx#core-resolve-module-path__0 _g187862_))
                ((##fx= _g187863_ 2)
                 (apply gx#core-resolve-module-path__% _g187862_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g187862_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_%libpath186088%_)
        (let* ((_%spath186090%_ (symbol->string (gx#stx-e _%libpath186088%_)))
               (_%spath186092%_
                (substring
                 _%spath186090%_
                 '1
                 (##string-length _%spath186090%_)))
               (_%ext186094%_ (path-extension _%spath186092%_))
               (_%ssi186096%_
                (if (__string-empty? _%ext186094%_)
                    (##string-append _%spath186092%_ '".ssi")
                    (##string-append
                     (path-strip-extension _%spath186092%_)
                     '".ssi")))
               (_%srcs186100%_
                (if (__string-empty? _%ext186094%_)
                    (##map (lambda (_%ext186098%_)
                             (string-append _%spath186092%_ _%ext186098%_))
                           '(".ss" ".sld" ".scm"))
                    (cons _%spath186092%_ '()))))
          (let _%lp186103%_ ((_%rest186105%_ (load-path)))
            (let* ((_%rest186106186115%_ _%rest186105%_)
                   (_%E186109186119%_
                    (lambda ()
                      (error '"No clause matching"
                             _%rest186106186115%_
                             '([dir . rest])
                             '([]))
                      '#!void)))
              (let ((_%K186111186190%_
                     (lambda (_%rest186130%_ _%dir186131%_)
                       (letrec ((_%resolve186133%_
                                 (lambda (_%ssi186146%_ _%srcs186147%_)
                                   (let ((_%compiled-path186149%_
                                          (path-expand
                                           _%ssi186146%_
                                           _%dir186131%_)))
                                     (if (##file-exists?
                                          _%compiled-path186149%_)
                                         (path-normalize
                                          _%compiled-path186149%_)
                                         (let _%lpr186151%_ ((_%rest-src186153%_
                                                              _%srcs186147%_))
                                           (let* ((_%rest-src186154186162%_
                                                   _%rest-src186153%_)
                                                  (_%else186156186170%_
                                                   (lambda ()
                                                     (_%lp186103%_
                                                      _%rest186130%_)))
                                                  (_%K186158186178%_
                                                   (lambda (_%rest-src186173%_
                                                            _%src186174%_)
                                                     (let ((_%src-path186176%_
                                                            (path-expand
                                                             _%src186174%_
                                                             _%dir186131%_)))
                                                       (if (##file-exists?
                                                            _%src-path186176%_)
                                                           (path-normalize
                                                            _%src-path186176%_)
                                                           (_%lpr186151%_
                                                            _%rest-src186173%_))))))
                                             (if (pair? _%rest-src186154186162%_)
                                                 (let ((_%hd186159186181%_
                                                        (##car _%rest-src186154186162%_))
                                                       (_%tl186160186183%_
                                                        (##cdr _%rest-src186154186162%_)))
                                                   (let* ((_%src186186%_
                                                           _%hd186159186181%_)
                                                          (_%rest-src186188%_
                                                           _%tl186160186183%_))
                                                     (_%K186158186178%_
                                                      _%rest-src186188%_
                                                      _%src186186%_)))
                                                 (_%else186156186170%_)))))))))
                         (let ((_%$e186135%_
                                (gx#core-library-package-path-prefix
                                 _%dir186131%_)))
                           (if _%$e186135%_
                               (if (string-prefix?
                                    _%$e186135%_
                                    _%spath186092%_)
                                   (let ((_%ssi186142%_
                                          (substring
                                           _%ssi186096%_
                                           (string-length _%$e186135%_)
                                           (##string-length _%ssi186096%_)))
                                         (_%srcs186143%_
                                          (##map (lambda (_%src186140%_)
                                                   (substring
                                                    _%src186140%_
                                                    (string-length
                                                     _%$e186135%_)
                                                    (string-length
                                                     _%src186140%_)))
                                                 _%srcs186100%_)))
                                     (_%resolve186133%_
                                      _%ssi186142%_
                                      _%srcs186143%_))
                                   (_%lp186103%_ _%rest186130%_))
                               (_%resolve186133%_
                                _%ssi186096%_
                                _%srcs186100%_))))))
                    (_%K186110186124%_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"cannot find library module"
                        _%libpath186088%_))))
                (let ((_%try-match186108186127%_
                       (lambda ()
                         (if (null? _%rest186106186115%_)
                             (_%K186110186124%_)
                             (_%E186109186119%_)))))
                  (if (pair? _%rest186106186115%_)
                      (let ((_%tl186113186195%_ (##cdr _%rest186106186115%_))
                            (_%hd186112186193%_ (##car _%rest186106186115%_)))
                        (let ((_%dir186198%_ _%hd186112186193%_)
                              (_%rest186200%_ _%tl186113186195%_))
                          (_%K186111186190%_ _%rest186200%_ _%dir186198%_)))
                      (_%try-match186108186127%_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_%modpath186056%_)
        (letrec ((_%resolve186058%_
                  (lambda (_%path186079%_ _%base186080%_)
                    (let ((_%$e186082%_
                           (string-rindex__0 _%base186080%_ '#\/)))
                      (if _%$e186082%_
                          (gx#core-resolve-library-module-path
                           (##string->symbol
                            (string-append
                             '":"
                             (substring _%base186080%_ '0 _%$e186082%_)
                             '"/"
                             _%path186079%_)))
                          (gx#core-resolve-library-module-path
                           (##string->symbol
                            (string-append '":" _%path186079%_))))))))
          (let ((_%spath186060%_ (symbol->string (gx#stx-e _%modpath186056%_)))
                (_%mod186061%_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _%mod186061%_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"cannot resolve relative module path; not in module context"
                 _%modpath186056%_))
            (let ((_%mpath186063%_
                   (symbol->string
                    (##structure-ref
                     _%mod186061%_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _%lp186065%_ ((_%spath186067%_ _%spath186060%_)
                                 (_%mpath186068%_ _%mpath186063%_))
                (if (string-prefix? '"../" _%spath186067%_)
                    (let ((_%$e186071%_
                           (string-rindex__0 _%mpath186068%_ '#\/)))
                      (if _%$e186071%_
                          (_%lp186065%_
                           (substring
                            _%spath186067%_
                            '3
                            (string-length _%spath186067%_))
                           (substring _%mpath186068%_ '0 _%$e186071%_))
                          (gx#raise-syntax-error
                           '#f
                           '"cannot resolve relative module path; illegal traversal"
                           _%modpath186056%_)))
                    (if (string-prefix? '"./" _%spath186067%_)
                        (_%lp186065%_
                         (substring
                          _%spath186067%_
                          '2
                          (string-length _%spath186067%_))
                         _%mpath186068%_)
                        (_%resolve186058%_
                         _%spath186067%_
                         _%mpath186068%_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_%dir186048%_)
        (let ((_%$e186050%_
               (pgetq__0
                'package:
                (gx#core-library-package-plist__0 _%dir186048%_))))
          (if _%$e186050%_
              (##string-append (symbol->string _%$e186050%_) '"/")
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_%dir186018%_ _%exists?186019%_)
        (let ((_%$e186021%_ (__hash-get gx#__module-pkg-cache _%dir186018%_)))
          (if _%$e186021%_
              _%$e186021%_
              (let* ((_%gerbil.pkg186025%_
                      (path-expand '"gerbil.pkg" _%dir186018%_))
                     (_%plist186035%_
                      (if (or _%exists?186019%_
                              (##file-exists? _%gerbil.pkg186025%_))
                          (let ((_%e186030%_
                                 (gx#call-with-input-source-file
                                  _%gerbil.pkg186025%_
                                  read)))
                            (if (eof-object? _%e186030%_)
                                '()
                                (if (list? _%e186030%_)
                                    _%e186030%_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _%gerbil.pkg186025%_
                                     _%e186030%_))))
                          '())))
                (__hash-put!
                 gx#__module-pkg-cache
                 _%dir186018%_
                 _%plist186035%_)
                _%plist186035%_)))))
    (define gx#core-library-package-plist__0
      (lambda (_%dir186041%_)
        (let ((_%exists?186043%_ '#f))
          (gx#core-library-package-plist__% _%dir186041%_ _%exists?186043%_))))
    (define gx#core-library-package-plist
      (lambda _g187864_
        (let ((_g187865_ (##length _g187864_)))
          (cond ((##fx= _g187865_ 1)
                 (apply gx#core-library-package-plist__0 _g187864_))
                ((##fx= _g187865_ 2)
                 (apply gx#core-library-package-plist__% _g187864_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g187864_))))))
    (define gx#core-library-module-path?
      (lambda (_%stx186015%_)
        (gx#core-special-module-path? _%stx186015%_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_%stx186013%_)
        (gx#core-special-module-path? _%stx186013%_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_%stx186008%_ _%char186009%_)
        (if (gx#identifier? _%stx186008%_)
            (if (interned-symbol? (gx#stx-e _%stx186008%_))
                (let ((_%str186011%_
                       (symbol->string (gx#stx-e _%stx186008%_))))
                  (if (##fx> (##string-length _%str186011%_) '1)
                      (eq? (string-ref _%str186011%_ '0) _%char186009%_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_%stx186002%_)
        (gx#core-bound-identifier?__%
         _%stx186002%_
         (lambda (_%g186003186005%_)
           (gx#expander-binding?__% _%g186003186005%_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_%stx185996%_)
        (gx#core-bound-identifier?__%
         _%stx185996%_
         (lambda (_%g185997185999%_)
           (gx#expander-binding?__% _%g185997185999%_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_%stx185983%_)
        (letrec ((_%module-prelude?185985%_
                  (lambda (_%e185991%_)
                    (let ((_%$e185993%_
                           (##structure-instance-of?
                            _%e185991%_
                            'gx#module-context::t)))
                      (if _%$e185993%_
                          _%$e185993%_
                          (##structure-instance-of?
                           _%e185991%_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _%stx185983%_
           (lambda (_%g185986185988%_)
             (gx#expander-binding?__%
              _%g185986185988%_
              _%module-prelude?185985%_))))))
    (define gx#core-bind-import!__%
      (lambda (_%in185914%_ _%ctx185915%_ _%force-weak?185916%_)
        (let* ((_%in185917185926%_ _%in185914%_)
               (_%E185919185929%_
                (lambda ()
                  (error '"No clause matching"
                         _%in185917185926%_
                         '((module-import source key phi weak?)))
                  '#!void))
               (_%K185920185942%_
                (lambda (_%weak?185932%_
                         _%phi185933%_
                         _%key185934%_
                         _%source185935%_)
                  (gx#core-bind!__%
                   _%key185934%_
                   (let* ((_%e185937%_
                           (gx#core-resolve-module-export _%source185935%_))
                          (__obj187846
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
                      __obj187846
                      (##unchecked-structure-ref _%e185937%_ '1 '#f '#f)
                      _%key185934%_
                      _%phi185933%_
                      _%e185937%_
                      (##unchecked-structure-ref _%source185935%_ '1 '#f '#f)
                      (let ((_%$e185939%_ _%force-weak?185916%_))
                        (if _%$e185939%_ _%$e185939%_ _%weak?185932%_)))
                     __obj187846)
                   gx#core-context-rebind?
                   _%phi185933%_
                   _%ctx185915%_))))
          (if (##structure-direct-instance-of?
               _%in185917185926%_
               'gx#module-import::t)
              (let* ((_%e185921185945%_
                      (##unchecked-structure-ref
                       _%in185917185926%_
                       '1
                       '#f
                       '#f))
                     (_%source185948%_ _%e185921185945%_)
                     (_%e185922185950%_
                      (##unchecked-structure-ref
                       _%in185917185926%_
                       '2
                       '#f
                       '#f))
                     (_%key185953%_ _%e185922185950%_)
                     (_%e185923185955%_
                      (##unchecked-structure-ref
                       _%in185917185926%_
                       '3
                       '#f
                       '#f))
                     (_%phi185958%_ _%e185923185955%_)
                     (_%e185924185960%_
                      (##unchecked-structure-ref
                       _%in185917185926%_
                       '4
                       '#f
                       '#f))
                     (_%weak?185963%_ _%e185924185960%_))
                (_%K185920185942%_
                 _%weak?185963%_
                 _%phi185958%_
                 _%key185953%_
                 _%source185948%_))
              (_%E185919185929%_)))))
    (define gx#core-bind-import!__0
      (lambda (_%in185968%_)
        (let* ((_%ctx185970%_ (gx#current-expander-context))
               (_%force-weak?185972%_ '#f))
          (gx#core-bind-import!__%
           _%in185968%_
           _%ctx185970%_
           _%force-weak?185972%_))))
    (define gx#core-bind-import!__1
      (lambda (_%in185974%_ _%ctx185975%_)
        (let ((_%force-weak?185977%_ '#f))
          (gx#core-bind-import!__%
           _%in185974%_
           _%ctx185975%_
           _%force-weak?185977%_))))
    (define gx#core-bind-import!
      (lambda _g187866_
        (let ((_g187867_ (##length _g187866_)))
          (cond ((##fx= _g187867_ 1) (apply gx#core-bind-import!__0 _g187866_))
                ((##fx= _g187867_ 2) (apply gx#core-bind-import!__1 _g187866_))
                ((##fx= _g187867_ 3) (apply gx#core-bind-import!__% _g187866_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g187866_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_%in185900%_ _%ctx185901%_)
        (gx#core-bind-import!__% _%in185900%_ _%ctx185901%_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_%in185906%_)
        (let ((_%ctx185908%_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _%in185906%_ _%ctx185908%_))))
    (define gx#core-bind-weak-import!
      (lambda _g187868_
        (let ((_g187869_ (##length _g187868_)))
          (cond ((##fx= _g187869_ 1)
                 (apply gx#core-bind-weak-import!__0 _g187868_))
                ((##fx= _g187869_ 2)
                 (apply gx#core-bind-weak-import!__% _g187868_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g187868_))))))
    (define gx#core-resolve-module-export
      (lambda (_%out185793%_)
        (letrec ((_%subst185795%_
                  (lambda (_%key185840%_)
                    (let* ((_%key185841185849%_ _%key185840%_)
                           (_%else185843185857%_ (lambda () _%key185840%_))
                           (_%K185845185887%_
                            (lambda (_%mark185860%_ _%id185861%_)
                              (let* ((_%mark185862185868%_ _%mark185860%_)
                                     (_%E185864185871%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark185862185868%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K185865185879%_
                                      (lambda (_%subst185874%_)
                                        (let ((_%$e185876%_
                                               (if _%subst185874%_
                                                   (hash-get
                                                    _%subst185874%_
                                                    _%id185861%_)
                                                   '#f)))
                                          (if _%$e185876%_
                                              _%$e185876%_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _%key185840%_))))))
                                (if (##structure-instance-of?
                                     _%mark185862185868%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e185866185882%_
                                            (##unchecked-structure-ref
                                             _%mark185862185868%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst185885%_ _%e185866185882%_))
                                      (_%K185865185879%_ _%subst185885%_))
                                    (_%E185864185871%_))))))
                      (if (pair? _%key185841185849%_)
                          (let ((_%hd185846185890%_
                                 (##car _%key185841185849%_))
                                (_%tl185847185892%_
                                 (##cdr _%key185841185849%_)))
                            (let* ((_%id185895%_ _%hd185846185890%_)
                                   (_%mark185897%_ _%tl185847185892%_))
                              (_%K185845185887%_ _%mark185897%_ _%id185895%_)))
                          (_%else185843185857%_))))))
          (let* ((_%out185796185806%_ _%out185793%_)
                 (_%E185798185809%_
                  (lambda ()
                    (error '"No clause matching"
                           _%out185796185806%_
                           '((module-export ctx key phi _ _)))
                    '#!void))
                 (_%K185799185816%_
                  (lambda (_%phi185812%_ _%key185813%_ _%ctx185814%_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _%ctx185814%_ _%phi185812%_)
                     (_%subst185795%_ _%key185813%_)))))
            (if (##structure-direct-instance-of?
                 _%out185796185806%_
                 'gx#module-export::t)
                (let* ((_%e185800185819%_
                        (##unchecked-structure-ref
                         _%out185796185806%_
                         '1
                         '#f
                         '#f))
                       (_%ctx185822%_ _%e185800185819%_)
                       (_%e185801185824%_
                        (##unchecked-structure-ref
                         _%out185796185806%_
                         '2
                         '#f
                         '#f))
                       (_%key185827%_ _%e185801185824%_)
                       (_%e185802185829%_
                        (##unchecked-structure-ref
                         _%out185796185806%_
                         '3
                         '#f
                         '#f))
                       (_%phi185832%_ _%e185802185829%_)
                       (_%e185803185834%_
                        (##unchecked-structure-ref
                         _%out185796185806%_
                         '4
                         '#f
                         '#f))
                       (_%e185804185837%_
                        (##unchecked-structure-ref
                         _%out185796185806%_
                         '5
                         '#f
                         '#f)))
                  (_%K185799185816%_
                   _%phi185832%_
                   _%key185827%_
                   _%ctx185822%_))
                (_%E185798185809%_))))))
    (define gx#core-module-export->import__%
      (lambda (_%out185719%_ _%rename185720%_ _%dphi185721%_)
        (let* ((_%out185722185732%_ _%out185719%_)
               (_%E185724185735%_
                (lambda ()
                  (error '"No clause matching"
                         _%out185722185732%_
                         '((module-export ctx key phi name weak?)))
                  '#!void))
               (_%K185725185747%_
                (lambda (_%weak?185738%_
                         _%name185739%_
                         _%phi185740%_
                         _%key185741%_
                         _%ctx185742%_)
                  (##structure
                   gx#module-import::t
                   _%out185719%_
                   (let ((_%$e185744%_ _%rename185720%_))
                     (if _%$e185744%_ _%$e185744%_ _%name185739%_))
                   (fx+ _%phi185740%_ _%dphi185721%_)
                   _%weak?185738%_))))
          (if (##structure-direct-instance-of?
               _%out185722185732%_
               'gx#module-export::t)
              (let* ((_%e185726185750%_
                      (##unchecked-structure-ref
                       _%out185722185732%_
                       '1
                       '#f
                       '#f))
                     (_%ctx185753%_ _%e185726185750%_)
                     (_%e185727185755%_
                      (##unchecked-structure-ref
                       _%out185722185732%_
                       '2
                       '#f
                       '#f))
                     (_%key185758%_ _%e185727185755%_)
                     (_%e185728185760%_
                      (##unchecked-structure-ref
                       _%out185722185732%_
                       '3
                       '#f
                       '#f))
                     (_%phi185763%_ _%e185728185760%_)
                     (_%e185729185765%_
                      (##unchecked-structure-ref
                       _%out185722185732%_
                       '4
                       '#f
                       '#f))
                     (_%name185768%_ _%e185729185765%_)
                     (_%e185730185770%_
                      (##unchecked-structure-ref
                       _%out185722185732%_
                       '5
                       '#f
                       '#f))
                     (_%weak?185773%_ _%e185730185770%_))
                (_%K185725185747%_
                 _%weak?185773%_
                 _%name185768%_
                 _%phi185763%_
                 _%key185758%_
                 _%ctx185753%_))
              (_%E185724185735%_)))))
    (define gx#core-module-export->import__0
      (lambda (_%out185778%_)
        (let* ((_%rename185780%_ '#f) (_%dphi185782%_ '0))
          (gx#core-module-export->import__%
           _%out185778%_
           _%rename185780%_
           _%dphi185782%_))))
    (define gx#core-module-export->import__1
      (lambda (_%out185784%_ _%rename185785%_)
        (let ((_%dphi185787%_ '0))
          (gx#core-module-export->import__%
           _%out185784%_
           _%rename185785%_
           _%dphi185787%_))))
    (define gx#core-module-export->import
      (lambda _g187870_
        (let ((_g187871_ (##length _g187870_)))
          (cond ((##fx= _g187871_ 1)
                 (apply gx#core-module-export->import__0 _g187870_))
                ((##fx= _g187871_ 2)
                 (apply gx#core-module-export->import__1 _g187870_))
                ((##fx= _g187871_ 3)
                 (apply gx#core-module-export->import__% _g187870_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g187870_))))))
    (define gx#core-expand-module%
      (lambda (_%stx185618%_)
        (letrec ((_%make-context185620%_
                  (lambda (_%id185697%_)
                    (let* ((_%super185699%_ (gx#current-expander-context))
                           (_%bind-id185701%_ (gx#stx-e _%id185697%_))
                           (_%mod-id185703%_
                            (if (##structure-instance-of?
                                 _%super185699%_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##unchecked-structure-ref
                                  _%super185699%_
                                  '1
                                  '#f
                                  '#f)
                                 '"~"
                                 _%bind-id185701%_)
                                _%bind-id185701%_))
                           (_%ns185705%_ (symbol->string _%mod-id185703%_))
                           (_%path185715%_
                            (if (##structure-instance-of?
                                 _%super185699%_
                                 'gx#module-context::t)
                                (let ((_%path185707%_
                                       (##unchecked-structure-ref
                                        _%super185699%_
                                        '7
                                        '#f
                                        '#f)))
                                  (if (or (pair? _%path185707%_)
                                          (null? _%path185707%_))
                                      (cons _%bind-id185701%_ _%path185707%_)
                                      (if (not _%path185707%_)
                                          _%bind-id185701%_
                                          (cons _%bind-id185701%_
                                                (cons _%path185707%_ '())))))
                                _%bind-id185701%_))
                           (__obj187847
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
                       __obj187847
                       _%mod-id185703%_
                       _%super185699%_
                       _%ns185705%_
                       _%path185715%_)
                      __obj187847)))
                 (_%valid-module-id?185621%_
                  (lambda (_%id185672%_)
                    (let* ((_%str185674%_ (symbol->string _%id185672%_))
                           (_%len185676%_ (##string-length _%str185674%_)))
                      (if (##fx>= _%len185676%_ '1)
                          (let _%loop185679%_ ((_%index185681%_
                                                (##fx- (##string-length
                                                        _%str185674%_)
                                                       '1)))
                            (if (##fx>= _%index185681%_ '0)
                                (let ((_%c185683%_
                                       (string-ref
                                        _%str185674%_
                                        _%index185681%_)))
                                  (if (or (and (##char>=? _%c185683%_ '#\a)
                                               (##char<=? _%c185683%_ '#\z))
                                          (and (##char>=? _%c185683%_ '#\A)
                                               (##char<=? _%c185683%_ '#\Z))
                                          (and (##char>=? _%c185683%_ '#\0)
                                               (##char<=? _%c185683%_ '#\9))
                                          (##char=? _%c185683%_ '#\_)
                                          (##char=? _%c185683%_ '#\-))
                                      (_%loop185679%_
                                       (##fx- _%index185681%_ '1))
                                      '#f))
                                '#t))
                          '#f)))))
          (let* ((_%e185622185632%_ _%stx185618%_)
                 (_%E185624185636%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e185622185632%_)))
                 (_%E185623185668%_
                  (lambda ()
                    (if (gx#stx-pair? _%e185622185632%_)
                        (let ((_%e185625185640%_
                               (gx#syntax-e _%e185622185632%_)))
                          (let ((_%hd185626185643%_ (##car _%e185625185640%_))
                                (_%tl185627185645%_ (##cdr _%e185625185640%_)))
                            (if (gx#stx-pair? _%tl185627185645%_)
                                (let ((_%e185628185648%_
                                       (gx#syntax-e _%tl185627185645%_)))
                                  (let ((_%hd185629185651%_
                                         (##car _%e185628185648%_))
                                        (_%tl185630185653%_
                                         (##cdr _%e185628185648%_)))
                                    (let* ((_%id185656%_ _%hd185629185651%_)
                                           (_%body185658%_ _%tl185630185653%_))
                                      (if (and (gx#identifier? _%id185656%_)
                                               (gx#stx-list? _%body185658%_))
                                          (if (_%valid-module-id?185621%_
                                               (gx#stx-e
                                                (gx#datum->syntax__0 '#f 'id)))
                                              (let* ((_%ctx185660%_
                                                      (_%make-context185620%_
                                                       _%id185656%_))
                                                     (_%body185662%_
                                                      (gx#core-expand-module-begin
                                                       _%body185658%_
                                                       _%ctx185660%_))
                                                     (_%body185664%_
                                                      (gx#core-quote-syntax__1
                                                       (gx#core-cons
                                                        '%#begin
                                                        _%body185662%_)
                                                       (gx#stx-source
                                                        _%stx185618%_))))
                                                (##unchecked-structure-set!
                                                 _%ctx185660%_
                                                 (__make-atomic-promise
                                                  (lambda ()
                                                    (gx#eval-syntax*
                                                     _%body185664%_)))
                                                 '10
                                                 '#f
                                                 '#f)
                                                (##unchecked-structure-set!
                                                 _%ctx185660%_
                                                 _%body185664%_
                                                 '11
                                                 '#f
                                                 '#f)
                                                (gx#core-bind-syntax!__0
                                                 _%id185656%_
                                                 _%ctx185660%_)
                                                (gx#core-quote-syntax__1
                                                 (gx#core-list
                                                  '%#module
                                                  (gx#core-quote-syntax__0
                                                   _%id185656%_)
                                                  _%body185664%_)
                                                 (gx#stx-source
                                                  _%stx185618%_)))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"invalid module id; allowed characters are A-Z,a-z,0-9,_,-"
                                               _%stx185618%_
                                               (gx#datum->syntax__0 '#f 'id)))
                                          (_%E185624185636%_)))))
                                (_%E185624185636%_))))
                        (_%E185624185636%_)))))
            (_%E185623185668%_)))))
    (define gx#core-expand-module-begin
      (lambda (_%body185583%_ _%ctx185584%_)
        (call-with-parameters__1
         (lambda ()
           (call-with-parameters__1
            (lambda ()
              (gx#core-bind-feature!__1 'gerbil-module '#t)
              (let* ((_%stx185588%_
                      (gx#core-expand-head
                       (cons '%%begin-module _%body185583%_)))
                     (_%e185589185596%_ _%stx185588%_)
                     (_%E185591185600%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module body expansion"
                         _%stx185588%_)))
                     (_%E185590185614%_
                      (lambda ()
                        (if (gx#stx-pair? _%e185589185596%_)
                            (let ((_%e185592185604%_
                                   (gx#syntax-e _%e185589185596%_)))
                              (let ((_%hd185593185607%_
                                     (##car _%e185592185604%_))
                                    (_%tl185594185609%_
                                     (##cdr _%e185592185604%_)))
                                (if (and (gx#identifier? _%hd185593185607%_)
                                         (gx#core-identifier=?
                                          _%hd185593185607%_
                                          '%#begin-module))
                                    (let ((_%body185612%_ _%tl185594185609%_))
                                      (if (gx#sealed-syntax? _%stx185588%_)
                                          _%body185612%_
                                          (gx#core-expand-module-body
                                           _%body185612%_)))
                                    (_%E185591185600%_))))
                            (_%E185591185600%_)))))
                (_%E185590185614%_)))
            gx#current-expander-phi
            '0))
         gx#current-expander-context
         _%ctx185584%_)))
    (define gx#core-expand-module-body
      (lambda (_%body185280%_)
        (letrec ((_%expand-special185282%_
                  (lambda (_%hd185411%_ _%K185412%_ _%rest185413%_ _%r185414%_)
                    (let* ((_%e185415185455%_ _%hd185411%_)
                           (_%E185450185459%_
                            (lambda ()
                              (_%K185412%_
                               _%rest185413%_
                               (cons (gx#core-expand-top _%hd185411%_)
                                     _%r185414%_))))
                           (_%E185437185471%_
                            (lambda ()
                              (if (gx#stx-pair? _%e185415185455%_)
                                  (let ((_%e185451185463%_
                                         (gx#syntax-e _%e185415185455%_)))
                                    (let ((_%hd185452185466%_
                                           (##car _%e185451185463%_))
                                          (_%tl185453185468%_
                                           (##cdr _%e185451185463%_)))
                                      (if (and (gx#identifier?
                                                _%hd185452185466%_)
                                               (gx#core-identifier=?
                                                _%hd185452185466%_
                                                '%#export))
                                          (_%K185412%_
                                           _%rest185413%_
                                           (cons _%hd185411%_ _%r185414%_))
                                          (_%E185450185459%_))))
                                  (_%E185450185459%_))))
                           (_%E185427185513%_
                            (lambda ()
                              (if (gx#stx-pair? _%e185415185455%_)
                                  (let ((_%e185438185475%_
                                         (gx#syntax-e _%e185415185455%_)))
                                    (let ((_%hd185439185478%_
                                           (##car _%e185438185475%_))
                                          (_%tl185440185480%_
                                           (##cdr _%e185438185475%_)))
                                      (if (and (gx#identifier?
                                                _%hd185439185478%_)
                                               (gx#core-identifier=?
                                                _%hd185439185478%_
                                                '%#bind-runtime-properties!))
                                          (if (gx#stx-pair? _%tl185440185480%_)
                                              (let ((_%e185441185483%_
                                                     (gx#syntax-e
                                                      _%tl185440185480%_)))
                                                (let ((_%hd185442185486%_
                                                       (##car _%e185441185483%_))
                                                      (_%tl185443185488%_
                                                       (##cdr _%e185441185483%_)))
                                                  (if (gx#stx-pair?
                                                       _%hd185442185486%_)
                                                      (let ((_%e185447185491%_
                                                             (gx#syntax-e
                                                              _%hd185442185486%_)))
                                                        (let ((_%hd185448185494%_
                                                               (##car _%e185447185491%_))
                                                              (_%tl185449185496%_
                                                               (##cdr _%e185447185491%_)))
                                                          (let ((_%id185499%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd185448185494%_))
                    (if (gx#stx-null? _%tl185449185496%_)
                        (if (gx#stx-pair? _%tl185443185488%_)
                            (let ((_%e185444185501%_
                                   (gx#syntax-e _%tl185443185488%_)))
                              (let ((_%hd185445185504%_
                                     (##car _%e185444185501%_))
                                    (_%tl185446185506%_
                                     (##cdr _%e185444185501%_)))
                                (let ((_%props185509%_ _%hd185445185504%_))
                                  (if (gx#stx-null? _%tl185446185506%_)
                                      (let ((_%bind185511%_
                                             (gx#resolve-identifier__0
                                              _%id185499%_)))
                                        (gx#core-bind-runtime-properties!
                                         _%bind185511%_
                                         _%props185509%_)
                                        (_%K185412%_
                                         _%rest185413%_
                                         _%r185414%_))
                                      (_%E185437185471%_)))))
                            (_%E185437185471%_))
                        (_%E185437185471%_)))))
              (_%E185437185471%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E185437185471%_))
                                          (_%E185437185471%_))))
                                  (_%E185437185471%_))))
                           (_%E185417185545%_
                            (lambda ()
                              (if (gx#stx-pair? _%e185415185455%_)
                                  (let ((_%e185428185517%_
                                         (gx#syntax-e _%e185415185455%_)))
                                    (let ((_%hd185429185520%_
                                           (##car _%e185428185517%_))
                                          (_%tl185430185522%_
                                           (##cdr _%e185428185517%_)))
                                      (if (and (gx#identifier?
                                                _%hd185429185520%_)
                                               (gx#core-identifier=?
                                                _%hd185429185520%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl185430185522%_)
                                              (let ((_%e185431185525%_
                                                     (gx#syntax-e
                                                      _%tl185430185522%_)))
                                                (let ((_%hd185432185528%_
                                                       (##car _%e185431185525%_))
                                                      (_%tl185433185530%_
                                                       (##cdr _%e185431185525%_)))
                                                  (let ((_%hd-bind185533%_
                                                         _%hd185432185528%_))
                                                    (if (gx#stx-pair?
                                                         _%tl185433185530%_)
                                                        (let ((_%e185434185535%_
                                                               (gx#syntax-e
                                                                _%tl185433185530%_)))
                                                          (let ((_%hd185435185538%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e185434185535%_))
                        (_%tl185436185540%_ (##cdr _%e185434185535%_)))
                    (let ((_%expr185543%_ _%hd185435185538%_))
                      (if (gx#stx-null? _%tl185436185540%_)
                          (if (gx#core-bind-values? _%hd-bind185533%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind185533%_)
                                (_%K185412%_
                                 _%rest185413%_
                                 (cons _%hd185411%_ _%r185414%_)))
                              (_%E185427185513%_))
                          (_%E185427185513%_)))))
                (_%E185427185513%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E185427185513%_))
                                          (_%E185427185513%_))))
                                  (_%E185427185513%_))))
                           (_%E185416185579%_
                            (lambda ()
                              (if (gx#stx-pair? _%e185415185455%_)
                                  (let ((_%e185418185549%_
                                         (gx#syntax-e _%e185415185455%_)))
                                    (let ((_%hd185419185552%_
                                           (##car _%e185418185549%_))
                                          (_%tl185420185554%_
                                           (##cdr _%e185418185549%_)))
                                      (if (and (gx#identifier?
                                                _%hd185419185552%_)
                                               (gx#core-identifier=?
                                                _%hd185419185552%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl185420185554%_)
                                              (let ((_%e185421185557%_
                                                     (gx#syntax-e
                                                      _%tl185420185554%_)))
                                                (let ((_%hd185422185560%_
                                                       (##car _%e185421185557%_))
                                                      (_%tl185423185562%_
                                                       (##cdr _%e185421185557%_)))
                                                  (let ((_%hd-bind185565%_
                                                         _%hd185422185560%_))
                                                    (if (gx#stx-pair?
                                                         _%tl185423185562%_)
                                                        (let ((_%e185424185567%_
                                                               (gx#syntax-e
                                                                _%tl185423185562%_)))
                                                          (let ((_%hd185425185570%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e185424185567%_))
                        (_%tl185426185572%_ (##cdr _%e185424185567%_)))
                    (let* ((_%expr185575%_ _%hd185425185570%_)
                           (_%props185577%_ _%tl185426185572%_))
                      (if (and (gx#core-bind-values? _%hd-bind185565%_)
                               (gx#stx-list? _%props185577%_)
                               (not (gx#stx-null? _%props185577%_)))
                          (begin
                            (gx#core-bind-values!__0 _%hd-bind185565%_)
                            (_%K185412%_
                             (cons (gx#core-cons
                                    '%#bind-runtime-properties!
                                    (cons _%hd-bind185565%_
                                          (cons _%props185577%_ '())))
                                   _%rest185413%_)
                             (cons (gx#core-cons
                                    '%#define-values
                                    (cons _%hd-bind185565%_
                                          (cons _%expr185575%_ '())))
                                   _%r185414%_)))
                          (_%E185417185545%_)))))
                (_%E185417185545%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E185417185545%_))
                                          (_%E185417185545%_))))
                                  (_%E185417185545%_)))))
                      (_%E185416185579%_))))
                 (_%expand-body185283%_
                  (lambda (_%rbody185285%_)
                    (let _%lp185287%_ ((_%rest185289%_ _%rbody185285%_)
                                       (_%body185290%_ '()))
                      (let* ((_%rest185291185299%_ _%rest185289%_)
                             (_%else185293185307%_ (lambda () _%body185290%_))
                             (_%K185295185399%_
                              (lambda (_%rest185310%_ _%hd185311%_)
                                (let* ((_%e185312185333%_ _%hd185311%_)
                                       (_%E185328185337%_
                                        (lambda ()
                                          (_%lp185287%_
                                           _%rest185310%_
                                           (cons (gx#core-expand-expression
                                                  _%hd185311%_)
                                                 _%body185290%_))))
                                       (_%E185324185351%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e185312185333%_)
                                              (let ((_%e185329185341%_
                                                     (gx#syntax-e
                                                      _%e185312185333%_)))
                                                (let ((_%hd185330185344%_
                                                       (##car _%e185329185341%_))
                                                      (_%tl185331185346%_
                                                       (##cdr _%e185329185341%_)))
                                                  (let ((_%form185349%_
                                                         _%hd185330185344%_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _%form185349%_
                                                         gx#special-form-binding?)
                                                        (_%lp185287%_
                                                         _%rest185310%_
                                                         (cons _%hd185311%_
                                                               _%body185290%_))
                                                        (_%E185328185337%_)))))
                                              (_%E185328185337%_))))
                                       (_%E185314185363%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e185312185333%_)
                                              (let ((_%e185325185355%_
                                                     (gx#syntax-e
                                                      _%e185312185333%_)))
                                                (let ((_%hd185326185358%_
                                                       (##car _%e185325185355%_))
                                                      (_%tl185327185360%_
                                                       (##cdr _%e185325185355%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd185326185358%_)
                                                           (gx#core-identifier=?
                                                            _%hd185326185358%_
                                                            '%#export))
                                                      (_%lp185287%_
                                                       _%rest185310%_
                                                       (cons (gx#core-expand-export%__0
                                                              _%hd185311%_)
                                                             _%body185290%_))
                                                      (_%E185324185351%_))))
                                              (_%E185324185351%_))))
                                       (_%E185313185395%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e185312185333%_)
                                              (let ((_%e185315185367%_
                                                     (gx#syntax-e
                                                      _%e185312185333%_)))
                                                (let ((_%hd185316185370%_
                                                       (##car _%e185315185367%_))
                                                      (_%tl185317185372%_
                                                       (##cdr _%e185315185367%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd185316185370%_)
                                                           (gx#core-identifier=?
                                                            _%hd185316185370%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl185317185372%_)
                                                          (let ((_%e185318185375%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl185317185372%_)))
                    (let ((_%hd185319185378%_ (##car _%e185318185375%_))
                          (_%tl185320185380%_ (##cdr _%e185318185375%_)))
                      (let ((_%hd-bind185383%_ _%hd185319185378%_))
                        (if (gx#stx-pair? _%tl185320185380%_)
                            (let ((_%e185321185385%_
                                   (gx#syntax-e _%tl185320185380%_)))
                              (let ((_%hd185322185388%_
                                     (##car _%e185321185385%_))
                                    (_%tl185323185390%_
                                     (##cdr _%e185321185385%_)))
                                (let ((_%expr185393%_ _%hd185322185388%_))
                                  (if (gx#stx-null? _%tl185323185390%_)
                                      (_%lp185287%_
                                       _%rest185310%_
                                       (cons (gx#core-quote-syntax__1
                                              (gx#core-list
                                               '%#define-values
                                               (gx#core-quote-bind-values
                                                _%hd-bind185383%_)
                                               (gx#core-expand-expression
                                                _%expr185393%_))
                                              (gx#stx-source _%hd185311%_))
                                             _%body185290%_))
                                      (_%E185314185363%_)))))
                            (_%E185314185363%_)))))
                  (_%E185314185363%_))
              (_%E185314185363%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E185314185363%_)))))
                                  (_%E185313185395%_)))))
                        (if (pair? _%rest185291185299%_)
                            (let ((_%hd185296185402%_
                                   (##car _%rest185291185299%_))
                                  (_%tl185297185404%_
                                   (##cdr _%rest185291185299%_)))
                              (let* ((_%hd185407%_ _%hd185296185402%_)
                                     (_%rest185409%_ _%tl185297185404%_))
                                (_%K185295185399%_
                                 _%rest185409%_
                                 _%hd185407%_)))
                            (_%else185293185307%_)))))))
          (_%expand-body185283%_
           (gx#core-expand-block__%
            (cons '%#begin-module _%body185280%_)
            _%expand-special185282%_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_%stx185121%_
               _%expanded?185122%_
               _%method185123%_
               _%current-phi185124%_
               _%expand1185125%_)
        (letrec ((_%K185127%_
                  (lambda (_%rest185247%_ _%r185248%_)
                    (let* ((_%e185249185256%_ _%rest185247%_)
                           (_%E185251185260%_ (lambda () _%r185248%_))
                           (_%E185250185276%_
                            (lambda ()
                              (if (gx#stx-pair? _%e185249185256%_)
                                  (let ((_%e185252185264%_
                                         (gx#syntax-e _%e185249185256%_)))
                                    (let ((_%hd185253185267%_
                                           (##car _%e185252185264%_))
                                          (_%tl185254185269%_
                                           (##cdr _%e185252185264%_)))
                                      (let* ((_%hd185272%_ _%hd185253185267%_)
                                             (_%rest185274%_
                                              _%tl185254185269%_))
                                        (_%step185128%_
                                         _%hd185272%_
                                         _%rest185274%_
                                         _%r185248%_))))
                                  (_%E185251185260%_)))))
                      (_%E185250185276%_))))
                 (_%step185128%_
                  (lambda (_%hd185161%_ _%rest185162%_ _%r185163%_)
                    (let* ((_%e185164185182%_ _%hd185161%_)
                           (_%E185177185186%_
                            (lambda ()
                              (if (_%expanded?185122%_ (gx#stx-e _%hd185161%_))
                                  (_%K185127%_
                                   _%rest185162%_
                                   (cons (gx#stx-e _%hd185161%_) _%r185163%_))
                                  (_%expand1185125%_
                                   _%hd185161%_
                                   _%K185127%_
                                   _%rest185162%_
                                   _%r185163%_))))
                           (_%E185173185202%_
                            (lambda ()
                              (if (gx#stx-pair? _%e185164185182%_)
                                  (let ((_%e185178185190%_
                                         (gx#syntax-e _%e185164185182%_)))
                                    (let ((_%hd185179185193%_
                                           (##car _%e185178185190%_))
                                          (_%tl185180185195%_
                                           (##cdr _%e185178185190%_)))
                                      (let* ((_%macro185198%_
                                              _%hd185179185193%_)
                                             (_%body185200%_
                                              _%tl185180185195%_))
                                        (if (gx#core-bound-identifier?__%
                                             _%macro185198%_
                                             gx#syntax-binding?)
                                            (_%K185127%_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _%macro185198%_)
                                                    _%hd185161%_
                                                    _%method185123%_)
                                                   _%rest185162%_)
                                             _%r185163%_)
                                            (_%E185177185186%_)))))
                                  (_%E185177185186%_))))
                           (_%E185166185216%_
                            (lambda ()
                              (if (gx#stx-pair? _%e185164185182%_)
                                  (let ((_%e185174185206%_
                                         (gx#syntax-e _%e185164185182%_)))
                                    (let ((_%hd185175185209%_
                                           (##car _%e185174185206%_))
                                          (_%tl185176185211%_
                                           (##cdr _%e185174185206%_)))
                                      (if (eq? (gx#stx-e _%hd185175185209%_)
                                               'begin:)
                                          (let ((_%body185214%_
                                                 _%tl185176185211%_))
                                            (_%K185127%_
                                             (gx#stx-foldr
                                              cons
                                              _%rest185162%_
                                              _%body185214%_)
                                             _%r185163%_))
                                          (_%E185173185202%_))))
                                  (_%E185173185202%_))))
                           (_%E185165185243%_
                            (lambda ()
                              (if (gx#stx-pair? _%e185164185182%_)
                                  (let ((_%e185167185220%_
                                         (gx#syntax-e _%e185164185182%_)))
                                    (let ((_%hd185168185223%_
                                           (##car _%e185167185220%_))
                                          (_%tl185169185225%_
                                           (##cdr _%e185167185220%_)))
                                      (if (eq? (gx#stx-e _%hd185168185223%_)
                                               'phi:)
                                          (if (gx#stx-pair? _%tl185169185225%_)
                                              (let ((_%e185170185228%_
                                                     (gx#syntax-e
                                                      _%tl185169185225%_)))
                                                (let ((_%hd185171185231%_
                                                       (##car _%e185170185228%_))
                                                      (_%tl185172185233%_
                                                       (##cdr _%e185170185228%_)))
                                                  (let* ((_%dphi185236%_
                                                          _%hd185171185231%_)
                                                         (_%body185238%_
                                                          _%tl185172185233%_))
                                                    (if (gx#stx-fixnum?
                                                         _%dphi185236%_)
                                                        (let ((_%rbody185241%_
                                                               (call-with-parameters__1
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_%K185127%_ _%body185238%_ '()))
                        _%current-phi185124%_
                        (fx+ (gx#stx-e _%dphi185236%_)
                             (_%current-phi185124%_)))))
                  (_%K185127%_
                   _%rest185162%_
                   (foldr__0 cons _%r185163%_ _%rbody185241%_)))
                (_%E185166185216%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E185166185216%_))
                                          (_%E185166185216%_))))
                                  (_%E185166185216%_)))))
                      (_%E185165185243%_)))))
          (let* ((_%e185129185136%_ _%stx185121%_)
                 (_%E185131185140%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e185129185136%_)))
                 (_%E185130185157%_
                  (lambda ()
                    (if (gx#stx-pair? _%e185129185136%_)
                        (let ((_%e185132185144%_
                               (gx#syntax-e _%e185129185136%_)))
                          (let ((_%hd185133185147%_ (##car _%e185132185144%_))
                                (_%tl185134185149%_ (##cdr _%e185132185144%_)))
                            (let ((_%body185152%_ _%tl185134185149%_))
                              (if (_%current-phi185124%_)
                                  (_%K185127%_ _%body185152%_ '())
                                  (call-with-parameters__1
                                   (lambda () (_%K185127%_ _%body185152%_ '()))
                                   _%current-phi185124%_
                                   (gx#current-expander-phi))))))
                        (_%E185131185140%_)))))
            (_%E185130185157%_)))))
    (define gx#core-expand-import%__%
      (lambda (_%stx184775%_ _%internal-expand?184776%_)
        (letrec ((_%expand1184778%_
                  (lambda (_%hd185093%_ _%K185094%_ _%rest185095%_ _%r185096%_)
                    (if (gx#core-bound-module? _%hd185093%_)
                        (_%import1184779%_
                         (gx#syntax-local-e__0 _%hd185093%_)
                         _%K185094%_
                         _%rest185095%_
                         _%r185096%_)
                        (if (gx#core-library-module-path? _%hd185093%_)
                            (_%import1184779%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%hd185093%_))
                             _%K185094%_
                             _%rest185095%_
                             _%r185096%_)
                            (if (gx#core-library-relative-module-path?
                                 _%hd185093%_)
                                (_%import1184779%_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _%hd185093%_))
                                 _%K185094%_
                                 _%rest185095%_
                                 _%r185096%_)
                                (let ((_%e185102%_ (gx#stx-e _%hd185093%_)))
                                  (if (pair? _%e185102%_)
                                      (let ((_%$e185105%_
                                             (gx#stx-e (##car _%e185102%_))))
                                        (if (eq? 'spec: _%$e185105%_)
                                            (_%import-spec184782%_
                                             _%hd185093%_
                                             _%K185094%_
                                             _%rest185095%_
                                             _%r185096%_)
                                            (if (eq? 'in: _%$e185105%_)
                                                (_%import-submodule184780%_
                                                 _%hd185093%_
                                                 _%K185094%_
                                                 _%rest185095%_
                                                 _%r185096%_)
                                                (if (eq? 'runtime:
                                                         _%$e185105%_)
                                                    (_%import-runtime184781%_
                                                     _%hd185093%_
                                                     _%K185094%_
                                                     _%rest185095%_
                                                     _%r185096%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _%stx184775%_
                                                     _%hd185093%_)))))
                                      (if (string? _%e185102%_)
                                          (_%import1184779%_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _%hd185093%_
                                             (gx#stx-source _%stx184775%_)))
                                           _%K185094%_
                                           _%rest185095%_
                                           _%r185096%_)
                                          (if (##structure-instance-of?
                                               _%e185102%_
                                               'gx#module-context::t)
                                              (_%K185094%_
                                               _%rest185095%_
                                               (cons _%e185102%_ _%r185096%_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _%stx184775%_
                                               _%hd185093%_))))))))))
                 (_%import1184779%_
                  (lambda (_%ctx185082%_
                           _%K185083%_
                           _%rest185084%_
                           _%r185085%_)
                    (let ((_%dphi185087%_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_%K185083%_
                       _%rest185084%_
                       (cons (##structure
                              gx#import-set::t
                              _%ctx185082%_
                              _%dphi185087%_
                              (map (lambda (_%g185088185090%_)
                                     (gx#core-module-export->import__%
                                      _%g185088185090%_
                                      '#f
                                      _%dphi185087%_))
                                   (##unchecked-structure-ref
                                    _%ctx185082%_
                                    '9
                                    '#f
                                    '#f)))
                             _%r185085%_)))))
                 (_%import-submodule184780%_
                  (lambda (_%hd185049%_ _%K185050%_ _%rest185051%_ _%r185052%_)
                    (let* ((_%e185053185060%_ _%hd185049%_)
                           (_%E185055185064%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e185053185060%_)))
                           (_%E185054185078%_
                            (lambda ()
                              (if (gx#stx-pair? _%e185053185060%_)
                                  (let ((_%e185056185068%_
                                         (gx#syntax-e _%e185053185060%_)))
                                    (let ((_%hd185057185071%_
                                           (##car _%e185056185068%_))
                                          (_%tl185058185073%_
                                           (##cdr _%e185056185068%_)))
                                      (let ((_%spath185076%_
                                             _%tl185058185073%_))
                                        (_%import1184779%_
                                         (_%import-spec-source184783%_
                                          _%spath185076%_)
                                         _%K185050%_
                                         _%rest185051%_
                                         _%r185052%_))))
                                  (_%E185055185064%_)))))
                      (_%E185054185078%_))))
                 (_%import-runtime184781%_
                  (lambda (_%hd185016%_ _%K185017%_ _%rest185018%_ _%r185019%_)
                    (let* ((_%e185020185027%_ _%hd185016%_)
                           (_%E185022185031%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e185020185027%_)))
                           (_%E185021185045%_
                            (lambda ()
                              (if (gx#stx-pair? _%e185020185027%_)
                                  (let ((_%e185023185035%_
                                         (gx#syntax-e _%e185020185027%_)))
                                    (let ((_%hd185024185038%_
                                           (##car _%e185023185035%_))
                                          (_%tl185025185040%_
                                           (##cdr _%e185023185035%_)))
                                      (let ((_%spath185043%_
                                             _%tl185025185040%_))
                                        (_%K185017%_
                                         _%rest185018%_
                                         (cons (_%import-spec-source184783%_
                                                _%spath185043%_)
                                               _%r185019%_)))))
                                  (_%E185022185031%_)))))
                      (_%E185021185045%_))))
                 (_%import-spec184782%_
                  (lambda (_%hd184854%_ _%K184855%_ _%rest184856%_ _%r184857%_)
                    (let* ((_%e184858184875%_ _%hd184854%_)
                           (_%E184867184879%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e184858184875%_)))
                           (_%E184860184990%_
                            (lambda ()
                              (if (gx#stx-pair? _%e184858184875%_)
                                  (let ((_%e184868184883%_
                                         (gx#syntax-e _%e184858184875%_)))
                                    (let ((_%hd184869184886%_
                                           (##car _%e184868184883%_))
                                          (_%tl184870184888%_
                                           (##cdr _%e184868184883%_)))
                                      (if (gx#stx-pair? _%tl184870184888%_)
                                          (let ((_%e184871184891%_
                                                 (gx#syntax-e
                                                  _%tl184870184888%_)))
                                            (let ((_%hd184872184894%_
                                                   (##car _%e184871184891%_))
                                                  (_%tl184873184896%_
                                                   (##cdr _%e184871184891%_)))
                                              (let* ((_%path184899%_
                                                      _%hd184872184894%_)
                                                     (_%specs184901%_
                                                      _%tl184873184896%_))
                                                (let ((_%src-ctx184903%_
                                                       (_%import-spec-source184783%_
                                                        _%path184899%_))
                                                      (_%exports184904%_
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
                                                      (_%specs184905%_
                                                       (gx#syntax->list
                                                        _%specs184901%_)))
                                                  (for-each
                                                   (lambda (_%out184907%_)
                                                     (__hash-put!
                                                      _%exports184904%_
                                                      (cons (##unchecked-structure-ref
                                                             _%out184907%_
                                                             '3
                                                             '#f
                                                             '#f)
                                                            (##unchecked-structure-ref
                                                             _%out184907%_
                                                             '4
                                                             '#f
                                                             '#f))
                                                      _%out184907%_))
                                                   (##unchecked-structure-ref
                                                    _%src-ctx184903%_
                                                    '9
                                                    '#f
                                                    '#f))
                                                  (_%K184855%_
                                                   _%rest184856%_
                                                   (foldl__0
                                                    (lambda (_%spec184909%_
                                                             _%r184910%_)
                                                      (let* ((_%e184911184927%_
                                                              _%spec184909%_)
                                                             (_%E184913184931%_
                                                              (lambda ()
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid syntax-case clause"
                         _%e184911184927%_)))
                     (_%E184912184986%_
                      (lambda ()
                        (if (gx#stx-pair? _%e184911184927%_)
                            (let ((_%e184914184935%_
                                   (gx#syntax-e _%e184911184927%_)))
                              (let ((_%hd184915184938%_
                                     (##car _%e184914184935%_))
                                    (_%tl184916184940%_
                                     (##cdr _%e184914184935%_)))
                                (let ((_%phi184943%_ _%hd184915184938%_))
                                  (if (gx#stx-pair? _%tl184916184940%_)
                                      (let ((_%e184917184945%_
                                             (gx#syntax-e _%tl184916184940%_)))
                                        (let ((_%hd184918184948%_
                                               (##car _%e184917184945%_))
                                              (_%tl184919184950%_
                                               (##cdr _%e184917184945%_)))
                                          (let ((_%name184953%_
                                                 _%hd184918184948%_))
                                            (if (gx#stx-pair?
                                                 _%tl184919184950%_)
                                                (let ((_%e184920184955%_
                                                       (gx#syntax-e
                                                        _%tl184919184950%_)))
                                                  (let ((_%hd184921184958%_
                                                         (##car _%e184920184955%_))
                                                        (_%tl184922184960%_
                                                         (##cdr _%e184920184955%_)))
                                                    (let ((_%src-phi184963%_
                                                           _%hd184921184958%_))
                                                      (if (gx#stx-pair?
                                                           _%tl184922184960%_)
                                                          (let ((_%e184923184965%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl184922184960%_)))
                    (let ((_%hd184924184968%_ (##car _%e184923184965%_))
                          (_%tl184925184970%_ (##cdr _%e184923184965%_)))
                      (let ((_%src-name184973%_ _%hd184924184968%_))
                        (if (gx#stx-null? _%tl184925184970%_)
                            (if (and (gx#stx-fixnum? _%src-phi184963%_)
                                     (gx#identifier? _%src-name184973%_)
                                     (gx#stx-fixnum? _%phi184943%_)
                                     (gx#identifier? _%name184953%_))
                                (let ((_%src-phi184975%_
                                       (gx#stx-e _%src-phi184963%_))
                                      (_%src-name184976%_
                                       (gx#core-identifier-key
                                        _%src-name184973%_))
                                      (_%phi184977%_ (gx#stx-e _%phi184943%_))
                                      (_%name184978%_
                                       (gx#core-identifier-key
                                        _%name184953%_)))
                                  (let ((_%$e184980%_
                                         (__hash-get
                                          _%exports184904%_
                                          (cons _%src-phi184975%_
                                                _%src-name184976%_))))
                                    (if _%$e184980%_
                                        (cons (gx#core-module-export->import__%
                                               _%$e184980%_
                                               _%name184978%_
                                               (fx- _%phi184977%_
                                                    _%src-phi184975%_))
                                              _%r184910%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; no matching export"
                                         _%stx184775%_
                                         _%hd184854%_))))
                                (_%E184913184931%_))
                            (_%E184913184931%_)))))
                  (_%E184913184931%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E184913184931%_)))))
                                      (_%E184913184931%_)))))
                            (_%E184913184931%_)))))
                (_%E184912184986%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r184857%_
                                                    _%specs184905%_))))))
                                          (_%E184867184879%_))))
                                  (_%E184867184879%_))))
                           (_%E184859185012%_
                            (lambda ()
                              (if (gx#stx-pair? _%e184858184875%_)
                                  (let ((_%e184861184994%_
                                         (gx#syntax-e _%e184858184875%_)))
                                    (let ((_%hd184862184997%_
                                           (##car _%e184861184994%_))
                                          (_%tl184863184999%_
                                           (##cdr _%e184861184994%_)))
                                      (if (gx#stx-pair? _%tl184863184999%_)
                                          (let ((_%e184864185002%_
                                                 (gx#syntax-e
                                                  _%tl184863184999%_)))
                                            (let ((_%hd184865185005%_
                                                   (##car _%e184864185002%_))
                                                  (_%tl184866185007%_
                                                   (##cdr _%e184864185002%_)))
                                              (let ((_%path185010%_
                                                     _%hd184865185005%_))
                                                (if (gx#stx-null?
                                                     _%tl184866185007%_)
                                                    (_%K184855%_
                                                     _%rest184856%_
                                                     (cons (_%import-spec-source184783%_
                                                            _%path185010%_)
                                                           _%r184857%_))
                                                    (_%E184860184990%_)))))
                                          (_%E184860184990%_))))
                                  (_%E184860184990%_)))))
                      (_%E184859185012%_))))
                 (_%import-spec-source184783%_
                  (lambda (_%spath184852%_)
                    (gx#core-import-nested-module
                     _%spath184852%_
                     _%stx184775%_)))
                 (_%import!184784%_
                  (lambda (_%rbody184797%_)
                    (letrec* ((_%current-ctx184799%_
                               (gx#current-expander-context))
                              (_%deps184800%_ (make-hash-table-eq))
                              (_%bind!184801%_
                               (lambda (_%hd184850%_)
                                 (gx#core-bind-import!__1
                                  _%hd184850%_
                                  _%current-ctx184799%_))))
                      (let _%lp184803%_ ((_%rest184805%_ _%rbody184797%_)
                                         (_%body184806%_ '()))
                        (let* ((_%rest184807184815%_ _%rest184805%_)
                               (_%else184809184826%_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _%current-ctx184799%_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _%current-ctx184799%_
                                       (foldl__0
                                        cons
                                        (##unchecked-structure-ref
                                         _%current-ctx184799%_
                                         '8
                                         '#f
                                         '#f)
                                        _%body184806%_)
                                       '8
                                       '#f
                                       '#f)
                                      '#!void)
                                  (__hash-for-each
                                   (lambda (_%ctx184823%_ _%_184824%_)
                                     (gx#eval-module _%ctx184823%_))
                                   _%deps184800%_)
                                  _%body184806%_))
                               (_%K184811184838%_
                                (lambda (_%rest184829%_ _%hd184830%_)
                                  (if (##structure-direct-instance-of?
                                       _%hd184830%_
                                       'gx#module-import::t)
                                      (let ()
                                        (_%bind!184801%_ _%hd184830%_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _%hd184830%_
                                                   '3
                                                   '#f
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _%hd184830%_
                                                            '1
                                                            '#f
                                                            '#f)
                                                           '3
                                                           '#f
                                                           '#f)))
                                            (__hash-put!
                                             _%deps184800%_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _%hd184830%_
                                               '1
                                               '#f
                                               '#f)
                                              '1
                                              '#f
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _%hd184830%_
                                           'gx#import-set::t)
                                          (let ()
                                            (for-each
                                             _%bind!184801%_
                                             (##unchecked-structure-ref
                                              _%hd184830%_
                                              '3
                                              '#f
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _%hd184830%_
                                                  '2
                                                  '#f
                                                  '#f))
                                                (__hash-put!
                                                 _%deps184800%_
                                                 (##unchecked-structure-ref
                                                  _%hd184830%_
                                                  '1
                                                  '#f
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_%$e184834%_
                                                 (##structure-instance-of?
                                                  _%hd184830%_
                                                  'gx#module-context::t)))
                                            (if _%$e184834%_
                                                _%$e184834%_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _%stx184775%_
                                                 _%hd184830%_)))))
                                  (_%lp184803%_
                                   _%rest184829%_
                                   (cons _%hd184830%_ _%body184806%_)))))
                          (if (pair? _%rest184807184815%_)
                              (let ((_%hd184812184841%_
                                     (##car _%rest184807184815%_))
                                    (_%tl184813184843%_
                                     (##cdr _%rest184807184815%_)))
                                (let* ((_%hd184846%_ _%hd184812184841%_)
                                       (_%rest184848%_ _%tl184813184843%_))
                                  (_%K184811184838%_
                                   _%rest184848%_
                                   _%hd184846%_)))
                              (_%else184809184826%_)))))))
                 (_%expanded-import?184785%_
                  (lambda (_%e184789%_)
                    (let ((_%$e184791%_
                           (##structure-direct-instance-of?
                            _%e184789%_
                            'gx#import-set::t)))
                      (if _%$e184791%_
                          _%$e184791%_
                          (let ((_%$e184794%_
                                 (##structure-direct-instance-of?
                                  _%e184789%_
                                  'gx#module-import::t)))
                            (if _%$e184794%_
                                _%$e184794%_
                                (##structure-instance-of?
                                 _%e184789%_
                                 'gx#module-context::t))))))))
          (let ((_%rbody184787%_
                 (gx#core-expand-import/export
                  _%stx184775%_
                  _%expanded-import?184785%_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _%expand1184778%_)))
            (if _%internal-expand?184776%_
                (reverse _%rbody184787%_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_%import!184784%_ _%rbody184787%_))
                 (gx#stx-source _%stx184775%_)))))))
    (define gx#core-expand-import%__0
      (lambda (_%stx185114%_)
        (let ((_%internal-expand?185116%_ '#f))
          (gx#core-expand-import%__%
           _%stx185114%_
           _%internal-expand?185116%_))))
    (define gx#core-expand-import%
      (lambda _g187872_
        (let ((_g187873_ (##length _g187872_)))
          (cond ((##fx= _g187873_ 1)
                 (apply gx#core-expand-import%__0 _g187872_))
                ((##fx= _g187873_ 2)
                 (apply gx#core-expand-import%__% _g187872_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g187872_))))))
    (define gx#core-import-nested-module
      (lambda (_%spath184702%_ _%where184703%_)
        (let* ((_%e184704184711%_ _%spath184702%_)
               (_%E184706184715%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e184704184711%_)))
               (_%E184705184770%_
                (lambda ()
                  (if (gx#stx-pair? _%e184704184711%_)
                      (let ((_%e184707184719%_
                             (gx#syntax-e _%e184704184711%_)))
                        (let ((_%hd184708184722%_ (##car _%e184707184719%_))
                              (_%tl184709184724%_ (##cdr _%e184707184719%_)))
                          (let* ((_%origin184727%_ _%hd184708184722%_)
                                 (_%sub184729%_ _%tl184709184724%_)
                                 (_%origin-ctx184731%_
                                  (if (gx#stx-false? _%origin184727%_)
                                      (gx#current-expander-context)
                                      (gx#import-module__0 _%origin184727%_))))
                            (let _%lp184733%_ ((_%rest184735%_ _%sub184729%_)
                                               (_%ctx184736%_
                                                _%origin-ctx184731%_))
                              (let* ((_%e184737184744%_ _%rest184735%_)
                                     (_%E184739184748%_
                                      (lambda () _%ctx184736%_))
                                     (_%E184738184766%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%e184737184744%_)
                                            (let ((_%e184740184752%_
                                                   (gx#syntax-e
                                                    _%e184737184744%_)))
                                              (let ((_%hd184741184755%_
                                                     (##car _%e184740184752%_))
                                                    (_%tl184742184757%_
                                                     (##cdr _%e184740184752%_)))
                                                (let* ((_%id184760%_
                                                        _%hd184741184755%_)
                                                       (_%rest184762%_
                                                        _%tl184742184757%_)
                                                       (_%bind184764%_
                                                        (gx#resolve-identifier__%
                                                         _%id184760%_
                                                         '0
                                                         _%ctx184736%_)))
                                                  (if (and (##structure-direct-instance-of?
                                                            _%bind184764%_
                                                            'gx#syntax-binding::t)
                                                           (##structure-instance-of?
                                                            (##unchecked-structure-ref
                                                             _%bind184764%_
                                                             '5
                                                             '#f
                                                             '#f)
                                                            'gx#module-context::t))
                                                      '#!void
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; not bound as module"
                                                       _%where184703%_
                                                       _%spath184702%_
                                                       _%id184760%_))
                                                  (_%lp184733%_
                                                   _%rest184762%_
                                                   (##unchecked-structure-ref
                                                    _%bind184764%_
                                                    '5
                                                    '#f
                                                    '#f)))))
                                            (_%E184739184748%_)))))
                                (_%E184738184766%_))))))
                      (_%E184706184715%_)))))
          (_%E184705184770%_))))
    (define gx#core-expand-import-source
      (lambda (_%hd184700%_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _%hd184700%_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_%stx184195%_ _%internal-expand?184196%_)
        (letrec* ((_%make-export__187800187801%_
                   (lambda (_%bind184648%_
                            _%phi184649%_
                            _%ctx184650%_
                            _%name184651%_)
                     (let* ((_%key184653%_
                             (##unchecked-structure-ref
                              _%bind184648%_
                              '2
                              '#f
                              '#f))
                            (_%export-key184655%_
                             (if _%name184651%_
                                 (gx#core-identifier-key _%name184651%_)
                                 _%key184653%_)))
                       (##structure
                        gx#module-export::t
                        _%ctx184650%_
                        _%key184653%_
                        _%phi184649%_
                        _%export-key184655%_
                        (let ((_%$e184658%_
                               (##structure-instance-of?
                                _%bind184648%_
                                'gx#extern-binding::t)))
                          (if _%$e184658%_
                              _%$e184658%_
                              (##structure-direct-instance-of?
                               _%bind184648%_
                               'gx#import-binding::t)))))))
                  (_%make-export__0__187802187805%_
                   (lambda (_%bind184664%_)
                     (let* ((_%phi184666%_ (gx#current-export-expander-phi))
                            (_%ctx184668%_ (gx#current-expander-context))
                            (_%name184670%_ '#f))
                       (_%make-export__187800187801%_
                        _%bind184664%_
                        _%phi184666%_
                        _%ctx184668%_
                        _%name184670%_))))
                  (_%make-export__1__187803187806%_
                   (lambda (_%bind184672%_ _%phi184673%_)
                     (let* ((_%ctx184675%_ (gx#current-expander-context))
                            (_%name184677%_ '#f))
                       (_%make-export__187800187801%_
                        _%bind184672%_
                        _%phi184673%_
                        _%ctx184675%_
                        _%name184677%_))))
                  (_%make-export__2__187804187807%_
                   (lambda (_%bind184679%_ _%phi184680%_ _%ctx184681%_)
                     (let ((_%name184683%_ '#f))
                       (_%make-export__187800187801%_
                        _%bind184679%_
                        _%phi184680%_
                        _%ctx184681%_
                        _%name184683%_))))
                  (_%make-export184198%_
                   (lambda _g187874_
                     (let ((_g187875_ (##length _g187874_)))
                       (cond ((##fx= _g187875_ 1)
                              (apply _%make-export__0__187802187805%_
                                     _g187874_))
                             ((##fx= _g187875_ 2)
                              (apply _%make-export__1__187803187806%_
                                     _g187874_))
                             ((##fx= _g187875_ 3)
                              (apply _%make-export__2__187804187807%_
                                     _g187874_))
                             ((##fx= _g187875_ 4)
                              (apply _%make-export__187800187801%_ _g187874_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g187874_))))))
                  (_%expand1184199%_
                   (lambda (_%hd184353%_
                            _%K184354%_
                            _%rest184355%_
                            _%r184356%_)
                     (let* ((_%e184357184389%_ _%hd184353%_)
                            (_%E184384184393%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _%stx184195%_
                                _%hd184353%_)))
                            (_%E184374184477%_
                             (lambda ()
                               (if (gx#stx-pair? _%e184357184389%_)
                                   (let ((_%e184385184397%_
                                          (gx#syntax-e _%e184357184389%_)))
                                     (let ((_%hd184386184400%_
                                            (##car _%e184385184397%_))
                                           (_%tl184387184402%_
                                            (##cdr _%e184385184397%_)))
                                       (if (eq? (gx#stx-e _%hd184386184400%_)
                                                'import:)
                                           (let ((_%in184405%_
                                                  _%tl184387184402%_))
                                             (if (gx#stx-list? _%in184405%_)
                                                 (let _%lp184407%_ ((_%in-rest184409%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%in184405%_)
                            (_%r184410%_ _%r184356%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%e184411184418%_
                                                           _%in-rest184409%_)
                                                          (_%E184413184422%_
                                                           (lambda ()
                                                             (_%K184354%_
                                                              _%rest184355%_
                                                              _%r184410%_)))
                                                          (_%E184412184473%_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%e184411184418%_)
                         (let ((_%e184414184426%_
                                (gx#syntax-e _%e184411184418%_)))
                           (let ((_%hd184415184429%_ (##car _%e184414184426%_))
                                 (_%tl184416184431%_
                                  (##cdr _%e184414184426%_)))
                             (let* ((_%hd184434%_ _%hd184415184429%_)
                                    (_%in-rest184436%_ _%tl184416184431%_)
                                    (_%src184471%_
                                     (if (gx#core-bound-module? _%hd184434%_)
                                         (gx#syntax-local-e__0 _%hd184434%_)
                                         (if (gx#core-library-module-path?
                                              _%hd184434%_)
                                             (gx#import-module__0
                                              (gx#core-resolve-library-module-path
                                               _%hd184434%_))
                                             (if (gx#core-library-relative-module-path?
                                                  _%hd184434%_)
                                                 (gx#import-module__0
                                                  (gx#core-resolve-library-relative-module-path
                                                   _%hd184434%_))
                                                 (if (gx#stx-string?
                                                      _%hd184434%_)
                                                     (gx#import-module__0
                                                      (gx#core-resolve-module-path__%
                                                       _%hd184434%_
                                                       (gx#stx-source
                                                        _%stx184195%_)))
                                                     (let* ((_%e184442184449%_
                                                             _%hd184434%_)
                                                            (_%E184444184453%_
                                                             (lambda ()
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; illegal re-export"
                                                                _%stx184195%_
                                                                _%hd184434%_)))
                                                            (_%E184443184467%_
                                                             (lambda ()
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%e184442184449%_)
                           (let ((_%e184445184457%_
                                  (gx#syntax-e _%e184442184449%_)))
                             (let ((_%hd184446184460%_
                                    (##car _%e184445184457%_))
                                   (_%tl184447184462%_
                                    (##cdr _%e184445184457%_)))
                               (if (eq? (gx#stx-e _%hd184446184460%_) 'in:)
                                   (let ((_%spath184465%_ _%tl184447184462%_))
                                     (gx#core-import-nested-module
                                      _%spath184465%_
                                      _%stx184195%_))
                                   (_%E184444184453%_))))
                           (_%E184444184453%_)))))
               (_%E184443184467%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (_%lp184407%_
                                _%in-rest184436%_
                                (_%export-imports184200%_
                                 _%src184471%_
                                 _%r184410%_)))))
                         (_%E184413184422%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E184412184473%_)))
                                                 (_%E184384184393%_)))
                                           (_%E184384184393%_))))
                                   (_%E184384184393%_))))
                            (_%E184361184517%_
                             (lambda ()
                               (if (gx#stx-pair? _%e184357184389%_)
                                   (let ((_%e184375184481%_
                                          (gx#syntax-e _%e184357184389%_)))
                                     (let ((_%hd184376184484%_
                                            (##car _%e184375184481%_))
                                           (_%tl184377184486%_
                                            (##cdr _%e184375184481%_)))
                                       (if (eq? (gx#stx-e _%hd184376184484%_)
                                                'rename:)
                                           (if (gx#stx-pair?
                                                _%tl184377184486%_)
                                               (let ((_%e184378184489%_
                                                      (gx#syntax-e
                                                       _%tl184377184486%_)))
                                                 (let ((_%hd184379184492%_
                                                        (##car _%e184378184489%_))
                                                       (_%tl184380184494%_
                                                        (##cdr _%e184378184489%_)))
                                                   (let ((_%id184497%_
                                                          _%hd184379184492%_))
                                                     (if (gx#stx-pair?
                                                          _%tl184380184494%_)
                                                         (let ((_%e184381184499%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl184380184494%_)))
                   (let ((_%hd184382184502%_ (##car _%e184381184499%_))
                         (_%tl184383184504%_ (##cdr _%e184381184499%_)))
                     (let ((_%name184507%_ _%hd184382184502%_))
                       (if (gx#stx-null? _%tl184383184504%_)
                           (let* ((_%phi184509%_
                                   (gx#current-export-expander-phi))
                                  (_%$e184511%_
                                   (gx#core-resolve-identifier__1
                                    _%id184497%_
                                    _%phi184509%_)))
                             (if _%$e184511%_
                                 (_%K184354%_
                                  _%rest184355%_
                                  (cons (_%make-export__187800187801%_
                                         _%$e184511%_
                                         _%phi184509%_
                                         (gx#current-expander-context)
                                         _%name184507%_)
                                        _%r184356%_))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Reference to unbound identifier"
                                  _%stx184195%_
                                  _%hd184353%_
                                  _%id184497%_)))
                           (_%E184374184477%_)))))
                 (_%E184374184477%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E184374184477%_))
                                           (_%E184374184477%_))))
                                   (_%E184374184477%_))))
                            (_%E184360184567%_
                             (lambda ()
                               (if (gx#stx-pair? _%e184357184389%_)
                                   (let ((_%e184362184521%_
                                          (gx#syntax-e _%e184357184389%_)))
                                     (let ((_%hd184363184524%_
                                            (##car _%e184362184521%_))
                                           (_%tl184364184526%_
                                            (##cdr _%e184362184521%_)))
                                       (if (eq? (gx#stx-e _%hd184363184524%_)
                                                'spec:)
                                           (if (gx#stx-pair?
                                                _%tl184364184526%_)
                                               (let ((_%e184365184529%_
                                                      (gx#syntax-e
                                                       _%tl184364184526%_)))
                                                 (let ((_%hd184366184532%_
                                                        (##car _%e184365184529%_))
                                                       (_%tl184367184534%_
                                                        (##cdr _%e184365184529%_)))
                                                   (let ((_%phi184537%_
                                                          _%hd184366184532%_))
                                                     (if (gx#stx-pair?
                                                          _%tl184367184534%_)
                                                         (let ((_%e184368184539%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl184367184534%_)))
                   (let ((_%hd184369184542%_ (##car _%e184368184539%_))
                         (_%tl184370184544%_ (##cdr _%e184368184539%_)))
                     (let ((_%id184547%_ _%hd184369184542%_))
                       (if (gx#stx-pair? _%tl184370184544%_)
                           (let ((_%e184371184549%_
                                  (gx#syntax-e _%tl184370184544%_)))
                             (let ((_%hd184372184552%_
                                    (##car _%e184371184549%_))
                                   (_%tl184373184554%_
                                    (##cdr _%e184371184549%_)))
                               (let ((_%name184557%_ _%hd184372184552%_))
                                 (if (gx#stx-null? _%tl184373184554%_)
                                     (if (and (gx#stx-fixnum? _%phi184537%_)
                                              (gx#identifier? _%id184547%_)
                                              (gx#identifier? _%name184557%_))
                                         (let* ((_%phi184559%_
                                                 (gx#stx-e _%phi184537%_))
                                                (_%$e184561%_
                                                 (gx#core-resolve-identifier__1
                                                  _%id184547%_
                                                  _%phi184559%_)))
                                           (if _%$e184561%_
                                               (_%K184354%_
                                                _%rest184355%_
                                                (cons (_%make-export__187800187801%_
                                                       _%$e184561%_
                                                       _%phi184559%_
                                                       (gx#current-expander-context)
                                                       _%name184557%_)
                                                      _%r184356%_))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _%stx184195%_
                                                _%hd184353%_
                                                _%id184547%_)))
                                         (_%E184361184517%_))
                                     (_%E184361184517%_)))))
                           (_%E184361184517%_)))))
                 (_%E184361184517%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E184361184517%_))
                                           (_%E184361184517%_))))
                                   (_%E184361184517%_))))
                            (_%E184359184579%_
                             (lambda ()
                               (let ((_%id184571%_ _%e184357184389%_))
                                 (if (gx#identifier? _%id184571%_)
                                     (let ((_%$e184573%_
                                            (gx#core-resolve-identifier__1
                                             _%id184571%_
                                             (gx#current-export-expander-phi))))
                                       (if _%$e184573%_
                                           (_%K184354%_
                                            _%rest184355%_
                                            (cons (_%make-export__0__187802187805%_
                                                   _%$e184573%_)
                                                  _%r184356%_))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _%stx184195%_
                                            _%hd184353%_)))
                                     (_%E184360184567%_)))))
                            (_%E184358184643%_
                             (lambda ()
                               (if (eq? (gx#stx-e _%e184357184389%_) '#t)
                                   (let* ((_%current-ctx184583%_
                                           (gx#current-expander-context))
                                          (_%current-phi184585%_
                                           (gx#current-export-expander-phi))
                                          (_%phi-ctx184587%_
                                           (gx#core-context-shift
                                            _%current-ctx184583%_
                                            _%current-phi184585%_))
                                          (_%phi-bind184589%_
                                           (hash->list
                                            (##unchecked-structure-ref
                                             _%phi-ctx184587%_
                                             '2
                                             '#f
                                             '#f))))
                                     (let _%lp184592%_ ((_%bind-rest184594%_
                                                         _%phi-bind184589%_)
                                                        (_%set184595%_ '()))
                                       (let* ((_%bind-rest184596184606%_
                                               _%bind-rest184594%_)
                                              (_%else184598184614%_
                                               (lambda ()
                                                 (_%K184354%_
                                                  _%rest184355%_
                                                  (cons (##structure
                                                         gx#export-set::t
                                                         '#f
                                                         _%current-phi184585%_
                                                         _%set184595%_)
                                                        _%r184356%_))))
                                              (_%K184600184624%_
                                               (lambda (_%bind-rest184617%_
                                                        _%bind184618%_
                                                        _%key184619%_)
                                                 (if (or (##structure-direct-instance-of?
                                                          _%bind184618%_
                                                          'gx#import-binding::t)
                                                         (gx#private-feature-binding?
                                                          _%bind184618%_))
                                                     (_%lp184592%_
                                                      _%bind-rest184617%_
                                                      _%set184595%_)
                                                     (_%lp184592%_
                                                      _%bind-rest184617%_
                                                      (cons (_%make-export__2__187804187807%_
                                                             _%bind184618%_
                                                             _%current-phi184585%_
                                                             _%current-ctx184583%_)
                                                            _%set184595%_))))))
                                         (if (pair? _%bind-rest184596184606%_)
                                             (let ((_%hd184601184627%_
                                                    (##car _%bind-rest184596184606%_))
                                                   (_%tl184602184629%_
                                                    (##cdr _%bind-rest184596184606%_)))
                                               (if (pair? _%hd184601184627%_)
                                                   (let ((_%hd184603184632%_
                                                          (##car _%hd184601184627%_))
                                                         (_%tl184604184634%_
                                                          (##cdr _%hd184601184627%_)))
                                                     (let* ((_%key184637%_
                                                             _%hd184603184632%_)
                                                            (_%bind184639%_
                                                             _%tl184604184634%_)
                                                            (_%bind-rest184641%_
                                                             _%tl184602184629%_))
                                                       (_%K184600184624%_
                                                        _%bind-rest184641%_
                                                        _%bind184639%_
                                                        _%key184637%_)))
                                                   (_%else184598184614%_)))
                                             (_%else184598184614%_)))))
                                   (_%E184359184579%_)))))
                       (_%E184358184643%_))))
                  (_%export-imports184200%_
                   (lambda (_%src184230%_ _%r184231%_)
                     (letrec* ((_%current-ctx184233%_
                                (gx#current-expander-context))
                               (_%current-phi184234%_
                                (gx#current-export-expander-phi))
                               (_%import->export184235%_
                                (lambda (_%in184316%_)
                                  (let* ((_%in184317184325%_ _%in184316%_)
                                         (_%E184319184328%_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _%in184317184325%_
                                                   '((module-import
                                                      out
                                                      key
                                                      phi)))
                                            '#!void))
                                         (_%K184320184335%_
                                          (lambda (_%phi184331%_
                                                   _%key184332%_
                                                   _%out184333%_)
                                            (##structure
                                             gx#module-export::t
                                             _%current-ctx184233%_
                                             _%key184332%_
                                             _%phi184331%_
                                             _%key184332%_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _%in184317184325%_
                                         'gx#module-import::t)
                                        (let* ((_%e184321184338%_
                                                (##unchecked-structure-ref
                                                 _%in184317184325%_
                                                 '1
                                                 '#f
                                                 '#f))
                                               (_%out184341%_
                                                _%e184321184338%_)
                                               (_%e184322184343%_
                                                (##unchecked-structure-ref
                                                 _%in184317184325%_
                                                 '2
                                                 '#f
                                                 '#f))
                                               (_%key184346%_
                                                _%e184322184343%_)
                                               (_%e184323184348%_
                                                (##unchecked-structure-ref
                                                 _%in184317184325%_
                                                 '3
                                                 '#f
                                                 '#f))
                                               (_%phi184351%_
                                                _%e184323184348%_))
                                          (_%K184320184335%_
                                           _%phi184351%_
                                           _%key184346%_
                                           _%out184341%_))
                                        (_%E184319184328%_)))))
                               (_%fold-e184236%_
                                (lambda (_%in184238%_ _%r184239%_)
                                  (let* ((_%in184240184254%_ _%in184238%_)
                                         (_%else184243184262%_
                                          (lambda () _%r184239%_)))
                                    (let ((_%K184249184298%_
                                           (lambda (_%phi184294%_
                                                    _%key184295%_
                                                    _%out184296%_)
                                             (if (and (fx= _%phi184294%_
                                                           _%current-phi184234%_)
                                                      (eq? _%src184230%_
                                                           (##unchecked-structure-ref
                                                            _%out184296%_
                                                            '1
                                                            '#f
                                                            '#f)))
                                                 (cons (_%import->export184235%_
                                                        _%in184238%_)
                                                       _%r184239%_)
                                                 _%r184239%_)))
                                          (_%K184245184273%_
                                           (lambda (_%imports184266%_
                                                    _%phi184267%_
                                                    _%ctx184268%_)
                                             (if (and (fx= _%phi184267%_
                                                           _%current-phi184234%_)
                                                      (eq? _%src184230%_
                                                           _%ctx184268%_))
                                                 (foldl__0
                                                  (lambda (_%in184270%_
                                                           _%r184271%_)
                                                    (cons (_%import->export184235%_
                                                           _%in184270%_)
                                                          _%r184271%_))
                                                  _%r184239%_
                                                  _%imports184266%_)
                                                 _%r184239%_))))
                                      (let ((_%try-match184242184291%_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _%in184240184254%_
                                                    'gx#import-set::t)
                                                   (let* ((_%e184246184276%_
                                                           (##unchecked-structure-ref
                                                            _%in184240184254%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                          (_%e184247184281%_
                                                           (##unchecked-structure-ref
                                                            _%in184240184254%_
                                                            '2
                                                            '#f
                                                            '#f))
                                                          (_%e184248184286%_
                                                           (##unchecked-structure-ref
                                                            _%in184240184254%_
                                                            '3
                                                            '#f
                                                            '#f)))
                                                     (let ((_%ctx184279%_
                                                            _%e184246184276%_)
                                                           (_%phi184284%_
                                                            _%e184247184281%_)
                                                           (_%imports184289%_
                                                            _%e184248184286%_))
                                                       (_%K184245184273%_
                                                        _%imports184289%_
                                                        _%phi184284%_
                                                        _%ctx184279%_)))
                                                   (_%else184243184262%_)))))
                                        (if (##structure-direct-instance-of?
                                             _%in184240184254%_
                                             'gx#module-import::t)
                                            (let* ((_%e184250184301%_
                                                    (##unchecked-structure-ref
                                                     _%in184240184254%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                   (_%e184251184306%_
                                                    (##unchecked-structure-ref
                                                     _%in184240184254%_
                                                     '2
                                                     '#f
                                                     '#f))
                                                   (_%e184252184311%_
                                                    (##unchecked-structure-ref
                                                     _%in184240184254%_
                                                     '3
                                                     '#f
                                                     '#f)))
                                              (let ((_%out184304%_
                                                     _%e184250184301%_)
                                                    (_%key184309%_
                                                     _%e184251184306%_)
                                                    (_%phi184314%_
                                                     _%e184252184311%_))
                                                (_%K184249184298%_
                                                 _%phi184314%_
                                                 _%key184309%_
                                                 _%out184304%_)))
                                            (_%try-match184242184291%_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _%src184230%_
                              _%current-phi184234%_
                              (foldl__0
                               _%fold-e184236%_
                               '()
                               (##unchecked-structure-ref
                                _%current-ctx184233%_
                                '8
                                '#f
                                '#f)))
                             _%r184231%_))))
                  (_%export!184201%_
                   (lambda (_%rbody184217%_)
                     (letrec* ((_%current-ctx184219%_
                                (gx#current-expander-context))
                               (_%fold-e184220%_
                                (lambda (_%out184224%_ _%r184225%_)
                                  (if (##structure-direct-instance-of?
                                       _%out184224%_
                                       'gx#module-export::t)
                                      (cons _%out184224%_ _%r184225%_)
                                      (if (##structure-direct-instance-of?
                                           _%out184224%_
                                           'gx#export-set::t)
                                          (foldl__0
                                           cons
                                           _%r184225%_
                                           (##unchecked-structure-ref
                                            _%out184224%_
                                            '3
                                            '#f
                                            '#f))
                                          _%r184225%_)))))
                       (let ((_%body184222%_ (reverse _%rbody184217%_)))
                         (##unchecked-structure-set!
                          _%current-ctx184219%_
                          (foldl__0
                           _%fold-e184220%_
                           (##unchecked-structure-ref
                            _%current-ctx184219%_
                            '9
                            '#f
                            '#f)
                           _%body184222%_)
                          '9
                          '#f
                          '#f)
                         _%body184222%_))))
                  (_%expanded-export?184202%_
                   (lambda (_%e184212%_)
                     (let ((_%$e184214%_
                            (##structure-direct-instance-of?
                             _%e184212%_
                             'gx#module-export::t)))
                       (if _%$e184214%_
                           _%$e184214%_
                           (##structure-direct-instance-of?
                            _%e184212%_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _%internal-expand?184196%_)
              (let ((_%rbody184208%_
                     (gx#core-expand-import/export
                      _%stx184195%_
                      _%expanded-export?184202%_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _%expand1184199%_)))
                (if _%internal-expand?184196%_
                    (reverse _%rbody184208%_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons
                      '%#export
                      (_%export!184201%_ _%rbody184208%_))
                     (gx#stx-source _%stx184195%_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _%stx184195%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _%stx184195%_))))))
    (define gx#core-expand-export%__0
      (lambda (_%stx184693%_)
        (let ((_%internal-expand?184695%_ '#f))
          (gx#core-expand-export%__%
           _%stx184693%_
           _%internal-expand?184695%_))))
    (define gx#core-expand-export%
      (lambda _g187876_
        (let ((_g187877_ (##length _g187876_)))
          (cond ((##fx= _g187877_ 1)
                 (apply gx#core-expand-export%__0 _g187876_))
                ((##fx= _g187877_ 2)
                 (apply gx#core-expand-export%__% _g187876_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g187876_))))))
    (define gx#core-expand-export-source
      (lambda (_%hd184192%_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _%hd184192%_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_%stx184162%_)
        (let* ((_%e184163184170%_ _%stx184162%_)
               (_%E184165184174%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e184163184170%_)))
               (_%E184164184188%_
                (lambda ()
                  (if (gx#stx-pair? _%e184163184170%_)
                      (let ((_%e184166184178%_
                             (gx#syntax-e _%e184163184170%_)))
                        (let ((_%hd184167184181%_ (##car _%e184166184178%_))
                              (_%tl184168184183%_ (##cdr _%e184166184178%_)))
                          (let ((_%body184186%_ _%tl184168184183%_))
                            (if (gx#identifier-list? _%body184186%_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _%body184186%_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _%body184186%_))
                                   (gx#stx-source _%stx184162%_)))
                                (_%E184165184174%_)))))
                      (_%E184165184174%_)))))
          (_%E184164184188%_))))
    (define gx#core-bind-feature!__%
      (lambda (_%id184128%_ _%private?184129%_ _%phi184130%_ _%ctx184131%_)
        (gx#core-bind-syntax!__%
         _%id184128%_
         ((if _%private?184129%_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _%id184128%_))
         _%private?184129%_
         _%phi184130%_
         _%ctx184131%_)))
    (define gx#core-bind-feature!__0
      (lambda (_%id184136%_)
        (let* ((_%private?184138%_ '#f)
               (_%phi184140%_ (gx#current-expander-phi))
               (_%ctx184142%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id184136%_
           _%private?184138%_
           _%phi184140%_
           _%ctx184142%_))))
    (define gx#core-bind-feature!__1
      (lambda (_%id184144%_ _%private?184145%_)
        (let* ((_%phi184147%_ (gx#current-expander-phi))
               (_%ctx184149%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id184144%_
           _%private?184145%_
           _%phi184147%_
           _%ctx184149%_))))
    (define gx#core-bind-feature!__2
      (lambda (_%id184151%_ _%private?184152%_ _%phi184153%_)
        (let ((_%ctx184155%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id184151%_
           _%private?184152%_
           _%phi184153%_
           _%ctx184155%_))))
    (define gx#core-bind-feature!
      (lambda _g187878_
        (let ((_g187879_ (##length _g187878_)))
          (cond ((##fx= _g187879_ 1)
                 (apply gx#core-bind-feature!__0 _g187878_))
                ((##fx= _g187879_ 2)
                 (apply gx#core-bind-feature!__1 _g187878_))
                ((##fx= _g187879_ 3)
                 (apply gx#core-bind-feature!__2 _g187878_))
                ((##fx= _g187879_ 4)
                 (apply gx#core-bind-feature!__% _g187878_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g187878_))))))))
