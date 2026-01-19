(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1768864949)
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
      (lambda _%$args140740%_
        (apply make-instance gx#module-import::t _%$args140740%_)))
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
      (lambda _%$args140737%_
        (apply make-instance gx#module-export::t _%$args140737%_)))
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
      (lambda _%$args140734%_
        (apply make-instance gx#import-set::t _%$args140734%_)))
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
      (lambda _%$args140731%_
        (apply make-instance gx#export-set::t _%$args140731%_)))
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
      (lambda _%$args140728%_
        (apply make-instance gx#import-expander::t _%$args140728%_)))
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
      (lambda _%$args140725%_
        (apply make-instance gx#export-expander::t _%$args140725%_)))
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
      (lambda _%$args140722%_
        (apply make-instance gx#import-export-expander::t _%$args140722%_)))
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
      (lambda (_%path140719%_ _%fun140720%_)
        (call-with-input-file
         (cons 'path: (cons _%path140719%_ gx#source-file-settings))
         _%fun140720%_)))
    (define gx#module-context:::init!
      (lambda (_%self140702%_
               _%id140703%_
               _%super140704%_
               _%ns140705%_
               _%path140706%_)
        (let ((_%self140709%_ _%self140702%_))
          (if (##fx< '11 (##structure-length _%self140709%_))
              (begin
                (##unchecked-structure-set!
                 _%self140709%_
                 _%id140703%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self140709%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self140709%_
                 _%super140704%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self140709%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self140709%_ '#f '5 '#f '#f)
                (##unchecked-structure-set!
                 _%self140709%_
                 _%ns140705%_
                 '6
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self140709%_
                 _%path140706%_
                 '7
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self140709%_ '() '8 '#f '#f)
                (##unchecked-structure-set! _%self140709%_ '() '9 '#f '#f)
                (##unchecked-structure-set! _%self140709%_ '#f '10 '#f '#f)
                (##unchecked-structure-set! _%self140709%_ '#f '11 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self140709%_
                     '11
                     (##structure-length _%self140709%_))))))
    (__bind-method!__%
     gx#module-context::t
     ':init!
     gx#module-context:::init!
     '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_%self140535%_ _%ctx140536%_ _%root140537%_)
        (let* ((_%self140540%_ _%self140535%_)
               (_%super140556%_
                (let ((_%$e140550%_ _%root140537%_))
                  (if _%$e140550%_
                      _%$e140550%_
                      (let ((_%$e140553%_ (gx#core-context-root__0)))
                        (if _%$e140553%_
                            _%$e140553%_
                            (let ((__obj140784
                                   (##structure gx#root-context::t '#f '#f)))
                              (let ((__constructor140785
                                     (direct-method-ref
                                      gx#root-context::t
                                      __obj140784
                                      ':init!)))
                                (if __constructor140785
                                    (__constructor140785 __obj140784)
                                    (error '"missing constructor method implementation"
                                           'class:
                                           gx#root-context::t
                                           'method:
                                           ':init!)))
                              __obj140784)))))))
          (if _%ctx140536%_
              (let ((_%id140559%_
                     (##structure-ref
                      _%ctx140536%_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_%path140560%_
                     (##structure-ref
                      _%ctx140536%_
                      '7
                      gx#module-context::t
                      '#f))
                    (_%in140561%_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _%ctx140536%_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_%e140562%_
                     (__make-atomic-promise
                      (lambda () (gx#eval-module _%ctx140536%_)))))
                (if (##fx< '8 (##structure-length _%self140540%_))
                    (begin
                      (##unchecked-structure-set!
                       _%self140540%_
                       _%id140559%_
                       '1
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self140540%_
                       (make-hash-table-eq 'size: (##length _%in140561%_))
                       '2
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self140540%_
                       _%super140556%_
                       '3
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self140540%_
                       '#f
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self140540%_
                       '#f
                       '5
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self140540%_
                       _%path140560%_
                       '6
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self140540%_
                       _%in140561%_
                       '7
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self140540%_
                       _%e140562%_
                       '8
                       '#f
                       '#f)
                      '#!void)
                    (error '"struct-instance-init!: too many arguments for struct"
                           _%self140540%_
                           '8
                           (##structure-length _%self140540%_)))
                (##for-each
                 (lambda (_%g140563140565%_)
                   (gx#core-bind-weak-import!__%
                    _%g140563140565%_
                    _%self140540%_))
                 _%in140561%_))
              (if (##fx< '8 (##structure-length _%self140540%_))
                  (begin
                    (##unchecked-structure-set! _%self140540%_ '#f '1 '#f '#f)
                    (##unchecked-structure-set!
                     _%self140540%_
                     (make-hash-table-eq)
                     '2
                     '#f
                     '#f)
                    (##unchecked-structure-set!
                     _%self140540%_
                     _%super140556%_
                     '3
                     '#f
                     '#f)
                    (##unchecked-structure-set! _%self140540%_ '#f '4 '#f '#f)
                    (##unchecked-structure-set! _%self140540%_ '#f '5 '#f '#f)
                    (##unchecked-structure-set! _%self140540%_ '#f '6 '#f '#f)
                    (##unchecked-structure-set! _%self140540%_ '() '7 '#f '#f)
                    (##unchecked-structure-set! _%self140540%_ '#f '8 '#f '#f)
                    '#!void)
                  (error '"struct-instance-init!: too many arguments for struct"
                         _%self140540%_
                         '8
                         (##structure-length _%self140540%_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_%self140571%_ _%ctx140572%_)
        (let ((_%root140574%_ '#f))
          (gx#prelude-context:::init!__%
           _%self140571%_
           _%ctx140572%_
           _%root140574%_))))
    (define gx#prelude-context:::init!
      (lambda _g140790_
        (let ((_g140791_ (##length _g140790_)))
          (cond ((##fx= _g140791_ 2)
                 (apply gx#prelude-context:::init!__0 _g140790_))
                ((##fx= _g140791_ 3)
                 (apply gx#prelude-context:::init!__% _g140790_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g140790_))))))
    (__bind-method!__%
     gx#prelude-context::t
     ':init!
     gx#prelude-context:::init!
     '#f)
    (define gx#import-export-expander-init!
      (lambda (_%self140409%_ _%e140410%_)
        (if (##fx< '3 (##structure-length _%self140409%_))
            (begin
              (##unchecked-structure-set!
               _%self140409%_
               _%e140410%_
               '1
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self140409%_
               (gx#current-expander-context)
               '2
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self140409%_
               (##fx- (gx#current-expander-phi) '1)
               '3
               '#f
               '#f)
              '#!void)
            (error '"struct-instance-init!: too many arguments for struct"
                   _%self140409%_
                   '3
                   (##structure-length _%self140409%_)))))
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
      (lambda (_%g140035140038%_ _%g140036140040%_)
        (gx#core-apply-user-expander__%
         _%g140035140038%_
         _%g140036140040%_
         'apply-import-expander)))
    (__bind-method!__%
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_%g139906139909%_ _%g139907139911%_)
        (gx#core-apply-user-expander__%
         _%g139906139909%_
         _%g139907139911%_
         'apply-export-expander)))
    (__bind-method!__%
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_%ctx139777%_)
        (let* ((_%path139779%_
                (##structure-ref _%ctx139777%_ '7 gx#module-context::t '#f))
               (_%path139781%_
                (if (pair? _%path139779%_)
                    (##last _%path139779%_)
                    _%path139779%_)))
          (if (string? _%path139781%_) _%path139781%_ '#f))))
    (define gx#import-module__%
      (lambda (_%path139753%_ _%reload?139754%_ _%eval?139755%_)
        (let ((_%ctx139757%_
               ((gx#current-expander-module-import)
                _%path139753%_
                _%reload?139754%_)))
          (if (and _%ctx139757%_ _%eval?139755%_)
              (gx#eval-module _%ctx139757%_)
              '#!void)
          _%ctx139757%_)))
    (define gx#import-module__0
      (lambda (_%path139762%_)
        (let* ((_%reload?139764%_ '#f) (_%eval?139766%_ '#f))
          (gx#import-module__%
           _%path139762%_
           _%reload?139764%_
           _%eval?139766%_))))
    (define gx#import-module__1
      (lambda (_%path139768%_ _%reload?139769%_)
        (let ((_%eval?139771%_ '#f))
          (gx#import-module__%
           _%path139768%_
           _%reload?139769%_
           _%eval?139771%_))))
    (define gx#import-module
      (lambda _g140792_
        (let ((_g140793_ (##length _g140792_)))
          (cond ((##fx= _g140793_ 1) (apply gx#import-module__0 _g140792_))
                ((##fx= _g140793_ 2) (apply gx#import-module__1 _g140792_))
                ((##fx= _g140793_ 3) (apply gx#import-module__% _g140792_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g140792_))))))
    (define gx#eval-module
      (lambda (_%mod139750%_)
        ((gx#current-expander-module-eval) _%mod139750%_)))
    (define gx#core-eval-module
      (lambda (_%obj139729%_)
        (letrec ((_%force-e139731%_
                  (lambda (_%getf139745%_ _%e139746%_)
                    (call-with-parameters__1
                     (lambda ()
                       (call-with-parameters__1
                        (lambda () (force (_%getf139745%_ _%e139746%_)))
                        gx#current-expander-phi
                        '0))
                     gx#current-expander-context
                     _%e139746%_))))
          (let _%recur139733%_ ((_%e139735%_ _%obj139729%_))
            (if (##structure-instance-of? _%e139735%_ 'gx#module-context::t)
                (let ()
                  (let ((_%$e139738%_
                         (gx#core-context-prelude__% _%e139735%_)))
                    (if _%$e139738%_ (_%recur139733%_ _%$e139738%_) '#!void))
                  (_%force-e139731%_ gx#module-context-e _%e139735%_))
                (if (##structure-instance-of?
                     _%e139735%_
                     'gx#prelude-context::t)
                    (_%force-e139731%_ gx#prelude-context-e _%e139735%_)
                    (if (gx#stx-string? _%e139735%_)
                        (_%recur139733%_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _%e139735%_)))
                        (if (gx#core-library-module-path? _%e139735%_)
                            (_%recur139733%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%e139735%_)))
                            (error '"cannot eval module" _%obj139729%_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_%ctx139709%_)
        (let _%lp139711%_ ((_%e139713%_ _%ctx139709%_))
          (if (or (##structure-instance-of? _%e139713%_ 'gx#module-context::t)
                  (##structure-instance-of? _%e139713%_ 'gx#local-context::t))
              (_%lp139711%_ (##unchecked-structure-ref _%e139713%_ '3 '#f '#f))
              (if (##structure-instance-of? _%e139713%_ 'gx#prelude-context::t)
                  _%e139713%_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_%ctx139725%_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _%ctx139725%_))))
    (define gx#core-context-prelude
      (lambda _g140794_
        (let ((_g140795_ (##length _g140794_)))
          (cond ((##fx= _g140795_ 0)
                 (apply gx#core-context-prelude__0 _g140794_))
                ((##fx= _g140795_ 1)
                 (apply gx#core-context-prelude__% _g140794_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g140794_))))))
    (define gx#core-module->prelude-context
      (lambda (_%ctx139700%_)
        (let ((_%$e139702%_ (__hash-get gx#__module-registry _%ctx139700%_)))
          (if _%$e139702%_
              _%$e139702%_
              (let ((_%pre139706%_
                     (let ((__obj140786
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
                        __obj140786
                        _%ctx139700%_)
                       __obj140786)))
                (__hash-put! gx#__module-registry _%ctx139700%_ _%pre139706%_)
                _%pre139706%_)))))
    (define gx#core-import-module__%
      (lambda (_%rpath139567%_ _%reload?139568%_)
        (letrec ((_%import-source139570%_
                  (lambda (_%path139659%_)
                    (if (member _%path139659%_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _%path139659%_)
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
                                      (let ((_g140796_
                                             (gx#core-read-module
                                              _%path139659%_)))
                                        (begin
                                          (let ((_g140797_
                                                 (if (##values? _g140796_)
                                                     (##values-length
                                                      _g140796_)
                                                     1)))
                                            (if (not (##fx= _g140797_ 4))
                                                (error "Context expects 4 values"
                                                       _g140797_)))
                                          (let ((_%pre139667%_
                                                 (##values-ref _g140796_ 0))
                                                (_%id139668%_
                                                 (##values-ref _g140796_ 1))
                                                (_%ns139669%_
                                                 (##values-ref _g140796_ 2))
                                                (_%body139670%_
                                                 (##values-ref _g140796_ 3)))
                                            (let* ((_%prelude139680%_
                                                    (if (##structure-instance-of?
                                                         _%pre139667%_
                                                         'gx#prelude-context::t)
                                                        _%pre139667%_
                                                        (if (##structure-instance-of?
                                                             _%pre139667%_
                                                             'gx#module-context::t)
                                                            (gx#core-module->prelude-context
                                                             _%pre139667%_)
                                                            (if (string? _%pre139667%_)
                                                                (gx#core-module->prelude-context
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#core-import-module__0 _%pre139667%_))
                        (if (not _%pre139667%_)
                            (let ((_%$e139676%_
                                   (gx#current-expander-module-prelude)))
                              (if _%$e139676%_
                                  _%$e139676%_
                                  (let ((__obj140787
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
                                     __obj140787
                                     '#f)
                                    __obj140787)))
                            (error '"cannot import module; unknown prelude"
                                   _%rpath139567%_
                                   _%pre139667%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%ctx139682%_
                                                    (let ((__obj140788
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
                                                       __obj140788
                                                       _%id139668%_
                                                       _%prelude139680%_
                                                       _%ns139669%_
                                                       _%path139659%_)
                                                      __obj140788))
                                                   (_%body139684%_
                                                    (gx#core-expand-module-begin
                                                     _%body139670%_
                                                     _%ctx139682%_))
                                                   (_%body139686%_
                                                    (gx#core-quote-syntax__%
                                                     (gx#core-cons
                                                      '%#begin
                                                      _%body139684%_)
                                                     _%path139659%_
                                                     _%ctx139682%_
                                                     '())))
                                              (##unchecked-structure-set!
                                               _%ctx139682%_
                                               (__make-atomic-promise
                                                (lambda ()
                                                  (gx#eval-syntax*
                                                   _%body139686%_)))
                                               '10
                                               '#f
                                               '#f)
                                              (##unchecked-structure-set!
                                               _%ctx139682%_
                                               _%body139686%_
                                               '11
                                               '#f
                                               '#f)
                                              (__hash-put!
                                               gx#__module-registry
                                               _%path139659%_
                                               _%ctx139682%_)
                                              (__hash-put!
                                               gx#__module-registry
                                               _%id139668%_
                                               _%ctx139682%_)
                                              _%ctx139682%_)))))
                                    gx#current-export-expander-phi
                                    '#f))
                                 gx#current-import-expander-phi
                                 '#f))
                              gx#current-expander-path
                              (cons _%path139659%_
                                    (gx#current-expander-path))))
                           gx#current-expander-phi
                           '0))
                        gx#current-expander-marks
                        '()))
                     gx#current-expander-context
                     (gx#core-context-root__0))))
                 (_%import-submodule139571%_
                  (lambda (_%rpath139587%_)
                    (let* ((_%rpath139588139595%_ _%rpath139587%_)
                           (_%E139590139599%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%rpath139588139595%_
                                     '([origin . refs]))
                              '#!void))
                           (_%K139591139647%_
                            (lambda (_%refs139602%_ _%origin139603%_)
                              (let ((_%ctx139605%_
                                     (if _%origin139603%_
                                         (gx#core-import-module__%
                                          _%origin139603%_
                                          _%reload?139568%_)
                                         (gx#current-expander-context))))
                                (let _%lp139607%_ ((_%rest139609%_
                                                    _%refs139602%_)
                                                   (_%ctx139610%_
                                                    _%ctx139605%_))
                                  (let* ((_%rest139611139619%_ _%rest139609%_)
                                         (_%else139613139627%_
                                          (lambda () _%ctx139610%_))
                                         (_%K139615139635%_
                                          (lambda (_%rest139630%_ _%id139631%_)
                                            (let ((_%bind139633%_
                                                   (gx#resolve-identifier__%
                                                    _%id139631%_
                                                    '0
                                                    _%ctx139610%_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _%bind139633%_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _%bind139633%_
                                                         '4
                                                         '#f
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_%lp139607%_
                                                   _%rest139630%_
                                                   (##unchecked-structure-ref
                                                    _%bind139633%_
                                                    '4
                                                    '#f
                                                    '#f))
                                                  (error '"cannot import submodule; not bound as a module"
                                                         _%rpath139587%_
                                                         _%id139631%_
                                                         _%bind139633%_))))))
                                    (if (pair? _%rest139611139619%_)
                                        (let ((_%hd139616139638%_
                                               (##car _%rest139611139619%_))
                                              (_%tl139617139640%_
                                               (##cdr _%rest139611139619%_)))
                                          (let* ((_%id139643%_
                                                  _%hd139616139638%_)
                                                 (_%rest139645%_
                                                  _%tl139617139640%_))
                                            (_%K139615139635%_
                                             _%rest139645%_
                                             _%id139643%_)))
                                        (_%else139613139627%_))))))))
                      (if (pair? _%rpath139588139595%_)
                          (let ((_%hd139592139650%_
                                 (##car _%rpath139588139595%_))
                                (_%tl139593139652%_
                                 (##cdr _%rpath139588139595%_)))
                            (let* ((_%origin139655%_ _%hd139592139650%_)
                                   (_%refs139657%_ _%tl139593139652%_))
                              (_%K139591139647%_
                               _%refs139657%_
                               _%origin139655%_)))
                          (_%E139590139599%_))))))
          (let ((_%$e139573%_
                 (if (not _%reload?139568%_)
                     (__hash-get gx#__module-registry _%rpath139567%_)
                     '#f)))
            (if _%$e139573%_
                _%$e139573%_
                (if (list? _%rpath139567%_)
                    (_%import-submodule139571%_ _%rpath139567%_)
                    (if (gx#core-library-module-path? _%rpath139567%_)
                        (let ((_%ctx139578%_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _%rpath139567%_)
                                _%reload?139568%_)))
                          (__hash-put!
                           gx#__module-registry
                           _%rpath139567%_
                           _%ctx139578%_)
                          _%ctx139578%_)
                        (let* ((_%npath139581%_
                                (path-normalize _%rpath139567%_))
                               (_%$e139583%_
                                (if (not _%reload?139568%_)
                                    (__hash-get
                                     gx#__module-registry
                                     _%npath139581%_)
                                    '#f)))
                          (if _%$e139583%_
                              _%$e139583%_
                              (_%import-source139570%_
                               _%npath139581%_))))))))))
    (define gx#core-import-module__0
      (lambda (_%rpath139693%_)
        (let ((_%reload?139695%_ '#f))
          (gx#core-import-module__% _%rpath139693%_ _%reload?139695%_))))
    (define gx#core-import-module
      (lambda _g140798_
        (let ((_g140799_ (##length _g140798_)))
          (cond ((##fx= _g140799_ 1)
                 (apply gx#core-import-module__0 _g140798_))
                ((##fx= _g140799_ 2)
                 (apply gx#core-import-module__% _g140798_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g140798_))))))
    (define gx#core-read-module
      (lambda (_%path139556%_)
        (__with-catch
         (lambda (_%exn139558%_)
           (if (and (datum-parsing-exception? _%exn139558%_)
                    (eq? (datum-parsing-exception-filepos _%exn139558%_) '0))
               (gx#core-read-module/lang _%path139556%_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _%path139556%_
                (call-with-parameters__1
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_%g139560139562%_)
                      (display-exception__% _%exn139558%_ _%g139560139562%_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _%path139556%_)))))
    (define gx#core-read-module/sexp
      (lambda (_%path139408%_)
        (let _%lp139410%_ ((_%body139412%_
                            (read-syntax-from-file _%path139408%_))
                           (_%pre139413%_ '#f)
                           (_%ns139414%_ '#f)
                           (_%pkg139415%_ '#f))
          (let* ((_%e139416139440%_ _%body139412%_)
                 (_%E139432139466%_
                  (lambda ()
                    (let ((_g140800_
                           (if _%pkg139415%_
                               (values _%pre139413%_
                                       _%ns139414%_
                                       _%pkg139415%_)
                               (gx#core-read-module-package
                                _%path139408%_
                                _%pre139413%_
                                _%ns139414%_))))
                      (begin
                        (let ((_g140801_
                               (if (##values? _g140800_)
                                   (##values-length _g140800_)
                                   1)))
                          (if (not (##fx= _g140801_ 3))
                              (error "Context expects 3 values" _g140801_)))
                        (let ((_%pre139444%_ (##values-ref _g140800_ 0))
                              (_%ns139445%_ (##values-ref _g140800_ 1))
                              (_%pkg139446%_ (##values-ref _g140800_ 2)))
                          (let* ((_%prelude139452%_
                                  (if (gx#core-bound-module-prelude?
                                       _%pre139444%_)
                                      (gx#syntax-local-e__0 _%pre139444%_)
                                      (if (gx#core-library-module-path?
                                           _%pre139444%_)
                                          (gx#core-resolve-library-module-path
                                           _%pre139444%_)
                                          (if (gx#stx-string? _%pre139444%_)
                                              (gx#core-resolve-module-path__%
                                               _%pre139444%_
                                               _%path139408%_)
                                              (gx#stx-e _%pre139444%_)))))
                                 (_%path-id139454%_
                                  (gx#core-module-path->namespace
                                   _%path139408%_))
                                 (_%pkg-id139456%_
                                  (if _%pkg139446%_
                                      (##string-append
                                       _%pkg139446%_
                                       '"/"
                                       _%path-id139454%_)
                                      _%path-id139454%_))
                                 (_%module-id139458%_
                                  (##string->symbol _%pkg-id139456%_))
                                 (_%module-ns139463%_
                                  (if (eq? _%ns139445%_ '#!void)
                                      '#f
                                      (let ((_%$e139460%_ _%ns139445%_))
                                        (if _%$e139460%_
                                            _%$e139460%_
                                            _%pkg-id139456%_)))))
                            (values _%prelude139452%_
                                    _%module-id139458%_
                                    _%module-ns139463%_
                                    _%body139412%_)))))))
                 (_%E139425139498%_
                  (lambda ()
                    (if (gx#stx-pair? _%e139416139440%_)
                        (let ((_%e139433139470%_
                               (gx#syntax-e _%e139416139440%_)))
                          (let ((_%hd139434139473%_ (##car _%e139433139470%_))
                                (_%tl139435139475%_ (##cdr _%e139433139470%_)))
                            (if (eq? (gx#stx-e _%hd139434139473%_) 'package:)
                                (if (gx#stx-pair? _%tl139435139475%_)
                                    (let ((_%e139436139478%_
                                           (gx#syntax-e _%tl139435139475%_)))
                                      (let ((_%hd139437139481%_
                                             (##car _%e139436139478%_))
                                            (_%tl139438139483%_
                                             (##cdr _%e139436139478%_)))
                                        (let* ((_%pkg139486%_
                                                _%hd139437139481%_)
                                               (_%rest139488%_
                                                _%tl139438139483%_)
                                               (_%pkg139496%_
                                                (if (gx#identifier?
                                                     _%pkg139486%_)
                                                    (symbol->string
                                                     (gx#stx-e _%pkg139486%_))
                                                    (if (or (gx#stx-string?
                                                             _%pkg139486%_)
                                                            (gx#stx-false?
                                                             _%pkg139486%_))
                                                        (gx#stx-e
                                                         _%pkg139486%_)
                                                        (gx#raise-syntax-error
                                                         'import
                                                         '"Bad syntax; Illegal package name"
                                                         _%pkg139486%_)))))
                                          (_%lp139410%_
                                           _%rest139488%_
                                           _%pre139413%_
                                           _%ns139414%_
                                           _%pkg139496%_))))
                                    (_%E139432139466%_))
                                (_%E139432139466%_))))
                        (_%E139432139466%_))))
                 (_%E139418139528%_
                  (lambda ()
                    (if (gx#stx-pair? _%e139416139440%_)
                        (let ((_%e139426139502%_
                               (gx#syntax-e _%e139416139440%_)))
                          (let ((_%hd139427139505%_ (##car _%e139426139502%_))
                                (_%tl139428139507%_ (##cdr _%e139426139502%_)))
                            (if (eq? (gx#stx-e _%hd139427139505%_) 'namespace:)
                                (if (gx#stx-pair? _%tl139428139507%_)
                                    (let ((_%e139429139510%_
                                           (gx#syntax-e _%tl139428139507%_)))
                                      (let ((_%hd139430139513%_
                                             (##car _%e139429139510%_))
                                            (_%tl139431139515%_
                                             (##cdr _%e139429139510%_)))
                                        (let* ((_%ns139518%_
                                                _%hd139430139513%_)
                                               (_%rest139520%_
                                                _%tl139431139515%_)
                                               (_%ns139526%_
                                                (if (gx#identifier?
                                                     _%ns139518%_)
                                                    (symbol->string
                                                     (gx#stx-e _%ns139518%_))
                                                    (if (gx#stx-string?
                                                         _%ns139518%_)
                                                        (gx#stx-e _%ns139518%_)
                                                        (if (gx#stx-false?
                                                             _%ns139518%_)
                                                            '#!void
                                                            (gx#raise-syntax-error
                                                             'import
                                                             '"Bad syntax; illegal namespace"
                                                             _%ns139518%_))))))
                                          (_%lp139410%_
                                           _%rest139520%_
                                           _%pre139413%_
                                           _%ns139526%_
                                           _%pkg139415%_))))
                                    (_%E139425139498%_))
                                (_%E139425139498%_))))
                        (_%E139425139498%_))))
                 (_%E139417139552%_
                  (lambda ()
                    (if (gx#stx-pair? _%e139416139440%_)
                        (let ((_%e139419139532%_
                               (gx#syntax-e _%e139416139440%_)))
                          (let ((_%hd139420139535%_ (##car _%e139419139532%_))
                                (_%tl139421139537%_ (##cdr _%e139419139532%_)))
                            (if (eq? (gx#stx-e _%hd139420139535%_) 'prelude:)
                                (if (gx#stx-pair? _%tl139421139537%_)
                                    (let ((_%e139422139540%_
                                           (gx#syntax-e _%tl139421139537%_)))
                                      (let ((_%hd139423139543%_
                                             (##car _%e139422139540%_))
                                            (_%tl139424139545%_
                                             (##cdr _%e139422139540%_)))
                                        (let* ((_%prelude139548%_
                                                _%hd139423139543%_)
                                               (_%rest139550%_
                                                _%tl139424139545%_))
                                          (_%lp139410%_
                                           _%rest139550%_
                                           _%prelude139548%_
                                           _%ns139414%_
                                           _%pkg139415%_))))
                                    (_%E139418139528%_))
                                (_%E139418139528%_))))
                        (_%E139418139528%_)))))
            (_%E139417139552%_)))))
    (define gx#core-read-module/lang
      (lambda (_%path139229%_)
        (letrec ((_%default-read-module-body139231%_
                  (lambda (_%inp139400%_)
                    (let _%lp139402%_ ((_%body139404%_ '()))
                      (let ((_%next139406%_ (read-syntax__% _%inp139400%_)))
                        (if (eof-object? _%next139406%_)
                            (reverse _%body139404%_)
                            (_%lp139402%_
                             (cons _%next139406%_ _%body139404%_)))))))
                 (_%read-body139232%_
                  (lambda (_%inp139317%_
                           _%pre139318%_
                           _%ns139319%_
                           _%pkg139320%_
                           _%args139321%_)
                    (let ((_g140802_
                           (if _%pkg139320%_
                               (values _%pre139318%_
                                       _%ns139319%_
                                       _%pkg139320%_)
                               (gx#core-read-module-package
                                _%path139229%_
                                _%pre139318%_
                                _%ns139319%_))))
                      (begin
                        (let ((_g140803_
                               (if (##values? _g140802_)
                                   (##values-length _g140802_)
                                   1)))
                          (if (not (##fx= _g140803_ 3))
                              (error "Context expects 3 values" _g140803_)))
                        (let ((_%pre139323%_ (##values-ref _g140802_ 0))
                              (_%ns139324%_ (##values-ref _g140802_ 1))
                              (_%pkg139325%_ (##values-ref _g140802_ 2)))
                          (let* ((_%prelude139327%_
                                  (gx#import-module__0 _%pre139323%_))
                                 (_%read-module-body139382%_
                                  (let ((_%$e139373%_
                                         (__find (lambda (_%e139328139330%_)
                                                   (let* ((_%g139332139342%_
                                                           _%e139328139330%_)
                                                          (_%else139334139350%_
                                                           (lambda () '#f))
                                                          (_%K139336139354%_
                                                           (lambda () '#t)))
                                                     (if (##structure-direct-instance-of?
                                                          _%g139332139342%_
                                                          'gx#module-export::t)
                                                         (let* ((_%e139337139357%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##unchecked-structure-ref
                          _%g139332139342%_
                          '1
                          '#f
                          '#f))
                        (_%e139338139360%_
                         (##unchecked-structure-ref
                          _%g139332139342%_
                          '2
                          '#f
                          '#f))
                        (_%e139339139363%_
                         (##unchecked-structure-ref
                          _%g139332139342%_
                          '3
                          '#f
                          '#f)))
                   (if (##eq? _%e139339139363%_ '1)
                       (let ((_%e139340139366%_
                              (##unchecked-structure-ref
                               _%g139332139342%_
                               '4
                               '#f
                               '#f)))
                         (if ((lambda (_%g139368139370%_)
                                (eq? _%g139368139370%_ 'read-module-body))
                              _%e139340139366%_)
                             (_%K139336139354%_)
                             (_%else139334139350%_)))
                       (_%else139334139350%_)))
                 (_%else139334139350%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (##unchecked-structure-ref
                                                  _%prelude139327%_
                                                  '9
                                                  '#f
                                                  '#f))))
                                    (if _%$e139373%_
                                        ((lambda (_%xport139376%_)
                                           (let ((_%proc139379%_
                                                  (__with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _%xport139376%_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _%proc139379%_)
                                                 _%proc139379%_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _%path139229%_
                                                  _%pre139323%_
                                                  _%proc139379%_))))
                                         _%$e139373%_)
                                        _%default-read-module-body139231%_)))
                                 (_%path-id139384%_
                                  (gx#core-module-path->namespace
                                   _%path139229%_))
                                 (_%pkg-id139386%_
                                  (if _%pkg139325%_
                                      (##string-append
                                       _%pkg139325%_
                                       '"/"
                                       _%path-id139384%_)
                                      _%path-id139384%_))
                                 (_%module-id139388%_
                                  (##string->symbol _%pkg-id139386%_))
                                 (_%module-ns139393%_
                                  (let ((_%$e139390%_ _%ns139324%_))
                                    (if _%$e139390%_
                                        _%$e139390%_
                                        _%pkg-id139386%_)))
                                 (_%body139397%_
                                  (call-with-parameters__1
                                   (lambda ()
                                     (call-with-parameters__1
                                      (lambda ()
                                        (_%read-module-body139382%_
                                         _%inp139317%_))
                                      gx#current-module-reader-args
                                      _%args139321%_))
                                   gx#current-module-reader-path
                                   _%path139229%_)))
                            (values _%prelude139327%_
                                    _%module-id139388%_
                                    _%module-ns139393%_
                                    _%body139397%_)))))))
                 (_%string-e139233%_
                  (lambda (_%obj139311%_ _%what139312%_)
                    (if (string? _%obj139311%_)
                        _%obj139311%_
                        (if (symbol? _%obj139311%_)
                            (##symbol->string _%obj139311%_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _%what139312%_)
                             _%path139229%_
                             _%obj139311%_)))))
                 (_%read-lang-args139234%_
                  (lambda (_%inp139266%_ _%args139267%_)
                    (let* ((_%args139268139276%_ _%args139267%_)
                           (_%else139270139284%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _%path139229%_)))
                           (_%K139272139299%_
                            (lambda (_%args139287%_ _%prelude139288%_)
                              (let* ((_%pkg139290%_
                                      (pgetq__0 'package: _%args139287%_))
                                     (_%pkg139292%_
                                      (if _%pkg139290%_
                                          (_%string-e139233%_
                                           _%pkg139290%_
                                           '"package")
                                          '#f))
                                     (_%ns139294%_
                                      (pgetq__0 'namespace: _%args139287%_))
                                     (_%ns139296%_
                                      (if _%ns139294%_
                                          (_%string-e139233%_
                                           _%ns139294%_
                                           '"namespace")
                                          '#f)))
                                (_%read-body139232%_
                                 _%inp139266%_
                                 _%prelude139288%_
                                 _%ns139296%_
                                 _%pkg139292%_
                                 _%args139287%_)))))
                      (if (pair? _%args139268139276%_)
                          (let ((_%hd139273139302%_
                                 (##car _%args139268139276%_))
                                (_%tl139274139304%_
                                 (##cdr _%args139268139276%_)))
                            (let* ((_%prelude139307%_ _%hd139273139302%_)
                                   (_%args139309%_ _%tl139274139304%_))
                              (_%K139272139299%_
                               _%args139309%_
                               _%prelude139307%_)))
                          (_%else139270139284%_)))))
                 (_%read-lang139235%_
                  (lambda (_%inp139240%_)
                    (let* ((_%head139242%_ (read-line _%inp139240%_))
                           (_%$e139244%_
                            (string-index__0 _%head139242%_ '#\space)))
                      (if _%$e139244%_
                          ((lambda (_%ix139247%_)
                             (let ((_%lang139249%_
                                    (substring
                                     _%head139242%_
                                     '0
                                     _%ix139247%_)))
                               (if (equal? _%lang139249%_ '"#lang")
                                   (let* ((_%rest139251%_
                                           (substring
                                            _%head139242%_
                                            (##fx+ _%ix139247%_ '1)
                                            (string-length _%head139242%_)))
                                          (_%args139262%_
                                           (__with-catch
                                            (lambda (_%g139252139254%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _%path139229%_
                                               _%g139252139254%_))
                                            (lambda ()
                                              (call-with-input-string
                                               _%rest139251%_
                                               (lambda (_%g139257139259%_)
                                                 (read-all
                                                  _%g139257139259%_
                                                  read)))))))
                                     (_%read-lang-args139234%_
                                      _%inp139240%_
                                      _%args139262%_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _%path139229%_))))
                           _%$e139244%_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _%path139229%_)))))
                 (_%read-e139236%_
                  (lambda (_%inp139238%_)
                    (if (eq? (peek-char _%inp139238%_) '#\#)
                        (_%read-lang139235%_ _%inp139238%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _%path139229%_)))))
          (gx#call-with-input-source-file _%path139229%_ _%read-e139236%_))))
    (define gx#core-read-module-package
      (lambda (_%path139177%_ _%pre139178%_ _%ns139179%_)
        (letrec ((_%string-e139181%_
                  (lambda (_%e139224%_)
                    (if (symbol? _%e139224%_)
                        (##symbol->string _%e139224%_)
                        (if (string? _%e139224%_)
                            _%e139224%_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%e139224%_))))))
          (let _%lp139183%_ ((_%dir139185%_ (path-directory _%path139177%_))
                             (_%pkg-path139186%_ '()))
            (let ((_%gerbil.pkg139188%_
                   (path-expand '"gerbil.pkg" _%dir139185%_)))
              (if (##file-exists? _%gerbil.pkg139188%_)
                  (let ((_%plist139190%_
                         (gx#core-library-package-plist__% _%dir139185%_ '#t)))
                    (if (null? _%plist139190%_)
                        (let ((_%pkg139193%_
                               (if (null? _%pkg-path139186%_)
                                   '#f
                                   (string-join _%pkg-path139186%_ '"/"))))
                          (values _%pre139178%_ _%ns139179%_ _%pkg139193%_))
                        (if (list? _%plist139190%_)
                            (let* ((_%root139196%_
                                    (pgetq__0 'package: _%plist139190%_))
                                   (_%pkg139200%_
                                    (let ((_%pkg-path139198%_
                                           (if _%root139196%_
                                               (cons (_%string-e139181%_
                                                      _%root139196%_)
                                                     _%pkg-path139186%_)
                                               _%pkg-path139186%_)))
                                      (if (null? _%pkg-path139198%_)
                                          '#f
                                          (string-join
                                           _%pkg-path139198%_
                                           '"/"))))
                                   (_%ns139207%_
                                    (let ((_%ns139205%_
                                           (let ((_%$e139202%_ _%ns139179%_))
                                             (if _%$e139202%_
                                                 _%$e139202%_
                                                 (pgetq__0
                                                  'namespace:
                                                  _%plist139190%_)))))
                                      (if _%ns139205%_
                                          (_%string-e139181%_ _%ns139205%_)
                                          '#f)))
                                   (_%pre139212%_
                                    (let ((_%$e139209%_ _%pre139178%_))
                                      (if _%$e139209%_
                                          _%$e139209%_
                                          (pgetq__0
                                           'prelude:
                                           _%plist139190%_)))))
                              (values _%pre139212%_
                                      _%ns139207%_
                                      _%pkg139200%_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%plist139190%_))))
                  (let ((_%dir*139216%_
                         (path-strip-trailing-directory-separator
                          _%dir139185%_)))
                    (if (or (__string-empty? _%dir*139216%_)
                            (equal? _%dir139185%_ _%dir*139216%_))
                        (values _%pre139178%_ _%ns139179%_ '#f)
                        (let ((_%xpath139221%_
                               (path-strip-directory _%dir*139216%_))
                              (_%xdir139222%_ (path-directory _%dir*139216%_)))
                          (_%lp139183%_
                           _%xdir139222%_
                           (cons _%xpath139221%_ _%pkg-path139186%_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_%path139175%_)
        (path-strip-extension (path-strip-directory _%path139175%_))))
    (define gx#core-module-path->id
      (lambda (_%path139173%_)
        (##string->symbol (gx#core-module-path->namespace _%path139173%_))))
    (define gx#core-resolve-module-path__%
      (lambda (_%stx-path139152%_ _%rel139153%_)
        (let* ((_%path139155%_ (gx#stx-e _%stx-path139152%_))
               (_%path139157%_
                (if (__string-empty? (path-extension _%path139155%_))
                    (##string-append _%path139155%_ '".ss")
                    _%path139155%_)))
          (gx#core-resolve-path__%
           _%path139157%_
           (let ((_%$e139160%_ (gx#stx-source _%stx-path139152%_)))
             (if _%$e139160%_ _%$e139160%_ _%rel139153%_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_%stx-path139166%_)
        (let ((_%rel139168%_ '#f))
          (gx#core-resolve-module-path__% _%stx-path139166%_ _%rel139168%_))))
    (define gx#core-resolve-module-path
      (lambda _g140804_
        (let ((_g140805_ (##length _g140804_)))
          (cond ((##fx= _g140805_ 1)
                 (apply gx#core-resolve-module-path__0 _g140804_))
                ((##fx= _g140805_ 2)
                 (apply gx#core-resolve-module-path__% _g140804_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g140804_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_%libpath139037%_)
        (let* ((_%spath139039%_ (symbol->string (gx#stx-e _%libpath139037%_)))
               (_%spath139041%_
                (substring
                 _%spath139039%_
                 '1
                 (##string-length _%spath139039%_)))
               (_%ext139043%_ (path-extension _%spath139041%_))
               (_%ssi139045%_
                (if (__string-empty? _%ext139043%_)
                    (##string-append _%spath139041%_ '".ssi")
                    (##string-append
                     (path-strip-extension _%spath139041%_)
                     '".ssi")))
               (_%srcs139049%_
                (if (__string-empty? _%ext139043%_)
                    (##map (lambda (_%ext139047%_)
                             (string-append _%spath139041%_ _%ext139047%_))
                           '(".ss" ".sld" ".scm"))
                    (cons _%spath139041%_ '()))))
          (let _%lp139052%_ ((_%rest139054%_ (load-path)))
            (let* ((_%rest139055139064%_ _%rest139054%_)
                   (_%E139058139068%_
                    (lambda ()
                      (error '"No clause matching"
                             _%rest139055139064%_
                             '([dir . rest])
                             '([]))
                      '#!void)))
              (let ((_%K139060139139%_
                     (lambda (_%rest139079%_ _%dir139080%_)
                       (letrec ((_%resolve139082%_
                                 (lambda (_%ssi139095%_ _%srcs139096%_)
                                   (let ((_%compiled-path139098%_
                                          (path-expand
                                           _%ssi139095%_
                                           _%dir139080%_)))
                                     (if (##file-exists?
                                          _%compiled-path139098%_)
                                         (path-normalize
                                          _%compiled-path139098%_)
                                         (let _%lpr139100%_ ((_%rest-src139102%_
                                                              _%srcs139096%_))
                                           (let* ((_%rest-src139103139111%_
                                                   _%rest-src139102%_)
                                                  (_%else139105139119%_
                                                   (lambda ()
                                                     (_%lp139052%_
                                                      _%rest139079%_)))
                                                  (_%K139107139127%_
                                                   (lambda (_%rest-src139122%_
                                                            _%src139123%_)
                                                     (let ((_%src-path139125%_
                                                            (path-expand
                                                             _%src139123%_
                                                             _%dir139080%_)))
                                                       (if (##file-exists?
                                                            _%src-path139125%_)
                                                           (path-normalize
                                                            _%src-path139125%_)
                                                           (_%lpr139100%_
                                                            _%rest-src139122%_))))))
                                             (if (pair? _%rest-src139103139111%_)
                                                 (let ((_%hd139108139130%_
                                                        (##car _%rest-src139103139111%_))
                                                       (_%tl139109139132%_
                                                        (##cdr _%rest-src139103139111%_)))
                                                   (let* ((_%src139135%_
                                                           _%hd139108139130%_)
                                                          (_%rest-src139137%_
                                                           _%tl139109139132%_))
                                                     (_%K139107139127%_
                                                      _%rest-src139137%_
                                                      _%src139135%_)))
                                                 (_%else139105139119%_)))))))))
                         (let ((_%$e139084%_
                                (gx#core-library-package-path-prefix
                                 _%dir139080%_)))
                           (if _%$e139084%_
                               ((lambda (_%prefix139087%_)
                                  (if (string-prefix?
                                       _%prefix139087%_
                                       _%spath139041%_)
                                      (let ((_%ssi139091%_
                                             (substring
                                              _%ssi139045%_
                                              (string-length _%prefix139087%_)
                                              (##string-length _%ssi139045%_)))
                                            (_%srcs139092%_
                                             (##map (lambda (_%src139089%_)
                                                      (substring
                                                       _%src139089%_
                                                       (string-length
                                                        _%prefix139087%_)
                                                       (string-length
                                                        _%src139089%_)))
                                                    _%srcs139049%_)))
                                        (_%resolve139082%_
                                         _%ssi139091%_
                                         _%srcs139092%_))
                                      (_%lp139052%_ _%rest139079%_)))
                                _%$e139084%_)
                               (_%resolve139082%_
                                _%ssi139045%_
                                _%srcs139049%_))))))
                    (_%K139059139073%_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"cannot find library module"
                        _%libpath139037%_))))
                (let ((_%try-match139057139076%_
                       (lambda ()
                         (if (null? _%rest139055139064%_)
                             (_%K139059139073%_)
                             (_%E139058139068%_)))))
                  (if (pair? _%rest139055139064%_)
                      (let ((_%tl139062139144%_ (##cdr _%rest139055139064%_))
                            (_%hd139061139142%_ (##car _%rest139055139064%_)))
                        (let ((_%dir139147%_ _%hd139061139142%_)
                              (_%rest139149%_ _%tl139062139144%_))
                          (_%K139060139139%_ _%rest139149%_ _%dir139147%_)))
                      (_%try-match139057139076%_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_%modpath139005%_)
        (letrec ((_%resolve139007%_
                  (lambda (_%path139028%_ _%base139029%_)
                    (let ((_%$e139031%_
                           (string-rindex__0 _%base139029%_ '#\/)))
                      (if _%$e139031%_
                          ((lambda (_%idx139034%_)
                             (gx#core-resolve-library-module-path
                              (##string->symbol
                               (string-append
                                '":"
                                (substring _%base139029%_ '0 _%idx139034%_)
                                '"/"
                                _%path139028%_))))
                           _%$e139031%_)
                          (gx#core-resolve-library-module-path
                           (##string->symbol
                            (string-append '":" _%path139028%_))))))))
          (let ((_%spath139009%_ (symbol->string (gx#stx-e _%modpath139005%_)))
                (_%mod139010%_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _%mod139010%_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"cannot resolve relative module path; not in module context"
                 _%modpath139005%_))
            (let ((_%mpath139012%_
                   (symbol->string
                    (##structure-ref
                     _%mod139010%_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _%lp139014%_ ((_%spath139016%_ _%spath139009%_)
                                 (_%mpath139017%_ _%mpath139012%_))
                (if (string-prefix? '"../" _%spath139016%_)
                    (let ((_%$e139020%_
                           (string-rindex__0 _%mpath139017%_ '#\/)))
                      (if _%$e139020%_
                          ((lambda (_%idx139023%_)
                             (_%lp139014%_
                              (substring
                               _%spath139016%_
                               '3
                               (string-length _%spath139016%_))
                              (substring _%mpath139017%_ '0 _%idx139023%_)))
                           _%$e139020%_)
                          (gx#raise-syntax-error
                           '#f
                           '"cannot resolve relative module path; illegal traversal"
                           _%modpath139005%_)))
                    (if (string-prefix? '"./" _%spath139016%_)
                        (_%lp139014%_
                         (substring
                          _%spath139016%_
                          '2
                          (string-length _%spath139016%_))
                         _%mpath139017%_)
                        (_%resolve139007%_
                         _%spath139016%_
                         _%mpath139017%_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_%dir138997%_)
        (let ((_%$e138999%_
               (pgetq__0
                'package:
                (gx#core-library-package-plist__0 _%dir138997%_))))
          (if _%$e138999%_
              ((lambda (_%pkg139002%_)
                 (##string-append (symbol->string _%pkg139002%_) '"/"))
               _%$e138999%_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_%dir138967%_ _%exists?138968%_)
        (let ((_%$e138970%_ (__hash-get gx#__module-pkg-cache _%dir138967%_)))
          (if _%$e138970%_
              _%$e138970%_
              (let* ((_%gerbil.pkg138974%_
                      (path-expand '"gerbil.pkg" _%dir138967%_))
                     (_%plist138984%_
                      (if (or _%exists?138968%_
                              (##file-exists? _%gerbil.pkg138974%_))
                          (let ((_%e138979%_
                                 (gx#call-with-input-source-file
                                  _%gerbil.pkg138974%_
                                  read)))
                            (if (eof-object? _%e138979%_)
                                '()
                                (if (list? _%e138979%_)
                                    _%e138979%_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _%gerbil.pkg138974%_
                                     _%e138979%_))))
                          '())))
                (__hash-put!
                 gx#__module-pkg-cache
                 _%dir138967%_
                 _%plist138984%_)
                _%plist138984%_)))))
    (define gx#core-library-package-plist__0
      (lambda (_%dir138990%_)
        (let ((_%exists?138992%_ '#f))
          (gx#core-library-package-plist__% _%dir138990%_ _%exists?138992%_))))
    (define gx#core-library-package-plist
      (lambda _g140806_
        (let ((_g140807_ (##length _g140806_)))
          (cond ((##fx= _g140807_ 1)
                 (apply gx#core-library-package-plist__0 _g140806_))
                ((##fx= _g140807_ 2)
                 (apply gx#core-library-package-plist__% _g140806_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g140806_))))))
    (define gx#core-library-module-path?
      (lambda (_%stx138964%_)
        (gx#core-special-module-path? _%stx138964%_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_%stx138962%_)
        (gx#core-special-module-path? _%stx138962%_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_%stx138957%_ _%char138958%_)
        (if (gx#identifier? _%stx138957%_)
            (if (interned-symbol? (gx#stx-e _%stx138957%_))
                (let ((_%str138960%_
                       (symbol->string (gx#stx-e _%stx138957%_))))
                  (if (##fx> (##string-length _%str138960%_) '1)
                      (eq? (string-ref _%str138960%_ '0) _%char138958%_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_%stx138951%_)
        (gx#core-bound-identifier?__%
         _%stx138951%_
         (lambda (_%g138952138954%_)
           (gx#expander-binding?__% _%g138952138954%_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_%stx138945%_)
        (gx#core-bound-identifier?__%
         _%stx138945%_
         (lambda (_%g138946138948%_)
           (gx#expander-binding?__% _%g138946138948%_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_%stx138932%_)
        (letrec ((_%module-prelude?138934%_
                  (lambda (_%e138940%_)
                    (let ((_%$e138942%_
                           (##structure-instance-of?
                            _%e138940%_
                            'gx#module-context::t)))
                      (if _%$e138942%_
                          _%$e138942%_
                          (##structure-instance-of?
                           _%e138940%_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _%stx138932%_
           (lambda (_%g138935138937%_)
             (gx#expander-binding?__%
              _%g138935138937%_
              _%module-prelude?138934%_))))))
    (define gx#core-bind-import!__%
      (lambda (_%in138862%_ _%ctx138863%_ _%force-weak?138864%_)
        (let* ((_%in138865138874%_ _%in138862%_)
               (_%E138867138878%_
                (lambda ()
                  (error '"No clause matching"
                         _%in138865138874%_
                         '((module-import source key phi weak?)))
                  '#!void))
               (_%K138868138891%_
                (lambda (_%weak?138881%_
                         _%phi138882%_
                         _%key138883%_
                         _%source138884%_)
                  (gx#core-bind!__%
                   _%key138883%_
                   (let ((_%e138886%_
                          (gx#core-resolve-module-export _%source138884%_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref _%e138886%_ '1 '#f '#f)
                      _%key138883%_
                      _%phi138882%_
                      _%e138886%_
                      (##unchecked-structure-ref _%source138884%_ '1 '#f '#f)
                      (let ((_%$e138888%_ _%force-weak?138864%_))
                        (if _%$e138888%_ _%$e138888%_ _%weak?138881%_))))
                   gx#core-context-rebind?
                   _%phi138882%_
                   _%ctx138863%_))))
          (if (##structure-direct-instance-of?
               _%in138865138874%_
               'gx#module-import::t)
              (let* ((_%e138869138894%_
                      (##unchecked-structure-ref
                       _%in138865138874%_
                       '1
                       '#f
                       '#f))
                     (_%source138897%_ _%e138869138894%_)
                     (_%e138870138899%_
                      (##unchecked-structure-ref
                       _%in138865138874%_
                       '2
                       '#f
                       '#f))
                     (_%key138902%_ _%e138870138899%_)
                     (_%e138871138904%_
                      (##unchecked-structure-ref
                       _%in138865138874%_
                       '3
                       '#f
                       '#f))
                     (_%phi138907%_ _%e138871138904%_)
                     (_%e138872138909%_
                      (##unchecked-structure-ref
                       _%in138865138874%_
                       '4
                       '#f
                       '#f))
                     (_%weak?138912%_ _%e138872138909%_))
                (_%K138868138891%_
                 _%weak?138912%_
                 _%phi138907%_
                 _%key138902%_
                 _%source138897%_))
              (_%E138867138878%_)))))
    (define gx#core-bind-import!__0
      (lambda (_%in138917%_)
        (let* ((_%ctx138919%_ (gx#current-expander-context))
               (_%force-weak?138921%_ '#f))
          (gx#core-bind-import!__%
           _%in138917%_
           _%ctx138919%_
           _%force-weak?138921%_))))
    (define gx#core-bind-import!__1
      (lambda (_%in138923%_ _%ctx138924%_)
        (let ((_%force-weak?138926%_ '#f))
          (gx#core-bind-import!__%
           _%in138923%_
           _%ctx138924%_
           _%force-weak?138926%_))))
    (define gx#core-bind-import!
      (lambda _g140808_
        (let ((_g140809_ (##length _g140808_)))
          (cond ((##fx= _g140809_ 1) (apply gx#core-bind-import!__0 _g140808_))
                ((##fx= _g140809_ 2) (apply gx#core-bind-import!__1 _g140808_))
                ((##fx= _g140809_ 3) (apply gx#core-bind-import!__% _g140808_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g140808_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_%in138848%_ _%ctx138849%_)
        (gx#core-bind-import!__% _%in138848%_ _%ctx138849%_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_%in138854%_)
        (let ((_%ctx138856%_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _%in138854%_ _%ctx138856%_))))
    (define gx#core-bind-weak-import!
      (lambda _g140810_
        (let ((_g140811_ (##length _g140810_)))
          (cond ((##fx= _g140811_ 1)
                 (apply gx#core-bind-weak-import!__0 _g140810_))
                ((##fx= _g140811_ 2)
                 (apply gx#core-bind-weak-import!__% _g140810_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g140810_))))))
    (define gx#core-resolve-module-export
      (lambda (_%out138739%_)
        (letrec ((_%subst138741%_
                  (lambda (_%key138787%_)
                    (let* ((_%key138788138796%_ _%key138787%_)
                           (_%else138790138804%_ (lambda () _%key138787%_))
                           (_%K138792138835%_
                            (lambda (_%mark138807%_ _%id138808%_)
                              (let* ((_%mark138809138815%_ _%mark138807%_)
                                     (_%E138811138819%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark138809138815%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K138812138827%_
                                      (lambda (_%subst138822%_)
                                        (let ((_%$e138824%_
                                               (if _%subst138822%_
                                                   (hash-get
                                                    _%subst138822%_
                                                    _%id138808%_)
                                                   '#f)))
                                          (if _%$e138824%_
                                              _%$e138824%_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _%key138787%_))))))
                                (if (##structure-instance-of?
                                     _%mark138809138815%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e138813138830%_
                                            (##unchecked-structure-ref
                                             _%mark138809138815%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst138833%_ _%e138813138830%_))
                                      (_%K138812138827%_ _%subst138833%_))
                                    (_%E138811138819%_))))))
                      (if (pair? _%key138788138796%_)
                          (let ((_%hd138793138838%_
                                 (##car _%key138788138796%_))
                                (_%tl138794138840%_
                                 (##cdr _%key138788138796%_)))
                            (let* ((_%id138843%_ _%hd138793138838%_)
                                   (_%mark138845%_ _%tl138794138840%_))
                              (_%K138792138835%_ _%mark138845%_ _%id138843%_)))
                          (_%else138790138804%_))))))
          (let* ((_%out138742138752%_ _%out138739%_)
                 (_%E138744138756%_
                  (lambda ()
                    (error '"No clause matching"
                           _%out138742138752%_
                           '((module-export ctx key phi _ _)))
                    '#!void))
                 (_%K138745138763%_
                  (lambda (_%phi138759%_ _%key138760%_ _%ctx138761%_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _%ctx138761%_ _%phi138759%_)
                     (_%subst138741%_ _%key138760%_)))))
            (if (##structure-direct-instance-of?
                 _%out138742138752%_
                 'gx#module-export::t)
                (let* ((_%e138746138766%_
                        (##unchecked-structure-ref
                         _%out138742138752%_
                         '1
                         '#f
                         '#f))
                       (_%ctx138769%_ _%e138746138766%_)
                       (_%e138747138771%_
                        (##unchecked-structure-ref
                         _%out138742138752%_
                         '2
                         '#f
                         '#f))
                       (_%key138774%_ _%e138747138771%_)
                       (_%e138748138776%_
                        (##unchecked-structure-ref
                         _%out138742138752%_
                         '3
                         '#f
                         '#f))
                       (_%phi138779%_ _%e138748138776%_)
                       (_%e138749138781%_
                        (##unchecked-structure-ref
                         _%out138742138752%_
                         '4
                         '#f
                         '#f))
                       (_%e138750138784%_
                        (##unchecked-structure-ref
                         _%out138742138752%_
                         '5
                         '#f
                         '#f)))
                  (_%K138745138763%_
                   _%phi138779%_
                   _%key138774%_
                   _%ctx138769%_))
                (_%E138744138756%_))))))
    (define gx#core-module-export->import__%
      (lambda (_%out138664%_ _%rename138665%_ _%dphi138666%_)
        (let* ((_%out138667138677%_ _%out138664%_)
               (_%E138669138681%_
                (lambda ()
                  (error '"No clause matching"
                         _%out138667138677%_
                         '((module-export ctx key phi name weak?)))
                  '#!void))
               (_%K138670138693%_
                (lambda (_%weak?138684%_
                         _%name138685%_
                         _%phi138686%_
                         _%key138687%_
                         _%ctx138688%_)
                  (##structure
                   gx#module-import::t
                   _%out138664%_
                   (let ((_%$e138690%_ _%rename138665%_))
                     (if _%$e138690%_ _%$e138690%_ _%name138685%_))
                   (fx+ _%phi138686%_ _%dphi138666%_)
                   _%weak?138684%_))))
          (if (##structure-direct-instance-of?
               _%out138667138677%_
               'gx#module-export::t)
              (let* ((_%e138671138696%_
                      (##unchecked-structure-ref
                       _%out138667138677%_
                       '1
                       '#f
                       '#f))
                     (_%ctx138699%_ _%e138671138696%_)
                     (_%e138672138701%_
                      (##unchecked-structure-ref
                       _%out138667138677%_
                       '2
                       '#f
                       '#f))
                     (_%key138704%_ _%e138672138701%_)
                     (_%e138673138706%_
                      (##unchecked-structure-ref
                       _%out138667138677%_
                       '3
                       '#f
                       '#f))
                     (_%phi138709%_ _%e138673138706%_)
                     (_%e138674138711%_
                      (##unchecked-structure-ref
                       _%out138667138677%_
                       '4
                       '#f
                       '#f))
                     (_%name138714%_ _%e138674138711%_)
                     (_%e138675138716%_
                      (##unchecked-structure-ref
                       _%out138667138677%_
                       '5
                       '#f
                       '#f))
                     (_%weak?138719%_ _%e138675138716%_))
                (_%K138670138693%_
                 _%weak?138719%_
                 _%name138714%_
                 _%phi138709%_
                 _%key138704%_
                 _%ctx138699%_))
              (_%E138669138681%_)))))
    (define gx#core-module-export->import__0
      (lambda (_%out138724%_)
        (let* ((_%rename138726%_ '#f) (_%dphi138728%_ '0))
          (gx#core-module-export->import__%
           _%out138724%_
           _%rename138726%_
           _%dphi138728%_))))
    (define gx#core-module-export->import__1
      (lambda (_%out138730%_ _%rename138731%_)
        (let ((_%dphi138733%_ '0))
          (gx#core-module-export->import__%
           _%out138730%_
           _%rename138731%_
           _%dphi138733%_))))
    (define gx#core-module-export->import
      (lambda _g140812_
        (let ((_g140813_ (##length _g140812_)))
          (cond ((##fx= _g140813_ 1)
                 (apply gx#core-module-export->import__0 _g140812_))
                ((##fx= _g140813_ 2)
                 (apply gx#core-module-export->import__1 _g140812_))
                ((##fx= _g140813_ 3)
                 (apply gx#core-module-export->import__% _g140812_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g140812_))))))
    (define gx#core-expand-module%
      (lambda (_%stx138563%_)
        (letrec ((_%make-context138565%_
                  (lambda (_%id138642%_)
                    (let* ((_%super138644%_ (gx#current-expander-context))
                           (_%bind-id138646%_ (gx#stx-e _%id138642%_))
                           (_%mod-id138648%_
                            (if (##structure-instance-of?
                                 _%super138644%_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##unchecked-structure-ref
                                  _%super138644%_
                                  '1
                                  '#f
                                  '#f)
                                 '"~"
                                 _%bind-id138646%_)
                                _%bind-id138646%_))
                           (_%ns138650%_ (symbol->string _%mod-id138648%_))
                           (_%path138660%_
                            (if (##structure-instance-of?
                                 _%super138644%_
                                 'gx#module-context::t)
                                (let ((_%path138652%_
                                       (##unchecked-structure-ref
                                        _%super138644%_
                                        '7
                                        '#f
                                        '#f)))
                                  (if (or (pair? _%path138652%_)
                                          (null? _%path138652%_))
                                      (cons _%bind-id138646%_ _%path138652%_)
                                      (if (not _%path138652%_)
                                          _%bind-id138646%_
                                          (cons _%bind-id138646%_
                                                (cons _%path138652%_ '())))))
                                _%bind-id138646%_))
                           (__obj140789
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
                       __obj140789
                       _%mod-id138648%_
                       _%super138644%_
                       _%ns138650%_
                       _%path138660%_)
                      __obj140789)))
                 (_%valid-module-id?138566%_
                  (lambda (_%id138617%_)
                    (let* ((_%str138619%_ (symbol->string _%id138617%_))
                           (_%len138621%_ (##string-length _%str138619%_)))
                      (if (##fx>= _%len138621%_ '1)
                          (let _%loop138624%_ ((_%index138626%_
                                                (##fx- (##string-length
                                                        _%str138619%_)
                                                       '1)))
                            (if (##fx>= _%index138626%_ '0)
                                (let ((_%c138628%_
                                       (string-ref
                                        _%str138619%_
                                        _%index138626%_)))
                                  (if (or (and (##char>=? _%c138628%_ '#\a)
                                               (##char<=? _%c138628%_ '#\z))
                                          (and (##char>=? _%c138628%_ '#\A)
                                               (##char<=? _%c138628%_ '#\Z))
                                          (and (##char>=? _%c138628%_ '#\0)
                                               (##char<=? _%c138628%_ '#\9))
                                          (##char=? _%c138628%_ '#\_)
                                          (##char=? _%c138628%_ '#\-))
                                      (_%loop138624%_
                                       (##fx- _%index138626%_ '1))
                                      '#f))
                                '#t))
                          '#f)))))
          (let* ((_%e138567138577%_ _%stx138563%_)
                 (_%E138569138581%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e138567138577%_)))
                 (_%E138568138613%_
                  (lambda ()
                    (if (gx#stx-pair? _%e138567138577%_)
                        (let ((_%e138570138585%_
                               (gx#syntax-e _%e138567138577%_)))
                          (let ((_%hd138571138588%_ (##car _%e138570138585%_))
                                (_%tl138572138590%_ (##cdr _%e138570138585%_)))
                            (if (gx#stx-pair? _%tl138572138590%_)
                                (let ((_%e138573138593%_
                                       (gx#syntax-e _%tl138572138590%_)))
                                  (let ((_%hd138574138596%_
                                         (##car _%e138573138593%_))
                                        (_%tl138575138598%_
                                         (##cdr _%e138573138593%_)))
                                    (let* ((_%id138601%_ _%hd138574138596%_)
                                           (_%body138603%_ _%tl138575138598%_))
                                      (if (and (gx#identifier? _%id138601%_)
                                               (gx#stx-list? _%body138603%_))
                                          (if (_%valid-module-id?138566%_
                                               (gx#stx-e
                                                (gx#datum->syntax__0 '#f 'id)))
                                              (let* ((_%ctx138605%_
                                                      (_%make-context138565%_
                                                       _%id138601%_))
                                                     (_%body138607%_
                                                      (gx#core-expand-module-begin
                                                       _%body138603%_
                                                       _%ctx138605%_))
                                                     (_%body138609%_
                                                      (gx#core-quote-syntax__1
                                                       (gx#core-cons
                                                        '%#begin
                                                        _%body138607%_)
                                                       (gx#stx-source
                                                        _%stx138563%_))))
                                                (##unchecked-structure-set!
                                                 _%ctx138605%_
                                                 (__make-atomic-promise
                                                  (lambda ()
                                                    (gx#eval-syntax*
                                                     _%body138609%_)))
                                                 '10
                                                 '#f
                                                 '#f)
                                                (##unchecked-structure-set!
                                                 _%ctx138605%_
                                                 _%body138609%_
                                                 '11
                                                 '#f
                                                 '#f)
                                                (gx#core-bind-syntax!__0
                                                 _%id138601%_
                                                 _%ctx138605%_)
                                                (gx#core-quote-syntax__1
                                                 (gx#core-list
                                                  '%#module
                                                  (gx#core-quote-syntax__0
                                                   _%id138601%_)
                                                  _%body138609%_)
                                                 (gx#stx-source
                                                  _%stx138563%_)))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"invalid module id; allowed characters are A-Z,a-z,0-9,_,-"
                                               _%stx138563%_
                                               (gx#datum->syntax__0 '#f 'id)))
                                          (_%E138569138581%_)))))
                                (_%E138569138581%_))))
                        (_%E138569138581%_)))))
            (_%E138568138613%_)))))
    (define gx#core-expand-module-begin
      (lambda (_%body138528%_ _%ctx138529%_)
        (call-with-parameters__1
         (lambda ()
           (call-with-parameters__1
            (lambda ()
              (gx#core-bind-feature!__1 'gerbil-module '#t)
              (let* ((_%stx138533%_
                      (gx#core-expand-head
                       (cons '%%begin-module _%body138528%_)))
                     (_%e138534138541%_ _%stx138533%_)
                     (_%E138536138545%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module body expansion"
                         _%stx138533%_)))
                     (_%E138535138559%_
                      (lambda ()
                        (if (gx#stx-pair? _%e138534138541%_)
                            (let ((_%e138537138549%_
                                   (gx#syntax-e _%e138534138541%_)))
                              (let ((_%hd138538138552%_
                                     (##car _%e138537138549%_))
                                    (_%tl138539138554%_
                                     (##cdr _%e138537138549%_)))
                                (if (and (gx#identifier? _%hd138538138552%_)
                                         (gx#core-identifier=?
                                          _%hd138538138552%_
                                          '%#begin-module))
                                    (let ((_%body138557%_ _%tl138539138554%_))
                                      (if (gx#sealed-syntax? _%stx138533%_)
                                          _%body138557%_
                                          (gx#core-expand-module-body
                                           _%body138557%_)))
                                    (_%E138536138545%_))))
                            (_%E138536138545%_)))))
                (_%E138535138559%_)))
            gx#current-expander-phi
            '0))
         gx#current-expander-context
         _%ctx138529%_)))
    (define gx#core-expand-module-body
      (lambda (_%body138324%_)
        (letrec ((_%expand-special138326%_
                  (lambda (_%hd138455%_ _%K138456%_ _%rest138457%_ _%r138458%_)
                    (let* ((_%e138459138476%_ _%hd138455%_)
                           (_%E138471138480%_
                            (lambda ()
                              (_%K138456%_
                               _%rest138457%_
                               (cons (gx#core-expand-top _%hd138455%_)
                                     _%r138458%_))))
                           (_%E138461138492%_
                            (lambda ()
                              (if (gx#stx-pair? _%e138459138476%_)
                                  (let ((_%e138472138484%_
                                         (gx#syntax-e _%e138459138476%_)))
                                    (let ((_%hd138473138487%_
                                           (##car _%e138472138484%_))
                                          (_%tl138474138489%_
                                           (##cdr _%e138472138484%_)))
                                      (if (and (gx#identifier?
                                                _%hd138473138487%_)
                                               (gx#core-identifier=?
                                                _%hd138473138487%_
                                                '%#export))
                                          (_%K138456%_
                                           _%rest138457%_
                                           (cons _%hd138455%_ _%r138458%_))
                                          (_%E138471138480%_))))
                                  (_%E138471138480%_))))
                           (_%E138460138524%_
                            (lambda ()
                              (if (gx#stx-pair? _%e138459138476%_)
                                  (let ((_%e138462138496%_
                                         (gx#syntax-e _%e138459138476%_)))
                                    (let ((_%hd138463138499%_
                                           (##car _%e138462138496%_))
                                          (_%tl138464138501%_
                                           (##cdr _%e138462138496%_)))
                                      (if (and (gx#identifier?
                                                _%hd138463138499%_)
                                               (gx#core-identifier=?
                                                _%hd138463138499%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl138464138501%_)
                                              (let ((_%e138465138504%_
                                                     (gx#syntax-e
                                                      _%tl138464138501%_)))
                                                (let ((_%hd138466138507%_
                                                       (##car _%e138465138504%_))
                                                      (_%tl138467138509%_
                                                       (##cdr _%e138465138504%_)))
                                                  (let ((_%hd-bind138512%_
                                                         _%hd138466138507%_))
                                                    (if (gx#stx-pair?
                                                         _%tl138467138509%_)
                                                        (let ((_%e138468138514%_
                                                               (gx#syntax-e
                                                                _%tl138467138509%_)))
                                                          (let ((_%hd138469138517%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e138468138514%_))
                        (_%tl138470138519%_ (##cdr _%e138468138514%_)))
                    (let ((_%expr138522%_ _%hd138469138517%_))
                      (if (gx#stx-null? _%tl138470138519%_)
                          (if (gx#core-bind-values? _%hd-bind138512%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind138512%_)
                                (_%K138456%_
                                 _%rest138457%_
                                 (cons _%hd138455%_ _%r138458%_)))
                              (_%E138461138492%_))
                          (_%E138461138492%_)))))
                (_%E138461138492%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E138461138492%_))
                                          (_%E138461138492%_))))
                                  (_%E138461138492%_)))))
                      (_%E138460138524%_))))
                 (_%expand-body138327%_
                  (lambda (_%rbody138329%_)
                    (let _%lp138331%_ ((_%rest138333%_ _%rbody138329%_)
                                       (_%body138334%_ '()))
                      (let* ((_%rest138335138343%_ _%rest138333%_)
                             (_%else138337138351%_ (lambda () _%body138334%_))
                             (_%K138339138443%_
                              (lambda (_%rest138354%_ _%hd138355%_)
                                (let* ((_%e138356138377%_ _%hd138355%_)
                                       (_%E138372138381%_
                                        (lambda ()
                                          (_%lp138331%_
                                           _%rest138354%_
                                           (cons (gx#core-expand-expression
                                                  _%hd138355%_)
                                                 _%body138334%_))))
                                       (_%E138368138395%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e138356138377%_)
                                              (let ((_%e138373138385%_
                                                     (gx#syntax-e
                                                      _%e138356138377%_)))
                                                (let ((_%hd138374138388%_
                                                       (##car _%e138373138385%_))
                                                      (_%tl138375138390%_
                                                       (##cdr _%e138373138385%_)))
                                                  (let ((_%form138393%_
                                                         _%hd138374138388%_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _%form138393%_
                                                         gx#special-form-binding?)
                                                        (_%lp138331%_
                                                         _%rest138354%_
                                                         (cons _%hd138355%_
                                                               _%body138334%_))
                                                        (_%E138372138381%_)))))
                                              (_%E138372138381%_))))
                                       (_%E138358138407%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e138356138377%_)
                                              (let ((_%e138369138399%_
                                                     (gx#syntax-e
                                                      _%e138356138377%_)))
                                                (let ((_%hd138370138402%_
                                                       (##car _%e138369138399%_))
                                                      (_%tl138371138404%_
                                                       (##cdr _%e138369138399%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd138370138402%_)
                                                           (gx#core-identifier=?
                                                            _%hd138370138402%_
                                                            '%#export))
                                                      (_%lp138331%_
                                                       _%rest138354%_
                                                       (cons (gx#core-expand-export%__0
                                                              _%hd138355%_)
                                                             _%body138334%_))
                                                      (_%E138368138395%_))))
                                              (_%E138368138395%_))))
                                       (_%E138357138439%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e138356138377%_)
                                              (let ((_%e138359138411%_
                                                     (gx#syntax-e
                                                      _%e138356138377%_)))
                                                (let ((_%hd138360138414%_
                                                       (##car _%e138359138411%_))
                                                      (_%tl138361138416%_
                                                       (##cdr _%e138359138411%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd138360138414%_)
                                                           (gx#core-identifier=?
                                                            _%hd138360138414%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl138361138416%_)
                                                          (let ((_%e138362138419%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl138361138416%_)))
                    (let ((_%hd138363138422%_ (##car _%e138362138419%_))
                          (_%tl138364138424%_ (##cdr _%e138362138419%_)))
                      (let ((_%hd-bind138427%_ _%hd138363138422%_))
                        (if (gx#stx-pair? _%tl138364138424%_)
                            (let ((_%e138365138429%_
                                   (gx#syntax-e _%tl138364138424%_)))
                              (let ((_%hd138366138432%_
                                     (##car _%e138365138429%_))
                                    (_%tl138367138434%_
                                     (##cdr _%e138365138429%_)))
                                (let ((_%expr138437%_ _%hd138366138432%_))
                                  (if (gx#stx-null? _%tl138367138434%_)
                                      (_%lp138331%_
                                       _%rest138354%_
                                       (cons (gx#core-quote-syntax__1
                                              (gx#core-list
                                               '%#define-values
                                               (gx#core-quote-bind-values
                                                _%hd-bind138427%_)
                                               (gx#core-expand-expression
                                                _%expr138437%_))
                                              (gx#stx-source _%hd138355%_))
                                             _%body138334%_))
                                      (_%E138358138407%_)))))
                            (_%E138358138407%_)))))
                  (_%E138358138407%_))
              (_%E138358138407%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E138358138407%_)))))
                                  (_%E138357138439%_)))))
                        (if (pair? _%rest138335138343%_)
                            (let ((_%hd138340138446%_
                                   (##car _%rest138335138343%_))
                                  (_%tl138341138448%_
                                   (##cdr _%rest138335138343%_)))
                              (let* ((_%hd138451%_ _%hd138340138446%_)
                                     (_%rest138453%_ _%tl138341138448%_))
                                (_%K138339138443%_
                                 _%rest138453%_
                                 _%hd138451%_)))
                            (_%else138337138351%_)))))))
          (_%expand-body138327%_
           (gx#core-expand-block__%
            (cons '%#begin-module _%body138324%_)
            _%expand-special138326%_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_%stx138165%_
               _%expanded?138166%_
               _%method138167%_
               _%current-phi138168%_
               _%expand1138169%_)
        (letrec ((_%K138171%_
                  (lambda (_%rest138291%_ _%r138292%_)
                    (let* ((_%e138293138300%_ _%rest138291%_)
                           (_%E138295138304%_ (lambda () _%r138292%_))
                           (_%E138294138320%_
                            (lambda ()
                              (if (gx#stx-pair? _%e138293138300%_)
                                  (let ((_%e138296138308%_
                                         (gx#syntax-e _%e138293138300%_)))
                                    (let ((_%hd138297138311%_
                                           (##car _%e138296138308%_))
                                          (_%tl138298138313%_
                                           (##cdr _%e138296138308%_)))
                                      (let* ((_%hd138316%_ _%hd138297138311%_)
                                             (_%rest138318%_
                                              _%tl138298138313%_))
                                        (_%step138172%_
                                         _%hd138316%_
                                         _%rest138318%_
                                         _%r138292%_))))
                                  (_%E138295138304%_)))))
                      (_%E138294138320%_))))
                 (_%step138172%_
                  (lambda (_%hd138205%_ _%rest138206%_ _%r138207%_)
                    (let* ((_%e138208138226%_ _%hd138205%_)
                           (_%E138221138230%_
                            (lambda ()
                              (if (_%expanded?138166%_ (gx#stx-e _%hd138205%_))
                                  (_%K138171%_
                                   _%rest138206%_
                                   (cons (gx#stx-e _%hd138205%_) _%r138207%_))
                                  (_%expand1138169%_
                                   _%hd138205%_
                                   _%K138171%_
                                   _%rest138206%_
                                   _%r138207%_))))
                           (_%E138217138246%_
                            (lambda ()
                              (if (gx#stx-pair? _%e138208138226%_)
                                  (let ((_%e138222138234%_
                                         (gx#syntax-e _%e138208138226%_)))
                                    (let ((_%hd138223138237%_
                                           (##car _%e138222138234%_))
                                          (_%tl138224138239%_
                                           (##cdr _%e138222138234%_)))
                                      (let* ((_%macro138242%_
                                              _%hd138223138237%_)
                                             (_%body138244%_
                                              _%tl138224138239%_))
                                        (if (gx#core-bound-identifier?__%
                                             _%macro138242%_
                                             gx#syntax-binding?)
                                            (_%K138171%_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _%macro138242%_)
                                                    _%hd138205%_
                                                    _%method138167%_)
                                                   _%rest138206%_)
                                             _%r138207%_)
                                            (_%E138221138230%_)))))
                                  (_%E138221138230%_))))
                           (_%E138210138260%_
                            (lambda ()
                              (if (gx#stx-pair? _%e138208138226%_)
                                  (let ((_%e138218138250%_
                                         (gx#syntax-e _%e138208138226%_)))
                                    (let ((_%hd138219138253%_
                                           (##car _%e138218138250%_))
                                          (_%tl138220138255%_
                                           (##cdr _%e138218138250%_)))
                                      (if (eq? (gx#stx-e _%hd138219138253%_)
                                               'begin:)
                                          (let ((_%body138258%_
                                                 _%tl138220138255%_))
                                            (_%K138171%_
                                             (gx#stx-foldr
                                              cons
                                              _%rest138206%_
                                              _%body138258%_)
                                             _%r138207%_))
                                          (_%E138217138246%_))))
                                  (_%E138217138246%_))))
                           (_%E138209138287%_
                            (lambda ()
                              (if (gx#stx-pair? _%e138208138226%_)
                                  (let ((_%e138211138264%_
                                         (gx#syntax-e _%e138208138226%_)))
                                    (let ((_%hd138212138267%_
                                           (##car _%e138211138264%_))
                                          (_%tl138213138269%_
                                           (##cdr _%e138211138264%_)))
                                      (if (eq? (gx#stx-e _%hd138212138267%_)
                                               'phi:)
                                          (if (gx#stx-pair? _%tl138213138269%_)
                                              (let ((_%e138214138272%_
                                                     (gx#syntax-e
                                                      _%tl138213138269%_)))
                                                (let ((_%hd138215138275%_
                                                       (##car _%e138214138272%_))
                                                      (_%tl138216138277%_
                                                       (##cdr _%e138214138272%_)))
                                                  (let* ((_%dphi138280%_
                                                          _%hd138215138275%_)
                                                         (_%body138282%_
                                                          _%tl138216138277%_))
                                                    (if (gx#stx-fixnum?
                                                         _%dphi138280%_)
                                                        (let ((_%rbody138285%_
                                                               (call-with-parameters__1
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_%K138171%_ _%body138282%_ '()))
                        _%current-phi138168%_
                        (fx+ (gx#stx-e _%dphi138280%_)
                             (_%current-phi138168%_)))))
                  (_%K138171%_
                   _%rest138206%_
                   (__foldr1 cons _%r138207%_ _%rbody138285%_)))
                (_%E138210138260%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E138210138260%_))
                                          (_%E138210138260%_))))
                                  (_%E138210138260%_)))))
                      (_%E138209138287%_)))))
          (let* ((_%e138173138180%_ _%stx138165%_)
                 (_%E138175138184%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e138173138180%_)))
                 (_%E138174138201%_
                  (lambda ()
                    (if (gx#stx-pair? _%e138173138180%_)
                        (let ((_%e138176138188%_
                               (gx#syntax-e _%e138173138180%_)))
                          (let ((_%hd138177138191%_ (##car _%e138176138188%_))
                                (_%tl138178138193%_ (##cdr _%e138176138188%_)))
                            (let ((_%body138196%_ _%tl138178138193%_))
                              (if (_%current-phi138168%_)
                                  (_%K138171%_ _%body138196%_ '())
                                  (call-with-parameters__1
                                   (lambda () (_%K138171%_ _%body138196%_ '()))
                                   _%current-phi138168%_
                                   (gx#current-expander-phi))))))
                        (_%E138175138184%_)))))
            (_%E138174138201%_)))))
    (define gx#core-expand-import%__%
      (lambda (_%stx137819%_ _%internal-expand?137820%_)
        (letrec ((_%expand1137822%_
                  (lambda (_%hd138137%_ _%K138138%_ _%rest138139%_ _%r138140%_)
                    (if (gx#core-bound-module? _%hd138137%_)
                        (_%import1137823%_
                         (gx#syntax-local-e__0 _%hd138137%_)
                         _%K138138%_
                         _%rest138139%_
                         _%r138140%_)
                        (if (gx#core-library-module-path? _%hd138137%_)
                            (_%import1137823%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%hd138137%_))
                             _%K138138%_
                             _%rest138139%_
                             _%r138140%_)
                            (if (gx#core-library-relative-module-path?
                                 _%hd138137%_)
                                (_%import1137823%_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _%hd138137%_))
                                 _%K138138%_
                                 _%rest138139%_
                                 _%r138140%_)
                                (let ((_%e138146%_ (gx#stx-e _%hd138137%_)))
                                  (if (pair? _%e138146%_)
                                      (let ((_%$e138149%_
                                             (gx#stx-e (##car _%e138146%_))))
                                        (if (eq? 'spec: _%$e138149%_)
                                            (_%import-spec137826%_
                                             _%hd138137%_
                                             _%K138138%_
                                             _%rest138139%_
                                             _%r138140%_)
                                            (if (eq? 'in: _%$e138149%_)
                                                (_%import-submodule137824%_
                                                 _%hd138137%_
                                                 _%K138138%_
                                                 _%rest138139%_
                                                 _%r138140%_)
                                                (if (eq? 'runtime:
                                                         _%$e138149%_)
                                                    (_%import-runtime137825%_
                                                     _%hd138137%_
                                                     _%K138138%_
                                                     _%rest138139%_
                                                     _%r138140%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _%stx137819%_
                                                     _%hd138137%_)))))
                                      (if (string? _%e138146%_)
                                          (_%import1137823%_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _%hd138137%_
                                             (gx#stx-source _%stx137819%_)))
                                           _%K138138%_
                                           _%rest138139%_
                                           _%r138140%_)
                                          (if (##structure-instance-of?
                                               _%e138146%_
                                               'gx#module-context::t)
                                              (_%K138138%_
                                               _%rest138139%_
                                               (cons _%e138146%_ _%r138140%_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _%stx137819%_
                                               _%hd138137%_))))))))))
                 (_%import1137823%_
                  (lambda (_%ctx138126%_
                           _%K138127%_
                           _%rest138128%_
                           _%r138129%_)
                    (let ((_%dphi138131%_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_%K138127%_
                       _%rest138128%_
                       (cons (##structure
                              gx#import-set::t
                              _%ctx138126%_
                              _%dphi138131%_
                              (map (lambda (_%g138132138134%_)
                                     (gx#core-module-export->import__%
                                      _%g138132138134%_
                                      '#f
                                      _%dphi138131%_))
                                   (##unchecked-structure-ref
                                    _%ctx138126%_
                                    '9
                                    '#f
                                    '#f)))
                             _%r138129%_)))))
                 (_%import-submodule137824%_
                  (lambda (_%hd138093%_ _%K138094%_ _%rest138095%_ _%r138096%_)
                    (let* ((_%e138097138104%_ _%hd138093%_)
                           (_%E138099138108%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e138097138104%_)))
                           (_%E138098138122%_
                            (lambda ()
                              (if (gx#stx-pair? _%e138097138104%_)
                                  (let ((_%e138100138112%_
                                         (gx#syntax-e _%e138097138104%_)))
                                    (let ((_%hd138101138115%_
                                           (##car _%e138100138112%_))
                                          (_%tl138102138117%_
                                           (##cdr _%e138100138112%_)))
                                      (let ((_%spath138120%_
                                             _%tl138102138117%_))
                                        (_%import1137823%_
                                         (_%import-spec-source137827%_
                                          _%spath138120%_)
                                         _%K138094%_
                                         _%rest138095%_
                                         _%r138096%_))))
                                  (_%E138099138108%_)))))
                      (_%E138098138122%_))))
                 (_%import-runtime137825%_
                  (lambda (_%hd138060%_ _%K138061%_ _%rest138062%_ _%r138063%_)
                    (let* ((_%e138064138071%_ _%hd138060%_)
                           (_%E138066138075%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e138064138071%_)))
                           (_%E138065138089%_
                            (lambda ()
                              (if (gx#stx-pair? _%e138064138071%_)
                                  (let ((_%e138067138079%_
                                         (gx#syntax-e _%e138064138071%_)))
                                    (let ((_%hd138068138082%_
                                           (##car _%e138067138079%_))
                                          (_%tl138069138084%_
                                           (##cdr _%e138067138079%_)))
                                      (let ((_%spath138087%_
                                             _%tl138069138084%_))
                                        (_%K138061%_
                                         _%rest138062%_
                                         (cons (_%import-spec-source137827%_
                                                _%spath138087%_)
                                               _%r138063%_)))))
                                  (_%E138066138075%_)))))
                      (_%E138065138089%_))))
                 (_%import-spec137826%_
                  (lambda (_%hd137898%_ _%K137899%_ _%rest137900%_ _%r137901%_)
                    (let* ((_%e137902137919%_ _%hd137898%_)
                           (_%E137911137923%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e137902137919%_)))
                           (_%E137904138034%_
                            (lambda ()
                              (if (gx#stx-pair? _%e137902137919%_)
                                  (let ((_%e137912137927%_
                                         (gx#syntax-e _%e137902137919%_)))
                                    (let ((_%hd137913137930%_
                                           (##car _%e137912137927%_))
                                          (_%tl137914137932%_
                                           (##cdr _%e137912137927%_)))
                                      (if (gx#stx-pair? _%tl137914137932%_)
                                          (let ((_%e137915137935%_
                                                 (gx#syntax-e
                                                  _%tl137914137932%_)))
                                            (let ((_%hd137916137938%_
                                                   (##car _%e137915137935%_))
                                                  (_%tl137917137940%_
                                                   (##cdr _%e137915137935%_)))
                                              (let* ((_%path137943%_
                                                      _%hd137916137938%_)
                                                     (_%specs137945%_
                                                      _%tl137917137940%_))
                                                (let ((_%src-ctx137947%_
                                                       (_%import-spec-source137827%_
                                                        _%path137943%_))
                                                      (_%exports137948%_
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
                                                      (_%specs137949%_
                                                       (gx#syntax->list
                                                        _%specs137945%_)))
                                                  (for-each
                                                   (lambda (_%out137951%_)
                                                     (__hash-put!
                                                      _%exports137948%_
                                                      (cons (##unchecked-structure-ref
                                                             _%out137951%_
                                                             '3
                                                             '#f
                                                             '#f)
                                                            (##unchecked-structure-ref
                                                             _%out137951%_
                                                             '4
                                                             '#f
                                                             '#f))
                                                      _%out137951%_))
                                                   (##unchecked-structure-ref
                                                    _%src-ctx137947%_
                                                    '9
                                                    '#f
                                                    '#f))
                                                  (_%K137899%_
                                                   _%rest137900%_
                                                   (__foldl1
                                                    (lambda (_%spec137953%_
                                                             _%r137954%_)
                                                      (let* ((_%e137955137971%_
                                                              _%spec137953%_)
                                                             (_%E137957137975%_
                                                              (lambda ()
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid syntax-case clause"
                         _%e137955137971%_)))
                     (_%E137956138030%_
                      (lambda ()
                        (if (gx#stx-pair? _%e137955137971%_)
                            (let ((_%e137958137979%_
                                   (gx#syntax-e _%e137955137971%_)))
                              (let ((_%hd137959137982%_
                                     (##car _%e137958137979%_))
                                    (_%tl137960137984%_
                                     (##cdr _%e137958137979%_)))
                                (let ((_%phi137987%_ _%hd137959137982%_))
                                  (if (gx#stx-pair? _%tl137960137984%_)
                                      (let ((_%e137961137989%_
                                             (gx#syntax-e _%tl137960137984%_)))
                                        (let ((_%hd137962137992%_
                                               (##car _%e137961137989%_))
                                              (_%tl137963137994%_
                                               (##cdr _%e137961137989%_)))
                                          (let ((_%name137997%_
                                                 _%hd137962137992%_))
                                            (if (gx#stx-pair?
                                                 _%tl137963137994%_)
                                                (let ((_%e137964137999%_
                                                       (gx#syntax-e
                                                        _%tl137963137994%_)))
                                                  (let ((_%hd137965138002%_
                                                         (##car _%e137964137999%_))
                                                        (_%tl137966138004%_
                                                         (##cdr _%e137964137999%_)))
                                                    (let ((_%src-phi138007%_
                                                           _%hd137965138002%_))
                                                      (if (gx#stx-pair?
                                                           _%tl137966138004%_)
                                                          (let ((_%e137967138009%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl137966138004%_)))
                    (let ((_%hd137968138012%_ (##car _%e137967138009%_))
                          (_%tl137969138014%_ (##cdr _%e137967138009%_)))
                      (let ((_%src-name138017%_ _%hd137968138012%_))
                        (if (gx#stx-null? _%tl137969138014%_)
                            (if (and (gx#stx-fixnum? _%src-phi138007%_)
                                     (gx#identifier? _%src-name138017%_)
                                     (gx#stx-fixnum? _%phi137987%_)
                                     (gx#identifier? _%name137997%_))
                                (let ((_%src-phi138019%_
                                       (gx#stx-e _%src-phi138007%_))
                                      (_%src-name138020%_
                                       (gx#core-identifier-key
                                        _%src-name138017%_))
                                      (_%phi138021%_ (gx#stx-e _%phi137987%_))
                                      (_%name138022%_
                                       (gx#core-identifier-key
                                        _%name137997%_)))
                                  (let ((_%$e138024%_
                                         (__hash-get
                                          _%exports137948%_
                                          (cons _%src-phi138019%_
                                                _%src-name138020%_))))
                                    (if _%$e138024%_
                                        ((lambda (_%out138027%_)
                                           (cons (gx#core-module-export->import__%
                                                  _%out138027%_
                                                  _%name138022%_
                                                  (fx- _%phi138021%_
                                                       _%src-phi138019%_))
                                                 _%r137954%_))
                                         _%$e138024%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; no matching export"
                                         _%stx137819%_
                                         _%hd137898%_))))
                                (_%E137957137975%_))
                            (_%E137957137975%_)))))
                  (_%E137957137975%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E137957137975%_)))))
                                      (_%E137957137975%_)))))
                            (_%E137957137975%_)))))
                (_%E137956138030%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r137901%_
                                                    _%specs137949%_))))))
                                          (_%E137911137923%_))))
                                  (_%E137911137923%_))))
                           (_%E137903138056%_
                            (lambda ()
                              (if (gx#stx-pair? _%e137902137919%_)
                                  (let ((_%e137905138038%_
                                         (gx#syntax-e _%e137902137919%_)))
                                    (let ((_%hd137906138041%_
                                           (##car _%e137905138038%_))
                                          (_%tl137907138043%_
                                           (##cdr _%e137905138038%_)))
                                      (if (gx#stx-pair? _%tl137907138043%_)
                                          (let ((_%e137908138046%_
                                                 (gx#syntax-e
                                                  _%tl137907138043%_)))
                                            (let ((_%hd137909138049%_
                                                   (##car _%e137908138046%_))
                                                  (_%tl137910138051%_
                                                   (##cdr _%e137908138046%_)))
                                              (let ((_%path138054%_
                                                     _%hd137909138049%_))
                                                (if (gx#stx-null?
                                                     _%tl137910138051%_)
                                                    (_%K137899%_
                                                     _%rest137900%_
                                                     (cons (_%import-spec-source137827%_
                                                            _%path138054%_)
                                                           _%r137901%_))
                                                    (_%E137904138034%_)))))
                                          (_%E137904138034%_))))
                                  (_%E137904138034%_)))))
                      (_%E137903138056%_))))
                 (_%import-spec-source137827%_
                  (lambda (_%spath137896%_)
                    (gx#core-import-nested-module
                     _%spath137896%_
                     _%stx137819%_)))
                 (_%import!137828%_
                  (lambda (_%rbody137841%_)
                    (letrec* ((_%current-ctx137843%_
                               (gx#current-expander-context))
                              (_%deps137844%_ (make-hash-table-eq))
                              (_%bind!137845%_
                               (lambda (_%hd137894%_)
                                 (gx#core-bind-import!__1
                                  _%hd137894%_
                                  _%current-ctx137843%_))))
                      (let _%lp137847%_ ((_%rest137849%_ _%rbody137841%_)
                                         (_%body137850%_ '()))
                        (let* ((_%rest137851137859%_ _%rest137849%_)
                               (_%else137853137870%_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _%current-ctx137843%_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _%current-ctx137843%_
                                       (__foldl1
                                        cons
                                        (##unchecked-structure-ref
                                         _%current-ctx137843%_
                                         '8
                                         '#f
                                         '#f)
                                        _%body137850%_)
                                       '8
                                       '#f
                                       '#f)
                                      '#!void)
                                  (__hash-for-each
                                   (lambda (_%ctx137867%_ _%_137868%_)
                                     (gx#eval-module _%ctx137867%_))
                                   _%deps137844%_)
                                  _%body137850%_))
                               (_%K137855137882%_
                                (lambda (_%rest137873%_ _%hd137874%_)
                                  (if (##structure-direct-instance-of?
                                       _%hd137874%_
                                       'gx#module-import::t)
                                      (let ()
                                        (_%bind!137845%_ _%hd137874%_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _%hd137874%_
                                                   '3
                                                   '#f
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _%hd137874%_
                                                            '1
                                                            '#f
                                                            '#f)
                                                           '3
                                                           '#f
                                                           '#f)))
                                            (__hash-put!
                                             _%deps137844%_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _%hd137874%_
                                               '1
                                               '#f
                                               '#f)
                                              '1
                                              '#f
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _%hd137874%_
                                           'gx#import-set::t)
                                          (let ()
                                            (for-each
                                             _%bind!137845%_
                                             (##unchecked-structure-ref
                                              _%hd137874%_
                                              '3
                                              '#f
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _%hd137874%_
                                                  '2
                                                  '#f
                                                  '#f))
                                                (__hash-put!
                                                 _%deps137844%_
                                                 (##unchecked-structure-ref
                                                  _%hd137874%_
                                                  '1
                                                  '#f
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_%$e137878%_
                                                 (##structure-instance-of?
                                                  _%hd137874%_
                                                  'gx#module-context::t)))
                                            (if _%$e137878%_
                                                _%$e137878%_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _%stx137819%_
                                                 _%hd137874%_)))))
                                  (_%lp137847%_
                                   _%rest137873%_
                                   (cons _%hd137874%_ _%body137850%_)))))
                          (if (pair? _%rest137851137859%_)
                              (let ((_%hd137856137885%_
                                     (##car _%rest137851137859%_))
                                    (_%tl137857137887%_
                                     (##cdr _%rest137851137859%_)))
                                (let* ((_%hd137890%_ _%hd137856137885%_)
                                       (_%rest137892%_ _%tl137857137887%_))
                                  (_%K137855137882%_
                                   _%rest137892%_
                                   _%hd137890%_)))
                              (_%else137853137870%_)))))))
                 (_%expanded-import?137829%_
                  (lambda (_%e137833%_)
                    (let ((_%$e137835%_
                           (##structure-direct-instance-of?
                            _%e137833%_
                            'gx#import-set::t)))
                      (if _%$e137835%_
                          _%$e137835%_
                          (let ((_%$e137838%_
                                 (##structure-direct-instance-of?
                                  _%e137833%_
                                  'gx#module-import::t)))
                            (if _%$e137838%_
                                _%$e137838%_
                                (##structure-instance-of?
                                 _%e137833%_
                                 'gx#module-context::t))))))))
          (let ((_%rbody137831%_
                 (gx#core-expand-import/export
                  _%stx137819%_
                  _%expanded-import?137829%_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _%expand1137822%_)))
            (if _%internal-expand?137820%_
                (reverse _%rbody137831%_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_%import!137828%_ _%rbody137831%_))
                 (gx#stx-source _%stx137819%_)))))))
    (define gx#core-expand-import%__0
      (lambda (_%stx138158%_)
        (let ((_%internal-expand?138160%_ '#f))
          (gx#core-expand-import%__%
           _%stx138158%_
           _%internal-expand?138160%_))))
    (define gx#core-expand-import%
      (lambda _g140814_
        (let ((_g140815_ (##length _g140814_)))
          (cond ((##fx= _g140815_ 1)
                 (apply gx#core-expand-import%__0 _g140814_))
                ((##fx= _g140815_ 2)
                 (apply gx#core-expand-import%__% _g140814_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g140814_))))))
    (define gx#core-import-nested-module
      (lambda (_%spath137746%_ _%where137747%_)
        (let* ((_%e137748137755%_ _%spath137746%_)
               (_%E137750137759%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e137748137755%_)))
               (_%E137749137814%_
                (lambda ()
                  (if (gx#stx-pair? _%e137748137755%_)
                      (let ((_%e137751137763%_
                             (gx#syntax-e _%e137748137755%_)))
                        (let ((_%hd137752137766%_ (##car _%e137751137763%_))
                              (_%tl137753137768%_ (##cdr _%e137751137763%_)))
                          (let* ((_%origin137771%_ _%hd137752137766%_)
                                 (_%sub137773%_ _%tl137753137768%_)
                                 (_%origin-ctx137775%_
                                  (if (gx#stx-false? _%origin137771%_)
                                      (gx#current-expander-context)
                                      (gx#import-module__0 _%origin137771%_))))
                            (let _%lp137777%_ ((_%rest137779%_ _%sub137773%_)
                                               (_%ctx137780%_
                                                _%origin-ctx137775%_))
                              (let* ((_%e137781137788%_ _%rest137779%_)
                                     (_%E137783137792%_
                                      (lambda () _%ctx137780%_))
                                     (_%E137782137810%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%e137781137788%_)
                                            (let ((_%e137784137796%_
                                                   (gx#syntax-e
                                                    _%e137781137788%_)))
                                              (let ((_%hd137785137799%_
                                                     (##car _%e137784137796%_))
                                                    (_%tl137786137801%_
                                                     (##cdr _%e137784137796%_)))
                                                (let* ((_%id137804%_
                                                        _%hd137785137799%_)
                                                       (_%rest137806%_
                                                        _%tl137786137801%_)
                                                       (_%bind137808%_
                                                        (gx#resolve-identifier__%
                                                         _%id137804%_
                                                         '0
                                                         _%ctx137780%_)))
                                                  (if (and (##structure-direct-instance-of?
                                                            _%bind137808%_
                                                            'gx#syntax-binding::t)
                                                           (##structure-instance-of?
                                                            (##unchecked-structure-ref
                                                             _%bind137808%_
                                                             '4
                                                             '#f
                                                             '#f)
                                                            'gx#module-context::t))
                                                      '#!void
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; not bound as module"
                                                       _%where137747%_
                                                       _%spath137746%_
                                                       _%id137804%_))
                                                  (_%lp137777%_
                                                   _%rest137806%_
                                                   (##unchecked-structure-ref
                                                    _%bind137808%_
                                                    '4
                                                    '#f
                                                    '#f)))))
                                            (_%E137783137792%_)))))
                                (_%E137782137810%_))))))
                      (_%E137750137759%_)))))
          (_%E137749137814%_))))
    (define gx#core-expand-import-source
      (lambda (_%hd137744%_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _%hd137744%_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_%stx137238%_ _%internal-expand?137239%_)
        (letrec* ((_%make-export__140743140744%_
                   (lambda (_%bind137692%_
                            _%phi137693%_
                            _%ctx137694%_
                            _%name137695%_)
                     (let* ((_%key137697%_
                             (##unchecked-structure-ref
                              _%bind137692%_
                              '2
                              '#f
                              '#f))
                            (_%export-key137699%_
                             (if _%name137695%_
                                 (gx#core-identifier-key _%name137695%_)
                                 _%key137697%_)))
                       (##structure
                        gx#module-export::t
                        _%ctx137694%_
                        _%key137697%_
                        _%phi137693%_
                        _%export-key137699%_
                        (let ((_%$e137702%_
                               (##structure-instance-of?
                                _%bind137692%_
                                'gx#extern-binding::t)))
                          (if _%$e137702%_
                              _%$e137702%_
                              (##structure-direct-instance-of?
                               _%bind137692%_
                               'gx#import-binding::t)))))))
                  (_%make-export__0__140745140748%_
                   (lambda (_%bind137708%_)
                     (let* ((_%phi137710%_ (gx#current-export-expander-phi))
                            (_%ctx137712%_ (gx#current-expander-context))
                            (_%name137714%_ '#f))
                       (_%make-export__140743140744%_
                        _%bind137708%_
                        _%phi137710%_
                        _%ctx137712%_
                        _%name137714%_))))
                  (_%make-export__1__140746140749%_
                   (lambda (_%bind137716%_ _%phi137717%_)
                     (let* ((_%ctx137719%_ (gx#current-expander-context))
                            (_%name137721%_ '#f))
                       (_%make-export__140743140744%_
                        _%bind137716%_
                        _%phi137717%_
                        _%ctx137719%_
                        _%name137721%_))))
                  (_%make-export__2__140747140750%_
                   (lambda (_%bind137723%_ _%phi137724%_ _%ctx137725%_)
                     (let ((_%name137727%_ '#f))
                       (_%make-export__140743140744%_
                        _%bind137723%_
                        _%phi137724%_
                        _%ctx137725%_
                        _%name137727%_))))
                  (_%make-export137241%_
                   (lambda _g140816_
                     (let ((_g140817_ (##length _g140816_)))
                       (cond ((##fx= _g140817_ 1)
                              (apply _%make-export__0__140745140748%_
                                     _g140816_))
                             ((##fx= _g140817_ 2)
                              (apply _%make-export__1__140746140749%_
                                     _g140816_))
                             ((##fx= _g140817_ 3)
                              (apply _%make-export__2__140747140750%_
                                     _g140816_))
                             ((##fx= _g140817_ 4)
                              (apply _%make-export__140743140744%_ _g140816_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g140816_))))))
                  (_%expand1137242%_
                   (lambda (_%hd137397%_
                            _%K137398%_
                            _%rest137399%_
                            _%r137400%_)
                     (let* ((_%e137401137433%_ _%hd137397%_)
                            (_%E137428137437%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _%stx137238%_
                                _%hd137397%_)))
                            (_%E137418137521%_
                             (lambda ()
                               (if (gx#stx-pair? _%e137401137433%_)
                                   (let ((_%e137429137441%_
                                          (gx#syntax-e _%e137401137433%_)))
                                     (let ((_%hd137430137444%_
                                            (##car _%e137429137441%_))
                                           (_%tl137431137446%_
                                            (##cdr _%e137429137441%_)))
                                       (if (eq? (gx#stx-e _%hd137430137444%_)
                                                'import:)
                                           (let ((_%in137449%_
                                                  _%tl137431137446%_))
                                             (if (gx#stx-list? _%in137449%_)
                                                 (let _%lp137451%_ ((_%in-rest137453%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%in137449%_)
                            (_%r137454%_ _%r137400%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%e137455137462%_
                                                           _%in-rest137453%_)
                                                          (_%E137457137466%_
                                                           (lambda ()
                                                             (_%K137398%_
                                                              _%rest137399%_
                                                              _%r137454%_)))
                                                          (_%E137456137517%_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%e137455137462%_)
                         (let ((_%e137458137470%_
                                (gx#syntax-e _%e137455137462%_)))
                           (let ((_%hd137459137473%_ (##car _%e137458137470%_))
                                 (_%tl137460137475%_
                                  (##cdr _%e137458137470%_)))
                             (let* ((_%hd137478%_ _%hd137459137473%_)
                                    (_%in-rest137480%_ _%tl137460137475%_)
                                    (_%src137515%_
                                     (if (gx#core-bound-module? _%hd137478%_)
                                         (gx#syntax-local-e__0 _%hd137478%_)
                                         (if (gx#core-library-module-path?
                                              _%hd137478%_)
                                             (gx#import-module__0
                                              (gx#core-resolve-library-module-path
                                               _%hd137478%_))
                                             (if (gx#core-library-relative-module-path?
                                                  _%hd137478%_)
                                                 (gx#import-module__0
                                                  (gx#core-resolve-library-relative-module-path
                                                   _%hd137478%_))
                                                 (if (gx#stx-string?
                                                      _%hd137478%_)
                                                     (gx#import-module__0
                                                      (gx#core-resolve-module-path__%
                                                       _%hd137478%_
                                                       (gx#stx-source
                                                        _%stx137238%_)))
                                                     (let* ((_%e137486137493%_
                                                             _%hd137478%_)
                                                            (_%E137488137497%_
                                                             (lambda ()
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; illegal re-export"
                                                                _%stx137238%_
                                                                _%hd137478%_)))
                                                            (_%E137487137511%_
                                                             (lambda ()
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%e137486137493%_)
                           (let ((_%e137489137501%_
                                  (gx#syntax-e _%e137486137493%_)))
                             (let ((_%hd137490137504%_
                                    (##car _%e137489137501%_))
                                   (_%tl137491137506%_
                                    (##cdr _%e137489137501%_)))
                               (if (eq? (gx#stx-e _%hd137490137504%_) 'in:)
                                   (let ((_%spath137509%_ _%tl137491137506%_))
                                     (gx#core-import-nested-module
                                      _%spath137509%_
                                      _%stx137238%_))
                                   (_%E137488137497%_))))
                           (_%E137488137497%_)))))
               (_%E137487137511%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (_%lp137451%_
                                _%in-rest137480%_
                                (_%export-imports137243%_
                                 _%src137515%_
                                 _%r137454%_)))))
                         (_%E137457137466%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E137456137517%_)))
                                                 (_%E137428137437%_)))
                                           (_%E137428137437%_))))
                                   (_%E137428137437%_))))
                            (_%E137405137561%_
                             (lambda ()
                               (if (gx#stx-pair? _%e137401137433%_)
                                   (let ((_%e137419137525%_
                                          (gx#syntax-e _%e137401137433%_)))
                                     (let ((_%hd137420137528%_
                                            (##car _%e137419137525%_))
                                           (_%tl137421137530%_
                                            (##cdr _%e137419137525%_)))
                                       (if (eq? (gx#stx-e _%hd137420137528%_)
                                                'rename:)
                                           (if (gx#stx-pair?
                                                _%tl137421137530%_)
                                               (let ((_%e137422137533%_
                                                      (gx#syntax-e
                                                       _%tl137421137530%_)))
                                                 (let ((_%hd137423137536%_
                                                        (##car _%e137422137533%_))
                                                       (_%tl137424137538%_
                                                        (##cdr _%e137422137533%_)))
                                                   (let ((_%id137541%_
                                                          _%hd137423137536%_))
                                                     (if (gx#stx-pair?
                                                          _%tl137424137538%_)
                                                         (let ((_%e137425137543%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl137424137538%_)))
                   (let ((_%hd137426137546%_ (##car _%e137425137543%_))
                         (_%tl137427137548%_ (##cdr _%e137425137543%_)))
                     (let ((_%name137551%_ _%hd137426137546%_))
                       (if (gx#stx-null? _%tl137427137548%_)
                           (let* ((_%phi137553%_
                                   (gx#current-export-expander-phi))
                                  (_%$e137555%_
                                   (gx#core-resolve-identifier__1
                                    _%id137541%_
                                    _%phi137553%_)))
                             (if _%$e137555%_
                                 ((lambda (_%bind137558%_)
                                    (_%K137398%_
                                     _%rest137399%_
                                     (cons (_%make-export__140743140744%_
                                            _%bind137558%_
                                            _%phi137553%_
                                            (gx#current-expander-context)
                                            _%name137551%_)
                                           _%r137400%_)))
                                  _%$e137555%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Reference to unbound identifier"
                                  _%stx137238%_
                                  _%hd137397%_
                                  _%id137541%_)))
                           (_%E137418137521%_)))))
                 (_%E137418137521%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E137418137521%_))
                                           (_%E137418137521%_))))
                                   (_%E137418137521%_))))
                            (_%E137404137611%_
                             (lambda ()
                               (if (gx#stx-pair? _%e137401137433%_)
                                   (let ((_%e137406137565%_
                                          (gx#syntax-e _%e137401137433%_)))
                                     (let ((_%hd137407137568%_
                                            (##car _%e137406137565%_))
                                           (_%tl137408137570%_
                                            (##cdr _%e137406137565%_)))
                                       (if (eq? (gx#stx-e _%hd137407137568%_)
                                                'spec:)
                                           (if (gx#stx-pair?
                                                _%tl137408137570%_)
                                               (let ((_%e137409137573%_
                                                      (gx#syntax-e
                                                       _%tl137408137570%_)))
                                                 (let ((_%hd137410137576%_
                                                        (##car _%e137409137573%_))
                                                       (_%tl137411137578%_
                                                        (##cdr _%e137409137573%_)))
                                                   (let ((_%phi137581%_
                                                          _%hd137410137576%_))
                                                     (if (gx#stx-pair?
                                                          _%tl137411137578%_)
                                                         (let ((_%e137412137583%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl137411137578%_)))
                   (let ((_%hd137413137586%_ (##car _%e137412137583%_))
                         (_%tl137414137588%_ (##cdr _%e137412137583%_)))
                     (let ((_%id137591%_ _%hd137413137586%_))
                       (if (gx#stx-pair? _%tl137414137588%_)
                           (let ((_%e137415137593%_
                                  (gx#syntax-e _%tl137414137588%_)))
                             (let ((_%hd137416137596%_
                                    (##car _%e137415137593%_))
                                   (_%tl137417137598%_
                                    (##cdr _%e137415137593%_)))
                               (let ((_%name137601%_ _%hd137416137596%_))
                                 (if (gx#stx-null? _%tl137417137598%_)
                                     (if (and (gx#stx-fixnum? _%phi137581%_)
                                              (gx#identifier? _%id137591%_)
                                              (gx#identifier? _%name137601%_))
                                         (let* ((_%phi137603%_
                                                 (gx#stx-e _%phi137581%_))
                                                (_%$e137605%_
                                                 (gx#core-resolve-identifier__1
                                                  _%id137591%_
                                                  _%phi137603%_)))
                                           (if _%$e137605%_
                                               ((lambda (_%bind137608%_)
                                                  (_%K137398%_
                                                   _%rest137399%_
                                                   (cons (_%make-export__140743140744%_
                                                          _%bind137608%_
                                                          _%phi137603%_
                                                          (gx#current-expander-context)
                                                          _%name137601%_)
                                                         _%r137400%_)))
                                                _%$e137605%_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _%stx137238%_
                                                _%hd137397%_
                                                _%id137591%_)))
                                         (_%E137405137561%_))
                                     (_%E137405137561%_)))))
                           (_%E137405137561%_)))))
                 (_%E137405137561%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E137405137561%_))
                                           (_%E137405137561%_))))
                                   (_%E137405137561%_))))
                            (_%E137403137623%_
                             (lambda ()
                               (let ((_%id137615%_ _%e137401137433%_))
                                 (if (gx#identifier? _%id137615%_)
                                     (let ((_%$e137617%_
                                            (gx#core-resolve-identifier__1
                                             _%id137615%_
                                             (gx#current-export-expander-phi))))
                                       (if _%$e137617%_
                                           ((lambda (_%bind137620%_)
                                              (_%K137398%_
                                               _%rest137399%_
                                               (cons (_%make-export__0__140745140748%_
                                                      _%bind137620%_)
                                                     _%r137400%_)))
                                            _%$e137617%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _%stx137238%_
                                            _%hd137397%_)))
                                     (_%E137404137611%_)))))
                            (_%E137402137687%_
                             (lambda ()
                               (if (eq? (gx#stx-e _%e137401137433%_) '#t)
                                   (let* ((_%current-ctx137627%_
                                           (gx#current-expander-context))
                                          (_%current-phi137629%_
                                           (gx#current-export-expander-phi))
                                          (_%phi-ctx137631%_
                                           (gx#core-context-shift
                                            _%current-ctx137627%_
                                            _%current-phi137629%_))
                                          (_%phi-bind137633%_
                                           (hash->list
                                            (##unchecked-structure-ref
                                             _%phi-ctx137631%_
                                             '2
                                             '#f
                                             '#f))))
                                     (let _%lp137636%_ ((_%bind-rest137638%_
                                                         _%phi-bind137633%_)
                                                        (_%set137639%_ '()))
                                       (let* ((_%bind-rest137640137650%_
                                               _%bind-rest137638%_)
                                              (_%else137642137658%_
                                               (lambda ()
                                                 (_%K137398%_
                                                  _%rest137399%_
                                                  (cons (##structure
                                                         gx#export-set::t
                                                         '#f
                                                         _%current-phi137629%_
                                                         _%set137639%_)
                                                        _%r137400%_))))
                                              (_%K137644137668%_
                                               (lambda (_%bind-rest137661%_
                                                        _%bind137662%_
                                                        _%key137663%_)
                                                 (if (or (##structure-direct-instance-of?
                                                          _%bind137662%_
                                                          'gx#import-binding::t)
                                                         (gx#private-feature-binding?
                                                          _%bind137662%_))
                                                     (_%lp137636%_
                                                      _%bind-rest137661%_
                                                      _%set137639%_)
                                                     (_%lp137636%_
                                                      _%bind-rest137661%_
                                                      (cons (_%make-export__2__140747140750%_
                                                             _%bind137662%_
                                                             _%current-phi137629%_
                                                             _%current-ctx137627%_)
                                                            _%set137639%_))))))
                                         (if (pair? _%bind-rest137640137650%_)
                                             (let ((_%hd137645137671%_
                                                    (##car _%bind-rest137640137650%_))
                                                   (_%tl137646137673%_
                                                    (##cdr _%bind-rest137640137650%_)))
                                               (if (pair? _%hd137645137671%_)
                                                   (let ((_%hd137647137676%_
                                                          (##car _%hd137645137671%_))
                                                         (_%tl137648137678%_
                                                          (##cdr _%hd137645137671%_)))
                                                     (let* ((_%key137681%_
                                                             _%hd137647137676%_)
                                                            (_%bind137683%_
                                                             _%tl137648137678%_)
                                                            (_%bind-rest137685%_
                                                             _%tl137646137673%_))
                                                       (_%K137644137668%_
                                                        _%bind-rest137685%_
                                                        _%bind137683%_
                                                        _%key137681%_)))
                                                   (_%else137642137658%_)))
                                             (_%else137642137658%_)))))
                                   (_%E137403137623%_)))))
                       (_%E137402137687%_))))
                  (_%export-imports137243%_
                   (lambda (_%src137273%_ _%r137274%_)
                     (letrec* ((_%current-ctx137276%_
                                (gx#current-expander-context))
                               (_%current-phi137277%_
                                (gx#current-export-expander-phi))
                               (_%import->export137278%_
                                (lambda (_%in137359%_)
                                  (let* ((_%in137360137368%_ _%in137359%_)
                                         (_%E137362137372%_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _%in137360137368%_
                                                   '((module-import
                                                      out
                                                      key
                                                      phi)))
                                            '#!void))
                                         (_%K137363137379%_
                                          (lambda (_%phi137375%_
                                                   _%key137376%_
                                                   _%out137377%_)
                                            (##structure
                                             gx#module-export::t
                                             _%current-ctx137276%_
                                             _%key137376%_
                                             _%phi137375%_
                                             _%key137376%_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _%in137360137368%_
                                         'gx#module-import::t)
                                        (let* ((_%e137364137382%_
                                                (##unchecked-structure-ref
                                                 _%in137360137368%_
                                                 '1
                                                 '#f
                                                 '#f))
                                               (_%out137385%_
                                                _%e137364137382%_)
                                               (_%e137365137387%_
                                                (##unchecked-structure-ref
                                                 _%in137360137368%_
                                                 '2
                                                 '#f
                                                 '#f))
                                               (_%key137390%_
                                                _%e137365137387%_)
                                               (_%e137366137392%_
                                                (##unchecked-structure-ref
                                                 _%in137360137368%_
                                                 '3
                                                 '#f
                                                 '#f))
                                               (_%phi137395%_
                                                _%e137366137392%_))
                                          (_%K137363137379%_
                                           _%phi137395%_
                                           _%key137390%_
                                           _%out137385%_))
                                        (_%E137362137372%_)))))
                               (_%fold-e137279%_
                                (lambda (_%in137281%_ _%r137282%_)
                                  (let* ((_%in137283137297%_ _%in137281%_)
                                         (_%else137286137305%_
                                          (lambda () _%r137282%_)))
                                    (let ((_%K137292137341%_
                                           (lambda (_%phi137337%_
                                                    _%key137338%_
                                                    _%out137339%_)
                                             (if (and (fx= _%phi137337%_
                                                           _%current-phi137277%_)
                                                      (eq? _%src137273%_
                                                           (##unchecked-structure-ref
                                                            _%out137339%_
                                                            '1
                                                            '#f
                                                            '#f)))
                                                 (cons (_%import->export137278%_
                                                        _%in137281%_)
                                                       _%r137282%_)
                                                 _%r137282%_)))
                                          (_%K137288137316%_
                                           (lambda (_%imports137309%_
                                                    _%phi137310%_
                                                    _%ctx137311%_)
                                             (if (and (fx= _%phi137310%_
                                                           _%current-phi137277%_)
                                                      (eq? _%src137273%_
                                                           _%ctx137311%_))
                                                 (__foldl1
                                                  (lambda (_%in137313%_
                                                           _%r137314%_)
                                                    (cons (_%import->export137278%_
                                                           _%in137313%_)
                                                          _%r137314%_))
                                                  _%r137282%_
                                                  _%imports137309%_)
                                                 _%r137282%_))))
                                      (let ((_%try-match137285137334%_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _%in137283137297%_
                                                    'gx#import-set::t)
                                                   (let* ((_%e137289137319%_
                                                           (##unchecked-structure-ref
                                                            _%in137283137297%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                          (_%e137290137324%_
                                                           (##unchecked-structure-ref
                                                            _%in137283137297%_
                                                            '2
                                                            '#f
                                                            '#f))
                                                          (_%e137291137329%_
                                                           (##unchecked-structure-ref
                                                            _%in137283137297%_
                                                            '3
                                                            '#f
                                                            '#f)))
                                                     (let ((_%ctx137322%_
                                                            _%e137289137319%_)
                                                           (_%phi137327%_
                                                            _%e137290137324%_)
                                                           (_%imports137332%_
                                                            _%e137291137329%_))
                                                       (_%K137288137316%_
                                                        _%imports137332%_
                                                        _%phi137327%_
                                                        _%ctx137322%_)))
                                                   (_%else137286137305%_)))))
                                        (if (##structure-direct-instance-of?
                                             _%in137283137297%_
                                             'gx#module-import::t)
                                            (let* ((_%e137293137344%_
                                                    (##unchecked-structure-ref
                                                     _%in137283137297%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                   (_%e137294137349%_
                                                    (##unchecked-structure-ref
                                                     _%in137283137297%_
                                                     '2
                                                     '#f
                                                     '#f))
                                                   (_%e137295137354%_
                                                    (##unchecked-structure-ref
                                                     _%in137283137297%_
                                                     '3
                                                     '#f
                                                     '#f)))
                                              (let ((_%out137347%_
                                                     _%e137293137344%_)
                                                    (_%key137352%_
                                                     _%e137294137349%_)
                                                    (_%phi137357%_
                                                     _%e137295137354%_))
                                                (_%K137292137341%_
                                                 _%phi137357%_
                                                 _%key137352%_
                                                 _%out137347%_)))
                                            (_%try-match137285137334%_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _%src137273%_
                              _%current-phi137277%_
                              (__foldl1
                               _%fold-e137279%_
                               '()
                               (##unchecked-structure-ref
                                _%current-ctx137276%_
                                '8
                                '#f
                                '#f)))
                             _%r137274%_))))
                  (_%export!137244%_
                   (lambda (_%rbody137260%_)
                     (letrec* ((_%current-ctx137262%_
                                (gx#current-expander-context))
                               (_%fold-e137263%_
                                (lambda (_%out137267%_ _%r137268%_)
                                  (if (##structure-direct-instance-of?
                                       _%out137267%_
                                       'gx#module-export::t)
                                      (cons _%out137267%_ _%r137268%_)
                                      (if (##structure-direct-instance-of?
                                           _%out137267%_
                                           'gx#export-set::t)
                                          (__foldl1
                                           cons
                                           _%r137268%_
                                           (##unchecked-structure-ref
                                            _%out137267%_
                                            '3
                                            '#f
                                            '#f))
                                          _%r137268%_)))))
                       (let ((_%body137265%_ (reverse _%rbody137260%_)))
                         (##unchecked-structure-set!
                          _%current-ctx137262%_
                          (__foldl1
                           _%fold-e137263%_
                           (##unchecked-structure-ref
                            _%current-ctx137262%_
                            '9
                            '#f
                            '#f)
                           _%body137265%_)
                          '9
                          '#f
                          '#f)
                         _%body137265%_))))
                  (_%expanded-export?137245%_
                   (lambda (_%e137255%_)
                     (let ((_%$e137257%_
                            (##structure-direct-instance-of?
                             _%e137255%_
                             'gx#module-export::t)))
                       (if _%$e137257%_
                           _%$e137257%_
                           (##structure-direct-instance-of?
                            _%e137255%_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _%internal-expand?137239%_)
              (let ((_%rbody137251%_
                     (gx#core-expand-import/export
                      _%stx137238%_
                      _%expanded-export?137245%_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _%expand1137242%_)))
                (if _%internal-expand?137239%_
                    (reverse _%rbody137251%_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons
                      '%#export
                      (_%export!137244%_ _%rbody137251%_))
                     (gx#stx-source _%stx137238%_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _%stx137238%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _%stx137238%_))))))
    (define gx#core-expand-export%__0
      (lambda (_%stx137737%_)
        (let ((_%internal-expand?137739%_ '#f))
          (gx#core-expand-export%__%
           _%stx137737%_
           _%internal-expand?137739%_))))
    (define gx#core-expand-export%
      (lambda _g140818_
        (let ((_g140819_ (##length _g140818_)))
          (cond ((##fx= _g140819_ 1)
                 (apply gx#core-expand-export%__0 _g140818_))
                ((##fx= _g140819_ 2)
                 (apply gx#core-expand-export%__% _g140818_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g140818_))))))
    (define gx#core-expand-export-source
      (lambda (_%hd137235%_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _%hd137235%_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_%stx137205%_)
        (let* ((_%e137206137213%_ _%stx137205%_)
               (_%E137208137217%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e137206137213%_)))
               (_%E137207137231%_
                (lambda ()
                  (if (gx#stx-pair? _%e137206137213%_)
                      (let ((_%e137209137221%_
                             (gx#syntax-e _%e137206137213%_)))
                        (let ((_%hd137210137224%_ (##car _%e137209137221%_))
                              (_%tl137211137226%_ (##cdr _%e137209137221%_)))
                          (let ((_%body137229%_ _%tl137211137226%_))
                            (if (gx#identifier-list? _%body137229%_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _%body137229%_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _%body137229%_))
                                   (gx#stx-source _%stx137205%_)))
                                (_%E137208137217%_)))))
                      (_%E137208137217%_)))))
          (_%E137207137231%_))))
    (define gx#core-bind-feature!__%
      (lambda (_%id137171%_ _%private?137172%_ _%phi137173%_ _%ctx137174%_)
        (gx#core-bind-syntax!__%
         _%id137171%_
         ((if _%private?137172%_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _%id137171%_))
         _%private?137172%_
         _%phi137173%_
         _%ctx137174%_)))
    (define gx#core-bind-feature!__0
      (lambda (_%id137179%_)
        (let* ((_%private?137181%_ '#f)
               (_%phi137183%_ (gx#current-expander-phi))
               (_%ctx137185%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id137179%_
           _%private?137181%_
           _%phi137183%_
           _%ctx137185%_))))
    (define gx#core-bind-feature!__1
      (lambda (_%id137187%_ _%private?137188%_)
        (let* ((_%phi137190%_ (gx#current-expander-phi))
               (_%ctx137192%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id137187%_
           _%private?137188%_
           _%phi137190%_
           _%ctx137192%_))))
    (define gx#core-bind-feature!__2
      (lambda (_%id137194%_ _%private?137195%_ _%phi137196%_)
        (let ((_%ctx137198%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id137194%_
           _%private?137195%_
           _%phi137196%_
           _%ctx137198%_))))
    (define gx#core-bind-feature!
      (lambda _g140820_
        (let ((_g140821_ (##length _g140820_)))
          (cond ((##fx= _g140821_ 1)
                 (apply gx#core-bind-feature!__0 _g140820_))
                ((##fx= _g140821_ 2)
                 (apply gx#core-bind-feature!__1 _g140820_))
                ((##fx= _g140821_ 3)
                 (apply gx#core-bind-feature!__2 _g140820_))
                ((##fx= _g140821_ 4)
                 (apply gx#core-bind-feature!__% _g140820_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g140820_))))))))
