(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1768865823)
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
      (lambda _%$args140755%_
        (apply make-instance gx#module-import::t _%$args140755%_)))
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
      (lambda _%$args140752%_
        (apply make-instance gx#module-export::t _%$args140752%_)))
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
      (lambda _%$args140749%_
        (apply make-instance gx#import-set::t _%$args140749%_)))
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
      (lambda _%$args140746%_
        (apply make-instance gx#export-set::t _%$args140746%_)))
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
      (lambda _%$args140743%_
        (apply make-instance gx#import-expander::t _%$args140743%_)))
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
      (lambda _%$args140740%_
        (apply make-instance gx#export-expander::t _%$args140740%_)))
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
      (lambda _%$args140737%_
        (apply make-instance gx#import-export-expander::t _%$args140737%_)))
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
      (lambda (_%path140734%_ _%fun140735%_)
        (call-with-input-file
         (cons 'path: (cons _%path140734%_ gx#source-file-settings))
         _%fun140735%_)))
    (define gx#module-context:::init!
      (lambda (_%self140717%_
               _%id140718%_
               _%super140719%_
               _%ns140720%_
               _%path140721%_)
        (let ((_%self140724%_ _%self140717%_))
          (if (##fx< '11 (##structure-length _%self140724%_))
              (begin
                (##unchecked-structure-set!
                 _%self140724%_
                 _%id140718%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self140724%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self140724%_
                 _%super140719%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self140724%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self140724%_ '#f '5 '#f '#f)
                (##unchecked-structure-set!
                 _%self140724%_
                 _%ns140720%_
                 '6
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self140724%_
                 _%path140721%_
                 '7
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self140724%_ '() '8 '#f '#f)
                (##unchecked-structure-set! _%self140724%_ '() '9 '#f '#f)
                (##unchecked-structure-set! _%self140724%_ '#f '10 '#f '#f)
                (##unchecked-structure-set! _%self140724%_ '#f '11 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self140724%_
                     '11
                     (##structure-length _%self140724%_))))))
    (__bind-method!__%
     gx#module-context::t
     ':init!
     gx#module-context:::init!
     '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_%self140550%_ _%ctx140551%_ _%root140552%_)
        (let* ((_%self140555%_ _%self140550%_)
               (_%super140571%_
                (let ((_%$e140565%_ _%root140552%_))
                  (if _%$e140565%_
                      _%$e140565%_
                      (let ((_%$e140568%_ (gx#core-context-root__0)))
                        (if _%$e140568%_
                            _%$e140568%_
                            (let ((__obj140799
                                   (##structure gx#root-context::t '#f '#f)))
                              (let ((__constructor140800
                                     (direct-method-ref
                                      gx#root-context::t
                                      __obj140799
                                      ':init!)))
                                (if __constructor140800
                                    (__constructor140800 __obj140799)
                                    (error '"missing constructor method implementation"
                                           'class:
                                           gx#root-context::t
                                           'method:
                                           ':init!)))
                              __obj140799)))))))
          (if _%ctx140551%_
              (let ((_%id140574%_
                     (##structure-ref
                      _%ctx140551%_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_%path140575%_
                     (##structure-ref
                      _%ctx140551%_
                      '7
                      gx#module-context::t
                      '#f))
                    (_%in140576%_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _%ctx140551%_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_%e140577%_
                     (__make-atomic-promise
                      (lambda () (gx#eval-module _%ctx140551%_)))))
                (if (##fx< '8 (##structure-length _%self140555%_))
                    (begin
                      (##unchecked-structure-set!
                       _%self140555%_
                       _%id140574%_
                       '1
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self140555%_
                       (make-hash-table-eq 'size: (##length _%in140576%_))
                       '2
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self140555%_
                       _%super140571%_
                       '3
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self140555%_
                       '#f
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self140555%_
                       '#f
                       '5
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self140555%_
                       _%path140575%_
                       '6
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self140555%_
                       _%in140576%_
                       '7
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self140555%_
                       _%e140577%_
                       '8
                       '#f
                       '#f)
                      '#!void)
                    (error '"struct-instance-init!: too many arguments for struct"
                           _%self140555%_
                           '8
                           (##structure-length _%self140555%_)))
                (##for-each
                 (lambda (_%g140578140580%_)
                   (gx#core-bind-weak-import!__%
                    _%g140578140580%_
                    _%self140555%_))
                 _%in140576%_))
              (if (##fx< '8 (##structure-length _%self140555%_))
                  (begin
                    (##unchecked-structure-set! _%self140555%_ '#f '1 '#f '#f)
                    (##unchecked-structure-set!
                     _%self140555%_
                     (make-hash-table-eq)
                     '2
                     '#f
                     '#f)
                    (##unchecked-structure-set!
                     _%self140555%_
                     _%super140571%_
                     '3
                     '#f
                     '#f)
                    (##unchecked-structure-set! _%self140555%_ '#f '4 '#f '#f)
                    (##unchecked-structure-set! _%self140555%_ '#f '5 '#f '#f)
                    (##unchecked-structure-set! _%self140555%_ '#f '6 '#f '#f)
                    (##unchecked-structure-set! _%self140555%_ '() '7 '#f '#f)
                    (##unchecked-structure-set! _%self140555%_ '#f '8 '#f '#f)
                    '#!void)
                  (error '"struct-instance-init!: too many arguments for struct"
                         _%self140555%_
                         '8
                         (##structure-length _%self140555%_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_%self140586%_ _%ctx140587%_)
        (let ((_%root140589%_ '#f))
          (gx#prelude-context:::init!__%
           _%self140586%_
           _%ctx140587%_
           _%root140589%_))))
    (define gx#prelude-context:::init!
      (lambda _g140805_
        (let ((_g140806_ (##length _g140805_)))
          (cond ((##fx= _g140806_ 2)
                 (apply gx#prelude-context:::init!__0 _g140805_))
                ((##fx= _g140806_ 3)
                 (apply gx#prelude-context:::init!__% _g140805_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g140805_))))))
    (__bind-method!__%
     gx#prelude-context::t
     ':init!
     gx#prelude-context:::init!
     '#f)
    (define gx#import-export-expander-init!
      (lambda (_%self140424%_ _%e140425%_)
        (if (##fx< '3 (##structure-length _%self140424%_))
            (begin
              (##unchecked-structure-set!
               _%self140424%_
               _%e140425%_
               '1
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self140424%_
               (gx#current-expander-context)
               '2
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self140424%_
               (##fx- (gx#current-expander-phi) '1)
               '3
               '#f
               '#f)
              '#!void)
            (error '"struct-instance-init!: too many arguments for struct"
                   _%self140424%_
                   '3
                   (##structure-length _%self140424%_)))))
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
      (lambda (_%g140050140053%_ _%g140051140055%_)
        (gx#core-apply-user-expander__%
         _%g140050140053%_
         _%g140051140055%_
         'apply-import-expander)))
    (__bind-method!__%
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_%g139921139924%_ _%g139922139926%_)
        (gx#core-apply-user-expander__%
         _%g139921139924%_
         _%g139922139926%_
         'apply-export-expander)))
    (__bind-method!__%
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_%ctx139792%_)
        (let* ((_%path139794%_
                (##structure-ref _%ctx139792%_ '7 gx#module-context::t '#f))
               (_%path139796%_
                (if (pair? _%path139794%_)
                    (##last _%path139794%_)
                    _%path139794%_)))
          (if (string? _%path139796%_) _%path139796%_ '#f))))
    (define gx#import-module__%
      (lambda (_%path139768%_ _%reload?139769%_ _%eval?139770%_)
        (let ((_%ctx139772%_
               ((gx#current-expander-module-import)
                _%path139768%_
                _%reload?139769%_)))
          (if (and _%ctx139772%_ _%eval?139770%_)
              (gx#eval-module _%ctx139772%_)
              '#!void)
          _%ctx139772%_)))
    (define gx#import-module__0
      (lambda (_%path139777%_)
        (let* ((_%reload?139779%_ '#f) (_%eval?139781%_ '#f))
          (gx#import-module__%
           _%path139777%_
           _%reload?139779%_
           _%eval?139781%_))))
    (define gx#import-module__1
      (lambda (_%path139783%_ _%reload?139784%_)
        (let ((_%eval?139786%_ '#f))
          (gx#import-module__%
           _%path139783%_
           _%reload?139784%_
           _%eval?139786%_))))
    (define gx#import-module
      (lambda _g140807_
        (let ((_g140808_ (##length _g140807_)))
          (cond ((##fx= _g140808_ 1) (apply gx#import-module__0 _g140807_))
                ((##fx= _g140808_ 2) (apply gx#import-module__1 _g140807_))
                ((##fx= _g140808_ 3) (apply gx#import-module__% _g140807_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g140807_))))))
    (define gx#eval-module
      (lambda (_%mod139765%_)
        ((gx#current-expander-module-eval) _%mod139765%_)))
    (define gx#core-eval-module
      (lambda (_%obj139744%_)
        (letrec ((_%force-e139746%_
                  (lambda (_%getf139760%_ _%e139761%_)
                    (call-with-parameters__1
                     (lambda ()
                       (call-with-parameters__1
                        (lambda () (force (_%getf139760%_ _%e139761%_)))
                        gx#current-expander-phi
                        '0))
                     gx#current-expander-context
                     _%e139761%_))))
          (let _%recur139748%_ ((_%e139750%_ _%obj139744%_))
            (if (##structure-instance-of? _%e139750%_ 'gx#module-context::t)
                (let ()
                  (let ((_%$e139753%_
                         (gx#core-context-prelude__% _%e139750%_)))
                    (if _%$e139753%_ (_%recur139748%_ _%$e139753%_) '#!void))
                  (_%force-e139746%_ gx#module-context-e _%e139750%_))
                (if (##structure-instance-of?
                     _%e139750%_
                     'gx#prelude-context::t)
                    (_%force-e139746%_ gx#prelude-context-e _%e139750%_)
                    (if (gx#stx-string? _%e139750%_)
                        (_%recur139748%_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _%e139750%_)))
                        (if (gx#core-library-module-path? _%e139750%_)
                            (_%recur139748%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%e139750%_)))
                            (error '"cannot eval module" _%obj139744%_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_%ctx139724%_)
        (let _%lp139726%_ ((_%e139728%_ _%ctx139724%_))
          (if (or (##structure-instance-of? _%e139728%_ 'gx#module-context::t)
                  (##structure-instance-of? _%e139728%_ 'gx#local-context::t))
              (_%lp139726%_ (##unchecked-structure-ref _%e139728%_ '3 '#f '#f))
              (if (##structure-instance-of? _%e139728%_ 'gx#prelude-context::t)
                  _%e139728%_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_%ctx139740%_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _%ctx139740%_))))
    (define gx#core-context-prelude
      (lambda _g140809_
        (let ((_g140810_ (##length _g140809_)))
          (cond ((##fx= _g140810_ 0)
                 (apply gx#core-context-prelude__0 _g140809_))
                ((##fx= _g140810_ 1)
                 (apply gx#core-context-prelude__% _g140809_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g140809_))))))
    (define gx#core-module->prelude-context
      (lambda (_%ctx139715%_)
        (let ((_%$e139717%_ (__hash-get gx#__module-registry _%ctx139715%_)))
          (if _%$e139717%_
              _%$e139717%_
              (let ((_%pre139721%_
                     (let ((__obj140801
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
                        __obj140801
                        _%ctx139715%_)
                       __obj140801)))
                (__hash-put! gx#__module-registry _%ctx139715%_ _%pre139721%_)
                _%pre139721%_)))))
    (define gx#core-import-module__%
      (lambda (_%rpath139582%_ _%reload?139583%_)
        (letrec ((_%import-source139585%_
                  (lambda (_%path139674%_)
                    (if (member _%path139674%_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _%path139674%_)
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
                                      (let ((_g140811_
                                             (gx#core-read-module
                                              _%path139674%_)))
                                        (begin
                                          (let ((_g140812_
                                                 (if (##values? _g140811_)
                                                     (##values-length
                                                      _g140811_)
                                                     1)))
                                            (if (not (##fx= _g140812_ 4))
                                                (error "Context expects 4 values"
                                                       _g140812_)))
                                          (let ((_%pre139682%_
                                                 (##values-ref _g140811_ 0))
                                                (_%id139683%_
                                                 (##values-ref _g140811_ 1))
                                                (_%ns139684%_
                                                 (##values-ref _g140811_ 2))
                                                (_%body139685%_
                                                 (##values-ref _g140811_ 3)))
                                            (let* ((_%prelude139695%_
                                                    (if (##structure-instance-of?
                                                         _%pre139682%_
                                                         'gx#prelude-context::t)
                                                        _%pre139682%_
                                                        (if (##structure-instance-of?
                                                             _%pre139682%_
                                                             'gx#module-context::t)
                                                            (gx#core-module->prelude-context
                                                             _%pre139682%_)
                                                            (if (string? _%pre139682%_)
                                                                (gx#core-module->prelude-context
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#core-import-module__0 _%pre139682%_))
                        (if (not _%pre139682%_)
                            (let ((_%$e139691%_
                                   (gx#current-expander-module-prelude)))
                              (if _%$e139691%_
                                  _%$e139691%_
                                  (let ((__obj140802
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
                                     __obj140802
                                     '#f)
                                    __obj140802)))
                            (error '"cannot import module; unknown prelude"
                                   _%rpath139582%_
                                   _%pre139682%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%ctx139697%_
                                                    (let ((__obj140803
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
                                                       __obj140803
                                                       _%id139683%_
                                                       _%prelude139695%_
                                                       _%ns139684%_
                                                       _%path139674%_)
                                                      __obj140803))
                                                   (_%body139699%_
                                                    (gx#core-expand-module-begin
                                                     _%body139685%_
                                                     _%ctx139697%_))
                                                   (_%body139701%_
                                                    (gx#core-quote-syntax__%
                                                     (gx#core-cons
                                                      '%#begin
                                                      _%body139699%_)
                                                     _%path139674%_
                                                     _%ctx139697%_
                                                     '())))
                                              (##unchecked-structure-set!
                                               _%ctx139697%_
                                               (__make-atomic-promise
                                                (lambda ()
                                                  (gx#eval-syntax*
                                                   _%body139701%_)))
                                               '10
                                               '#f
                                               '#f)
                                              (##unchecked-structure-set!
                                               _%ctx139697%_
                                               _%body139701%_
                                               '11
                                               '#f
                                               '#f)
                                              (__hash-put!
                                               gx#__module-registry
                                               _%path139674%_
                                               _%ctx139697%_)
                                              (__hash-put!
                                               gx#__module-registry
                                               _%id139683%_
                                               _%ctx139697%_)
                                              _%ctx139697%_)))))
                                    gx#current-export-expander-phi
                                    '#f))
                                 gx#current-import-expander-phi
                                 '#f))
                              gx#current-expander-path
                              (cons _%path139674%_
                                    (gx#current-expander-path))))
                           gx#current-expander-phi
                           '0))
                        gx#current-expander-marks
                        '()))
                     gx#current-expander-context
                     (gx#core-context-root__0))))
                 (_%import-submodule139586%_
                  (lambda (_%rpath139602%_)
                    (let* ((_%rpath139603139610%_ _%rpath139602%_)
                           (_%E139605139614%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%rpath139603139610%_
                                     '([origin . refs]))
                              '#!void))
                           (_%K139606139662%_
                            (lambda (_%refs139617%_ _%origin139618%_)
                              (let ((_%ctx139620%_
                                     (if _%origin139618%_
                                         (gx#core-import-module__%
                                          _%origin139618%_
                                          _%reload?139583%_)
                                         (gx#current-expander-context))))
                                (let _%lp139622%_ ((_%rest139624%_
                                                    _%refs139617%_)
                                                   (_%ctx139625%_
                                                    _%ctx139620%_))
                                  (let* ((_%rest139626139634%_ _%rest139624%_)
                                         (_%else139628139642%_
                                          (lambda () _%ctx139625%_))
                                         (_%K139630139650%_
                                          (lambda (_%rest139645%_ _%id139646%_)
                                            (let ((_%bind139648%_
                                                   (gx#resolve-identifier__%
                                                    _%id139646%_
                                                    '0
                                                    _%ctx139625%_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _%bind139648%_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _%bind139648%_
                                                         '4
                                                         '#f
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_%lp139622%_
                                                   _%rest139645%_
                                                   (##unchecked-structure-ref
                                                    _%bind139648%_
                                                    '4
                                                    '#f
                                                    '#f))
                                                  (error '"cannot import submodule; not bound as a module"
                                                         _%rpath139602%_
                                                         _%id139646%_
                                                         _%bind139648%_))))))
                                    (if (pair? _%rest139626139634%_)
                                        (let ((_%hd139631139653%_
                                               (##car _%rest139626139634%_))
                                              (_%tl139632139655%_
                                               (##cdr _%rest139626139634%_)))
                                          (let* ((_%id139658%_
                                                  _%hd139631139653%_)
                                                 (_%rest139660%_
                                                  _%tl139632139655%_))
                                            (_%K139630139650%_
                                             _%rest139660%_
                                             _%id139658%_)))
                                        (_%else139628139642%_))))))))
                      (if (pair? _%rpath139603139610%_)
                          (let ((_%hd139607139665%_
                                 (##car _%rpath139603139610%_))
                                (_%tl139608139667%_
                                 (##cdr _%rpath139603139610%_)))
                            (let* ((_%origin139670%_ _%hd139607139665%_)
                                   (_%refs139672%_ _%tl139608139667%_))
                              (_%K139606139662%_
                               _%refs139672%_
                               _%origin139670%_)))
                          (_%E139605139614%_))))))
          (let ((_%$e139588%_
                 (if (not _%reload?139583%_)
                     (__hash-get gx#__module-registry _%rpath139582%_)
                     '#f)))
            (if _%$e139588%_
                _%$e139588%_
                (if (list? _%rpath139582%_)
                    (_%import-submodule139586%_ _%rpath139582%_)
                    (if (gx#core-library-module-path? _%rpath139582%_)
                        (let ((_%ctx139593%_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _%rpath139582%_)
                                _%reload?139583%_)))
                          (__hash-put!
                           gx#__module-registry
                           _%rpath139582%_
                           _%ctx139593%_)
                          _%ctx139593%_)
                        (let* ((_%npath139596%_
                                (path-normalize _%rpath139582%_))
                               (_%$e139598%_
                                (if (not _%reload?139583%_)
                                    (__hash-get
                                     gx#__module-registry
                                     _%npath139596%_)
                                    '#f)))
                          (if _%$e139598%_
                              _%$e139598%_
                              (_%import-source139585%_
                               _%npath139596%_))))))))))
    (define gx#core-import-module__0
      (lambda (_%rpath139708%_)
        (let ((_%reload?139710%_ '#f))
          (gx#core-import-module__% _%rpath139708%_ _%reload?139710%_))))
    (define gx#core-import-module
      (lambda _g140813_
        (let ((_g140814_ (##length _g140813_)))
          (cond ((##fx= _g140814_ 1)
                 (apply gx#core-import-module__0 _g140813_))
                ((##fx= _g140814_ 2)
                 (apply gx#core-import-module__% _g140813_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g140813_))))))
    (define gx#core-read-module
      (lambda (_%path139571%_)
        (__with-catch
         (lambda (_%exn139573%_)
           (if (and (datum-parsing-exception? _%exn139573%_)
                    (eq? (datum-parsing-exception-filepos _%exn139573%_) '0))
               (gx#core-read-module/lang _%path139571%_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _%path139571%_
                (call-with-parameters__1
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_%g139575139577%_)
                      (display-exception__% _%exn139573%_ _%g139575139577%_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _%path139571%_)))))
    (define gx#core-read-module/sexp
      (lambda (_%path139423%_)
        (let _%lp139425%_ ((_%body139427%_
                            (read-syntax-from-file _%path139423%_))
                           (_%pre139428%_ '#f)
                           (_%ns139429%_ '#f)
                           (_%pkg139430%_ '#f))
          (let* ((_%e139431139455%_ _%body139427%_)
                 (_%E139447139481%_
                  (lambda ()
                    (let ((_g140815_
                           (if _%pkg139430%_
                               (values _%pre139428%_
                                       _%ns139429%_
                                       _%pkg139430%_)
                               (gx#core-read-module-package
                                _%path139423%_
                                _%pre139428%_
                                _%ns139429%_))))
                      (begin
                        (let ((_g140816_
                               (if (##values? _g140815_)
                                   (##values-length _g140815_)
                                   1)))
                          (if (not (##fx= _g140816_ 3))
                              (error "Context expects 3 values" _g140816_)))
                        (let ((_%pre139459%_ (##values-ref _g140815_ 0))
                              (_%ns139460%_ (##values-ref _g140815_ 1))
                              (_%pkg139461%_ (##values-ref _g140815_ 2)))
                          (let* ((_%prelude139467%_
                                  (if (gx#core-bound-module-prelude?
                                       _%pre139459%_)
                                      (gx#syntax-local-e__0 _%pre139459%_)
                                      (if (gx#core-library-module-path?
                                           _%pre139459%_)
                                          (gx#core-resolve-library-module-path
                                           _%pre139459%_)
                                          (if (gx#stx-string? _%pre139459%_)
                                              (gx#core-resolve-module-path__%
                                               _%pre139459%_
                                               _%path139423%_)
                                              (gx#stx-e _%pre139459%_)))))
                                 (_%path-id139469%_
                                  (gx#core-module-path->namespace
                                   _%path139423%_))
                                 (_%pkg-id139471%_
                                  (if _%pkg139461%_
                                      (##string-append
                                       _%pkg139461%_
                                       '"/"
                                       _%path-id139469%_)
                                      _%path-id139469%_))
                                 (_%module-id139473%_
                                  (##string->symbol _%pkg-id139471%_))
                                 (_%module-ns139478%_
                                  (if (eq? _%ns139460%_ '#!void)
                                      '#f
                                      (let ((_%$e139475%_ _%ns139460%_))
                                        (if _%$e139475%_
                                            _%$e139475%_
                                            _%pkg-id139471%_)))))
                            (values _%prelude139467%_
                                    _%module-id139473%_
                                    _%module-ns139478%_
                                    _%body139427%_)))))))
                 (_%E139440139513%_
                  (lambda ()
                    (if (gx#stx-pair? _%e139431139455%_)
                        (let ((_%e139448139485%_
                               (gx#syntax-e _%e139431139455%_)))
                          (let ((_%hd139449139488%_ (##car _%e139448139485%_))
                                (_%tl139450139490%_ (##cdr _%e139448139485%_)))
                            (if (eq? (gx#stx-e _%hd139449139488%_) 'package:)
                                (if (gx#stx-pair? _%tl139450139490%_)
                                    (let ((_%e139451139493%_
                                           (gx#syntax-e _%tl139450139490%_)))
                                      (let ((_%hd139452139496%_
                                             (##car _%e139451139493%_))
                                            (_%tl139453139498%_
                                             (##cdr _%e139451139493%_)))
                                        (let* ((_%pkg139501%_
                                                _%hd139452139496%_)
                                               (_%rest139503%_
                                                _%tl139453139498%_)
                                               (_%pkg139511%_
                                                (if (gx#identifier?
                                                     _%pkg139501%_)
                                                    (symbol->string
                                                     (gx#stx-e _%pkg139501%_))
                                                    (if (or (gx#stx-string?
                                                             _%pkg139501%_)
                                                            (gx#stx-false?
                                                             _%pkg139501%_))
                                                        (gx#stx-e
                                                         _%pkg139501%_)
                                                        (gx#raise-syntax-error
                                                         'import
                                                         '"Bad syntax; Illegal package name"
                                                         _%pkg139501%_)))))
                                          (_%lp139425%_
                                           _%rest139503%_
                                           _%pre139428%_
                                           _%ns139429%_
                                           _%pkg139511%_))))
                                    (_%E139447139481%_))
                                (_%E139447139481%_))))
                        (_%E139447139481%_))))
                 (_%E139433139543%_
                  (lambda ()
                    (if (gx#stx-pair? _%e139431139455%_)
                        (let ((_%e139441139517%_
                               (gx#syntax-e _%e139431139455%_)))
                          (let ((_%hd139442139520%_ (##car _%e139441139517%_))
                                (_%tl139443139522%_ (##cdr _%e139441139517%_)))
                            (if (eq? (gx#stx-e _%hd139442139520%_) 'namespace:)
                                (if (gx#stx-pair? _%tl139443139522%_)
                                    (let ((_%e139444139525%_
                                           (gx#syntax-e _%tl139443139522%_)))
                                      (let ((_%hd139445139528%_
                                             (##car _%e139444139525%_))
                                            (_%tl139446139530%_
                                             (##cdr _%e139444139525%_)))
                                        (let* ((_%ns139533%_
                                                _%hd139445139528%_)
                                               (_%rest139535%_
                                                _%tl139446139530%_)
                                               (_%ns139541%_
                                                (if (gx#identifier?
                                                     _%ns139533%_)
                                                    (symbol->string
                                                     (gx#stx-e _%ns139533%_))
                                                    (if (gx#stx-string?
                                                         _%ns139533%_)
                                                        (gx#stx-e _%ns139533%_)
                                                        (if (gx#stx-false?
                                                             _%ns139533%_)
                                                            '#!void
                                                            (gx#raise-syntax-error
                                                             'import
                                                             '"Bad syntax; illegal namespace"
                                                             _%ns139533%_))))))
                                          (_%lp139425%_
                                           _%rest139535%_
                                           _%pre139428%_
                                           _%ns139541%_
                                           _%pkg139430%_))))
                                    (_%E139440139513%_))
                                (_%E139440139513%_))))
                        (_%E139440139513%_))))
                 (_%E139432139567%_
                  (lambda ()
                    (if (gx#stx-pair? _%e139431139455%_)
                        (let ((_%e139434139547%_
                               (gx#syntax-e _%e139431139455%_)))
                          (let ((_%hd139435139550%_ (##car _%e139434139547%_))
                                (_%tl139436139552%_ (##cdr _%e139434139547%_)))
                            (if (eq? (gx#stx-e _%hd139435139550%_) 'prelude:)
                                (if (gx#stx-pair? _%tl139436139552%_)
                                    (let ((_%e139437139555%_
                                           (gx#syntax-e _%tl139436139552%_)))
                                      (let ((_%hd139438139558%_
                                             (##car _%e139437139555%_))
                                            (_%tl139439139560%_
                                             (##cdr _%e139437139555%_)))
                                        (let* ((_%prelude139563%_
                                                _%hd139438139558%_)
                                               (_%rest139565%_
                                                _%tl139439139560%_))
                                          (_%lp139425%_
                                           _%rest139565%_
                                           _%prelude139563%_
                                           _%ns139429%_
                                           _%pkg139430%_))))
                                    (_%E139433139543%_))
                                (_%E139433139543%_))))
                        (_%E139433139543%_)))))
            (_%E139432139567%_)))))
    (define gx#core-read-module/lang
      (lambda (_%path139244%_)
        (letrec ((_%default-read-module-body139246%_
                  (lambda (_%inp139415%_)
                    (let _%lp139417%_ ((_%body139419%_ '()))
                      (let ((_%next139421%_ (read-syntax__% _%inp139415%_)))
                        (if (eof-object? _%next139421%_)
                            (reverse _%body139419%_)
                            (_%lp139417%_
                             (cons _%next139421%_ _%body139419%_)))))))
                 (_%read-body139247%_
                  (lambda (_%inp139332%_
                           _%pre139333%_
                           _%ns139334%_
                           _%pkg139335%_
                           _%args139336%_)
                    (let ((_g140817_
                           (if _%pkg139335%_
                               (values _%pre139333%_
                                       _%ns139334%_
                                       _%pkg139335%_)
                               (gx#core-read-module-package
                                _%path139244%_
                                _%pre139333%_
                                _%ns139334%_))))
                      (begin
                        (let ((_g140818_
                               (if (##values? _g140817_)
                                   (##values-length _g140817_)
                                   1)))
                          (if (not (##fx= _g140818_ 3))
                              (error "Context expects 3 values" _g140818_)))
                        (let ((_%pre139338%_ (##values-ref _g140817_ 0))
                              (_%ns139339%_ (##values-ref _g140817_ 1))
                              (_%pkg139340%_ (##values-ref _g140817_ 2)))
                          (let* ((_%prelude139342%_
                                  (gx#import-module__0 _%pre139338%_))
                                 (_%read-module-body139397%_
                                  (let ((_%$e139388%_
                                         (__find (lambda (_%e139343139345%_)
                                                   (let* ((_%g139347139357%_
                                                           _%e139343139345%_)
                                                          (_%else139349139365%_
                                                           (lambda () '#f))
                                                          (_%K139351139369%_
                                                           (lambda () '#t)))
                                                     (if (##structure-direct-instance-of?
                                                          _%g139347139357%_
                                                          'gx#module-export::t)
                                                         (let* ((_%e139352139372%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##unchecked-structure-ref
                          _%g139347139357%_
                          '1
                          '#f
                          '#f))
                        (_%e139353139375%_
                         (##unchecked-structure-ref
                          _%g139347139357%_
                          '2
                          '#f
                          '#f))
                        (_%e139354139378%_
                         (##unchecked-structure-ref
                          _%g139347139357%_
                          '3
                          '#f
                          '#f)))
                   (if (##eq? _%e139354139378%_ '1)
                       (let ((_%e139355139381%_
                              (##unchecked-structure-ref
                               _%g139347139357%_
                               '4
                               '#f
                               '#f)))
                         (if ((lambda (_%g139383139385%_)
                                (eq? _%g139383139385%_ 'read-module-body))
                              _%e139355139381%_)
                             (_%K139351139369%_)
                             (_%else139349139365%_)))
                       (_%else139349139365%_)))
                 (_%else139349139365%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (##unchecked-structure-ref
                                                  _%prelude139342%_
                                                  '9
                                                  '#f
                                                  '#f))))
                                    (if _%$e139388%_
                                        ((lambda (_%xport139391%_)
                                           (let ((_%proc139394%_
                                                  (__with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _%xport139391%_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _%proc139394%_)
                                                 _%proc139394%_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _%path139244%_
                                                  _%pre139338%_
                                                  _%proc139394%_))))
                                         _%$e139388%_)
                                        _%default-read-module-body139246%_)))
                                 (_%path-id139399%_
                                  (gx#core-module-path->namespace
                                   _%path139244%_))
                                 (_%pkg-id139401%_
                                  (if _%pkg139340%_
                                      (##string-append
                                       _%pkg139340%_
                                       '"/"
                                       _%path-id139399%_)
                                      _%path-id139399%_))
                                 (_%module-id139403%_
                                  (##string->symbol _%pkg-id139401%_))
                                 (_%module-ns139408%_
                                  (let ((_%$e139405%_ _%ns139339%_))
                                    (if _%$e139405%_
                                        _%$e139405%_
                                        _%pkg-id139401%_)))
                                 (_%body139412%_
                                  (call-with-parameters__1
                                   (lambda ()
                                     (call-with-parameters__1
                                      (lambda ()
                                        (_%read-module-body139397%_
                                         _%inp139332%_))
                                      gx#current-module-reader-args
                                      _%args139336%_))
                                   gx#current-module-reader-path
                                   _%path139244%_)))
                            (values _%prelude139342%_
                                    _%module-id139403%_
                                    _%module-ns139408%_
                                    _%body139412%_)))))))
                 (_%string-e139248%_
                  (lambda (_%obj139326%_ _%what139327%_)
                    (if (string? _%obj139326%_)
                        _%obj139326%_
                        (if (symbol? _%obj139326%_)
                            (##symbol->string _%obj139326%_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _%what139327%_)
                             _%path139244%_
                             _%obj139326%_)))))
                 (_%read-lang-args139249%_
                  (lambda (_%inp139281%_ _%args139282%_)
                    (let* ((_%args139283139291%_ _%args139282%_)
                           (_%else139285139299%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _%path139244%_)))
                           (_%K139287139314%_
                            (lambda (_%args139302%_ _%prelude139303%_)
                              (let* ((_%pkg139305%_
                                      (pgetq__0 'package: _%args139302%_))
                                     (_%pkg139307%_
                                      (if _%pkg139305%_
                                          (_%string-e139248%_
                                           _%pkg139305%_
                                           '"package")
                                          '#f))
                                     (_%ns139309%_
                                      (pgetq__0 'namespace: _%args139302%_))
                                     (_%ns139311%_
                                      (if _%ns139309%_
                                          (_%string-e139248%_
                                           _%ns139309%_
                                           '"namespace")
                                          '#f)))
                                (_%read-body139247%_
                                 _%inp139281%_
                                 _%prelude139303%_
                                 _%ns139311%_
                                 _%pkg139307%_
                                 _%args139302%_)))))
                      (if (pair? _%args139283139291%_)
                          (let ((_%hd139288139317%_
                                 (##car _%args139283139291%_))
                                (_%tl139289139319%_
                                 (##cdr _%args139283139291%_)))
                            (let* ((_%prelude139322%_ _%hd139288139317%_)
                                   (_%args139324%_ _%tl139289139319%_))
                              (_%K139287139314%_
                               _%args139324%_
                               _%prelude139322%_)))
                          (_%else139285139299%_)))))
                 (_%read-lang139250%_
                  (lambda (_%inp139255%_)
                    (let* ((_%head139257%_ (read-line _%inp139255%_))
                           (_%$e139259%_
                            (string-index__0 _%head139257%_ '#\space)))
                      (if _%$e139259%_
                          ((lambda (_%ix139262%_)
                             (let ((_%lang139264%_
                                    (substring
                                     _%head139257%_
                                     '0
                                     _%ix139262%_)))
                               (if (equal? _%lang139264%_ '"#lang")
                                   (let* ((_%rest139266%_
                                           (substring
                                            _%head139257%_
                                            (##fx+ _%ix139262%_ '1)
                                            (string-length _%head139257%_)))
                                          (_%args139277%_
                                           (__with-catch
                                            (lambda (_%g139267139269%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _%path139244%_
                                               _%g139267139269%_))
                                            (lambda ()
                                              (call-with-input-string
                                               _%rest139266%_
                                               (lambda (_%g139272139274%_)
                                                 (read-all
                                                  _%g139272139274%_
                                                  read)))))))
                                     (_%read-lang-args139249%_
                                      _%inp139255%_
                                      _%args139277%_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _%path139244%_))))
                           _%$e139259%_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _%path139244%_)))))
                 (_%read-e139251%_
                  (lambda (_%inp139253%_)
                    (if (eq? (peek-char _%inp139253%_) '#\#)
                        (_%read-lang139250%_ _%inp139253%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _%path139244%_)))))
          (gx#call-with-input-source-file _%path139244%_ _%read-e139251%_))))
    (define gx#core-read-module-package
      (lambda (_%path139192%_ _%pre139193%_ _%ns139194%_)
        (letrec ((_%string-e139196%_
                  (lambda (_%e139239%_)
                    (if (symbol? _%e139239%_)
                        (##symbol->string _%e139239%_)
                        (if (string? _%e139239%_)
                            _%e139239%_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%e139239%_))))))
          (let _%lp139198%_ ((_%dir139200%_ (path-directory _%path139192%_))
                             (_%pkg-path139201%_ '()))
            (let ((_%gerbil.pkg139203%_
                   (path-expand '"gerbil.pkg" _%dir139200%_)))
              (if (##file-exists? _%gerbil.pkg139203%_)
                  (let ((_%plist139205%_
                         (gx#core-library-package-plist__% _%dir139200%_ '#t)))
                    (if (null? _%plist139205%_)
                        (let ((_%pkg139208%_
                               (if (null? _%pkg-path139201%_)
                                   '#f
                                   (string-join _%pkg-path139201%_ '"/"))))
                          (values _%pre139193%_ _%ns139194%_ _%pkg139208%_))
                        (if (list? _%plist139205%_)
                            (let* ((_%root139211%_
                                    (pgetq__0 'package: _%plist139205%_))
                                   (_%pkg139215%_
                                    (let ((_%pkg-path139213%_
                                           (if _%root139211%_
                                               (cons (_%string-e139196%_
                                                      _%root139211%_)
                                                     _%pkg-path139201%_)
                                               _%pkg-path139201%_)))
                                      (if (null? _%pkg-path139213%_)
                                          '#f
                                          (string-join
                                           _%pkg-path139213%_
                                           '"/"))))
                                   (_%ns139222%_
                                    (let ((_%ns139220%_
                                           (let ((_%$e139217%_ _%ns139194%_))
                                             (if _%$e139217%_
                                                 _%$e139217%_
                                                 (pgetq__0
                                                  'namespace:
                                                  _%plist139205%_)))))
                                      (if _%ns139220%_
                                          (_%string-e139196%_ _%ns139220%_)
                                          '#f)))
                                   (_%pre139227%_
                                    (let ((_%$e139224%_ _%pre139193%_))
                                      (if _%$e139224%_
                                          _%$e139224%_
                                          (pgetq__0
                                           'prelude:
                                           _%plist139205%_)))))
                              (values _%pre139227%_
                                      _%ns139222%_
                                      _%pkg139215%_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%plist139205%_))))
                  (let ((_%dir*139231%_
                         (path-strip-trailing-directory-separator
                          _%dir139200%_)))
                    (if (or (__string-empty? _%dir*139231%_)
                            (equal? _%dir139200%_ _%dir*139231%_))
                        (values _%pre139193%_ _%ns139194%_ '#f)
                        (let ((_%xpath139236%_
                               (path-strip-directory _%dir*139231%_))
                              (_%xdir139237%_ (path-directory _%dir*139231%_)))
                          (_%lp139198%_
                           _%xdir139237%_
                           (cons _%xpath139236%_ _%pkg-path139201%_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_%path139190%_)
        (path-strip-extension (path-strip-directory _%path139190%_))))
    (define gx#core-module-path->id
      (lambda (_%path139188%_)
        (##string->symbol (gx#core-module-path->namespace _%path139188%_))))
    (define gx#core-resolve-module-path__%
      (lambda (_%stx-path139167%_ _%rel139168%_)
        (let* ((_%path139170%_ (gx#stx-e _%stx-path139167%_))
               (_%path139172%_
                (if (__string-empty? (path-extension _%path139170%_))
                    (##string-append _%path139170%_ '".ss")
                    _%path139170%_)))
          (gx#core-resolve-path__%
           _%path139172%_
           (let ((_%$e139175%_ (gx#stx-source _%stx-path139167%_)))
             (if _%$e139175%_ _%$e139175%_ _%rel139168%_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_%stx-path139181%_)
        (let ((_%rel139183%_ '#f))
          (gx#core-resolve-module-path__% _%stx-path139181%_ _%rel139183%_))))
    (define gx#core-resolve-module-path
      (lambda _g140819_
        (let ((_g140820_ (##length _g140819_)))
          (cond ((##fx= _g140820_ 1)
                 (apply gx#core-resolve-module-path__0 _g140819_))
                ((##fx= _g140820_ 2)
                 (apply gx#core-resolve-module-path__% _g140819_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g140819_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_%libpath139052%_)
        (let* ((_%spath139054%_ (symbol->string (gx#stx-e _%libpath139052%_)))
               (_%spath139056%_
                (substring
                 _%spath139054%_
                 '1
                 (##string-length _%spath139054%_)))
               (_%ext139058%_ (path-extension _%spath139056%_))
               (_%ssi139060%_
                (if (__string-empty? _%ext139058%_)
                    (##string-append _%spath139056%_ '".ssi")
                    (##string-append
                     (path-strip-extension _%spath139056%_)
                     '".ssi")))
               (_%srcs139064%_
                (if (__string-empty? _%ext139058%_)
                    (##map (lambda (_%ext139062%_)
                             (string-append _%spath139056%_ _%ext139062%_))
                           '(".ss" ".sld" ".scm"))
                    (cons _%spath139056%_ '()))))
          (let _%lp139067%_ ((_%rest139069%_ (load-path)))
            (let* ((_%rest139070139079%_ _%rest139069%_)
                   (_%E139073139083%_
                    (lambda ()
                      (error '"No clause matching"
                             _%rest139070139079%_
                             '([dir . rest])
                             '([]))
                      '#!void)))
              (let ((_%K139075139154%_
                     (lambda (_%rest139094%_ _%dir139095%_)
                       (letrec ((_%resolve139097%_
                                 (lambda (_%ssi139110%_ _%srcs139111%_)
                                   (let ((_%compiled-path139113%_
                                          (path-expand
                                           _%ssi139110%_
                                           _%dir139095%_)))
                                     (if (##file-exists?
                                          _%compiled-path139113%_)
                                         (path-normalize
                                          _%compiled-path139113%_)
                                         (let _%lpr139115%_ ((_%rest-src139117%_
                                                              _%srcs139111%_))
                                           (let* ((_%rest-src139118139126%_
                                                   _%rest-src139117%_)
                                                  (_%else139120139134%_
                                                   (lambda ()
                                                     (_%lp139067%_
                                                      _%rest139094%_)))
                                                  (_%K139122139142%_
                                                   (lambda (_%rest-src139137%_
                                                            _%src139138%_)
                                                     (let ((_%src-path139140%_
                                                            (path-expand
                                                             _%src139138%_
                                                             _%dir139095%_)))
                                                       (if (##file-exists?
                                                            _%src-path139140%_)
                                                           (path-normalize
                                                            _%src-path139140%_)
                                                           (_%lpr139115%_
                                                            _%rest-src139137%_))))))
                                             (if (pair? _%rest-src139118139126%_)
                                                 (let ((_%hd139123139145%_
                                                        (##car _%rest-src139118139126%_))
                                                       (_%tl139124139147%_
                                                        (##cdr _%rest-src139118139126%_)))
                                                   (let* ((_%src139150%_
                                                           _%hd139123139145%_)
                                                          (_%rest-src139152%_
                                                           _%tl139124139147%_))
                                                     (_%K139122139142%_
                                                      _%rest-src139152%_
                                                      _%src139150%_)))
                                                 (_%else139120139134%_)))))))))
                         (let ((_%$e139099%_
                                (gx#core-library-package-path-prefix
                                 _%dir139095%_)))
                           (if _%$e139099%_
                               ((lambda (_%prefix139102%_)
                                  (if (string-prefix?
                                       _%prefix139102%_
                                       _%spath139056%_)
                                      (let ((_%ssi139106%_
                                             (substring
                                              _%ssi139060%_
                                              (string-length _%prefix139102%_)
                                              (##string-length _%ssi139060%_)))
                                            (_%srcs139107%_
                                             (##map (lambda (_%src139104%_)
                                                      (substring
                                                       _%src139104%_
                                                       (string-length
                                                        _%prefix139102%_)
                                                       (string-length
                                                        _%src139104%_)))
                                                    _%srcs139064%_)))
                                        (_%resolve139097%_
                                         _%ssi139106%_
                                         _%srcs139107%_))
                                      (_%lp139067%_ _%rest139094%_)))
                                _%$e139099%_)
                               (_%resolve139097%_
                                _%ssi139060%_
                                _%srcs139064%_))))))
                    (_%K139074139088%_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"cannot find library module"
                        _%libpath139052%_))))
                (let ((_%try-match139072139091%_
                       (lambda ()
                         (if (null? _%rest139070139079%_)
                             (_%K139074139088%_)
                             (_%E139073139083%_)))))
                  (if (pair? _%rest139070139079%_)
                      (let ((_%tl139077139159%_ (##cdr _%rest139070139079%_))
                            (_%hd139076139157%_ (##car _%rest139070139079%_)))
                        (let ((_%dir139162%_ _%hd139076139157%_)
                              (_%rest139164%_ _%tl139077139159%_))
                          (_%K139075139154%_ _%rest139164%_ _%dir139162%_)))
                      (_%try-match139072139091%_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_%modpath139020%_)
        (letrec ((_%resolve139022%_
                  (lambda (_%path139043%_ _%base139044%_)
                    (let ((_%$e139046%_
                           (string-rindex__0 _%base139044%_ '#\/)))
                      (if _%$e139046%_
                          ((lambda (_%idx139049%_)
                             (gx#core-resolve-library-module-path
                              (##string->symbol
                               (string-append
                                '":"
                                (substring _%base139044%_ '0 _%idx139049%_)
                                '"/"
                                _%path139043%_))))
                           _%$e139046%_)
                          (gx#core-resolve-library-module-path
                           (##string->symbol
                            (string-append '":" _%path139043%_))))))))
          (let ((_%spath139024%_ (symbol->string (gx#stx-e _%modpath139020%_)))
                (_%mod139025%_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _%mod139025%_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"cannot resolve relative module path; not in module context"
                 _%modpath139020%_))
            (let ((_%mpath139027%_
                   (symbol->string
                    (##structure-ref
                     _%mod139025%_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _%lp139029%_ ((_%spath139031%_ _%spath139024%_)
                                 (_%mpath139032%_ _%mpath139027%_))
                (if (string-prefix? '"../" _%spath139031%_)
                    (let ((_%$e139035%_
                           (string-rindex__0 _%mpath139032%_ '#\/)))
                      (if _%$e139035%_
                          ((lambda (_%idx139038%_)
                             (_%lp139029%_
                              (substring
                               _%spath139031%_
                               '3
                               (string-length _%spath139031%_))
                              (substring _%mpath139032%_ '0 _%idx139038%_)))
                           _%$e139035%_)
                          (gx#raise-syntax-error
                           '#f
                           '"cannot resolve relative module path; illegal traversal"
                           _%modpath139020%_)))
                    (if (string-prefix? '"./" _%spath139031%_)
                        (_%lp139029%_
                         (substring
                          _%spath139031%_
                          '2
                          (string-length _%spath139031%_))
                         _%mpath139032%_)
                        (_%resolve139022%_
                         _%spath139031%_
                         _%mpath139032%_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_%dir139012%_)
        (let ((_%$e139014%_
               (pgetq__0
                'package:
                (gx#core-library-package-plist__0 _%dir139012%_))))
          (if _%$e139014%_
              ((lambda (_%pkg139017%_)
                 (##string-append (symbol->string _%pkg139017%_) '"/"))
               _%$e139014%_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_%dir138982%_ _%exists?138983%_)
        (let ((_%$e138985%_ (__hash-get gx#__module-pkg-cache _%dir138982%_)))
          (if _%$e138985%_
              _%$e138985%_
              (let* ((_%gerbil.pkg138989%_
                      (path-expand '"gerbil.pkg" _%dir138982%_))
                     (_%plist138999%_
                      (if (or _%exists?138983%_
                              (##file-exists? _%gerbil.pkg138989%_))
                          (let ((_%e138994%_
                                 (gx#call-with-input-source-file
                                  _%gerbil.pkg138989%_
                                  read)))
                            (if (eof-object? _%e138994%_)
                                '()
                                (if (list? _%e138994%_)
                                    _%e138994%_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _%gerbil.pkg138989%_
                                     _%e138994%_))))
                          '())))
                (__hash-put!
                 gx#__module-pkg-cache
                 _%dir138982%_
                 _%plist138999%_)
                _%plist138999%_)))))
    (define gx#core-library-package-plist__0
      (lambda (_%dir139005%_)
        (let ((_%exists?139007%_ '#f))
          (gx#core-library-package-plist__% _%dir139005%_ _%exists?139007%_))))
    (define gx#core-library-package-plist
      (lambda _g140821_
        (let ((_g140822_ (##length _g140821_)))
          (cond ((##fx= _g140822_ 1)
                 (apply gx#core-library-package-plist__0 _g140821_))
                ((##fx= _g140822_ 2)
                 (apply gx#core-library-package-plist__% _g140821_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g140821_))))))
    (define gx#core-library-module-path?
      (lambda (_%stx138979%_)
        (gx#core-special-module-path? _%stx138979%_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_%stx138977%_)
        (gx#core-special-module-path? _%stx138977%_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_%stx138972%_ _%char138973%_)
        (if (gx#identifier? _%stx138972%_)
            (if (interned-symbol? (gx#stx-e _%stx138972%_))
                (let ((_%str138975%_
                       (symbol->string (gx#stx-e _%stx138972%_))))
                  (if (##fx> (##string-length _%str138975%_) '1)
                      (eq? (string-ref _%str138975%_ '0) _%char138973%_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_%stx138966%_)
        (gx#core-bound-identifier?__%
         _%stx138966%_
         (lambda (_%g138967138969%_)
           (gx#expander-binding?__% _%g138967138969%_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_%stx138960%_)
        (gx#core-bound-identifier?__%
         _%stx138960%_
         (lambda (_%g138961138963%_)
           (gx#expander-binding?__% _%g138961138963%_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_%stx138947%_)
        (letrec ((_%module-prelude?138949%_
                  (lambda (_%e138955%_)
                    (let ((_%$e138957%_
                           (##structure-instance-of?
                            _%e138955%_
                            'gx#module-context::t)))
                      (if _%$e138957%_
                          _%$e138957%_
                          (##structure-instance-of?
                           _%e138955%_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _%stx138947%_
           (lambda (_%g138950138952%_)
             (gx#expander-binding?__%
              _%g138950138952%_
              _%module-prelude?138949%_))))))
    (define gx#core-bind-import!__%
      (lambda (_%in138877%_ _%ctx138878%_ _%force-weak?138879%_)
        (let* ((_%in138880138889%_ _%in138877%_)
               (_%E138882138893%_
                (lambda ()
                  (error '"No clause matching"
                         _%in138880138889%_
                         '((module-import source key phi weak?)))
                  '#!void))
               (_%K138883138906%_
                (lambda (_%weak?138896%_
                         _%phi138897%_
                         _%key138898%_
                         _%source138899%_)
                  (gx#core-bind!__%
                   _%key138898%_
                   (let ((_%e138901%_
                          (gx#core-resolve-module-export _%source138899%_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref _%e138901%_ '1 '#f '#f)
                      _%key138898%_
                      _%phi138897%_
                      _%e138901%_
                      (##unchecked-structure-ref _%source138899%_ '1 '#f '#f)
                      (let ((_%$e138903%_ _%force-weak?138879%_))
                        (if _%$e138903%_ _%$e138903%_ _%weak?138896%_))))
                   gx#core-context-rebind?
                   _%phi138897%_
                   _%ctx138878%_))))
          (if (##structure-direct-instance-of?
               _%in138880138889%_
               'gx#module-import::t)
              (let* ((_%e138884138909%_
                      (##unchecked-structure-ref
                       _%in138880138889%_
                       '1
                       '#f
                       '#f))
                     (_%source138912%_ _%e138884138909%_)
                     (_%e138885138914%_
                      (##unchecked-structure-ref
                       _%in138880138889%_
                       '2
                       '#f
                       '#f))
                     (_%key138917%_ _%e138885138914%_)
                     (_%e138886138919%_
                      (##unchecked-structure-ref
                       _%in138880138889%_
                       '3
                       '#f
                       '#f))
                     (_%phi138922%_ _%e138886138919%_)
                     (_%e138887138924%_
                      (##unchecked-structure-ref
                       _%in138880138889%_
                       '4
                       '#f
                       '#f))
                     (_%weak?138927%_ _%e138887138924%_))
                (_%K138883138906%_
                 _%weak?138927%_
                 _%phi138922%_
                 _%key138917%_
                 _%source138912%_))
              (_%E138882138893%_)))))
    (define gx#core-bind-import!__0
      (lambda (_%in138932%_)
        (let* ((_%ctx138934%_ (gx#current-expander-context))
               (_%force-weak?138936%_ '#f))
          (gx#core-bind-import!__%
           _%in138932%_
           _%ctx138934%_
           _%force-weak?138936%_))))
    (define gx#core-bind-import!__1
      (lambda (_%in138938%_ _%ctx138939%_)
        (let ((_%force-weak?138941%_ '#f))
          (gx#core-bind-import!__%
           _%in138938%_
           _%ctx138939%_
           _%force-weak?138941%_))))
    (define gx#core-bind-import!
      (lambda _g140823_
        (let ((_g140824_ (##length _g140823_)))
          (cond ((##fx= _g140824_ 1) (apply gx#core-bind-import!__0 _g140823_))
                ((##fx= _g140824_ 2) (apply gx#core-bind-import!__1 _g140823_))
                ((##fx= _g140824_ 3) (apply gx#core-bind-import!__% _g140823_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g140823_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_%in138863%_ _%ctx138864%_)
        (gx#core-bind-import!__% _%in138863%_ _%ctx138864%_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_%in138869%_)
        (let ((_%ctx138871%_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _%in138869%_ _%ctx138871%_))))
    (define gx#core-bind-weak-import!
      (lambda _g140825_
        (let ((_g140826_ (##length _g140825_)))
          (cond ((##fx= _g140826_ 1)
                 (apply gx#core-bind-weak-import!__0 _g140825_))
                ((##fx= _g140826_ 2)
                 (apply gx#core-bind-weak-import!__% _g140825_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g140825_))))))
    (define gx#core-resolve-module-export
      (lambda (_%out138754%_)
        (letrec ((_%subst138756%_
                  (lambda (_%key138802%_)
                    (let* ((_%key138803138811%_ _%key138802%_)
                           (_%else138805138819%_ (lambda () _%key138802%_))
                           (_%K138807138850%_
                            (lambda (_%mark138822%_ _%id138823%_)
                              (let* ((_%mark138824138830%_ _%mark138822%_)
                                     (_%E138826138834%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark138824138830%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K138827138842%_
                                      (lambda (_%subst138837%_)
                                        (let ((_%$e138839%_
                                               (if _%subst138837%_
                                                   (hash-get
                                                    _%subst138837%_
                                                    _%id138823%_)
                                                   '#f)))
                                          (if _%$e138839%_
                                              _%$e138839%_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _%key138802%_))))))
                                (if (##structure-instance-of?
                                     _%mark138824138830%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e138828138845%_
                                            (##unchecked-structure-ref
                                             _%mark138824138830%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst138848%_ _%e138828138845%_))
                                      (_%K138827138842%_ _%subst138848%_))
                                    (_%E138826138834%_))))))
                      (if (pair? _%key138803138811%_)
                          (let ((_%hd138808138853%_
                                 (##car _%key138803138811%_))
                                (_%tl138809138855%_
                                 (##cdr _%key138803138811%_)))
                            (let* ((_%id138858%_ _%hd138808138853%_)
                                   (_%mark138860%_ _%tl138809138855%_))
                              (_%K138807138850%_ _%mark138860%_ _%id138858%_)))
                          (_%else138805138819%_))))))
          (let* ((_%out138757138767%_ _%out138754%_)
                 (_%E138759138771%_
                  (lambda ()
                    (error '"No clause matching"
                           _%out138757138767%_
                           '((module-export ctx key phi _ _)))
                    '#!void))
                 (_%K138760138778%_
                  (lambda (_%phi138774%_ _%key138775%_ _%ctx138776%_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _%ctx138776%_ _%phi138774%_)
                     (_%subst138756%_ _%key138775%_)))))
            (if (##structure-direct-instance-of?
                 _%out138757138767%_
                 'gx#module-export::t)
                (let* ((_%e138761138781%_
                        (##unchecked-structure-ref
                         _%out138757138767%_
                         '1
                         '#f
                         '#f))
                       (_%ctx138784%_ _%e138761138781%_)
                       (_%e138762138786%_
                        (##unchecked-structure-ref
                         _%out138757138767%_
                         '2
                         '#f
                         '#f))
                       (_%key138789%_ _%e138762138786%_)
                       (_%e138763138791%_
                        (##unchecked-structure-ref
                         _%out138757138767%_
                         '3
                         '#f
                         '#f))
                       (_%phi138794%_ _%e138763138791%_)
                       (_%e138764138796%_
                        (##unchecked-structure-ref
                         _%out138757138767%_
                         '4
                         '#f
                         '#f))
                       (_%e138765138799%_
                        (##unchecked-structure-ref
                         _%out138757138767%_
                         '5
                         '#f
                         '#f)))
                  (_%K138760138778%_
                   _%phi138794%_
                   _%key138789%_
                   _%ctx138784%_))
                (_%E138759138771%_))))))
    (define gx#core-module-export->import__%
      (lambda (_%out138679%_ _%rename138680%_ _%dphi138681%_)
        (let* ((_%out138682138692%_ _%out138679%_)
               (_%E138684138696%_
                (lambda ()
                  (error '"No clause matching"
                         _%out138682138692%_
                         '((module-export ctx key phi name weak?)))
                  '#!void))
               (_%K138685138708%_
                (lambda (_%weak?138699%_
                         _%name138700%_
                         _%phi138701%_
                         _%key138702%_
                         _%ctx138703%_)
                  (##structure
                   gx#module-import::t
                   _%out138679%_
                   (let ((_%$e138705%_ _%rename138680%_))
                     (if _%$e138705%_ _%$e138705%_ _%name138700%_))
                   (fx+ _%phi138701%_ _%dphi138681%_)
                   _%weak?138699%_))))
          (if (##structure-direct-instance-of?
               _%out138682138692%_
               'gx#module-export::t)
              (let* ((_%e138686138711%_
                      (##unchecked-structure-ref
                       _%out138682138692%_
                       '1
                       '#f
                       '#f))
                     (_%ctx138714%_ _%e138686138711%_)
                     (_%e138687138716%_
                      (##unchecked-structure-ref
                       _%out138682138692%_
                       '2
                       '#f
                       '#f))
                     (_%key138719%_ _%e138687138716%_)
                     (_%e138688138721%_
                      (##unchecked-structure-ref
                       _%out138682138692%_
                       '3
                       '#f
                       '#f))
                     (_%phi138724%_ _%e138688138721%_)
                     (_%e138689138726%_
                      (##unchecked-structure-ref
                       _%out138682138692%_
                       '4
                       '#f
                       '#f))
                     (_%name138729%_ _%e138689138726%_)
                     (_%e138690138731%_
                      (##unchecked-structure-ref
                       _%out138682138692%_
                       '5
                       '#f
                       '#f))
                     (_%weak?138734%_ _%e138690138731%_))
                (_%K138685138708%_
                 _%weak?138734%_
                 _%name138729%_
                 _%phi138724%_
                 _%key138719%_
                 _%ctx138714%_))
              (_%E138684138696%_)))))
    (define gx#core-module-export->import__0
      (lambda (_%out138739%_)
        (let* ((_%rename138741%_ '#f) (_%dphi138743%_ '0))
          (gx#core-module-export->import__%
           _%out138739%_
           _%rename138741%_
           _%dphi138743%_))))
    (define gx#core-module-export->import__1
      (lambda (_%out138745%_ _%rename138746%_)
        (let ((_%dphi138748%_ '0))
          (gx#core-module-export->import__%
           _%out138745%_
           _%rename138746%_
           _%dphi138748%_))))
    (define gx#core-module-export->import
      (lambda _g140827_
        (let ((_g140828_ (##length _g140827_)))
          (cond ((##fx= _g140828_ 1)
                 (apply gx#core-module-export->import__0 _g140827_))
                ((##fx= _g140828_ 2)
                 (apply gx#core-module-export->import__1 _g140827_))
                ((##fx= _g140828_ 3)
                 (apply gx#core-module-export->import__% _g140827_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g140827_))))))
    (define gx#core-expand-module%
      (lambda (_%stx138578%_)
        (letrec ((_%make-context138580%_
                  (lambda (_%id138657%_)
                    (let* ((_%super138659%_ (gx#current-expander-context))
                           (_%bind-id138661%_ (gx#stx-e _%id138657%_))
                           (_%mod-id138663%_
                            (if (##structure-instance-of?
                                 _%super138659%_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##unchecked-structure-ref
                                  _%super138659%_
                                  '1
                                  '#f
                                  '#f)
                                 '"~"
                                 _%bind-id138661%_)
                                _%bind-id138661%_))
                           (_%ns138665%_ (symbol->string _%mod-id138663%_))
                           (_%path138675%_
                            (if (##structure-instance-of?
                                 _%super138659%_
                                 'gx#module-context::t)
                                (let ((_%path138667%_
                                       (##unchecked-structure-ref
                                        _%super138659%_
                                        '7
                                        '#f
                                        '#f)))
                                  (if (or (pair? _%path138667%_)
                                          (null? _%path138667%_))
                                      (cons _%bind-id138661%_ _%path138667%_)
                                      (if (not _%path138667%_)
                                          _%bind-id138661%_
                                          (cons _%bind-id138661%_
                                                (cons _%path138667%_ '())))))
                                _%bind-id138661%_))
                           (__obj140804
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
                       __obj140804
                       _%mod-id138663%_
                       _%super138659%_
                       _%ns138665%_
                       _%path138675%_)
                      __obj140804)))
                 (_%valid-module-id?138581%_
                  (lambda (_%id138632%_)
                    (let* ((_%str138634%_ (symbol->string _%id138632%_))
                           (_%len138636%_ (##string-length _%str138634%_)))
                      (if (##fx>= _%len138636%_ '1)
                          (let _%loop138639%_ ((_%index138641%_
                                                (##fx- (##string-length
                                                        _%str138634%_)
                                                       '1)))
                            (if (##fx>= _%index138641%_ '0)
                                (let ((_%c138643%_
                                       (string-ref
                                        _%str138634%_
                                        _%index138641%_)))
                                  (if (or (and (##char>=? _%c138643%_ '#\a)
                                               (##char<=? _%c138643%_ '#\z))
                                          (and (##char>=? _%c138643%_ '#\A)
                                               (##char<=? _%c138643%_ '#\Z))
                                          (and (##char>=? _%c138643%_ '#\0)
                                               (##char<=? _%c138643%_ '#\9))
                                          (##char=? _%c138643%_ '#\_)
                                          (##char=? _%c138643%_ '#\-))
                                      (_%loop138639%_
                                       (##fx- _%index138641%_ '1))
                                      '#f))
                                '#t))
                          '#f)))))
          (let* ((_%e138582138592%_ _%stx138578%_)
                 (_%E138584138596%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e138582138592%_)))
                 (_%E138583138628%_
                  (lambda ()
                    (if (gx#stx-pair? _%e138582138592%_)
                        (let ((_%e138585138600%_
                               (gx#syntax-e _%e138582138592%_)))
                          (let ((_%hd138586138603%_ (##car _%e138585138600%_))
                                (_%tl138587138605%_ (##cdr _%e138585138600%_)))
                            (if (gx#stx-pair? _%tl138587138605%_)
                                (let ((_%e138588138608%_
                                       (gx#syntax-e _%tl138587138605%_)))
                                  (let ((_%hd138589138611%_
                                         (##car _%e138588138608%_))
                                        (_%tl138590138613%_
                                         (##cdr _%e138588138608%_)))
                                    (let* ((_%id138616%_ _%hd138589138611%_)
                                           (_%body138618%_ _%tl138590138613%_))
                                      (if (and (gx#identifier? _%id138616%_)
                                               (gx#stx-list? _%body138618%_))
                                          (if (_%valid-module-id?138581%_
                                               (gx#stx-e
                                                (gx#datum->syntax__0 '#f 'id)))
                                              (let* ((_%ctx138620%_
                                                      (_%make-context138580%_
                                                       _%id138616%_))
                                                     (_%body138622%_
                                                      (gx#core-expand-module-begin
                                                       _%body138618%_
                                                       _%ctx138620%_))
                                                     (_%body138624%_
                                                      (gx#core-quote-syntax__1
                                                       (gx#core-cons
                                                        '%#begin
                                                        _%body138622%_)
                                                       (gx#stx-source
                                                        _%stx138578%_))))
                                                (##unchecked-structure-set!
                                                 _%ctx138620%_
                                                 (__make-atomic-promise
                                                  (lambda ()
                                                    (gx#eval-syntax*
                                                     _%body138624%_)))
                                                 '10
                                                 '#f
                                                 '#f)
                                                (##unchecked-structure-set!
                                                 _%ctx138620%_
                                                 _%body138624%_
                                                 '11
                                                 '#f
                                                 '#f)
                                                (gx#core-bind-syntax!__0
                                                 _%id138616%_
                                                 _%ctx138620%_)
                                                (gx#core-quote-syntax__1
                                                 (gx#core-list
                                                  '%#module
                                                  (gx#core-quote-syntax__0
                                                   _%id138616%_)
                                                  _%body138624%_)
                                                 (gx#stx-source
                                                  _%stx138578%_)))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"invalid module id; allowed characters are A-Z,a-z,0-9,_,-"
                                               _%stx138578%_
                                               (gx#datum->syntax__0 '#f 'id)))
                                          (_%E138584138596%_)))))
                                (_%E138584138596%_))))
                        (_%E138584138596%_)))))
            (_%E138583138628%_)))))
    (define gx#core-expand-module-begin
      (lambda (_%body138543%_ _%ctx138544%_)
        (call-with-parameters__1
         (lambda ()
           (call-with-parameters__1
            (lambda ()
              (gx#core-bind-feature!__1 'gerbil-module '#t)
              (let* ((_%stx138548%_
                      (gx#core-expand-head
                       (cons '%%begin-module _%body138543%_)))
                     (_%e138549138556%_ _%stx138548%_)
                     (_%E138551138560%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module body expansion"
                         _%stx138548%_)))
                     (_%E138550138574%_
                      (lambda ()
                        (if (gx#stx-pair? _%e138549138556%_)
                            (let ((_%e138552138564%_
                                   (gx#syntax-e _%e138549138556%_)))
                              (let ((_%hd138553138567%_
                                     (##car _%e138552138564%_))
                                    (_%tl138554138569%_
                                     (##cdr _%e138552138564%_)))
                                (if (and (gx#identifier? _%hd138553138567%_)
                                         (gx#core-identifier=?
                                          _%hd138553138567%_
                                          '%#begin-module))
                                    (let ((_%body138572%_ _%tl138554138569%_))
                                      (if (gx#sealed-syntax? _%stx138548%_)
                                          _%body138572%_
                                          (gx#core-expand-module-body
                                           _%body138572%_)))
                                    (_%E138551138560%_))))
                            (_%E138551138560%_)))))
                (_%E138550138574%_)))
            gx#current-expander-phi
            '0))
         gx#current-expander-context
         _%ctx138544%_)))
    (define gx#core-expand-module-body
      (lambda (_%body138339%_)
        (letrec ((_%expand-special138341%_
                  (lambda (_%hd138470%_ _%K138471%_ _%rest138472%_ _%r138473%_)
                    (let* ((_%e138474138491%_ _%hd138470%_)
                           (_%E138486138495%_
                            (lambda ()
                              (_%K138471%_
                               _%rest138472%_
                               (cons (gx#core-expand-top _%hd138470%_)
                                     _%r138473%_))))
                           (_%E138476138507%_
                            (lambda ()
                              (if (gx#stx-pair? _%e138474138491%_)
                                  (let ((_%e138487138499%_
                                         (gx#syntax-e _%e138474138491%_)))
                                    (let ((_%hd138488138502%_
                                           (##car _%e138487138499%_))
                                          (_%tl138489138504%_
                                           (##cdr _%e138487138499%_)))
                                      (if (and (gx#identifier?
                                                _%hd138488138502%_)
                                               (gx#core-identifier=?
                                                _%hd138488138502%_
                                                '%#export))
                                          (_%K138471%_
                                           _%rest138472%_
                                           (cons _%hd138470%_ _%r138473%_))
                                          (_%E138486138495%_))))
                                  (_%E138486138495%_))))
                           (_%E138475138539%_
                            (lambda ()
                              (if (gx#stx-pair? _%e138474138491%_)
                                  (let ((_%e138477138511%_
                                         (gx#syntax-e _%e138474138491%_)))
                                    (let ((_%hd138478138514%_
                                           (##car _%e138477138511%_))
                                          (_%tl138479138516%_
                                           (##cdr _%e138477138511%_)))
                                      (if (and (gx#identifier?
                                                _%hd138478138514%_)
                                               (gx#core-identifier=?
                                                _%hd138478138514%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl138479138516%_)
                                              (let ((_%e138480138519%_
                                                     (gx#syntax-e
                                                      _%tl138479138516%_)))
                                                (let ((_%hd138481138522%_
                                                       (##car _%e138480138519%_))
                                                      (_%tl138482138524%_
                                                       (##cdr _%e138480138519%_)))
                                                  (let ((_%hd-bind138527%_
                                                         _%hd138481138522%_))
                                                    (if (gx#stx-pair?
                                                         _%tl138482138524%_)
                                                        (let ((_%e138483138529%_
                                                               (gx#syntax-e
                                                                _%tl138482138524%_)))
                                                          (let ((_%hd138484138532%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e138483138529%_))
                        (_%tl138485138534%_ (##cdr _%e138483138529%_)))
                    (let ((_%expr138537%_ _%hd138484138532%_))
                      (if (gx#stx-null? _%tl138485138534%_)
                          (if (gx#core-bind-values? _%hd-bind138527%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind138527%_)
                                (_%K138471%_
                                 _%rest138472%_
                                 (cons _%hd138470%_ _%r138473%_)))
                              (_%E138476138507%_))
                          (_%E138476138507%_)))))
                (_%E138476138507%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E138476138507%_))
                                          (_%E138476138507%_))))
                                  (_%E138476138507%_)))))
                      (_%E138475138539%_))))
                 (_%expand-body138342%_
                  (lambda (_%rbody138344%_)
                    (let _%lp138346%_ ((_%rest138348%_ _%rbody138344%_)
                                       (_%body138349%_ '()))
                      (let* ((_%rest138350138358%_ _%rest138348%_)
                             (_%else138352138366%_ (lambda () _%body138349%_))
                             (_%K138354138458%_
                              (lambda (_%rest138369%_ _%hd138370%_)
                                (let* ((_%e138371138392%_ _%hd138370%_)
                                       (_%E138387138396%_
                                        (lambda ()
                                          (_%lp138346%_
                                           _%rest138369%_
                                           (cons (gx#core-expand-expression
                                                  _%hd138370%_)
                                                 _%body138349%_))))
                                       (_%E138383138410%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e138371138392%_)
                                              (let ((_%e138388138400%_
                                                     (gx#syntax-e
                                                      _%e138371138392%_)))
                                                (let ((_%hd138389138403%_
                                                       (##car _%e138388138400%_))
                                                      (_%tl138390138405%_
                                                       (##cdr _%e138388138400%_)))
                                                  (let ((_%form138408%_
                                                         _%hd138389138403%_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _%form138408%_
                                                         gx#special-form-binding?)
                                                        (_%lp138346%_
                                                         _%rest138369%_
                                                         (cons _%hd138370%_
                                                               _%body138349%_))
                                                        (_%E138387138396%_)))))
                                              (_%E138387138396%_))))
                                       (_%E138373138422%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e138371138392%_)
                                              (let ((_%e138384138414%_
                                                     (gx#syntax-e
                                                      _%e138371138392%_)))
                                                (let ((_%hd138385138417%_
                                                       (##car _%e138384138414%_))
                                                      (_%tl138386138419%_
                                                       (##cdr _%e138384138414%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd138385138417%_)
                                                           (gx#core-identifier=?
                                                            _%hd138385138417%_
                                                            '%#export))
                                                      (_%lp138346%_
                                                       _%rest138369%_
                                                       (cons (gx#core-expand-export%__0
                                                              _%hd138370%_)
                                                             _%body138349%_))
                                                      (_%E138383138410%_))))
                                              (_%E138383138410%_))))
                                       (_%E138372138454%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e138371138392%_)
                                              (let ((_%e138374138426%_
                                                     (gx#syntax-e
                                                      _%e138371138392%_)))
                                                (let ((_%hd138375138429%_
                                                       (##car _%e138374138426%_))
                                                      (_%tl138376138431%_
                                                       (##cdr _%e138374138426%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd138375138429%_)
                                                           (gx#core-identifier=?
                                                            _%hd138375138429%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl138376138431%_)
                                                          (let ((_%e138377138434%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl138376138431%_)))
                    (let ((_%hd138378138437%_ (##car _%e138377138434%_))
                          (_%tl138379138439%_ (##cdr _%e138377138434%_)))
                      (let ((_%hd-bind138442%_ _%hd138378138437%_))
                        (if (gx#stx-pair? _%tl138379138439%_)
                            (let ((_%e138380138444%_
                                   (gx#syntax-e _%tl138379138439%_)))
                              (let ((_%hd138381138447%_
                                     (##car _%e138380138444%_))
                                    (_%tl138382138449%_
                                     (##cdr _%e138380138444%_)))
                                (let ((_%expr138452%_ _%hd138381138447%_))
                                  (if (gx#stx-null? _%tl138382138449%_)
                                      (_%lp138346%_
                                       _%rest138369%_
                                       (cons (gx#core-quote-syntax__1
                                              (gx#core-list
                                               '%#define-values
                                               (gx#core-quote-bind-values
                                                _%hd-bind138442%_)
                                               (gx#core-expand-expression
                                                _%expr138452%_))
                                              (gx#stx-source _%hd138370%_))
                                             _%body138349%_))
                                      (_%E138373138422%_)))))
                            (_%E138373138422%_)))))
                  (_%E138373138422%_))
              (_%E138373138422%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E138373138422%_)))))
                                  (_%E138372138454%_)))))
                        (if (pair? _%rest138350138358%_)
                            (let ((_%hd138355138461%_
                                   (##car _%rest138350138358%_))
                                  (_%tl138356138463%_
                                   (##cdr _%rest138350138358%_)))
                              (let* ((_%hd138466%_ _%hd138355138461%_)
                                     (_%rest138468%_ _%tl138356138463%_))
                                (_%K138354138458%_
                                 _%rest138468%_
                                 _%hd138466%_)))
                            (_%else138352138366%_)))))))
          (_%expand-body138342%_
           (gx#core-expand-block__%
            (cons '%#begin-module _%body138339%_)
            _%expand-special138341%_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_%stx138180%_
               _%expanded?138181%_
               _%method138182%_
               _%current-phi138183%_
               _%expand1138184%_)
        (letrec ((_%K138186%_
                  (lambda (_%rest138306%_ _%r138307%_)
                    (let* ((_%e138308138315%_ _%rest138306%_)
                           (_%E138310138319%_ (lambda () _%r138307%_))
                           (_%E138309138335%_
                            (lambda ()
                              (if (gx#stx-pair? _%e138308138315%_)
                                  (let ((_%e138311138323%_
                                         (gx#syntax-e _%e138308138315%_)))
                                    (let ((_%hd138312138326%_
                                           (##car _%e138311138323%_))
                                          (_%tl138313138328%_
                                           (##cdr _%e138311138323%_)))
                                      (let* ((_%hd138331%_ _%hd138312138326%_)
                                             (_%rest138333%_
                                              _%tl138313138328%_))
                                        (_%step138187%_
                                         _%hd138331%_
                                         _%rest138333%_
                                         _%r138307%_))))
                                  (_%E138310138319%_)))))
                      (_%E138309138335%_))))
                 (_%step138187%_
                  (lambda (_%hd138220%_ _%rest138221%_ _%r138222%_)
                    (let* ((_%e138223138241%_ _%hd138220%_)
                           (_%E138236138245%_
                            (lambda ()
                              (if (_%expanded?138181%_ (gx#stx-e _%hd138220%_))
                                  (_%K138186%_
                                   _%rest138221%_
                                   (cons (gx#stx-e _%hd138220%_) _%r138222%_))
                                  (_%expand1138184%_
                                   _%hd138220%_
                                   _%K138186%_
                                   _%rest138221%_
                                   _%r138222%_))))
                           (_%E138232138261%_
                            (lambda ()
                              (if (gx#stx-pair? _%e138223138241%_)
                                  (let ((_%e138237138249%_
                                         (gx#syntax-e _%e138223138241%_)))
                                    (let ((_%hd138238138252%_
                                           (##car _%e138237138249%_))
                                          (_%tl138239138254%_
                                           (##cdr _%e138237138249%_)))
                                      (let* ((_%macro138257%_
                                              _%hd138238138252%_)
                                             (_%body138259%_
                                              _%tl138239138254%_))
                                        (if (gx#core-bound-identifier?__%
                                             _%macro138257%_
                                             gx#syntax-binding?)
                                            (_%K138186%_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _%macro138257%_)
                                                    _%hd138220%_
                                                    _%method138182%_)
                                                   _%rest138221%_)
                                             _%r138222%_)
                                            (_%E138236138245%_)))))
                                  (_%E138236138245%_))))
                           (_%E138225138275%_
                            (lambda ()
                              (if (gx#stx-pair? _%e138223138241%_)
                                  (let ((_%e138233138265%_
                                         (gx#syntax-e _%e138223138241%_)))
                                    (let ((_%hd138234138268%_
                                           (##car _%e138233138265%_))
                                          (_%tl138235138270%_
                                           (##cdr _%e138233138265%_)))
                                      (if (eq? (gx#stx-e _%hd138234138268%_)
                                               'begin:)
                                          (let ((_%body138273%_
                                                 _%tl138235138270%_))
                                            (_%K138186%_
                                             (gx#stx-foldr
                                              cons
                                              _%rest138221%_
                                              _%body138273%_)
                                             _%r138222%_))
                                          (_%E138232138261%_))))
                                  (_%E138232138261%_))))
                           (_%E138224138302%_
                            (lambda ()
                              (if (gx#stx-pair? _%e138223138241%_)
                                  (let ((_%e138226138279%_
                                         (gx#syntax-e _%e138223138241%_)))
                                    (let ((_%hd138227138282%_
                                           (##car _%e138226138279%_))
                                          (_%tl138228138284%_
                                           (##cdr _%e138226138279%_)))
                                      (if (eq? (gx#stx-e _%hd138227138282%_)
                                               'phi:)
                                          (if (gx#stx-pair? _%tl138228138284%_)
                                              (let ((_%e138229138287%_
                                                     (gx#syntax-e
                                                      _%tl138228138284%_)))
                                                (let ((_%hd138230138290%_
                                                       (##car _%e138229138287%_))
                                                      (_%tl138231138292%_
                                                       (##cdr _%e138229138287%_)))
                                                  (let* ((_%dphi138295%_
                                                          _%hd138230138290%_)
                                                         (_%body138297%_
                                                          _%tl138231138292%_))
                                                    (if (gx#stx-fixnum?
                                                         _%dphi138295%_)
                                                        (let ((_%rbody138300%_
                                                               (call-with-parameters__1
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_%K138186%_ _%body138297%_ '()))
                        _%current-phi138183%_
                        (fx+ (gx#stx-e _%dphi138295%_)
                             (_%current-phi138183%_)))))
                  (_%K138186%_
                   _%rest138221%_
                   (__foldr1 cons _%r138222%_ _%rbody138300%_)))
                (_%E138225138275%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E138225138275%_))
                                          (_%E138225138275%_))))
                                  (_%E138225138275%_)))))
                      (_%E138224138302%_)))))
          (let* ((_%e138188138195%_ _%stx138180%_)
                 (_%E138190138199%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e138188138195%_)))
                 (_%E138189138216%_
                  (lambda ()
                    (if (gx#stx-pair? _%e138188138195%_)
                        (let ((_%e138191138203%_
                               (gx#syntax-e _%e138188138195%_)))
                          (let ((_%hd138192138206%_ (##car _%e138191138203%_))
                                (_%tl138193138208%_ (##cdr _%e138191138203%_)))
                            (let ((_%body138211%_ _%tl138193138208%_))
                              (if (_%current-phi138183%_)
                                  (_%K138186%_ _%body138211%_ '())
                                  (call-with-parameters__1
                                   (lambda () (_%K138186%_ _%body138211%_ '()))
                                   _%current-phi138183%_
                                   (gx#current-expander-phi))))))
                        (_%E138190138199%_)))))
            (_%E138189138216%_)))))
    (define gx#core-expand-import%__%
      (lambda (_%stx137834%_ _%internal-expand?137835%_)
        (letrec ((_%expand1137837%_
                  (lambda (_%hd138152%_ _%K138153%_ _%rest138154%_ _%r138155%_)
                    (if (gx#core-bound-module? _%hd138152%_)
                        (_%import1137838%_
                         (gx#syntax-local-e__0 _%hd138152%_)
                         _%K138153%_
                         _%rest138154%_
                         _%r138155%_)
                        (if (gx#core-library-module-path? _%hd138152%_)
                            (_%import1137838%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%hd138152%_))
                             _%K138153%_
                             _%rest138154%_
                             _%r138155%_)
                            (if (gx#core-library-relative-module-path?
                                 _%hd138152%_)
                                (_%import1137838%_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _%hd138152%_))
                                 _%K138153%_
                                 _%rest138154%_
                                 _%r138155%_)
                                (let ((_%e138161%_ (gx#stx-e _%hd138152%_)))
                                  (if (pair? _%e138161%_)
                                      (let ((_%$e138164%_
                                             (gx#stx-e (##car _%e138161%_))))
                                        (if (eq? 'spec: _%$e138164%_)
                                            (_%import-spec137841%_
                                             _%hd138152%_
                                             _%K138153%_
                                             _%rest138154%_
                                             _%r138155%_)
                                            (if (eq? 'in: _%$e138164%_)
                                                (_%import-submodule137839%_
                                                 _%hd138152%_
                                                 _%K138153%_
                                                 _%rest138154%_
                                                 _%r138155%_)
                                                (if (eq? 'runtime:
                                                         _%$e138164%_)
                                                    (_%import-runtime137840%_
                                                     _%hd138152%_
                                                     _%K138153%_
                                                     _%rest138154%_
                                                     _%r138155%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _%stx137834%_
                                                     _%hd138152%_)))))
                                      (if (string? _%e138161%_)
                                          (_%import1137838%_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _%hd138152%_
                                             (gx#stx-source _%stx137834%_)))
                                           _%K138153%_
                                           _%rest138154%_
                                           _%r138155%_)
                                          (if (##structure-instance-of?
                                               _%e138161%_
                                               'gx#module-context::t)
                                              (_%K138153%_
                                               _%rest138154%_
                                               (cons _%e138161%_ _%r138155%_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _%stx137834%_
                                               _%hd138152%_))))))))))
                 (_%import1137838%_
                  (lambda (_%ctx138141%_
                           _%K138142%_
                           _%rest138143%_
                           _%r138144%_)
                    (let ((_%dphi138146%_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_%K138142%_
                       _%rest138143%_
                       (cons (##structure
                              gx#import-set::t
                              _%ctx138141%_
                              _%dphi138146%_
                              (map (lambda (_%g138147138149%_)
                                     (gx#core-module-export->import__%
                                      _%g138147138149%_
                                      '#f
                                      _%dphi138146%_))
                                   (##unchecked-structure-ref
                                    _%ctx138141%_
                                    '9
                                    '#f
                                    '#f)))
                             _%r138144%_)))))
                 (_%import-submodule137839%_
                  (lambda (_%hd138108%_ _%K138109%_ _%rest138110%_ _%r138111%_)
                    (let* ((_%e138112138119%_ _%hd138108%_)
                           (_%E138114138123%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e138112138119%_)))
                           (_%E138113138137%_
                            (lambda ()
                              (if (gx#stx-pair? _%e138112138119%_)
                                  (let ((_%e138115138127%_
                                         (gx#syntax-e _%e138112138119%_)))
                                    (let ((_%hd138116138130%_
                                           (##car _%e138115138127%_))
                                          (_%tl138117138132%_
                                           (##cdr _%e138115138127%_)))
                                      (let ((_%spath138135%_
                                             _%tl138117138132%_))
                                        (_%import1137838%_
                                         (_%import-spec-source137842%_
                                          _%spath138135%_)
                                         _%K138109%_
                                         _%rest138110%_
                                         _%r138111%_))))
                                  (_%E138114138123%_)))))
                      (_%E138113138137%_))))
                 (_%import-runtime137840%_
                  (lambda (_%hd138075%_ _%K138076%_ _%rest138077%_ _%r138078%_)
                    (let* ((_%e138079138086%_ _%hd138075%_)
                           (_%E138081138090%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e138079138086%_)))
                           (_%E138080138104%_
                            (lambda ()
                              (if (gx#stx-pair? _%e138079138086%_)
                                  (let ((_%e138082138094%_
                                         (gx#syntax-e _%e138079138086%_)))
                                    (let ((_%hd138083138097%_
                                           (##car _%e138082138094%_))
                                          (_%tl138084138099%_
                                           (##cdr _%e138082138094%_)))
                                      (let ((_%spath138102%_
                                             _%tl138084138099%_))
                                        (_%K138076%_
                                         _%rest138077%_
                                         (cons (_%import-spec-source137842%_
                                                _%spath138102%_)
                                               _%r138078%_)))))
                                  (_%E138081138090%_)))))
                      (_%E138080138104%_))))
                 (_%import-spec137841%_
                  (lambda (_%hd137913%_ _%K137914%_ _%rest137915%_ _%r137916%_)
                    (let* ((_%e137917137934%_ _%hd137913%_)
                           (_%E137926137938%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e137917137934%_)))
                           (_%E137919138049%_
                            (lambda ()
                              (if (gx#stx-pair? _%e137917137934%_)
                                  (let ((_%e137927137942%_
                                         (gx#syntax-e _%e137917137934%_)))
                                    (let ((_%hd137928137945%_
                                           (##car _%e137927137942%_))
                                          (_%tl137929137947%_
                                           (##cdr _%e137927137942%_)))
                                      (if (gx#stx-pair? _%tl137929137947%_)
                                          (let ((_%e137930137950%_
                                                 (gx#syntax-e
                                                  _%tl137929137947%_)))
                                            (let ((_%hd137931137953%_
                                                   (##car _%e137930137950%_))
                                                  (_%tl137932137955%_
                                                   (##cdr _%e137930137950%_)))
                                              (let* ((_%path137958%_
                                                      _%hd137931137953%_)
                                                     (_%specs137960%_
                                                      _%tl137932137955%_))
                                                (let ((_%src-ctx137962%_
                                                       (_%import-spec-source137842%_
                                                        _%path137958%_))
                                                      (_%exports137963%_
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
                                                      (_%specs137964%_
                                                       (gx#syntax->list
                                                        _%specs137960%_)))
                                                  (for-each
                                                   (lambda (_%out137966%_)
                                                     (__hash-put!
                                                      _%exports137963%_
                                                      (cons (##unchecked-structure-ref
                                                             _%out137966%_
                                                             '3
                                                             '#f
                                                             '#f)
                                                            (##unchecked-structure-ref
                                                             _%out137966%_
                                                             '4
                                                             '#f
                                                             '#f))
                                                      _%out137966%_))
                                                   (##unchecked-structure-ref
                                                    _%src-ctx137962%_
                                                    '9
                                                    '#f
                                                    '#f))
                                                  (_%K137914%_
                                                   _%rest137915%_
                                                   (__foldl1
                                                    (lambda (_%spec137968%_
                                                             _%r137969%_)
                                                      (let* ((_%e137970137986%_
                                                              _%spec137968%_)
                                                             (_%E137972137990%_
                                                              (lambda ()
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid syntax-case clause"
                         _%e137970137986%_)))
                     (_%E137971138045%_
                      (lambda ()
                        (if (gx#stx-pair? _%e137970137986%_)
                            (let ((_%e137973137994%_
                                   (gx#syntax-e _%e137970137986%_)))
                              (let ((_%hd137974137997%_
                                     (##car _%e137973137994%_))
                                    (_%tl137975137999%_
                                     (##cdr _%e137973137994%_)))
                                (let ((_%phi138002%_ _%hd137974137997%_))
                                  (if (gx#stx-pair? _%tl137975137999%_)
                                      (let ((_%e137976138004%_
                                             (gx#syntax-e _%tl137975137999%_)))
                                        (let ((_%hd137977138007%_
                                               (##car _%e137976138004%_))
                                              (_%tl137978138009%_
                                               (##cdr _%e137976138004%_)))
                                          (let ((_%name138012%_
                                                 _%hd137977138007%_))
                                            (if (gx#stx-pair?
                                                 _%tl137978138009%_)
                                                (let ((_%e137979138014%_
                                                       (gx#syntax-e
                                                        _%tl137978138009%_)))
                                                  (let ((_%hd137980138017%_
                                                         (##car _%e137979138014%_))
                                                        (_%tl137981138019%_
                                                         (##cdr _%e137979138014%_)))
                                                    (let ((_%src-phi138022%_
                                                           _%hd137980138017%_))
                                                      (if (gx#stx-pair?
                                                           _%tl137981138019%_)
                                                          (let ((_%e137982138024%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl137981138019%_)))
                    (let ((_%hd137983138027%_ (##car _%e137982138024%_))
                          (_%tl137984138029%_ (##cdr _%e137982138024%_)))
                      (let ((_%src-name138032%_ _%hd137983138027%_))
                        (if (gx#stx-null? _%tl137984138029%_)
                            (if (and (gx#stx-fixnum? _%src-phi138022%_)
                                     (gx#identifier? _%src-name138032%_)
                                     (gx#stx-fixnum? _%phi138002%_)
                                     (gx#identifier? _%name138012%_))
                                (let ((_%src-phi138034%_
                                       (gx#stx-e _%src-phi138022%_))
                                      (_%src-name138035%_
                                       (gx#core-identifier-key
                                        _%src-name138032%_))
                                      (_%phi138036%_ (gx#stx-e _%phi138002%_))
                                      (_%name138037%_
                                       (gx#core-identifier-key
                                        _%name138012%_)))
                                  (let ((_%$e138039%_
                                         (__hash-get
                                          _%exports137963%_
                                          (cons _%src-phi138034%_
                                                _%src-name138035%_))))
                                    (if _%$e138039%_
                                        ((lambda (_%out138042%_)
                                           (cons (gx#core-module-export->import__%
                                                  _%out138042%_
                                                  _%name138037%_
                                                  (fx- _%phi138036%_
                                                       _%src-phi138034%_))
                                                 _%r137969%_))
                                         _%$e138039%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; no matching export"
                                         _%stx137834%_
                                         _%hd137913%_))))
                                (_%E137972137990%_))
                            (_%E137972137990%_)))))
                  (_%E137972137990%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E137972137990%_)))))
                                      (_%E137972137990%_)))))
                            (_%E137972137990%_)))))
                (_%E137971138045%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r137916%_
                                                    _%specs137964%_))))))
                                          (_%E137926137938%_))))
                                  (_%E137926137938%_))))
                           (_%E137918138071%_
                            (lambda ()
                              (if (gx#stx-pair? _%e137917137934%_)
                                  (let ((_%e137920138053%_
                                         (gx#syntax-e _%e137917137934%_)))
                                    (let ((_%hd137921138056%_
                                           (##car _%e137920138053%_))
                                          (_%tl137922138058%_
                                           (##cdr _%e137920138053%_)))
                                      (if (gx#stx-pair? _%tl137922138058%_)
                                          (let ((_%e137923138061%_
                                                 (gx#syntax-e
                                                  _%tl137922138058%_)))
                                            (let ((_%hd137924138064%_
                                                   (##car _%e137923138061%_))
                                                  (_%tl137925138066%_
                                                   (##cdr _%e137923138061%_)))
                                              (let ((_%path138069%_
                                                     _%hd137924138064%_))
                                                (if (gx#stx-null?
                                                     _%tl137925138066%_)
                                                    (_%K137914%_
                                                     _%rest137915%_
                                                     (cons (_%import-spec-source137842%_
                                                            _%path138069%_)
                                                           _%r137916%_))
                                                    (_%E137919138049%_)))))
                                          (_%E137919138049%_))))
                                  (_%E137919138049%_)))))
                      (_%E137918138071%_))))
                 (_%import-spec-source137842%_
                  (lambda (_%spath137911%_)
                    (gx#core-import-nested-module
                     _%spath137911%_
                     _%stx137834%_)))
                 (_%import!137843%_
                  (lambda (_%rbody137856%_)
                    (letrec* ((_%current-ctx137858%_
                               (gx#current-expander-context))
                              (_%deps137859%_ (make-hash-table-eq))
                              (_%bind!137860%_
                               (lambda (_%hd137909%_)
                                 (gx#core-bind-import!__1
                                  _%hd137909%_
                                  _%current-ctx137858%_))))
                      (let _%lp137862%_ ((_%rest137864%_ _%rbody137856%_)
                                         (_%body137865%_ '()))
                        (let* ((_%rest137866137874%_ _%rest137864%_)
                               (_%else137868137885%_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _%current-ctx137858%_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _%current-ctx137858%_
                                       (__foldl1
                                        cons
                                        (##unchecked-structure-ref
                                         _%current-ctx137858%_
                                         '8
                                         '#f
                                         '#f)
                                        _%body137865%_)
                                       '8
                                       '#f
                                       '#f)
                                      '#!void)
                                  (__hash-for-each
                                   (lambda (_%ctx137882%_ _%_137883%_)
                                     (gx#eval-module _%ctx137882%_))
                                   _%deps137859%_)
                                  _%body137865%_))
                               (_%K137870137897%_
                                (lambda (_%rest137888%_ _%hd137889%_)
                                  (if (##structure-direct-instance-of?
                                       _%hd137889%_
                                       'gx#module-import::t)
                                      (let ()
                                        (_%bind!137860%_ _%hd137889%_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _%hd137889%_
                                                   '3
                                                   '#f
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _%hd137889%_
                                                            '1
                                                            '#f
                                                            '#f)
                                                           '3
                                                           '#f
                                                           '#f)))
                                            (__hash-put!
                                             _%deps137859%_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _%hd137889%_
                                               '1
                                               '#f
                                               '#f)
                                              '1
                                              '#f
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _%hd137889%_
                                           'gx#import-set::t)
                                          (let ()
                                            (for-each
                                             _%bind!137860%_
                                             (##unchecked-structure-ref
                                              _%hd137889%_
                                              '3
                                              '#f
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _%hd137889%_
                                                  '2
                                                  '#f
                                                  '#f))
                                                (__hash-put!
                                                 _%deps137859%_
                                                 (##unchecked-structure-ref
                                                  _%hd137889%_
                                                  '1
                                                  '#f
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_%$e137893%_
                                                 (##structure-instance-of?
                                                  _%hd137889%_
                                                  'gx#module-context::t)))
                                            (if _%$e137893%_
                                                _%$e137893%_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _%stx137834%_
                                                 _%hd137889%_)))))
                                  (_%lp137862%_
                                   _%rest137888%_
                                   (cons _%hd137889%_ _%body137865%_)))))
                          (if (pair? _%rest137866137874%_)
                              (let ((_%hd137871137900%_
                                     (##car _%rest137866137874%_))
                                    (_%tl137872137902%_
                                     (##cdr _%rest137866137874%_)))
                                (let* ((_%hd137905%_ _%hd137871137900%_)
                                       (_%rest137907%_ _%tl137872137902%_))
                                  (_%K137870137897%_
                                   _%rest137907%_
                                   _%hd137905%_)))
                              (_%else137868137885%_)))))))
                 (_%expanded-import?137844%_
                  (lambda (_%e137848%_)
                    (let ((_%$e137850%_
                           (##structure-direct-instance-of?
                            _%e137848%_
                            'gx#import-set::t)))
                      (if _%$e137850%_
                          _%$e137850%_
                          (let ((_%$e137853%_
                                 (##structure-direct-instance-of?
                                  _%e137848%_
                                  'gx#module-import::t)))
                            (if _%$e137853%_
                                _%$e137853%_
                                (##structure-instance-of?
                                 _%e137848%_
                                 'gx#module-context::t))))))))
          (let ((_%rbody137846%_
                 (gx#core-expand-import/export
                  _%stx137834%_
                  _%expanded-import?137844%_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _%expand1137837%_)))
            (if _%internal-expand?137835%_
                (reverse _%rbody137846%_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_%import!137843%_ _%rbody137846%_))
                 (gx#stx-source _%stx137834%_)))))))
    (define gx#core-expand-import%__0
      (lambda (_%stx138173%_)
        (let ((_%internal-expand?138175%_ '#f))
          (gx#core-expand-import%__%
           _%stx138173%_
           _%internal-expand?138175%_))))
    (define gx#core-expand-import%
      (lambda _g140829_
        (let ((_g140830_ (##length _g140829_)))
          (cond ((##fx= _g140830_ 1)
                 (apply gx#core-expand-import%__0 _g140829_))
                ((##fx= _g140830_ 2)
                 (apply gx#core-expand-import%__% _g140829_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g140829_))))))
    (define gx#core-import-nested-module
      (lambda (_%spath137761%_ _%where137762%_)
        (let* ((_%e137763137770%_ _%spath137761%_)
               (_%E137765137774%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e137763137770%_)))
               (_%E137764137829%_
                (lambda ()
                  (if (gx#stx-pair? _%e137763137770%_)
                      (let ((_%e137766137778%_
                             (gx#syntax-e _%e137763137770%_)))
                        (let ((_%hd137767137781%_ (##car _%e137766137778%_))
                              (_%tl137768137783%_ (##cdr _%e137766137778%_)))
                          (let* ((_%origin137786%_ _%hd137767137781%_)
                                 (_%sub137788%_ _%tl137768137783%_)
                                 (_%origin-ctx137790%_
                                  (if (gx#stx-false? _%origin137786%_)
                                      (gx#current-expander-context)
                                      (gx#import-module__0 _%origin137786%_))))
                            (let _%lp137792%_ ((_%rest137794%_ _%sub137788%_)
                                               (_%ctx137795%_
                                                _%origin-ctx137790%_))
                              (let* ((_%e137796137803%_ _%rest137794%_)
                                     (_%E137798137807%_
                                      (lambda () _%ctx137795%_))
                                     (_%E137797137825%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%e137796137803%_)
                                            (let ((_%e137799137811%_
                                                   (gx#syntax-e
                                                    _%e137796137803%_)))
                                              (let ((_%hd137800137814%_
                                                     (##car _%e137799137811%_))
                                                    (_%tl137801137816%_
                                                     (##cdr _%e137799137811%_)))
                                                (let* ((_%id137819%_
                                                        _%hd137800137814%_)
                                                       (_%rest137821%_
                                                        _%tl137801137816%_)
                                                       (_%bind137823%_
                                                        (gx#resolve-identifier__%
                                                         _%id137819%_
                                                         '0
                                                         _%ctx137795%_)))
                                                  (if (and (##structure-direct-instance-of?
                                                            _%bind137823%_
                                                            'gx#syntax-binding::t)
                                                           (##structure-instance-of?
                                                            (##unchecked-structure-ref
                                                             _%bind137823%_
                                                             '4
                                                             '#f
                                                             '#f)
                                                            'gx#module-context::t))
                                                      '#!void
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; not bound as module"
                                                       _%where137762%_
                                                       _%spath137761%_
                                                       _%id137819%_))
                                                  (_%lp137792%_
                                                   _%rest137821%_
                                                   (##unchecked-structure-ref
                                                    _%bind137823%_
                                                    '4
                                                    '#f
                                                    '#f)))))
                                            (_%E137798137807%_)))))
                                (_%E137797137825%_))))))
                      (_%E137765137774%_)))))
          (_%E137764137829%_))))
    (define gx#core-expand-import-source
      (lambda (_%hd137759%_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _%hd137759%_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_%stx137253%_ _%internal-expand?137254%_)
        (letrec* ((_%make-export__140758140759%_
                   (lambda (_%bind137707%_
                            _%phi137708%_
                            _%ctx137709%_
                            _%name137710%_)
                     (let* ((_%key137712%_
                             (##unchecked-structure-ref
                              _%bind137707%_
                              '2
                              '#f
                              '#f))
                            (_%export-key137714%_
                             (if _%name137710%_
                                 (gx#core-identifier-key _%name137710%_)
                                 _%key137712%_)))
                       (##structure
                        gx#module-export::t
                        _%ctx137709%_
                        _%key137712%_
                        _%phi137708%_
                        _%export-key137714%_
                        (let ((_%$e137717%_
                               (##structure-instance-of?
                                _%bind137707%_
                                'gx#extern-binding::t)))
                          (if _%$e137717%_
                              _%$e137717%_
                              (##structure-direct-instance-of?
                               _%bind137707%_
                               'gx#import-binding::t)))))))
                  (_%make-export__0__140760140763%_
                   (lambda (_%bind137723%_)
                     (let* ((_%phi137725%_ (gx#current-export-expander-phi))
                            (_%ctx137727%_ (gx#current-expander-context))
                            (_%name137729%_ '#f))
                       (_%make-export__140758140759%_
                        _%bind137723%_
                        _%phi137725%_
                        _%ctx137727%_
                        _%name137729%_))))
                  (_%make-export__1__140761140764%_
                   (lambda (_%bind137731%_ _%phi137732%_)
                     (let* ((_%ctx137734%_ (gx#current-expander-context))
                            (_%name137736%_ '#f))
                       (_%make-export__140758140759%_
                        _%bind137731%_
                        _%phi137732%_
                        _%ctx137734%_
                        _%name137736%_))))
                  (_%make-export__2__140762140765%_
                   (lambda (_%bind137738%_ _%phi137739%_ _%ctx137740%_)
                     (let ((_%name137742%_ '#f))
                       (_%make-export__140758140759%_
                        _%bind137738%_
                        _%phi137739%_
                        _%ctx137740%_
                        _%name137742%_))))
                  (_%make-export137256%_
                   (lambda _g140831_
                     (let ((_g140832_ (##length _g140831_)))
                       (cond ((##fx= _g140832_ 1)
                              (apply _%make-export__0__140760140763%_
                                     _g140831_))
                             ((##fx= _g140832_ 2)
                              (apply _%make-export__1__140761140764%_
                                     _g140831_))
                             ((##fx= _g140832_ 3)
                              (apply _%make-export__2__140762140765%_
                                     _g140831_))
                             ((##fx= _g140832_ 4)
                              (apply _%make-export__140758140759%_ _g140831_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g140831_))))))
                  (_%expand1137257%_
                   (lambda (_%hd137412%_
                            _%K137413%_
                            _%rest137414%_
                            _%r137415%_)
                     (let* ((_%e137416137448%_ _%hd137412%_)
                            (_%E137443137452%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _%stx137253%_
                                _%hd137412%_)))
                            (_%E137433137536%_
                             (lambda ()
                               (if (gx#stx-pair? _%e137416137448%_)
                                   (let ((_%e137444137456%_
                                          (gx#syntax-e _%e137416137448%_)))
                                     (let ((_%hd137445137459%_
                                            (##car _%e137444137456%_))
                                           (_%tl137446137461%_
                                            (##cdr _%e137444137456%_)))
                                       (if (eq? (gx#stx-e _%hd137445137459%_)
                                                'import:)
                                           (let ((_%in137464%_
                                                  _%tl137446137461%_))
                                             (if (gx#stx-list? _%in137464%_)
                                                 (let _%lp137466%_ ((_%in-rest137468%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%in137464%_)
                            (_%r137469%_ _%r137415%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%e137470137477%_
                                                           _%in-rest137468%_)
                                                          (_%E137472137481%_
                                                           (lambda ()
                                                             (_%K137413%_
                                                              _%rest137414%_
                                                              _%r137469%_)))
                                                          (_%E137471137532%_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%e137470137477%_)
                         (let ((_%e137473137485%_
                                (gx#syntax-e _%e137470137477%_)))
                           (let ((_%hd137474137488%_ (##car _%e137473137485%_))
                                 (_%tl137475137490%_
                                  (##cdr _%e137473137485%_)))
                             (let* ((_%hd137493%_ _%hd137474137488%_)
                                    (_%in-rest137495%_ _%tl137475137490%_)
                                    (_%src137530%_
                                     (if (gx#core-bound-module? _%hd137493%_)
                                         (gx#syntax-local-e__0 _%hd137493%_)
                                         (if (gx#core-library-module-path?
                                              _%hd137493%_)
                                             (gx#import-module__0
                                              (gx#core-resolve-library-module-path
                                               _%hd137493%_))
                                             (if (gx#core-library-relative-module-path?
                                                  _%hd137493%_)
                                                 (gx#import-module__0
                                                  (gx#core-resolve-library-relative-module-path
                                                   _%hd137493%_))
                                                 (if (gx#stx-string?
                                                      _%hd137493%_)
                                                     (gx#import-module__0
                                                      (gx#core-resolve-module-path__%
                                                       _%hd137493%_
                                                       (gx#stx-source
                                                        _%stx137253%_)))
                                                     (let* ((_%e137501137508%_
                                                             _%hd137493%_)
                                                            (_%E137503137512%_
                                                             (lambda ()
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; illegal re-export"
                                                                _%stx137253%_
                                                                _%hd137493%_)))
                                                            (_%E137502137526%_
                                                             (lambda ()
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%e137501137508%_)
                           (let ((_%e137504137516%_
                                  (gx#syntax-e _%e137501137508%_)))
                             (let ((_%hd137505137519%_
                                    (##car _%e137504137516%_))
                                   (_%tl137506137521%_
                                    (##cdr _%e137504137516%_)))
                               (if (eq? (gx#stx-e _%hd137505137519%_) 'in:)
                                   (let ((_%spath137524%_ _%tl137506137521%_))
                                     (gx#core-import-nested-module
                                      _%spath137524%_
                                      _%stx137253%_))
                                   (_%E137503137512%_))))
                           (_%E137503137512%_)))))
               (_%E137502137526%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (_%lp137466%_
                                _%in-rest137495%_
                                (_%export-imports137258%_
                                 _%src137530%_
                                 _%r137469%_)))))
                         (_%E137472137481%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E137471137532%_)))
                                                 (_%E137443137452%_)))
                                           (_%E137443137452%_))))
                                   (_%E137443137452%_))))
                            (_%E137420137576%_
                             (lambda ()
                               (if (gx#stx-pair? _%e137416137448%_)
                                   (let ((_%e137434137540%_
                                          (gx#syntax-e _%e137416137448%_)))
                                     (let ((_%hd137435137543%_
                                            (##car _%e137434137540%_))
                                           (_%tl137436137545%_
                                            (##cdr _%e137434137540%_)))
                                       (if (eq? (gx#stx-e _%hd137435137543%_)
                                                'rename:)
                                           (if (gx#stx-pair?
                                                _%tl137436137545%_)
                                               (let ((_%e137437137548%_
                                                      (gx#syntax-e
                                                       _%tl137436137545%_)))
                                                 (let ((_%hd137438137551%_
                                                        (##car _%e137437137548%_))
                                                       (_%tl137439137553%_
                                                        (##cdr _%e137437137548%_)))
                                                   (let ((_%id137556%_
                                                          _%hd137438137551%_))
                                                     (if (gx#stx-pair?
                                                          _%tl137439137553%_)
                                                         (let ((_%e137440137558%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl137439137553%_)))
                   (let ((_%hd137441137561%_ (##car _%e137440137558%_))
                         (_%tl137442137563%_ (##cdr _%e137440137558%_)))
                     (let ((_%name137566%_ _%hd137441137561%_))
                       (if (gx#stx-null? _%tl137442137563%_)
                           (let* ((_%phi137568%_
                                   (gx#current-export-expander-phi))
                                  (_%$e137570%_
                                   (gx#core-resolve-identifier__1
                                    _%id137556%_
                                    _%phi137568%_)))
                             (if _%$e137570%_
                                 ((lambda (_%bind137573%_)
                                    (_%K137413%_
                                     _%rest137414%_
                                     (cons (_%make-export__140758140759%_
                                            _%bind137573%_
                                            _%phi137568%_
                                            (gx#current-expander-context)
                                            _%name137566%_)
                                           _%r137415%_)))
                                  _%$e137570%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Reference to unbound identifier"
                                  _%stx137253%_
                                  _%hd137412%_
                                  _%id137556%_)))
                           (_%E137433137536%_)))))
                 (_%E137433137536%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E137433137536%_))
                                           (_%E137433137536%_))))
                                   (_%E137433137536%_))))
                            (_%E137419137626%_
                             (lambda ()
                               (if (gx#stx-pair? _%e137416137448%_)
                                   (let ((_%e137421137580%_
                                          (gx#syntax-e _%e137416137448%_)))
                                     (let ((_%hd137422137583%_
                                            (##car _%e137421137580%_))
                                           (_%tl137423137585%_
                                            (##cdr _%e137421137580%_)))
                                       (if (eq? (gx#stx-e _%hd137422137583%_)
                                                'spec:)
                                           (if (gx#stx-pair?
                                                _%tl137423137585%_)
                                               (let ((_%e137424137588%_
                                                      (gx#syntax-e
                                                       _%tl137423137585%_)))
                                                 (let ((_%hd137425137591%_
                                                        (##car _%e137424137588%_))
                                                       (_%tl137426137593%_
                                                        (##cdr _%e137424137588%_)))
                                                   (let ((_%phi137596%_
                                                          _%hd137425137591%_))
                                                     (if (gx#stx-pair?
                                                          _%tl137426137593%_)
                                                         (let ((_%e137427137598%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl137426137593%_)))
                   (let ((_%hd137428137601%_ (##car _%e137427137598%_))
                         (_%tl137429137603%_ (##cdr _%e137427137598%_)))
                     (let ((_%id137606%_ _%hd137428137601%_))
                       (if (gx#stx-pair? _%tl137429137603%_)
                           (let ((_%e137430137608%_
                                  (gx#syntax-e _%tl137429137603%_)))
                             (let ((_%hd137431137611%_
                                    (##car _%e137430137608%_))
                                   (_%tl137432137613%_
                                    (##cdr _%e137430137608%_)))
                               (let ((_%name137616%_ _%hd137431137611%_))
                                 (if (gx#stx-null? _%tl137432137613%_)
                                     (if (and (gx#stx-fixnum? _%phi137596%_)
                                              (gx#identifier? _%id137606%_)
                                              (gx#identifier? _%name137616%_))
                                         (let* ((_%phi137618%_
                                                 (gx#stx-e _%phi137596%_))
                                                (_%$e137620%_
                                                 (gx#core-resolve-identifier__1
                                                  _%id137606%_
                                                  _%phi137618%_)))
                                           (if _%$e137620%_
                                               ((lambda (_%bind137623%_)
                                                  (_%K137413%_
                                                   _%rest137414%_
                                                   (cons (_%make-export__140758140759%_
                                                          _%bind137623%_
                                                          _%phi137618%_
                                                          (gx#current-expander-context)
                                                          _%name137616%_)
                                                         _%r137415%_)))
                                                _%$e137620%_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _%stx137253%_
                                                _%hd137412%_
                                                _%id137606%_)))
                                         (_%E137420137576%_))
                                     (_%E137420137576%_)))))
                           (_%E137420137576%_)))))
                 (_%E137420137576%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E137420137576%_))
                                           (_%E137420137576%_))))
                                   (_%E137420137576%_))))
                            (_%E137418137638%_
                             (lambda ()
                               (let ((_%id137630%_ _%e137416137448%_))
                                 (if (gx#identifier? _%id137630%_)
                                     (let ((_%$e137632%_
                                            (gx#core-resolve-identifier__1
                                             _%id137630%_
                                             (gx#current-export-expander-phi))))
                                       (if _%$e137632%_
                                           ((lambda (_%bind137635%_)
                                              (_%K137413%_
                                               _%rest137414%_
                                               (cons (_%make-export__0__140760140763%_
                                                      _%bind137635%_)
                                                     _%r137415%_)))
                                            _%$e137632%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _%stx137253%_
                                            _%hd137412%_)))
                                     (_%E137419137626%_)))))
                            (_%E137417137702%_
                             (lambda ()
                               (if (eq? (gx#stx-e _%e137416137448%_) '#t)
                                   (let* ((_%current-ctx137642%_
                                           (gx#current-expander-context))
                                          (_%current-phi137644%_
                                           (gx#current-export-expander-phi))
                                          (_%phi-ctx137646%_
                                           (gx#core-context-shift
                                            _%current-ctx137642%_
                                            _%current-phi137644%_))
                                          (_%phi-bind137648%_
                                           (hash->list
                                            (##unchecked-structure-ref
                                             _%phi-ctx137646%_
                                             '2
                                             '#f
                                             '#f))))
                                     (let _%lp137651%_ ((_%bind-rest137653%_
                                                         _%phi-bind137648%_)
                                                        (_%set137654%_ '()))
                                       (let* ((_%bind-rest137655137665%_
                                               _%bind-rest137653%_)
                                              (_%else137657137673%_
                                               (lambda ()
                                                 (_%K137413%_
                                                  _%rest137414%_
                                                  (cons (##structure
                                                         gx#export-set::t
                                                         '#f
                                                         _%current-phi137644%_
                                                         _%set137654%_)
                                                        _%r137415%_))))
                                              (_%K137659137683%_
                                               (lambda (_%bind-rest137676%_
                                                        _%bind137677%_
                                                        _%key137678%_)
                                                 (if (or (##structure-direct-instance-of?
                                                          _%bind137677%_
                                                          'gx#import-binding::t)
                                                         (gx#private-feature-binding?
                                                          _%bind137677%_))
                                                     (_%lp137651%_
                                                      _%bind-rest137676%_
                                                      _%set137654%_)
                                                     (_%lp137651%_
                                                      _%bind-rest137676%_
                                                      (cons (_%make-export__2__140762140765%_
                                                             _%bind137677%_
                                                             _%current-phi137644%_
                                                             _%current-ctx137642%_)
                                                            _%set137654%_))))))
                                         (if (pair? _%bind-rest137655137665%_)
                                             (let ((_%hd137660137686%_
                                                    (##car _%bind-rest137655137665%_))
                                                   (_%tl137661137688%_
                                                    (##cdr _%bind-rest137655137665%_)))
                                               (if (pair? _%hd137660137686%_)
                                                   (let ((_%hd137662137691%_
                                                          (##car _%hd137660137686%_))
                                                         (_%tl137663137693%_
                                                          (##cdr _%hd137660137686%_)))
                                                     (let* ((_%key137696%_
                                                             _%hd137662137691%_)
                                                            (_%bind137698%_
                                                             _%tl137663137693%_)
                                                            (_%bind-rest137700%_
                                                             _%tl137661137688%_))
                                                       (_%K137659137683%_
                                                        _%bind-rest137700%_
                                                        _%bind137698%_
                                                        _%key137696%_)))
                                                   (_%else137657137673%_)))
                                             (_%else137657137673%_)))))
                                   (_%E137418137638%_)))))
                       (_%E137417137702%_))))
                  (_%export-imports137258%_
                   (lambda (_%src137288%_ _%r137289%_)
                     (letrec* ((_%current-ctx137291%_
                                (gx#current-expander-context))
                               (_%current-phi137292%_
                                (gx#current-export-expander-phi))
                               (_%import->export137293%_
                                (lambda (_%in137374%_)
                                  (let* ((_%in137375137383%_ _%in137374%_)
                                         (_%E137377137387%_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _%in137375137383%_
                                                   '((module-import
                                                      out
                                                      key
                                                      phi)))
                                            '#!void))
                                         (_%K137378137394%_
                                          (lambda (_%phi137390%_
                                                   _%key137391%_
                                                   _%out137392%_)
                                            (##structure
                                             gx#module-export::t
                                             _%current-ctx137291%_
                                             _%key137391%_
                                             _%phi137390%_
                                             _%key137391%_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _%in137375137383%_
                                         'gx#module-import::t)
                                        (let* ((_%e137379137397%_
                                                (##unchecked-structure-ref
                                                 _%in137375137383%_
                                                 '1
                                                 '#f
                                                 '#f))
                                               (_%out137400%_
                                                _%e137379137397%_)
                                               (_%e137380137402%_
                                                (##unchecked-structure-ref
                                                 _%in137375137383%_
                                                 '2
                                                 '#f
                                                 '#f))
                                               (_%key137405%_
                                                _%e137380137402%_)
                                               (_%e137381137407%_
                                                (##unchecked-structure-ref
                                                 _%in137375137383%_
                                                 '3
                                                 '#f
                                                 '#f))
                                               (_%phi137410%_
                                                _%e137381137407%_))
                                          (_%K137378137394%_
                                           _%phi137410%_
                                           _%key137405%_
                                           _%out137400%_))
                                        (_%E137377137387%_)))))
                               (_%fold-e137294%_
                                (lambda (_%in137296%_ _%r137297%_)
                                  (let* ((_%in137298137312%_ _%in137296%_)
                                         (_%else137301137320%_
                                          (lambda () _%r137297%_)))
                                    (let ((_%K137307137356%_
                                           (lambda (_%phi137352%_
                                                    _%key137353%_
                                                    _%out137354%_)
                                             (if (and (fx= _%phi137352%_
                                                           _%current-phi137292%_)
                                                      (eq? _%src137288%_
                                                           (##unchecked-structure-ref
                                                            _%out137354%_
                                                            '1
                                                            '#f
                                                            '#f)))
                                                 (cons (_%import->export137293%_
                                                        _%in137296%_)
                                                       _%r137297%_)
                                                 _%r137297%_)))
                                          (_%K137303137331%_
                                           (lambda (_%imports137324%_
                                                    _%phi137325%_
                                                    _%ctx137326%_)
                                             (if (and (fx= _%phi137325%_
                                                           _%current-phi137292%_)
                                                      (eq? _%src137288%_
                                                           _%ctx137326%_))
                                                 (__foldl1
                                                  (lambda (_%in137328%_
                                                           _%r137329%_)
                                                    (cons (_%import->export137293%_
                                                           _%in137328%_)
                                                          _%r137329%_))
                                                  _%r137297%_
                                                  _%imports137324%_)
                                                 _%r137297%_))))
                                      (let ((_%try-match137300137349%_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _%in137298137312%_
                                                    'gx#import-set::t)
                                                   (let* ((_%e137304137334%_
                                                           (##unchecked-structure-ref
                                                            _%in137298137312%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                          (_%e137305137339%_
                                                           (##unchecked-structure-ref
                                                            _%in137298137312%_
                                                            '2
                                                            '#f
                                                            '#f))
                                                          (_%e137306137344%_
                                                           (##unchecked-structure-ref
                                                            _%in137298137312%_
                                                            '3
                                                            '#f
                                                            '#f)))
                                                     (let ((_%ctx137337%_
                                                            _%e137304137334%_)
                                                           (_%phi137342%_
                                                            _%e137305137339%_)
                                                           (_%imports137347%_
                                                            _%e137306137344%_))
                                                       (_%K137303137331%_
                                                        _%imports137347%_
                                                        _%phi137342%_
                                                        _%ctx137337%_)))
                                                   (_%else137301137320%_)))))
                                        (if (##structure-direct-instance-of?
                                             _%in137298137312%_
                                             'gx#module-import::t)
                                            (let* ((_%e137308137359%_
                                                    (##unchecked-structure-ref
                                                     _%in137298137312%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                   (_%e137309137364%_
                                                    (##unchecked-structure-ref
                                                     _%in137298137312%_
                                                     '2
                                                     '#f
                                                     '#f))
                                                   (_%e137310137369%_
                                                    (##unchecked-structure-ref
                                                     _%in137298137312%_
                                                     '3
                                                     '#f
                                                     '#f)))
                                              (let ((_%out137362%_
                                                     _%e137308137359%_)
                                                    (_%key137367%_
                                                     _%e137309137364%_)
                                                    (_%phi137372%_
                                                     _%e137310137369%_))
                                                (_%K137307137356%_
                                                 _%phi137372%_
                                                 _%key137367%_
                                                 _%out137362%_)))
                                            (_%try-match137300137349%_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _%src137288%_
                              _%current-phi137292%_
                              (__foldl1
                               _%fold-e137294%_
                               '()
                               (##unchecked-structure-ref
                                _%current-ctx137291%_
                                '8
                                '#f
                                '#f)))
                             _%r137289%_))))
                  (_%export!137259%_
                   (lambda (_%rbody137275%_)
                     (letrec* ((_%current-ctx137277%_
                                (gx#current-expander-context))
                               (_%fold-e137278%_
                                (lambda (_%out137282%_ _%r137283%_)
                                  (if (##structure-direct-instance-of?
                                       _%out137282%_
                                       'gx#module-export::t)
                                      (cons _%out137282%_ _%r137283%_)
                                      (if (##structure-direct-instance-of?
                                           _%out137282%_
                                           'gx#export-set::t)
                                          (__foldl1
                                           cons
                                           _%r137283%_
                                           (##unchecked-structure-ref
                                            _%out137282%_
                                            '3
                                            '#f
                                            '#f))
                                          _%r137283%_)))))
                       (let ((_%body137280%_ (reverse _%rbody137275%_)))
                         (##unchecked-structure-set!
                          _%current-ctx137277%_
                          (__foldl1
                           _%fold-e137278%_
                           (##unchecked-structure-ref
                            _%current-ctx137277%_
                            '9
                            '#f
                            '#f)
                           _%body137280%_)
                          '9
                          '#f
                          '#f)
                         _%body137280%_))))
                  (_%expanded-export?137260%_
                   (lambda (_%e137270%_)
                     (let ((_%$e137272%_
                            (##structure-direct-instance-of?
                             _%e137270%_
                             'gx#module-export::t)))
                       (if _%$e137272%_
                           _%$e137272%_
                           (##structure-direct-instance-of?
                            _%e137270%_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _%internal-expand?137254%_)
              (let ((_%rbody137266%_
                     (gx#core-expand-import/export
                      _%stx137253%_
                      _%expanded-export?137260%_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _%expand1137257%_)))
                (if _%internal-expand?137254%_
                    (reverse _%rbody137266%_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons
                      '%#export
                      (_%export!137259%_ _%rbody137266%_))
                     (gx#stx-source _%stx137253%_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _%stx137253%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _%stx137253%_))))))
    (define gx#core-expand-export%__0
      (lambda (_%stx137752%_)
        (let ((_%internal-expand?137754%_ '#f))
          (gx#core-expand-export%__%
           _%stx137752%_
           _%internal-expand?137754%_))))
    (define gx#core-expand-export%
      (lambda _g140833_
        (let ((_g140834_ (##length _g140833_)))
          (cond ((##fx= _g140834_ 1)
                 (apply gx#core-expand-export%__0 _g140833_))
                ((##fx= _g140834_ 2)
                 (apply gx#core-expand-export%__% _g140833_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g140833_))))))
    (define gx#core-expand-export-source
      (lambda (_%hd137250%_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _%hd137250%_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_%stx137220%_)
        (let* ((_%e137221137228%_ _%stx137220%_)
               (_%E137223137232%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e137221137228%_)))
               (_%E137222137246%_
                (lambda ()
                  (if (gx#stx-pair? _%e137221137228%_)
                      (let ((_%e137224137236%_
                             (gx#syntax-e _%e137221137228%_)))
                        (let ((_%hd137225137239%_ (##car _%e137224137236%_))
                              (_%tl137226137241%_ (##cdr _%e137224137236%_)))
                          (let ((_%body137244%_ _%tl137226137241%_))
                            (if (gx#identifier-list? _%body137244%_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _%body137244%_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _%body137244%_))
                                   (gx#stx-source _%stx137220%_)))
                                (_%E137223137232%_)))))
                      (_%E137223137232%_)))))
          (_%E137222137246%_))))
    (define gx#core-bind-feature!__%
      (lambda (_%id137186%_ _%private?137187%_ _%phi137188%_ _%ctx137189%_)
        (gx#core-bind-syntax!__%
         _%id137186%_
         ((if _%private?137187%_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _%id137186%_))
         _%private?137187%_
         _%phi137188%_
         _%ctx137189%_)))
    (define gx#core-bind-feature!__0
      (lambda (_%id137194%_)
        (let* ((_%private?137196%_ '#f)
               (_%phi137198%_ (gx#current-expander-phi))
               (_%ctx137200%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id137194%_
           _%private?137196%_
           _%phi137198%_
           _%ctx137200%_))))
    (define gx#core-bind-feature!__1
      (lambda (_%id137202%_ _%private?137203%_)
        (let* ((_%phi137205%_ (gx#current-expander-phi))
               (_%ctx137207%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id137202%_
           _%private?137203%_
           _%phi137205%_
           _%ctx137207%_))))
    (define gx#core-bind-feature!__2
      (lambda (_%id137209%_ _%private?137210%_ _%phi137211%_)
        (let ((_%ctx137213%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id137209%_
           _%private?137210%_
           _%phi137211%_
           _%ctx137213%_))))
    (define gx#core-bind-feature!
      (lambda _g140835_
        (let ((_g140836_ (##length _g140835_)))
          (cond ((##fx= _g140836_ 1)
                 (apply gx#core-bind-feature!__0 _g140835_))
                ((##fx= _g140836_ 2)
                 (apply gx#core-bind-feature!__1 _g140835_))
                ((##fx= _g140836_ 3)
                 (apply gx#core-bind-feature!__2 _g140835_))
                ((##fx= _g140836_ 4)
                 (apply gx#core-bind-feature!__% _g140835_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g140835_))))))))
