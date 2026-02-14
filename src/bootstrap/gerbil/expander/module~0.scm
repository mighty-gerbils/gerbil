(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1771030481)
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
      (lambda _%$args184837%_
        (apply make-instance gx#module-import::t _%$args184837%_)))
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
      (lambda _%$args184834%_
        (apply make-instance gx#module-export::t _%$args184834%_)))
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
      (lambda _%$args184831%_
        (apply make-instance gx#import-set::t _%$args184831%_)))
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
      (lambda _%$args184828%_
        (apply make-instance gx#export-set::t _%$args184828%_)))
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
      (lambda _%$args184825%_
        (apply make-instance gx#import-expander::t _%$args184825%_)))
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
      (lambda _%$args184822%_
        (apply make-instance gx#export-expander::t _%$args184822%_)))
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
      (lambda _%$args184819%_
        (apply make-instance gx#import-export-expander::t _%$args184819%_)))
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
      (lambda (_%path184816%_ _%fun184817%_)
        (call-with-input-file
         (cons 'path: (cons _%path184816%_ gx#source-file-settings))
         _%fun184817%_)))
    (define gx#module-context:::init!
      (lambda (_%self184799%_
               _%id184800%_
               _%super184801%_
               _%ns184802%_
               _%path184803%_)
        (let ((_%self184806%_ _%self184799%_))
          (if (##fx< '11 (##structure-length _%self184806%_))
              (begin
                (##unchecked-structure-set!
                 _%self184806%_
                 _%id184800%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self184806%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self184806%_
                 _%super184801%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self184806%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self184806%_ '#f '5 '#f '#f)
                (##unchecked-structure-set!
                 _%self184806%_
                 _%ns184802%_
                 '6
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self184806%_
                 _%path184803%_
                 '7
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self184806%_ '() '8 '#f '#f)
                (##unchecked-structure-set! _%self184806%_ '() '9 '#f '#f)
                (##unchecked-structure-set! _%self184806%_ '#f '10 '#f '#f)
                (##unchecked-structure-set! _%self184806%_ '#f '11 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self184806%_
                     '11
                     (##structure-length _%self184806%_))))))
    (__bind-method!__%
     gx#module-context::t
     ':init!
     gx#module-context:::init!
     '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_%self184632%_ _%ctx184633%_ _%root184634%_)
        (let* ((_%self184637%_ _%self184632%_)
               (_%super184653%_
                (let ((_%$e184647%_ _%root184634%_))
                  (if _%$e184647%_
                      _%$e184647%_
                      (let ((_%$e184650%_ (gx#core-context-root__0)))
                        (if _%$e184650%_
                            _%$e184650%_
                            (let ((__obj184881
                                   (##structure gx#root-context::t '#f '#f)))
                              (let ((__constructor184882
                                     (direct-method-ref
                                      gx#root-context::t
                                      __obj184881
                                      ':init!)))
                                (if __constructor184882
                                    (__constructor184882 __obj184881)
                                    (error '"missing constructor method implementation"
                                           'class:
                                           gx#root-context::t
                                           'method:
                                           ':init!)))
                              __obj184881)))))))
          (if _%ctx184633%_
              (let ((_%id184656%_
                     (##structure-ref
                      _%ctx184633%_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_%path184657%_
                     (##structure-ref
                      _%ctx184633%_
                      '7
                      gx#module-context::t
                      '#f))
                    (_%in184658%_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _%ctx184633%_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_%e184659%_
                     (__make-atomic-promise
                      (lambda () (gx#eval-module _%ctx184633%_)))))
                (if (##fx< '8 (##structure-length _%self184637%_))
                    (begin
                      (##unchecked-structure-set!
                       _%self184637%_
                       _%id184656%_
                       '1
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self184637%_
                       (make-hash-table-eq 'size: (##length _%in184658%_))
                       '2
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self184637%_
                       _%super184653%_
                       '3
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self184637%_
                       '#f
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self184637%_
                       '#f
                       '5
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self184637%_
                       _%path184657%_
                       '6
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self184637%_
                       _%in184658%_
                       '7
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self184637%_
                       _%e184659%_
                       '8
                       '#f
                       '#f)
                      '#!void)
                    (error '"struct-instance-init!: too many arguments for struct"
                           _%self184637%_
                           '8
                           (##structure-length _%self184637%_)))
                (##for-each
                 (lambda (_%g184660184662%_)
                   (gx#core-bind-weak-import!__%
                    _%g184660184662%_
                    _%self184637%_))
                 _%in184658%_))
              (if (##fx< '8 (##structure-length _%self184637%_))
                  (begin
                    (##unchecked-structure-set! _%self184637%_ '#f '1 '#f '#f)
                    (##unchecked-structure-set!
                     _%self184637%_
                     (make-hash-table-eq)
                     '2
                     '#f
                     '#f)
                    (##unchecked-structure-set!
                     _%self184637%_
                     _%super184653%_
                     '3
                     '#f
                     '#f)
                    (##unchecked-structure-set! _%self184637%_ '#f '4 '#f '#f)
                    (##unchecked-structure-set! _%self184637%_ '#f '5 '#f '#f)
                    (##unchecked-structure-set! _%self184637%_ '#f '6 '#f '#f)
                    (##unchecked-structure-set! _%self184637%_ '() '7 '#f '#f)
                    (##unchecked-structure-set! _%self184637%_ '#f '8 '#f '#f)
                    '#!void)
                  (error '"struct-instance-init!: too many arguments for struct"
                         _%self184637%_
                         '8
                         (##structure-length _%self184637%_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_%self184668%_ _%ctx184669%_)
        (let ((_%root184671%_ '#f))
          (gx#prelude-context:::init!__%
           _%self184668%_
           _%ctx184669%_
           _%root184671%_))))
    (define gx#prelude-context:::init!
      (lambda _g184888_
        (let ((_g184889_ (##length _g184888_)))
          (cond ((##fx= _g184889_ 2)
                 (apply gx#prelude-context:::init!__0 _g184888_))
                ((##fx= _g184889_ 3)
                 (apply gx#prelude-context:::init!__% _g184888_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g184888_))))))
    (__bind-method!__%
     gx#prelude-context::t
     ':init!
     gx#prelude-context:::init!
     '#f)
    (define gx#import-export-expander-init!
      (lambda (_%self184506%_ _%e184507%_)
        (if (##fx< '3 (##structure-length _%self184506%_))
            (begin
              (##unchecked-structure-set!
               _%self184506%_
               _%e184507%_
               '1
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self184506%_
               (gx#current-expander-context)
               '2
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self184506%_
               (##fx- (gx#current-expander-phi) '1)
               '3
               '#f
               '#f)
              '#!void)
            (error '"struct-instance-init!: too many arguments for struct"
                   _%self184506%_
                   '3
                   (##structure-length _%self184506%_)))))
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
      (lambda (_%g184132184135%_ _%g184133184137%_)
        (gx#core-apply-user-expander__%
         _%g184132184135%_
         _%g184133184137%_
         'apply-import-expander)))
    (__bind-method!__%
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_%g184003184006%_ _%g184004184008%_)
        (gx#core-apply-user-expander__%
         _%g184003184006%_
         _%g184004184008%_
         'apply-export-expander)))
    (__bind-method!__%
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_%ctx183874%_)
        (let* ((_%path183876%_
                (##structure-ref _%ctx183874%_ '7 gx#module-context::t '#f))
               (_%path183878%_
                (if (pair? _%path183876%_)
                    (##last _%path183876%_)
                    _%path183876%_)))
          (if (string? _%path183878%_) _%path183878%_ '#f))))
    (define gx#import-module__%
      (lambda (_%path183850%_ _%reload?183851%_ _%eval?183852%_)
        (let ((_%ctx183854%_
               ((gx#current-expander-module-import)
                _%path183850%_
                _%reload?183851%_)))
          (if (and _%ctx183854%_ _%eval?183852%_)
              (gx#eval-module _%ctx183854%_)
              '#!void)
          _%ctx183854%_)))
    (define gx#import-module__0
      (lambda (_%path183859%_)
        (let* ((_%reload?183861%_ '#f) (_%eval?183863%_ '#f))
          (gx#import-module__%
           _%path183859%_
           _%reload?183861%_
           _%eval?183863%_))))
    (define gx#import-module__1
      (lambda (_%path183865%_ _%reload?183866%_)
        (let ((_%eval?183868%_ '#f))
          (gx#import-module__%
           _%path183865%_
           _%reload?183866%_
           _%eval?183868%_))))
    (define gx#import-module
      (lambda _g184890_
        (let ((_g184891_ (##length _g184890_)))
          (cond ((##fx= _g184891_ 1) (apply gx#import-module__0 _g184890_))
                ((##fx= _g184891_ 2) (apply gx#import-module__1 _g184890_))
                ((##fx= _g184891_ 3) (apply gx#import-module__% _g184890_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g184890_))))))
    (define gx#eval-module
      (lambda (_%mod183847%_)
        ((gx#current-expander-module-eval) _%mod183847%_)))
    (define gx#core-eval-module
      (lambda (_%obj183826%_)
        (letrec ((_%force-e183828%_
                  (lambda (_%getf183842%_ _%e183843%_)
                    (call-with-parameters__1
                     (lambda ()
                       (call-with-parameters__1
                        (lambda () (force (_%getf183842%_ _%e183843%_)))
                        gx#current-expander-phi
                        '0))
                     gx#current-expander-context
                     _%e183843%_))))
          (let _%recur183830%_ ((_%e183832%_ _%obj183826%_))
            (if (##structure-instance-of? _%e183832%_ 'gx#module-context::t)
                (let ()
                  (let ((_%$e183835%_
                         (gx#core-context-prelude__% _%e183832%_)))
                    (if _%$e183835%_ (_%recur183830%_ _%$e183835%_) '#!void))
                  (_%force-e183828%_ gx#module-context-e _%e183832%_))
                (if (##structure-instance-of?
                     _%e183832%_
                     'gx#prelude-context::t)
                    (_%force-e183828%_ gx#prelude-context-e _%e183832%_)
                    (if (gx#stx-string? _%e183832%_)
                        (_%recur183830%_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _%e183832%_)))
                        (if (gx#core-library-module-path? _%e183832%_)
                            (_%recur183830%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%e183832%_)))
                            (error '"cannot eval module" _%obj183826%_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_%ctx183806%_)
        (let _%lp183808%_ ((_%e183810%_ _%ctx183806%_))
          (if (or (##structure-instance-of? _%e183810%_ 'gx#module-context::t)
                  (##structure-instance-of? _%e183810%_ 'gx#local-context::t))
              (_%lp183808%_ (##unchecked-structure-ref _%e183810%_ '3 '#f '#f))
              (if (##structure-instance-of? _%e183810%_ 'gx#prelude-context::t)
                  _%e183810%_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_%ctx183822%_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _%ctx183822%_))))
    (define gx#core-context-prelude
      (lambda _g184892_
        (let ((_g184893_ (##length _g184892_)))
          (cond ((##fx= _g184893_ 0)
                 (apply gx#core-context-prelude__0 _g184892_))
                ((##fx= _g184893_ 1)
                 (apply gx#core-context-prelude__% _g184892_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g184892_))))))
    (define gx#core-module->prelude-context
      (lambda (_%ctx183797%_)
        (let ((_%$e183799%_ (__hash-get gx#__module-registry _%ctx183797%_)))
          (if _%$e183799%_
              _%$e183799%_
              (let ((_%pre183803%_
                     (let ((__obj184883
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
                        __obj184883
                        _%ctx183797%_)
                       __obj184883)))
                (__hash-put! gx#__module-registry _%ctx183797%_ _%pre183803%_)
                _%pre183803%_)))))
    (define gx#core-import-module__%
      (lambda (_%rpath183665%_ _%reload?183666%_)
        (letrec ((_%import-source183668%_
                  (lambda (_%path183756%_)
                    (if (member _%path183756%_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _%path183756%_)
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
                                      (let ((_g184894_
                                             (gx#core-read-module
                                              _%path183756%_)))
                                        (begin
                                          (let ((_g184895_
                                                 (if (##values? _g184894_)
                                                     (##values-length
                                                      _g184894_)
                                                     1)))
                                            (if (not (##fx= _g184895_ 4))
                                                (error "Context expects 4 values"
                                                       _g184895_)))
                                          (let ((_%pre183764%_
                                                 (##values-ref _g184894_ 0))
                                                (_%id183765%_
                                                 (##values-ref _g184894_ 1))
                                                (_%ns183766%_
                                                 (##values-ref _g184894_ 2))
                                                (_%body183767%_
                                                 (##values-ref _g184894_ 3)))
                                            (let* ((_%prelude183777%_
                                                    (if (##structure-instance-of?
                                                         _%pre183764%_
                                                         'gx#prelude-context::t)
                                                        _%pre183764%_
                                                        (if (##structure-instance-of?
                                                             _%pre183764%_
                                                             'gx#module-context::t)
                                                            (gx#core-module->prelude-context
                                                             _%pre183764%_)
                                                            (if (string? _%pre183764%_)
                                                                (gx#core-module->prelude-context
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#core-import-module__0 _%pre183764%_))
                        (if (not _%pre183764%_)
                            (let ((_%$e183773%_
                                   (gx#current-expander-module-prelude)))
                              (if _%$e183773%_
                                  _%$e183773%_
                                  (let ((__obj184884
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
                                     __obj184884
                                     '#f)
                                    __obj184884)))
                            (error '"cannot import module; unknown prelude"
                                   _%rpath183665%_
                                   _%pre183764%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%ctx183779%_
                                                    (let ((__obj184885
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
                                                       __obj184885
                                                       _%id183765%_
                                                       _%prelude183777%_
                                                       _%ns183766%_
                                                       _%path183756%_)
                                                      __obj184885))
                                                   (_%body183781%_
                                                    (gx#core-expand-module-begin
                                                     _%body183767%_
                                                     _%ctx183779%_))
                                                   (_%body183783%_
                                                    (gx#core-quote-syntax__%
                                                     (gx#core-cons
                                                      '%#begin
                                                      _%body183781%_)
                                                     _%path183756%_
                                                     _%ctx183779%_
                                                     '())))
                                              (##unchecked-structure-set!
                                               _%ctx183779%_
                                               (__make-atomic-promise
                                                (lambda ()
                                                  (gx#eval-syntax*
                                                   _%body183783%_)))
                                               '10
                                               '#f
                                               '#f)
                                              (##unchecked-structure-set!
                                               _%ctx183779%_
                                               _%body183783%_
                                               '11
                                               '#f
                                               '#f)
                                              (__hash-put!
                                               gx#__module-registry
                                               _%path183756%_
                                               _%ctx183779%_)
                                              (__hash-put!
                                               gx#__module-registry
                                               _%id183765%_
                                               _%ctx183779%_)
                                              _%ctx183779%_)))))
                                    gx#current-export-expander-phi
                                    '#f))
                                 gx#current-import-expander-phi
                                 '#f))
                              gx#current-expander-path
                              (cons _%path183756%_
                                    (gx#current-expander-path))))
                           gx#current-expander-phi
                           '0))
                        gx#current-expander-marks
                        '()))
                     gx#current-expander-context
                     (gx#core-context-root__0))))
                 (_%import-submodule183669%_
                  (lambda (_%rpath183685%_)
                    (let* ((_%rpath183686183693%_ _%rpath183685%_)
                           (_%E183688183696%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%rpath183686183693%_
                                     '([origin . refs]))
                              '#!void))
                           (_%K183689183744%_
                            (lambda (_%refs183699%_ _%origin183700%_)
                              (let ((_%ctx183702%_
                                     (if _%origin183700%_
                                         (gx#core-import-module__%
                                          _%origin183700%_
                                          _%reload?183666%_)
                                         (gx#current-expander-context))))
                                (let _%lp183704%_ ((_%rest183706%_
                                                    _%refs183699%_)
                                                   (_%ctx183707%_
                                                    _%ctx183702%_))
                                  (let* ((_%rest183708183716%_ _%rest183706%_)
                                         (_%else183710183724%_
                                          (lambda () _%ctx183707%_))
                                         (_%K183712183732%_
                                          (lambda (_%rest183727%_ _%id183728%_)
                                            (let ((_%bind183730%_
                                                   (gx#resolve-identifier__%
                                                    _%id183728%_
                                                    '0
                                                    _%ctx183707%_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _%bind183730%_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _%bind183730%_
                                                         '5
                                                         '#f
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_%lp183704%_
                                                   _%rest183727%_
                                                   (##unchecked-structure-ref
                                                    _%bind183730%_
                                                    '5
                                                    '#f
                                                    '#f))
                                                  (error '"cannot import submodule; not bound as a module"
                                                         _%rpath183685%_
                                                         _%id183728%_
                                                         _%bind183730%_))))))
                                    (if (pair? _%rest183708183716%_)
                                        (let ((_%hd183713183735%_
                                               (##car _%rest183708183716%_))
                                              (_%tl183714183737%_
                                               (##cdr _%rest183708183716%_)))
                                          (let* ((_%id183740%_
                                                  _%hd183713183735%_)
                                                 (_%rest183742%_
                                                  _%tl183714183737%_))
                                            (_%K183712183732%_
                                             _%rest183742%_
                                             _%id183740%_)))
                                        (_%else183710183724%_))))))))
                      (if (pair? _%rpath183686183693%_)
                          (let ((_%hd183690183747%_
                                 (##car _%rpath183686183693%_))
                                (_%tl183691183749%_
                                 (##cdr _%rpath183686183693%_)))
                            (let* ((_%origin183752%_ _%hd183690183747%_)
                                   (_%refs183754%_ _%tl183691183749%_))
                              (_%K183689183744%_
                               _%refs183754%_
                               _%origin183752%_)))
                          (_%E183688183696%_))))))
          (let ((_%$e183671%_
                 (if (not _%reload?183666%_)
                     (__hash-get gx#__module-registry _%rpath183665%_)
                     '#f)))
            (if _%$e183671%_
                _%$e183671%_
                (if (list? _%rpath183665%_)
                    (_%import-submodule183669%_ _%rpath183665%_)
                    (if (gx#core-library-module-path? _%rpath183665%_)
                        (let ((_%ctx183676%_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _%rpath183665%_)
                                _%reload?183666%_)))
                          (__hash-put!
                           gx#__module-registry
                           _%rpath183665%_
                           _%ctx183676%_)
                          _%ctx183676%_)
                        (let* ((_%npath183679%_
                                (path-normalize _%rpath183665%_))
                               (_%$e183681%_
                                (if (not _%reload?183666%_)
                                    (__hash-get
                                     gx#__module-registry
                                     _%npath183679%_)
                                    '#f)))
                          (if _%$e183681%_
                              _%$e183681%_
                              (_%import-source183668%_
                               _%npath183679%_))))))))))
    (define gx#core-import-module__0
      (lambda (_%rpath183790%_)
        (let ((_%reload?183792%_ '#f))
          (gx#core-import-module__% _%rpath183790%_ _%reload?183792%_))))
    (define gx#core-import-module
      (lambda _g184896_
        (let ((_g184897_ (##length _g184896_)))
          (cond ((##fx= _g184897_ 1)
                 (apply gx#core-import-module__0 _g184896_))
                ((##fx= _g184897_ 2)
                 (apply gx#core-import-module__% _g184896_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g184896_))))))
    (define gx#core-read-module
      (lambda (_%path183647%_)
        (__with-catch
         (lambda (_%exn183649%_)
           (if (datum-parsing-exception? _%exn183649%_)
               (let ((_%pos183651%_
                      (datum-parsing-exception-filepos _%exn183649%_)))
                 (if (= _%pos183651%_ '0)
                     (gx#core-read-module/lang _%path183647%_)
                     (gx#raise-syntax-error
                      'read-module
                      '"error reading module"
                      _%path183647%_
                      (call-with-parameters__1
                       (lambda ()
                         (call-with-output-string
                          '""
                          (lambda (_%g183653183655%_)
                            (display-exception__%
                             _%exn183649%_
                             _%g183653183655%_))))
                       dump-stack-trace?
                       '#f)
                      (cons 'line:
                            (cons (##filepos-line _%pos183651%_)
                                  (cons 'col:
                                        (cons (##filepos-col _%pos183651%_)
                                              '())))))))
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _%path183647%_
                (call-with-parameters__1
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_%g183658183660%_)
                      (display-exception__% _%exn183649%_ _%g183658183660%_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _%path183647%_)))))
    (define gx#core-read-module/sexp
      (lambda (_%path183499%_)
        (let _%lp183501%_ ((_%body183503%_
                            (read-syntax-from-file _%path183499%_))
                           (_%pre183504%_ '#f)
                           (_%ns183505%_ '#f)
                           (_%pkg183506%_ '#f))
          (let* ((_%e183507183531%_ _%body183503%_)
                 (_%E183523183557%_
                  (lambda ()
                    (let ((_g184898_
                           (if _%pkg183506%_
                               (values _%pre183504%_
                                       _%ns183505%_
                                       _%pkg183506%_)
                               (gx#core-read-module-package
                                _%path183499%_
                                _%pre183504%_
                                _%ns183505%_))))
                      (begin
                        (let ((_g184899_
                               (if (##values? _g184898_)
                                   (##values-length _g184898_)
                                   1)))
                          (if (not (##fx= _g184899_ 3))
                              (error "Context expects 3 values" _g184899_)))
                        (let ((_%pre183535%_ (##values-ref _g184898_ 0))
                              (_%ns183536%_ (##values-ref _g184898_ 1))
                              (_%pkg183537%_ (##values-ref _g184898_ 2)))
                          (let* ((_%prelude183543%_
                                  (if (gx#core-bound-module-prelude?
                                       _%pre183535%_)
                                      (gx#syntax-local-e__0 _%pre183535%_)
                                      (if (gx#core-library-module-path?
                                           _%pre183535%_)
                                          (gx#core-resolve-library-module-path
                                           _%pre183535%_)
                                          (if (gx#stx-string? _%pre183535%_)
                                              (gx#core-resolve-module-path__%
                                               _%pre183535%_
                                               _%path183499%_)
                                              (gx#stx-e _%pre183535%_)))))
                                 (_%path-id183545%_
                                  (gx#core-module-path->namespace
                                   _%path183499%_))
                                 (_%pkg-id183547%_
                                  (if _%pkg183537%_
                                      (##string-append
                                       _%pkg183537%_
                                       '"/"
                                       _%path-id183545%_)
                                      _%path-id183545%_))
                                 (_%module-id183549%_
                                  (##string->symbol _%pkg-id183547%_))
                                 (_%module-ns183554%_
                                  (if (eq? _%ns183536%_ '#!void)
                                      '#f
                                      (let ((_%$e183551%_ _%ns183536%_))
                                        (if _%$e183551%_
                                            _%$e183551%_
                                            _%pkg-id183547%_)))))
                            (values _%prelude183543%_
                                    _%module-id183549%_
                                    _%module-ns183554%_
                                    _%body183503%_)))))))
                 (_%E183516183589%_
                  (lambda ()
                    (if (gx#stx-pair? _%e183507183531%_)
                        (let ((_%e183524183561%_
                               (gx#syntax-e _%e183507183531%_)))
                          (let ((_%hd183525183564%_ (##car _%e183524183561%_))
                                (_%tl183526183566%_ (##cdr _%e183524183561%_)))
                            (if (eq? (gx#stx-e _%hd183525183564%_) 'package:)
                                (if (gx#stx-pair? _%tl183526183566%_)
                                    (let ((_%e183527183569%_
                                           (gx#syntax-e _%tl183526183566%_)))
                                      (let ((_%hd183528183572%_
                                             (##car _%e183527183569%_))
                                            (_%tl183529183574%_
                                             (##cdr _%e183527183569%_)))
                                        (let* ((_%pkg183577%_
                                                _%hd183528183572%_)
                                               (_%rest183579%_
                                                _%tl183529183574%_)
                                               (_%pkg183587%_
                                                (if (gx#identifier?
                                                     _%pkg183577%_)
                                                    (symbol->string
                                                     (gx#stx-e _%pkg183577%_))
                                                    (if (or (gx#stx-string?
                                                             _%pkg183577%_)
                                                            (gx#stx-false?
                                                             _%pkg183577%_))
                                                        (gx#stx-e
                                                         _%pkg183577%_)
                                                        (gx#raise-syntax-error
                                                         'import
                                                         '"Bad syntax; Illegal package name"
                                                         _%pkg183577%_)))))
                                          (_%lp183501%_
                                           _%rest183579%_
                                           _%pre183504%_
                                           _%ns183505%_
                                           _%pkg183587%_))))
                                    (_%E183523183557%_))
                                (_%E183523183557%_))))
                        (_%E183523183557%_))))
                 (_%E183509183619%_
                  (lambda ()
                    (if (gx#stx-pair? _%e183507183531%_)
                        (let ((_%e183517183593%_
                               (gx#syntax-e _%e183507183531%_)))
                          (let ((_%hd183518183596%_ (##car _%e183517183593%_))
                                (_%tl183519183598%_ (##cdr _%e183517183593%_)))
                            (if (eq? (gx#stx-e _%hd183518183596%_) 'namespace:)
                                (if (gx#stx-pair? _%tl183519183598%_)
                                    (let ((_%e183520183601%_
                                           (gx#syntax-e _%tl183519183598%_)))
                                      (let ((_%hd183521183604%_
                                             (##car _%e183520183601%_))
                                            (_%tl183522183606%_
                                             (##cdr _%e183520183601%_)))
                                        (let* ((_%ns183609%_
                                                _%hd183521183604%_)
                                               (_%rest183611%_
                                                _%tl183522183606%_)
                                               (_%ns183617%_
                                                (if (gx#identifier?
                                                     _%ns183609%_)
                                                    (symbol->string
                                                     (gx#stx-e _%ns183609%_))
                                                    (if (gx#stx-string?
                                                         _%ns183609%_)
                                                        (gx#stx-e _%ns183609%_)
                                                        (if (gx#stx-false?
                                                             _%ns183609%_)
                                                            '#!void
                                                            (gx#raise-syntax-error
                                                             'import
                                                             '"Bad syntax; illegal namespace"
                                                             _%ns183609%_))))))
                                          (_%lp183501%_
                                           _%rest183611%_
                                           _%pre183504%_
                                           _%ns183617%_
                                           _%pkg183506%_))))
                                    (_%E183516183589%_))
                                (_%E183516183589%_))))
                        (_%E183516183589%_))))
                 (_%E183508183643%_
                  (lambda ()
                    (if (gx#stx-pair? _%e183507183531%_)
                        (let ((_%e183510183623%_
                               (gx#syntax-e _%e183507183531%_)))
                          (let ((_%hd183511183626%_ (##car _%e183510183623%_))
                                (_%tl183512183628%_ (##cdr _%e183510183623%_)))
                            (if (eq? (gx#stx-e _%hd183511183626%_) 'prelude:)
                                (if (gx#stx-pair? _%tl183512183628%_)
                                    (let ((_%e183513183631%_
                                           (gx#syntax-e _%tl183512183628%_)))
                                      (let ((_%hd183514183634%_
                                             (##car _%e183513183631%_))
                                            (_%tl183515183636%_
                                             (##cdr _%e183513183631%_)))
                                        (let* ((_%prelude183639%_
                                                _%hd183514183634%_)
                                               (_%rest183641%_
                                                _%tl183515183636%_))
                                          (_%lp183501%_
                                           _%rest183641%_
                                           _%prelude183639%_
                                           _%ns183505%_
                                           _%pkg183506%_))))
                                    (_%E183509183619%_))
                                (_%E183509183619%_))))
                        (_%E183509183619%_)))))
            (_%E183508183643%_)))))
    (define gx#core-read-module/lang
      (lambda (_%path183320%_)
        (letrec ((_%default-read-module-body183322%_
                  (lambda (_%inp183491%_)
                    (let _%lp183493%_ ((_%body183495%_ '()))
                      (let ((_%next183497%_ (read-syntax__% _%inp183491%_)))
                        (if (eof-object? _%next183497%_)
                            (reverse _%body183495%_)
                            (_%lp183493%_
                             (cons _%next183497%_ _%body183495%_)))))))
                 (_%read-body183323%_
                  (lambda (_%inp183408%_
                           _%pre183409%_
                           _%ns183410%_
                           _%pkg183411%_
                           _%args183412%_)
                    (let ((_g184900_
                           (if _%pkg183411%_
                               (values _%pre183409%_
                                       _%ns183410%_
                                       _%pkg183411%_)
                               (gx#core-read-module-package
                                _%path183320%_
                                _%pre183409%_
                                _%ns183410%_))))
                      (begin
                        (let ((_g184901_
                               (if (##values? _g184900_)
                                   (##values-length _g184900_)
                                   1)))
                          (if (not (##fx= _g184901_ 3))
                              (error "Context expects 3 values" _g184901_)))
                        (let ((_%pre183414%_ (##values-ref _g184900_ 0))
                              (_%ns183415%_ (##values-ref _g184900_ 1))
                              (_%pkg183416%_ (##values-ref _g184900_ 2)))
                          (let* ((_%prelude183418%_
                                  (gx#import-module__0 _%pre183414%_))
                                 (_%read-module-body183473%_
                                  (let ((_%$e183464%_
                                         (__find (lambda (_%e183419183421%_)
                                                   (let* ((_%e183419183423183433%_
                                                           _%e183419183421%_)
                                                          (_%else183425183441%_
                                                           (lambda () '#f))
                                                          (_%K183427183445%_
                                                           (lambda () '#t)))
                                                     (if (##structure-direct-instance-of?
                                                          _%e183419183423183433%_
                                                          'gx#module-export::t)
                                                         (let* ((_%e183428183448%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##unchecked-structure-ref
                          _%e183419183423183433%_
                          '1
                          '#f
                          '#f))
                        (_%e183429183451%_
                         (##unchecked-structure-ref
                          _%e183419183423183433%_
                          '2
                          '#f
                          '#f))
                        (_%e183430183454%_
                         (##unchecked-structure-ref
                          _%e183419183423183433%_
                          '3
                          '#f
                          '#f)))
                   (if (##eq? _%e183430183454%_ '1)
                       (let ((_%e183431183457%_
                              (##unchecked-structure-ref
                               _%e183419183423183433%_
                               '4
                               '#f
                               '#f)))
                         (if ((lambda (_%g183459183461%_)
                                (eq? _%g183459183461%_ 'read-module-body))
                              _%e183431183457%_)
                             (_%K183427183445%_)
                             (_%else183425183441%_)))
                       (_%else183425183441%_)))
                 (_%else183425183441%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (##unchecked-structure-ref
                                                  _%prelude183418%_
                                                  '9
                                                  '#f
                                                  '#f))))
                                    (if _%$e183464%_
                                        ((lambda (_%xport183467%_)
                                           (let ((_%proc183470%_
                                                  (__with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _%xport183467%_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _%proc183470%_)
                                                 _%proc183470%_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _%path183320%_
                                                  _%pre183414%_
                                                  _%proc183470%_))))
                                         _%$e183464%_)
                                        _%default-read-module-body183322%_)))
                                 (_%path-id183475%_
                                  (gx#core-module-path->namespace
                                   _%path183320%_))
                                 (_%pkg-id183477%_
                                  (if _%pkg183416%_
                                      (##string-append
                                       _%pkg183416%_
                                       '"/"
                                       _%path-id183475%_)
                                      _%path-id183475%_))
                                 (_%module-id183479%_
                                  (##string->symbol _%pkg-id183477%_))
                                 (_%module-ns183484%_
                                  (let ((_%$e183481%_ _%ns183415%_))
                                    (if _%$e183481%_
                                        _%$e183481%_
                                        _%pkg-id183477%_)))
                                 (_%body183488%_
                                  (call-with-parameters__1
                                   (lambda ()
                                     (call-with-parameters__1
                                      (lambda ()
                                        (_%read-module-body183473%_
                                         _%inp183408%_))
                                      gx#current-module-reader-args
                                      _%args183412%_))
                                   gx#current-module-reader-path
                                   _%path183320%_)))
                            (values _%prelude183418%_
                                    _%module-id183479%_
                                    _%module-ns183484%_
                                    _%body183488%_)))))))
                 (_%string-e183324%_
                  (lambda (_%obj183402%_ _%what183403%_)
                    (if (string? _%obj183402%_)
                        _%obj183402%_
                        (if (symbol? _%obj183402%_)
                            (##symbol->string _%obj183402%_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _%what183403%_)
                             _%path183320%_
                             _%obj183402%_)))))
                 (_%read-lang-args183325%_
                  (lambda (_%inp183357%_ _%args183358%_)
                    (let* ((_%args183359183367%_ _%args183358%_)
                           (_%else183361183375%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _%path183320%_)))
                           (_%K183363183390%_
                            (lambda (_%args183378%_ _%prelude183379%_)
                              (let* ((_%pkg183381%_
                                      (pgetq__0 'package: _%args183378%_))
                                     (_%pkg183383%_
                                      (if _%pkg183381%_
                                          (_%string-e183324%_
                                           _%pkg183381%_
                                           '"package")
                                          '#f))
                                     (_%ns183385%_
                                      (pgetq__0 'namespace: _%args183378%_))
                                     (_%ns183387%_
                                      (if _%ns183385%_
                                          (_%string-e183324%_
                                           _%ns183385%_
                                           '"namespace")
                                          '#f)))
                                (_%read-body183323%_
                                 _%inp183357%_
                                 _%prelude183379%_
                                 _%ns183387%_
                                 _%pkg183383%_
                                 _%args183378%_)))))
                      (if (pair? _%args183359183367%_)
                          (let ((_%hd183364183393%_
                                 (##car _%args183359183367%_))
                                (_%tl183365183395%_
                                 (##cdr _%args183359183367%_)))
                            (let* ((_%prelude183398%_ _%hd183364183393%_)
                                   (_%args183400%_ _%tl183365183395%_))
                              (_%K183363183390%_
                               _%args183400%_
                               _%prelude183398%_)))
                          (_%else183361183375%_)))))
                 (_%read-lang183326%_
                  (lambda (_%inp183331%_)
                    (let* ((_%head183333%_ (read-line _%inp183331%_))
                           (_%$e183335%_
                            (string-index__0 _%head183333%_ '#\space)))
                      (if _%$e183335%_
                          ((lambda (_%ix183338%_)
                             (let ((_%lang183340%_
                                    (substring
                                     _%head183333%_
                                     '0
                                     _%ix183338%_)))
                               (if (equal? _%lang183340%_ '"#lang")
                                   (let* ((_%rest183342%_
                                           (substring
                                            _%head183333%_
                                            (##fx+ _%ix183338%_ '1)
                                            (string-length _%head183333%_)))
                                          (_%args183353%_
                                           (__with-catch
                                            (lambda (_%g183343183345%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _%path183320%_
                                               _%g183343183345%_))
                                            (lambda ()
                                              (call-with-input-string
                                               _%rest183342%_
                                               (lambda (_%g183348183350%_)
                                                 (read-all
                                                  _%g183348183350%_
                                                  read)))))))
                                     (_%read-lang-args183325%_
                                      _%inp183331%_
                                      _%args183353%_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _%path183320%_))))
                           _%$e183335%_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _%path183320%_)))))
                 (_%read-e183327%_
                  (lambda (_%inp183329%_)
                    (if (eq? (peek-char _%inp183329%_) '#\#)
                        (_%read-lang183326%_ _%inp183329%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _%path183320%_)))))
          (gx#call-with-input-source-file _%path183320%_ _%read-e183327%_))))
    (define gx#core-read-module-package
      (lambda (_%path183268%_ _%pre183269%_ _%ns183270%_)
        (letrec ((_%string-e183272%_
                  (lambda (_%e183315%_)
                    (if (symbol? _%e183315%_)
                        (##symbol->string _%e183315%_)
                        (if (string? _%e183315%_)
                            _%e183315%_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%e183315%_))))))
          (let _%lp183274%_ ((_%dir183276%_ (path-directory _%path183268%_))
                             (_%pkg-path183277%_ '()))
            (let ((_%gerbil.pkg183279%_
                   (path-expand '"gerbil.pkg" _%dir183276%_)))
              (if (##file-exists? _%gerbil.pkg183279%_)
                  (let ((_%plist183281%_
                         (gx#core-library-package-plist__% _%dir183276%_ '#t)))
                    (if (null? _%plist183281%_)
                        (let ((_%pkg183284%_
                               (if (null? _%pkg-path183277%_)
                                   '#f
                                   (string-join _%pkg-path183277%_ '"/"))))
                          (values _%pre183269%_ _%ns183270%_ _%pkg183284%_))
                        (if (list? _%plist183281%_)
                            (let* ((_%root183287%_
                                    (pgetq__0 'package: _%plist183281%_))
                                   (_%pkg183291%_
                                    (let ((_%pkg-path183289%_
                                           (if _%root183287%_
                                               (cons (_%string-e183272%_
                                                      _%root183287%_)
                                                     _%pkg-path183277%_)
                                               _%pkg-path183277%_)))
                                      (if (null? _%pkg-path183289%_)
                                          '#f
                                          (string-join
                                           _%pkg-path183289%_
                                           '"/"))))
                                   (_%ns183298%_
                                    (let ((_%ns183296%_
                                           (let ((_%$e183293%_ _%ns183270%_))
                                             (if _%$e183293%_
                                                 _%$e183293%_
                                                 (pgetq__0
                                                  'namespace:
                                                  _%plist183281%_)))))
                                      (if _%ns183296%_
                                          (_%string-e183272%_ _%ns183296%_)
                                          '#f)))
                                   (_%pre183303%_
                                    (let ((_%$e183300%_ _%pre183269%_))
                                      (if _%$e183300%_
                                          _%$e183300%_
                                          (pgetq__0
                                           'prelude:
                                           _%plist183281%_)))))
                              (values _%pre183303%_
                                      _%ns183298%_
                                      _%pkg183291%_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%plist183281%_))))
                  (let ((_%dir*183307%_
                         (path-strip-trailing-directory-separator
                          _%dir183276%_)))
                    (if (or (__string-empty? _%dir*183307%_)
                            (equal? _%dir183276%_ _%dir*183307%_))
                        (values _%pre183269%_ _%ns183270%_ '#f)
                        (let ((_%xpath183312%_
                               (path-strip-directory _%dir*183307%_))
                              (_%xdir183313%_ (path-directory _%dir*183307%_)))
                          (_%lp183274%_
                           _%xdir183313%_
                           (cons _%xpath183312%_ _%pkg-path183277%_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_%path183266%_)
        (path-strip-extension (path-strip-directory _%path183266%_))))
    (define gx#core-module-path->id
      (lambda (_%path183264%_)
        (##string->symbol (gx#core-module-path->namespace _%path183264%_))))
    (define gx#core-resolve-module-path__%
      (lambda (_%stx-path183243%_ _%rel183244%_)
        (let* ((_%path183246%_ (gx#stx-e _%stx-path183243%_))
               (_%path183248%_
                (if (__string-empty? (path-extension _%path183246%_))
                    (##string-append _%path183246%_ '".ss")
                    _%path183246%_)))
          (gx#core-resolve-path__%
           _%path183248%_
           (let ((_%$e183251%_ (gx#stx-source _%stx-path183243%_)))
             (if _%$e183251%_ _%$e183251%_ _%rel183244%_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_%stx-path183257%_)
        (let ((_%rel183259%_ '#f))
          (gx#core-resolve-module-path__% _%stx-path183257%_ _%rel183259%_))))
    (define gx#core-resolve-module-path
      (lambda _g184902_
        (let ((_g184903_ (##length _g184902_)))
          (cond ((##fx= _g184903_ 1)
                 (apply gx#core-resolve-module-path__0 _g184902_))
                ((##fx= _g184903_ 2)
                 (apply gx#core-resolve-module-path__% _g184902_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g184902_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_%libpath183128%_)
        (let* ((_%spath183130%_ (symbol->string (gx#stx-e _%libpath183128%_)))
               (_%spath183132%_
                (substring
                 _%spath183130%_
                 '1
                 (##string-length _%spath183130%_)))
               (_%ext183134%_ (path-extension _%spath183132%_))
               (_%ssi183136%_
                (if (__string-empty? _%ext183134%_)
                    (##string-append _%spath183132%_ '".ssi")
                    (##string-append
                     (path-strip-extension _%spath183132%_)
                     '".ssi")))
               (_%srcs183140%_
                (if (__string-empty? _%ext183134%_)
                    (##map (lambda (_%ext183138%_)
                             (string-append _%spath183132%_ _%ext183138%_))
                           '(".ss" ".sld" ".scm"))
                    (cons _%spath183132%_ '()))))
          (let _%lp183143%_ ((_%rest183145%_ (load-path)))
            (let* ((_%rest183146183155%_ _%rest183145%_)
                   (_%E183149183159%_
                    (lambda ()
                      (error '"No clause matching"
                             _%rest183146183155%_
                             '([dir . rest])
                             '([]))
                      '#!void)))
              (let ((_%K183151183230%_
                     (lambda (_%rest183170%_ _%dir183171%_)
                       (letrec ((_%resolve183173%_
                                 (lambda (_%ssi183186%_ _%srcs183187%_)
                                   (let ((_%compiled-path183189%_
                                          (path-expand
                                           _%ssi183186%_
                                           _%dir183171%_)))
                                     (if (##file-exists?
                                          _%compiled-path183189%_)
                                         (path-normalize
                                          _%compiled-path183189%_)
                                         (let _%lpr183191%_ ((_%rest-src183193%_
                                                              _%srcs183187%_))
                                           (let* ((_%rest-src183194183202%_
                                                   _%rest-src183193%_)
                                                  (_%else183196183210%_
                                                   (lambda ()
                                                     (_%lp183143%_
                                                      _%rest183170%_)))
                                                  (_%K183198183218%_
                                                   (lambda (_%rest-src183213%_
                                                            _%src183214%_)
                                                     (let ((_%src-path183216%_
                                                            (path-expand
                                                             _%src183214%_
                                                             _%dir183171%_)))
                                                       (if (##file-exists?
                                                            _%src-path183216%_)
                                                           (path-normalize
                                                            _%src-path183216%_)
                                                           (_%lpr183191%_
                                                            _%rest-src183213%_))))))
                                             (if (pair? _%rest-src183194183202%_)
                                                 (let ((_%hd183199183221%_
                                                        (##car _%rest-src183194183202%_))
                                                       (_%tl183200183223%_
                                                        (##cdr _%rest-src183194183202%_)))
                                                   (let* ((_%src183226%_
                                                           _%hd183199183221%_)
                                                          (_%rest-src183228%_
                                                           _%tl183200183223%_))
                                                     (_%K183198183218%_
                                                      _%rest-src183228%_
                                                      _%src183226%_)))
                                                 (_%else183196183210%_)))))))))
                         (let ((_%$e183175%_
                                (gx#core-library-package-path-prefix
                                 _%dir183171%_)))
                           (if _%$e183175%_
                               ((lambda (_%prefix183178%_)
                                  (if (string-prefix?
                                       _%prefix183178%_
                                       _%spath183132%_)
                                      (let ((_%ssi183182%_
                                             (substring
                                              _%ssi183136%_
                                              (string-length _%prefix183178%_)
                                              (##string-length _%ssi183136%_)))
                                            (_%srcs183183%_
                                             (##map (lambda (_%src183180%_)
                                                      (substring
                                                       _%src183180%_
                                                       (string-length
                                                        _%prefix183178%_)
                                                       (string-length
                                                        _%src183180%_)))
                                                    _%srcs183140%_)))
                                        (_%resolve183173%_
                                         _%ssi183182%_
                                         _%srcs183183%_))
                                      (_%lp183143%_ _%rest183170%_)))
                                _%$e183175%_)
                               (_%resolve183173%_
                                _%ssi183136%_
                                _%srcs183140%_))))))
                    (_%K183150183164%_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"cannot find library module"
                        _%libpath183128%_))))
                (let ((_%try-match183148183167%_
                       (lambda ()
                         (if (null? _%rest183146183155%_)
                             (_%K183150183164%_)
                             (_%E183149183159%_)))))
                  (if (pair? _%rest183146183155%_)
                      (let ((_%tl183153183235%_ (##cdr _%rest183146183155%_))
                            (_%hd183152183233%_ (##car _%rest183146183155%_)))
                        (let ((_%dir183238%_ _%hd183152183233%_)
                              (_%rest183240%_ _%tl183153183235%_))
                          (_%K183151183230%_ _%rest183240%_ _%dir183238%_)))
                      (_%try-match183148183167%_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_%modpath183096%_)
        (letrec ((_%resolve183098%_
                  (lambda (_%path183119%_ _%base183120%_)
                    (let ((_%$e183122%_
                           (string-rindex__0 _%base183120%_ '#\/)))
                      (if _%$e183122%_
                          ((lambda (_%idx183125%_)
                             (gx#core-resolve-library-module-path
                              (##string->symbol
                               (string-append
                                '":"
                                (substring _%base183120%_ '0 _%idx183125%_)
                                '"/"
                                _%path183119%_))))
                           _%$e183122%_)
                          (gx#core-resolve-library-module-path
                           (##string->symbol
                            (string-append '":" _%path183119%_))))))))
          (let ((_%spath183100%_ (symbol->string (gx#stx-e _%modpath183096%_)))
                (_%mod183101%_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _%mod183101%_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"cannot resolve relative module path; not in module context"
                 _%modpath183096%_))
            (let ((_%mpath183103%_
                   (symbol->string
                    (##structure-ref
                     _%mod183101%_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _%lp183105%_ ((_%spath183107%_ _%spath183100%_)
                                 (_%mpath183108%_ _%mpath183103%_))
                (if (string-prefix? '"../" _%spath183107%_)
                    (let ((_%$e183111%_
                           (string-rindex__0 _%mpath183108%_ '#\/)))
                      (if _%$e183111%_
                          ((lambda (_%idx183114%_)
                             (_%lp183105%_
                              (substring
                               _%spath183107%_
                               '3
                               (string-length _%spath183107%_))
                              (substring _%mpath183108%_ '0 _%idx183114%_)))
                           _%$e183111%_)
                          (gx#raise-syntax-error
                           '#f
                           '"cannot resolve relative module path; illegal traversal"
                           _%modpath183096%_)))
                    (if (string-prefix? '"./" _%spath183107%_)
                        (_%lp183105%_
                         (substring
                          _%spath183107%_
                          '2
                          (string-length _%spath183107%_))
                         _%mpath183108%_)
                        (_%resolve183098%_
                         _%spath183107%_
                         _%mpath183108%_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_%dir183088%_)
        (let ((_%$e183090%_
               (pgetq__0
                'package:
                (gx#core-library-package-plist__0 _%dir183088%_))))
          (if _%$e183090%_
              ((lambda (_%pkg183093%_)
                 (##string-append (symbol->string _%pkg183093%_) '"/"))
               _%$e183090%_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_%dir183058%_ _%exists?183059%_)
        (let ((_%$e183061%_ (__hash-get gx#__module-pkg-cache _%dir183058%_)))
          (if _%$e183061%_
              _%$e183061%_
              (let* ((_%gerbil.pkg183065%_
                      (path-expand '"gerbil.pkg" _%dir183058%_))
                     (_%plist183075%_
                      (if (or _%exists?183059%_
                              (##file-exists? _%gerbil.pkg183065%_))
                          (let ((_%e183070%_
                                 (gx#call-with-input-source-file
                                  _%gerbil.pkg183065%_
                                  read)))
                            (if (eof-object? _%e183070%_)
                                '()
                                (if (list? _%e183070%_)
                                    _%e183070%_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _%gerbil.pkg183065%_
                                     _%e183070%_))))
                          '())))
                (__hash-put!
                 gx#__module-pkg-cache
                 _%dir183058%_
                 _%plist183075%_)
                _%plist183075%_)))))
    (define gx#core-library-package-plist__0
      (lambda (_%dir183081%_)
        (let ((_%exists?183083%_ '#f))
          (gx#core-library-package-plist__% _%dir183081%_ _%exists?183083%_))))
    (define gx#core-library-package-plist
      (lambda _g184904_
        (let ((_g184905_ (##length _g184904_)))
          (cond ((##fx= _g184905_ 1)
                 (apply gx#core-library-package-plist__0 _g184904_))
                ((##fx= _g184905_ 2)
                 (apply gx#core-library-package-plist__% _g184904_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g184904_))))))
    (define gx#core-library-module-path?
      (lambda (_%stx183055%_)
        (gx#core-special-module-path? _%stx183055%_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_%stx183053%_)
        (gx#core-special-module-path? _%stx183053%_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_%stx183048%_ _%char183049%_)
        (if (gx#identifier? _%stx183048%_)
            (if (interned-symbol? (gx#stx-e _%stx183048%_))
                (let ((_%str183051%_
                       (symbol->string (gx#stx-e _%stx183048%_))))
                  (if (##fx> (##string-length _%str183051%_) '1)
                      (eq? (string-ref _%str183051%_ '0) _%char183049%_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_%stx183042%_)
        (gx#core-bound-identifier?__%
         _%stx183042%_
         (lambda (_%g183043183045%_)
           (gx#expander-binding?__% _%g183043183045%_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_%stx183036%_)
        (gx#core-bound-identifier?__%
         _%stx183036%_
         (lambda (_%g183037183039%_)
           (gx#expander-binding?__% _%g183037183039%_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_%stx183023%_)
        (letrec ((_%module-prelude?183025%_
                  (lambda (_%e183031%_)
                    (let ((_%$e183033%_
                           (##structure-instance-of?
                            _%e183031%_
                            'gx#module-context::t)))
                      (if _%$e183033%_
                          _%$e183033%_
                          (##structure-instance-of?
                           _%e183031%_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _%stx183023%_
           (lambda (_%g183026183028%_)
             (gx#expander-binding?__%
              _%g183026183028%_
              _%module-prelude?183025%_))))))
    (define gx#core-bind-import!__%
      (lambda (_%in182954%_ _%ctx182955%_ _%force-weak?182956%_)
        (let* ((_%in182957182966%_ _%in182954%_)
               (_%E182959182969%_
                (lambda ()
                  (error '"No clause matching"
                         _%in182957182966%_
                         '((module-import source key phi weak?)))
                  '#!void))
               (_%K182960182982%_
                (lambda (_%weak?182972%_
                         _%phi182973%_
                         _%key182974%_
                         _%source182975%_)
                  (gx#core-bind!__%
                   _%key182974%_
                   (let* ((_%e182977%_
                           (gx#core-resolve-module-export _%source182975%_))
                          (__obj184886
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
                      __obj184886
                      (##unchecked-structure-ref _%e182977%_ '1 '#f '#f)
                      _%key182974%_
                      _%phi182973%_
                      _%e182977%_
                      (##unchecked-structure-ref _%source182975%_ '1 '#f '#f)
                      (let ((_%$e182979%_ _%force-weak?182956%_))
                        (if _%$e182979%_ _%$e182979%_ _%weak?182972%_)))
                     __obj184886)
                   gx#core-context-rebind?
                   _%phi182973%_
                   _%ctx182955%_))))
          (if (##structure-direct-instance-of?
               _%in182957182966%_
               'gx#module-import::t)
              (let* ((_%e182961182985%_
                      (##unchecked-structure-ref
                       _%in182957182966%_
                       '1
                       '#f
                       '#f))
                     (_%source182988%_ _%e182961182985%_)
                     (_%e182962182990%_
                      (##unchecked-structure-ref
                       _%in182957182966%_
                       '2
                       '#f
                       '#f))
                     (_%key182993%_ _%e182962182990%_)
                     (_%e182963182995%_
                      (##unchecked-structure-ref
                       _%in182957182966%_
                       '3
                       '#f
                       '#f))
                     (_%phi182998%_ _%e182963182995%_)
                     (_%e182964183000%_
                      (##unchecked-structure-ref
                       _%in182957182966%_
                       '4
                       '#f
                       '#f))
                     (_%weak?183003%_ _%e182964183000%_))
                (_%K182960182982%_
                 _%weak?183003%_
                 _%phi182998%_
                 _%key182993%_
                 _%source182988%_))
              (_%E182959182969%_)))))
    (define gx#core-bind-import!__0
      (lambda (_%in183008%_)
        (let* ((_%ctx183010%_ (gx#current-expander-context))
               (_%force-weak?183012%_ '#f))
          (gx#core-bind-import!__%
           _%in183008%_
           _%ctx183010%_
           _%force-weak?183012%_))))
    (define gx#core-bind-import!__1
      (lambda (_%in183014%_ _%ctx183015%_)
        (let ((_%force-weak?183017%_ '#f))
          (gx#core-bind-import!__%
           _%in183014%_
           _%ctx183015%_
           _%force-weak?183017%_))))
    (define gx#core-bind-import!
      (lambda _g184906_
        (let ((_g184907_ (##length _g184906_)))
          (cond ((##fx= _g184907_ 1) (apply gx#core-bind-import!__0 _g184906_))
                ((##fx= _g184907_ 2) (apply gx#core-bind-import!__1 _g184906_))
                ((##fx= _g184907_ 3) (apply gx#core-bind-import!__% _g184906_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g184906_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_%in182940%_ _%ctx182941%_)
        (gx#core-bind-import!__% _%in182940%_ _%ctx182941%_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_%in182946%_)
        (let ((_%ctx182948%_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _%in182946%_ _%ctx182948%_))))
    (define gx#core-bind-weak-import!
      (lambda _g184908_
        (let ((_g184909_ (##length _g184908_)))
          (cond ((##fx= _g184909_ 1)
                 (apply gx#core-bind-weak-import!__0 _g184908_))
                ((##fx= _g184909_ 2)
                 (apply gx#core-bind-weak-import!__% _g184908_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g184908_))))))
    (define gx#core-resolve-module-export
      (lambda (_%out182833%_)
        (letrec ((_%subst182835%_
                  (lambda (_%key182880%_)
                    (let* ((_%key182881182889%_ _%key182880%_)
                           (_%else182883182897%_ (lambda () _%key182880%_))
                           (_%K182885182927%_
                            (lambda (_%mark182900%_ _%id182901%_)
                              (let* ((_%mark182902182908%_ _%mark182900%_)
                                     (_%E182904182911%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark182902182908%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K182905182919%_
                                      (lambda (_%subst182914%_)
                                        (let ((_%$e182916%_
                                               (if _%subst182914%_
                                                   (hash-get
                                                    _%subst182914%_
                                                    _%id182901%_)
                                                   '#f)))
                                          (if _%$e182916%_
                                              _%$e182916%_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _%key182880%_))))))
                                (if (##structure-instance-of?
                                     _%mark182902182908%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e182906182922%_
                                            (##unchecked-structure-ref
                                             _%mark182902182908%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst182925%_ _%e182906182922%_))
                                      (_%K182905182919%_ _%subst182925%_))
                                    (_%E182904182911%_))))))
                      (if (pair? _%key182881182889%_)
                          (let ((_%hd182886182930%_
                                 (##car _%key182881182889%_))
                                (_%tl182887182932%_
                                 (##cdr _%key182881182889%_)))
                            (let* ((_%id182935%_ _%hd182886182930%_)
                                   (_%mark182937%_ _%tl182887182932%_))
                              (_%K182885182927%_ _%mark182937%_ _%id182935%_)))
                          (_%else182883182897%_))))))
          (let* ((_%out182836182846%_ _%out182833%_)
                 (_%E182838182849%_
                  (lambda ()
                    (error '"No clause matching"
                           _%out182836182846%_
                           '((module-export ctx key phi _ _)))
                    '#!void))
                 (_%K182839182856%_
                  (lambda (_%phi182852%_ _%key182853%_ _%ctx182854%_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _%ctx182854%_ _%phi182852%_)
                     (_%subst182835%_ _%key182853%_)))))
            (if (##structure-direct-instance-of?
                 _%out182836182846%_
                 'gx#module-export::t)
                (let* ((_%e182840182859%_
                        (##unchecked-structure-ref
                         _%out182836182846%_
                         '1
                         '#f
                         '#f))
                       (_%ctx182862%_ _%e182840182859%_)
                       (_%e182841182864%_
                        (##unchecked-structure-ref
                         _%out182836182846%_
                         '2
                         '#f
                         '#f))
                       (_%key182867%_ _%e182841182864%_)
                       (_%e182842182869%_
                        (##unchecked-structure-ref
                         _%out182836182846%_
                         '3
                         '#f
                         '#f))
                       (_%phi182872%_ _%e182842182869%_)
                       (_%e182843182874%_
                        (##unchecked-structure-ref
                         _%out182836182846%_
                         '4
                         '#f
                         '#f))
                       (_%e182844182877%_
                        (##unchecked-structure-ref
                         _%out182836182846%_
                         '5
                         '#f
                         '#f)))
                  (_%K182839182856%_
                   _%phi182872%_
                   _%key182867%_
                   _%ctx182862%_))
                (_%E182838182849%_))))))
    (define gx#core-module-export->import__%
      (lambda (_%out182759%_ _%rename182760%_ _%dphi182761%_)
        (let* ((_%out182762182772%_ _%out182759%_)
               (_%E182764182775%_
                (lambda ()
                  (error '"No clause matching"
                         _%out182762182772%_
                         '((module-export ctx key phi name weak?)))
                  '#!void))
               (_%K182765182787%_
                (lambda (_%weak?182778%_
                         _%name182779%_
                         _%phi182780%_
                         _%key182781%_
                         _%ctx182782%_)
                  (##structure
                   gx#module-import::t
                   _%out182759%_
                   (let ((_%$e182784%_ _%rename182760%_))
                     (if _%$e182784%_ _%$e182784%_ _%name182779%_))
                   (fx+ _%phi182780%_ _%dphi182761%_)
                   _%weak?182778%_))))
          (if (##structure-direct-instance-of?
               _%out182762182772%_
               'gx#module-export::t)
              (let* ((_%e182766182790%_
                      (##unchecked-structure-ref
                       _%out182762182772%_
                       '1
                       '#f
                       '#f))
                     (_%ctx182793%_ _%e182766182790%_)
                     (_%e182767182795%_
                      (##unchecked-structure-ref
                       _%out182762182772%_
                       '2
                       '#f
                       '#f))
                     (_%key182798%_ _%e182767182795%_)
                     (_%e182768182800%_
                      (##unchecked-structure-ref
                       _%out182762182772%_
                       '3
                       '#f
                       '#f))
                     (_%phi182803%_ _%e182768182800%_)
                     (_%e182769182805%_
                      (##unchecked-structure-ref
                       _%out182762182772%_
                       '4
                       '#f
                       '#f))
                     (_%name182808%_ _%e182769182805%_)
                     (_%e182770182810%_
                      (##unchecked-structure-ref
                       _%out182762182772%_
                       '5
                       '#f
                       '#f))
                     (_%weak?182813%_ _%e182770182810%_))
                (_%K182765182787%_
                 _%weak?182813%_
                 _%name182808%_
                 _%phi182803%_
                 _%key182798%_
                 _%ctx182793%_))
              (_%E182764182775%_)))))
    (define gx#core-module-export->import__0
      (lambda (_%out182818%_)
        (let* ((_%rename182820%_ '#f) (_%dphi182822%_ '0))
          (gx#core-module-export->import__%
           _%out182818%_
           _%rename182820%_
           _%dphi182822%_))))
    (define gx#core-module-export->import__1
      (lambda (_%out182824%_ _%rename182825%_)
        (let ((_%dphi182827%_ '0))
          (gx#core-module-export->import__%
           _%out182824%_
           _%rename182825%_
           _%dphi182827%_))))
    (define gx#core-module-export->import
      (lambda _g184910_
        (let ((_g184911_ (##length _g184910_)))
          (cond ((##fx= _g184911_ 1)
                 (apply gx#core-module-export->import__0 _g184910_))
                ((##fx= _g184911_ 2)
                 (apply gx#core-module-export->import__1 _g184910_))
                ((##fx= _g184911_ 3)
                 (apply gx#core-module-export->import__% _g184910_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g184910_))))))
    (define gx#core-expand-module%
      (lambda (_%stx182658%_)
        (letrec ((_%make-context182660%_
                  (lambda (_%id182737%_)
                    (let* ((_%super182739%_ (gx#current-expander-context))
                           (_%bind-id182741%_ (gx#stx-e _%id182737%_))
                           (_%mod-id182743%_
                            (if (##structure-instance-of?
                                 _%super182739%_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##unchecked-structure-ref
                                  _%super182739%_
                                  '1
                                  '#f
                                  '#f)
                                 '"~"
                                 _%bind-id182741%_)
                                _%bind-id182741%_))
                           (_%ns182745%_ (symbol->string _%mod-id182743%_))
                           (_%path182755%_
                            (if (##structure-instance-of?
                                 _%super182739%_
                                 'gx#module-context::t)
                                (let ((_%path182747%_
                                       (##unchecked-structure-ref
                                        _%super182739%_
                                        '7
                                        '#f
                                        '#f)))
                                  (if (or (pair? _%path182747%_)
                                          (null? _%path182747%_))
                                      (cons _%bind-id182741%_ _%path182747%_)
                                      (if (not _%path182747%_)
                                          _%bind-id182741%_
                                          (cons _%bind-id182741%_
                                                (cons _%path182747%_ '())))))
                                _%bind-id182741%_))
                           (__obj184887
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
                       __obj184887
                       _%mod-id182743%_
                       _%super182739%_
                       _%ns182745%_
                       _%path182755%_)
                      __obj184887)))
                 (_%valid-module-id?182661%_
                  (lambda (_%id182712%_)
                    (let* ((_%str182714%_ (symbol->string _%id182712%_))
                           (_%len182716%_ (##string-length _%str182714%_)))
                      (if (##fx>= _%len182716%_ '1)
                          (let _%loop182719%_ ((_%index182721%_
                                                (##fx- (##string-length
                                                        _%str182714%_)
                                                       '1)))
                            (if (##fx>= _%index182721%_ '0)
                                (let ((_%c182723%_
                                       (string-ref
                                        _%str182714%_
                                        _%index182721%_)))
                                  (if (or (and (##char>=? _%c182723%_ '#\a)
                                               (##char<=? _%c182723%_ '#\z))
                                          (and (##char>=? _%c182723%_ '#\A)
                                               (##char<=? _%c182723%_ '#\Z))
                                          (and (##char>=? _%c182723%_ '#\0)
                                               (##char<=? _%c182723%_ '#\9))
                                          (##char=? _%c182723%_ '#\_)
                                          (##char=? _%c182723%_ '#\-))
                                      (_%loop182719%_
                                       (##fx- _%index182721%_ '1))
                                      '#f))
                                '#t))
                          '#f)))))
          (let* ((_%e182662182672%_ _%stx182658%_)
                 (_%E182664182676%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e182662182672%_)))
                 (_%E182663182708%_
                  (lambda ()
                    (if (gx#stx-pair? _%e182662182672%_)
                        (let ((_%e182665182680%_
                               (gx#syntax-e _%e182662182672%_)))
                          (let ((_%hd182666182683%_ (##car _%e182665182680%_))
                                (_%tl182667182685%_ (##cdr _%e182665182680%_)))
                            (if (gx#stx-pair? _%tl182667182685%_)
                                (let ((_%e182668182688%_
                                       (gx#syntax-e _%tl182667182685%_)))
                                  (let ((_%hd182669182691%_
                                         (##car _%e182668182688%_))
                                        (_%tl182670182693%_
                                         (##cdr _%e182668182688%_)))
                                    (let* ((_%id182696%_ _%hd182669182691%_)
                                           (_%body182698%_ _%tl182670182693%_))
                                      (if (and (gx#identifier? _%id182696%_)
                                               (gx#stx-list? _%body182698%_))
                                          (if (_%valid-module-id?182661%_
                                               (gx#stx-e
                                                (gx#datum->syntax__0 '#f 'id)))
                                              (let* ((_%ctx182700%_
                                                      (_%make-context182660%_
                                                       _%id182696%_))
                                                     (_%body182702%_
                                                      (gx#core-expand-module-begin
                                                       _%body182698%_
                                                       _%ctx182700%_))
                                                     (_%body182704%_
                                                      (gx#core-quote-syntax__1
                                                       (gx#core-cons
                                                        '%#begin
                                                        _%body182702%_)
                                                       (gx#stx-source
                                                        _%stx182658%_))))
                                                (##unchecked-structure-set!
                                                 _%ctx182700%_
                                                 (__make-atomic-promise
                                                  (lambda ()
                                                    (gx#eval-syntax*
                                                     _%body182704%_)))
                                                 '10
                                                 '#f
                                                 '#f)
                                                (##unchecked-structure-set!
                                                 _%ctx182700%_
                                                 _%body182704%_
                                                 '11
                                                 '#f
                                                 '#f)
                                                (gx#core-bind-syntax!__0
                                                 _%id182696%_
                                                 _%ctx182700%_)
                                                (gx#core-quote-syntax__1
                                                 (gx#core-list
                                                  '%#module
                                                  (gx#core-quote-syntax__0
                                                   _%id182696%_)
                                                  _%body182704%_)
                                                 (gx#stx-source
                                                  _%stx182658%_)))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"invalid module id; allowed characters are A-Z,a-z,0-9,_,-"
                                               _%stx182658%_
                                               (gx#datum->syntax__0 '#f 'id)))
                                          (_%E182664182676%_)))))
                                (_%E182664182676%_))))
                        (_%E182664182676%_)))))
            (_%E182663182708%_)))))
    (define gx#core-expand-module-begin
      (lambda (_%body182623%_ _%ctx182624%_)
        (call-with-parameters__1
         (lambda ()
           (call-with-parameters__1
            (lambda ()
              (gx#core-bind-feature!__1 'gerbil-module '#t)
              (let* ((_%stx182628%_
                      (gx#core-expand-head
                       (cons '%%begin-module _%body182623%_)))
                     (_%e182629182636%_ _%stx182628%_)
                     (_%E182631182640%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module body expansion"
                         _%stx182628%_)))
                     (_%E182630182654%_
                      (lambda ()
                        (if (gx#stx-pair? _%e182629182636%_)
                            (let ((_%e182632182644%_
                                   (gx#syntax-e _%e182629182636%_)))
                              (let ((_%hd182633182647%_
                                     (##car _%e182632182644%_))
                                    (_%tl182634182649%_
                                     (##cdr _%e182632182644%_)))
                                (if (and (gx#identifier? _%hd182633182647%_)
                                         (gx#core-identifier=?
                                          _%hd182633182647%_
                                          '%#begin-module))
                                    (let ((_%body182652%_ _%tl182634182649%_))
                                      (if (gx#sealed-syntax? _%stx182628%_)
                                          _%body182652%_
                                          (gx#core-expand-module-body
                                           _%body182652%_)))
                                    (_%E182631182640%_))))
                            (_%E182631182640%_)))))
                (_%E182630182654%_)))
            gx#current-expander-phi
            '0))
         gx#current-expander-context
         _%ctx182624%_)))
    (define gx#core-expand-module-body
      (lambda (_%body182419%_)
        (letrec ((_%expand-special182421%_
                  (lambda (_%hd182550%_ _%K182551%_ _%rest182552%_ _%r182553%_)
                    (let* ((_%e182554182571%_ _%hd182550%_)
                           (_%E182566182575%_
                            (lambda ()
                              (_%K182551%_
                               _%rest182552%_
                               (cons (gx#core-expand-top _%hd182550%_)
                                     _%r182553%_))))
                           (_%E182556182587%_
                            (lambda ()
                              (if (gx#stx-pair? _%e182554182571%_)
                                  (let ((_%e182567182579%_
                                         (gx#syntax-e _%e182554182571%_)))
                                    (let ((_%hd182568182582%_
                                           (##car _%e182567182579%_))
                                          (_%tl182569182584%_
                                           (##cdr _%e182567182579%_)))
                                      (if (and (gx#identifier?
                                                _%hd182568182582%_)
                                               (gx#core-identifier=?
                                                _%hd182568182582%_
                                                '%#export))
                                          (_%K182551%_
                                           _%rest182552%_
                                           (cons _%hd182550%_ _%r182553%_))
                                          (_%E182566182575%_))))
                                  (_%E182566182575%_))))
                           (_%E182555182619%_
                            (lambda ()
                              (if (gx#stx-pair? _%e182554182571%_)
                                  (let ((_%e182557182591%_
                                         (gx#syntax-e _%e182554182571%_)))
                                    (let ((_%hd182558182594%_
                                           (##car _%e182557182591%_))
                                          (_%tl182559182596%_
                                           (##cdr _%e182557182591%_)))
                                      (if (and (gx#identifier?
                                                _%hd182558182594%_)
                                               (gx#core-identifier=?
                                                _%hd182558182594%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl182559182596%_)
                                              (let ((_%e182560182599%_
                                                     (gx#syntax-e
                                                      _%tl182559182596%_)))
                                                (let ((_%hd182561182602%_
                                                       (##car _%e182560182599%_))
                                                      (_%tl182562182604%_
                                                       (##cdr _%e182560182599%_)))
                                                  (let ((_%hd-bind182607%_
                                                         _%hd182561182602%_))
                                                    (if (gx#stx-pair?
                                                         _%tl182562182604%_)
                                                        (let ((_%e182563182609%_
                                                               (gx#syntax-e
                                                                _%tl182562182604%_)))
                                                          (let ((_%hd182564182612%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e182563182609%_))
                        (_%tl182565182614%_ (##cdr _%e182563182609%_)))
                    (let ((_%expr182617%_ _%hd182564182612%_))
                      (if (gx#stx-null? _%tl182565182614%_)
                          (if (gx#core-bind-values? _%hd-bind182607%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind182607%_)
                                (_%K182551%_
                                 _%rest182552%_
                                 (cons _%hd182550%_ _%r182553%_)))
                              (_%E182556182587%_))
                          (_%E182556182587%_)))))
                (_%E182556182587%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E182556182587%_))
                                          (_%E182556182587%_))))
                                  (_%E182556182587%_)))))
                      (_%E182555182619%_))))
                 (_%expand-body182422%_
                  (lambda (_%rbody182424%_)
                    (let _%lp182426%_ ((_%rest182428%_ _%rbody182424%_)
                                       (_%body182429%_ '()))
                      (let* ((_%rest182430182438%_ _%rest182428%_)
                             (_%else182432182446%_ (lambda () _%body182429%_))
                             (_%K182434182538%_
                              (lambda (_%rest182449%_ _%hd182450%_)
                                (let* ((_%e182451182472%_ _%hd182450%_)
                                       (_%E182467182476%_
                                        (lambda ()
                                          (_%lp182426%_
                                           _%rest182449%_
                                           (cons (gx#core-expand-expression
                                                  _%hd182450%_)
                                                 _%body182429%_))))
                                       (_%E182463182490%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e182451182472%_)
                                              (let ((_%e182468182480%_
                                                     (gx#syntax-e
                                                      _%e182451182472%_)))
                                                (let ((_%hd182469182483%_
                                                       (##car _%e182468182480%_))
                                                      (_%tl182470182485%_
                                                       (##cdr _%e182468182480%_)))
                                                  (let ((_%form182488%_
                                                         _%hd182469182483%_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _%form182488%_
                                                         gx#special-form-binding?)
                                                        (_%lp182426%_
                                                         _%rest182449%_
                                                         (cons _%hd182450%_
                                                               _%body182429%_))
                                                        (_%E182467182476%_)))))
                                              (_%E182467182476%_))))
                                       (_%E182453182502%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e182451182472%_)
                                              (let ((_%e182464182494%_
                                                     (gx#syntax-e
                                                      _%e182451182472%_)))
                                                (let ((_%hd182465182497%_
                                                       (##car _%e182464182494%_))
                                                      (_%tl182466182499%_
                                                       (##cdr _%e182464182494%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd182465182497%_)
                                                           (gx#core-identifier=?
                                                            _%hd182465182497%_
                                                            '%#export))
                                                      (_%lp182426%_
                                                       _%rest182449%_
                                                       (cons (gx#core-expand-export%__0
                                                              _%hd182450%_)
                                                             _%body182429%_))
                                                      (_%E182463182490%_))))
                                              (_%E182463182490%_))))
                                       (_%E182452182534%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e182451182472%_)
                                              (let ((_%e182454182506%_
                                                     (gx#syntax-e
                                                      _%e182451182472%_)))
                                                (let ((_%hd182455182509%_
                                                       (##car _%e182454182506%_))
                                                      (_%tl182456182511%_
                                                       (##cdr _%e182454182506%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd182455182509%_)
                                                           (gx#core-identifier=?
                                                            _%hd182455182509%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl182456182511%_)
                                                          (let ((_%e182457182514%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl182456182511%_)))
                    (let ((_%hd182458182517%_ (##car _%e182457182514%_))
                          (_%tl182459182519%_ (##cdr _%e182457182514%_)))
                      (let ((_%hd-bind182522%_ _%hd182458182517%_))
                        (if (gx#stx-pair? _%tl182459182519%_)
                            (let ((_%e182460182524%_
                                   (gx#syntax-e _%tl182459182519%_)))
                              (let ((_%hd182461182527%_
                                     (##car _%e182460182524%_))
                                    (_%tl182462182529%_
                                     (##cdr _%e182460182524%_)))
                                (let ((_%expr182532%_ _%hd182461182527%_))
                                  (if (gx#stx-null? _%tl182462182529%_)
                                      (_%lp182426%_
                                       _%rest182449%_
                                       (cons (gx#core-quote-syntax__1
                                              (gx#core-list
                                               '%#define-values
                                               (gx#core-quote-bind-values
                                                _%hd-bind182522%_)
                                               (gx#core-expand-expression
                                                _%expr182532%_))
                                              (gx#stx-source _%hd182450%_))
                                             _%body182429%_))
                                      (_%E182453182502%_)))))
                            (_%E182453182502%_)))))
                  (_%E182453182502%_))
              (_%E182453182502%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E182453182502%_)))))
                                  (_%E182452182534%_)))))
                        (if (pair? _%rest182430182438%_)
                            (let ((_%hd182435182541%_
                                   (##car _%rest182430182438%_))
                                  (_%tl182436182543%_
                                   (##cdr _%rest182430182438%_)))
                              (let* ((_%hd182546%_ _%hd182435182541%_)
                                     (_%rest182548%_ _%tl182436182543%_))
                                (_%K182434182538%_
                                 _%rest182548%_
                                 _%hd182546%_)))
                            (_%else182432182446%_)))))))
          (_%expand-body182422%_
           (gx#core-expand-block__%
            (cons '%#begin-module _%body182419%_)
            _%expand-special182421%_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_%stx182260%_
               _%expanded?182261%_
               _%method182262%_
               _%current-phi182263%_
               _%expand1182264%_)
        (letrec ((_%K182266%_
                  (lambda (_%rest182386%_ _%r182387%_)
                    (let* ((_%e182388182395%_ _%rest182386%_)
                           (_%E182390182399%_ (lambda () _%r182387%_))
                           (_%E182389182415%_
                            (lambda ()
                              (if (gx#stx-pair? _%e182388182395%_)
                                  (let ((_%e182391182403%_
                                         (gx#syntax-e _%e182388182395%_)))
                                    (let ((_%hd182392182406%_
                                           (##car _%e182391182403%_))
                                          (_%tl182393182408%_
                                           (##cdr _%e182391182403%_)))
                                      (let* ((_%hd182411%_ _%hd182392182406%_)
                                             (_%rest182413%_
                                              _%tl182393182408%_))
                                        (_%step182267%_
                                         _%hd182411%_
                                         _%rest182413%_
                                         _%r182387%_))))
                                  (_%E182390182399%_)))))
                      (_%E182389182415%_))))
                 (_%step182267%_
                  (lambda (_%hd182300%_ _%rest182301%_ _%r182302%_)
                    (let* ((_%e182303182321%_ _%hd182300%_)
                           (_%E182316182325%_
                            (lambda ()
                              (if (_%expanded?182261%_ (gx#stx-e _%hd182300%_))
                                  (_%K182266%_
                                   _%rest182301%_
                                   (cons (gx#stx-e _%hd182300%_) _%r182302%_))
                                  (_%expand1182264%_
                                   _%hd182300%_
                                   _%K182266%_
                                   _%rest182301%_
                                   _%r182302%_))))
                           (_%E182312182341%_
                            (lambda ()
                              (if (gx#stx-pair? _%e182303182321%_)
                                  (let ((_%e182317182329%_
                                         (gx#syntax-e _%e182303182321%_)))
                                    (let ((_%hd182318182332%_
                                           (##car _%e182317182329%_))
                                          (_%tl182319182334%_
                                           (##cdr _%e182317182329%_)))
                                      (let* ((_%macro182337%_
                                              _%hd182318182332%_)
                                             (_%body182339%_
                                              _%tl182319182334%_))
                                        (if (gx#core-bound-identifier?__%
                                             _%macro182337%_
                                             gx#syntax-binding?)
                                            (_%K182266%_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _%macro182337%_)
                                                    _%hd182300%_
                                                    _%method182262%_)
                                                   _%rest182301%_)
                                             _%r182302%_)
                                            (_%E182316182325%_)))))
                                  (_%E182316182325%_))))
                           (_%E182305182355%_
                            (lambda ()
                              (if (gx#stx-pair? _%e182303182321%_)
                                  (let ((_%e182313182345%_
                                         (gx#syntax-e _%e182303182321%_)))
                                    (let ((_%hd182314182348%_
                                           (##car _%e182313182345%_))
                                          (_%tl182315182350%_
                                           (##cdr _%e182313182345%_)))
                                      (if (eq? (gx#stx-e _%hd182314182348%_)
                                               'begin:)
                                          (let ((_%body182353%_
                                                 _%tl182315182350%_))
                                            (_%K182266%_
                                             (gx#stx-foldr
                                              cons
                                              _%rest182301%_
                                              _%body182353%_)
                                             _%r182302%_))
                                          (_%E182312182341%_))))
                                  (_%E182312182341%_))))
                           (_%E182304182382%_
                            (lambda ()
                              (if (gx#stx-pair? _%e182303182321%_)
                                  (let ((_%e182306182359%_
                                         (gx#syntax-e _%e182303182321%_)))
                                    (let ((_%hd182307182362%_
                                           (##car _%e182306182359%_))
                                          (_%tl182308182364%_
                                           (##cdr _%e182306182359%_)))
                                      (if (eq? (gx#stx-e _%hd182307182362%_)
                                               'phi:)
                                          (if (gx#stx-pair? _%tl182308182364%_)
                                              (let ((_%e182309182367%_
                                                     (gx#syntax-e
                                                      _%tl182308182364%_)))
                                                (let ((_%hd182310182370%_
                                                       (##car _%e182309182367%_))
                                                      (_%tl182311182372%_
                                                       (##cdr _%e182309182367%_)))
                                                  (let* ((_%dphi182375%_
                                                          _%hd182310182370%_)
                                                         (_%body182377%_
                                                          _%tl182311182372%_))
                                                    (if (gx#stx-fixnum?
                                                         _%dphi182375%_)
                                                        (let ((_%rbody182380%_
                                                               (call-with-parameters__1
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_%K182266%_ _%body182377%_ '()))
                        _%current-phi182263%_
                        (fx+ (gx#stx-e _%dphi182375%_)
                             (_%current-phi182263%_)))))
                  (_%K182266%_
                   _%rest182301%_
                   (foldr__0 cons _%r182302%_ _%rbody182380%_)))
                (_%E182305182355%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E182305182355%_))
                                          (_%E182305182355%_))))
                                  (_%E182305182355%_)))))
                      (_%E182304182382%_)))))
          (let* ((_%e182268182275%_ _%stx182260%_)
                 (_%E182270182279%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e182268182275%_)))
                 (_%E182269182296%_
                  (lambda ()
                    (if (gx#stx-pair? _%e182268182275%_)
                        (let ((_%e182271182283%_
                               (gx#syntax-e _%e182268182275%_)))
                          (let ((_%hd182272182286%_ (##car _%e182271182283%_))
                                (_%tl182273182288%_ (##cdr _%e182271182283%_)))
                            (let ((_%body182291%_ _%tl182273182288%_))
                              (if (_%current-phi182263%_)
                                  (_%K182266%_ _%body182291%_ '())
                                  (call-with-parameters__1
                                   (lambda () (_%K182266%_ _%body182291%_ '()))
                                   _%current-phi182263%_
                                   (gx#current-expander-phi))))))
                        (_%E182270182279%_)))))
            (_%E182269182296%_)))))
    (define gx#core-expand-import%__%
      (lambda (_%stx181914%_ _%internal-expand?181915%_)
        (letrec ((_%expand1181917%_
                  (lambda (_%hd182232%_ _%K182233%_ _%rest182234%_ _%r182235%_)
                    (if (gx#core-bound-module? _%hd182232%_)
                        (_%import1181918%_
                         (gx#syntax-local-e__0 _%hd182232%_)
                         _%K182233%_
                         _%rest182234%_
                         _%r182235%_)
                        (if (gx#core-library-module-path? _%hd182232%_)
                            (_%import1181918%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%hd182232%_))
                             _%K182233%_
                             _%rest182234%_
                             _%r182235%_)
                            (if (gx#core-library-relative-module-path?
                                 _%hd182232%_)
                                (_%import1181918%_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _%hd182232%_))
                                 _%K182233%_
                                 _%rest182234%_
                                 _%r182235%_)
                                (let ((_%e182241%_ (gx#stx-e _%hd182232%_)))
                                  (if (pair? _%e182241%_)
                                      (let ((_%$e182244%_
                                             (gx#stx-e (##car _%e182241%_))))
                                        (if (eq? 'spec: _%$e182244%_)
                                            (_%import-spec181921%_
                                             _%hd182232%_
                                             _%K182233%_
                                             _%rest182234%_
                                             _%r182235%_)
                                            (if (eq? 'in: _%$e182244%_)
                                                (_%import-submodule181919%_
                                                 _%hd182232%_
                                                 _%K182233%_
                                                 _%rest182234%_
                                                 _%r182235%_)
                                                (if (eq? 'runtime:
                                                         _%$e182244%_)
                                                    (_%import-runtime181920%_
                                                     _%hd182232%_
                                                     _%K182233%_
                                                     _%rest182234%_
                                                     _%r182235%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _%stx181914%_
                                                     _%hd182232%_)))))
                                      (if (string? _%e182241%_)
                                          (_%import1181918%_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _%hd182232%_
                                             (gx#stx-source _%stx181914%_)))
                                           _%K182233%_
                                           _%rest182234%_
                                           _%r182235%_)
                                          (if (##structure-instance-of?
                                               _%e182241%_
                                               'gx#module-context::t)
                                              (_%K182233%_
                                               _%rest182234%_
                                               (cons _%e182241%_ _%r182235%_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _%stx181914%_
                                               _%hd182232%_))))))))))
                 (_%import1181918%_
                  (lambda (_%ctx182221%_
                           _%K182222%_
                           _%rest182223%_
                           _%r182224%_)
                    (let ((_%dphi182226%_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_%K182222%_
                       _%rest182223%_
                       (cons (##structure
                              gx#import-set::t
                              _%ctx182221%_
                              _%dphi182226%_
                              (map (lambda (_%g182227182229%_)
                                     (gx#core-module-export->import__%
                                      _%g182227182229%_
                                      '#f
                                      _%dphi182226%_))
                                   (##unchecked-structure-ref
                                    _%ctx182221%_
                                    '9
                                    '#f
                                    '#f)))
                             _%r182224%_)))))
                 (_%import-submodule181919%_
                  (lambda (_%hd182188%_ _%K182189%_ _%rest182190%_ _%r182191%_)
                    (let* ((_%e182192182199%_ _%hd182188%_)
                           (_%E182194182203%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e182192182199%_)))
                           (_%E182193182217%_
                            (lambda ()
                              (if (gx#stx-pair? _%e182192182199%_)
                                  (let ((_%e182195182207%_
                                         (gx#syntax-e _%e182192182199%_)))
                                    (let ((_%hd182196182210%_
                                           (##car _%e182195182207%_))
                                          (_%tl182197182212%_
                                           (##cdr _%e182195182207%_)))
                                      (let ((_%spath182215%_
                                             _%tl182197182212%_))
                                        (_%import1181918%_
                                         (_%import-spec-source181922%_
                                          _%spath182215%_)
                                         _%K182189%_
                                         _%rest182190%_
                                         _%r182191%_))))
                                  (_%E182194182203%_)))))
                      (_%E182193182217%_))))
                 (_%import-runtime181920%_
                  (lambda (_%hd182155%_ _%K182156%_ _%rest182157%_ _%r182158%_)
                    (let* ((_%e182159182166%_ _%hd182155%_)
                           (_%E182161182170%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e182159182166%_)))
                           (_%E182160182184%_
                            (lambda ()
                              (if (gx#stx-pair? _%e182159182166%_)
                                  (let ((_%e182162182174%_
                                         (gx#syntax-e _%e182159182166%_)))
                                    (let ((_%hd182163182177%_
                                           (##car _%e182162182174%_))
                                          (_%tl182164182179%_
                                           (##cdr _%e182162182174%_)))
                                      (let ((_%spath182182%_
                                             _%tl182164182179%_))
                                        (_%K182156%_
                                         _%rest182157%_
                                         (cons (_%import-spec-source181922%_
                                                _%spath182182%_)
                                               _%r182158%_)))))
                                  (_%E182161182170%_)))))
                      (_%E182160182184%_))))
                 (_%import-spec181921%_
                  (lambda (_%hd181993%_ _%K181994%_ _%rest181995%_ _%r181996%_)
                    (let* ((_%e181997182014%_ _%hd181993%_)
                           (_%E182006182018%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e181997182014%_)))
                           (_%E181999182129%_
                            (lambda ()
                              (if (gx#stx-pair? _%e181997182014%_)
                                  (let ((_%e182007182022%_
                                         (gx#syntax-e _%e181997182014%_)))
                                    (let ((_%hd182008182025%_
                                           (##car _%e182007182022%_))
                                          (_%tl182009182027%_
                                           (##cdr _%e182007182022%_)))
                                      (if (gx#stx-pair? _%tl182009182027%_)
                                          (let ((_%e182010182030%_
                                                 (gx#syntax-e
                                                  _%tl182009182027%_)))
                                            (let ((_%hd182011182033%_
                                                   (##car _%e182010182030%_))
                                                  (_%tl182012182035%_
                                                   (##cdr _%e182010182030%_)))
                                              (let* ((_%path182038%_
                                                      _%hd182011182033%_)
                                                     (_%specs182040%_
                                                      _%tl182012182035%_))
                                                (let ((_%src-ctx182042%_
                                                       (_%import-spec-source181922%_
                                                        _%path182038%_))
                                                      (_%exports182043%_
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
                                                      (_%specs182044%_
                                                       (gx#syntax->list
                                                        _%specs182040%_)))
                                                  (for-each
                                                   (lambda (_%out182046%_)
                                                     (__hash-put!
                                                      _%exports182043%_
                                                      (cons (##unchecked-structure-ref
                                                             _%out182046%_
                                                             '3
                                                             '#f
                                                             '#f)
                                                            (##unchecked-structure-ref
                                                             _%out182046%_
                                                             '4
                                                             '#f
                                                             '#f))
                                                      _%out182046%_))
                                                   (##unchecked-structure-ref
                                                    _%src-ctx182042%_
                                                    '9
                                                    '#f
                                                    '#f))
                                                  (_%K181994%_
                                                   _%rest181995%_
                                                   (foldl__0
                                                    (lambda (_%spec182048%_
                                                             _%r182049%_)
                                                      (let* ((_%e182050182066%_
                                                              _%spec182048%_)
                                                             (_%E182052182070%_
                                                              (lambda ()
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid syntax-case clause"
                         _%e182050182066%_)))
                     (_%E182051182125%_
                      (lambda ()
                        (if (gx#stx-pair? _%e182050182066%_)
                            (let ((_%e182053182074%_
                                   (gx#syntax-e _%e182050182066%_)))
                              (let ((_%hd182054182077%_
                                     (##car _%e182053182074%_))
                                    (_%tl182055182079%_
                                     (##cdr _%e182053182074%_)))
                                (let ((_%phi182082%_ _%hd182054182077%_))
                                  (if (gx#stx-pair? _%tl182055182079%_)
                                      (let ((_%e182056182084%_
                                             (gx#syntax-e _%tl182055182079%_)))
                                        (let ((_%hd182057182087%_
                                               (##car _%e182056182084%_))
                                              (_%tl182058182089%_
                                               (##cdr _%e182056182084%_)))
                                          (let ((_%name182092%_
                                                 _%hd182057182087%_))
                                            (if (gx#stx-pair?
                                                 _%tl182058182089%_)
                                                (let ((_%e182059182094%_
                                                       (gx#syntax-e
                                                        _%tl182058182089%_)))
                                                  (let ((_%hd182060182097%_
                                                         (##car _%e182059182094%_))
                                                        (_%tl182061182099%_
                                                         (##cdr _%e182059182094%_)))
                                                    (let ((_%src-phi182102%_
                                                           _%hd182060182097%_))
                                                      (if (gx#stx-pair?
                                                           _%tl182061182099%_)
                                                          (let ((_%e182062182104%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl182061182099%_)))
                    (let ((_%hd182063182107%_ (##car _%e182062182104%_))
                          (_%tl182064182109%_ (##cdr _%e182062182104%_)))
                      (let ((_%src-name182112%_ _%hd182063182107%_))
                        (if (gx#stx-null? _%tl182064182109%_)
                            (if (and (gx#stx-fixnum? _%src-phi182102%_)
                                     (gx#identifier? _%src-name182112%_)
                                     (gx#stx-fixnum? _%phi182082%_)
                                     (gx#identifier? _%name182092%_))
                                (let ((_%src-phi182114%_
                                       (gx#stx-e _%src-phi182102%_))
                                      (_%src-name182115%_
                                       (gx#core-identifier-key
                                        _%src-name182112%_))
                                      (_%phi182116%_ (gx#stx-e _%phi182082%_))
                                      (_%name182117%_
                                       (gx#core-identifier-key
                                        _%name182092%_)))
                                  (let ((_%$e182119%_
                                         (__hash-get
                                          _%exports182043%_
                                          (cons _%src-phi182114%_
                                                _%src-name182115%_))))
                                    (if _%$e182119%_
                                        ((lambda (_%out182122%_)
                                           (cons (gx#core-module-export->import__%
                                                  _%out182122%_
                                                  _%name182117%_
                                                  (fx- _%phi182116%_
                                                       _%src-phi182114%_))
                                                 _%r182049%_))
                                         _%$e182119%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; no matching export"
                                         _%stx181914%_
                                         _%hd181993%_))))
                                (_%E182052182070%_))
                            (_%E182052182070%_)))))
                  (_%E182052182070%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E182052182070%_)))))
                                      (_%E182052182070%_)))))
                            (_%E182052182070%_)))))
                (_%E182051182125%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r181996%_
                                                    _%specs182044%_))))))
                                          (_%E182006182018%_))))
                                  (_%E182006182018%_))))
                           (_%E181998182151%_
                            (lambda ()
                              (if (gx#stx-pair? _%e181997182014%_)
                                  (let ((_%e182000182133%_
                                         (gx#syntax-e _%e181997182014%_)))
                                    (let ((_%hd182001182136%_
                                           (##car _%e182000182133%_))
                                          (_%tl182002182138%_
                                           (##cdr _%e182000182133%_)))
                                      (if (gx#stx-pair? _%tl182002182138%_)
                                          (let ((_%e182003182141%_
                                                 (gx#syntax-e
                                                  _%tl182002182138%_)))
                                            (let ((_%hd182004182144%_
                                                   (##car _%e182003182141%_))
                                                  (_%tl182005182146%_
                                                   (##cdr _%e182003182141%_)))
                                              (let ((_%path182149%_
                                                     _%hd182004182144%_))
                                                (if (gx#stx-null?
                                                     _%tl182005182146%_)
                                                    (_%K181994%_
                                                     _%rest181995%_
                                                     (cons (_%import-spec-source181922%_
                                                            _%path182149%_)
                                                           _%r181996%_))
                                                    (_%E181999182129%_)))))
                                          (_%E181999182129%_))))
                                  (_%E181999182129%_)))))
                      (_%E181998182151%_))))
                 (_%import-spec-source181922%_
                  (lambda (_%spath181991%_)
                    (gx#core-import-nested-module
                     _%spath181991%_
                     _%stx181914%_)))
                 (_%import!181923%_
                  (lambda (_%rbody181936%_)
                    (letrec* ((_%current-ctx181938%_
                               (gx#current-expander-context))
                              (_%deps181939%_ (make-hash-table-eq))
                              (_%bind!181940%_
                               (lambda (_%hd181989%_)
                                 (gx#core-bind-import!__1
                                  _%hd181989%_
                                  _%current-ctx181938%_))))
                      (let _%lp181942%_ ((_%rest181944%_ _%rbody181936%_)
                                         (_%body181945%_ '()))
                        (let* ((_%rest181946181954%_ _%rest181944%_)
                               (_%else181948181965%_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _%current-ctx181938%_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _%current-ctx181938%_
                                       (foldl__0
                                        cons
                                        (##unchecked-structure-ref
                                         _%current-ctx181938%_
                                         '8
                                         '#f
                                         '#f)
                                        _%body181945%_)
                                       '8
                                       '#f
                                       '#f)
                                      '#!void)
                                  (__hash-for-each
                                   (lambda (_%ctx181962%_ _%_181963%_)
                                     (gx#eval-module _%ctx181962%_))
                                   _%deps181939%_)
                                  _%body181945%_))
                               (_%K181950181977%_
                                (lambda (_%rest181968%_ _%hd181969%_)
                                  (if (##structure-direct-instance-of?
                                       _%hd181969%_
                                       'gx#module-import::t)
                                      (let ()
                                        (_%bind!181940%_ _%hd181969%_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _%hd181969%_
                                                   '3
                                                   '#f
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _%hd181969%_
                                                            '1
                                                            '#f
                                                            '#f)
                                                           '3
                                                           '#f
                                                           '#f)))
                                            (__hash-put!
                                             _%deps181939%_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _%hd181969%_
                                               '1
                                               '#f
                                               '#f)
                                              '1
                                              '#f
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _%hd181969%_
                                           'gx#import-set::t)
                                          (let ()
                                            (for-each
                                             _%bind!181940%_
                                             (##unchecked-structure-ref
                                              _%hd181969%_
                                              '3
                                              '#f
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _%hd181969%_
                                                  '2
                                                  '#f
                                                  '#f))
                                                (__hash-put!
                                                 _%deps181939%_
                                                 (##unchecked-structure-ref
                                                  _%hd181969%_
                                                  '1
                                                  '#f
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_%$e181973%_
                                                 (##structure-instance-of?
                                                  _%hd181969%_
                                                  'gx#module-context::t)))
                                            (if _%$e181973%_
                                                _%$e181973%_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _%stx181914%_
                                                 _%hd181969%_)))))
                                  (_%lp181942%_
                                   _%rest181968%_
                                   (cons _%hd181969%_ _%body181945%_)))))
                          (if (pair? _%rest181946181954%_)
                              (let ((_%hd181951181980%_
                                     (##car _%rest181946181954%_))
                                    (_%tl181952181982%_
                                     (##cdr _%rest181946181954%_)))
                                (let* ((_%hd181985%_ _%hd181951181980%_)
                                       (_%rest181987%_ _%tl181952181982%_))
                                  (_%K181950181977%_
                                   _%rest181987%_
                                   _%hd181985%_)))
                              (_%else181948181965%_)))))))
                 (_%expanded-import?181924%_
                  (lambda (_%e181928%_)
                    (let ((_%$e181930%_
                           (##structure-direct-instance-of?
                            _%e181928%_
                            'gx#import-set::t)))
                      (if _%$e181930%_
                          _%$e181930%_
                          (let ((_%$e181933%_
                                 (##structure-direct-instance-of?
                                  _%e181928%_
                                  'gx#module-import::t)))
                            (if _%$e181933%_
                                _%$e181933%_
                                (##structure-instance-of?
                                 _%e181928%_
                                 'gx#module-context::t))))))))
          (let ((_%rbody181926%_
                 (gx#core-expand-import/export
                  _%stx181914%_
                  _%expanded-import?181924%_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _%expand1181917%_)))
            (if _%internal-expand?181915%_
                (reverse _%rbody181926%_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_%import!181923%_ _%rbody181926%_))
                 (gx#stx-source _%stx181914%_)))))))
    (define gx#core-expand-import%__0
      (lambda (_%stx182253%_)
        (let ((_%internal-expand?182255%_ '#f))
          (gx#core-expand-import%__%
           _%stx182253%_
           _%internal-expand?182255%_))))
    (define gx#core-expand-import%
      (lambda _g184912_
        (let ((_g184913_ (##length _g184912_)))
          (cond ((##fx= _g184913_ 1)
                 (apply gx#core-expand-import%__0 _g184912_))
                ((##fx= _g184913_ 2)
                 (apply gx#core-expand-import%__% _g184912_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g184912_))))))
    (define gx#core-import-nested-module
      (lambda (_%spath181841%_ _%where181842%_)
        (let* ((_%e181843181850%_ _%spath181841%_)
               (_%E181845181854%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e181843181850%_)))
               (_%E181844181909%_
                (lambda ()
                  (if (gx#stx-pair? _%e181843181850%_)
                      (let ((_%e181846181858%_
                             (gx#syntax-e _%e181843181850%_)))
                        (let ((_%hd181847181861%_ (##car _%e181846181858%_))
                              (_%tl181848181863%_ (##cdr _%e181846181858%_)))
                          (let* ((_%origin181866%_ _%hd181847181861%_)
                                 (_%sub181868%_ _%tl181848181863%_)
                                 (_%origin-ctx181870%_
                                  (if (gx#stx-false? _%origin181866%_)
                                      (gx#current-expander-context)
                                      (gx#import-module__0 _%origin181866%_))))
                            (let _%lp181872%_ ((_%rest181874%_ _%sub181868%_)
                                               (_%ctx181875%_
                                                _%origin-ctx181870%_))
                              (let* ((_%e181876181883%_ _%rest181874%_)
                                     (_%E181878181887%_
                                      (lambda () _%ctx181875%_))
                                     (_%E181877181905%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%e181876181883%_)
                                            (let ((_%e181879181891%_
                                                   (gx#syntax-e
                                                    _%e181876181883%_)))
                                              (let ((_%hd181880181894%_
                                                     (##car _%e181879181891%_))
                                                    (_%tl181881181896%_
                                                     (##cdr _%e181879181891%_)))
                                                (let* ((_%id181899%_
                                                        _%hd181880181894%_)
                                                       (_%rest181901%_
                                                        _%tl181881181896%_)
                                                       (_%bind181903%_
                                                        (gx#resolve-identifier__%
                                                         _%id181899%_
                                                         '0
                                                         _%ctx181875%_)))
                                                  (if (and (##structure-direct-instance-of?
                                                            _%bind181903%_
                                                            'gx#syntax-binding::t)
                                                           (##structure-instance-of?
                                                            (##unchecked-structure-ref
                                                             _%bind181903%_
                                                             '5
                                                             '#f
                                                             '#f)
                                                            'gx#module-context::t))
                                                      '#!void
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; not bound as module"
                                                       _%where181842%_
                                                       _%spath181841%_
                                                       _%id181899%_))
                                                  (_%lp181872%_
                                                   _%rest181901%_
                                                   (##unchecked-structure-ref
                                                    _%bind181903%_
                                                    '5
                                                    '#f
                                                    '#f)))))
                                            (_%E181878181887%_)))))
                                (_%E181877181905%_))))))
                      (_%E181845181854%_)))))
          (_%E181844181909%_))))
    (define gx#core-expand-import-source
      (lambda (_%hd181839%_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _%hd181839%_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_%stx181334%_ _%internal-expand?181335%_)
        (letrec* ((_%make-export__184840184841%_
                   (lambda (_%bind181787%_
                            _%phi181788%_
                            _%ctx181789%_
                            _%name181790%_)
                     (let* ((_%key181792%_
                             (##unchecked-structure-ref
                              _%bind181787%_
                              '2
                              '#f
                              '#f))
                            (_%export-key181794%_
                             (if _%name181790%_
                                 (gx#core-identifier-key _%name181790%_)
                                 _%key181792%_)))
                       (##structure
                        gx#module-export::t
                        _%ctx181789%_
                        _%key181792%_
                        _%phi181788%_
                        _%export-key181794%_
                        (let ((_%$e181797%_
                               (##structure-instance-of?
                                _%bind181787%_
                                'gx#extern-binding::t)))
                          (if _%$e181797%_
                              _%$e181797%_
                              (##structure-direct-instance-of?
                               _%bind181787%_
                               'gx#import-binding::t)))))))
                  (_%make-export__0__184842184845%_
                   (lambda (_%bind181803%_)
                     (let* ((_%phi181805%_ (gx#current-export-expander-phi))
                            (_%ctx181807%_ (gx#current-expander-context))
                            (_%name181809%_ '#f))
                       (_%make-export__184840184841%_
                        _%bind181803%_
                        _%phi181805%_
                        _%ctx181807%_
                        _%name181809%_))))
                  (_%make-export__1__184843184846%_
                   (lambda (_%bind181811%_ _%phi181812%_)
                     (let* ((_%ctx181814%_ (gx#current-expander-context))
                            (_%name181816%_ '#f))
                       (_%make-export__184840184841%_
                        _%bind181811%_
                        _%phi181812%_
                        _%ctx181814%_
                        _%name181816%_))))
                  (_%make-export__2__184844184847%_
                   (lambda (_%bind181818%_ _%phi181819%_ _%ctx181820%_)
                     (let ((_%name181822%_ '#f))
                       (_%make-export__184840184841%_
                        _%bind181818%_
                        _%phi181819%_
                        _%ctx181820%_
                        _%name181822%_))))
                  (_%make-export181337%_
                   (lambda _g184914_
                     (let ((_g184915_ (##length _g184914_)))
                       (cond ((##fx= _g184915_ 1)
                              (apply _%make-export__0__184842184845%_
                                     _g184914_))
                             ((##fx= _g184915_ 2)
                              (apply _%make-export__1__184843184846%_
                                     _g184914_))
                             ((##fx= _g184915_ 3)
                              (apply _%make-export__2__184844184847%_
                                     _g184914_))
                             ((##fx= _g184915_ 4)
                              (apply _%make-export__184840184841%_ _g184914_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g184914_))))))
                  (_%expand1181338%_
                   (lambda (_%hd181492%_
                            _%K181493%_
                            _%rest181494%_
                            _%r181495%_)
                     (let* ((_%e181496181528%_ _%hd181492%_)
                            (_%E181523181532%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _%stx181334%_
                                _%hd181492%_)))
                            (_%E181513181616%_
                             (lambda ()
                               (if (gx#stx-pair? _%e181496181528%_)
                                   (let ((_%e181524181536%_
                                          (gx#syntax-e _%e181496181528%_)))
                                     (let ((_%hd181525181539%_
                                            (##car _%e181524181536%_))
                                           (_%tl181526181541%_
                                            (##cdr _%e181524181536%_)))
                                       (if (eq? (gx#stx-e _%hd181525181539%_)
                                                'import:)
                                           (let ((_%in181544%_
                                                  _%tl181526181541%_))
                                             (if (gx#stx-list? _%in181544%_)
                                                 (let _%lp181546%_ ((_%in-rest181548%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%in181544%_)
                            (_%r181549%_ _%r181495%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%e181550181557%_
                                                           _%in-rest181548%_)
                                                          (_%E181552181561%_
                                                           (lambda ()
                                                             (_%K181493%_
                                                              _%rest181494%_
                                                              _%r181549%_)))
                                                          (_%E181551181612%_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%e181550181557%_)
                         (let ((_%e181553181565%_
                                (gx#syntax-e _%e181550181557%_)))
                           (let ((_%hd181554181568%_ (##car _%e181553181565%_))
                                 (_%tl181555181570%_
                                  (##cdr _%e181553181565%_)))
                             (let* ((_%hd181573%_ _%hd181554181568%_)
                                    (_%in-rest181575%_ _%tl181555181570%_)
                                    (_%src181610%_
                                     (if (gx#core-bound-module? _%hd181573%_)
                                         (gx#syntax-local-e__0 _%hd181573%_)
                                         (if (gx#core-library-module-path?
                                              _%hd181573%_)
                                             (gx#import-module__0
                                              (gx#core-resolve-library-module-path
                                               _%hd181573%_))
                                             (if (gx#core-library-relative-module-path?
                                                  _%hd181573%_)
                                                 (gx#import-module__0
                                                  (gx#core-resolve-library-relative-module-path
                                                   _%hd181573%_))
                                                 (if (gx#stx-string?
                                                      _%hd181573%_)
                                                     (gx#import-module__0
                                                      (gx#core-resolve-module-path__%
                                                       _%hd181573%_
                                                       (gx#stx-source
                                                        _%stx181334%_)))
                                                     (let* ((_%e181581181588%_
                                                             _%hd181573%_)
                                                            (_%E181583181592%_
                                                             (lambda ()
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; illegal re-export"
                                                                _%stx181334%_
                                                                _%hd181573%_)))
                                                            (_%E181582181606%_
                                                             (lambda ()
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%e181581181588%_)
                           (let ((_%e181584181596%_
                                  (gx#syntax-e _%e181581181588%_)))
                             (let ((_%hd181585181599%_
                                    (##car _%e181584181596%_))
                                   (_%tl181586181601%_
                                    (##cdr _%e181584181596%_)))
                               (if (eq? (gx#stx-e _%hd181585181599%_) 'in:)
                                   (let ((_%spath181604%_ _%tl181586181601%_))
                                     (gx#core-import-nested-module
                                      _%spath181604%_
                                      _%stx181334%_))
                                   (_%E181583181592%_))))
                           (_%E181583181592%_)))))
               (_%E181582181606%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (_%lp181546%_
                                _%in-rest181575%_
                                (_%export-imports181339%_
                                 _%src181610%_
                                 _%r181549%_)))))
                         (_%E181552181561%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E181551181612%_)))
                                                 (_%E181523181532%_)))
                                           (_%E181523181532%_))))
                                   (_%E181523181532%_))))
                            (_%E181500181656%_
                             (lambda ()
                               (if (gx#stx-pair? _%e181496181528%_)
                                   (let ((_%e181514181620%_
                                          (gx#syntax-e _%e181496181528%_)))
                                     (let ((_%hd181515181623%_
                                            (##car _%e181514181620%_))
                                           (_%tl181516181625%_
                                            (##cdr _%e181514181620%_)))
                                       (if (eq? (gx#stx-e _%hd181515181623%_)
                                                'rename:)
                                           (if (gx#stx-pair?
                                                _%tl181516181625%_)
                                               (let ((_%e181517181628%_
                                                      (gx#syntax-e
                                                       _%tl181516181625%_)))
                                                 (let ((_%hd181518181631%_
                                                        (##car _%e181517181628%_))
                                                       (_%tl181519181633%_
                                                        (##cdr _%e181517181628%_)))
                                                   (let ((_%id181636%_
                                                          _%hd181518181631%_))
                                                     (if (gx#stx-pair?
                                                          _%tl181519181633%_)
                                                         (let ((_%e181520181638%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl181519181633%_)))
                   (let ((_%hd181521181641%_ (##car _%e181520181638%_))
                         (_%tl181522181643%_ (##cdr _%e181520181638%_)))
                     (let ((_%name181646%_ _%hd181521181641%_))
                       (if (gx#stx-null? _%tl181522181643%_)
                           (let* ((_%phi181648%_
                                   (gx#current-export-expander-phi))
                                  (_%$e181650%_
                                   (gx#core-resolve-identifier__1
                                    _%id181636%_
                                    _%phi181648%_)))
                             (if _%$e181650%_
                                 ((lambda (_%bind181653%_)
                                    (_%K181493%_
                                     _%rest181494%_
                                     (cons (_%make-export__184840184841%_
                                            _%bind181653%_
                                            _%phi181648%_
                                            (gx#current-expander-context)
                                            _%name181646%_)
                                           _%r181495%_)))
                                  _%$e181650%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Reference to unbound identifier"
                                  _%stx181334%_
                                  _%hd181492%_
                                  _%id181636%_)))
                           (_%E181513181616%_)))))
                 (_%E181513181616%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E181513181616%_))
                                           (_%E181513181616%_))))
                                   (_%E181513181616%_))))
                            (_%E181499181706%_
                             (lambda ()
                               (if (gx#stx-pair? _%e181496181528%_)
                                   (let ((_%e181501181660%_
                                          (gx#syntax-e _%e181496181528%_)))
                                     (let ((_%hd181502181663%_
                                            (##car _%e181501181660%_))
                                           (_%tl181503181665%_
                                            (##cdr _%e181501181660%_)))
                                       (if (eq? (gx#stx-e _%hd181502181663%_)
                                                'spec:)
                                           (if (gx#stx-pair?
                                                _%tl181503181665%_)
                                               (let ((_%e181504181668%_
                                                      (gx#syntax-e
                                                       _%tl181503181665%_)))
                                                 (let ((_%hd181505181671%_
                                                        (##car _%e181504181668%_))
                                                       (_%tl181506181673%_
                                                        (##cdr _%e181504181668%_)))
                                                   (let ((_%phi181676%_
                                                          _%hd181505181671%_))
                                                     (if (gx#stx-pair?
                                                          _%tl181506181673%_)
                                                         (let ((_%e181507181678%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl181506181673%_)))
                   (let ((_%hd181508181681%_ (##car _%e181507181678%_))
                         (_%tl181509181683%_ (##cdr _%e181507181678%_)))
                     (let ((_%id181686%_ _%hd181508181681%_))
                       (if (gx#stx-pair? _%tl181509181683%_)
                           (let ((_%e181510181688%_
                                  (gx#syntax-e _%tl181509181683%_)))
                             (let ((_%hd181511181691%_
                                    (##car _%e181510181688%_))
                                   (_%tl181512181693%_
                                    (##cdr _%e181510181688%_)))
                               (let ((_%name181696%_ _%hd181511181691%_))
                                 (if (gx#stx-null? _%tl181512181693%_)
                                     (if (and (gx#stx-fixnum? _%phi181676%_)
                                              (gx#identifier? _%id181686%_)
                                              (gx#identifier? _%name181696%_))
                                         (let* ((_%phi181698%_
                                                 (gx#stx-e _%phi181676%_))
                                                (_%$e181700%_
                                                 (gx#core-resolve-identifier__1
                                                  _%id181686%_
                                                  _%phi181698%_)))
                                           (if _%$e181700%_
                                               ((lambda (_%bind181703%_)
                                                  (_%K181493%_
                                                   _%rest181494%_
                                                   (cons (_%make-export__184840184841%_
                                                          _%bind181703%_
                                                          _%phi181698%_
                                                          (gx#current-expander-context)
                                                          _%name181696%_)
                                                         _%r181495%_)))
                                                _%$e181700%_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _%stx181334%_
                                                _%hd181492%_
                                                _%id181686%_)))
                                         (_%E181500181656%_))
                                     (_%E181500181656%_)))))
                           (_%E181500181656%_)))))
                 (_%E181500181656%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E181500181656%_))
                                           (_%E181500181656%_))))
                                   (_%E181500181656%_))))
                            (_%E181498181718%_
                             (lambda ()
                               (let ((_%id181710%_ _%e181496181528%_))
                                 (if (gx#identifier? _%id181710%_)
                                     (let ((_%$e181712%_
                                            (gx#core-resolve-identifier__1
                                             _%id181710%_
                                             (gx#current-export-expander-phi))))
                                       (if _%$e181712%_
                                           ((lambda (_%bind181715%_)
                                              (_%K181493%_
                                               _%rest181494%_
                                               (cons (_%make-export__0__184842184845%_
                                                      _%bind181715%_)
                                                     _%r181495%_)))
                                            _%$e181712%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _%stx181334%_
                                            _%hd181492%_)))
                                     (_%E181499181706%_)))))
                            (_%E181497181782%_
                             (lambda ()
                               (if (eq? (gx#stx-e _%e181496181528%_) '#t)
                                   (let* ((_%current-ctx181722%_
                                           (gx#current-expander-context))
                                          (_%current-phi181724%_
                                           (gx#current-export-expander-phi))
                                          (_%phi-ctx181726%_
                                           (gx#core-context-shift
                                            _%current-ctx181722%_
                                            _%current-phi181724%_))
                                          (_%phi-bind181728%_
                                           (hash->list
                                            (##unchecked-structure-ref
                                             _%phi-ctx181726%_
                                             '2
                                             '#f
                                             '#f))))
                                     (let _%lp181731%_ ((_%bind-rest181733%_
                                                         _%phi-bind181728%_)
                                                        (_%set181734%_ '()))
                                       (let* ((_%bind-rest181735181745%_
                                               _%bind-rest181733%_)
                                              (_%else181737181753%_
                                               (lambda ()
                                                 (_%K181493%_
                                                  _%rest181494%_
                                                  (cons (##structure
                                                         gx#export-set::t
                                                         '#f
                                                         _%current-phi181724%_
                                                         _%set181734%_)
                                                        _%r181495%_))))
                                              (_%K181739181763%_
                                               (lambda (_%bind-rest181756%_
                                                        _%bind181757%_
                                                        _%key181758%_)
                                                 (if (or (##structure-direct-instance-of?
                                                          _%bind181757%_
                                                          'gx#import-binding::t)
                                                         (gx#private-feature-binding?
                                                          _%bind181757%_))
                                                     (_%lp181731%_
                                                      _%bind-rest181756%_
                                                      _%set181734%_)
                                                     (_%lp181731%_
                                                      _%bind-rest181756%_
                                                      (cons (_%make-export__2__184844184847%_
                                                             _%bind181757%_
                                                             _%current-phi181724%_
                                                             _%current-ctx181722%_)
                                                            _%set181734%_))))))
                                         (if (pair? _%bind-rest181735181745%_)
                                             (let ((_%hd181740181766%_
                                                    (##car _%bind-rest181735181745%_))
                                                   (_%tl181741181768%_
                                                    (##cdr _%bind-rest181735181745%_)))
                                               (if (pair? _%hd181740181766%_)
                                                   (let ((_%hd181742181771%_
                                                          (##car _%hd181740181766%_))
                                                         (_%tl181743181773%_
                                                          (##cdr _%hd181740181766%_)))
                                                     (let* ((_%key181776%_
                                                             _%hd181742181771%_)
                                                            (_%bind181778%_
                                                             _%tl181743181773%_)
                                                            (_%bind-rest181780%_
                                                             _%tl181741181768%_))
                                                       (_%K181739181763%_
                                                        _%bind-rest181780%_
                                                        _%bind181778%_
                                                        _%key181776%_)))
                                                   (_%else181737181753%_)))
                                             (_%else181737181753%_)))))
                                   (_%E181498181718%_)))))
                       (_%E181497181782%_))))
                  (_%export-imports181339%_
                   (lambda (_%src181369%_ _%r181370%_)
                     (letrec* ((_%current-ctx181372%_
                                (gx#current-expander-context))
                               (_%current-phi181373%_
                                (gx#current-export-expander-phi))
                               (_%import->export181374%_
                                (lambda (_%in181455%_)
                                  (let* ((_%in181456181464%_ _%in181455%_)
                                         (_%E181458181467%_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _%in181456181464%_
                                                   '((module-import
                                                      out
                                                      key
                                                      phi)))
                                            '#!void))
                                         (_%K181459181474%_
                                          (lambda (_%phi181470%_
                                                   _%key181471%_
                                                   _%out181472%_)
                                            (##structure
                                             gx#module-export::t
                                             _%current-ctx181372%_
                                             _%key181471%_
                                             _%phi181470%_
                                             _%key181471%_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _%in181456181464%_
                                         'gx#module-import::t)
                                        (let* ((_%e181460181477%_
                                                (##unchecked-structure-ref
                                                 _%in181456181464%_
                                                 '1
                                                 '#f
                                                 '#f))
                                               (_%out181480%_
                                                _%e181460181477%_)
                                               (_%e181461181482%_
                                                (##unchecked-structure-ref
                                                 _%in181456181464%_
                                                 '2
                                                 '#f
                                                 '#f))
                                               (_%key181485%_
                                                _%e181461181482%_)
                                               (_%e181462181487%_
                                                (##unchecked-structure-ref
                                                 _%in181456181464%_
                                                 '3
                                                 '#f
                                                 '#f))
                                               (_%phi181490%_
                                                _%e181462181487%_))
                                          (_%K181459181474%_
                                           _%phi181490%_
                                           _%key181485%_
                                           _%out181480%_))
                                        (_%E181458181467%_)))))
                               (_%fold-e181375%_
                                (lambda (_%in181377%_ _%r181378%_)
                                  (let* ((_%in181379181393%_ _%in181377%_)
                                         (_%else181382181401%_
                                          (lambda () _%r181378%_)))
                                    (let ((_%K181388181437%_
                                           (lambda (_%phi181433%_
                                                    _%key181434%_
                                                    _%out181435%_)
                                             (if (and (fx= _%phi181433%_
                                                           _%current-phi181373%_)
                                                      (eq? _%src181369%_
                                                           (##unchecked-structure-ref
                                                            _%out181435%_
                                                            '1
                                                            '#f
                                                            '#f)))
                                                 (cons (_%import->export181374%_
                                                        _%in181377%_)
                                                       _%r181378%_)
                                                 _%r181378%_)))
                                          (_%K181384181412%_
                                           (lambda (_%imports181405%_
                                                    _%phi181406%_
                                                    _%ctx181407%_)
                                             (if (and (fx= _%phi181406%_
                                                           _%current-phi181373%_)
                                                      (eq? _%src181369%_
                                                           _%ctx181407%_))
                                                 (foldl__0
                                                  (lambda (_%in181409%_
                                                           _%r181410%_)
                                                    (cons (_%import->export181374%_
                                                           _%in181409%_)
                                                          _%r181410%_))
                                                  _%r181378%_
                                                  _%imports181405%_)
                                                 _%r181378%_))))
                                      (let ((_%try-match181381181430%_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _%in181379181393%_
                                                    'gx#import-set::t)
                                                   (let* ((_%e181385181415%_
                                                           (##unchecked-structure-ref
                                                            _%in181379181393%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                          (_%e181386181420%_
                                                           (##unchecked-structure-ref
                                                            _%in181379181393%_
                                                            '2
                                                            '#f
                                                            '#f))
                                                          (_%e181387181425%_
                                                           (##unchecked-structure-ref
                                                            _%in181379181393%_
                                                            '3
                                                            '#f
                                                            '#f)))
                                                     (let ((_%ctx181418%_
                                                            _%e181385181415%_)
                                                           (_%phi181423%_
                                                            _%e181386181420%_)
                                                           (_%imports181428%_
                                                            _%e181387181425%_))
                                                       (_%K181384181412%_
                                                        _%imports181428%_
                                                        _%phi181423%_
                                                        _%ctx181418%_)))
                                                   (_%else181382181401%_)))))
                                        (if (##structure-direct-instance-of?
                                             _%in181379181393%_
                                             'gx#module-import::t)
                                            (let* ((_%e181389181440%_
                                                    (##unchecked-structure-ref
                                                     _%in181379181393%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                   (_%e181390181445%_
                                                    (##unchecked-structure-ref
                                                     _%in181379181393%_
                                                     '2
                                                     '#f
                                                     '#f))
                                                   (_%e181391181450%_
                                                    (##unchecked-structure-ref
                                                     _%in181379181393%_
                                                     '3
                                                     '#f
                                                     '#f)))
                                              (let ((_%out181443%_
                                                     _%e181389181440%_)
                                                    (_%key181448%_
                                                     _%e181390181445%_)
                                                    (_%phi181453%_
                                                     _%e181391181450%_))
                                                (_%K181388181437%_
                                                 _%phi181453%_
                                                 _%key181448%_
                                                 _%out181443%_)))
                                            (_%try-match181381181430%_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _%src181369%_
                              _%current-phi181373%_
                              (foldl__0
                               _%fold-e181375%_
                               '()
                               (##unchecked-structure-ref
                                _%current-ctx181372%_
                                '8
                                '#f
                                '#f)))
                             _%r181370%_))))
                  (_%export!181340%_
                   (lambda (_%rbody181356%_)
                     (letrec* ((_%current-ctx181358%_
                                (gx#current-expander-context))
                               (_%fold-e181359%_
                                (lambda (_%out181363%_ _%r181364%_)
                                  (if (##structure-direct-instance-of?
                                       _%out181363%_
                                       'gx#module-export::t)
                                      (cons _%out181363%_ _%r181364%_)
                                      (if (##structure-direct-instance-of?
                                           _%out181363%_
                                           'gx#export-set::t)
                                          (foldl__0
                                           cons
                                           _%r181364%_
                                           (##unchecked-structure-ref
                                            _%out181363%_
                                            '3
                                            '#f
                                            '#f))
                                          _%r181364%_)))))
                       (let ((_%body181361%_ (reverse _%rbody181356%_)))
                         (##unchecked-structure-set!
                          _%current-ctx181358%_
                          (foldl__0
                           _%fold-e181359%_
                           (##unchecked-structure-ref
                            _%current-ctx181358%_
                            '9
                            '#f
                            '#f)
                           _%body181361%_)
                          '9
                          '#f
                          '#f)
                         _%body181361%_))))
                  (_%expanded-export?181341%_
                   (lambda (_%e181351%_)
                     (let ((_%$e181353%_
                            (##structure-direct-instance-of?
                             _%e181351%_
                             'gx#module-export::t)))
                       (if _%$e181353%_
                           _%$e181353%_
                           (##structure-direct-instance-of?
                            _%e181351%_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _%internal-expand?181335%_)
              (let ((_%rbody181347%_
                     (gx#core-expand-import/export
                      _%stx181334%_
                      _%expanded-export?181341%_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _%expand1181338%_)))
                (if _%internal-expand?181335%_
                    (reverse _%rbody181347%_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons
                      '%#export
                      (_%export!181340%_ _%rbody181347%_))
                     (gx#stx-source _%stx181334%_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _%stx181334%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _%stx181334%_))))))
    (define gx#core-expand-export%__0
      (lambda (_%stx181832%_)
        (let ((_%internal-expand?181834%_ '#f))
          (gx#core-expand-export%__%
           _%stx181832%_
           _%internal-expand?181834%_))))
    (define gx#core-expand-export%
      (lambda _g184916_
        (let ((_g184917_ (##length _g184916_)))
          (cond ((##fx= _g184917_ 1)
                 (apply gx#core-expand-export%__0 _g184916_))
                ((##fx= _g184917_ 2)
                 (apply gx#core-expand-export%__% _g184916_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g184916_))))))
    (define gx#core-expand-export-source
      (lambda (_%hd181331%_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _%hd181331%_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_%stx181301%_)
        (let* ((_%e181302181309%_ _%stx181301%_)
               (_%E181304181313%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e181302181309%_)))
               (_%E181303181327%_
                (lambda ()
                  (if (gx#stx-pair? _%e181302181309%_)
                      (let ((_%e181305181317%_
                             (gx#syntax-e _%e181302181309%_)))
                        (let ((_%hd181306181320%_ (##car _%e181305181317%_))
                              (_%tl181307181322%_ (##cdr _%e181305181317%_)))
                          (let ((_%body181325%_ _%tl181307181322%_))
                            (if (gx#identifier-list? _%body181325%_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _%body181325%_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _%body181325%_))
                                   (gx#stx-source _%stx181301%_)))
                                (_%E181304181313%_)))))
                      (_%E181304181313%_)))))
          (_%E181303181327%_))))
    (define gx#core-bind-feature!__%
      (lambda (_%id181267%_ _%private?181268%_ _%phi181269%_ _%ctx181270%_)
        (gx#core-bind-syntax!__%
         _%id181267%_
         ((if _%private?181268%_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _%id181267%_))
         _%private?181268%_
         _%phi181269%_
         _%ctx181270%_)))
    (define gx#core-bind-feature!__0
      (lambda (_%id181275%_)
        (let* ((_%private?181277%_ '#f)
               (_%phi181279%_ (gx#current-expander-phi))
               (_%ctx181281%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id181275%_
           _%private?181277%_
           _%phi181279%_
           _%ctx181281%_))))
    (define gx#core-bind-feature!__1
      (lambda (_%id181283%_ _%private?181284%_)
        (let* ((_%phi181286%_ (gx#current-expander-phi))
               (_%ctx181288%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id181283%_
           _%private?181284%_
           _%phi181286%_
           _%ctx181288%_))))
    (define gx#core-bind-feature!__2
      (lambda (_%id181290%_ _%private?181291%_ _%phi181292%_)
        (let ((_%ctx181294%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id181290%_
           _%private?181291%_
           _%phi181292%_
           _%ctx181294%_))))
    (define gx#core-bind-feature!
      (lambda _g184918_
        (let ((_g184919_ (##length _g184918_)))
          (cond ((##fx= _g184919_ 1)
                 (apply gx#core-bind-feature!__0 _g184918_))
                ((##fx= _g184919_ 2)
                 (apply gx#core-bind-feature!__1 _g184918_))
                ((##fx= _g184919_ 3)
                 (apply gx#core-bind-feature!__2 _g184918_))
                ((##fx= _g184919_ 4)
                 (apply gx#core-bind-feature!__% _g184918_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g184918_))))))))
